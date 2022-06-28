
#include <Basic.h>
#include <stdlib/std.h>
#include <Log.h>
#include <Memory.h>
#include <Lexer.h>
#include <Parser.h>
#include <SimpleDArray.h>
#include <Analyzer.h>

#include <platform/platform.h>

#include <stdlib/std.c>
#include <Log.c>
#include <Memory.c>
#include <Lexer.c>
#include <Parser.c>
#include <SimpleDArray.c>
#include <Analyzer.c>

#ifdef _WIN32
#include <platform/Win32Platform.c>
#else

#endif

void raise_semantic_error(const char *error_msg, Token_Iden token)
{
	LG_FATAL("Semantic error: %s.\nLine: %d\nColumn: %d\nFile: %s", error_msg, token.line, token.column, token.file);
}

void raise_token_syntax_error(const char *error_msg, u8 **at_buffer, char *file, u64 line,
							  u64 column)
{
	LG_FATAL("%s (%d, %d):\n\tAn error occured while tokenizing: %s", file, line, column, error_msg);
	/*
	  while (**at_buffer != ';' && !is_whitespace(**at_buffer))
	  (*at_buffer)++;	
	*/
}

void raise_parsing_unexpected_token(const char *expected_tok, Token_Iden token)
{
	if(token.type == tok_identifier)
	{
		LG_ERROR("%s (%d, %d):\n\tFound unexpected token, expected %s", token.file, token.line, token.column, expected_tok);
		LG_FATAL("Token: %s", get_identifier(token.identifier_index));
	}
	else
		LG_FATAL("%s (%d, %d):\n\tFound unexpected token, expected %s", token.file, token.line, token.column, expected_tok);
}

int main(int argc, char *argv[])
{
	initialize_logger();
	platform_initialize();
	initialize_memory();
	initialize_compiler();
	initialize_analyzer();

// NOTE(Vasko): Stack implementation testing
/*
	Stack random_stack;
	random_stack = stack_allocate(int);

	for(int i = 0; i < 10; ++i)
	{
		stack_push(random_stack, i);
		stack_push(random_stack, i);
	}
	for(int i = 9; i >= 0; --i)
	{
		Assert(stack_pop(random_stack, int) == i);
		Assert(stack_pop(random_stack, int) == i);
	}

	for(int i = 0; i < 10; ++i)
	{
		stack_push(random_stack, i);
		stack_pop(random_stack, int);
		stack_push(random_stack, i);
	}
	for(int i = 9; i >= 0; --i)
	{
		Assert(stack_pop(random_stack, int) == i);
	}
*/

	LG_WARN("Lexing...");
	lex_file("E:\\C_Projects\\Apocalypse\\Test.apoc");
	LG_WARN("Done.");
	
	LG_WARN("Parsing...");
	Ast_Node *ast_tree = parse();
	LG_WARN("Done.");
	
	LG_WARN("Performing semantic analysis");
	analyze(ast_tree);
	LG_WARN("Done.");

	ResetCompileMemory();
	return 0;
}
