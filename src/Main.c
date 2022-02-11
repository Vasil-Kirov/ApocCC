
#include <Basic.h>
#include <stdlib/std.h>
#include <Log.h>
#include <Memory.h>
#include <Lexer.h>
#include <Parser.h>

#include <platform/platform.h>

#include <stdlib/std.c>
#include <Log.c>
#include <Memory.c>
#include <Lexer.c>
#include <Parser.c>

#ifdef _WIN32
#include <platform/Win32Platform.c>
#else

#endif

static b32 will_compile;

void
raise_token_syntax_error(const char *error_msg, u8 **at_buffer)
{
	will_compile = false;
	LG_ERROR("An error occured while tokenizing: %s", error_msg);
	while(**at_buffer != ';' && !is_whitespace(**at_buffer)) (*at_buffer)++;
}

int
main(int argc, char *argv[])
{
	InitializeLogger();
	PlatformInitialize();
	InitializeMemory();
	initialize_compiler();
	
	will_compile = true;
	compile_file("D:\\Programming\\Compiler\\Test.apoc");
	i16 *tokens = get_token_array();
	i16 size = 0;
	while(tokens[size] != tok_eof) ++size;
	tokens_to_ast_expression(tokens, size);
	
	
	if(!will_compile) return 1;
	
	
	ResetTemporaryMemory();
	ResetCompileMemory();
	return 0;
}