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
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 32(%rsp)
	movl	$0, 40(%rsp)
	movq	$0, 32(%rsp)
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
	addq	$56, %rsp
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

