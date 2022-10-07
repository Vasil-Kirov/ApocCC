	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"relocations.apoc"
	.def	final_function;
	.scl	2;
	.type	32;
	.endef
	.globl	__real@42b875c3
	.section	.rdata,"dr",discard,__real@42b875c3
	.p2align	2
__real@42b875c3:
	.long	0x42b875c3
	.text
	.globl	final_function
	.p2align	4, 0x90
final_function:
.seh_proc final_function
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	vmovss	__real@42b875c3(%rip), %xmm0
	popq	%rax
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
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	leaq	48(%rsp), %rcx
	callq	not_main
	vmovss	%xmm0, 36(%rsp)
	vcvttss2si	%xmm0, %eax
	addq	$56, %rsp
	retq
	.seh_endproc

	.def	not_main;
	.scl	2;
	.type	32;
	.endef
	.globl	not_main
	.p2align	4, 0x90
not_main:
.seh_proc not_main
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movl	$1067282596, 36(%rsp)
	leaq	48(%rsp), %rcx
	leaq	36(%rsp), %rdx
	callq	other_function
	vmovss	36(%rsp), %xmm0
	addq	$56, %rsp
	retq
	.seh_endproc

	.def	other_function;
	.scl	2;
	.type	32;
	.endef
	.globl	other_function
	.p2align	4, 0x90
other_function:
.seh_proc other_function
	subq	$88, %rsp
	.seh_stackalloc 88
	vmovaps	%xmm6, 64(%rsp)
	.seh_savexmm %xmm6, 64
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	vmovss	(%rdx), %xmm6
	leaq	56(%rsp), %rcx
	callq	final_function
	vaddss	%xmm0, %xmm6, %xmm0
	movq	40(%rsp), %rax
	vmovss	%xmm0, (%rax)
	vmovaps	64(%rsp), %xmm6
	addq	$88, %rsp
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

	.globl	_fltused
