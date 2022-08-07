#if 0

#ifndef _INTERPRET_H
#define _INTERPRET_H
#include <Basic.h>
#include <Type.h>

union Typeless_Val
{
};

struct Any_Val
{
	union
	{
		f32 tf32;
		f64 tf64;
		i32 ti32;
		i64 ti64;
		void *other;
	};
	
	Typeless_Val val;
	Type_Info type;
};




#endif

#endif