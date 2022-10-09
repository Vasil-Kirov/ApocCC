	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"index_struct_with_pointer.apoc"
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
	movl	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	64(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	68(%rsp), %eax
	movl	%eax, 44(%rsp)
	movl	$10, %ecx
	callq	malloc
	movq	%rax, 32(%rsp)
	movslq	40(%rsp), %rcx
	movb	$23, (%rax,%rcx)
	movslq	40(%rsp), %rax
	leal	1(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movq	32(%rsp), %rdx
	movsbl	(%rdx,%rax), %eax
	subl	%ecx, %eax
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

