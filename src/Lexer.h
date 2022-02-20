/* date = February 9th 2022 11:58 pm */

#ifndef _LEXER_H
#define _LEXER_H

typedef enum _Token
{
	tok_eof = -1,
	
	// syntax commands
	tok_func   = -2,
	tok_extern = -3,
	tok_arrow  = -4,
	tok_struct = -5,
	tok_cast   = -6, // cast(type)
	tok_if     = -7, // if
	tok_for    = -8, // for
	
	// primary
	tok_identifier = -9,
	tok_const_str  = -10,
	tok_number = -11,
	
	// special signs
	tok_logical_or = -12,    // ||
	tok_logical_is = -13,    // ==
	tok_logical_isnot = -14, // !=
	tok_logical_and = -15,   // &&
	
	// binary
	tok_binary_lshift = -16, // <<
	tok_binary_rshift = -17, // >>
	
	// additional syntax (i am tired of chaning the top ones)
	tok_const  = -18, // ::
	tok_switch = -19, // switch statement
	tok_case   = -20, // case in switch statement
	
	// compile time execution (preceeded by 
	tok_import = -21, // import
	tok_run    = -22, // run func at compile time
	tok_must   = -23, // must handle return value of function
	tok_all    = -24, // must handle all possible switch statement values (will hold off on that one)
} Token;

typedef struct _str_hash_table
{
	u8 *key;
	Token value;
} str_hash_table;

typedef struct _token
{
	u64 identifier_index;
	i16 token;
} token_iden;

token_iden get_token();

void initialize_compiler();
void compile_file(char *path);
u8 *get_identifier(u64 index);
i16 check_for_char_combination(char **buf);

#endif //_LEXER_H
