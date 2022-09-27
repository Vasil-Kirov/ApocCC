	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"call_func_with_args.apoc"
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
	movq	%rcx, 40(%rsp)
	leaq	48(%rsp), %rcx
	movl	$20, %edx
	callq	increment_number
	nop
	addq	$56, %rsp
	retq
	.seh_endproc

	.def	increment_number;
	.scl	2;
	.type	32;
	.endef
	.globl	increment_number
	.p2align	4, 0x90
increment_number:
.seh_proc increment_number
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movl	%edx, 36(%rsp)
	leaq	48(%rsp), %rcx
	callq	increment_number_again
	incl	%eax
	addq	$56, %rsp
	retq
	.seh_endproc

	.def	increment_number_again;
	.scl	2;
	.type	32;
	.endef
	.globl	increment_number_again
	.p2align	4, 0x90
increment_number_again:
.seh_proc increment_number_again
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movl	%edx, 4(%rsp)
	leal	1(%rdx), %eax
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

