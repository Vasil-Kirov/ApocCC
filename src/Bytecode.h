
#if !defined (_BYTECODE_H)
#define _BYTECODE_H

#include <Parser.h>

typedef enum {
	reg_a  = 0b000,
	reg_c  = 0b001,
	reg_d  = 0b010,
	reg_b  = 0b011,
	reg_sp = 0b100,
	reg_bp = 0b101,
	reg_si = 0b110,
	reg_di = 0b111,
	reg_invalid
} Register;

typedef enum {
	BC_INVALID,
	BC_MOVE_VALUE_TO_MEMORY,
	BC_MOVE_VALUE_TO_REG,
	BC_MOVE_FLOAT_TO_REG,
	BC_MOVE_REG_TO_REG,
	BC_PUSH_REG,
	BC_POP_REG,
	BC_LOAD_STACK,
	BC_LOAD_DATA_SEG,
	BC_LOAD_MEMORY,
	BC_F_ADD,
	BC_ADD,
	BC_F_SUB,
	BC_SUB,
	BC_F_MUL,
	BC_U_MUL,
	BC_I_MUL,
	BC_F_DIV,
	BC_U_DIV,
	BC_I_DIV,
	BC_I_REM,
	BC_U_REM,
	BC_F_REM,
	BC_SLR,
	BC_SAR,
	BC_SL,
	BC_CMP_I_LESS_THAN,
	BC_CMP_I_GREATER_THAN,
	BC_CMP_I_LESS_EQ,
	BC_CMP_I_GREATER_EQ,
	BC_CMP_U_LESS_THAN,
	BC_CMP_U_GREATER_THAN,
	BC_CMP_U_LESS_EQ,
	BC_CMP_U_GREATER_EQ,
	BC_FCMP_LESS_THAN,
	BC_FCMP_GREATER_THAN,
	BC_FCMP_LESS_EQ,
	BC_FCMP_GREATER_EQ,
	BC_BIT_AND,
	BC_BIT_XOR,
	BC_BIT_OR,
	BC_RETURN,
	BC_CAST_SEXT,
	BC_CAST_ZEXT,
	BC_CAST_I_TO_F,
	BC_CAST_U_TO_F,
	BC_CAST_I_TO_D,
	BC_CAST_U_TO_D,
	BC_CAST_F_TO_I,
	BC_CAST_D_TO_I,
	BC_CAST_TRUNC,
	BC_CAST_F_TRUNC,
	BC_CAST_F_EXT,
	BC_NO_CAST
} BC_OP ;

typedef struct {
	BC_OP op;
	union {
		struct {
			i32 left_idx;
			i32 right_idx;
		};
		u64 big_idx;
	};
	i32 opt;
	Type_Info *type;
} Bytecode;


typedef enum {
	OP_REGISTER,
	OP_VALUE
} Operand_Type;

typedef struct {
	Operand_Type type;
	union {
		u64 value;
		Register reg;
	};
} Operand;

typedef struct {
	i32 position;
	u64 init_val;
	u64 size;
} Data_Segment;

typedef struct {
	u8 *key;
	Data_Segment value;
} Data_Segment_Table;

typedef struct _IR {
	Data_Segment_Table *allocated;
	Data_Segment_Table *global_allocated_ref;
	Bytecode *bc;
	Operand *registers;
	struct _IR *next;
} IR;

IR *
ast_to_bytecode(Ast_Node *node);

void
ast_to_bc_file_level_list(Ast_Node **list, IR *ir);

void
ast_to_bc_file_level(Ast_Node *node, IR *ir, b32 gen_func);

IR
ast_to_bc_func_level_list(Ast_Node **list, Data_Segment_Table *global_table);

void
assign_to_bc(Ast_Node *node, IR *ir);

void
ast_to_bc_func_level(Ast_Node *node, IR *ir);

i32
do_cast(i32 source, Type_Info *from, Type_Info *to, IR *ir);

i32
expression_to_bc(Ast_Node *expr, IR *ir);

#endif // _BYTECODE_H

