/* date = May 29th 2022 11:39 am */

#ifndef _STACK_H
#define _STACK_H

#include <Basic.h>
#include <SimpleDArray.h>



#define STACK_DEFAULT_VALUE (-2147483647 - 1)

#pragma pack(push, 1)
typedef struct _stack
{
	void *array_ptr;
	i32 top;
	i32 default_value;
	i32 type_size;
} Stack;
#pragma pack(pop)

#define STACK_INFO_SIZE sizeof(_internal_stack)



#define stack_header(arr) ((_internal_stack *)( (u8 *)arr - STACK_INFO_SIZE))

#define stack_item_at(s, idx) (*((char *)s->d_array_ptr + (idx * s->type_size)))

inline Stack
_stack_allocate(int type_size)
{
	void *array = AllocatePermanentMemory(type_size * 4096 * 2);
	Stack stack = {.array_ptr = array, .top = -1, .default_value = STACK_DEFAULT_VALUE, .type_size = type_size};
	return stack;
}

inline void
_stack_push(Stack *s, void *item)
{
	memcpy((u8 *)s->array_ptr + (++s->top * s->type_size), item, s->type_size);
}

inline void *
_stack_pop(Stack *s)
{
	if(s->top == -1) return NULL;

	u8 *item_location = (u8 *)s->array_ptr + (s->top-- * s->type_size);
	return (void *)item_location;
}

inline void *
_stack_peek(Stack *s)
{
	if(s->top == -1) return NULL;
	
	char *item_location = (char *)s->array_ptr + (s->top * s->type_size);
	return (void *)item_location;
}

#define stack_allocate(type) _stack_allocate(sizeof(type))

#define is_stack_empty(s) ((s).top == -1)

#define stack_push(s, item) _stack_push(&(s), (void *)&(item))

#define stack_pop(s, type) *(type *)_stack_pop(&(s))

#define stack_peek(s, type) (*(type *)_stack_peek(&s))

#define stack_peek_ptr(s, type) ((type *)_stack_peek(&(s)))

#define stack_free(s) 



#endif //_STACK_H
