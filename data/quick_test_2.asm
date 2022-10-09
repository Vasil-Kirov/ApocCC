	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"quick_test_2.apoc"
	.def	some_other;
	.scl	2;
	.type	32;
	.endef
	.globl	some_other
	.p2align	4, 0x90
some_other:
.seh_proc some_other
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 16(%rsp)
	movl	$786444, (%rsp)
	movw	$12, %ax
	movw	$12, %dx
	addq	$24, %rsp
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
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movl	$786444, 56(%rsp)
	movl	$0, 48(%rsp)
	leaq	64(%rsp), %rcx
	callq	some_other
	movw	%ax, 40(%rsp)
	movw	%dx, 42(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, 48(%rsp)
	addq	$72, %rsp
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

