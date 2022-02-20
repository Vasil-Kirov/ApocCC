
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
	compile_file("W:\\Apocalypse\\Test.apoc");
	if(!will_compile) return -1;
	ast_from_tokens();
	if(!will_compile) return -1;
	
	ResetCompileMemory();
	return 0;
}