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
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	leaq	72(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	64(%rsp), %rcx
	callq	give_struct
	vmovups	72(%rsp), %ymm0
	vmovups	%ymm0, 32(%rsp)
	movl	32(%rsp), %eax
	addl	36(%rsp), %eax
	addl	40(%rsp), %eax
	addl	44(%rsp), %eax
	addl	48(%rsp), %eax
	addl	52(%rsp), %eax
	addl	56(%rsp), %eax
	addl	60(%rsp), %eax
	addq	$104, %rsp
	vzeroupper
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
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rcx), %rax
	movq	%rax, 8(%rsp)
	vmovaps	__ymm@0000000800000007000000060000000500000004000000030000000200000001(%rip), %ymm0
	vmovups	%ymm0, 16(%rsp)
	vmovups	16(%rsp), %ymm0
	vmovups	%ymm0, 48(%rsp)
	vmovups	%ymm0, (%rax)
	addq	$88, %rsp
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

