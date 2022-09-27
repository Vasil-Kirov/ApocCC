	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"array.apoc"
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main
	.p2align	4, 0x90
main:
.seh_proc main
	pushq	%rbp
	.seh_pushreg %rbp
	subq	$48, %rsp
	.seh_stackalloc 48
	leaq	48(%rsp), %rbp
	.seh_setframe %rbp, 48
	.seh_endprologue
	andq	$-32, %rsp
	movq	%rcx, 40(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, (%rsp)
	movq	$0, 32(%rsp)
	movq	$1, (%rsp)
	movq	$2, 4(%rsp)
	movq	$3, 8(%rsp)
	movq	$0, 12(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 20(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 28(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 36(%rsp)
	movl	$3, %eax
	movq	%rbp, %rsp
	popq	%rbp
	vzeroupper
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

