	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"pointer_index.apoc"
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main
	.p2align	4, 0x90
main:
.seh_proc main
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movl	$10, 4(%rsp)
	leaq	4(%rsp), %rax
	movq	%rax, 16(%rsp)
	movl	$10, %eax
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
