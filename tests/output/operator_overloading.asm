	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"operator_overloading.apoc"
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
	movl	$3, 32(%rsp)
	movl	$38, 40(%rsp)
	movl	$3, %ecx
	movl	$38, %edx
	callq	"overload+"
	nop
	addq	$56, %rsp
	retq
	.seh_endproc

	.def	"overload+";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload+"
	.p2align	4, 0x90
"overload+":
.seh_proc "overload+"
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movl	%ecx, (%rsp)
	movl	%edx, 8(%rsp)
	leal	(%rcx,%rdx), %eax
	addq	$16, %rsp
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

