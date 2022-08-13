
#ifndef _COMMAND_LINE_H
#define _COMMAND_LINE_H

#include <Analyzer.h>
#include <string>
#include <vector>

Build_Commands
parse_command_line(int c_argc, char *c_argv[], std::vector<std::string> *files);

#endif // _COMMAND_LINE_H

