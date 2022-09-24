#include <ObjDumper.h>
#include <SimpleDArray.h>
#include <Analyzer.h>
#include <time.h>
#include <platform/platform.h>
#include <vcruntime_string.h>

#define DUMP_T(BUFFER, DATA, TYPE) *(TYPE *)BUFFER = DATA;
#define ADVANCE(BUFFER, TYPE) BUFFER.buffer += sizeof(TYPE); BUFFER.count += sizeof(TYPE);

// Taking these 2 definitions from the tilde-backend library
// https://github.com/RealNeGate/tilde-backend/blob/master/src/tb/objects/coff.h
// <3

// IMAGE_SCN_CNT_CODE | IMAGE_SCN_MEM_EXECUTE | IMAGE_SCN_MEM_READ | IMAGE_SCN_ALIGN_16BYTES
#define COFF_CHARACTERISTICS_TEXT 0x60500020u

// IMAGE_SCN_CNT_INITIALIZED_DATA | IMAGE_SCN_MEM_READ
#define COFF_CHARACTERISTICS_RODATA 0x40000040u

const int IMAGE_SCN_LNK_NRELOC_OVFL = 0x01000000;

const int IMAGE_FILE_MACHINE_AMD64       = 0x8664;
const int IMAGE_SYM_CLASS_EXTERNAL       = 2;
const int IMAGE_FILE_LARGE_ADDRESS_AWARE = 0x0020;

void
dump_obj(File_Contents *f, u8 *code, Relocation *relocations, Symbol_Descriptor *symbols)
{
	size_t code_size = SDCount(code);
	size_t symbol_count = SDCount(symbols);
	File_Buffer file_buffer;
	file_buffer.buffer = (u8 *)AllocateCompileMemory(code_size * 8);
	file_buffer.count = 0;
	u8 *buffer_start = file_buffer.buffer;
	ADVANCE(file_buffer, Obj_Header);
	String_Table string_table = {};
	string_table.strings = SDCreate(u8 *);
	string_table.size = 4;

	Obj_Header header = {};
	Obj_Section code_section = {".text"};
	code_section.size = code_size;
	size_t relocation_count = SDCount(relocations);

	code_section.characteristics = COFF_CHARACTERISTICS_TEXT;
	if(relocation_count > 0xFFFF) {
		code_section.characteristics |= IMAGE_SCN_LNK_NRELOC_OVFL;
	}
	ADVANCE(file_buffer, Obj_Section);

	Obj_Section ro_section = {".rdata"};
	ro_section.characteristics = COFF_CHARACTERISTICS_RODATA;
	ADVANCE(file_buffer, Obj_Section);

	ro_section.data_offset = file_buffer.count;
	i32 last_ro = -1;
	for(size_t i = 0; i < symbol_count; ++i)
	{
		if(symbols[i].section == SEC_RO_DATA)
		{
			last_ro = i;
			if(symbols[i].type == OBJ_STRING)
				memcpy(file_buffer.buffer, (u8 *)symbols[i].value, symbols[i].size);
			else
				memcpy(file_buffer.buffer, &symbols[i].value, symbols[i].size);
			file_buffer.buffer += symbols[i].size;
			file_buffer.count += symbols[i].size;
		}
	}
	if(last_ro == -1)
	{
		ro_section.size = 0;
	}
	else
	{
		ro_section.size = symbols[last_ro].position + symbols[last_ro].size;
	}


	code_section.data_offset = file_buffer.count;
	dump_code(&file_buffer, code, code_size);
	file_buffer.buffer += code_size;
	file_buffer.count  += code_size;

	header.machine            = IMAGE_FILE_MACHINE_AMD64;
	header.number_of_symbols  = symbol_count;
	header.number_of_sections = 2;
	header.time_stamp         = time(NULL);
	header.characteristics    = IMAGE_FILE_LARGE_ADDRESS_AWARE;
	code_section.relocation_offset = file_buffer.buffer - buffer_start;

	if(code_section.characteristics & IMAGE_SCN_LNK_NRELOC_OVFL)
	{
		code_section.number_of_relocations = 0xFFFF;

		Relocation dummy_reloc = {};
		dummy_reloc.offset = relocation_count;
		dump_relocation(&file_buffer, &dummy_reloc);
	}
	else
	{
		code_section.number_of_relocations = relocation_count;
	}
	for(size_t i = 0; i < relocation_count; ++i)
	{
		dump_relocation(&file_buffer, &relocations[i]);
	}

	header.symbol_offset = file_buffer.buffer - buffer_start;
	for(size_t i = 0; i < symbol_count; ++i)
	{
		Obj_Symbol symbol;
		put_symbol_name(symbols[i].name, &symbol.name, &string_table);
		symbol.number_of_aux_symbols = 0;
		symbol.section_number = symbols[i].section;
		symbol.type = symbols[i].type == OBJ_FUNCTION ? 0x20 : 0;
		symbol.storage_class = IMAGE_SYM_CLASS_EXTERNAL;
		symbol.value = symbols[i].position;
		dump_symbol(&file_buffer, &symbol);
	}
	dump_string_table(&file_buffer, &string_table);

	u8 *save_start = buffer_start;
	dump_header(buffer_start, header);
	buffer_start += sizeof(Obj_Header);
	dump_section_header(&buffer_start, &code_section);
	dump_section_header(&buffer_start, &ro_section);

	char* obj_file = change_file_extension(
		platform_path_to_file_name((char*)f->path), (char*)"o");
	f->obj_name = obj_file;
	platform_write_file(save_start, file_buffer.count, f->obj_name, true);
}

void
dump_coff_section_header(u8 **file_buffer, Obj_Section *section)
{
	auto to_write = *file_buffer;
	*(Obj_Section *)to_write = *section;
	*file_buffer += sizeof(Obj_Section);
}

void
dump_coff_relocation(File_Buffer *file_buffer, Relocation *reloc)
{
	*(Relocation *)file_buffer->buffer = *reloc;
	ADVANCE((*file_buffer), Relocation);
}

void
dump_coff_string_table(File_Buffer *file_buffer, String_Table *table)
{
	size_t str_count = SDCount(table->strings);
	*(u32 *)file_buffer->buffer = table->size + 4;
	ADVANCE((*file_buffer), u32);
	for(size_t i = 0; i < str_count; ++i)
	{
		size_t terminated_len = vstd_strlen((char *)table->strings[i]) + 1;
		memcpy(file_buffer->buffer, table->strings[i], terminated_len);
		file_buffer->buffer += terminated_len;
		file_buffer->count  += terminated_len;
	}
}

void
dump_coff_symbol(File_Buffer *file_buffer, Obj_Symbol *symbol)
{
	*(Obj_Symbol *)file_buffer->buffer = *symbol;
	ADVANCE((*file_buffer), Obj_Symbol);
}

void
put_symbol_name(u8 *str, Obj_Symbol_Name *out, String_Table *str_table)
{
	size_t str_len = vstd_strlen((char *)str);
	if(str_len <= 8)
	{
		memset(out->name, 0, 8);
		memcpy(out->name, str, str_len);
	}
	else
	{
		out->zeroes = 0;
		out->string_index = str_table->size;
		SDPush(str_table->strings, str);
		str_table->size += str_len + 1;
	}
}

void
dump_coff_header(u8 *buffer, Obj_Header header)
{
	DUMP_T(buffer, header, Obj_Header);
}

void
dump_code(File_Buffer *file_buffer, u8 *code, size_t size)
{
	memcpy(file_buffer->buffer, code, size);
	file_buffer->count += size;
}

