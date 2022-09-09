#include <DumpInfo.h>

#define DUMP(DATA, TYPE) dump_data(&at, (u8 *)&DATA, sizeof(TYPE))
#define DUMP_STR(STR) to_use_for_str_len = vstd_strlen((char *)STR);\
	DUMP(to_use_for_str_len, u32); \
	dump_data(&at, (u8 *)STR, to_use_for_str_len)

void
dump_data(u8 **at, u8 *data, size_t size)
{
	memcpy(*at, data, size);
	*at += size;
}

void
dump_token(Token_Iden *token, u8 **in_at)
{
	u8 *at = *in_at;
	u32 to_use_for_str_len;
	b32 has_id = false;
	if (token->identifier)
	{
		has_id = true;
		DUMP(has_id, u8);
		DUMP_STR(token->identifier);
	}
	if (!has_id)
		DUMP(has_id, u8);
	Assert(token->file);
	DUMP_STR((u8 *)token->file);
	u32 tok_type = token->type;
	DUMP(tok_type, u32);
	DUMP(token->line, u64);
	DUMP(token->column, u64);
	*in_at = at;
}

void
dump_type(Type_Info *type, u8 **in_at)
{
	u8 *at = *in_at;
	u8 *start_at = at;
	u32 to_use_for_str_len;
	u8 zero = 0;
	DUMP(type->type, Type_Type);
	if (is_type_primitive(*type))
	{
		DUMP(type->primitive.size, Var_Size);
	}


	if (type->identifier)
	{
		DUMP_STR(type->identifier);
	}
	else
	{
		DUMP(zero, u8);
	}
	while (at - start_at < 256) {
		DUMP(zero, u8);
	}
	*in_at = at;
}

void
dump_program_info(File_Contents *f)
{
	u8 *buffer = (u8 *)AllocateCompileMemory(MB(100));
	u8 *at = buffer;
	u32 to_use_for_str_len;
	u32 scope_count = SDCount(f->scopes);
	DUMP(scope_count, u32);
	for (size_t i = 0; i < scope_count; ++i)
	{
		Scope_Info scope = f->scopes[i];
		DUMP(scope.start_line, u32);
		DUMP(scope.end_line, u32);
		Assert(scope.file);
		Assert(scope.file[0] != 0);
		DUMP_STR(scope.file);
		auto sym_table = scope.symbol_table;
		u32 sym_count = SDCount(sym_table);
		DUMP(sym_count, u32);
		for (size_t j = 0; j < sym_count; ++j)
		{
			Symbol sym = sym_table[j];
			u32 sym_tag = sym.tag;
			DUMP(sym_tag, u32);
			DUMP_STR(sym.identifier);
			dump_token(&sym.token, &at);
			dump_type(&sym.type, &at);
		}
	}

	u32 type_count = shlen(f->type_table);
	DUMP(type_count, u32);
	for (size_t i = 0; i < type_count; ++i)
	{
		dump_type(&f->type_table[i].value, &at);
	}
	platform_write_file(buffer, at - buffer, "apoc_symbols.sym", true);
}

