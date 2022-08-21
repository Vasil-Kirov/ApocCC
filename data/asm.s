	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"Test.apoc"
	.def	_apoc_init;
	.scl	2;
	.type	32;
	.endef
	.globl	_apoc_init
	.p2align	4, 0x90
_apoc_init:
.seh_proc _apoc_init
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	callq	main
	movl	%eax, 32(%rsp)
	leaq	36(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	32(%rsp), %eax
	movl	%eax, 36(%rsp)
	movl	36(%rsp), %edx
	leaq	.L__unnamed_1(%rip), %rcx
	callq	printf
	movl	36(%rsp), %eax
	addq	$40, %rsp
	retq
	.seh_endproc

	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main
	.p2align	4, 0x90
main:
.seh_proc main
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	leaq	47(%rsp), %rcx
	xorl	%edx, %edx
	movl	$1, %r8d
	callq	memset
	movb	$1, 47(%rsp)
	movb	47(%rsp), %dl
	leaq	.L__unnamed_2(%rip), %rcx
	callq	printf
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	$0, 48(%rsp)
	testb	$1, 47(%rsp)
	jne	.LBB1_3
	jmp	.LBB1_2
.LBB1_1:
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	testb	$1, 47(%rsp)
	jne	.LBB1_3
.LBB1_2:
	xorl	%eax, %eax
	addq	$56, %rsp
	retq
.LBB1_3:
	movb	$0, 47(%rsp)
	jmp	.LBB1_1
	.seh_endproc

	.def	get_window;
	.scl	2;
	.type	32;
	.endef
	.globl	get_window
	.p2align	4, 0x90
get_window:
.seh_proc get_window
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movl	%ecx, 44(%rsp)
	leaq	60(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	44(%rsp), %ecx
	movl	%ecx, 60(%rsp)
	movl	$8, %ecx
	callq	mem_alloc
	movq	%rax, 48(%rsp)
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	48(%rsp), %rax
	movq	%rax, 64(%rsp)
	movl	60(%rsp), %ecx
	movq	64(%rsp), %rax
	movl	%ecx, (%rax)
	movq	64(%rsp), %rax
	movl	$10, 4(%rax)
	movq	64(%rsp), %rax
	addq	$72, %rsp
	retq
	.seh_endproc

	.def	something;
	.scl	2;
	.type	32;
	.endef
	.globl	something
	.p2align	4, 0x90
something:
.seh_proc something
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	leaq	56(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	40(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	48(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rax
	movl	(%rax), %eax
	addq	$72, %rsp
	retq
	.seh_endproc

	.def	mem_alloc;
	.scl	2;
	.type	32;
	.endef
	.globl	mem_alloc
	.p2align	4, 0x90
mem_alloc:
.seh_proc mem_alloc
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	leaq	56(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	40(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	movq	56(%rsp), %rcx
	callq	malloc
	movq	%rax, 48(%rsp)
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	48(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	56(%rsp), %r8
	xorl	%edx, %edx
	callq	memset
	movq	64(%rsp), %rax
	addq	$72, %rsp
	retq
	.seh_endproc

	.section	.rdata,"dr"
	.globl	global_var
	.p2align	2
global_var:
	.long	10

	.globl	global_var.1
global_var.1:
	.byte	1

	.globl	global_var.2
global_var.2:
	.byte	0

	.globl	global_var.3
	.p2align	3
global_var.3:
	.quad	12

.L__unnamed_1:
	.asciz	"\nExit Code: %d\n"

.L__unnamed_2:
	.asciz	"Is True?: %d"

