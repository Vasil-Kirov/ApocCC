

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

#include <chrono>

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


File_Contents *
append_token_streams(File_Contents **files)
{
	Token_Iden *complete_buffer = SDCreate(Token_Iden);
	for(int i = 0; i < SDCount(files); ++i)
	{
		File_Contents *f = files[i];
		Token_Iden *buffer = f->token_buffer;
		size_t token_count = SDCount(buffer);
		for(int j = 0; j < token_count; ++j)
		{
			SDPush(complete_buffer, buffer[j]);
		}
		SDFree(buffer);
	}
	File_Contents *result = files[0];
	result->token_buffer = complete_buffer;
	result->curr_token = complete_buffer;
	return result;
}

struct Timers
{
	double lexing;
	double parsing;
	double analysis;
	double codegen;
	double linking;
	double syncing;
	double total;
	std::chrono::time_point<std::chrono::high_resolution_clock> lex_clock;
	std::chrono::time_point<std::chrono::high_resolution_clock> parse_clock;
	std::chrono::time_point<std::chrono::high_resolution_clock> analysis_clock;
	std::chrono::time_point<std::chrono::high_resolution_clock> codegen_clock;
	std::chrono::time_point<std::chrono::high_resolution_clock> linking_clock;
	std::chrono::time_point<std::chrono::high_resolution_clock> syncing_clock;
	std::chrono::time_point<std::chrono::high_resolution_clock> total_clock;
	
	std::chrono::duration<double> diff_track;
};

#define TIME_FUNC(TIMERS, FUNC_CALL, CLOCK_KIND, STORE_KIND) \
TIMERS.CLOCK_KIND = std::chrono::high_resolution_clock::now();                     \
FUNC_CALL;                                                                         \
TIMERS.diff_track = std::chrono::high_resolution_clock::now() - TIMERS.CLOCK_KIND; \
TIMERS.STORE_KIND += timers.diff_track.count()


int main(int argc, char *argv[])
{
	Timers timers = {};
	timers.total_clock = std::chrono::high_resolution_clock::now();
	
	initialize_memory();
	initialize_logger();
	platform_initialize();

	if(argc < 2)
	{
		LG_FATAL("apoc [files]");	
	}
	
	File_Contents **files = SDCreate(File_Contents *);
	for(size_t i = 1; i < argc; ++i)
	{
		File_Contents *f = (File_Contents *)AllocatePermanentMemory(sizeof(File_Contents));
		f->build_commands.debug_info = false;
		initialize_compiler(f);
		initialize_analyzer(f);
		
		TIME_FUNC(timers, lex_file(f, argv[i]), lex_clock, lexing);
		SDPush(files, f);
	}
	size_t file_count = SDCount(files);
	TIME_FUNC(timers, File_Contents *f = append_token_streams(files), syncing_clock, syncing);
	
	TIME_FUNC(timers, f->ast_root = parse(f), parse_clock, parsing);
	TIME_FUNC(timers, analyze(f, f->ast_root), analysis_clock, analysis);
	TIME_FUNC(timers, llvm_backend_generate(f, f->ast_root), codegen_clock, codegen);
	
	// @TODO: Linux linker
	// @TODO: arguments
	std::string linker_command = std::string("LINK /nologo");
	linker_command += " ";
	linker_command += f->obj_name;
	linker_command += " kernel32.lib user32.lib legacy_stdio_definitions.lib UCRT.LIB " 
		"vcruntime.lib /entry:_apoc_init /INCREMENTAL:NO";
	
	TIME_FUNC(timers, platform_call_and_wait(linker_command.c_str()),
			  linking_clock, linking);
	
	timers.diff_track = std::chrono::high_resolution_clock::now() - timers.total_clock; \
	timers.total += timers.diff_track.count();
		
	
	LG_INFO("Lexing:            %f.4s", timers.lexing);
	LG_INFO("Parsing:           %f.4s", timers.parsing);
	LG_INFO("Semantic Analysis: %f.4s", timers.analysis);
	LG_INFO("Linking:           %f.4s", timers.linking);
	LG_INFO("Syncing Files:     %f.4s", timers.syncing);
	LG_INFO("Code Generation:   %f.4s", timers.codegen);
	LG_INFO("Total:             %f.4s", timers.total);
	
	ResetCompileMemory();
	return 0;
}
