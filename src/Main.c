
#include <Basic.h>
#include <stdlib/std.h>
#include <Log.h>
#include <Memory.h>
#include <Lexer.h>
#include <Parser.h>
#include <SimpleDArray.h>

#include <platform/platform.h>

#include <stdlib/std.c>
#include <Log.c>
#include <Memory.c>
#include <Lexer.c>
#include <Parser.c>
#include <SimpleDArray.c>

#ifdef _WIN32
#include <platform/Win32Platform.c>
#else

#endif

static b32 will_compile;

void raise_token_syntax_error(const char *error_msg, u8 **at_buffer, char *file, u64 line,
							  u64 column)
{
	will_compile = false;
	LG_FATAL("An error occured while tokenizing:\n%s at line %d, column %d in file: %s", error_msg, line,
			 column, file);
	/*
	  while (**at_buffer != ';' && !is_whitespace(**at_buffer))
	  (*at_buffer)++;	
	*/
}

void raise_parsing_unexpected_token(const char *expected_tok, Token_Iden token)
{
	will_compile = false;
	LG_ERROR("Found unexpected token at line %d, column %d in file %s. Expected %s",
			 token.line, token.column, token.file, expected_tok);
	if (token.type == tok_identifier)
	{
		LG_ERROR("Token: %s", get_identifier(token.identifier_index));
	}
	LG_FATAL("Exiting...");
}

int main(int argc, char *argv[])
{
	InitializeLogger();
	PlatformInitialize();
	InitializeMemory();
	initialize_compiler();

	
	will_compile = true;
	lex_file("E:\\C_Projects\\Apocalypse\\Test.apoc");
	if (!will_compile)
		return -1;
	parse();
	if (!will_compile)
		return -1;

	ResetCompileMemory();
	return 0;
}
