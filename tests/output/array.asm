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
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movabsq	$8589934593, %rax
	movq	%rax, 8(%rsp)
	movl	$3, 16(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 20(%rsp)
	vmovups	%xmm0, 32(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 48(%rsp)
	movl	16(%rsp), %eax
	movl	%eax, 56(%rsp)
	vmovups	20(%rsp), %xmm0
	vmovups	%xmm0, 60(%rsp)
	movl	36(%rsp), %eax
	movl	%eax, 76(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 80(%rsp)
	movl	56(%rsp), %eax
	addq	$88, %rsp
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

