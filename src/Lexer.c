#include <Lexer.h>
static u8 *at_buffer;
static str_hash_table *KeywordTable;
static str_hash_table *TypeTable;
static Token_Iden *token_buffer;
static u64 last_token;
static u8 **identifier_buffer;
static u64 current_line;



void
initialize_compiler()
{
	// NOTE(Vasko): Add keywords to string hash table
	shput(KeywordTable, "func", tok_func);
	shput(KeywordTable, "extern", tok_extern);
	shput(KeywordTable, "->", tok_arrow);
	shput(KeywordTable, "struct", tok_struct);
	shput(KeywordTable, "import", tok_import);
	shput(KeywordTable, "cast", tok_cast);
	shput(KeywordTable, "if", tok_if);
	shput(KeywordTable, "for", tok_for);
	shput(KeywordTable, "switch", tok_switch);
	shput(KeywordTable, "case", tok_case);
	shput(KeywordTable, "as", tok_as);
	
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

Var_Type
look_up_identifier_for_type(u8 *type_str)
{
	return shget(TypeTable, type_str);
}

Token_Iden
get_next_token() { return token_buffer[last_token++]; }

Token_Iden
peek_next_token() { return token_buffer[last_token]; }

u8 *
get_identifier(u64 index)
{
	return(identifier_buffer[index]);
}

static void
compile_file(char *path)
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
	
	shdefault(KeywordTable, INT16_MAX);
	shdefault(TypeTable, 0);
	current_line = 1;
	
	while(at_buffer - (u8 *)file_buffer.data < (i64)file_buffer.size)
	{
		Token_Iden to_put = get_token(path);
		if(to_put.token != ' ')
			arrput(token_buffer, to_put);
	}
	
	Token_Iden eof_token = {.token = tok_eof, .identifier_index = 0};
	arrput(token_buffer, eof_token);
	
	for(i32 index = 0; index < arrlen(token_buffer); ++index)
	{
		if(token_buffer[index].token == tok_identifier)
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
		if(*at_buffer == '\n')
			current_line++;
		
		at_buffer++;
	}
	
	char last_char = *at_buffer;
	u8 *string_start = at_buffer;
	
	if(is_alpha(last_char))
	{
		while(is_alnum(*at_buffer) || is_non_special_char(*at_buffer))
		{
			at_buffer++;
		}
		
		u64 identifier_size = at_buffer - string_start;
		
		char name[identifier_size+1];
		memcpy(name, string_start, identifier_size);
		name[identifier_size] = '\0';
		
		
		i16 token = shget(KeywordTable, name);
		if(token == INT16_MAX)
		{
			u8 *identifier = AllocateCompileMemory(identifier_size+1);
			memcpy(identifier, string_start, identifier_size);
			identifier[identifier_size] = '\0';
			
			token = tok_identifier;
			u64 index = arrlen(identifier_buffer);
			arrput(identifier_buffer, identifier);
			
			return (Token_Iden){.token = token, .identifier_index = index, .line = current_line, .file = file};
		}
		return (Token_Iden){.token = token, .identifier_index = 0, .line = current_line, .file = file};
	}
	else if(is_number(last_char))
	{
		b32 found_dot = false;
		do {
			at_buffer++;
			if(*at_buffer == '.')
			{
				if(found_dot)
				{
					raise_token_syntax_error("Number has an extra dot", &at_buffer, file, current_line);
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
		
		return (Token_Iden){.token = tok_number, .identifier_index = index, .line = current_line, .file = file};
	}
	else
	{
		i16 token = check_for_char_combination((char **)&at_buffer);
		if(token != ' ')
			at_buffer++;
		else
			return get_token(file);
		
		return (Token_Iden){.token = token, .identifier_index = 0, .line = current_line, .file = file};
	}
}

#define next_char(buf) *(buf+1)

i16
check_for_char_combination(char **buf)
{
	char *at = *buf;
	char first = *at;
	switch(first)
	{
		case '-':
		{
			if(next_char(at) == '>')
			{
				(*buf)++;
				return tok_arrow;
			}
			else return '-';
			
		}break;
		
		case '|':
		{
			if(next_char(at) == '|')
			{
				(*buf)++;
				return tok_logical_or;
			}
			else return '|';
		}break;
		
		case '=':
		{
			if(next_char(at) == '=')
			{
				(*buf)++;
				return tok_logical_is;
			}
			else return '=';
		}
		case '!':
		{
			if(next_char(at) == '=')
			{
				(*buf)++;
				return tok_logical_isnot;
			}
			else return '!';
		}break;
		case '&':
		{
			if(next_char(at) == '&')
			{
				(*buf)++;
				return tok_logical_and;
			}
			else return '&';
		}break;
		case '<':
		{
			if(next_char(at) == '<')
			{
				(*buf)++;
				return tok_binary_lshift;
			}
			else return '<';
		}break;
		case '>':
		{
			if(next_char(at) == '>')
			{
				(*buf)++;
				return tok_binary_rshift;
			}
			else return '>';
		}break;
		
		case '/':
		{
			if(next_char(at) == '/')
			{
				while (**buf != '\n') (*buf)++;
				(**buf)++;
				current_line++;
				return ' ';
			}
			else return '/';
		}break;
		
		case ':':
		{
			if(next_char(at) == ':')
			{
				(*buf)++;
				return tok_const;
			}
			else return ':';
		}break;
		
		default: 
		{
			return first;
		}break;
	}
}