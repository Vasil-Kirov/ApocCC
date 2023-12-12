
#if !defined (_BYTECODE_H)
#define _BYTECODE_H

#include <Parser.h>
#include <ObjDumper.h>

typedef enum {
	reg_a  = 0b000,
	reg_c  = 0b001,
	reg_d  = 0b010,
	reg_b  = 0b011,
	reg_sp = 0b100,
	reg_bp = 0b101,
	reg_si = 0b110,
	reg_di = 0b111,
	reg_r8 = 8,
	reg_r9 = 9,
	reg_r10 = 10,
	reg_r11 = 11,
	reg_r12 = 12,
	reg_r13 = 13,
	reg_r14 = 14,
	reg_r15 = 15,
	// XMM registers are encoded
	// with the wrong value and are 
	// fixed during code generation so that
	// they can be distinct from other registers
	reg_xmm0 = 0 +   reg_r15 + 1,
	reg_xmm1 = 1 +   reg_r15 + 1,
	reg_xmm2 = 2 +   reg_r15 + 1,
	reg_xmm3 = 3 +   reg_r15 + 1,
	reg_xmm4 = 4 +   reg_r15 + 1,
	reg_xmm5 = 5 +   reg_r15 + 1,
	reg_xmm6 = 6 +   reg_r15 + 1,
	reg_xmm7 = 7 +   reg_r15 + 1,
	reg_xmm8 = 8 +   reg_r15 + 1,
	reg_xmm9 = 9 +   reg_r15 + 1,
	reg_xmm10 = 10 + reg_r15 + 1,
	reg_xmm11 = 11 + reg_r15 + 1,
	reg_xmm12 = 12 + reg_r15 + 1,
	reg_xmm13 = 13 + reg_r15 + 1,
	reg_xmm14 = 14 + reg_r15 + 1,
	reg_xmm15 = 15 + reg_r15 + 1,
	reg_invalid
} Register;

typedef enum {
	BC_INVALID,
	BC_STORE,
	BC_STORE_NON_REMOVABLE,
	BC_STORE_REG,
	BC_PUSH_OFFSET,
	BC_MOVE_VALUE_TO_REG,
	BC_MOVE_FLOAT_TO_REG,
	BC_MOVE_FUNCTION_TO_REG,
	BC_SUB_VALUE,
	BC_POP_OFFSET,
	BC_ADD_VALUE,
	BC_CALL,
	BC_JUMP,
	BC_COND_JUMP,
	BC_LOAD_STRING,
	BC_OFFSET_POINTER,
	BC_MOVE_REG_TO_REG,
	BC_LOAD_ADDRESS,
	BC_GLOBAL_ADDRESS,
	BC_DEREFRENCE,
	BC_PUSH_REG,
	BC_POP_REG,
	BC_LOAD_STACK,
	BC_LOAD_DATA_SEG,
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
	BC_NEG,
	BC_FNEG,
	BC_SLR,
	BC_SAR,
	BC_SL,
	BC_CMP_LOGICAL_AND,
	BC_CMP_LOGICAL_OR,
	BC_LOGICAL_NOT,
	BC_CMP_I_EQ,
	BC_CMP_I_NEQ,
	BC_CMP_I_LESS_THAN,
	BC_CMP_I_GREATER_THAN,
	BC_CMP_I_LESS_EQ,
	BC_CMP_I_GREATER_EQ,
	BC_CMP_U_LESS_THAN,
	BC_CMP_U_GREATER_THAN,
	BC_CMP_U_LESS_EQ,
	BC_CMP_U_GREATER_EQ,
	BC_FCMP_EQ,
	BC_FCMP_NEQ,
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
	BC_NO_OP
} BC_OP ;

typedef struct {
	Type_Info *type;
	union {
		struct {
			i32 left_idx;
			i32 right_idx;
		};
		u64 big_idx;
	};
	i32 result;
	BC_OP op;
} Bytecode;

typedef struct {
	i32 *expressions;
	Type_Info **expr_types;
	i32 expr_count;
	i32 func_register;
} BC_Func_Call;

typedef struct {
	u8 *key;
	i32 value;
} BC_Function_Table;

typedef struct {
	u64 init_val;
	u64 size;
	i32 position;
	i32 virtual_register;
} Data_Segment;

typedef struct _Data_Segment_Table {
	u8 *key;
	i32 value;
} Data_Segment_Table;

typedef struct {
	u8 *id;
	Bytecode *bc;
	u64 start_address;
	i32 bc_count;
	b32 has_terminator;
} IR_Block;

typedef struct {
	Data_Segment *allocated;
	Data_Segment_Table *lookup;
	IR_Block **blocks;
	i32 reg_count;
	i32 bc_count;
	i32 stack_top;
} IR;

typedef struct {
	Type_Info *current_type;
	i32 in_memory;
	Register in_register;
} Virtual_Register_Tracker;

typedef struct {
	i32 last_updated;
	i32 current_virtual_register;
} Register_Allocation_Tracker;

IR **
ast_to_bytecode(File_Contents **files);

IR *
ast_to_bc_file_level_list(File_Contents *f, Ast_Node **list, IR *ir);

i32
load_pointer(File_Contents *f, u8 *id, IR *ir, IR_Block *block, Type_Info *type);

i32
allocate_stack_space(IR *ir, size_t size);

void
do_store_instruction(i32 idx, i32 right, i32 result, IR_Block *block, Type_Info *type, b32 is_removable);

IR *
ast_to_bc_file_level(File_Contents *f, Ast_Node *node, IR *ir, b32 gen_func);

void
do_register_allocation(IR *ir, IR_Block *block, Virtual_Register_Tracker *v_regs);

void
remove_useless_stores(IR *ir);

void
write_blocks_to_file(IR *ir, char *path);

void
print_bytecode(IR *ir, IR_Block *block, char *path);

IR_Block *
ast_to_bc_func_level_list(File_Contents *f, Ast_Node **list, i32 *optional_index, IR_Block *optional_block, u8 *id, IR *ir, IR_Block *to_go);

void
assign_to_bc(File_Contents *f, Ast_Node *node, IR_Block *block, IR *ir);

IR
ast_to_bc_function(File_Contents *f, Ast_Node **list, Ast_Node *function);

IR_Block *
ast_to_bc_func_level(File_Contents *f, Ast_Node *node, IR_Block *current_block, Ast_Node **list, i32 *optional_index, IR *ir, IR_Block *to_go);

i32
do_cast(i32 source, Type_Info *from, Type_Info *to, IR *ir, IR_Block *block);

i32
expression_to_bc(File_Contents *f, Ast_Node *expr, IR_Block *block, IR *ir, b32 get_pointer);

#endif // _BYTECODE_H

