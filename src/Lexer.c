#include <Lexer.h>
#include <Basic.h>
#include <Parser.h>

static u8 *at_buffer;
static str_hash_table *KeywordTable;
static Token_Iden *token_buffer;
static u64 last_token;
static u8 **identifier_buffer;
static u64 current_line;
static u64 current_column;
static u64 token_line_tracker;

#define KEYWORD_ERROR 32767

void
advance_buffer(u8 **buffer)
{
	if(**buffer != '\0')
		{
	if(**buffer == '\n')
		{
			current_line++;
			current_column = 1;
		}
	else
		current_column++;
	(*buffer)++;
		}
}

void
rewind_buffer_to(u8 **buffer, u8 *to)
{
	while(*buffer != to)
		{
			current_column--;
			(*buffer)--;
			
			char c = **buffer;
			if(c == '\n')
				{
					current_line--;
					current_column = 1;
				}

		}
}

void
initialize_compiler()
{
	// NOTE(Vasko): Add keywords to string hash table
	shput(KeywordTable, "func", tok_func);
	shput(KeywordTable, "extern", tok_extern);
	shput(KeywordTable, "struct", tok_struct);
	shput(KeywordTable, "import", tok_import);
	shput(KeywordTable, "cast", tok_cast);
	shput(KeywordTable, "if", tok_if);
	shput(KeywordTable, "for", tok_for);
	shput(KeywordTable, "switch", tok_switch);
	shput(KeywordTable, "case", tok_case);
	shput(KeywordTable, "as", tok_as);
	shput(KeywordTable, "break", tok_break);
	
	shput(KeywordTable, "->", tok_arrow);
	shput(KeywordTable, "--", tok_minusminus);
	shput(KeywordTable, "++", tok_plusplus);
	shput(KeywordTable, "||", tok_logical_or);
	shput(KeywordTable, "==", tok_logical_is);
	shput(KeywordTable, "!=", tok_logical_isnot);
	shput(KeywordTable, "&&", tok_logical_and);
	shput(KeywordTable, "::", tok_const);
	shput(KeywordTable, "<<", tok_bits_lshift);
	shput(KeywordTable, ">>", tok_bits_rshift);
	shput(KeywordTable, ">=", tok_logical_gequal);
	shput(KeywordTable, "<=", tok_logical_lequal);
	shput(KeywordTable, "+=", tok_plus_equals);
	shput(KeywordTable, "-=", tok_minus_equals);
	shput(KeywordTable, "*=", tok_mult_equals);
	shput(KeywordTable, "/=", tok_div_equals);
	shput(KeywordTable, "%=", tok_mod_equals);
	shput(KeywordTable, "&=", tok_and_equals);
	shput(KeywordTable, "^=", tok_xor_equals);
	shput(KeywordTable, "|=", tok_or_equals);
	shput(KeywordTable, "<<=", tok_lshift_equals);
	shput(KeywordTable, ">>=", tok_rshift_equals);

	// NOTE(Vasko): Add basic types to string hash table
	add_primitive_type("i8",   byte1);
	add_primitive_type("i16",  byte2);
	add_primitive_type("i32",  byte4);
	add_primitive_type("i64",  byte8);

	add_primitive_type("u8",   ubyte1);
	add_primitive_type("u16",  ubyte2);
	add_primitive_type("u32",  ubyte4);
	add_primitive_type("u64",  ubyte8);

	add_primitive_type("r32",  real32);
	add_primitive_type("r64",  real64);

	add_primitive_type("void", empty);
}

Token_Iden
get_prev_token() { return token_buffer[last_token - 1]; }

Token_Iden
get_next_token() 
{
	token_line_tracker = token_buffer[last_token].line;
	return token_buffer[last_token++]; 
}

Token_Iden
peek_next_token() { return token_buffer[last_token]; }

Token_Iden
peek_ahead(int amount) { return token_buffer[last_token + amount]; }

Token_Iden
get_next_expecting(Token type, const char *error_msg)
{
	Token_Iden token = token_buffer[last_token++];
	if(token.type != type)
		{
			raise_parsing_unexpected_token(error_msg, token);
		}
	return token;
}

u8 *
get_identifier(u64 index)
{
	return(identifier_buffer[index]);
}

static u8 *file;
u8 *get_file_name()
{
	return file;
}

u64
get_line_tracker(){ return token_line_tracker; }


static void
lex_file(char *path)
{
	file = (u8 *)path;
	if(token_buffer) 
	{
		arrfree(token_buffer);
		token_buffer = NULL;
	}
	if(identifier_buffer)
	{
		arrfree(identifier_buffer);
		identifier_buffer = NULL;
	}
	
	entire_file file_buffer;
	
	file_buffer.size = platform_get_file_size(path)+1;
	file_buffer.data = AllocateCompileMemory(file_buffer.size);
	memset(file_buffer.data, 0, file_buffer.size);
	if(platform_read_entire_file(file_buffer.data, &file_buffer.size, path) == false)
	{
		LG_FATAL("Couldn't find input file %s", path);
	}
	at_buffer = file_buffer.data;

	shdefault(KeywordTable, KEYWORD_ERROR);
	current_line = 1;
	current_column = 1;

	while(at_buffer - (u8 *)file_buffer.data < (i64)file_buffer.size)
	{
		Token_Iden to_put = get_token(path);
		if(to_put.type != ' ' && to_put.type != '\0')
			arrput(token_buffer, to_put);
	}
	
	Token_Iden eof_token = {.type = tok_eof, .identifier_index = 0};
	arrput(token_buffer, eof_token);
}

// NOTE(Vasko): file is here to be put into the token, for easier error messages
static Token_Iden get_token(char *file)
{
	while(is_whitespace(*at_buffer))
	{
	    advance_buffer(&at_buffer);
	}
	
	char last_char = *at_buffer;
	u8 *string_start = at_buffer;
	
	if(is_alpha(last_char))
	{
	    u64 start_col = current_column;
		u64 start_line = current_line;
		while(is_alnum(*at_buffer) || is_non_special_char(*at_buffer))
		{
		    advance_buffer(&at_buffer);
		}
		
		u64 identifier_size = at_buffer - string_start;
		
		char name[identifier_size+1];
		memcpy(name, string_start, identifier_size);
		name[identifier_size] = '\0';
		
		
		i16 token = shget(KeywordTable, name);
		if (token == KEYWORD_ERROR)
		{
			u8 *identifier = AllocateCompileMemory(identifier_size+1);
			memcpy(identifier, string_start, identifier_size);
			identifier[identifier_size] = '\0';
			
			token = tok_identifier;
			u64 index = arrlen(identifier_buffer);
			arrput(identifier_buffer, identifier);
			
			return (Token_Iden){.type = token, .identifier_index = index, .line = start_line,
								.column = start_col, .file = file};
		}
		return (Token_Iden){.type = token, .identifier_index = 0, .line = start_line,
							.column = start_col, .file = file};
	}
	else if(is_number(last_char))
	{
		u64 start_col = current_column;
		u64 start_line = current_line;
		b32 found_dot = false;
		do {
			advance_buffer(&at_buffer);
			if(*at_buffer == '.')
			{
				if(found_dot)
				{
					raise_token_syntax_error("Number has an extra dot", &at_buffer, file, start_line,
											 start_col);
					return get_token(file);
				}
				found_dot = true;
			}
		} while (is_number(*at_buffer) || *at_buffer == '.');
		u64 num_size = at_buffer - string_start;
		
		u8 *number_string = AllocateCompileMemory(num_size+1);
		memcpy(number_string, string_start, num_size);
		number_string[num_size] = '\0';
		
		u64 index = arrlen(identifier_buffer);
		arrput(identifier_buffer, number_string);
		
		return (Token_Iden){.type = tok_number, .identifier_index = index, .line = start_line,
							.column = start_col, .file = file};
	}
	else
	{
		u64 start_col = current_column;
		u64 start_line = current_line;
		if(*at_buffer == '"')
		{
			advance_buffer(&at_buffer);
			while(*at_buffer != '"')
			{
				advance_buffer(&at_buffer);
			}
			u64 num_size = at_buffer - string_start;
			u8 *number_string = AllocateCompileMemory(num_size);
			memcpy(number_string, string_start, num_size);
			number_string[num_size] = '\0';
			u64 index = arrlen(identifier_buffer);
			arrput(identifier_buffer, number_string);
			advance_buffer(&at_buffer);

			return (Token_Iden){.type = tok_const_str, .identifier_index = index, .line = start_line,
								.column = start_col, .file = file};
		}
		else
		{
			while(!is_whitespace(*at_buffer) && !is_alnum(*at_buffer))
			{
				if(*at_buffer == 0) return (Token_Iden){};
				advance_buffer(&at_buffer);
			}
			if(at_buffer - string_start == 1)
			{
				Token_Iden result = {.type = string_start[0], .line = start_line,
									.column = start_col, .file = file};
				return result;
			}
			
			if(string_start[0] == '/' && string_start[1] == '/')
			{
				while(*at_buffer != '\n')
					advance_buffer(&at_buffer);
				advance_buffer(&at_buffer);
				return get_token(file);
			}

			u64 identifier_size = at_buffer - string_start;

			char symbol[identifier_size + 1];
			memcpy(symbol, string_start, identifier_size);
			symbol[identifier_size] = '\0';

			Token_Iden result = {};
			result.type = shget(KeywordTable, symbol);
			result.line = start_line;
			result.column = start_col;
			result.file = file;
			
			if (result.type == KEYWORD_ERROR)
			{
				rewind_buffer_to(&at_buffer, string_start + 1);
				result.type = string_start[0];
				return result;
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
		case tok_minus: return (u8 *)"tok_minus"; break;
		case tok_plus: return (u8 *)"tok_plus"; break;
		case tok_not: return (u8 *)"tok_not"; break;
		case tok_star: return (u8 *)"tok_star"; break;
		case tok_equals: return (u8 *)"tok_equals"; break;
		case tok_eof: return (u8 *)"tok_eof"; break;
		case tok_func: return (u8 *)"tok_func"; break;
		case tok_extern: return (u8 *)"tok_extern"; break;
		case tok_arrow: return (u8 *)"tok_arrow"; break;
		case tok_struct: return (u8 *)"tok_struct"; break;
		case tok_cast: return (u8 *)"tok_cast"; break;
		case tok_if: return (u8 *)"tok_if"; break;
		case tok_for: return (u8 *)"tok_for"; break;
		case tok_identifier: return (u8 *)"tok_identifier"; break;
		case tok_const_str: return (u8 *)"tok_const_str"; break;
		case tok_number: return (u8 *)"tok_number"; break;
		case tok_logical_or: return (u8 *)"tok_logical_or"; break;
		case tok_logical_is: return (u8 *)"tok_logical_is"; break;
		case tok_logical_isnot: return (u8 *)"tok_logical_isnot"; break;
		case tok_logical_and: return (u8 *)"tok_logical_and"; break;
		case tok_logical_lequal: return (u8 *)"tok_logical_lequal"; break;
		case tok_logical_gequal: return (u8 *)"tok_logical_gequal"; break;
		case tok_logical_greater: return (u8 *)"tok_logical_greater"; break;
		case tok_logical_lesser: return (u8 *)"tok_logical_lesser"; break;
		case tok_bits_lshift: return (u8 *)"tok_bits_lshift"; break;
		case tok_bits_rshift: return (u8 *)"tok_bits_rshift"; break;
		case tok_bits_or: return (u8 *)"tok_bits_or"; break;
		case tok_bits_xor: return (u8 *)"tok_bits_xor"; break;
		case tok_bits_not: return (u8 *)"tok_bits_not"; break;
		case tok_bits_and: return (u8 *)"tok_bits_and"; break;
		case tok_plusplus: return (u8 *)"tok_plusplus"; break;
		case tok_minusminus: return (u8 *)"tok_minusminus"; break;
		case tok_const: return (u8 *)"tok_const"; break;
		case tok_switch: return (u8 *)"tok_switch"; break;
		case tok_case: return (u8 *)"tok_case"; break;
		case tok_as: return (u8 *)"tok_as"; break;
		case tok_import: return (u8 *)"tok_import"; break;
		case tok_run: return (u8 *)"tok_run"; break;
		case tok_must: return (u8 *)"tok_must"; break;
		case tok_any: return (u8 *)"tok_any"; break;
		case tok_plus_equals: return (u8 *)"tok_plus_equals"; break;
		case tok_minus_equals: return (u8 *)"tok_minus_equals"; break;
		case tok_mult_equals: return (u8 *)"tok_mult_equals"; break;
		case tok_div_equals: return (u8 *)"tok_div_equals"; break;
		case tok_mod_equals: return (u8 *)"tok_mod_equals"; break;
		case tok_and_equals: return (u8 *)"tok_and_equals"; break;
		case tok_xor_equals: return (u8 *)"tok_xor_equals"; break;
		case tok_or_equals: return (u8 *)"tok_or_equals"; break;
		case tok_lshift_equals: return (u8 *)"tok_lshift_equals"; break;
		case tok_rshift_equals: return (u8 *)"tok_rshift_equals"; break;
		case tok_break: return (u8 *)"tok_break"; break;
		default:
		{
			u8 *result = AllocatePermanentMemory(sizeof(u8) * 2);
			result[0] = (u8)token;
			result[1] = 0;
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

