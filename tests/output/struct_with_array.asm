	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"struct_with_array.apoc"
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main
	.p2align	4, 0x90
main:
.seh_proc main
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$3120, %rsp
	.seh_stackalloc 3120
	.seh_endprologue
	movl	$3, 3112(%rsp)
	movw	$3340, 1064(%rsp)
	movb	$14, 1066(%rsp)
	leaq	1067(%rsp), %rcx
	movl	$1021, %r8d
	xorl	%edx, %edx
	callq	memset
	leaq	2088(%rsp), %rsi
	leaq	1064(%rsp), %rdx
	movl	$1024, %r8d
	movq	%rsi, %rcx
	callq	memcpy
	leaq	32(%rsp), %rcx
	movl	$1028, %r8d
	movq	%rsi, %rdx
	callq	memcpy
	movl	1056(%rsp), %eax
	decl	%eax
	cltq
	addb	$74, 32(%rsp,%rax)
	movl	1056(%rsp), %eax
	decl	%eax
	cltq
	movb	32(%rsp,%rax), %al
	shrb	%al
	movzbl	%al, %eax
	addq	$3120, %rsp
	popq	%rsi
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

