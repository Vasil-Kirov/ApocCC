
#include <Basic.h>
#include <stdlib/std.h>
#include <Log.h>
#include <Memory.h>
#include <Lexer.h>
#include <Type.h>
#include <Parser.h>
#include <SimpleDArray.h>
#include <Analyzer.h>
#include <Stack.h>


#include <platform/platform.h>

#include <stdlib/std.c>
#include <Log.c>
#include <Memory.c>
#include <Lexer.c>
#include <Type.c>
#include <Parser.c>
#include <SimpleDArray.c>
#include <Analyzer.c>


// I don't like linux
#if defined(DEBUG)
extern inline Stack _stack_allocate(int type_size);

extern inline void _stack_push(Stack *s, void *item);

extern inline void *_stack_pop(Stack *s);

extern inline void *_stack_peek(Stack *s);

extern inline b32 is_alpha(char c);
extern inline b32 is_alnum(char c);
extern inline b32 is_non_special_char(char c);
extern inline b32 is_number(char c);
extern inline b32 is_number(char c);
extern inline b32 is_whitespace(char c);
extern inline b32 is_alnum(char c);
#endif

#ifdef _WIN32
#include <platform/Win32Platform.c>
#else
#include <platform/LinuxPlatform.c>
#endif

void raise_semantic_error(const char *error_msg, Token_Iden token)
{
	LG_FATAL("%s (%d, %d):\n\tSemantic error: %s",
			 token.file, token.line, token.column, error_msg);
}

void raise_token_syntax_error(const char *error_msg, u8 **at_buffer, char *file, u64 line,
							  u64 column)
{
	LG_FATAL("%s (%d, %d):\n\tAn error occured while tokenizing: %s", file, line, column, error_msg);
}

void raise_parsing_unexpected_token(const char *expected_tok, Token_Iden token)
{
	if(token.type == tok_identifier)
	{
		LG_FATAL("%s (%d, %d):\n\tFound unexpected token [%s], expected %s, got [ \"%s\" ]",
				 token.file, token.line, token.column, token_to_str(token.type),
				 expected_tok, token.identifier);
	}
	else
		LG_FATAL("%s (%d, %d):\n\tFound unexpected token [%s], expected %s",
			 token.file, token.line, token.column, token_to_str(token.type), expected_tok);
}

int main(int argc, char *argv[])
{
	initialize_logger();
	platform_initialize();
	initialize_memory();
	initialize_compiler();
	initialize_analyzer();

	if(argc < 2)
	{
		LG_FATAL("apoc [file]");	
	}

	LG_WARN("Lexing...");
	lex_file(argv[1]);
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
