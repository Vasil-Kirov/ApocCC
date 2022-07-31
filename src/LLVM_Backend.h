
#ifndef CODE_GEN_H
#define CODE_GEN_H

#include <Basic.h>
#include <Lexer.h>
#include <Parser.h>

#if defined(__cplusplus)
extern "C" {
#endif

void
llvm_backend_generate(File_Contents *f, Ast_Node *root);

#if defined(__cplusplus)
}
#endif

#endif