	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"C_Standard.apoc"
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
	movq	%rcx, 48(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rcx
	callq	malloc
	movq	%rax, 40(%rsp)
	movq	32(%rsp), %r8
	movq	%rax, %rcx
	xorl	%edx, %edx
	callq	memset
	movq	40(%rsp), %rax
	addq	$56, %rsp
	retq
	.seh_endproc

	.def	register_printable;
	.scl	2;
	.type	32;
	.endef
	.globl	register_printable
	.p2align	4, 0x90
register_printable:
.seh_proc register_printable
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%r8, 32(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	movq	%r8, 8(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, (%rsp)
	vmovaps	(%rsp), %xmm0
	movq	global_var.2(%rip), %rax
	shlq	$4, %rax
	leaq	global_var.1(%rip), %rcx
	vmovups	%xmm0, (%rax,%rcx)
	addq	$40, %rsp
	retq
	.seh_endproc

	.def	builder_to_string;
	.scl	2;
	.type	32;
	.endef
	.globl	builder_to_string
	.p2align	4, 0x90
builder_to_string:
.seh_proc builder_to_string
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$144, %rsp
	.seh_stackalloc 144
	.seh_endprologue
	movq	%rcx, 88(%rsp)
	movq	%rdx, 96(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 64(%rsp)
	movq	$0, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	$0, 104(%rsp)
	.p2align	4, 0x90
.LBB2_1:
	movq	40(%rsp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB2_3
	movq	40(%rsp), %rax
	movq	256(%rax), %rcx
	addq	%rcx, 48(%rsp)
	movq	264(%rax), %rax
	movq	%rax, 40(%rsp)
	incq	104(%rsp)
	jmp	.LBB2_1
.LBB2_3:
	movq	48(%rsp), %rdx
	movq	40(%rsp), %rax
	addq	256(%rax), %rdx
	movq	%rdx, 48(%rsp)
	leaq	120(%rsp), %rcx
	callq	mem_alloc
	movq	%rax, 64(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 112(%rsp)
	leaq	128(%rsp), %rsi
	.p2align	4, 0x90
.LBB2_4:
	movq	40(%rsp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB2_6
	movq	56(%rsp), %rdx
	shlq	$8, %rdx
	addq	64(%rsp), %rdx
	movq	40(%rsp), %r8
	movq	256(%r8), %r9
	movq	%rsi, %rcx
	callq	copy
	movq	40(%rsp), %rax
	movq	264(%rax), %rax
	incq	56(%rsp)
	movq	%rax, 40(%rsp)
	incq	112(%rsp)
	jmp	.LBB2_4
.LBB2_6:
	movq	56(%rsp), %rdx
	shlq	$8, %rdx
	addq	64(%rsp), %rdx
	movq	40(%rsp), %r8
	movq	256(%r8), %r9
	leaq	136(%rsp), %rcx
	callq	copy
	movq	96(%rsp), %rax
	movq	256(%rax), %rax
	addq	%rax, 48(%rsp)
	movq	88(%rsp), %rax
	movq	(%rax), %rax
	vmovaps	64(%rsp), %xmm0
	vmovups	%xmm0, (%rax)
	addq	$144, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	init_builder;
	.scl	2;
	.type	32;
	.endef
	.globl	init_builder
	.p2align	4, 0x90
init_builder:
.seh_proc init_builder
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$744, %rsp
	.seh_stackalloc 744
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	vmovaps	%xmm8, 592(%rbp)
	.seh_savexmm %xmm8, 720
	vmovaps	%xmm7, 576(%rbp)
	.seh_savexmm %xmm7, 704
	vmovaps	%xmm6, 560(%rbp)
	.seh_savexmm %xmm6, 688
	.seh_endprologue
	andq	$-256, %rsp
	movq	%rcx, 240(%rsp)
	movq	%rdx, 232(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 256(%rsp)
	vmovaps	%ymm0, 288(%rsp)
	vmovaps	%ymm0, 320(%rsp)
	vmovaps	%ymm0, 352(%rsp)
	vmovaps	%ymm0, 384(%rsp)
	vmovaps	%ymm0, 416(%rsp)
	vmovaps	%ymm0, 448(%rsp)
	vmovaps	%ymm0, 480(%rsp)
	vmovups	%ymm0, 496(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 216(%rsp)
	leaq	248(%rsp), %rsi
	jmp	.LBB3_1
	.p2align	4, 0x90
.LBB3_4:
	incq	216(%rsp)
.LBB3_1:
	movq	224(%rsp), %rax
	shlq	$8, %rax
	addq	216(%rsp), %rax
	movq	232(%rsp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB3_5
	movq	216(%rsp), %rax
	movq	224(%rsp), %rcx
	shlq	$8, %rcx
	addq	%rax, %rcx
	movq	232(%rsp), %rdx
	movzbl	(%rdx,%rcx), %ecx
	movq	208(%rsp), %rdx
	movb	%cl, (%rdx,%rax)
	movq	208(%rsp), %rax
	incq	256(%rax)
	cmpq	$256, 216(%rsp)
	jne	.LBB3_4
	movq	$0, 216(%rsp)
	incq	224(%rsp)
	movl	$272, %edx
	movq	%rsi, %rcx
	vzeroupper
	callq	mem_alloc
	movq	208(%rsp), %rcx
	movq	%rax, 264(%rcx)
	movq	208(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 208(%rsp)
	jmp	.LBB3_4
.LBB3_5:
	movq	240(%rsp), %rax
	movq	(%rax), %rax
	vmovaps	448(%rsp), %ymm8
	vmovaps	480(%rsp), %ymm1
	vmovaps	416(%rsp), %ymm2
	vmovaps	384(%rsp), %ymm3
	vmovaps	256(%rsp), %ymm4
	vmovaps	288(%rsp), %ymm5
	vmovaps	320(%rsp), %ymm6
	vmovaps	352(%rsp), %ymm7
	vmovaps	512(%rsp), %xmm0
	vmovaps	%xmm0, 256(%rax)
	vmovaps	%ymm5, 32(%rax)
	vmovaps	%ymm4, (%rax)
	vmovaps	%ymm3, 128(%rax)
	vmovaps	%ymm2, 160(%rax)
	vmovaps	%ymm1, 224(%rax)
	vmovaps	%ymm8, 192(%rax)
	vmovaps	%ymm7, 96(%rax)
	vmovaps	%ymm6, 64(%rax)
	vmovaps	560(%rbp), %xmm6
	vmovaps	576(%rbp), %xmm7
	vmovaps	592(%rbp), %xmm8
	leaq	616(%rbp), %rsp
	popq	%rsi
	popq	%rbp
	vzeroupper
	retq
	.seh_endproc

	.def	compare;
	.scl	2;
	.type	32;
	.endef
	.globl	compare
	.p2align	4, 0x90
compare:
.seh_proc compare
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, 24(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	8(%rdx), %rax
	cmpq	8(%r8), %rax
	je	.LBB4_3
.LBB4_1:
	xorl	%eax, %eax
	jmp	.LBB4_2
.LBB4_3:
	movq	$0, (%rsp)
	.p2align	4, 0x90
.LBB4_4:
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB4_7
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %ecx
	movq	16(%rsp), %rdx
	movq	(%rdx), %rdx
	cmpb	(%rdx,%rax), %cl
	jne	.LBB4_1
	incq	(%rsp)
	jmp	.LBB4_4
.LBB4_7:
	movb	$1, %al
.LBB4_2:
	addq	$32, %rsp
	retq
	.seh_endproc

	.def	to_string;
	.scl	2;
	.type	32;
	.endef
	.globl	to_string
	.p2align	4, 0x90
to_string:
.seh_proc to_string
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 80(%rsp)
	leaq	96(%rsp), %rcx
	callq	len
	movq	%rax, 40(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rax, %rdx
	callq	mem_alloc
	movq	%rax, 88(%rsp)
	movq	80(%rsp), %r8
	movq	40(%rsp), %r9
	leaq	112(%rsp), %rcx
	movq	%rax, %rdx
	callq	copy
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 48(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	72(%rsp), %rax
	movq	(%rax), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	addq	$120, %rsp
	retq
	.seh_endproc

	.def	terminate_string;
	.scl	2;
	.type	32;
	.endef
	.globl	terminate_string
	.p2align	4, 0x90
terminate_string:
.seh_proc terminate_string
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$96, %rsp
	.seh_stackalloc 96
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 80(%rsp)
	movq	(%rdx), %rsi
	vmovaps	%xmm0, 32(%rsp)
	movq	8(%rsi), %rdx
	incq	%rdx
	movq	%rdx, 40(%rsp)
	leaq	64(%rsp), %rcx
	callq	mem_alloc
	movq	%rax, 32(%rsp)
	movq	(%rsi), %r8
	movq	8(%rsi), %r9
	leaq	72(%rsp), %rcx
	movq	%rax, %rdx
	callq	copy
	movq	32(%rsp), %rax
	movq	40(%rsp), %rcx
	movb	$0, (%rax,%rcx)
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	vmovaps	32(%rsp), %xmm0
	vmovups	%xmm0, (%rax)
	addq	$96, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	build_unsigned_int;
	.scl	2;
	.type	32;
	.endef
	.globl	build_unsigned_int
	.p2align	4, 0x90
build_unsigned_int:
.seh_proc build_unsigned_int
	pushq	%rbp
	.seh_pushreg %rbp
	subq	$752, %rsp
	.seh_stackalloc 752
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	.seh_endprologue
	andq	$-256, %rsp
	movq	%rcx, 240(%rsp)
	movq	%rdx, 208(%rsp)
	movq	%r8, 216(%rsp)
	movq	%r9, 200(%rsp)
	testq	%r8, %r8
	je	.LBB7_2
	movq	208(%rsp), %rdx
	movabsq	$-3689348814741910323, %rax
	mulxq	%rax, %rax, %rax
	shrq	$3, %rax
	leaq	(%rax,%rax), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	subq	%rcx, %rdx
	orq	$48, %rdx
	movq	%rdx, 224(%rsp)
	movq	216(%rsp), %r8
	decq	%r8
	movq	200(%rsp), %r9
	leaq	248(%rsp), %rcx
	movq	%rax, %rdx
	callq	build_unsigned_int
	movq	200(%rsp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 256(%rsp)
	vmovaps	%ymm0, 288(%rsp)
	vmovaps	%ymm0, 320(%rsp)
	vmovaps	%ymm0, 352(%rsp)
	vmovaps	%ymm0, 384(%rsp)
	vmovaps	%ymm0, 416(%rsp)
	vmovaps	%ymm0, 448(%rsp)
	vmovaps	%ymm0, 480(%rsp)
	vmovups	%ymm0, 496(%rsp)
	movq	%rax, 256(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 232(%rsp)
	movb	224(%rsp), %dl
	leaq	232(%rsp), %rcx
	vzeroupper
	callq	"overload[x]=.11"
.LBB7_2:
	nop
	leaq	624(%rbp), %rsp
	popq	%rbp
	retq
	.seh_endproc

	.def	int_to_str;
	.scl	2;
	.type	32;
	.endef
	.globl	int_to_str
	.p2align	4, 0x90
int_to_str:
.seh_proc int_to_str
	pushq	%rbp
	.seh_pushreg %rbp
	subq	$1264, %rsp
	.seh_stackalloc 1264
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	.seh_endprologue
	andq	$-256, %rsp
	movq	%rcx, 240(%rsp)
	movq	%rdx, 192(%rsp)
	movq	%r8, 200(%rsp)
	testq	%rdx, %rdx
	je	.LBB8_1
	movq	192(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	$0, 216(%rsp)
	movabsq	$7378697629483820647, %rcx
	cmpq	$0, 208(%rsp)
	je	.LBB8_5
	.p2align	4, 0x90
.LBB8_4:
	movq	%rcx, %rax
	imulq	208(%rsp)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$2, %rdx
	addq	%rax, %rdx
	movq	%rdx, 208(%rsp)
	incq	216(%rsp)
	cmpq	$0, 208(%rsp)
	jne	.LBB8_4
.LBB8_5:
	cmpq	$0, 192(%rsp)
	jns	.LBB8_7
	movq	200(%rsp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 768(%rsp)
	vmovaps	%ymm0, 800(%rsp)
	vmovaps	%ymm0, 832(%rsp)
	vmovaps	%ymm0, 864(%rsp)
	vmovaps	%ymm0, 896(%rsp)
	vmovaps	%ymm0, 928(%rsp)
	vmovaps	%ymm0, 960(%rsp)
	vmovaps	%ymm0, 992(%rsp)
	vmovups	%ymm0, 1008(%rsp)
	movq	%rax, 768(%rsp)
	leaq	768(%rsp), %rax
	movq	%rax, 232(%rsp)
	leaq	232(%rsp), %rcx
	movb	$45, %dl
	vzeroupper
	callq	"overload[x]=.11"
	negq	192(%rsp)
	incq	216(%rsp)
.LBB8_7:
	movq	192(%rsp), %rdx
	movq	216(%rsp), %r8
	movq	200(%rsp), %r9
	leaq	248(%rsp), %rcx
	callq	build_unsigned_int
	jmp	.LBB8_8
.LBB8_1:
	movq	200(%rsp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 256(%rsp)
	vmovaps	%ymm0, 288(%rsp)
	vmovaps	%ymm0, 320(%rsp)
	vmovaps	%ymm0, 352(%rsp)
	vmovaps	%ymm0, 384(%rsp)
	vmovaps	%ymm0, 416(%rsp)
	vmovaps	%ymm0, 448(%rsp)
	vmovaps	%ymm0, 480(%rsp)
	vmovups	%ymm0, 496(%rsp)
	movq	%rax, 256(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 224(%rsp)
	leaq	224(%rsp), %rcx
	movb	$48, %dl
	vzeroupper
	callq	"overload[x]=.11"
.LBB8_8:
	nop
	leaq	1136(%rbp), %rsp
	popq	%rbp
	retq
	.seh_endproc

	.def	float_to_str;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@80000000000000008000000000000000
	.section	.rdata,"dr",discard,__xmm@80000000000000008000000000000000
	.p2align	4
__xmm@80000000000000008000000000000000:
	.quad	0x8000000000000000
	.quad	0x8000000000000000
	.globl	__real@43e0000000000000
	.section	.rdata,"dr",discard,__real@43e0000000000000
	.p2align	3
__real@43e0000000000000:
	.quad	0x43e0000000000000
	.globl	__xmm@00000000000000004530000043300000
	.section	.rdata,"dr",discard,__xmm@00000000000000004530000043300000
	.p2align	4
__xmm@00000000000000004530000043300000:
	.long	1127219200
	.long	1160773632
	.long	0
	.long	0
	.globl	__xmm@45300000000000004330000000000000
	.section	.rdata,"dr",discard,__xmm@45300000000000004330000000000000
	.p2align	4
__xmm@45300000000000004330000000000000:
	.quad	0x4330000000000000
	.quad	0x4530000000000000
	.globl	__real@4024000000000000
	.section	.rdata,"dr",discard,__real@4024000000000000
	.p2align	3
__real@4024000000000000:
	.quad	0x4024000000000000
	.text
	.globl	float_to_str
	.p2align	4, 0x90
float_to_str:
.seh_proc float_to_str
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$2272, %rsp
	.seh_stackalloc 2272
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	vmovapd	%xmm6, 2128(%rbp)
	.seh_savexmm %xmm6, 2256
	.seh_endprologue
	andq	$-256, %rsp
	movq	%rcx, 232(%rsp)
	vmovsd	%xmm1, 160(%rsp)
	movq	%r8, 168(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm1
	jae	.LBB9_2
	movq	168(%rsp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovapd	%ymm0, 256(%rsp)
	vmovapd	%ymm0, 288(%rsp)
	vmovapd	%ymm0, 320(%rsp)
	vmovapd	%ymm0, 352(%rsp)
	vmovapd	%ymm0, 384(%rsp)
	vmovapd	%ymm0, 416(%rsp)
	vmovapd	%ymm0, 448(%rsp)
	vmovapd	%ymm0, 480(%rsp)
	vmovupd	%ymm0, 496(%rsp)
	movq	%rax, 256(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	192(%rsp), %rcx
	movb	$45, %dl
	vzeroupper
	callq	"overload[x]=.11"
	vmovsd	160(%rsp), %xmm0
	vxorpd	__xmm@80000000000000008000000000000000(%rip), %xmm0, %xmm0
	vmovlpd	%xmm0, 160(%rsp)
.LBB9_2:
	vmovsd	160(%rsp), %xmm0
	vcvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubsd	__real@43e0000000000000(%rip), %xmm0, %xmm1
	vcvttsd2si	%xmm1, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	%rdx, 200(%rsp)
	vmovq	%rdx, %xmm1
	vpunpckldq	__xmm@00000000000000004530000043300000(%rip), %xmm1, %xmm1
	vsubpd	__xmm@45300000000000004330000000000000(%rip), %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 160(%rsp)
	je	.LBB9_3
	movq	200(%rsp), %rdx
	movq	168(%rsp), %r8
	leaq	240(%rsp), %rcx
	callq	int_to_str
	jmp	.LBB9_4
.LBB9_3:
	movq	168(%rsp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovapd	%ymm0, 768(%rsp)
	vmovapd	%ymm0, 800(%rsp)
	vmovapd	%ymm0, 832(%rsp)
	vmovapd	%ymm0, 864(%rsp)
	vmovapd	%ymm0, 896(%rsp)
	vmovapd	%ymm0, 928(%rsp)
	vmovapd	%ymm0, 960(%rsp)
	vmovapd	%ymm0, 992(%rsp)
	vmovupd	%ymm0, 1008(%rsp)
	movq	%rax, 768(%rsp)
	leaq	768(%rsp), %rax
	movq	%rax, 208(%rsp)
	leaq	208(%rsp), %rcx
	movb	$48, %dl
	vzeroupper
	callq	"overload[x]=.11"
.LBB9_4:
	movq	168(%rsp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovapd	%ymm0, 1280(%rsp)
	vmovapd	%ymm0, 1312(%rsp)
	vmovapd	%ymm0, 1344(%rsp)
	vmovapd	%ymm0, 1376(%rsp)
	vmovapd	%ymm0, 1408(%rsp)
	vmovapd	%ymm0, 1440(%rsp)
	vmovapd	%ymm0, 1472(%rsp)
	vmovapd	%ymm0, 1504(%rsp)
	vmovupd	%ymm0, 1520(%rsp)
	movq	%rax, 1280(%rsp)
	leaq	1280(%rsp), %rax
	movq	%rax, 216(%rsp)
	leaq	216(%rsp), %rcx
	movb	$46, %dl
	vzeroupper
	callq	"overload[x]=.11"
	movq	$0, 176(%rsp)
	vmovsd	__real@43e0000000000000(%rip), %xmm0
	vmovdqa	__xmm@00000000000000004530000043300000(%rip), %xmm1
	vmovapd	__xmm@45300000000000004330000000000000(%rip), %xmm2
	vmovsd	__real@4024000000000000(%rip), %xmm3
	.p2align	4, 0x90
.LBB9_5:
	vmovsd	160(%rsp), %xmm4
	vcvttsd2si	%xmm4, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubsd	%xmm0, %xmm4, %xmm5
	vcvttsd2si	%xmm5, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	vmovq	%rdx, %xmm5
	vpunpckldq	%xmm1, %xmm5, %xmm5
	vsubpd	%xmm2, %xmm5, %xmm5
	vpermilpd	$1, %xmm5, %xmm6
	vaddsd	%xmm5, %xmm6, %xmm5
	vucomisd	%xmm4, %xmm5
	jne	.LBB9_6
	jnp	.LBB9_8
.LBB9_6:
	vmulsd	160(%rsp), %xmm3, %xmm4
	vcvttsd2si	%xmm4, %rax
	vmovsd	%xmm4, 160(%rsp)
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubsd	%xmm0, %xmm4, %xmm4
	vcvttsd2si	%xmm4, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	jne	.LBB9_5
	incq	176(%rsp)
	jmp	.LBB9_5
.LBB9_8:
	movq	$0, 184(%rsp)
	leaq	1792(%rsp), %rdi
	leaq	224(%rsp), %rsi
	.p2align	4, 0x90
.LBB9_9:
	movq	184(%rsp), %rax
	cmpq	176(%rsp), %rax
	jge	.LBB9_11
	movq	168(%rsp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovapd	%ymm0, 1792(%rsp)
	vmovapd	%ymm0, 1824(%rsp)
	vmovapd	%ymm0, 1856(%rsp)
	vmovapd	%ymm0, 1888(%rsp)
	vmovapd	%ymm0, 1920(%rsp)
	vmovapd	%ymm0, 1952(%rsp)
	vmovapd	%ymm0, 1984(%rsp)
	vmovapd	%ymm0, 2016(%rsp)
	vmovupd	%ymm0, 2032(%rsp)
	movq	%rax, 1792(%rsp)
	movq	%rdi, 224(%rsp)
	movq	%rsi, %rcx
	movb	$48, %dl
	vzeroupper
	callq	"overload[x]=.11"
	incq	184(%rsp)
	jmp	.LBB9_9
.LBB9_11:
	vcvttsd2si	160(%rsp), %rdx
	movq	168(%rsp), %r8
	leaq	248(%rsp), %rcx
	callq	int_to_str
	vmovaps	2128(%rbp), %xmm6
	leaq	2144(%rbp), %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
	retq
	.seh_endproc

	.def	find_printable_type;
	.scl	2;
	.type	32;
	.endef
	.globl	find_printable_type
	.p2align	4, 0x90
find_printable_type:
.seh_proc find_printable_type
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$1256, %rsp
	.seh_stackalloc 1256
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	.seh_endprologue
	andq	$-256, %rsp
	movq	%rcx, 248(%rsp)
	movq	%rdx, 184(%rsp)
	movq	%r8, 192(%rsp)
	movq	$0, 176(%rsp)
	leaq	global_var.1(%rip), %rsi
	.p2align	4, 0x90
.LBB10_1:
	movq	176(%rsp), %rax
	cmpq	global_var.2(%rip), %rax
	jge	.LBB10_4
	movq	176(%rsp), %rax
	shlq	$4, %rax
	movq	8(%rax,%rsi), %rcx
	movq	184(%rsp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	callq	strcmp
	testl	%eax, %eax
	je	.LBB10_3
	incq	176(%rsp)
	jmp	.LBB10_1
.LBB10_4:
	movq	192(%rsp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 768(%rsp)
	vmovaps	%ymm0, 800(%rsp)
	vmovaps	%ymm0, 832(%rsp)
	vmovaps	%ymm0, 864(%rsp)
	vmovaps	%ymm0, 896(%rsp)
	vmovaps	%ymm0, 928(%rsp)
	vmovaps	%ymm0, 960(%rsp)
	vmovaps	%ymm0, 992(%rsp)
	vmovups	%ymm0, 1008(%rsp)
	movq	%rax, 768(%rsp)
	leaq	768(%rsp), %rax
	movq	%rax, 216(%rsp)
	leaq	.L__unnamed_1(%rip), %rdx
	leaq	216(%rsp), %rcx
	jmp	.LBB10_5
.LBB10_3:
	movq	192(%rsp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 256(%rsp)
	vmovaps	%ymm0, 288(%rsp)
	vmovaps	%ymm0, 320(%rsp)
	vmovaps	%ymm0, 352(%rsp)
	vmovaps	%ymm0, 384(%rsp)
	vmovaps	%ymm0, 416(%rsp)
	vmovaps	%ymm0, 448(%rsp)
	vmovaps	%ymm0, 480(%rsp)
	vmovups	%ymm0, 496(%rsp)
	movq	%rax, 256(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	176(%rsp), %rax
	shlq	$4, %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 224(%rsp)
	leaq	224(%rsp), %rcx
	movq	%rcx, 208(%rsp)
	movq	184(%rsp), %rdx
	leaq	208(%rsp), %rcx
	vzeroupper
	callq	*(%rax,%rsi)
	movq	224(%rsp), %rdx
	leaq	200(%rsp), %rcx
.LBB10_5:
	vzeroupper
	callq	"overload[x]="
	nop
	leaq	1128(%rbp), %rsp
	popq	%rsi
	popq	%rbp
	retq
	.seh_endproc

	.def	parse_format;
	.scl	2;
	.type	32;
	.endef
	.globl	parse_format
	.p2align	4, 0x90
parse_format:
.seh_proc parse_format
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$2488, %rsp
	.seh_stackalloc 2488
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	vmovaps	%xmm6, 2336(%rbp)
	.seh_savexmm %xmm6, 2464
	.seh_endprologue
	andq	$-256, %rsp
	movq	%rcx, 312(%rsp)
	vxorps	%xmm6, %xmm6, %xmm6
	vmovaps	%xmm6, 496(%rsp)
	movq	(%rdx), %r15
	movq	%r8, 320(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 2048(%rsp)
	vmovaps	%ymm0, 2080(%rsp)
	vmovaps	%ymm0, 2112(%rsp)
	vmovaps	%ymm0, 2144(%rsp)
	vmovaps	%ymm0, 2176(%rsp)
	vmovaps	%ymm0, 2208(%rsp)
	vmovaps	%ymm0, 2240(%rsp)
	vmovaps	%ymm0, 2272(%rsp)
	vmovups	%ymm0, 2288(%rsp)
	leaq	2048(%rsp), %rsi
	movq	%rsi, 328(%rsp)
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	328(%rsp), %rcx
	vzeroupper
	callq	init_builder
	movq	$0, 304(%rsp)
	movq	$0, 248(%rsp)
	leaq	416(%rsp), %r14
	leaq	336(%rsp), %rdi
	leaq	368(%rsp), %r12
	leaq	360(%rsp), %r13
	jmp	.LBB11_1
.LBB11_6:
	movq	264(%rsp), %rax
	movsbq	(%rax), %rax
.LBB11_7:
	movq	%rax, 280(%rsp)
	movq	280(%rsp), %rdx
	leaq	472(%rsp), %rcx
	movq	%rsi, %r8
	callq	int_to_str
	incq	248(%rsp)
.LBB11_1:
	movq	248(%rsp), %rax
	cmpq	8(%r15), %rax
	jge	.LBB11_25
	vmovups	(%r15), %xmm0
	vmovaps	%xmm0, 416(%rsp)
	movq	%r14, 336(%rsp)
	movq	248(%rsp), %rdx
	movq	%rdi, %rcx
	callq	"overload[]"
	cmpb	$37, %al
	jne	.LBB11_24
	movq	304(%rsp), %rax
	movq	320(%rsp), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	(%rcx,%rdx), %rbx
	movq	8(%rcx,%rdx), %rcx
	vmovaps	%xmm6, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movq	%rbx, 256(%rsp)
	incq	%rax
	movq	%rax, 304(%rsp)
	movl	(%rbx), %eax
	movl	%eax, 288(%rsp)
	cmpl	$3, %eax
	jne	.LBB11_15
	movq	$0, 280(%rsp)
	movq	256(%rsp), %rax
	movl	4(%rax), %eax
	movl	%eax, 292(%rsp)
	cmpl	$1, %eax
	je	.LBB11_6
	cmpl	$5, %eax
	je	.LBB11_6
	movl	292(%rsp), %eax
	cmpl	$2, %eax
	je	.LBB11_10
	cmpl	$6, %eax
	je	.LBB11_10
	movl	292(%rsp), %eax
	cmpl	$3, %eax
	je	.LBB11_13
	cmpl	$7, %eax
	je	.LBB11_13
	movq	264(%rsp), %rax
	movq	(%rax), %rax
	jmp	.LBB11_7
	.p2align	4, 0x90
.LBB11_24:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 1024(%rsp)
	vmovaps	%ymm0, 1056(%rsp)
	vmovaps	%ymm0, 1088(%rsp)
	vmovaps	%ymm0, 1120(%rsp)
	vmovaps	%ymm0, 1152(%rsp)
	vmovaps	%ymm0, 1184(%rsp)
	vmovaps	%ymm0, 1216(%rsp)
	vmovaps	%ymm0, 1248(%rsp)
	vmovups	%ymm0, 1264(%rsp)
	movq	%rsi, 1024(%rsp)
	leaq	1024(%rsp), %rax
	movq	%rax, 360(%rsp)
	vmovups	(%r15), %xmm0
	vmovaps	%xmm0, 448(%rsp)
	leaq	448(%rsp), %rax
	movq	%rax, 368(%rsp)
	movq	248(%rsp), %rdx
	movq	%r12, %rcx
	vzeroupper
	callq	"overload[]"
	movq	%r13, %rcx
.LBB11_23:
	movl	%eax, %edx
	callq	"overload[x]=.11"
	incq	248(%rsp)
	jmp	.LBB11_1
	.p2align	4, 0x90
.LBB11_15:
	cmpl	$4, 288(%rsp)
	jne	.LBB11_20
	movq	$0, 296(%rsp)
	movq	256(%rsp), %rax
	movl	4(%rax), %eax
	movl	%eax, 396(%rsp)
	cmpl	$9, %eax
	jne	.LBB11_19
	movq	264(%rsp), %rax
	vmovss	(%rax), %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	jmp	.LBB11_18
.LBB11_20:
	cmpl	$5, 288(%rsp)
	jne	.LBB11_22
	leaq	488(%rsp), %rcx
	leaq	256(%rsp), %rdx
	movq	%rsi, %r8
	callq	find_printable_type
	incq	248(%rsp)
	jmp	.LBB11_1
.LBB11_10:
	movq	264(%rsp), %rax
	movswq	(%rax), %rax
	jmp	.LBB11_7
.LBB11_19:
	movq	264(%rsp), %rax
	vmovsd	(%rax), %xmm0
.LBB11_18:
	vmovsd	%xmm0, 296(%rsp)
	vmovsd	296(%rsp), %xmm1
	leaq	480(%rsp), %rcx
	movq	%rsi, %r8
	callq	float_to_str
	incq	248(%rsp)
	jmp	.LBB11_1
.LBB11_22:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 512(%rsp)
	vmovaps	%ymm0, 544(%rsp)
	vmovaps	%ymm0, 576(%rsp)
	vmovaps	%ymm0, 608(%rsp)
	vmovaps	%ymm0, 640(%rsp)
	vmovaps	%ymm0, 672(%rsp)
	vmovaps	%ymm0, 704(%rsp)
	vmovaps	%ymm0, 736(%rsp)
	vmovups	%ymm0, 752(%rsp)
	movq	%rsi, 512(%rsp)
	leaq	512(%rsp), %rax
	movq	%rax, 344(%rsp)
	vmovups	(%r15), %xmm0
	vmovaps	%xmm0, 432(%rsp)
	leaq	432(%rsp), %rax
	movq	%rax, 352(%rsp)
	movq	248(%rsp), %rdx
	leaq	352(%rsp), %rcx
	vzeroupper
	callq	"overload[]"
	leaq	344(%rsp), %rcx
	jmp	.LBB11_23
.LBB11_13:
	movq	264(%rsp), %rax
	movslq	(%rax), %rax
	jmp	.LBB11_7
.LBB11_25:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 1536(%rsp)
	vmovaps	%ymm0, 1568(%rsp)
	vmovaps	%ymm0, 1600(%rsp)
	vmovaps	%ymm0, 1632(%rsp)
	vmovaps	%ymm0, 1664(%rsp)
	vmovaps	%ymm0, 1696(%rsp)
	vmovaps	%ymm0, 1728(%rsp)
	vmovaps	%ymm0, 1760(%rsp)
	vmovups	%ymm0, 1776(%rsp)
	movq	%rsi, 1536(%rsp)
	leaq	1536(%rsp), %rax
	movq	%rax, 376(%rsp)
	leaq	376(%rsp), %rcx
	movb	$10, %dl
	vzeroupper
	callq	"overload[x]=.11"
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 400(%rsp)
	leaq	400(%rsp), %rax
	movq	%rax, 384(%rsp)
	leaq	384(%rsp), %rcx
	movq	%rsi, %rdx
	callq	builder_to_string
	movq	312(%rsp), %rax
	movq	(%rax), %rax
	vmovaps	400(%rsp), %xmm0
	vmovups	%xmm0, (%rax)
	vmovaps	2336(%rbp), %xmm6
	leaq	2360(%rbp), %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.seh_endproc

	.def	"format_args!@string!@-";
	.scl	2;
	.type	32;
	.endef
	.globl	"format_args!@string!@-"
	.p2align	4, 0x90
"format_args!@string!@-":
.seh_proc "format_args!@string!@-"
	subq	$232, %rsp
	.seh_stackalloc 232
	vmovaps	%xmm6, 208(%rsp)
	.seh_savexmm %xmm6, 208
	.seh_endprologue
	movq	%r8, 256(%rsp)
	movq	%r9, 264(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%rdx, 112(%rsp)
	vxorps	%xmm6, %xmm6, %xmm6
	vmovaps	%xmm6, 64(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	callq	to_string
	leaq	256(%rsp), %r8
	movq	%r8, 120(%rsp)
	vmovaps	%xmm6, 80(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 48(%rsp)
	vmovaps	64(%rsp), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	48(%rsp), %rcx
	leaq	56(%rsp), %rdx
	callq	parse_format
	movq	32(%rsp), %rax
	movq	(%rax), %rax
	vmovaps	80(%rsp), %xmm0
	vmovups	%xmm0, (%rax)
	vmovaps	208(%rsp), %xmm6
	addq	$232, %rsp
	retq
	.seh_endproc

	.def	"print!@string!@-";
	.scl	2;
	.type	32;
	.endef
	.globl	"print!@string!@-"
	.p2align	4, 0x90
"print!@string!@-":
.seh_proc "print!@string!@-"
	subq	$296, %rsp
	.seh_stackalloc 296
	vmovaps	%xmm6, 272(%rsp)
	.seh_savexmm %xmm6, 272
	.seh_endprologue
	movq	%r8, 320(%rsp)
	movq	%r9, 328(%rsp)
	movq	%rcx, 120(%rsp)
	movq	%rdx, 128(%rsp)
	vxorps	%xmm6, %xmm6, %xmm6
	vmovaps	%xmm6, 80(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	56(%rsp), %rcx
	callq	to_string
	leaq	320(%rsp), %r8
	movq	%r8, 136(%rsp)
	vmovaps	%xmm6, 32(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 64(%rsp)
	vmovaps	80(%rsp), %xmm0
	vmovaps	%xmm0, 96(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	leaq	72(%rsp), %rdx
	callq	parse_format
	leaq	144(%rsp), %rcx
	callq	get_stdout
	movq	%rax, 152(%rsp)
	movq	32(%rsp), %r8
	movl	40(%rsp), %r9d
	leaq	160(%rsp), %rcx
	movq	%rax, %rdx
	callq	write_file
	vmovaps	272(%rsp), %xmm6
	addq	$296, %rsp
	retq
	.seh_endproc

	.def	copy;
	.scl	2;
	.type	32;
	.endef
	.globl	copy
	.p2align	4, 0x90
copy:
.seh_proc copy
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%r8, 24(%rsp)
	movq	$0, (%rsp)
	.p2align	4, 0x90
.LBB14_1:
	movq	(%rsp), %rax
	cmpq	8(%rsp), %rax
	jge	.LBB14_3
	movq	(%rsp), %rax
	movq	24(%rsp), %rcx
	movzbl	(%rcx,%rax), %ecx
	movq	16(%rsp), %rdx
	movb	%cl, (%rdx,%rax)
	incq	(%rsp)
	jmp	.LBB14_1
.LBB14_3:
	addq	$56, %rsp
	retq
	.seh_endproc

	.def	len;
	.scl	2;
	.type	32;
	.endef
	.globl	len
	.p2align	4, 0x90
len:
.seh_proc len
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	$0, (%rsp)
	.p2align	4, 0x90
.LBB15_1:
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB15_3
	incq	(%rsp)
	jmp	.LBB15_1
.LBB15_3:
	movq	(%rsp), %rax
	addq	$24, %rsp
	retq
	.seh_endproc

	.def	open_file;
	.scl	2;
	.type	32;
	.endef
	.globl	open_file
	.p2align	4, 0x90
open_file:
.seh_proc open_file
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 88(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	$0, 64(%rsp)
	testb	$1, %r8b
	je	.LBB16_2
	orl	$1179785, 64(%rsp)
.LBB16_2:
	testb	$1, 80(%rsp)
	je	.LBB16_4
	orl	$1179926, 64(%rsp)
.LBB16_4:
	movb	$1, %al
	testb	%al, %al
	jne	.LBB16_6
	orq	$1179808, 64(%rsp)
.LBB16_6:
	movq	72(%rsp), %rcx
	movq	64(%rsp), %rdx
	movq	$0, 48(%rsp)
	movq	$32, 40(%rsp)
	movq	$4, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	CreateFileA
	movq	%rax, 96(%rsp)
	addq	$104, %rsp
	retq
	.seh_endproc

	.def	write_file;
	.scl	2;
	.type	32;
	.endef
	.globl	write_file
	.p2align	4, 0x90
write_file:
.seh_proc write_file
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movl	%r9d, %eax
	movq	%rcx, 64(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movl	%r9d, 60(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 32(%rsp)
	leaq	56(%rsp), %r9
	movq	%rdx, %rcx
	movq	%r8, %rdx
	movl	%eax, %r8d
	callq	WriteFile
	movl	56(%rsp), %eax
	cmpl	60(%rsp), %eax
	sete	%al
	sete	55(%rsp)
	addq	$88, %rsp
	retq
	.seh_endproc

	.def	get_stdout;
	.scl	2;
	.type	32;
	.endef
	.globl	get_stdout
	.p2align	4, 0x90
get_stdout:
.seh_proc get_stdout
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movl	$-11, %ecx
	callq	GetStdHandle
	nop
	addq	$40, %rsp
	retq
	.seh_endproc

	.def	"overload[]";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[]"
	.p2align	4, 0x90
"overload[]":
.seh_proc "overload[]"
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)
	movq	(%rcx), %rax
	movq	%rdx, 8(%rsp)
	movq	(%rax), %rax
	movb	(%rax,%rdx), %al
	addq	$40, %rsp
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
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$112, %rsp
	.seh_stackalloc 112
	.seh_endprologue
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 96(%rsp)
	movq	(%rcx), %rsi
	movq	%rdx, 48(%rsp)
	vmovaps	%xmm0, 32(%rsp)
	leaq	64(%rsp), %rcx
	callq	len
	movq	%rax, 56(%rsp)
	addq	8(%rsi), %rax
	movq	%rax, 40(%rsp)
	leaq	72(%rsp), %rcx
	movq	%rax, %rdx
	callq	mem_alloc
	movq	%rax, 32(%rsp)
	movq	(%rsi), %r8
	movq	8(%rsi), %r9
	leaq	80(%rsp), %rcx
	movq	%rax, %rdx
	callq	copy
	movq	32(%rsp), %rdx
	addq	8(%rsi), %rdx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r9
	leaq	88(%rsp), %rcx
	callq	copy
	movq	32(%rsp), %rax
	movq	40(%rsp), %rdx
	addq	$112, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	"overload[x]=";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[x]="
	.p2align	4, 0x90
"overload[x]=":
.seh_proc "overload[x]="
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$112, %rsp
	.seh_stackalloc 112
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 80(%rsp)
	leaq	96(%rsp), %rcx
	callq	len
	movq	%rax, 64(%rsp)
	leaq	255(%rax), %rcx
	testq	%rax, %rax
	cmovnsq	%rax, %rcx
	sarq	$8, %rcx
	movq	%rcx, 88(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	$0, 48(%rsp)
	leaq	104(%rsp), %rsi
	jmp	.LBB21_1
	.p2align	4, 0x90
.LBB21_4:
	movq	40(%rsp), %rdx
	addq	256(%rdx), %rdx
	movq	48(%rsp), %r8
	shlq	$8, %r8
	addq	80(%rsp), %r8
	movq	56(%rsp), %r9
	movq	%rsi, %rcx
	callq	copy
	movq	40(%rsp), %rax
	movq	56(%rsp), %rcx
	addq	%rcx, 256(%rax)
	addq	$-256, 64(%rsp)
	movq	40(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 40(%rsp)
	incq	48(%rsp)
.LBB21_1:
	movq	48(%rsp), %rax
	decq	%rax
	cmpq	88(%rsp), %rax
	jge	.LBB21_5
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)
	cmpq	$256, %rax
	jle	.LBB21_4
	movq	$256, 56(%rsp)
	jmp	.LBB21_4
.LBB21_5:
	addq	$112, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	"overload[x]=.11";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[x]=.11"
	.p2align	4, 0x90
"overload[x]=.11":
.seh_proc "overload[x]=.11"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$64, %rsp
	.seh_stackalloc 64
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movb	%dl, 39(%rsp)
	movq	%rcx, 40(%rsp)
	leaq	56(%rsp), %rsi
	.p2align	4, 0x90
.LBB22_1:
	movq	40(%rsp), %rax
	testq	%rax, %rax
	je	.LBB22_7
	cmpq	$256, 256(%rax)
	jne	.LBB22_7
	movq	40(%rsp), %rax
	cmpq	$0, 264(%rax)
	jne	.LBB22_5
	movl	$272, %edx
	movq	%rsi, %rcx
	callq	mem_alloc
	movq	40(%rsp), %rcx
	movq	%rax, 264(%rcx)
.LBB22_5:
	movq	40(%rsp), %rax
	cmpq	$256, 256(%rax)
	jne	.LBB22_1
	movq	40(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 40(%rsp)
	jmp	.LBB22_1
.LBB22_7:
	movb	39(%rsp), %al
	movq	40(%rsp), %rcx
	movq	256(%rcx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	40(%rsp), %rax
	incq	256(%rax)
	addq	$64, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.def	overload;
	.scl	2;
	.type	32;
	.endef
	.globl	overload
	.p2align	4, 0x90
overload:
.seh_proc overload
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$96, %rsp
	.seh_stackalloc 96
	.seh_endprologue
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 80(%rsp)
	movq	(%rcx), %rsi
	movq	%rdx, 56(%rsp)
	vmovaps	%xmm0, 32(%rsp)
	leaq	64(%rsp), %rcx
	callq	len
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	72(%rsp), %rcx
	leaq	32(%rsp), %r8
	movq	%rsi, %rdx
	callq	compare
	nop
	addq	$96, %rsp
	popq	%rsi
	retq
	.seh_endproc

	.section	.rdata,"dr"
	.globl	global_var
	.p2align	3
global_var:
	.quad	256

	.bss
	.globl	global_var.1
	.p2align	4
global_var.1:
	.zero	16384

	.globl	global_var.2
	.p2align	3
global_var.2:
	.quad	0

	.section	.rdata,"dr"
	.globl	global_var.3
	.p2align	3
global_var.3:
	.quad	65536

	.globl	global_var.4
	.p2align	3
global_var.4:
	.quad	131072

	.globl	global_var.5
	.p2align	3
global_var.5:
	.quad	262144

	.globl	global_var.6
	.p2align	3
global_var.6:
	.quad	524288

	.globl	global_var.7
	.p2align	3
global_var.7:
	.quad	1048576

	.globl	global_var.8
global_var.8:
	.byte	1

	.globl	global_var.9
global_var.9:
	.byte	0

	.globl	global_var.10
	.p2align	3
global_var.10:
	.quad	0

.L__unnamed_1:
	.asciz	"Unkown struct"

.L__unnamed_2:
	.zero	1

	.globl	_fltused
