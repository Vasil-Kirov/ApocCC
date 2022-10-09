	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"if_bool.apoc"
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
	movb	$1, 7(%rsp)
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB0_3
	movl	$1, %eax
	jmp	.LBB0_2
.LBB0_3:
	xorl	%eax, %eax
.LBB0_2:
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

