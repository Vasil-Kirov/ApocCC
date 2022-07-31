
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
#include <Errors.h>

#include <C_Backend.h>
#include <LLVM_Backend.h>

#include <platform/platform.h>

#include <stdlib/std.c>
#include <Log.c>
#include <Memory.c>
#include <Lexer.c>
#include <Type.c>
#include <Parser.c>
#include <SimpleDArray.c>
#include <Analyzer.c>
#include <Errors.c>

// I don't like linux
#if defined(DEBUG)
extern inline Stack _stack_allocate(int type_size);

extern inline void _stack_push(Stack *s, void *item);

extern inline void *_stack_pop(Stack *s);

extern inline void *_stack_peek(Stack *s);

extern inline b32 is_alpha(u8 c);
extern inline b32 is_alnum(u8 c);
extern inline b32 is_non_special_char(u8 c);
extern inline b32 is_number(u8 c);
extern inline b32 is_whitespace(u8 c);
extern inline b32 is_alnum(u8 c);
#endif

#ifdef _WIN32
#include <platform/Win32Platform.c>
#else
#include <platform/LinuxPlatform.c>
#endif


int main(int argc, char *argv[])
{
	File_Contents *f = AllocatePermanentMemory(sizeof(File_Contents));

	initialize_logger();
	platform_initialize();
	initialize_memory();
	initialize_compiler(f);
	initialize_analyzer(f);

	if(argc < 2)
	{
		LG_FATAL("apoc [file]");	
	}

	LG_INFO("Lexing...");
	lex_file(f, argv[1]);
	LG_INFO("Done.");
	
	LG_INFO("Parsing...");
	Ast_Node *ast_tree = parse(f);
	LG_INFO("Done.");
	
	LG_INFO("Performing semantic analysis...");
	analyze(f, ast_tree);
	LG_INFO("Done.");

	LG_INFO("Generating code...");
	llvm_backend_generate(f, ast_tree);
	LG_INFO("Done.");
	
	ResetCompileMemory();
	return 0;
}
