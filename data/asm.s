	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"Test.apoc"
	.def	_apoc_init;
	.scl	2;
	.type	32;
	.endef
	.globl	_apoc_init
	.p2align	4, 0x90
_apoc_init:
.seh_proc _apoc_init
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	callq	main
	nop
	addq	$40, %rsp
	retq
	.seh_endproc

	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main
	.p2align	4, 0x90
main:
.seh_proc main
	subq	$296, %rsp
	.seh_stackalloc 296
	.seh_endprologue
	leaq	32(%rsp), %rcx
	leaq	.Lconstant_array(%rip), %rdx
	movl	$256, %r8d
	callq	memcpy
	leaq	32(%rsp), %rdx
	leaq	.L__unnamed_1(%rip), %rcx
	callq	printf
	xorl	%eax, %eax
	addq	$296, %rsp
	retq
	.seh_endproc

	.def	change_arr;
	.scl	2;
	.type	32;
	.endef
	.globl	change_arr
	.p2align	4, 0x90
change_arr:
.seh_proc change_arr
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movl	$16, %ecx
	callq	mem_alloc
	movq	%rax, 48(%rsp)
	movq	$0, 56(%rsp)
	cmpq	$2, 56(%rsp)
	jl	.LBB2_6
	jmp	.LBB2_2
.LBB2_1:
	movq	64(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 64(%rsp)
	cmpq	$2, 64(%rsp)
	jl	.LBB2_6
.LBB2_2:
	movq	$0, 64(%rsp)
	cmpq	$2, 64(%rsp)
	jl	.LBB2_5
	jmp	.LBB2_4
.LBB2_3:
	movq	64(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 64(%rsp)
	cmpq	$2, 64(%rsp)
	jl	.LBB2_5
.LBB2_4:
	addq	$72, %rsp
	retq
.LBB2_5:
	movq	40(%rsp), %rax
	movw	6(%rax), %cx
	movq	64(%rsp), %rdx
	movq	48(%rsp), %rax
	movw	(%rax,%rdx,2), %ax
	movq	64(%rsp), %rdx
	addw	%dx, %ax
	addw	%ax, %cx
	movq	40(%rsp), %rax
	movw	%cx, 6(%rax)
	jmp	.LBB2_3
.LBB2_6:
	movq	64(%rsp), %rax
	imulq	64(%rsp), %rax
	movw	%ax, %dx
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rax
	movw	%dx, (%rax,%rcx,2)
	jmp	.LBB2_1
	.seh_endproc

	.def	mem_alloc;
	.scl	2;
	.type	32;
	.endef
	.globl	mem_alloc
	.p2align	4, 0x90
mem_alloc:
.seh_proc mem_alloc
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	malloc
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %r8
	xorl	%edx, %edx
	callq	memset
	movq	48(%rsp), %rax
	addq	$56, %rsp
	retq
	.seh_endproc

	.section	.rdata,"dr"
	.globl	global_var
	.p2align	3
global_var:
	.quad	12

	.p2align	4
.Lconstant_array:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZ\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

.L__unnamed_1:
	.asciz	"%s"

