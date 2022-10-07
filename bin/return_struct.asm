	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"return_struct.apoc"
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
	subq	$80, %rsp
	.seh_stackalloc 80
	leaq	80(%rsp), %rbp
	.seh_setframe %rbp, 80
	.seh_endprologue
	andq	$-32, %rsp
	movq	%rcx, 72(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 32(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	64(%rsp), %rcx
	vzeroupper
	callq	give_struct
	movl	32(%rsp), %eax
	addl	36(%rsp), %eax
	addl	40(%rsp), %eax
	addl	44(%rsp), %eax
	addl	48(%rsp), %eax
	addl	52(%rsp), %eax
	addl	56(%rsp), %eax
	addl	60(%rsp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
	.seh_endproc

	.def	give_struct;
	.scl	2;
	.type	32;
	.endef
	.globl	__ymm@0000000800000007000000060000000500000004000000030000000200000001
	.section	.rdata,"dr",discard,__ymm@0000000800000007000000060000000500000004000000030000000200000001
	.p2align	5
__ymm@0000000800000007000000060000000500000004000000030000000200000001:
	.quad	8589934593
	.quad	17179869187
	.quad	25769803781
	.quad	34359738375
	.text
	.globl	give_struct
	.p2align	4, 0x90
give_struct:
.seh_proc give_struct
	pushq	%rbp
	.seh_pushreg %rbp
	subq	$80, %rsp
	.seh_stackalloc 80
	leaq	80(%rsp), %rbp
	.seh_setframe %rbp, 80
	.seh_endprologue
	andq	$-32, %rsp
	movq	%rcx, 24(%rsp)
	vmovaps	__ymm@0000000800000007000000060000000500000004000000030000000200000001(%rip), %ymm0
	vmovaps	%ymm0, 32(%rsp)
	movq	(%rcx), %rax
	vmovaps	32(%rsp), %ymm0
	vmovups	%ymm0, (%rax)
	movq	%rbp, %rsp
	popq	%rbp
	vzeroupper
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

