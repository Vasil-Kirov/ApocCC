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
	pushq	%rbp
	.seh_pushreg %rbp
	movl	$4080, %eax
	callq	__chkstk
	subq	%rax, %rsp
	.seh_stackalloc 4080
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	.seh_endprologue
	andq	$-1024, %rsp
	movq	%rcx, 1016(%rsp)
	leaq	1024(%rsp), %rcx
	movl	$1028, %r8d
	xorl	%edx, %edx
	callq	memset
	movl	$3, 2048(%rsp)
	leaq	3056(%rsp), %rcx
	movl	$1024, %r8d
	xorl	%edx, %edx
	callq	memset
	movw	$3340, 3056(%rsp)
	movb	$14, 3058(%rsp)
	leaq	3059(%rsp), %rcx
	movl	$1021, %r8d
	xorl	%edx, %edx
	callq	memset
	movl	2048(%rsp), %eax
	decl	%eax
	cltq
	addb	$74, 1024(%rsp,%rax)
	movl	2048(%rsp), %eax
	decl	%eax
	cltq
	movb	1024(%rsp,%rax), %al
	shrb	%al
	movzbl	%al, %eax
	leaq	3952(%rbp), %rsp
	popq	%rbp
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

