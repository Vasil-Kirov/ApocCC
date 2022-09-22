#include <ObjDumper.h>
#include <SimpleDArray.h>
#include <Analyzer.h>
#include <time.h>
#include <platform/platform.h>

#define DUMP_T(BUFFER, DATA, TYPE) *(TYPE *)BUFFER = DATA;
#define ADVANCE(BUFFER, TYPE) BUFFER.buffer += sizeof(TYPE); BUFFER.count += sizeof(TYPE);

const int IMAGE_SCN_CNT_CODE             = 0x00000020;
const int IMAGE_SCN_MEM_EXECUTE          = 0x20000000;
const int IMAGE_SCN_MEM_READ             = 0x40000000;
const int IMAGE_SCN_MEM_WRITE            = 0x80000000;
const int IMAGE_SCN_MEM_NOT_CACHED       = 0x04000000;
const int IMAGE_SCN_LNK_NRELOC_OVFL      = 0x01000000;
const int IMAGE_SCN_MEM_DISCARDABLE      = 0x02000000;
const int IMAGE_SCN_MEM_NOT_PAGED        = 0x08000000;
const int IMAGE_SCN_GPREL                = 0x00008000;

const int IMAGE_REL_AMD64_ADDR64 = 0x0001;

const int IMAGE_FILE_MACHINE_AMD64       = 0x8664;
const int IMAGE_SYM_CLASS_EXTERNAL       = 2;
const int IMAGE_SYM_CLASS_FUNCTION       = 101;
const int IMAGE_FILE_LARGE_ADDRESS_AWARE = 0x0020;

void
dump_obj(File_Contents *f, u8 *code, Relocation *relocations)
{
	size_t code_size = SDCount(code);
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

	code_section.characteristics = IMAGE_SCN_CNT_CODE | IMAGE_SCN_MEM_EXECUTE |
		IMAGE_SCN_MEM_READ | IMAGE_SCN_MEM_WRITE |
		IMAGE_SCN_MEM_NOT_CACHED | IMAGE_SCN_MEM_NOT_PAGED |
		IMAGE_SCN_MEM_DISCARDABLE | IMAGE_SCN_GPREL;
	if(relocation_count > 0xFFFF) {
		code_section.characteristics |= IMAGE_SCN_LNK_NRELOC_OVFL;
	}
	ADVANCE(file_buffer, Obj_Section);
	code_section.data_offset = file_buffer.count;
	dump_code(&file_buffer, code, code_size);
	file_buffer.buffer += code_size;
	file_buffer.count  += code_size;

	size_t func_count = SDCount(f->functions);
	header.machine            = IMAGE_FILE_MACHINE_AMD64;
	header.number_of_symbols  = func_count;
	header.number_of_sections = 1;
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
		relocations[i].type = IMAGE_REL_AMD64_ADDR64;
		dump_relocation(&file_buffer, &relocations[i]);
	}

	header.symbol_offset = file_buffer.buffer - buffer_start;
	for(size_t i = 0; i < func_count; ++i)
	{
		Obj_Symbol symbol;
		put_symbol_name(f->functions[i]->identifier, &symbol.name, &string_table);
		symbol.number_of_aux_symbols = 0;
		symbol.section_number = 1;
		symbol.type = 0x20;
		symbol.storage_class = IMAGE_SYM_CLASS_EXTERNAL;
		// @FIXIT HACK
		// @FIXIT HACK
		// @FIXIT HACK
		// @FIXIT HACK
		// @FIXIT HACK
		// @FIXIT HACK
		// @FIXIT HACK
		// @FIXIT HACK
		// @FIXIT HACK
		symbol.value = f->functions[i]->s_member.index;
		dump_symbol(&file_buffer, &symbol);
	}
	dump_string_table(&file_buffer, &string_table);

	u8 *save_start = buffer_start;
	dump_header(buffer_start, header);
	buffer_start += sizeof(Obj_Header);
	dump_section_header(&buffer_start, &code_section);

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

