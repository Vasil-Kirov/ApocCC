
#ifndef _ERRORS_H
#define _ERRORS_H
#include <Basic.h>

struct _Token_Iden;

void
raise_semantic_error(const char *error_msg, struct _Token_Iden token);

void
raise_parsing_unexpected_token(const char *expected_tok, struct _Token_Iden token);

void
raise_token_syntax_error(const char *error_msg, u8 **at_buffer, char *file, u64 line, u64 column);

#endif // _ERRORS_H
