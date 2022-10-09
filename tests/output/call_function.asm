	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"call_function.apoc"
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
	callq	give_number
	nop
	addq	$40, %rsp
	retq
	.seh_endproc

	.def	give_number;
	.scl	2;
	.type	32;
	.endef
	.globl	give_number
	.p2align	4, 0x90
give_number:
.seh_proc give_number
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rcx), %rax
	movq	%rax, 8(%rsp)
	movl	$256, %eax
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

