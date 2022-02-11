#include <Lexer.h>
static entire_file file_buffer;
static u8 *at_buffer;
static str_hash_table *KeywordTable;
static i16 *token_buffer;
static u8 **identifier_buffer;
static u64 last_identifier;

i16 *get_token_array() { return token_buffer; }

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
}

u8 *
get_next_identifier()
{
	return identifier_buffer[last_identifier++];
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
	
	file_buffer.data = AllocateTemporaryMemory(PlatformGetFileSize(path));
	PlatformReadEntireFile(file_buffer.data, &file_buffer.size, path);
	at_buffer = file_buffer.data;
	shdefault(KeywordTable, INT16_MAX);
	while(at_buffer - (u8 *)file_buffer.data < (i64)file_buffer.size)
	{
		arrput(token_buffer, get_token());
	}
	arrput(token_buffer, tok_eof);
	
	i32 id_index = 0;
	for(i32 index = 0; index < arrlen(token_buffer); ++index)
	{
		if(token_buffer[index] == tok_identifier)
		{
			LG_INFO("Identifier %s", identifier_buffer[id_index++]);
		}
	}
}

static i16 get_token()
{
	while(is_whitespace(*at_buffer))
	{
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
			arrput(identifier_buffer, identifier);
		}
		return token;
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
					raise_token_syntax_error("Number has an extra dot", &at_buffer);
					return get_token();
				}
				found_dot = true;
			}
		} while (is_number(*at_buffer) || *at_buffer == '.');
		u64 num_size = at_buffer - string_start;
		
		u8 *number_string = AllocateCompileMemory(num_size+1);
		memcpy(number_string, string_start, num_size);
		number_string[num_size] = '\0';
		arrput(identifier_buffer, number_string);
		
		return tok_number;
	}
	else
	{
		if(last_char == '/' && *(at_buffer+1) == '/')
		{
			while(*at_buffer != '\n') at_buffer++;
			return get_token();
		}
		
		if(last_char == '-' && *(at_buffer+1) == '>')
		{
			at_buffer += 2;
			return tok_arrow;
		}
		at_buffer++;
		return *(at_buffer-1);
	}
}
