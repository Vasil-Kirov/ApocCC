#include <Basic.h>
#include <CommandLine.h>
#include <iterator>
#include <map>

void
raise_build_error(const char *error_msg, ...)
{
	// @TODO: print all options
	char *error = (char *)AllocateCompileMemory(4096);
	va_list args;
	va_start(args, error_msg);
	vstd_vsnsprintf(error, vstd_strlen((char *)error_msg), error_msg, args);
	va_end(args);
	LG_FATAL(error);
}

Build_Commands
parse_command_line(int c_argc, char *c_argv[], std::vector<std::string> *files)
{
	Build_Commands build_commands = {};
	build_commands.call_linker = true;
	build_commands.linker_command = NULL;
	build_commands.output_file = NULL;

	std::string tmp_output_file;
	std::string linker_command;
	std::string linker_append;
	std::string args[c_argc - 1];
	
	for (size_t i  = 1; i < c_argc; ++i)
	{
		args[i - 1] = std::string(c_argv[i]);
	}
	
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
				else if(target == "wasm")
					build_commands.target = TG_WASM;
				else
					raise_build_error("Unsupported target %s", target.c_str());
			}
			else if(arg == "--optimize")
			{
				if(build_commands.optimization != 0)
					raise_build_error("--optimize has been defined twice");
				auto level = args[++i];
				if(level == "max")
					build_commands.optimization = OPT_MAX;
				else if(level == "none")
					build_commands.optimization = OPT_NONE;
				else
					raise_build_error("Unkown optimization option %s.\nOptions:"
							"\n\tmax\n\tnone", level.c_str());
			}
			else if(arg == "--linker")
			{
				while(++i < ARR_SIZE(args))
				{
					linker_append += " ";
					linker_append += args[i];
				}
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
			else
			{
				raise_build_error("Invalid command line option %s", arg.c_str());
			}
		}
		else
		{
			(*files).push_back(arg);
		}
	}

	if(build_commands.target != TG_WASM)
	{
#if defined(_WIN32)
	linker_command += "LINK -nologo ";
#elif defined (CM_LINUX)
	linker_command += "ld ";
#else
#error Linker for this platform is not defined
#endif
	}
	else
		linker_command += "wasm-ld ";

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

