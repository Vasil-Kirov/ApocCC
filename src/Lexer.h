/* date = February 9th 2022 11:58 pm */

#ifndef _LEXER_H
#define _LEXER_H


#include <Basic.h>
#include <Errors.h>

typedef enum : signed short
{
	tok_semi_colon = ';',

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
	//tok_cast = -6, // #type
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
	
	
	tok_plus_equals = -26,
	tok_minus_equals = -27,
	tok_mult_equals = -28,
	tok_div_equals = -29,
	tok_mod_equals = -30,
	tok_and_equals = -31,
	tok_xor_equals = -32,
	tok_or_equals = -33,
	tok_lshift_equals = -35,
	tok_rshift_equals = -36,
	
	tok_break = -37,
	tok_else = -38,
	
	tok_var_args = -39,
	tok_char = -40,

	tok_enum  = -41,
	tok_union = -42,
	tok_pack  = -43,
	// compile time execution (preceeded by
	tok_import    = -44, // import
	tok_run       = -45, // run expression
	tok_must      = -46, // must handle return value of function
	tok_any       = -47, // must handle all possible switch statement values
	tok_interp    = -48, // function can only be interpreted
	tok_size      = -49, // size_of
	tok_default   = -50, // struct default accessor
	tok_intrinsic = -51, // declare compiler intrinsic
	tok_call_conv = -52,
	tok_is_defined= -53, // checks define
	tok_end_is    = -54, // end if of is_defined

	tok_overload  = -55,
	tok_defer     = -56,
	tok_continue  = -57,
	tok_type      = -58,
} Token;

typedef struct _str_hash_table
{
	u8 *key;
	i64 value;
} str_hash_table;

typedef struct _Token_Iden 
{
	u8 *identifier;
	char *file;
	u8 *f_start;
	Token type;
	u64 line;
	u64 column;
} Token_Iden;

typedef struct _File_Contents File_Contents;

Token_Iden get_token(File_Contents *f);

void initialize_compiler();
void lex_file(File_Contents *f, char *path);

void save_token_position(File_Contents *f);
void load_token_position(File_Contents *f);
Token_Iden *advance_token(File_Contents *f);
Token_Iden *get_next_expecting(File_Contents *f, Token type, const char *error_msg);

u8 *token_to_str(Token token);
enum _Ast_Type;
u8 *type_to_str(enum _Ast_Type type);

#endif //_LEXER_H
