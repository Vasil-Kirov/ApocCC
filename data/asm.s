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
	nop
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
	movq	$10, 44(%rsp)
	callq	get_window
	movq	%rax, 48(%rsp)
	movl	44(%rsp), %edx
	leaq	.L__unnamed_1(%rip), %rcx
	callq	printf
	xorl	%eax, %eax
	addq	$56, %rsp
	retq
	.seh_endproc

	.def	get_window;
	.scl	2;
	.type	32;
	.endef
	.globl	get_window
	.p2align	4, 0x90
get_window:
.seh_proc get_window
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	$8, %ecx
	callq	mem_alloc
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rax
	movl	$10, (%rax)
	movq	32(%rsp), %rax
	movl	$10, 4(%rax)
	movq	32(%rsp), %rax
	addq	$40, %rsp
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
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	movl	(%rax), %eax
	addq	$16, %rsp
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
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	malloc
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %r8
	xorl	%edx, %edx
	callq	memset
	movq	48(%rsp), %rax
	addq	$56, %rsp
	retq
	.seh_endproc

	.section	.rdata,"dr"
	.globl	global_var
	.p2align	2
global_var:
	.quad	10

	.globl	global_var.1
	.p2align	3
global_var.1:
	.quad	12

.L__unnamed_1:
	.asciz	"%d"

