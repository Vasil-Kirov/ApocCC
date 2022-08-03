
#ifndef _C_BACKEND
#define _C_BACKEND

#include <string>
using namespace std;

#include <Parser.h>

void
c_backend_generate(File_Contents *f, Ast_Node *ast_root);


#ifdef __cplusplus

void
code_from_statement(Ast_Node *node, string *c_file);

void
write_expression(string *c_file, Ast_Node *expression);

void
write_func_signature(string *c_file, Scope_Info *scopes);

void
write_types(string *c_file, Type_Table *type_table);

#endif


#endif // _C_BACKEND