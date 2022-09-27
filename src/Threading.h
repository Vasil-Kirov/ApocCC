
#ifndef _THREADING_H
#define _THREADING_H
#include <Basic.h>
#include <Bytecode.h>
#include <platform/platform.h>
#include <x64_Gen.h>

enum Job_Types {
	JOB_GENERATE_CODE,
	JOB_ANALYZE_FUNCTION
};

struct Generate_Code_Args
{
	IR *ir;
	Code_Buffer *buffer;
	Relative_Relocation_Array *relocs;
	Data_Segment *global_ds;
	Fixable_Array *fixable_arr;
	int buffer_index;
};

struct Job_Posting
{
	Job_Types type;
	void *func;
	void *args;
};

struct Thread_Queue
{
	Job_Posting *postings;
	volatile long last_posting;
	volatile long last_started;
	volatile long last_done;
	volatile long currently_working;
	Platform_Object semaphore;
};

void
lock_mutex();

void
unlock_mutex();

void
wait_for_threads();

void
initialize_thread_pool();

void
post_job_listing(Job_Types job_type, void *function, void *args);

#endif

