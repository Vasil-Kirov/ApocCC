	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"00005.apoc"
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
	movl	$0, 4(%rsp)
	leaq	4(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 8(%rsp)
	movb	$1, %al
	testb	%al, %al
	je	.LBB0_1
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	testb	$1, (%rax)
	jne	.LBB0_1
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movl	$1, (%rax)
	testb	$1, 4(%rsp)
	je	.LBB0_1
	xorl	%eax, %eax
	jmp	.LBB0_2
.LBB0_1:
	movl	$1, %eax
.LBB0_2:
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

