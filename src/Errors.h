
#ifndef _ERRORS_H
#define _ERRORS_H
#include <Basic.h>

struct _Token_Iden;
typedef struct _File_Contents File_Contents;

void
raise_semantic_error(File_Contents *f, const char *error_msg, struct _Token_Iden token);

void
raise_parsing_unexpected_token(const char *expected_tok, File_Contents *f);

void
raise_token_syntax_error(File_Contents *f, const char *error_msg, char *file, u64 line, u64 column);

#endif // _ERRORS_H
