#include <Basic.h>
#include <CommandLine.h>
#include <iterator>
#include <map>
#include <stdlib/std.h>
#include <platform/platform.h>

const char *command_line_args = R"del(apoc [source files/args]

args:
    --target [platform]
        x64 (default)
	x32
	wasm
   --define DEFINE_NAME=VALUE
   --optimize [level]
       none (default)
       some
       max
    --linker [linker]
        link.exe (windows default)
	ld (linux default)
	wasm-ld (wasm default)
    --link [linker arguments]
        linker dependent
    --dump-symbols
    --debug
    --out [output file name]
    --no-link
    --backend [backend]
        llvm
	custom
    --include [path]
    --dll [file]
    --shared [file]
)del";

void
raise_build_error(const char *error_msg, ...)
{
	// @TODO: print all options
	char *error = (char *)AllocateCompileMemory(4096);
	va_list args;
	va_start(args, error_msg);
	vstd_vsnsprintf(error, vstd_strlen((char *)error_msg), error_msg, args);
	va_end(args);
	vstd_strcat(error, "\n\n");
	vstd_strcat(error, command_line_args);
	LG_FATAL(error);
}

Build_Commands
parse_command_line(int c_argc, char *c_argv[], std::vector<std::string> *files)
{
	Build_Commands build_commands = {};
	build_commands.call_linker = true;
	build_commands.linker_command = NULL;
	build_commands.output_file = NULL;
	build_commands.included_dirs = SDCreate(u8 *);
	build_commands.dynamic_libs = SDCreate(Platform_Dynamic_Lib);
#if !defined(NOVM)
	build_commands.backend = LLVM_Backend;
#else
	build_commands.backend = Fast_Backend;
#endif
#if defined(_WIN32)
	build_commands.linker = LINK_EXE;
#elif defined(CM_LINUX)
	build_commands.linker = LINK_LD;
#else
#error Unknown platform
#endif
	shdefault(build_commands.defines, 0);
	const char *this_dir = ".";
	SDPush(build_commands.included_dirs, this_dir);

	std::string tmp_output_file;
	std::string linker_command;
	std::string linker_append;
	std::string args[c_argc - 1];
	
	for (size_t i = 1; i < c_argc; ++i)
	{
		args[i - 1] = std::string(c_argv[i]);
	}

#if defined(_WIN32)
	shput(build_commands.defines, "Windows", true);
	auto kernel32 = platform_load_dynamic_lib("kernel32");
	auto user32   = platform_load_dynamic_lib("user32");
	auto ntdll    = platform_load_dynamic_lib("ntdll");
	auto msvcrt   = platform_load_dynamic_lib("msvcrt");
	if(kernel32)
		SDPush(build_commands.dynamic_libs, kernel32);
	if(user32)
		SDPush(build_commands.dynamic_libs, user32);
	if(ntdll)
		SDPush(build_commands.dynamic_libs, ntdll);
	if(msvcrt)
		SDPush(build_commands.dynamic_libs, msvcrt);
#elif defined(CM_LINUX)
	shput(build_commands.defines, "Linux", true);

	// @NOTE: put default linux libs here
	Assert(false);
#endif
	
	FOR_EACH(args)
	{
		auto arg = args[i];
		if(arg == " " || arg == "")
			continue;
		if(arg.length() > 2 && arg[0] == '-' && arg[1] == '-')
		{
			if (arg == "--target")
			{
				if(build_commands.target != 0)
					raise_build_error("--target has been defined twice");
				auto target = args[++i];
				if(target == "x64")
					build_commands.target = TG_X64;
				else if(target == "x32")
					build_commands.target = TG_X32;
				else if(target == "wasm")
				{
					build_commands.target = TG_WASM;
					build_commands.linker = LINK_WASM_LD;
				}
				else
					raise_build_error("Unsupported target %s", target.c_str());
			}
			else if(arg == "--define")
			{
				auto define = args[++i];
				auto eq_pos = define.find('=');
				auto name = define.substr(0, eq_pos);
				auto value = define.substr(eq_pos + 1, define.size() - (eq_pos + 1));
				b32 found_dot = false;
				for(char& c: value)
				{
					if(c == '.')
					{
						if(found_dot)
							LG_FATAL("Defined value for %s has more than one decimal point",
									name.c_str());
						found_dot = true;
					}
					else if(!is_number(c) && c != '-')
						LG_FATAL("Value for define %s is not a number", name.c_str());
				}
				u64 num = 0;
				if(found_dot)
					num = (u64)vstd_str_to_double((char *)value.c_str());
				else
					num = str_to_u64(value.c_str());

				u8 *c_name = (u8 *)AllocatePermanentMemory(name.size() + 1);
				memcpy(c_name, name.c_str(), name.size());
				shput(build_commands.defines, c_name, num);
			}
			else if(arg == "--optimize")
			{
				if(build_commands.optimization != 0)
					raise_build_error("--optimize has been defined twice");
				auto level = args[++i];
				if (level == "max")
					build_commands.optimization = OPT_MAX;
				else if (level == "some")
					build_commands.optimization = OPT_SOME;
				else if(level == "none")
					build_commands.optimization = OPT_NONE;
				else
					raise_build_error("Unkown optimization option %s.\nOptions:"
							"\n\tmax\n\tsome\n\tnone", level.c_str());
			}
			else if(arg == "--linker")
			{
				auto linker = args[++i];
				if(linker == "LINK" || linker == "LINK.EXE" || linker == "link" || linker == "link.exe")
				{
					build_commands.linker = LINK_EXE;
				}
				else if(linker == "LD" || linker == "ld")
				{
					build_commands.linker = LINK_LD;
				}
				else if(linker == "WASM-LD" || linker == "wasm-ld")
				{
					build_commands.linker = LINK_WASM_LD;
				}
				else
				{
					raise_build_error("Unknown linker %s.\nOptions:\n\tLINK.EXE\n\tLD\n\tWASM-LD", linker.c_str());
				}
			}
			else if(arg == "--link")
			{
				while(++i < ARR_SIZE(args))
				{
					linker_append += " ";
					linker_append += args[i];
				}
			}
			else if(arg == "--dll" || arg == "--shared")
			{
				auto lib = args[++i];
				auto c_str = lib.c_str();
				auto len = vstd_strlen((char *)c_str);
				auto copied = AllocateCompileMemory(len + 1);
				memcpy(copied, c_str, len);
				auto no_ext = change_file_extension((char *)copied, (char *)"");
				auto got = platform_load_dynamic_lib(no_ext);
				if(!got)
					raise_build_error("Couldn't find dynamic library %s", c_str);
				SDPush(build_commands.dynamic_libs, got);
			}
			else if (arg == "--dump-symbols")
			{
				build_commands.dump_symbols = true;
			}
			else if(arg == "--debug")
			{
				build_commands.debug_info = true;
			}
			else if(arg == "--out")
			{
				tmp_output_file = std::string(args[++i]);
			}
			else if(arg == "--no-link")
			{
				build_commands.call_linker = false;
			}
			else if(arg == "--backend")
			{
				auto backend = args[++i];
				if(backend == "llvm" || backend == "LLVM")
					build_commands.backend = LLVM_Backend;
				else if(backend == "fast" || backend == "custom" || backend == "Custom" || backend == "Fast")
					build_commands.backend = Fast_Backend;
				else
				{
					raise_build_error("Unknown backend %s.\nOptions:\n\tLLVM\n\tFast", backend.c_str());
				}
			}
			else if(arg == "--include")
			{
				auto path = args[++i];
				char *absolute_path = platform_relative_to_absolute_path((char *)path.c_str());
				if(!absolute_path)
				{
					raise_build_error("Invalid included file path: %s", path.c_str());
				}
				SDPush(build_commands.included_dirs, absolute_path);
			}
			else
			{
				raise_build_error("Invalid command line option %s", arg.c_str());
			}
		}
		else
		{
			char *absolute_path = platform_relative_to_absolute_path((char *)arg.c_str());
			if(!absolute_path)
				raise_build_error("File %s not found", arg.c_str());

			files->push_back(std::string(absolute_path));
		}
	}

	// @CleanUp
	u8 *module_path = (u8 *)AllocateCompileMemory(260);
	platform_get_absolute_path((char *)module_path);
	vstd_strcat((char *)module_path, "Standard");
	u8 *std_dir = (u8 *)AllocateCompileMemory(vstd_strlen((char *)module_path) + 1);
	strcpy((char *)std_dir, (char *)module_path);
	SDPush(build_commands.included_dirs, std_dir);
	vstd_strcat((char *)module_path, "/Basic.apoc");
	files->push_back(std::string((char *)module_path));
	// @CleanUp

	if(build_commands.linker == LINK_EXE)
		linker_command += "LINK -nologo ";
	else if(build_commands.linker == LINK_LD)
		linker_command += "ld ";
	else if(build_commands.linker == LINK_WASM_LD)
		linker_command += "wasm-ld ";
	else
		LG_FATAL("----- COMPILER BUG -----\nUnkown linker");

	linker_command += linker_append;

	if(build_commands.optimization == 0)
		build_commands.optimization = OPT_NONE;
	if(build_commands.target == 0)
		build_commands.target = TG_X64;
	if(tmp_output_file.length() == 0)
	{
		tmp_output_file += "a";
		if(build_commands.target == TG_WASM)
			tmp_output_file += ".wasm ";
		else
		{		
#if defined(_WIN32)
			tmp_output_file += ".exe ";
#elif defined (CM_LINUX)
			linker_command += ".out ";
#else
#error File extension for this platform is not defined
#endif
		}
			
	}

	build_commands.output_file = (u8 *)AllocateCompileMemory(4096);
	build_commands.linker_command = (u8 *)AllocateCompileMemory(4096);
	memcpy(build_commands.output_file, tmp_output_file.c_str(), tmp_output_file.size());
	memcpy(build_commands.linker_command, linker_command.c_str(), linker_command.size());
	return build_commands;
}

