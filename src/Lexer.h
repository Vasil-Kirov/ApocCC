/* date = February 9th 2022 11:58 pm */

#ifndef _LEXER_H
#define _LEXER_H

#ifdef __cplusplus
extern "C"
{
#endif

#include <Basic.h>
#include <Errors.h>
		
typedef enum
	{
		tok_minus = '-',
		tok_plus = '+',
		tok_not = '!',
		tok_star = '*',
		tok_equals = '=',

	
		tok_eof = -1,

		// syntax commands
		tok_func = -2,
		tok_extern = -3,
		tok_arrow = -4,
		tok_struct = -5,
		tok_cast = -6, // cast(type)
		tok_if = -7,   // if
		tok_for = -8,  // for

		// primary
		tok_identifier = -9,
		tok_const_str = -10,
		tok_number = -11,

		// special signs
		tok_logical_or = -12,	 // ||
		tok_logical_is = -13,	 // ==
		tok_logical_isnot = -14, // !=
		tok_logical_and = -15,	 // &&
		tok_logical_lequal = -16,
		tok_logical_gequal = -17,
		tok_logical_greater = '>',
		tok_logical_lesser = '<',
	

		// bits
		tok_bits_lshift = -18, // <<
		tok_bits_rshift = -19, // >>
		tok_bits_or = '|',
		tok_bits_xor = '^',
		tok_bits_not = '~',
		tok_bits_and = '&',

		//
		tok_plusplus = -20,	  // ++
		tok_minusminus = -21, // --

		// additional syntax (i am tired of chaning the top ones)
		tok_const = -22,  // ::
		tok_switch = -23, // switch statement
		tok_case = -24,	  // case in switch statement
		tok_as = -25,	  // as, when importing libraries

		// compile time execution (preceeded by
		tok_import = -26, // import
		tok_run = -27,	  // run func at compile time
		tok_must = -28,	  // must handle return value of function
		tok_any = -29,	  // must handle all possible switch statement values (will hold off on that one)

		tok_plus_equals = -30,
		tok_minus_equals = -31,
		tok_mult_equals = -32,
		tok_div_equals = -33,
		tok_mod_equals = -34,
		tok_and_equals = -35,
		tok_xor_equals = -36,
		tok_or_equals = -37,
		tok_lshift_equals = -38,
		tok_rshift_equals = -39,

		tok_break = -40,
		tok_else = -41,

	} Token;

typedef struct _str_hash_table
{
	u8 *key;
	i64 value;
} str_hash_table;

typedef struct _Token_Iden 
{
	u8 *identifier;
	Token type;
	u64 line;
	u64 column;
	char *file;
} Token_Iden;

Token_Iden get_token(char *file);

void initialize_compiler();
void lex_file(char *path);
i16 check_for_char_combination(char **buf);

Token_Iden get_prev_token();
Token_Iden get_next_token();
Token_Iden peek_next_token();
Token_Iden peek_ahead(int amount);
Token_Iden get_next_expecting(Token type, const char *error_msg);

u8 *token_to_str(Token token);
enum _Ast_Type;
u8 *type_to_str(enum _Ast_Type type);

u64 get_line_tracker();

u8 *get_file_name();

#ifdef __cplusplus
}
#endif

#endif //_LEXER_H
