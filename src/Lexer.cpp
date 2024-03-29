#include <Lexer.h>
#include <Basic.h>
#include <Parser.h>
#include <Memory.h>
#include <platform/platform.h>
#include <stdlib/std.h>

static str_hash_table *keyword_table;

#define KEYWORD_ERROR 32767

// @TODO: maybe pass start_line and start_column for better error message or something idk
void
advance_buffer(File_Contents *f)
{
	if(*f->at != '\0')
	{
		if(*f->at == '\n')
		{
			f->current_line++;
			f->current_column = 1;
		}
		else
			f->current_column++;
		f->at++;
	}
	else
		raise_token_syntax_error(f, "Unexpected end of file",
				(char *)f->path, f->current_line, f->current_column);
}

void
rewind_buffer_to(File_Contents *f, u8 *to)
{
	while (f->at != to)
	{
		f->current_column--;
		f->at--;

		char c = *f->at;
		if (c == '\n')
		{
			f->current_line--;
			f->current_column = 1;
		}
	}
}

void
initialize_compiler(File_Contents *f)
{
	// NOTE(Vasko): Add keywords to string hash table
	if(!keyword_table)
	{
		shput(keyword_table, "fn",         tok_func);
		shput(keyword_table, "extern",     tok_extern);
		shput(keyword_table, "struct",     tok_struct);
		shput(keyword_table, "enum",       tok_enum);
		//shput(keyword_table, "cast",       tok_cast);
		shput(keyword_table, "if",         tok_if);
		shput(keyword_table, "for",        tok_for);
		shput(keyword_table, "in",         tok_in);
		shput(keyword_table, "switch",     tok_switch);
		shput(keyword_table, "case",       tok_case);
		shput(keyword_table, "as",         tok_as);
		shput(keyword_table, "continue",   tok_continue);
		shput(keyword_table, "break",      tok_break);
		shput(keyword_table, "else",       tok_else);
		shput(keyword_table, "overload",   tok_overload);
		shput(keyword_table, "defer",      tok_defer);
		
		shput(keyword_table, "->",         tok_arrow);
		shput(keyword_table, "--",         tok_minusminus);
		shput(keyword_table, "++",         tok_plusplus);
		shput(keyword_table, "||",         tok_logical_or);
		shput(keyword_table, "==",         tok_logical_is);
		shput(keyword_table, "!=",         tok_logical_isnot);
		shput(keyword_table, "&&",         tok_logical_and);
		shput(keyword_table, "::",         tok_const);
		shput(keyword_table, "<<",         tok_bits_lshift);
		shput(keyword_table, ">>",         tok_bits_rshift);
		shput(keyword_table, ">=",         tok_logical_gequal);
		shput(keyword_table, "<=",         tok_logical_lequal);
		shput(keyword_table, "+=",         tok_plus_equals);
		shput(keyword_table, "-=",         tok_minus_equals);
		shput(keyword_table, "*=",         tok_mult_equals);
		shput(keyword_table, "/=",         tok_div_equals);
		shput(keyword_table, "%=",         tok_mod_equals);
		shput(keyword_table, "&=",         tok_and_equals);
		shput(keyword_table, "^=",         tok_xor_equals);
		shput(keyword_table, "|=",         tok_or_equals);
		shput(keyword_table, "<<=",        tok_lshift_equals);
		shput(keyword_table, ">>=",        tok_rshift_equals);
		shput(keyword_table, "...",        tok_var_args);
		shput(keyword_table, "$import",    tok_import);
		shput(keyword_table, "$type",      tok_type);
		shput(keyword_table, "$run",       tok_run);
		shput(keyword_table, "$interp",    tok_interp);
		shput(keyword_table, "$wasm_in",   tok_wasm_import);
		shput(keyword_table, "$wasm_out",  tok_wasm_export);
		shput(keyword_table, "$size",      tok_size);
		shput(keyword_table, "$default",   tok_default);
		shput(keyword_table, "$union",     tok_union);
		shput(keyword_table, "$pack",      tok_pack);
		shput(keyword_table, "$intrinsic", tok_intrinsic);
		shput(keyword_table, "$call",      tok_call_conv);
		shput(keyword_table, "$if",        tok_is_defined);
		shput(keyword_table, "$else",      tok_else_def);
		shput(keyword_table, "$end_if",    tok_end_is);
	}
	
	// NOTE(Vasko): Add basic types to string hash table
	add_primitive_type(f, "i8",   byte1);
	add_primitive_type(f, "i16",  byte2);
	add_primitive_type(f, "i32",  byte4);
	add_primitive_type(f, "i64",  byte8);

	add_primitive_type(f, "u8",   ubyte1);
	add_primitive_type(f, "u16",  ubyte2);
	add_primitive_type(f, "u32",  ubyte4);
	add_primitive_type(f, "u64",  ubyte8);

	add_primitive_type(f, "f32",  real32);
	add_primitive_type(f, "f64",  real64);

	add_primitive_type(f, "f128", real128);
	add_primitive_type(f, "i128", byte128);

	add_primitive_type(f, "void", empty_void);
	add_primitive_type(f, "bool", logical_bit);
}

Type_Info *
get_primitive_type_lexer(File_Contents *f, u8 *id)
{
	auto got = shgeti(f->type_table, id);
	if(got == -1)
		return NULL;
	else
		return &f->type_table[got].value;
}

void
save_token_position(File_Contents *f) {f->saved_token = f->curr_token;}

void
load_token_position(File_Contents *f)
{
	Assert(f->saved_token != 0);
	f->curr_token = f->saved_token;
}

Token_Iden *
advance_token(File_Contents *f) 
{
	f->curr_token++;
	f->prev_token = f->curr_token - 1;
	f->next_token = f->curr_token + 1;
	return f->prev_token;
}

Token_Iden *
get_next_expecting(File_Contents *f, Token type, const char *error_msg)
{
	Token_Iden *token = advance_token(f);
	if(token->type != type)
	{
		raise_parsing_unexpected_token(error_msg, f);
	}
	return token;
}

void
lex_file(File_Contents *f, char *path)
{	
	f->path = (u8 *)platform_relative_to_absolute_path(path);
	entire_file file_buffer;
	
	file_buffer.size = platform_get_file_size(path)+1;
	file_buffer.data = AllocateCompileMemory(file_buffer.size);
	memset(file_buffer.data, 0, file_buffer.size);
	if(platform_read_entire_file(file_buffer.data, &file_buffer.size, path) == false)
	{
		LG_FATAL("Couldn't find input file %s", path);
	}
	f->file_data = (u8 *)file_buffer.data;
	f->file_size = file_buffer.size;
	f->at = f->file_data;
	f->current_line = 1;
	f->current_column = 1;
	f->token_buffer = SDCreate(Token_Iden);

	shdefault(keyword_table, KEYWORD_ERROR);

	while(f->at - f->file_data < (i64)f->file_size)
	{
		Token_Iden to_put = get_token(f);
		if(to_put.type != ' ' && to_put.type != '\0')
			SDPush(f->token_buffer, to_put);
	}
	
	Token_Iden eof_token = {0, (char *)f->path, f->file_data, tok_eof,
		f->current_line, f->current_column};
	SDPush(f->token_buffer, eof_token);
	f->curr_token = f->token_buffer;
	f->prev_token = NULL; 
	f->next_token = NULL;
}

char char_to_escaped(char c)
{
	switch(c)
    {
        case 'a':  return '\a'; break;
        case 'b':  return '\b'; break;
        case 'f':  return '\f'; break;
        case 'n':  return '\n'; break;
        case 'r':  return '\r'; break;
        case 't':  return '\t'; break;
        case 'v':  return '\v'; break;
        case '\\': return '\\'; break;
        case '\'': return '\''; break;
        case '"':  return '\"'; break;
        case '?':  return '\?'; break;
		case '0':  return '\0'; break;
		default: return 1;
    }
}

Token_Iden get_token(File_Contents *f)
{
	while(is_whitespace(*f->at))
	{
	    advance_buffer(f);
	}
	
	char last_char = *f->at;
	u8 *string_start = f->at;
	
	if(is_alpha(last_char) || is_non_special_char(last_char))
	{
	    u64 start_col = f->current_column;
		u64 start_line = f->current_line;
		while(is_alnum(*f->at) || is_non_special_char(*f->at))
		{
		    advance_buffer(f);
		}
		
		u64 identifier_size = f->at - string_start;
		
		char name[identifier_size+1];
		memcpy(name, string_start, identifier_size);
		name[identifier_size] = '\0';
		
		
		i16 token = shget(keyword_table, name);
		if (token == KEYWORD_ERROR)
		{
			u8 *identifier = (u8 *)AllocateCompileMemory(identifier_size+1);
			memcpy(identifier, string_start, identifier_size);
			identifier[identifier_size] = '\0';
			
			token = tok_identifier;

			Token_Iden result = {identifier, (char *)f->path, f->file_data, (Token)token,
									start_line, start_col};
			return result;
		}
		Token_Iden result = {NULL, (char *)f->path, f->file_data, (Token)token,
							 start_line, start_col};
		return result;
	}
	else if(is_number(last_char))
	{
		u64 start_col = f->current_column;
		u64 start_line = f->current_line;
		if(last_char == '0' && f->at[1] == 'x')
		{
			advance_buffer(f);
			advance_buffer(f);
			if(!is_hex(*f->at))
				raise_token_syntax_error(f, "Expected hex characters after 0x",
						(char *)f->path, start_line,
						start_col);
			while (is_hex(*f->at) || *f->at == '_') {
				advance_buffer(f);
			}
			u8 *hex_start = (string_start + 2);
			size_t len = f->at - hex_start;
			u8 hex_num[len + 1];
			int copy_i = 0;
			for(int i = 0; i < len; ++i)
			{
				if(hex_start[i] != '_')
				{
					hex_num[copy_i++] = hex_start[i];
				}
			}
			hex_num[copy_i] = '\0';
			u64 num = hex_to_num(hex_num, copy_i);
			u64 copy_num = num;
			u64 num_len = 0;
			while(copy_num)
			{
				num_len++;
				copy_num /= 10;
			}
			u8 *number_string = (u8 *)AllocateCompileMemory(num_len + 1);
			_vstd_U64ToStr(num, (char *)number_string);

			Token_Iden result = {};
			result.identifier = number_string;
			result.file = (char *)f->path;
			result.f_start = f->file_data;
			result.line = start_line;
			result.column = start_col;
			result.type = tok_number;
			return result;
		}
		else if(last_char == '0' && f->at[1] == 'b')
		{
			advance_buffer(f);
			advance_buffer(f);
			if(!is_bin(*f->at))
				raise_token_syntax_error(f, "Expected binary characters after 0b",
						(char *)f->path, start_line,
						start_col);

			while(is_bin(*f->at) || *f->at == '_') {
				advance_buffer(f);
			}
			u8 *bin_start = (string_start + 2);
			size_t len = f->at - bin_start;
			u8 bin_num[len + 1];
			int copy_i = 0;
			for(int i = 0; i < len; ++i)
			{
				if(bin_start[i] != '_')
				{
					bin_num[copy_i++] = bin_start[i];
				}
			}
			bin_num[copy_i] = '\0';
			u64 num = bin_to_num(bin_num, copy_i);
			u64 copy_num = num;
			u64 num_len = 0;
			while(copy_num)
			{
				num_len++;
				copy_num /= 10;
			}
			u8 *number_string = (u8 *)AllocateCompileMemory(num_len + 1);
			_vstd_U64ToStr(num, (char *)number_string);

			Token_Iden result = {};
			result.identifier = number_string;
			result.file = (char *)f->path;
			result.f_start = f->file_data;
			result.line = start_line;
			result.column = start_col;
			result.type = tok_number;
			return result;
		}
		else
		{
			b32 found_dot = false;
			do {
				advance_buffer(f);
				if(*f->at == '.')
				{
					if(found_dot)
					{
						raise_token_syntax_error(f, "Number has an extra decimal point", (char *)f->path, start_line,
								start_col);
						return get_token(f);
					}
					found_dot = true;
				}
			} while (is_number(*f->at) || *f->at == '.' || *f->at == '_');
			u64 num_size = f->at - string_start;
			u8 *number_string = (u8 *)AllocateCompileMemory(num_size+1);
			int copy_i = 0;
			for(int i = 0; i < num_size; ++i)
			{
				if(string_start[i] != '_')
				{
					number_string[copy_i++] = string_start[i];
				}
			}
			number_string[copy_i] = '\0';

			Token_Iden result = {number_string, (char *)f->path, f->file_data, tok_number,
				start_line, start_col};
			return result;
		}
	}
	else
	{
		u64 start_col = f->current_column;
		u64 start_line = f->current_line;
		if(*f->at == '"')
		{
			advance_buffer(f);
			while(*f->at != '"')
			{
				if(*f->at == '\0')
				{
					raise_token_syntax_error(f, "Expected string literal end, got end of file", (char *)f->path, start_line, start_col);
				}
				if(*f->at == '\\')
				{
					memmove(f->at, f->at + 1, vstd_strlen((char *)f->at) + 1);
					*f->at = char_to_escaped(*f->at);
					if (*f->at == 1)
					{
						raise_token_syntax_error(f, "Incorrect escaped charracter", (char *)f->path, start_line, start_col);
					}
					f->file_size--;
					f->at++;
				}
				else
					advance_buffer(f);
			}
			advance_buffer(f);
			string_start++;
			u64 str_size = f->at - string_start;
			u8 *string = (u8 *)AllocateCompileMemory(str_size);
			memcpy(string, string_start, str_size);
			string[str_size-1] = '\0';
			

			Token_Iden result = {string, (char *)f->path, f->file_data, tok_const_str,
									start_line, start_col};
			return result;
		}
		else if(*f->at == '\'')
		{
			advance_buffer(f);
			char c = *f->at;
			advance_buffer(f);
			if(*f->at != '\'')
			{
				raise_token_syntax_error(f, "Character literal contains more than 1 character", 
										 (char *)f->path, start_line, start_col);
			}
			advance_buffer(f);
			u8 *identifier = (u8 *)AllocateCompileMemory(2);
			identifier[0] = c;
			identifier[1] = 0;
			Token_Iden result = {identifier, (char *)f->path, f->file_data, tok_char, start_line, start_col};
			return result;
		}
		else if(*f->at == '$')
		{
			// @NOTE: compiler directives
			u64 start_col = f->current_column;
			u64 start_line = f->current_line;
			advance_buffer(f);
			while(is_alnum(*f->at) || is_non_special_char(*f->at))
			{
				advance_buffer(f);
			}

			u64 identifier_size = f->at - string_start;
		
			char name[identifier_size+1];
			memcpy(name, string_start, identifier_size);
			name[identifier_size] = '\0';

			Token_Iden result = {};
			result.type = (Token)shget(keyword_table, name);
			result.f_start = f->file_data;
			result.line = start_line;
			result.column = start_col;
			result.file = (char *)f->path;
			if(result.type == KEYWORD_ERROR)
			{
				char error[4096] = {};
				vstd_sprintf(error, "Incorrect compiler directive [ %s ]", name); 
				raise_token_syntax_error(f, error, (char *)f->path, start_line, start_col);
			}
			else if(result.type == tok_type)
			{
				Token_Iden alias = get_token(f);
				if(alias.type != tok_identifier)
					raise_token_syntax_error(f, "Expected type alias after $type", (char *)f->path, start_line, start_col);

				Token_Iden type_id = get_token(f);
				if(type_id.type != tok_identifier)
					raise_token_syntax_error(f, "Expected type identifier after alias", (char *)f->path, start_line, start_col);

				Type_Info *type = get_primitive_type_lexer(f, type_id.identifier);
				if(!type)
				{
					char error[4096] = {};
					vstd_sprintf(error, "Expected valid type, couldn't find [ %s ]", type_id.identifier); 
					raise_token_syntax_error(f, error, (char *)f->path, start_line, start_col);
				}
				add_primitive_type(f, (char *)alias.identifier, type->primitive.size);
				return get_token(f);
			}
			return result;
		}
		else
		{
			while(!is_whitespace(*f->at) && !is_alnum(*f->at))
			{
				if(*f->at == 0)
				{
					if(f->at == string_start)
						return (Token_Iden){};
					break;
				}
				advance_buffer(f);
			}
			if(f->at - string_start == 1)
			{

				Token_Iden result = {NULL, (char *)f->path, f->file_data, (Token)string_start[0], 
									 start_line, start_col};
				return result;
			}
			
			if(string_start[0] == '/' && string_start[1] == '/')
			{
				while(*f->at != '\n')
					advance_buffer(f);
				advance_buffer(f);
				return get_token(f);
			}
			else if(string_start[0] == '/' && string_start[1] == '*')
			{
				int nest = 0;
				while(nest >= 0)
				{
					while(*f->at != '*')
					{
						if(*f->at == 0)
							raise_token_syntax_error(f, "Unexpected end of file before closing of "
								"block comment", (char *)f->path, start_line, start_col);
						advance_buffer(f);
					}
					if(*(f->at - 1) == '/')
					{
						advance_buffer(f);
						nest++;
					}
					else
					{
						advance_buffer(f);
						if(*f->at == '/')
						{
							nest--;
							advance_buffer(f);
						}
					}
				}
				return get_token(f);
			}

			u64 identifier_size = f->at - string_start;

			char symbol[identifier_size + 1];
			memcpy(symbol, string_start, identifier_size);
			symbol[identifier_size] = '\0';

			Token_Iden result = {};
			result.type = (Token)shget(keyword_table, symbol);
			result.f_start = f->file_data;
			result.line = start_line;
			result.column = start_col;
			result.file = (char *)f->path;
			
			if (result.type == KEYWORD_ERROR)
			{
				while(identifier_size)
				{
					symbol[--identifier_size] = '\0';
					result.type = (Token)shget(keyword_table, symbol);
					if(result.type != KEYWORD_ERROR)
					{
						rewind_buffer_to(f, string_start + identifier_size);
						return result;
					}
				}
				rewind_buffer_to(f, string_start + 1);
				result.type = (Token)string_start[0];
			}
			return result;
		}
	}
}


// python <3
u8 *token_to_str(Token token)
{
	switch(token)
	{
		case tok_minus: return (u8 *)"[ tok_minus ]"; break;
		case tok_plus: return (u8 *)"[ tok_plus ]"; break;
		case tok_not: return (u8 *)"[ tok_not ]"; break;
		case tok_star: return (u8 *)"[ tok_star ]"; break;
		case tok_equals: return (u8 *)"[ tok_equals ]"; break;
		case tok_eof: return (u8 *)"[ tok_eof ]"; break;
		case tok_func: return (u8 *)"[ tok_func ]"; break;
		case tok_extern: return (u8 *)"[ tok_extern ]"; break;
		case tok_arrow: return (u8 *)"[ tok_arrow ]"; break;
		case tok_struct: return (u8 *)"[ tok_struct ]"; break;
		//case tok_cast: return (u8 *)"[ tok_cast ]"; break;
		case tok_if: return (u8 *)"[ tok_if ]"; break;
		case tok_for: return (u8 *)"[ tok_for ]"; break;
		case tok_identifier: return (u8 *)"[ tok_identifier ]"; break;
		case tok_const_str: return (u8 *)"[ tok_const_str ]"; break;
		case tok_number: return (u8 *)"[ tok_number ]"; break;
		case tok_logical_or: return (u8 *)"[ tok_logical_or ]"; break;
		case tok_logical_is: return (u8 *)"[ tok_logical_is ]"; break;
		case tok_logical_isnot: return (u8 *)"[ tok_logical_isnot ]"; break;
		case tok_logical_and: return (u8 *)"[ tok_logical_and ]"; break;
		case tok_logical_lequal: return (u8 *)"[ tok_logical_lequal ]"; break;
		case tok_logical_gequal: return (u8 *)"[ tok_logical_gequal ]"; break;
		case tok_logical_greater: return (u8 *)"[ tok_logical_greater ]"; break;
		case tok_logical_lesser: return (u8 *)"[ tok_logical_lesser ]"; break;
		case tok_bits_lshift: return (u8 *)"[ tok_bits_lshift ]"; break;
		case tok_bits_rshift: return (u8 *)"[ tok_bits_rshift ]"; break;
		case tok_bits_or: return (u8 *)"[ tok_bits_or ]"; break;
		case tok_bits_xor: return (u8 *)"[ tok_bits_xor ]"; break;
		case tok_bits_not: return (u8 *)"[ tok_bits_not ]"; break;
		case tok_bits_and: return (u8 *)"[ tok_bits_and ]"; break;
		case tok_plusplus: return (u8 *)"[ tok_plusplus ]"; break;
		case tok_minusminus: return (u8 *)"[ tok_minusminus ]"; break;
		case tok_const: return (u8 *)"[ tok_const ]"; break;
		case tok_switch: return (u8 *)"[ tok_switch ]"; break;
		case tok_case: return (u8 *)"[ tok_case ]"; break;
		case tok_as: return (u8 *)"[ tok_as ]"; break;
		case tok_import: return (u8 *)"[ tok_import ]"; break;
		case tok_run: return (u8 *)"[ tok_run ]"; break;
		case tok_must: return (u8 *)"[ tok_must ]"; break;
		case tok_any: return (u8 *)"[ tok_any ]"; break;
		case tok_plus_equals: return (u8 *)"[ tok_plus_equals ]"; break;
		case tok_minus_equals: return (u8 *)"[ tok_minus_equals ]"; break;
		case tok_mult_equals: return (u8 *)"[ tok_mult_equals ]"; break;
		case tok_div_equals: return (u8 *)"[ tok_div_equals ]"; break;
		case tok_mod_equals: return (u8 *)"[ tok_mod_equals ]"; break;
		case tok_and_equals: return (u8 *)"[ tok_and_equals ]"; break;
		case tok_xor_equals: return (u8 *)"[ tok_xor_equals ]"; break;
		case tok_or_equals: return (u8 *)"[ tok_or_equals ]"; break;
		case tok_lshift_equals: return (u8 *)"[ tok_lshift_equals ]"; break;
		case tok_rshift_equals: return (u8 *)"[ tok_rshift_equals ]"; break;
		case tok_break: return (u8 *)"[ tok_break ]"; break;
		default:
		{
			u8 *result = (u8 *)AllocatePermanentMemory(sizeof(u8) * 6);
			result[0] = '[';
			result[1] = ' ';
			result[2] = (u8)token;
			result[3] = ' ';
			result[4] = ']';
			result[5] = '\0';
			return result;
		}

	}
}

u8 *type_to_str(Ast_Type type)
{
	switch(type)
	{
		case type_root: return (u8 *)"type_root"; break;
		case type_const_str: return (u8 *)"type_const_str"; break;
		case type_struct_init: return (u8 *)"type_struct_init"; break;
		case type_break: return (u8 *)"type_break"; break;
		case type_struct: return (u8 *)"type_struct"; break;
		case type_selector: return (u8 *)"type_selector"; break;
		case type_identifier: return (u8 *)"type_identifier"; break;
		case type_assignment: return (u8 *)"type_assignment"; break;
		case type_func: return (u8 *)"type_func"; break;
		case type_func_call: return (u8 *)"type_func_call"; break;
		case type_for: return (u8 *)"type_for"; break;
		case type_if: return (u8 *)"type_if"; break;
		case type_expression: return (u8 *)"type_expression"; break;
		case type_literal: return (u8 *)"type_literal"; break;
		case type_var: return (u8 *)"type_var"; break;
		case type_return: return (u8 *)"type_return"; break;
		case type_unary_expr: return (u8 *)"type_unary_expr"; break;
		case type_binary_expr: return (u8 *)"type_binary_expr"; break;
		case type_notype: return (u8 *)"type_notype"; break;
		case type_add: return (u8 *)"type_add"; break;
		case type_subtract: return (u8 *)"type_subtract"; break;
		case type_multiply: return (u8 *)"type_multiply"; break;
		case type_divide: return (u8 *)"type_divide"; break;
		default:
		{
			return (u8 *)"type not implemented";
		}
	}
}

