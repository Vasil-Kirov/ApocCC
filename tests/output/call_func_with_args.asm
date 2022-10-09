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
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	32(%rsp), %rcx
	movl	$20, %edx
	callq	increment_number
	nop
	addq	$40, %rsp
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
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 56(%rsp)
	movl	%edx, 44(%rsp)
	leaq	64(%rsp), %rcx
	callq	increment_number_again
	incl	%eax
	addq	$72, %rsp
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
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 16(%rsp)
	movl	%edx, 4(%rsp)
	leal	1(%rdx), %eax
	addq	$24, %rsp
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

