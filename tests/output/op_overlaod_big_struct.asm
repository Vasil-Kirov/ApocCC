	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"op_overlaod_big_struct.apoc"
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@00000004000000030000000200000001
	.section	.rdata,"dr",discard,__xmm@00000004000000030000000200000001
	.p2align	4
__xmm@00000004000000030000000200000001:
	.long	1
	.long	2
	.long	3
	.long	4
	.globl	__xmm@00000005000000040000000300000002
	.section	.rdata,"dr",discard,__xmm@00000005000000040000000300000002
	.p2align	4
__xmm@00000005000000040000000300000002:
	.long	2
	.long	3
	.long	4
	.long	5
	.text
	.globl	main
	.p2align	4, 0x90
main:
.seh_proc main
	pushq	%rsi
	.seh_pushreg %rsi
	movl	$4176, %eax
	callq	__chkstk
	subq	%rax, %rsp
	.seh_stackalloc 4176
	.seh_endprologue
	movl	$4, 1568(%rsp)
	vmovaps	__xmm@00000004000000030000000200000001(%rip), %xmm0
	vmovups	%xmm0, 32(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 48(%rsp)
	vmovups	%ymm0, 80(%rsp)
	vmovups	%ymm0, 112(%rsp)
	vmovups	%ymm0, 144(%rsp)
	vmovups	%ymm0, 176(%rsp)
	vmovups	%ymm0, 208(%rsp)
	vmovups	%ymm0, 240(%rsp)
	vmovups	%ymm0, 272(%rsp)
	vmovups	%ymm0, 304(%rsp)
	vmovups	%ymm0, 336(%rsp)
	vmovups	%ymm0, 368(%rsp)
	vmovups	%ymm0, 400(%rsp)
	vmovups	%ymm0, 432(%rsp)
	vmovups	%ymm0, 464(%rsp)
	vmovups	%ymm0, 496(%rsp)
	vmovups	%ymm0, 512(%rsp)
	leaq	1056(%rsp), %rsi
	leaq	32(%rsp), %rdx
	movl	$512, %r8d
	movq	%rsi, %rcx
	vzeroupper
	callq	memcpy
	leaq	1576(%rsp), %rcx
	movl	$516, %r8d
	movq	%rsi, %rdx
	callq	memcpy
	movl	$4, 2608(%rsp)
	vmovaps	__xmm@00000005000000040000000300000002(%rip), %xmm0
	vmovups	%xmm0, 544(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 560(%rsp)
	vmovups	%ymm0, 592(%rsp)
	vmovups	%ymm0, 624(%rsp)
	vmovups	%ymm0, 656(%rsp)
	vmovups	%ymm0, 688(%rsp)
	vmovups	%ymm0, 720(%rsp)
	vmovups	%ymm0, 752(%rsp)
	vmovups	%ymm0, 784(%rsp)
	vmovups	%ymm0, 816(%rsp)
	vmovups	%ymm0, 848(%rsp)
	vmovups	%ymm0, 880(%rsp)
	vmovups	%ymm0, 912(%rsp)
	vmovups	%ymm0, 944(%rsp)
	vmovups	%ymm0, 976(%rsp)
	vmovups	%ymm0, 1008(%rsp)
	vmovups	%ymm0, 1024(%rsp)
	leaq	2096(%rsp), %rsi
	leaq	544(%rsp), %rdx
	movl	$512, %r8d
	movq	%rsi, %rcx
	vzeroupper
	callq	memcpy
	leaq	2616(%rsp), %rcx
	movl	$516, %r8d
	movq	%rsi, %rdx
	callq	memcpy
	movl	1576(%rsp), %eax
	movl	%eax, 3136(%rsp)
	movl	2616(%rsp), %eax
	movl	%eax, 3656(%rsp)
	leaq	3136(%rsp), %rcx
	leaq	3656(%rsp), %rdx
	callq	"overload+"
	nop
	addq	$4176, %rsp
	popq	%rsi
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
	subq	$1208, %rsp
	.seh_stackalloc 1208
	vmovaps	%xmm15, 1184(%rsp)
	.seh_savexmm %xmm15, 1184
	vmovaps	%xmm14, 1168(%rsp)
	.seh_savexmm %xmm14, 1168
	vmovaps	%xmm13, 1152(%rsp)
	.seh_savexmm %xmm13, 1152
	vmovaps	%xmm12, 1136(%rsp)
	.seh_savexmm %xmm12, 1136
	vmovaps	%xmm11, 1120(%rsp)
	.seh_savexmm %xmm11, 1120
	vmovaps	%xmm10, 1104(%rsp)
	.seh_savexmm %xmm10, 1104
	vmovaps	%xmm9, 1088(%rsp)
	.seh_savexmm %xmm9, 1088
	vmovaps	%xmm8, 1072(%rsp)
	.seh_savexmm %xmm8, 1072
	vmovaps	%xmm7, 1056(%rsp)
	.seh_savexmm %xmm7, 1056
	vmovaps	%xmm6, 1040(%rsp)
	.seh_savexmm %xmm6, 1040
	.seh_endprologue
	vmovups	256(%rcx), %ymm0
	vmovups	288(%rcx), %ymm1
	vmovups	320(%rcx), %ymm2
	vmovups	352(%rcx), %ymm3
	vmovups	384(%rcx), %ymm4
	vmovups	416(%rcx), %ymm5
	vmovups	448(%rcx), %ymm6
	vmovups	480(%rcx), %ymm7
	vmovups	224(%rcx), %ymm8
	vmovups	192(%rcx), %ymm9
	vmovups	160(%rcx), %ymm10
	vmovups	128(%rcx), %ymm11
	vmovups	(%rcx), %ymm12
	vmovups	32(%rcx), %ymm13
	vmovups	64(%rcx), %ymm14
	vmovups	96(%rcx), %ymm15
	movl	512(%rcx), %eax
	movl	%eax, 512(%rsp)
	vmovups	%ymm13, 32(%rsp)
	vmovups	%ymm14, 64(%rsp)
	vmovups	%ymm15, 96(%rsp)
	vmovups	%ymm11, 128(%rsp)
	vmovups	%ymm10, 160(%rsp)
	vmovups	%ymm9, 192(%rsp)
	vmovups	%ymm8, 224(%rsp)
	vmovups	%ymm7, 480(%rsp)
	vmovups	%ymm6, 448(%rsp)
	vmovups	%ymm5, 416(%rsp)
	vmovups	%ymm4, 384(%rsp)
	vmovups	%ymm3, 352(%rsp)
	vmovups	%ymm2, 320(%rsp)
	vmovups	%ymm1, 288(%rsp)
	vmovups	%ymm0, 256(%rsp)
	vmovups	%ymm12, (%rsp)
	vmovups	256(%rdx), %ymm0
	vmovups	288(%rdx), %ymm1
	vmovups	320(%rdx), %ymm2
	vmovups	352(%rdx), %ymm3
	vmovups	384(%rdx), %ymm4
	vmovups	416(%rdx), %ymm5
	vmovups	448(%rdx), %ymm6
	vmovups	480(%rdx), %ymm7
	vmovups	224(%rdx), %ymm8
	vmovups	192(%rdx), %ymm9
	vmovups	160(%rdx), %ymm10
	vmovups	128(%rdx), %ymm11
	movl	512(%rdx), %eax
	vmovups	(%rdx), %ymm12
	vmovups	32(%rdx), %ymm13
	vmovups	64(%rdx), %ymm14
	vmovups	96(%rdx), %ymm15
	vmovups	%ymm12, 520(%rsp)
	movl	%eax, 1032(%rsp)
	vmovups	%ymm13, 552(%rsp)
	vmovups	%ymm14, 584(%rsp)
	vmovups	%ymm15, 616(%rsp)
	vmovups	%ymm11, 648(%rsp)
	vmovups	%ymm10, 680(%rsp)
	vmovups	%ymm9, 712(%rsp)
	vmovups	%ymm8, 744(%rsp)
	vmovups	%ymm7, 1000(%rsp)
	vmovups	%ymm6, 968(%rsp)
	vmovups	%ymm5, 936(%rsp)
	vmovups	%ymm4, 904(%rsp)
	vmovups	%ymm3, 872(%rsp)
	vmovups	%ymm2, 840(%rsp)
	vmovups	%ymm1, 808(%rsp)
	vmovups	%ymm0, 776(%rsp)
	movl	(%rsp), %eax
	addl	520(%rsp), %eax
	vmovaps	1040(%rsp), %xmm6
	vmovaps	1056(%rsp), %xmm7
	vmovaps	1072(%rsp), %xmm8
	vmovaps	1088(%rsp), %xmm9
	vmovaps	1104(%rsp), %xmm10
	vmovaps	1120(%rsp), %xmm11
	vmovaps	1136(%rsp), %xmm12
	vmovaps	1152(%rsp), %xmm13
	vmovaps	1168(%rsp), %xmm14
	vmovaps	1184(%rsp), %xmm15
	addq	$1208, %rsp
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

