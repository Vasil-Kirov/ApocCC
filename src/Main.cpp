

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


#include <platform/platform.h>

#include <stdlib/std.cpp>
#include <Log.cpp>
#include <Memory.cpp>
#include <Lexer.cpp>
#include <Type.cpp>
#include <Parser.cpp>
#include <SimpleDArray.cpp>
#include <Analyzer.cpp>
#include <Errors.cpp>

#include <LLVM_Helpers.h>
#include <LLVM_Backend.h>

#include <LLVM_Helpers.cpp>
#include <LLVM_Backend.cpp>

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
#include <platform/Win32Platform.cpp>
#else
#include <platform/LinuxPlatform.cpp>
#endif


int main(int argc, char *argv[])
{

	initialize_memory();
	initialize_logger();
	platform_initialize();

	File_Contents *f = (File_Contents *)AllocatePermanentMemory(sizeof(File_Contents));
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
