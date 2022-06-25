#include <Lexer.h>
#include <Basic.h>
#include <Parser.h>

static u8 *at_buffer;
static str_hash_table *KeywordTable;
static str_hash_table *TypeTable;
static Token_Iden *token_buffer;
static u64 last_token;
static u8 **identifier_buffer;
static u64 current_line;
static u64 current_column;

#define KEYWORD_ERROR 32767

void
advance_buffer(u8 **buffer)
{
	if(**buffer != '\0')
		{
	if(**buffer == '\n')
		{
			current_line++;
			current_column = 0;
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
			char c = **buffer;
			if(c == '\n')
				{
					current_line--;
					current_column = 1;
				}
			current_column--;
			(*buffer)--;
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
	shput(TypeTable, "i8",  byte1);
	shput(TypeTable, "i16", byte2);
	shput(TypeTable, "i32", byte4);
	shput(TypeTable, "i64", byte8);
	shput(TypeTable, "u8",  ubyte);
	shput(TypeTable, "u16", ubyte2);
	shput(TypeTable, "u32", ubyte4);
	shput(TypeTable, "u64", ubyte8);
	shput(TypeTable, "r32", real32);
	shput(TypeTable, "r64", real64);
	shput(TypeTable, "void", empty);
}

Var_Representation
look_up_identifier_for_type(u8 *type_str)
{
	return shget(TypeTable, type_str);
}

Var_Representation
get_type_from_id(u64 identifier_index)
{
	return shget(TypeTable, get_identifier(identifier_index));
}

Token_Iden
get_prev_token() { return token_buffer[last_token - 1]; }

Token_Iden
get_next_token() { return token_buffer[last_token++]; }

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

static void
lex_file(char *path)
{
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
	
	file_buffer.size = PlatformGetFileSize(path)+1;
	file_buffer.data = AllocateCompileMemory(file_buffer.size);
	memset(file_buffer.data, 0, file_buffer.size);
	if(PlatformReadEntireFile(file_buffer.data, &file_buffer.size, path) == false)
	{
		LG_FATAL("Couldn't find input file %s", path);
	}
	at_buffer = file_buffer.data;

	shdefault(KeywordTable, KEYWORD_ERROR);
	shdefault(TypeTable, 0);
	current_line = 1;
	
	while(at_buffer - (u8 *)file_buffer.data < (i64)file_buffer.size)
	{
		Token_Iden to_put = get_token(path);
		if(to_put.type != ' ' && to_put.type != '\0')
			arrput(token_buffer, to_put);
	}
	
	Token_Iden eof_token = {.type = tok_eof, .identifier_index = 0};
	arrput(token_buffer, eof_token);
	
	for(i32 index = 0; index < arrlen(token_buffer); ++index)
	{
		if(token_buffer[index].type == tok_identifier)
		{
			LG_INFO("Identifier %s", identifier_buffer[token_buffer[index].identifier_index]);
		}
	}
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
