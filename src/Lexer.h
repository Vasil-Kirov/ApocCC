/* date = February 9th 2022 11:58 pm */

#ifndef _LEXER_H
#define _LEXER_H

typedef enum _Token
{
	tok_eof = -1,
	
	// commands
	tok_func   = -2,
	tok_extern = -3,
	tok_arrow  = -4,
	tok_struct = -5,
	tok_import = -6,
	tok_cast   = -7,
	tok_if     = -8,
	tok_for    = -9,
	
	// primary
	tok_identifier = -10,
	tok_const_str  = -11,
	tok_number = -12
} Token;

typedef struct _str_hash_table
{
	u8 *key;
	Token value;
} str_hash_table;

i16 get_token();

void initialize_compiler();
void compile_file(char *path);
u8 *get_next_identifier();

#endif //_LEXER_H
