
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
#include <Interpret.h>
#include <CommandLine.h>
#include <DumpInfo.h>
#if 0
#include <Bytecode.h>
#include <x64_Gen.h>
#include <ObjDumper.h>
#endif
#include <Threading.h>

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
#include <Interpret.cpp>
#include <CommandLine.cpp>
#include <DumpInfo.cpp>
#if 0
#include <Bytecode.cpp>
#include <x64_Gen.cpp>
#include <ObjDumper.cpp>
#endif
#include <Threading.cpp>

#if !defined(NOVM)
#include <LLVM_Helpers.h>
#include <LLVM_Backend.h>

#include <LLVM_Helpers.cpp>
#include <LLVM_Backend.cpp>
#endif

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
	Token_Iden eof_tok = {};
	for(int i = 0; i < SDCount(files); ++i)
	{
		File_Contents *f = files[i];
		Token_Iden *buffer = f->token_buffer;
		size_t token_count = SDCount(buffer);
		for(int j = 0; j < token_count; ++j)
		{
			if(buffer[j].type == tok_eof)
				eof_tok = buffer[j];
			else
				SDPush(complete_buffer, buffer[j]);
		}
		SDFree(buffer);
	}
	SDPush(complete_buffer, eof_tok);
	File_Contents *result = files[0];
	result->token_buffer = complete_buffer;
	result->curr_token = complete_buffer;
	return result;
}

void resolve_modules(File_Contents *f, File_Contents **files, int file_idx)
{
	auto file_count = SDCount(files);
	auto import_count = SDCount(f->modules);
	for(int mod_idx = 0; mod_idx < import_count; ++mod_idx)
	{
		Import_Module *mod = &f->modules[mod_idx];
		if(!mod->f)
		{
			for(int i = 0; i < file_count; ++i)
			{
				if(i == file_idx)
					continue;
				File_Contents *f1 = files[i];
				if(vstd_strcmp((char *)mod->module_path, (char *)f1->path))
				{
					mod->f = f1;
					break;
				}
			}
		}
	}
}

int check_for_uncompiled_includes(File_Contents *f)
{
	auto import_count = SDCount(f->modules);
	for(int mod_idx = 0; mod_idx < import_count; ++mod_idx)
	{
		if(f->modules[mod_idx].f == NULL)
		{
			return mod_idx;
		}
	}
	return -1;
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

File_Contents *lex_and_parse_file(Build_Commands build_command, char *file_path, Timers timers)
{
	File_Contents *f = (File_Contents *)AllocatePermanentMemory(sizeof(File_Contents));
	f->build_commands.debug_info = false;
	initialize_compiler(f);
	initialize_analyzer(f);
	f->build_commands = build_command;
	f->build_commands.linker_command = build_command.linker_command;
	f->build_commands.output_file = build_command.output_file;

	TIME_FUNC(timers, lex_file(f, file_path), lex_clock, lexing);
	TIME_FUNC(timers, f->ast_root = parse(f), parse_clock, parsing);
	return f;
}

int main(int argc, char *argv[])
{
	// @TODO: handle empty files
	// @TODO: handle empty files
	// @TODO: handle empty files
	// @TODO: handle empty files
	// @TODO: handle empty files
	// @TODO: handle empty files
	// @TODO: handle empty files
	// @TODO: handle empty files
	// @TODO: handle empty files
	// @TODO: handle empty files
	// @TODO: handle empty files
	// @TODO: handle empty files
	// @TODO: handle empty files
	// @TODO: handle empty files
	// @TODO: handle empty files
	// @TODO: handle empty files
	Timers timers = {};
	timers.total_clock = std::chrono::high_resolution_clock::now();

	initialize_memory();
	initialize_logger();
	platform_initialize();
	initialize_interpreter();
	initialize_thread_pool();
	init_type_system();

	if(argc < 2)
	{
		LG_FATAL("apoc [files]");	
	}

	std::vector<std::string> file_names;
	Build_Commands build_command = parse_command_line(argc, argv, &file_names);
	if(file_names.size() == 0)
		LG_FATAL("No source files specified");
	File_Contents **files = SDCreate(File_Contents *);
	for(size_t i = 0; i < file_names.size(); ++i)
	{
		File_Contents *f = lex_and_parse_file(build_command, (char *)file_names[i].c_str(), timers);
		SDPush(files, f);
	}

	size_t file_count = SDCount(files);

	b32 did_find_new;
	do {
		did_find_new = false;
		LOOP_FILES
		{
			File_Contents *f = files[file_idx];
			resolve_modules(f, files, file_idx);
			char *uncompiled_file;
			do {
				File_Contents *f_initial = files[file_idx];
				uncompiled_file = NULL;
				int uncompiled_idx = check_for_uncompiled_includes(f);
				if(uncompiled_idx != -1)
				{
					uncompiled_file = (char *)f->modules[uncompiled_idx].module_path;
					did_find_new = true;
					File_Contents *f = lex_and_parse_file(build_command, uncompiled_file, timers);
					SDPush(files, f);
					file_count++;
					f_initial->modules[uncompiled_idx].f = f;
				}
			} while(uncompiled_file);
		}
	} while(did_find_new);
	import_non_imported(files);

	Ast_Node ***file_functions = (Ast_Node ***)AllocateCompileMemory(sizeof(Ast_Node **) * file_count);
	LOOP_FILES
	{
		File_Contents *f = files[file_idx];
		TIME_FUNC(timers, file_functions[file_idx] = analyze(f, f->ast_root), analysis_clock, analysis);
	}
	
	fix_all_types();
	LOOP_FILES
	{
		File_Contents *f = files[file_idx];
		TIME_FUNC(timers, analyze_functions_and_overloads(f, file_functions[file_idx]), analysis_clock, analysis);
		pop_scope(f, f->prev_token);
	}


#if 0
	if (build_command.dump_symbols)
	{
		TIME_FUNC(timers, dump_program_info(f), codegen_clock, codegen);
		LG_INFO("Symbol dump mode, no code will be generated");
		LG_INFO("Lexing:            %f.4s", timers.lexing);
		LG_INFO("Parsing:           %f.4s", timers.parsing);
		LG_INFO("Semantic Analysis: %f.4s", timers.analysis);
		LG_INFO("Dumping Symbols:   %f.4s", timers.codegen);
		return 0;
	}
#endif

#if 0
	if(f->build_commands.backend == Fast_Backend)
	{
		Relocation *relocations = NULL;
		u32 relocation_count = 0;
		TIME_FUNC(timers, IR *ir = ast_to_bytecode(files), codegen_clock, codegen);
		TIME_FUNC(timers, Code_Buffer code = x64_generate_code(f, ir, &relocations, &relocation_count), codegen_clock, codegen);
		TIME_FUNC(timers, dump_obj(f, code, relocations, relocation_count, obj_symbols), codegen_clock, codegen);
	}
#endif
#if !defined(NOVM)
	if(build_command.backend == LLVM_Backend)
	{
		TIME_FUNC(timers, llvm_backend_generate(files), codegen_clock, codegen);
	}
#endif
	else
	{
		LG_FATAL("----- COMPILER BUG -----\nBackend is not specified %d", build_command.backend);
	}
	
	u8 *final_linker_command = (u8 *)AllocatePermanentMemory(4096);
	vstd_strcat((char *)final_linker_command, (char *)build_command.linker_command);
	vstd_strcat((char *)final_linker_command, (char *)" ");
	vstd_strcat((char *)final_linker_command, files[0]->obj_name);

	if(build_command.linker == LINK_EXE)
	{
		if(build_command.debug_info)
			vstd_strcat((char *)final_linker_command, (char *)" /DEBUG ");

		vstd_strcat((char *)final_linker_command, (char *)" /ENTRY:mainCRTStartup ");
		vstd_strcat((char *)final_linker_command, (char *)"/defaultlib:libcmt ");	
		vstd_strcat((char *)final_linker_command, (char *)"/OUT:");
	}
	else if(build_command.linker == LINK_LD)
	{
		vstd_strcat((char *)final_linker_command, (char *)" -o");
	}
	else if(build_command.linker == LINK_WASM_LD)
	{
		vstd_strcat((char *)final_linker_command, (char *)" -o");
	}
	else
	{
		LG_FATAL("----- COMPILER BUG -----\nUnkown linker after arguments parsing");
	}

	vstd_strcat((char *)final_linker_command, (char *)build_command.output_file);

	//LG_DEBUG("Linker Command: %s", final_linker_command);
	if(build_command.call_linker)
	{
		TIME_FUNC(timers, platform_call_and_wait((char *)final_linker_command),
				linking_clock, linking);
	}

	timers.diff_track = std::chrono::high_resolution_clock::now() - timers.total_clock; \
	timers.total += timers.diff_track.count();
		
	
	LG_INFO("Lexing:            %f.4s", timers.lexing);
	LG_INFO("Parsing:           %f.4s", timers.parsing);
	LG_INFO("Semantic Analysis: %f.4s", timers.analysis);
	LG_INFO("Linking:           %f.4s", timers.linking);
	LG_INFO("Syncing Files:     %f.4s", timers.syncing);
	LG_INFO("Code Generation:   %f.4s", timers.codegen);
	LG_INFO("Total:             %f.4s", timers.total);
	
	//	@NOTE: wut
	//	ResetCompileMemory();
	return 0;
}
