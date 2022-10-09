	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"00006.apoc"
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main
	.p2align	4, 0x90
main:
.seh_proc main
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movl	$50, 4(%rsp)
	testb	$1, 4(%rsp)
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:
	decl	4(%rsp)
	testb	$1, 4(%rsp)
	jne	.LBB0_2
.LBB0_3:
	movl	4(%rsp), %eax
	popq	%rcx
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

