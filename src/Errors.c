#include <Basic.h>
#include <Log.h>
#include <Lexer.h>

void raise_semantic_error(const char *error_msg, struct _Token_Iden token)
{
	LG_FATAL("%s (%d, %d):\n\tSemantic error: %s",
			 token.file, token.line, token.column, error_msg);
}

void raise_token_syntax_error(File_Contents *f, const char *error_msg, char *file, u64 line,
							  u64 column)
{
	LG_FATAL("%s (%d, %d):\n\tAn error occured while tokenizing: %s", file, line, column, error_msg);
}

void raise_parsing_unexpected_token(const char *expected_tok, File_Contents *f)
{
	Token_Iden token = *f->prev_token;
	if(token.type == tok_identifier)
	{
		LG_FATAL("%s (%d, %d):\n\tFound unexpected token [%s], expected %s, got [ \"%s\" ]",
				 token.file, token.line, token.column, token_to_str(token.type),
				 expected_tok, token.identifier);
	}
	else
		LG_FATAL("%s (%d, %d):\n\tFound unexpected token [%s], expected %s",
			 token.file, token.line, token.column, token_to_str(token.type), expected_tok);
}

