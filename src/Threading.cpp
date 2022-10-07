#include <Threading.h>
#include <intrin.h>
#include <x64_Gen.h>

#define THREAD_COUNT 8

static Thread_Queue thread_queue;
static Platform_Object thread_mutex;
static Platform_Thread threads[THREAD_COUNT];

void
do_job(Job_Posting *posting)
{
	switch(posting->type)
	{
		case JOB_GENERATE_CODE:
		{
			Generate_Code_Args *args = (Generate_Code_Args *)posting->args;
			x64_gen_ir(args->ir, args->buffer, args->relocs, args->global_ds, args->buffer_index, args->fixable_arr);
		} break;
		default:
		{
			Assert(false);
		} break;
	}
}

void
wait_for_job(int *id)
{
	while(true) {
		if(thread_queue.last_started < thread_queue.last_posting) {
			i32 idx = platform_interlocked_increment(&thread_queue.last_started) - 1;
			// @TODO: check
			// idk if that works
			if(idx >= 1024) {
				thread_queue.last_started = 0;
				thread_queue.last_done = 0;
				continue;
			}
			Job_Posting *posting = &thread_queue.postings[idx];
			platform_interlocked_increment(&thread_queue.currently_working);
			do_job(posting);
			platform_interlocked_decrement(&thread_queue.currently_working);
			platform_interlocked_increment(&thread_queue.last_done);
		}
		else {
			platform_wait_for_object(thread_queue.semaphore);
		}
	}
}

void
post_job_listing(Job_Types job_type, void *function, void *args)
{
	// if all threads are working do the work on the main one
	if(thread_queue.last_posting >= 1024)
		thread_queue.last_posting = 0;
	if(thread_queue.currently_working == THREAD_COUNT) {
		Job_Posting *main_thread_post = (Job_Posting *)AllocatePermanentMemory(sizeof(Job_Posting));
		main_thread_post->type = job_type;
		main_thread_post->func = function;
		main_thread_post->args = args;
		do_job(main_thread_post);
	}
	else {
		// post to work queue
		thread_queue.postings[thread_queue.last_posting] = { job_type, function, args };
		platform_write_barrirer;
		thread_queue.last_posting++;
		platform_alert_semaphore(thread_queue.semaphore);
	}
}

void
wait_for_threads()
{
	while(thread_queue.last_done != thread_queue.last_posting);
}

void
lock_mutex() { if(thread_mutex) platform_lock_mutex(thread_mutex); };

void
unlock_mutex() { if(thread_mutex) platform_unlock_mutex(thread_mutex); };

void
initialize_thread_pool()
{
	// @TODO: check thread count
	// @TODO: check thread count
	// @TODO: check thread count
	thread_mutex = platform_create_mutex();
	thread_queue.postings = (Job_Posting *)AllocateCompileMemory(sizeof(Job_Posting) * 1024);
	thread_queue.semaphore = platform_create_semaphore(0, THREAD_COUNT);
	for(size_t i = 0; i < THREAD_COUNT; ++i)
	{
		int *id = (int *)AllocateCompileMemory(sizeof(int));
		*id = i;
		threads[i] = platform_create_thread((void *)wait_for_job, id);
	}
}

