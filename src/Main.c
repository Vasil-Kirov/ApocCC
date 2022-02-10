
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
	compile_file("D:\\Programming\\Compiler\\Syntax.txt");
	if(!will_compile) return 1;
	
	ast_expression test = {};
	ast_expression fleft = {};
	ast_expression fright = {};
	ast_expression sleft = {};
	
	test.type = type_constant;
	test.left = &fleft;
	test.left->right = &fright;
	test.left->left = &sleft;
	
	test.left->type = type_add;
	test.left->right->type = type_constant;
	test.left->right->number.type = auto_signed;
	test.left->right->number.number.signed_long = 2;
	test.left->left->type = type_constant;
	test.left->left->number.type = auto_signed;
	test.left->left->number.number.signed_long = 2;
	
	auto_number result = evaluate_expression(&test);
	LG_INFO("Test result: %d", result.number.signed_long);
	return 0;
}