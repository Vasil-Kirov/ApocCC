
#if !defined(_OBJ_DUMPER_H)
#define _OBJ_DUMPER_H
#include <Basic.h>

#pragma pack(push, 1)
struct Obj_Header {
	u16 machine;
	u16 number_of_sections;
	u32 time_stamp;
	u32 symbol_offset;
	u32 number_of_symbols;
	u16 optional_header_size;
	u16 characteristics;
};

struct Obj_Section {
	u8 name[8];
	u32 zero;
	u32 zero2;
	u32 size;
	u32 data_offset;
	u32 relocation_offset;
	u32 line_number_offset;
	u16 number_of_relocations;
	u16 number_of_line_numbers;
	u32 characteristics;
};

struct Relocation {
	u32 offset;
	u32 symbol_index;
	u16 type;
};

union Obj_Symbol_Name {
	u8 name[8];
	struct {
		u32 zeroes;
		u32 string_index;
	};
};

struct Obj_Symbol {
	Obj_Symbol_Name name;
	u32 value;
	u16 section_number;
	u16 type;
	u8 storage_class;
	u8 number_of_aux_symbols;
};

struct String_Table {
	u8 **strings;
	u32 size;
};
#pragma pack(pop)

struct File_Buffer {
	u8 *buffer;
	i32 count;
};

void
dump_obj(u8 *code);

void
dump_code(File_Buffer *file_buffer, u8 *code, size_t size);

void
put_symbol_name(u8 *str, Obj_Symbol_Name *out, String_Table *str_table);

void
dump_coff_section_header(u8 **file_buffer, Obj_Section *section);

void
dump_elf_section_header(u8 **file_buffer, Obj_Section *section);

inline void
dump_section_header(u8 **file_buffer, Obj_Section *section)
{
#if defined (_WIN32)
	dump_coff_section_header(file_buffer, section);
#else
	dump_elf_section_header(file_buffer, section);
#endif
}

void
dump_coff_relocation(File_Buffer *file_buffer, Relocation *reloc);

void
dump_elf_relocation(File_Buffer *file_buffer, Relocation *reloc);

inline void
dump_relocation(File_Buffer *file_buffer, Relocation *reloc)
{
#if defined (_WIN32)
	dump_coff_relocation(file_buffer, reloc);
#else
	dump_elf_relocation(file_buffer, reloc);
#endif
}

void
dump_coff_string_table(File_Buffer *file_buffer, String_Table *table);

void
dump_elf_string_table(File_Buffer *file_buffer, String_Table *table);

inline void
dump_string_table(File_Buffer *file_buffer, String_Table *table)
{
#if defined (_WIN32)
	dump_coff_string_table(file_buffer, table);
#else
	dump_elf_string_table(file_buffer, table);
#endif
}

void
dump_coff_symbol(File_Buffer *file_buffer, Obj_Symbol *symbol);

void
dump_elf_symbol(File_Buffer *file_buffer, Obj_Symbol *symbol);

inline void
dump_symbol(File_Buffer *file_buffer, Obj_Symbol *symbol)
{
#if defined (_WIN32)
	dump_coff_symbol(file_buffer, symbol);
#else
	dump_elf_symbol(file_buffer, symbol);
#endif
}

void
dump_coff_header(u8 *file_buffer, Obj_Header header);

void
dump_elf_header(u8 *file_buffer, Obj_Header header);

inline void
dump_header(u8 *file_buffer, Obj_Header header)
{
#if defined (_WIN32)
	dump_coff_header(file_buffer, header);
#else
	dump_elf_header(file_buffer, header);
#endif
};
#endif

