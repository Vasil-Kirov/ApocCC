	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"func_pointer.apoc"
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
	movq	the_function(%rip), %rax
	movq	%rax, 40(%rsp)
	leaq	48(%rsp), %rcx
	leaq	40(%rsp), %rax
	callq	*%rax
	nop
	addq	$56, %rsp
	retq
	.seh_endproc

	.def	the_function;
	.scl	2;
	.type	32;
	.endef
	.globl	the_function
	.p2align	4, 0x90
the_function:
.seh_proc the_function
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rcx), %rax
	movq	%rax, 8(%rsp)
	movl	$42, %eax
	addq	$16, %rsp
	retq
	.seh_endproc

	.section	.rdata,"dr"
	.globl	global_var
global_var:
	.byte	1

	.globl	global_var.1
global_var.1:
	.byte	0

	.globl	global_var.2
	.p2align	3
global_var.2:
	.quad	0

