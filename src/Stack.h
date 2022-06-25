/* date = May 29th 2022 11:39 am */

#ifndef _STACK_H
#define _STACK_H

#include <Basic.h>
#include <SimpleDArray.h>

#define STACK_DEFAULT_VALUE (-2147483647 - 1)

#pragma pack(push, 1)
typedef struct _stack
{
	void *d_array_ptr;
	i32 top;
	i32 default_value;
} _internal_stack;
#pragma pack(pop)
#define STACK_INFO_SIZE sizeof(_internal_stack)


#define stack_header(arr) ((_internal_stack *)((i8 *)arr-STACK_INFO_SIZE))

#define stack_allocate(variable, type) variable = (type *)((u8 *)SDCreate(type) + STACK_INFO_SIZE); \
stack_header(variable)->d_array_ptr = variable - STACK_INFO_SIZE; \
_ISimpleDArraySkip(&stack_header(variable)->d_array_ptr, STACK_INFO_SIZE); \
stack_header(variable)->top = -1; stack_header(variable)->default_value = STACK_DEFAULT_VALUE


#define stack_set_default_value(s, value) stack_header(s)->default_value = value
 
#define is_stack_empty(s) stack_header(s)->top == -1

#define stack_push(s, item) SDPush(stack_header(s)->d_array_ptr, item); ++stack_header(s)->top

#define stack_pop(s) is_stack_empty(s) ? (typeof(*s)){stack_header(s)->default_value} : s[stack_header(s)->top--]

#define stack_peek(s) is_stack_empty(s) ? (typeof(*s)){stack_header(s)->default_value} : s[stack_header(s)->top]

#define stack_free(s) SDFree(stack_header(s)->d_array_ptr)



#endif //_STACK_H
