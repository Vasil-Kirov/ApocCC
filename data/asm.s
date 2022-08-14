	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"Test.apoc"
	.def	add;
	.scl	2;
	.type	32;
	.endef
	.globl	add
	.p2align	4, 0x90
add:
.seh_proc add
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movl	%ecx, (%rsp)
	movl	%edx, 4(%rsp)
	movl	(%rsp), %eax
	addl	4(%rsp), %eax
	popq	%rcx
	retq
	.seh_endproc

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
	movq	$0, 288(%rsp)
	cmpq	$25, 288(%rsp)
	jle	.LBB2_3
	jmp	.LBB2_2
.LBB2_1:
	movq	288(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 288(%rsp)
	cmpq	$25, 288(%rsp)
	jle	.LBB2_3
.LBB2_2:
	xorl	%eax, %eax
	addq	$296, %rsp
	retq
.LBB2_3:
	movq	288(%rsp), %rax
	movb	32(%rsp,%rax), %cl
	addb	$65, %cl
	movq	288(%rsp), %rax
	movb	%cl, 32(%rsp,%rax)
	movq	288(%rsp), %rax
	movsbl	32(%rsp,%rax), %edx
	leaq	.L__unnamed_1(%rip), %rcx
	callq	printf
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
	.asciz	"%d"

