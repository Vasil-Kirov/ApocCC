	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"Test.apoc"
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main
	.p2align	4, 0x90
main:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "E:\\C_Projects\\Apocalypse\\Test.apoc"
	.cv_loc	0 1 6 0
.seh_proc main
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$744, %rsp
	.seh_stackalloc 744
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	vmovaps	%xmm6, 592(%rbp)
	.seh_savexmm %xmm6, 720
	.seh_endprologue
	andq	$-256, %rsp
	movq	%rcx, 136(%rsp)
.Ltmp0:
	.cv_loc	0 1 7 2
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
	leaq	256(%rsp), %rsi
	movq	%rsi, 64(%rsp)
	leaq	.L__unnamed_1(%rip), %rdx
	leaq	64(%rsp), %rcx
	vzeroupper
	callq	init_builder
	.cv_loc	0 1 8 2
	leaq	.L__unnamed_2(%rip), %rdx
	movq	%rsi, %rcx
	callq	"overload[x]="
	.cv_loc	0 1 9 2
	vxorps	%xmm6, %xmm6, %xmm6
	vmovaps	%xmm6, 48(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	72(%rsp), %rcx
	movq	%rsi, %rdx
	callq	builder_to_string
	.cv_loc	0 1 11 7
	movq	48(%rsp), %rdx
	movq	56(%rsp), %r8
	movabsq	$42949672964, %rax
	movq	%rax, 160(%rsp)
	movabsq	$4621888360433242341, %rax
	movq	%rax, 80(%rsp)
	vmovaps	%xmm6, 96(%rsp)
	leaq	160(%rsp), %r9
	movq	%r9, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	%rax, 32(%rsp)
	leaq	144(%rsp), %rcx
	callq	"print!@string!@-"
	movabsq	$17179869187, %rax
	.cv_loc	0 1 12 7
	movq	%rax, 208(%rsp)
	movq	$20, 88(%rsp)
	vmovaps	%xmm6, 112(%rsp)
	leaq	208(%rsp), %r8
	movq	%r8, 112(%rsp)
	leaq	88(%rsp), %r9
	movq	%r9, 120(%rsp)
	leaq	.L__unnamed_3(%rip), %rdx
	leaq	152(%rsp), %rcx
	callq	"print!@* u8!@-"
	.cv_loc	0 1 13 5
	xorl	%eax, %eax
	vmovaps	592(%rbp), %xmm6
	leaq	616(%rbp), %rsp
	popq	%rsi
	popq	%rbp
	retq
.Ltmp1:
.Lfunc_end0:
	.seh_endproc

	.def	builder_to_string;
	.scl	2;
	.type	32;
	.endef
	.globl	builder_to_string
	.p2align	4, 0x90
builder_to_string:
.Lfunc_begin1:
	.cv_func_id 1
	.cv_file	2 "E:\\C_Projects\\Apocalypse\\Standard\\String.apoc"
	.cv_loc	1 2 18 0
.seh_proc builder_to_string
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$144, %rsp
	.seh_stackalloc 144
	.seh_endprologue
	movq	%rcx, 88(%rsp)
	movq	%rdx, 96(%rsp)
.Ltmp2:
	.cv_loc	1 2 19 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 64(%rsp)
	.cv_loc	1 2 20 2
	movq	$0, 48(%rsp)
	.cv_loc	1 2 21 2
	movq	%rdx, 40(%rsp)
	.cv_loc	1 2 22 2
	movq	$0, 104(%rsp)
	.p2align	4, 0x90
.LBB1_1:
	movq	40(%rsp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB1_3
	.cv_loc	1 2 23 3
	movq	40(%rsp), %rax
	movq	256(%rax), %rcx
	addq	%rcx, 48(%rsp)
	.cv_loc	1 2 24 3
	movq	264(%rax), %rax
	movq	%rax, 40(%rsp)
	.cv_loc	1 2 25 2
	incq	104(%rsp)
	jmp	.LBB1_1
.LBB1_3:
	.cv_loc	1 2 26 2
	movq	48(%rsp), %rdx
	movq	40(%rsp), %rax
	addq	256(%rax), %rdx
	movq	%rdx, 48(%rsp)
	leaq	120(%rsp), %rcx
	.cv_loc	1 2 27 2
	callq	mem_alloc
	movq	%rax, 64(%rsp)
	.cv_loc	1 2 28 2
	movq	48(%rsp), %rax
	movq	%rax, 72(%rsp)
	.cv_loc	1 2 30 2
	movq	$0, 56(%rsp)
	.cv_loc	1 2 31 2
	movq	$0, 112(%rsp)
	leaq	128(%rsp), %rsi
	.p2align	4, 0x90
.LBB1_4:
	movq	40(%rsp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB1_6
	.cv_loc	1 2 32 7
	movq	56(%rsp), %rdx
	shlq	$8, %rdx
	addq	64(%rsp), %rdx
	movq	40(%rsp), %r8
	movq	256(%r8), %r9
	movq	%rsi, %rcx
	callq	copy
	.cv_loc	1 2 33 3
	movq	40(%rsp), %rax
	movq	264(%rax), %rax
	.cv_loc	1 2 34 3
	incq	56(%rsp)
	.cv_loc	1 2 33 3
	movq	%rax, 40(%rsp)
	.cv_loc	1 2 35 2
	incq	112(%rsp)
	jmp	.LBB1_4
.LBB1_6:
	.cv_loc	1 2 36 6
	movq	56(%rsp), %rdx
	shlq	$8, %rdx
	addq	64(%rsp), %rdx
	movq	40(%rsp), %r8
	movq	256(%r8), %r9
	leaq	136(%rsp), %rcx
	callq	copy
	.cv_loc	1 2 37 2
	movq	96(%rsp), %rax
	movq	256(%rax), %rax
	addq	%rax, 48(%rsp)
	.cv_loc	1 2 38 5
	movq	88(%rsp), %rax
	movq	(%rax), %rax
	vmovaps	64(%rsp), %xmm0
	vmovups	%xmm0, (%rax)
	addq	$144, %rsp
	popq	%rsi
	retq
.Ltmp3:
.Lfunc_end1:
	.seh_endproc

	.def	init_builder;
	.scl	2;
	.type	32;
	.endef
	.globl	init_builder
	.p2align	4, 0x90
init_builder:
.Lfunc_begin2:
	.cv_func_id 2
	.cv_loc	2 2 42 0
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
.Ltmp4:
	.cv_loc	2 2 43 2
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
	.cv_loc	2 2 44 2
	movq	%rax, 208(%rsp)
	.cv_loc	2 2 45 2
	movq	$0, 224(%rsp)
	.cv_loc	2 2 46 2
	movq	$0, 216(%rsp)
	leaq	248(%rsp), %rsi
	jmp	.LBB2_1
	.p2align	4, 0x90
.LBB2_4:
	.cv_loc	2 2 55 2
	incq	216(%rsp)
.LBB2_1:
	.cv_loc	2 2 46 2
	movq	224(%rsp), %rax
	shlq	$8, %rax
	addq	216(%rsp), %rax
	movq	232(%rsp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB2_5
	.cv_loc	2 2 47 3
	movq	216(%rsp), %rax
	movq	224(%rsp), %rcx
	shlq	$8, %rcx
	addq	%rax, %rcx
	movq	232(%rsp), %rdx
	movzbl	(%rdx,%rcx), %ecx
	movq	208(%rsp), %rdx
	movb	%cl, (%rdx,%rax)
	.cv_loc	2 2 48 3
	movq	208(%rsp), %rax
	incq	256(%rax)
	.cv_loc	2 2 49 3
	cmpq	$256, 216(%rsp)
	.cv_loc	2 2 55 2
	jne	.LBB2_4
	.cv_loc	2 2 50 4
	movq	$0, 216(%rsp)
	.cv_loc	2 2 51 4
	incq	224(%rsp)
	.cv_loc	2 2 52 4
	movl	$272, %edx
	movq	%rsi, %rcx
	vzeroupper
	callq	mem_alloc
	movq	208(%rsp), %rcx
	movq	%rax, 264(%rcx)
	.cv_loc	2 2 53 4
	movq	208(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 208(%rsp)
	jmp	.LBB2_4
.LBB2_5:
	.cv_loc	2 2 56 5
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
.Ltmp5:
.Lfunc_end2:
	.seh_endproc

	.def	compare;
	.scl	2;
	.type	32;
	.endef
	.globl	compare
	.p2align	4, 0x90
compare:
.Lfunc_begin3:
	.cv_func_id 3
	.cv_loc	3 2 112 0
.seh_proc compare
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	96(%rsp), %rax
	movq	%rcx, 48(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 16(%rsp)
	movq	%r8, 24(%rsp)
	movq	%rdx, 16(%rsp)
	vmovaps	%xmm0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	%r9, 32(%rsp)
.Ltmp6:
	.cv_loc	3 2 113 2
	cmpq	%rax, %r8
	.cv_loc	3 2 116 2
	je	.LBB3_3
.LBB3_1:
	xorl	%eax, %eax
	jmp	.LBB3_2
.LBB3_3:
	movq	$0, 8(%rsp)
	.p2align	4, 0x90
.LBB3_4:
	movq	8(%rsp), %rax
	cmpq	24(%rsp), %rax
	jge	.LBB3_7
	.cv_loc	3 2 117 3
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movzbl	(%rcx,%rax), %ecx
	movq	32(%rsp), %rdx
	cmpb	(%rdx,%rax), %cl
	.cv_loc	3 2 116 2
	jne	.LBB3_1
	incq	8(%rsp)
	jmp	.LBB3_4
.LBB3_7:
	.cv_loc	3 2 118 5
	movb	$1, %al
.LBB3_2:
	addq	$56, %rsp
	retq
.Ltmp7:
.Lfunc_end3:
	.seh_endproc

	.def	to_string;
	.scl	2;
	.type	32;
	.endef
	.globl	to_string
	.p2align	4, 0x90
to_string:
.Lfunc_begin4:
	.cv_func_id 4
	.cv_loc	4 2 122 0
.seh_proc to_string
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 80(%rsp)
	leaq	96(%rsp), %rcx
.Ltmp8:
	.cv_loc	4 2 123 2
	callq	len
	movq	%rax, 40(%rsp)
	leaq	104(%rsp), %rcx
	.cv_loc	4 2 124 2
	movq	%rax, %rdx
	callq	mem_alloc
	movq	%rax, 88(%rsp)
	.cv_loc	4 2 125 6
	movq	80(%rsp), %r8
	movq	40(%rsp), %r9
	leaq	112(%rsp), %rcx
	movq	%rax, %rdx
	callq	copy
	.cv_loc	4 2 126 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 48(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 56(%rsp)
	.cv_loc	4 2 127 5
	movq	72(%rsp), %rax
	movq	(%rax), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	addq	$120, %rsp
	retq
.Ltmp9:
.Lfunc_end4:
	.seh_endproc

	.def	terminate_string;
	.scl	2;
	.type	32;
	.endef
	.globl	terminate_string
	.p2align	4, 0x90
terminate_string:
.Lfunc_begin5:
	.cv_func_id 5
	.cv_loc	5 2 131 0
.seh_proc terminate_string
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 48(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
.Ltmp10:
	.cv_loc	5 2 132 2
	vmovaps	%xmm0, 32(%rsp)
	.cv_loc	5 2 133 2
	leaq	1(%r8), %rdx
	movq	%rdx, 40(%rsp)
	leaq	72(%rsp), %rcx
	.cv_loc	5 2 134 2
	callq	mem_alloc
	movq	%rax, 32(%rsp)
	.cv_loc	5 2 135 6
	movq	48(%rsp), %r8
	movq	56(%rsp), %r9
	leaq	80(%rsp), %rcx
	movq	%rax, %rdx
	callq	copy
	.cv_loc	5 2 136 2
	movq	32(%rsp), %rax
	movq	40(%rsp), %rcx
	movb	$0, (%rax,%rcx)
	.cv_loc	5 2 137 5
	movq	64(%rsp), %rax
	movq	(%rax), %rax
	vmovaps	32(%rsp), %xmm0
	vmovups	%xmm0, (%rax)
	addq	$88, %rsp
	retq
.Ltmp11:
.Lfunc_end5:
	.seh_endproc

	.def	build_unsigned_int;
	.scl	2;
	.type	32;
	.endef
	.globl	build_unsigned_int
	.p2align	4, 0x90
build_unsigned_int:
.Lfunc_begin6:
	.cv_func_id 6
	.cv_loc	6 2 140 0
.seh_proc build_unsigned_int
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r9, 40(%rsp)
.Ltmp12:
	.cv_loc	6 2 141 2
	testq	%r8, %r8
	.cv_loc	6 2 146 1
	je	.LBB6_2
	.cv_loc	6 2 142 3
	movq	48(%rsp), %rdx
	movabsq	$-3689348814741910323, %rax
	mulxq	%rax, %rax, %rax
	.cv_loc	6 2 143 21
	shrq	$3, %rax
	.cv_loc	6 2 142 3
	leaq	(%rax,%rax), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	subq	%rcx, %rdx
	orq	$48, %rdx
	movq	%rdx, 64(%rsp)
	.cv_loc	6 2 143 21
	movq	56(%rsp), %r8
	decq	%r8
	movq	40(%rsp), %r9
	leaq	80(%rsp), %rcx
	movq	%rax, %rdx
	callq	build_unsigned_int
	.cv_loc	6 2 144 4
	movq	40(%rsp), %rcx
	movb	64(%rsp), %dl
	callq	"overload[x]=.9"
.LBB6_2:
	.cv_loc	6 2 146 1
	nop
	addq	$88, %rsp
	retq
.Ltmp13:
.Lfunc_end6:
	.seh_endproc

	.def	int_to_str;
	.scl	2;
	.type	32;
	.endef
	.globl	int_to_str
	.p2align	4, 0x90
int_to_str:
.Lfunc_begin7:
	.cv_func_id 7
	.cv_loc	7 2 149 0
.seh_proc int_to_str
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 48(%rsp)
.Ltmp14:
	.cv_loc	7 2 150 2
	testq	%rdx, %rdx
	.cv_loc	7 2 157 2
	je	.LBB7_1
	.cv_loc	7 2 154 2
	movq	40(%rsp), %rax
	movq	%rax, 56(%rsp)
	.cv_loc	7 2 155 2
	movq	$0, 64(%rsp)
	movabsq	$7378697629483820647, %rcx
	.cv_loc	7 2 157 2
	cmpq	$0, 56(%rsp)
	je	.LBB7_6
	.p2align	4, 0x90
.LBB7_5:
	.cv_loc	7 2 158 3
	movq	%rcx, %rax
	imulq	56(%rsp)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$2, %rdx
	addq	%rax, %rdx
	movq	%rdx, 56(%rsp)
	.cv_loc	7 2 159 2
	incq	64(%rsp)
	.cv_loc	7 2 157 2
	cmpq	$0, 56(%rsp)
	jne	.LBB7_5
.LBB7_6:
	.cv_loc	7 2 160 2
	cmpq	$0, 40(%rsp)
	.cv_loc	7 2 166 1
	jns	.LBB7_8
	.cv_loc	7 2 161 4
	movq	48(%rsp), %rcx
	movb	$45, %dl
	callq	"overload[x]=.9"
	.cv_loc	7 2 162 3
	negq	40(%rsp)
	.cv_loc	7 2 163 3
	incq	64(%rsp)
.LBB7_8:
	.cv_loc	7 2 165 20
	movq	40(%rsp), %rdx
	movq	64(%rsp), %r8
	movq	48(%rsp), %r9
	leaq	80(%rsp), %rcx
	callq	build_unsigned_int
	jmp	.LBB7_2
.LBB7_1:
	.cv_loc	7 2 151 4
	movq	48(%rsp), %rcx
	movb	$48, %dl
	callq	"overload[x]=.9"
.LBB7_2:
	nop
	addq	$88, %rsp
	retq
.Ltmp15:
.Lfunc_end7:
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
	.globl	__real@4024000000000000
	.section	.rdata,"dr",discard,__real@4024000000000000
	.p2align	3
__real@4024000000000000:
	.quad	0x4024000000000000
	.text
	.globl	float_to_str
	.p2align	4, 0x90
float_to_str:
.Lfunc_begin8:
	.cv_func_id 8
	.cv_loc	8 2 169 0
.seh_proc float_to_str
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	vmovsd	%xmm1, 40(%rsp)
	movq	%r8, 48(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
.Ltmp16:
	.cv_loc	8 2 170 2
	vucomisd	%xmm0, %xmm1
	.cv_loc	8 2 185 2
	jae	.LBB8_3
	.cv_loc	8 2 171 4
	movq	48(%rsp), %rcx
	movb	$45, %dl
	callq	"overload[x]=.9"
	.cv_loc	8 2 172 3
	vmovsd	40(%rsp), %xmm0
	vxorpd	__xmm@80000000000000008000000000000000(%rip), %xmm0, %xmm0
	.cv_loc	8 2 175 2
	vcvttsd2si	%xmm0, %rax
	.cv_loc	8 2 176 2
	vcvtsi2sd	%rax, %xmm2, %xmm1
	.cv_loc	8 2 175 2
	movq	%rax, 72(%rsp)
	.cv_loc	8 2 176 2
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 40(%rsp)
	.cv_loc	8 2 178 2
	testq	%rax, %rax
	.cv_loc	8 2 185 2
	je	.LBB8_2
	.cv_loc	8 2 181 17
	movq	72(%rsp), %rdx
	movq	48(%rsp), %r8
	leaq	88(%rsp), %rcx
	callq	int_to_str
	jmp	.LBB8_3
.LBB8_2:
	.cv_loc	8 2 179 4
	movq	48(%rsp), %rcx
	movb	$48, %dl
	callq	"overload[x]=.9"
.LBB8_3:
	.cv_loc	8 2 182 3
	movq	48(%rsp), %rcx
	movb	$46, %dl
	callq	"overload[x]=.9"
	.cv_loc	8 2 183 2
	movq	$0, 56(%rsp)
	vmovsd	__real@4024000000000000(%rip), %xmm0
	.p2align	4, 0x90
.LBB8_4:
	.cv_loc	8 2 185 2
	vmovsd	40(%rsp), %xmm1
	vcvttsd2si	%xmm1, %rax
	vcvtsi2sd	%rax, %xmm3, %xmm2
	vucomisd	%xmm1, %xmm2
	jne	.LBB8_5
	jnp	.LBB8_7
.LBB8_5:
	.cv_loc	8 2 186 3
	vmulsd	40(%rsp), %xmm0, %xmm1
	vmovsd	%xmm1, 40(%rsp)
	.cv_loc	8 2 187 3
	vcvttsd2si	%xmm1, %rax
	testq	%rax, %rax
	.cv_loc	8 2 188 2
	jne	.LBB8_4
	.cv_loc	8 2 187 20
	incq	56(%rsp)
	jmp	.LBB8_4
.LBB8_7:
	.cv_loc	8 2 190 2
	movq	$0, 64(%rsp)
	.p2align	4, 0x90
.LBB8_8:
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	jge	.LBB8_10
	.cv_loc	8 2 191 4
	movq	48(%rsp), %rcx
	movb	$48, %dl
	callq	"overload[x]=.9"
	.cv_loc	8 2 192 2
	incq	64(%rsp)
	jmp	.LBB8_8
.LBB8_10:
	.cv_loc	8 2 194 12
	vcvttsd2si	40(%rsp), %rdx
	movq	48(%rsp), %r8
	leaq	96(%rsp), %rcx
	callq	int_to_str
	.cv_loc	8 2 195 1
	nop
	addq	$104, %rsp
	retq
.Ltmp17:
.Lfunc_end8:
	.seh_endproc

	.def	parse_format;
	.scl	2;
	.type	32;
	.endef
	.globl	parse_format
	.p2align	4, 0x90
parse_format:
.Lfunc_begin9:
	.cv_func_id 9
	.cv_loc	9 2 198 0
.seh_proc parse_format
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$712, %rsp
	.seh_stackalloc 712
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	vmovaps	%xmm6, 560(%rbp)
	.seh_savexmm %xmm6, 688
	.seh_endprologue
	andq	$-256, %rsp
	movq	%rcx, 192(%rsp)
	vxorps	%xmm6, %xmm6, %xmm6
	vmovaps	%xmm6, 128(%rsp)
	movq	%r8, 136(%rsp)
	movq	%rdx, 128(%rsp)
	movq	%r9, 200(%rsp)
.Ltmp18:
	.cv_loc	9 2 199 2
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
	leaq	256(%rsp), %rsi
	movq	%rsi, 208(%rsp)
	leaq	.L__unnamed_4(%rip), %rdx
	leaq	208(%rsp), %rcx
	vzeroupper
	callq	init_builder
	.cv_loc	9 2 200 2
	movq	$0, 184(%rsp)
	.cv_loc	9 2 201 2
	movq	$0, 120(%rsp)
	leaq	240(%rsp), %rdi
	leaq	.L__unnamed_5(%rip), %r14
	leaq	248(%rsp), %r15
	jmp	.LBB9_1
	.p2align	4, 0x90
.LBB9_7:
	.cv_loc	9 2 217 2
	movq	128(%rsp), %rcx
	movq	136(%rsp), %rdx
	movq	120(%rsp), %r8
	callq	"overload[]"
	movq	%rsi, %rcx
	movl	%eax, %edx
	callq	"overload[x]=.9"
	incq	120(%rsp)
.LBB9_1:
	.cv_loc	9 2 201 2
	movq	120(%rsp), %rax
	cmpq	136(%rsp), %rax
	jge	.LBB9_8
	.cv_loc	9 2 202 3
	movq	128(%rsp), %rcx
	movq	136(%rsp), %rdx
	movq	120(%rsp), %r8
	callq	"overload[]"
	cmpb	$37, %al
	.cv_loc	9 2 217 2
	jne	.LBB9_7
	.cv_loc	9 2 203 4
	movq	184(%rsp), %rax
	movq	200(%rsp), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	(%rcx,%rdx), %rbx
	movq	8(%rcx,%rdx), %rcx
	vmovaps	%xmm6, 160(%rsp)
	movq	%rcx, 168(%rsp)
	movq	%rbx, 160(%rsp)
	.cv_loc	9 2 204 4
	incq	%rax
	movq	%rax, 184(%rsp)
	.cv_loc	9 2 205 4
	movl	(%rbx), %eax
	movl	%eax, 156(%rsp)
	.cv_loc	9 2 206 4
	cmpl	$3, %eax
	.cv_loc	9 2 214 3
	jne	.LBB9_5
	.cv_loc	9 2 207 15
	movq	168(%rsp), %rax
	movq	(%rax), %rdx
	movq	%rdi, %rcx
	movq	%rsi, %r8
	callq	int_to_str
	.cv_loc	9 2 217 2
	incq	120(%rsp)
	jmp	.LBB9_1
	.p2align	4, 0x90
.LBB9_5:
	.cv_loc	9 2 208 11
	cmpl	$4, 156(%rsp)
	.cv_loc	9 2 208 6
	jne	.LBB9_7
	.cv_loc	9 2 209 11
	movq	168(%rsp), %rax
	vmovq	(%rax), %xmm1
	movq	%r14, %rcx
	vmovq	%xmm1, %rdx
	callq	printf
	.cv_loc	9 2 210 17
	movq	168(%rsp), %rax
	vmovsd	(%rax), %xmm1
	movq	%r15, %rcx
	movq	%rsi, %r8
	callq	float_to_str
	.cv_loc	9 2 217 2
	incq	120(%rsp)
	jmp	.LBB9_1
.LBB9_8:
	.cv_loc	9 2 218 2
	leaq	256(%rsp), %rsi
	movq	%rsi, %rcx
	movb	$10, %dl
	callq	"overload[x]=.9"
	.cv_loc	9 2 219 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 224(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 216(%rsp)
	leaq	216(%rsp), %rcx
	movq	%rsi, %rdx
	callq	builder_to_string
	.cv_loc	9 2 220 5
	movq	192(%rsp), %rax
	movq	(%rax), %rax
	vmovaps	224(%rsp), %xmm0
	vmovups	%xmm0, (%rax)
	vmovaps	560(%rbp), %xmm6
	leaq	584(%rbp), %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp19:
.Lfunc_end9:
	.seh_endproc

	.def	"print!@* u8!@-";
	.scl	2;
	.type	32;
	.endef
	.globl	"print!@* u8!@-"
	.p2align	4, 0x90
"print!@* u8!@-":
.Lfunc_begin10:
	.cv_func_id 10
	.cv_loc	10 2 224 0
.seh_proc "print!@* u8!@-"
	subq	$152, %rsp
	.seh_stackalloc 152
	vmovaps	%xmm6, 128(%rsp)
	.seh_savexmm %xmm6, 128
	.seh_endprologue
	movq	%r8, 176(%rsp)
	movq	%r9, 184(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rdx, 88(%rsp)
.Ltmp20:
	.cv_loc	10 2 225 2
	vxorps	%xmm6, %xmm6, %xmm6
	vmovaps	%xmm6, 32(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	64(%rsp), %rcx
	callq	to_string
	leaq	176(%rsp), %r9
	.cv_loc	10 2 227 15
	movq	%r9, 96(%rsp)
	.cv_loc	10 2 228 2
	vmovaps	%xmm6, 48(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	32(%rsp), %rdx
	movq	40(%rsp), %r8
	leaq	72(%rsp), %rcx
	callq	parse_format
	leaq	104(%rsp), %rcx
	.cv_loc	10 2 230 2
	callq	get_stdout
	movq	%rax, 112(%rsp)
	.cv_loc	10 2 231 12
	movq	48(%rsp), %r8
	movl	56(%rsp), %r9d
	leaq	120(%rsp), %rcx
	movq	%rax, %rdx
	callq	write_file
	vmovaps	128(%rsp), %xmm6
	.cv_loc	10 2 232 1
	addq	$152, %rsp
	retq
.Ltmp21:
.Lfunc_end10:
	.seh_endproc

	.def	"print!@string!@-";
	.scl	2;
	.type	32;
	.endef
	.globl	"print!@string!@-"
	.p2align	4, 0x90
"print!@string!@-":
.Lfunc_begin11:
	.cv_func_id 11
	.cv_loc	11 2 235 0
.seh_proc "print!@string!@-"
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%r9, 152(%rsp)
	movq	%rcx, 80(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 64(%rsp)
	movq	%r8, 72(%rsp)
	movq	%rdx, 64(%rsp)
	leaq	152(%rsp), %r9
.Ltmp22:
	.cv_loc	11 2 237 15
	movq	%r9, 88(%rsp)
	.cv_loc	11 2 238 2
	vmovaps	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	56(%rsp), %rcx
	callq	parse_format
	leaq	96(%rsp), %rcx
	.cv_loc	11 2 240 2
	callq	get_stdout
	movq	%rax, 104(%rsp)
	.cv_loc	11 2 241 12
	movq	32(%rsp), %r8
	movl	40(%rsp), %r9d
	leaq	112(%rsp), %rcx
	movq	%rax, %rdx
	callq	write_file
	.cv_loc	11 2 242 1
	nop
	addq	$120, %rsp
	retq
.Ltmp23:
.Lfunc_end11:
	.seh_endproc

	.def	copy;
	.scl	2;
	.type	32;
	.endef
	.globl	copy
	.p2align	4, 0x90
copy:
.Lfunc_begin12:
	.cv_func_id 12
	.cv_loc	12 2 246 0
.seh_proc copy
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 8(%rsp)
.Ltmp24:
	.cv_loc	12 2 247 2
	movq	%rdx, 16(%rsp)
	.cv_loc	12 2 248 2
	movq	%r8, 24(%rsp)
	.cv_loc	12 2 249 2
	movq	$0, (%rsp)
	.p2align	4, 0x90
.LBB12_1:
	movq	(%rsp), %rax
	cmpq	8(%rsp), %rax
	jge	.LBB12_3
	.cv_loc	12 2 251 3
	movq	(%rsp), %rax
	movq	24(%rsp), %rcx
	movzbl	(%rcx,%rax), %ecx
	movq	16(%rsp), %rdx
	movb	%cl, (%rdx,%rax)
	.cv_loc	12 2 252 2
	incq	(%rsp)
	jmp	.LBB12_1
.LBB12_3:
	.cv_loc	12 2 253 1
	addq	$56, %rsp
	retq
.Ltmp25:
.Lfunc_end12:
	.seh_endproc

	.def	len;
	.scl	2;
	.type	32;
	.endef
	.globl	len
	.p2align	4, 0x90
len:
.Lfunc_begin13:
	.cv_func_id 13
	.cv_loc	13 2 256 0
.seh_proc len
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
.Ltmp26:
	.cv_loc	13 2 257 2
	movq	$0, (%rsp)
	.p2align	4, 0x90
.LBB13_1:
	.cv_loc	13 2 258 2
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB13_3
	.cv_loc	13 2 258 47
	incq	(%rsp)
	jmp	.LBB13_1
.LBB13_3:
	.cv_loc	13 2 259 5
	movq	(%rsp), %rax
	addq	$24, %rsp
	retq
.Ltmp27:
.Lfunc_end13:
	.seh_endproc

	.def	open_file;
	.scl	2;
	.type	32;
	.endef
	.globl	open_file
	.p2align	4, 0x90
open_file:
.Lfunc_begin14:
	.cv_func_id 14
	.cv_file	3 "E:\\C_Projects\\Apocalypse\\Standard\\Windows.apoc"
	.cv_loc	14 3 27 0
.seh_proc open_file
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 88(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
.Ltmp28:
	.cv_loc	14 3 28 2
	movq	$0, 64(%rsp)
	.cv_loc	14 3 36 1
	testb	$1, %r8b
	je	.LBB14_4
	.cv_loc	14 3 29 41
	orl	$1179785, 64(%rsp)
	.cv_loc	14 3 36 1
	testb	$1, 80(%rsp)
	je	.LBB14_4
	.cv_loc	14 3 30 41
	orl	$1179926, 64(%rsp)
	movb	$1, %al
	.cv_loc	14 3 36 1
	testb	%al, %al
	jne	.LBB14_4
	.cv_loc	14 3 31 41
	orq	$1179808, 64(%rsp)
.LBB14_4:
	.cv_loc	14 3 32 2
	movq	72(%rsp), %rcx
	movq	64(%rsp), %rdx
	movq	$0, 48(%rsp)
	movq	$32, 40(%rsp)
	movq	$4, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	CreateFileA
	movq	%rax, 96(%rsp)
	.cv_loc	14 3 35 5
	addq	$104, %rsp
	retq
.Ltmp29:
.Lfunc_end14:
	.seh_endproc

	.def	write_file;
	.scl	2;
	.type	32;
	.endef
	.globl	write_file
	.p2align	4, 0x90
write_file:
.Lfunc_begin15:
	.cv_func_id 15
	.cv_loc	15 3 39 0
.seh_proc write_file
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movl	%r9d, %eax
	movq	%rcx, 64(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movl	%r9d, 60(%rsp)
.Ltmp30:
	.cv_loc	15 3 40 2
	movq	$0, 56(%rsp)
	.cv_loc	15 3 41 11
	movq	$0, 32(%rsp)
	leaq	56(%rsp), %r9
	movq	%rdx, %rcx
	movq	%r8, %rdx
	movl	%eax, %r8d
	callq	WriteFile
	.cv_loc	15 3 42 2
	movl	56(%rsp), %eax
	cmpl	60(%rsp), %eax
	sete	%al
	sete	55(%rsp)
	.cv_loc	15 3 43 5
	addq	$88, %rsp
	retq
.Ltmp31:
.Lfunc_end15:
	.seh_endproc

	.def	get_stdout;
	.scl	2;
	.type	32;
	.endef
	.globl	get_stdout
	.p2align	4, 0x90
get_stdout:
.Lfunc_begin16:
	.cv_func_id 16
	.cv_loc	16 3 47 0
.seh_proc get_stdout
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
.Ltmp32:
	.cv_loc	16 3 48 5
	movl	$-11, %ecx
	callq	GetStdHandle
	nop
	addq	$40, %rsp
	retq
.Ltmp33:
.Lfunc_end16:
	.seh_endproc

	.def	mem_alloc;
	.scl	2;
	.type	32;
	.endef
	.globl	mem_alloc
	.p2align	4, 0x90
mem_alloc:
.Lfunc_begin17:
	.cv_func_id 17
	.cv_file	4 "E:\\C_Projects\\Apocalypse\\Standard\\C_Standard.apoc"
	.cv_loc	17 4 13 0
.seh_proc mem_alloc
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 32(%rsp)
.Ltmp34:
	.cv_loc	17 4 14 2
	movq	%rdx, %rcx
	callq	malloc
	movq	%rax, 40(%rsp)
	.cv_loc	17 4 15 8
	movq	32(%rsp), %r8
	movq	%rax, %rcx
	xorl	%edx, %edx
	callq	memset
	.cv_loc	17 4 16 5
	movq	40(%rsp), %rax
	addq	$56, %rsp
	retq
.Ltmp35:
.Lfunc_end17:
	.seh_endproc

	.def	"overload[]";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[]"
	.p2align	4, 0x90
"overload[]":
.Lfunc_begin18:
	.cv_func_id 18
	.cv_loc	18 2 60 0
.seh_proc "overload[]"
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	%r8, 16(%rsp)
.Ltmp36:
	.cv_loc	18 2 61 5
	movb	(%rcx,%r8), %al
	addq	$24, %rsp
	retq
.Ltmp37:
.Lfunc_end18:
	.seh_endproc

	.def	"overload+Œw­”î8";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload+Œw­”î8"
	.p2align	4, 0x90
"overload+Œw­”î8":
.Lfunc_begin19:
	.cv_func_id 19
	.cv_loc	19 2 65 0
.seh_proc "overload+Œw­”î8"
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%r8, 72(%rsp)
.Ltmp38:
	.cv_loc	19 2 66 2
	vmovaps	%xmm0, 48(%rsp)
	leaq	88(%rsp), %rcx
	.cv_loc	19 2 67 2
	movq	%r8, %rdx
	callq	len
	movq	%rax, 80(%rsp)
	.cv_loc	19 2 68 2
	addq	40(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	96(%rsp), %rcx
	.cv_loc	19 2 69 2
	movq	%rax, %rdx
	callq	mem_alloc
	movq	%rax, 48(%rsp)
	.cv_loc	19 2 70 6
	movq	32(%rsp), %r8
	movq	40(%rsp), %r9
	leaq	104(%rsp), %rcx
	movq	%rax, %rdx
	callq	copy
	.cv_loc	19 2 71 6
	movq	48(%rsp), %rdx
	addq	40(%rsp), %rdx
	movq	72(%rsp), %r8
	movq	80(%rsp), %r9
	leaq	112(%rsp), %rcx
	callq	copy
	.cv_loc	19 2 72 5
	movq	48(%rsp), %rax
	movq	56(%rsp), %rdx
	addq	$120, %rsp
	retq
.Ltmp39:
.Lfunc_end19:
	.seh_endproc

	.def	"overload[x]=";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[x]="
	.p2align	4, 0x90
"overload[x]=":
.Lfunc_begin20:
	.cv_func_id 20
	.cv_loc	20 2 76 0
.seh_proc "overload[x]="
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$112, %rsp
	.seh_stackalloc 112
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 80(%rsp)
	leaq	96(%rsp), %rcx
.Ltmp40:
	.cv_loc	20 2 77 2
	callq	len
	movq	%rax, 72(%rsp)
	.cv_loc	20 2 78 2
	movq	64(%rsp), %rcx
	movq	256(%rcx), %rcx
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	testq	%rdx, %rdx
	je	.LBB20_1
	je	.LBB20_1
	cqto
	idivq	%rcx
	jmp	.LBB20_4
.LBB20_1:
	xorl	%edx, %edx
	divl	%ecx
.LBB20_4:
	movq	%rax, 88(%rsp)
	.cv_loc	20 2 79 2
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)
	.cv_loc	20 2 80 2
	movq	$0, 48(%rsp)
	leaq	104(%rsp), %rsi
	jmp	.LBB20_5
	.p2align	4, 0x90
.LBB20_8:
	.cv_loc	20 2 83 7
	movq	40(%rsp), %rdx
	addq	256(%rdx), %rdx
	movq	48(%rsp), %r8
	shlq	$8, %r8
	addq	80(%rsp), %r8
	movq	56(%rsp), %r9
	movq	%rsi, %rcx
	callq	copy
	.cv_loc	20 2 84 3
	movq	40(%rsp), %rax
	movq	56(%rsp), %rcx
	addq	%rcx, 256(%rax)
	.cv_loc	20 2 85 3
	addq	$-256, 72(%rsp)
	.cv_loc	20 2 86 3
	movq	40(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 40(%rsp)
	.cv_loc	20 2 87 2
	incq	48(%rsp)
.LBB20_5:
	.cv_loc	20 2 80 2
	movq	48(%rsp), %rax
	decq	%rax
	cmpq	88(%rsp), %rax
	jge	.LBB20_9
	.cv_loc	20 2 81 3
	movq	72(%rsp), %rax
	movq	%rax, 56(%rsp)
	.cv_loc	20 2 82 3
	cmpq	$256, %rax
	.cv_loc	20 2 87 2
	jle	.LBB20_8
	.cv_loc	20 2 82 37
	movq	$256, 56(%rsp)
	jmp	.LBB20_8
.LBB20_9:
	.cv_loc	20 2 89 1
	addq	$112, %rsp
	popq	%rsi
	retq
.Ltmp41:
.Lfunc_end20:
	.seh_endproc

	.def	"overload[x]=.9";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[x]=.9"
	.p2align	4, 0x90
"overload[x]=.9":
.Lfunc_begin21:
	.cv_func_id 21
	.cv_loc	21 2 92 0
.seh_proc "overload[x]=.9"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$64, %rsp
	.seh_stackalloc 64
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movb	%dl, 39(%rsp)
.Ltmp42:
	.cv_loc	21 2 93 2
	movq	%rcx, 40(%rsp)
	leaq	56(%rsp), %rsi
	.p2align	4, 0x90
.LBB21_1:
	.cv_loc	21 2 94 2
	movq	40(%rsp), %rax
	testq	%rax, %rax
	je	.LBB21_6
	cmpq	$256, 256(%rax)
	jne	.LBB21_6
	.cv_loc	21 2 95 3
	movq	40(%rsp), %rax
	cmpq	$0, 264(%rax)
	.cv_loc	21 2 100 2
	jne	.LBB21_1
	.cv_loc	21 2 96 4
	movl	$272, %edx
	movq	%rsi, %rcx
	callq	mem_alloc
	movq	40(%rsp), %rcx
	movq	%rax, 264(%rcx)
	.cv_loc	21 2 98 3
	movq	40(%rsp), %rax
	cmpq	$256, 256(%rax)
	.cv_loc	21 2 100 2
	jne	.LBB21_1
	.cv_loc	21 2 99 4
	movq	40(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 40(%rsp)
	jmp	.LBB21_1
.LBB21_6:
	.cv_loc	21 2 101 2
	movb	39(%rsp), %al
	movq	40(%rsp), %rcx
	movq	256(%rcx), %rdx
	movb	%al, (%rcx,%rdx)
	.cv_loc	21 2 102 2
	movq	40(%rsp), %rax
	incq	256(%rax)
	.cv_loc	21 2 103 1
	addq	$64, %rsp
	popq	%rsi
	retq
.Ltmp43:
.Lfunc_end21:
	.seh_endproc

	.def	overload;
	.scl	2;
	.type	32;
	.endef
	.globl	overload
	.p2align	4, 0x90
overload:
.Lfunc_begin22:
	.cv_func_id 22
	.cv_loc	22 2 106 0
.seh_proc overload
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 48(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%r8, 80(%rsp)
.Ltmp44:
	.cv_loc	22 2 107 2
	vmovaps	%xmm0, 64(%rsp)
	movq	%r8, 64(%rsp)
	leaq	88(%rsp), %rcx
	movq	%r8, %rdx
	callq	len
	movq	%rax, 72(%rsp)
	.cv_loc	22 2 108 5
	movq	48(%rsp), %rdx
	movq	56(%rsp), %r8
	movq	64(%rsp), %r9
	movq	%rax, 32(%rsp)
	leaq	96(%rsp), %rcx
	callq	compare
	nop
	addq	$104, %rsp
	retq
.Ltmp45:
.Lfunc_end22:
	.seh_endproc

	.section	.rdata,"dr"
	.globl	global_var
	.p2align	3
global_var:
	.quad	256

	.globl	global_var.1
	.p2align	3
global_var.1:
	.quad	65536

	.globl	global_var.2
	.p2align	3
global_var.2:
	.quad	131072

	.globl	global_var.3
	.p2align	3
global_var.3:
	.quad	262144

	.globl	global_var.4
	.p2align	3
global_var.4:
	.quad	524288

	.globl	global_var.5
	.p2align	3
global_var.5:
	.quad	1048576

	.globl	global_var.6
global_var.6:
	.byte	1

	.globl	global_var.7
global_var.7:
	.byte	0

	.globl	global_var.8
	.p2align	3
global_var.8:
	.quad	0

.L__unnamed_1:
	.asciz	"my big string"

.L__unnamed_2:
	.asciz	" more text %"

.L__unnamed_3:
	.asciz	"Number: %"

.L__unnamed_4:
	.zero	1

.L__unnamed_5:
	.asciz	"int: %f\n"

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp47-.Ltmp46
.Ltmp46:
	.short	.Ltmp49-.Ltmp48
.Ltmp48:
	.short	4353
	.long	0
	.byte	0
	.p2align	2
.Ltmp49:
	.short	.Ltmp51-.Ltmp50
.Ltmp50:
	.short	4412
	.long	0
	.short	208
	.short	0
	.short	0
	.short	0
	.short	0
	.short	15000
	.short	0
	.short	0
	.short	0
	.asciz	"Apoc Compiler"
	.p2align	2
.Ltmp51:
.Ltmp47:
	.p2align	2
	.long	241
	.long	.Ltmp53-.Ltmp52
.Ltmp52:
	.short	.Ltmp55-.Ltmp54
.Ltmp54:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-main
	.long	0
	.long	0
	.long	4098
	.secrel32	main
	.secidx	main
	.byte	0
	.asciz	"main"
	.p2align	2
.Ltmp55:
	.short	.Ltmp57-.Ltmp56
.Ltmp56:
	.short	4114
	.long	752
	.long	0
	.long	0
	.long	8
	.long	0
	.short	0
	.long	1196032
	.p2align	2
.Ltmp57:
	.short	.Ltmp59-.Ltmp58
.Ltmp58:
	.short	4414
	.long	4103
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp59:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 256
	.short	.Ltmp61-.Ltmp60
.Ltmp60:
	.short	4414
	.long	4108
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp61:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp53:
	.p2align	2
	.cv_linetable	0, main, .Lfunc_end0
	.long	241
	.long	.Ltmp63-.Ltmp62
.Ltmp62:
	.short	.Ltmp65-.Ltmp64
.Ltmp64:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-builder_to_string
	.long	0
	.long	0
	.long	4112
	.secrel32	builder_to_string
	.secidx	builder_to_string
	.byte	0
	.asciz	"builder_to_string"
	.p2align	2
.Ltmp65:
	.short	.Ltmp67-.Ltmp66
.Ltmp66:
	.short	4114
	.long	144
	.long	0
	.long	0
	.long	8
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp67:
	.short	.Ltmp69-.Ltmp68
.Ltmp68:
	.short	4414
	.long	4101
	.short	1
	.asciz	"builder"
	.p2align	2
.Ltmp69:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 96
	.short	.Ltmp71-.Ltmp70
.Ltmp70:
	.short	4414
	.long	4108
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp71:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 64
	.short	.Ltmp73-.Ltmp72
.Ltmp72:
	.short	4414
	.long	19
	.short	0
	.asciz	"out_len"
	.p2align	2
.Ltmp73:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 48
	.short	.Ltmp75-.Ltmp74
.Ltmp74:
	.short	4414
	.long	4101
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp75:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 40
	.short	.Ltmp77-.Ltmp76
.Ltmp76:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp77:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 104
	.short	.Ltmp79-.Ltmp78
.Ltmp78:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp79:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 56
	.short	.Ltmp81-.Ltmp80
.Ltmp80:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp81:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 112
	.short	2
	.short	4431
.Ltmp63:
	.p2align	2
	.cv_linetable	1, builder_to_string, .Lfunc_end1
	.long	241
	.long	.Ltmp83-.Ltmp82
.Ltmp82:
	.short	.Ltmp85-.Ltmp84
.Ltmp84:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end2-init_builder
	.long	0
	.long	0
	.long	4115
	.secrel32	init_builder
	.secidx	init_builder
	.byte	0
	.asciz	"init_builder"
	.p2align	2
.Ltmp85:
	.short	.Ltmp87-.Ltmp86
.Ltmp86:
	.short	4114
	.long	752
	.long	0
	.long	0
	.long	8
	.long	0
	.short	0
	.long	1196032
	.p2align	2
.Ltmp87:
	.short	.Ltmp89-.Ltmp88
.Ltmp88:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp89:
	.cv_def_range	 .Ltmp4 .Ltmp5, reg_rel, 335, 0, 232
	.short	.Ltmp91-.Ltmp90
.Ltmp90:
	.short	4414
	.long	4103
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp91:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 256
	.short	.Ltmp93-.Ltmp92
.Ltmp92:
	.short	4414
	.long	4101
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp93:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 208
	.short	.Ltmp95-.Ltmp94
.Ltmp94:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp95:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 224
	.short	.Ltmp97-.Ltmp96
.Ltmp96:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp97:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 216
	.short	2
	.short	4431
.Ltmp83:
	.p2align	2
	.cv_linetable	2, init_builder, .Lfunc_end2
	.long	241
	.long	.Ltmp99-.Ltmp98
.Ltmp98:
	.short	.Ltmp101-.Ltmp100
.Ltmp100:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end3-compare
	.long	0
	.long	0
	.long	4118
	.secrel32	compare
	.secidx	compare
	.byte	0
	.asciz	"compare"
	.p2align	2
.Ltmp101:
	.short	.Ltmp103-.Ltmp102
.Ltmp102:
	.short	4114
	.long	56
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp103:
	.short	.Ltmp105-.Ltmp104
.Ltmp104:
	.short	4414
	.long	4108
	.short	1
	.asciz	"str1"
	.p2align	2
.Ltmp105:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 16
	.short	.Ltmp107-.Ltmp106
.Ltmp106:
	.short	4414
	.long	4108
	.short	1
	.asciz	"str2"
	.p2align	2
.Ltmp107:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 32
	.short	.Ltmp109-.Ltmp108
.Ltmp108:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp109:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 8
	.short	2
	.short	4431
.Ltmp99:
	.p2align	2
	.cv_linetable	3, compare, .Lfunc_end3
	.long	241
	.long	.Ltmp111-.Ltmp110
.Ltmp110:
	.short	.Ltmp113-.Ltmp112
.Ltmp112:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end4-to_string
	.long	0
	.long	0
	.long	4119
	.secrel32	to_string
	.secidx	to_string
	.byte	0
	.asciz	"to_string"
	.p2align	2
.Ltmp113:
	.short	.Ltmp115-.Ltmp114
.Ltmp114:
	.short	4114
	.long	120
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp115:
	.short	.Ltmp117-.Ltmp116
.Ltmp116:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp117:
	.cv_def_range	 .Ltmp8 .Ltmp9, frame_ptr_rel, 80
	.short	.Ltmp119-.Ltmp118
.Ltmp118:
	.short	4414
	.long	19
	.short	0
	.asciz	"text_len"
	.p2align	2
.Ltmp119:
	.cv_def_range	 .Ltmp8 .Ltmp9, frame_ptr_rel, 40
	.short	.Ltmp121-.Ltmp120
.Ltmp120:
	.short	4414
	.long	1539
	.short	0
	.asciz	"allocated"
	.p2align	2
.Ltmp121:
	.cv_def_range	 .Ltmp8 .Ltmp9, frame_ptr_rel, 88
	.short	.Ltmp123-.Ltmp122
.Ltmp122:
	.short	4414
	.long	4108
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp123:
	.cv_def_range	 .Ltmp8 .Ltmp9, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp111:
	.p2align	2
	.cv_linetable	4, to_string, .Lfunc_end4
	.long	241
	.long	.Ltmp125-.Ltmp124
.Ltmp124:
	.short	.Ltmp127-.Ltmp126
.Ltmp126:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end5-terminate_string
	.long	0
	.long	0
	.long	4122
	.secrel32	terminate_string
	.secidx	terminate_string
	.byte	0
	.asciz	"terminate_string"
	.p2align	2
.Ltmp127:
	.short	.Ltmp129-.Ltmp128
.Ltmp128:
	.short	4114
	.long	88
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp129:
	.short	.Ltmp131-.Ltmp130
.Ltmp130:
	.short	4414
	.long	4108
	.short	1
	.asciz	"str"
	.p2align	2
.Ltmp131:
	.cv_def_range	 .Ltmp10 .Ltmp11, frame_ptr_rel, 48
	.short	.Ltmp133-.Ltmp132
.Ltmp132:
	.short	4414
	.long	4108
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp133:
	.cv_def_range	 .Ltmp10 .Ltmp11, frame_ptr_rel, 32
	.short	2
	.short	4431
.Ltmp125:
	.p2align	2
	.cv_linetable	5, terminate_string, .Lfunc_end5
	.long	241
	.long	.Ltmp135-.Ltmp134
.Ltmp134:
	.short	.Ltmp137-.Ltmp136
.Ltmp136:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end6-build_unsigned_int
	.long	0
	.long	0
	.long	4125
	.secrel32	build_unsigned_int
	.secidx	build_unsigned_int
	.byte	0
	.asciz	"build_unsigned_int"
	.p2align	2
.Ltmp137:
	.short	.Ltmp139-.Ltmp138
.Ltmp138:
	.short	4114
	.long	88
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp139:
	.short	.Ltmp141-.Ltmp140
.Ltmp140:
	.short	4414
	.long	117
	.short	1
	.asciz	"num"
	.p2align	2
.Ltmp141:
	.cv_def_range	 .Ltmp12 .Ltmp13, frame_ptr_rel, 48
	.short	.Ltmp143-.Ltmp142
.Ltmp142:
	.short	4414
	.long	19
	.short	1
	.asciz	"num_size"
	.p2align	2
.Ltmp143:
	.cv_def_range	 .Ltmp12 .Ltmp13, frame_ptr_rel, 56
	.short	.Ltmp145-.Ltmp144
.Ltmp144:
	.short	4414
	.long	4101
	.short	1
	.asciz	"builder"
	.p2align	2
.Ltmp145:
	.cv_def_range	 .Ltmp12 .Ltmp13, frame_ptr_rel, 40
	.short	.Ltmp147-.Ltmp146
.Ltmp146:
	.short	4414
	.long	117
	.short	0
	.asciz	"digit"
	.p2align	2
.Ltmp147:
	.cv_def_range	 .Ltmp12 .Ltmp13, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp135:
	.p2align	2
	.cv_linetable	6, build_unsigned_int, .Lfunc_end6
	.long	241
	.long	.Ltmp149-.Ltmp148
.Ltmp148:
	.short	.Ltmp151-.Ltmp150
.Ltmp150:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end7-int_to_str
	.long	0
	.long	0
	.long	4128
	.secrel32	int_to_str
	.secidx	int_to_str
	.byte	0
	.asciz	"int_to_str"
	.p2align	2
.Ltmp151:
	.short	.Ltmp153-.Ltmp152
.Ltmp152:
	.short	4114
	.long	88
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp153:
	.short	.Ltmp155-.Ltmp154
.Ltmp154:
	.short	4414
	.long	19
	.short	1
	.asciz	"num"
	.p2align	2
.Ltmp155:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 40
	.short	.Ltmp157-.Ltmp156
.Ltmp156:
	.short	4414
	.long	4101
	.short	1
	.asciz	"builder"
	.p2align	2
.Ltmp157:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 48
	.short	.Ltmp159-.Ltmp158
.Ltmp158:
	.short	4414
	.long	19
	.short	0
	.asciz	"div_copy"
	.p2align	2
.Ltmp159:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 56
	.short	.Ltmp161-.Ltmp160
.Ltmp160:
	.short	4414
	.long	19
	.short	0
	.asciz	"num_size"
	.p2align	2
.Ltmp161:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp149:
	.p2align	2
	.cv_linetable	7, int_to_str, .Lfunc_end7
	.long	241
	.long	.Ltmp163-.Ltmp162
.Ltmp162:
	.short	.Ltmp165-.Ltmp164
.Ltmp164:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end8-float_to_str
	.long	0
	.long	0
	.long	4131
	.secrel32	float_to_str
	.secidx	float_to_str
	.byte	0
	.asciz	"float_to_str"
	.p2align	2
.Ltmp165:
	.short	.Ltmp167-.Ltmp166
.Ltmp166:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp167:
	.short	.Ltmp169-.Ltmp168
.Ltmp168:
	.short	4414
	.long	65
	.short	1
	.asciz	"num"
	.p2align	2
.Ltmp169:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 40
	.short	.Ltmp171-.Ltmp170
.Ltmp170:
	.short	4414
	.long	4101
	.short	1
	.asciz	"builder"
	.p2align	2
.Ltmp171:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 48
	.short	.Ltmp173-.Ltmp172
.Ltmp172:
	.short	4414
	.long	117
	.short	0
	.asciz	"decimal"
	.p2align	2
.Ltmp173:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 72
	.short	.Ltmp175-.Ltmp174
.Ltmp174:
	.short	4414
	.long	19
	.short	0
	.asciz	"zeroes_to_append"
	.p2align	2
.Ltmp175:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 56
	.short	.Ltmp177-.Ltmp176
.Ltmp176:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp177:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp163:
	.p2align	2
	.cv_linetable	8, float_to_str, .Lfunc_end8
	.long	241
	.long	.Ltmp179-.Ltmp178
.Ltmp178:
	.short	.Ltmp181-.Ltmp180
.Ltmp180:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end9-parse_format
	.long	0
	.long	0
	.long	4174
	.secrel32	parse_format
	.secidx	parse_format
	.byte	0
	.asciz	"parse_format"
	.p2align	2
.Ltmp181:
	.short	.Ltmp183-.Ltmp182
.Ltmp182:
	.short	4114
	.long	720
	.long	0
	.long	0
	.long	40
	.long	0
	.short	0
	.long	1196032
	.p2align	2
.Ltmp183:
	.short	.Ltmp185-.Ltmp184
.Ltmp184:
	.short	4414
	.long	4108
	.short	1
	.asciz	"format"
	.p2align	2
.Ltmp185:
	.cv_def_range	 .Ltmp18 .Ltmp19, reg_rel, 335, 0, 128
	.short	.Ltmp187-.Ltmp186
.Ltmp186:
	.short	4414
	.long	4133
	.short	1
	.asciz	"list"
	.p2align	2
.Ltmp187:
	.cv_def_range	 .Ltmp18 .Ltmp19, reg_rel, 335, 0, 200
	.short	.Ltmp189-.Ltmp188
.Ltmp188:
	.short	4414
	.long	4103
	.short	0
	.asciz	"builder"
	.p2align	2
.Ltmp189:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 256
	.short	.Ltmp191-.Ltmp190
.Ltmp190:
	.short	4414
	.long	19
	.short	0
	.asciz	"list_index"
	.p2align	2
.Ltmp191:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 184
	.short	.Ltmp193-.Ltmp192
.Ltmp192:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp193:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 120
	.short	.Ltmp195-.Ltmp194
.Ltmp194:
	.short	4414
	.long	4108
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp195:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 224
	.short	.Ltmp197-.Ltmp196
.Ltmp196:
	.short	4414
	.long	4139
	.short	0
	.asciz	"item"
	.p2align	2
.Ltmp197:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 160
	.short	.Ltmp199-.Ltmp198
.Ltmp198:
	.short	4414
	.long	116
	.short	0
	.asciz	"type"
	.p2align	2
.Ltmp199:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 156
	.short	2
	.short	4431
.Ltmp179:
	.p2align	2
	.cv_linetable	9, parse_format, .Lfunc_end9
	.long	241
	.long	.Ltmp201-.Ltmp200
.Ltmp200:
	.short	.Ltmp203-.Ltmp202
.Ltmp202:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end10-"print!@* u8!@-"
	.long	0
	.long	0
	.long	4175
	.secrel32	"print!@* u8!@-"
	.secidx	"print!@* u8!@-"
	.byte	0
	.asciz	"print!@* u8!@-"
	.p2align	2
.Ltmp203:
	.short	.Ltmp205-.Ltmp204
.Ltmp204:
	.short	4114
	.long	152
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp205:
	.short	.Ltmp207-.Ltmp206
.Ltmp206:
	.short	4414
	.long	1568
	.short	1
	.asciz	"format"
	.p2align	2
.Ltmp207:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 88
	.short	.Ltmp209-.Ltmp208
.Ltmp208:
	.short	4414
	.long	4108
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp209:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 32
	.short	.Ltmp211-.Ltmp210
.Ltmp210:
	.short	4414
	.long	4133
	.short	0
	.asciz	"list"
	.p2align	2
.Ltmp211:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 96
	.short	.Ltmp213-.Ltmp212
.Ltmp212:
	.short	4414
	.long	4108
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp213:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 48
	.short	.Ltmp215-.Ltmp214
.Ltmp214:
	.short	4414
	.long	1539
	.short	0
	.asciz	"stdout"
	.p2align	2
.Ltmp215:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 112
	.short	2
	.short	4431
.Ltmp201:
	.p2align	2
	.cv_linetable	10, "print!@* u8!@-", .Lfunc_end10
	.long	241
	.long	.Ltmp217-.Ltmp216
.Ltmp216:
	.short	.Ltmp219-.Ltmp218
.Ltmp218:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end11-"print!@string!@-"
	.long	0
	.long	0
	.long	4176
	.secrel32	"print!@string!@-"
	.secidx	"print!@string!@-"
	.byte	0
	.asciz	"print!@string!@-"
	.p2align	2
.Ltmp219:
	.short	.Ltmp221-.Ltmp220
.Ltmp220:
	.short	4114
	.long	120
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp221:
	.short	.Ltmp223-.Ltmp222
.Ltmp222:
	.short	4414
	.long	4108
	.short	1
	.asciz	"format"
	.p2align	2
.Ltmp223:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 64
	.short	.Ltmp225-.Ltmp224
.Ltmp224:
	.short	4414
	.long	4133
	.short	0
	.asciz	"list"
	.p2align	2
.Ltmp225:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 88
	.short	.Ltmp227-.Ltmp226
.Ltmp226:
	.short	4414
	.long	4108
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp227:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 32
	.short	.Ltmp229-.Ltmp228
.Ltmp228:
	.short	4414
	.long	1539
	.short	0
	.asciz	"stdout"
	.p2align	2
.Ltmp229:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 104
	.short	2
	.short	4431
.Ltmp217:
	.p2align	2
	.cv_linetable	11, "print!@string!@-", .Lfunc_end11
	.long	241
	.long	.Ltmp231-.Ltmp230
.Ltmp230:
	.short	.Ltmp233-.Ltmp232
.Ltmp232:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end12-copy
	.long	0
	.long	0
	.long	4179
	.secrel32	copy
	.secidx	copy
	.byte	0
	.asciz	"copy"
	.p2align	2
.Ltmp233:
	.short	.Ltmp235-.Ltmp234
.Ltmp234:
	.short	4114
	.long	56
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp235:
	.short	.Ltmp237-.Ltmp236
.Ltmp236:
	.short	4414
	.long	1539
	.short	1
	.asciz	"dst"
	.p2align	2
.Ltmp237:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 40
	.short	.Ltmp239-.Ltmp238
.Ltmp238:
	.short	4414
	.long	1539
	.short	1
	.asciz	"src"
	.p2align	2
.Ltmp239:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 48
	.short	.Ltmp241-.Ltmp240
.Ltmp240:
	.short	4414
	.long	117
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp241:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 8
	.short	.Ltmp243-.Ltmp242
.Ltmp242:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a0"
	.p2align	2
.Ltmp243:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 16
	.short	.Ltmp245-.Ltmp244
.Ltmp244:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a1"
	.p2align	2
.Ltmp245:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 24
	.short	.Ltmp247-.Ltmp246
.Ltmp246:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp247:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 0
	.short	2
	.short	4431
.Ltmp231:
	.p2align	2
	.cv_linetable	12, copy, .Lfunc_end12
	.long	241
	.long	.Ltmp249-.Ltmp248
.Ltmp248:
	.short	.Ltmp251-.Ltmp250
.Ltmp250:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end13-len
	.long	0
	.long	0
	.long	4181
	.secrel32	len
	.secidx	len
	.byte	0
	.asciz	"len"
	.p2align	2
.Ltmp251:
	.short	.Ltmp253-.Ltmp252
.Ltmp252:
	.short	4114
	.long	24
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp253:
	.short	.Ltmp255-.Ltmp254
.Ltmp254:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp255:
	.cv_def_range	 .Ltmp26 .Ltmp27, frame_ptr_rel, 8
	.short	.Ltmp257-.Ltmp256
.Ltmp256:
	.short	4414
	.long	19
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp257:
	.cv_def_range	 .Ltmp26 .Ltmp27, frame_ptr_rel, 0
	.short	2
	.short	4431
.Ltmp249:
	.p2align	2
	.cv_linetable	13, len, .Lfunc_end13
	.long	241
	.long	.Ltmp259-.Ltmp258
.Ltmp258:
	.short	.Ltmp261-.Ltmp260
.Ltmp260:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end14-open_file
	.long	0
	.long	0
	.long	4184
	.secrel32	open_file
	.secidx	open_file
	.byte	0
	.asciz	"open_file"
	.p2align	2
.Ltmp261:
	.short	.Ltmp263-.Ltmp262
.Ltmp262:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp263:
	.short	.Ltmp265-.Ltmp264
.Ltmp264:
	.short	4414
	.long	1568
	.short	1
	.asciz	"f_name"
	.p2align	2
.Ltmp265:
	.cv_def_range	 .Ltmp28 .Ltmp29, frame_ptr_rel, 72
	.short	.Ltmp267-.Ltmp266
.Ltmp266:
	.short	4414
	.long	19
	.short	1
	.asciz	"access"
	.p2align	2
.Ltmp267:
	.cv_def_range	 .Ltmp28 .Ltmp29, frame_ptr_rel, 80
	.short	.Ltmp269-.Ltmp268
.Ltmp268:
	.short	4414
	.long	19
	.short	0
	.asciz	"win_access"
	.p2align	2
.Ltmp269:
	.cv_def_range	 .Ltmp28 .Ltmp29, frame_ptr_rel, 64
	.short	.Ltmp271-.Ltmp270
.Ltmp270:
	.short	4414
	.long	1539
	.short	0
	.asciz	"file"
	.p2align	2
.Ltmp271:
	.cv_def_range	 .Ltmp28 .Ltmp29, frame_ptr_rel, 96
	.short	2
	.short	4431
.Ltmp259:
	.p2align	2
	.cv_linetable	14, open_file, .Lfunc_end14
	.long	241
	.long	.Ltmp273-.Ltmp272
.Ltmp272:
	.short	.Ltmp275-.Ltmp274
.Ltmp274:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end15-write_file
	.long	0
	.long	0
	.long	4187
	.secrel32	write_file
	.secidx	write_file
	.byte	0
	.asciz	"write_file"
	.p2align	2
.Ltmp275:
	.short	.Ltmp277-.Ltmp276
.Ltmp276:
	.short	4114
	.long	88
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp277:
	.short	.Ltmp279-.Ltmp278
.Ltmp278:
	.short	4414
	.long	1539
	.short	1
	.asciz	"file"
	.p2align	2
.Ltmp279:
	.cv_def_range	 .Ltmp30 .Ltmp31, frame_ptr_rel, 72
	.short	.Ltmp281-.Ltmp280
.Ltmp280:
	.short	4414
	.long	1539
	.short	1
	.asciz	"data"
	.p2align	2
.Ltmp281:
	.cv_def_range	 .Ltmp30 .Ltmp31, frame_ptr_rel, 80
	.short	.Ltmp283-.Ltmp282
.Ltmp282:
	.short	4414
	.long	0
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp283:
	.cv_def_range	 .Ltmp30 .Ltmp31, frame_ptr_rel, 60
	.short	.Ltmp285-.Ltmp284
.Ltmp284:
	.short	4414
	.long	0
	.short	0
	.asciz	"written"
	.p2align	2
.Ltmp285:
	.cv_def_range	 .Ltmp30 .Ltmp31, frame_ptr_rel, 56
	.short	.Ltmp287-.Ltmp286
.Ltmp286:
	.short	4414
	.long	48
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp287:
	.cv_def_range	 .Ltmp30 .Ltmp31, frame_ptr_rel, 55
	.short	2
	.short	4431
.Ltmp273:
	.p2align	2
	.cv_linetable	15, write_file, .Lfunc_end15
	.long	241
	.long	.Ltmp289-.Ltmp288
.Ltmp288:
	.short	.Ltmp291-.Ltmp290
.Ltmp290:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end16-get_stdout
	.long	0
	.long	0
	.long	4189
	.secrel32	get_stdout
	.secidx	get_stdout
	.byte	0
	.asciz	"get_stdout"
	.p2align	2
.Ltmp291:
	.short	.Ltmp293-.Ltmp292
.Ltmp292:
	.short	4114
	.long	40
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp293:
	.short	2
	.short	4431
.Ltmp289:
	.p2align	2
	.cv_linetable	16, get_stdout, .Lfunc_end16
	.long	241
	.long	.Ltmp295-.Ltmp294
.Ltmp294:
	.short	.Ltmp297-.Ltmp296
.Ltmp296:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end17-mem_alloc
	.long	0
	.long	0
	.long	4192
	.secrel32	mem_alloc
	.secidx	mem_alloc
	.byte	0
	.asciz	"mem_alloc"
	.p2align	2
.Ltmp297:
	.short	.Ltmp299-.Ltmp298
.Ltmp298:
	.short	4114
	.long	56
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp299:
	.short	.Ltmp301-.Ltmp300
.Ltmp300:
	.short	4414
	.long	117
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp301:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 32
	.short	.Ltmp303-.Ltmp302
.Ltmp302:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp303:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 40
	.short	2
	.short	4431
.Ltmp295:
	.p2align	2
	.cv_linetable	17, mem_alloc, .Lfunc_end17
	.long	241
	.long	.Ltmp305-.Ltmp304
.Ltmp304:
	.short	.Ltmp307-.Ltmp306
.Ltmp306:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end18-"overload[]"
	.long	0
	.long	0
	.long	4195
	.secrel32	"overload[]"
	.secidx	"overload[]"
	.byte	0
	.asciz	"overload[]"
	.p2align	2
.Ltmp307:
	.short	.Ltmp309-.Ltmp308
.Ltmp308:
	.short	4114
	.long	24
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp309:
	.short	.Ltmp311-.Ltmp310
.Ltmp310:
	.short	4414
	.long	19
	.short	1
	.asciz	"index"
	.p2align	2
.Ltmp311:
	.cv_def_range	 .Ltmp36 .Ltmp37, frame_ptr_rel, 16
	.short	.Ltmp313-.Ltmp312
.Ltmp312:
	.short	4414
	.long	4108
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp313:
	.cv_def_range	 .Ltmp36 .Ltmp37, frame_ptr_rel, 0
	.short	2
	.short	4431
.Ltmp305:
	.p2align	2
	.cv_linetable	18, "overload[]", .Lfunc_end18
	.long	241
	.long	.Ltmp315-.Ltmp314
.Ltmp314:
	.short	.Ltmp317-.Ltmp316
.Ltmp316:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end19-"overload+Œw­”î8"
	.long	0
	.long	0
	.long	4198
	.secrel32	"overload+Œw­”î8"
	.secidx	"overload+Œw­”î8"
	.byte	0
	.asciz	"overload+\214w\255\224\3568"
	.p2align	2
.Ltmp317:
	.short	.Ltmp319-.Ltmp318
.Ltmp318:
	.short	4114
	.long	120
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp319:
	.short	.Ltmp321-.Ltmp320
.Ltmp320:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp321:
	.cv_def_range	 .Ltmp38 .Ltmp39, frame_ptr_rel, 72
	.short	.Ltmp323-.Ltmp322
.Ltmp322:
	.short	4414
	.long	4108
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp323:
	.cv_def_range	 .Ltmp38 .Ltmp39, frame_ptr_rel, 32
	.short	.Ltmp325-.Ltmp324
.Ltmp324:
	.short	4414
	.long	4108
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp325:
	.cv_def_range	 .Ltmp38 .Ltmp39, frame_ptr_rel, 48
	.short	.Ltmp327-.Ltmp326
.Ltmp326:
	.short	4414
	.long	19
	.short	0
	.asciz	"text_len"
	.p2align	2
.Ltmp327:
	.cv_def_range	 .Ltmp38 .Ltmp39, frame_ptr_rel, 80
	.short	2
	.short	4431
.Ltmp315:
	.p2align	2
	.cv_linetable	19, "overload+Œw­”î8", .Lfunc_end19
	.long	241
	.long	.Ltmp329-.Ltmp328
.Ltmp328:
	.short	.Ltmp331-.Ltmp330
.Ltmp330:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end20-"overload[x]="
	.long	0
	.long	0
	.long	4201
	.secrel32	"overload[x]="
	.secidx	"overload[x]="
	.byte	0
	.asciz	"overload[x]="
	.p2align	2
.Ltmp331:
	.short	.Ltmp333-.Ltmp332
.Ltmp332:
	.short	4114
	.long	112
	.long	0
	.long	0
	.long	8
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp333:
	.short	.Ltmp335-.Ltmp334
.Ltmp334:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp335:
	.cv_def_range	 .Ltmp40 .Ltmp41, frame_ptr_rel, 80
	.short	.Ltmp337-.Ltmp336
.Ltmp336:
	.short	4414
	.long	4101
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp337:
	.cv_def_range	 .Ltmp40 .Ltmp41, frame_ptr_rel, 64
	.short	.Ltmp339-.Ltmp338
.Ltmp338:
	.short	4414
	.long	19
	.short	0
	.asciz	"text_len"
	.p2align	2
.Ltmp339:
	.cv_def_range	 .Ltmp40 .Ltmp41, frame_ptr_rel, 72
	.short	.Ltmp341-.Ltmp340
.Ltmp340:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp341:
	.cv_def_range	 .Ltmp40 .Ltmp41, frame_ptr_rel, 88
	.short	.Ltmp343-.Ltmp342
.Ltmp342:
	.short	4414
	.long	4101
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp343:
	.cv_def_range	 .Ltmp40 .Ltmp41, frame_ptr_rel, 40
	.short	.Ltmp345-.Ltmp344
.Ltmp344:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp345:
	.cv_def_range	 .Ltmp40 .Ltmp41, frame_ptr_rel, 48
	.short	.Ltmp347-.Ltmp346
.Ltmp346:
	.short	4414
	.long	19
	.short	0
	.asciz	"copy_size"
	.p2align	2
.Ltmp347:
	.cv_def_range	 .Ltmp40 .Ltmp41, frame_ptr_rel, 56
	.short	2
	.short	4431
.Ltmp329:
	.p2align	2
	.cv_linetable	20, "overload[x]=", .Lfunc_end20
	.long	241
	.long	.Ltmp349-.Ltmp348
.Ltmp348:
	.short	.Ltmp351-.Ltmp350
.Ltmp350:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end21-"overload[x]=.9"
	.long	0
	.long	0
	.long	4204
	.secrel32	"overload[x]=.9"
	.secidx	"overload[x]=.9"
	.byte	0
	.asciz	"overload[x]="
	.p2align	2
.Ltmp351:
	.short	.Ltmp353-.Ltmp352
.Ltmp352:
	.short	4114
	.long	64
	.long	0
	.long	0
	.long	8
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp353:
	.short	.Ltmp355-.Ltmp354
.Ltmp354:
	.short	4414
	.long	32
	.short	1
	.asciz	"c"
	.p2align	2
.Ltmp355:
	.cv_def_range	 .Ltmp42 .Ltmp43, frame_ptr_rel, 39
	.short	.Ltmp357-.Ltmp356
.Ltmp356:
	.short	4414
	.long	4101
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp357:
	.cv_def_range	 .Ltmp42 .Ltmp43, frame_ptr_rel, 48
	.short	.Ltmp359-.Ltmp358
.Ltmp358:
	.short	4414
	.long	4101
	.short	0
	.asciz	"to_put"
	.p2align	2
.Ltmp359:
	.cv_def_range	 .Ltmp42 .Ltmp43, frame_ptr_rel, 40
	.short	2
	.short	4431
.Ltmp349:
	.p2align	2
	.cv_linetable	21, "overload[x]=.9", .Lfunc_end21
	.long	241
	.long	.Ltmp361-.Ltmp360
.Ltmp360:
	.short	.Ltmp363-.Ltmp362
.Ltmp362:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end22-overload
	.long	0
	.long	0
	.long	4206
	.secrel32	overload
	.secidx	overload
	.byte	0
	.asciz	"overload"
	.p2align	2
.Ltmp363:
	.short	.Ltmp365-.Ltmp364
.Ltmp364:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp365:
	.short	.Ltmp367-.Ltmp366
.Ltmp366:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp367:
	.cv_def_range	 .Ltmp44 .Ltmp45, frame_ptr_rel, 80
	.short	.Ltmp369-.Ltmp368
.Ltmp368:
	.short	4414
	.long	4108
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp369:
	.cv_def_range	 .Ltmp44 .Ltmp45, frame_ptr_rel, 48
	.short	.Ltmp371-.Ltmp370
.Ltmp370:
	.short	4414
	.long	4108
	.short	0
	.asciz	"str2"
	.p2align	2
.Ltmp371:
	.cv_def_range	 .Ltmp44 .Ltmp45, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp361:
	.p2align	2
	.cv_linetable	22, overload, .Lfunc_end22
	.long	241
	.long	.Ltmp373-.Ltmp372
.Ltmp372:
	.short	.Ltmp375-.Ltmp374
.Ltmp374:
	.short	4364
	.long	19
	.secrel32	global_var
	.secidx	global_var
	.asciz	"STRING_BUFFER_SIZE"
	.p2align	2
.Ltmp375:
	.short	.Ltmp377-.Ltmp376
.Ltmp376:
	.short	4364
	.long	19
	.secrel32	global_var.1
	.secidx	global_var.1
	.asciz	"DELETE"
	.p2align	2
.Ltmp377:
	.short	.Ltmp379-.Ltmp378
.Ltmp378:
	.short	4364
	.long	19
	.secrel32	global_var.2
	.secidx	global_var.2
	.asciz	"READ_CONTROL"
	.p2align	2
.Ltmp379:
	.short	.Ltmp381-.Ltmp380
.Ltmp380:
	.short	4364
	.long	19
	.secrel32	global_var.3
	.secidx	global_var.3
	.asciz	"WRITE_DAC"
	.p2align	2
.Ltmp381:
	.short	.Ltmp383-.Ltmp382
.Ltmp382:
	.short	4364
	.long	19
	.secrel32	global_var.4
	.secidx	global_var.4
	.asciz	"WRITE_OWNER"
	.p2align	2
.Ltmp383:
	.short	.Ltmp385-.Ltmp384
.Ltmp384:
	.short	4364
	.long	19
	.secrel32	global_var.5
	.secidx	global_var.5
	.asciz	"SYNCHRONIZE"
	.p2align	2
.Ltmp385:
	.short	.Ltmp387-.Ltmp386
.Ltmp386:
	.short	4364
	.long	48
	.secrel32	global_var.6
	.secidx	global_var.6
	.asciz	"true"
	.p2align	2
.Ltmp387:
	.short	.Ltmp389-.Ltmp388
.Ltmp388:
	.short	4364
	.long	48
	.secrel32	global_var.7
	.secidx	global_var.7
	.asciz	"false"
	.p2align	2
.Ltmp389:
	.short	.Ltmp391-.Ltmp390
.Ltmp390:
	.short	4364
	.long	1539
	.secrel32	global_var.8
	.secidx	global_var.8
	.asciz	"null"
	.p2align	2
.Ltmp391:
.Ltmp373:
	.p2align	2
	.long	241
	.long	.Ltmp393-.Ltmp392
.Ltmp392:
	.short	.Ltmp395-.Ltmp394
.Ltmp394:
	.short	4360
	.long	4103
	.asciz	"String_Builder"
	.p2align	2
.Ltmp395:
	.short	.Ltmp397-.Ltmp396
.Ltmp396:
	.short	4360
	.long	4108
	.asciz	"string"
	.p2align	2
.Ltmp397:
	.short	.Ltmp399-.Ltmp398
.Ltmp398:
	.short	4360
	.long	4139
	.asciz	"Any"
	.p2align	2
.Ltmp399:
	.short	.Ltmp401-.Ltmp400
.Ltmp400:
	.short	4360
	.long	4149
	.asciz	"Type_Info"
	.p2align	2
.Ltmp401:
	.short	.Ltmp403-.Ltmp402
.Ltmp402:
	.short	4360
	.long	4152
	.asciz	"Type_Primitive"
	.p2align	2
.Ltmp403:
	.short	.Ltmp405-.Ltmp404
.Ltmp404:
	.short	4360
	.long	4156
	.asciz	"Type_Struct"
	.p2align	2
.Ltmp405:
	.short	.Ltmp407-.Ltmp406
.Ltmp406:
	.short	4360
	.long	4159
	.asciz	"Type_Array"
	.p2align	2
.Ltmp407:
	.short	.Ltmp409-.Ltmp408
.Ltmp408:
	.short	4360
	.long	4162
	.asciz	"Type_Pointer"
	.p2align	2
.Ltmp409:
	.short	.Ltmp411-.Ltmp410
.Ltmp410:
	.short	4360
	.long	4165
	.asciz	"Type_Enum"
	.p2align	2
.Ltmp411:
	.short	.Ltmp413-.Ltmp412
.Ltmp412:
	.short	4360
	.long	4168
	.asciz	"Type_Func"
	.p2align	2
.Ltmp413:
	.short	.Ltmp415-.Ltmp414
.Ltmp414:
	.short	4360
	.long	4149
	.asciz	"Type_Info"
	.p2align	2
.Ltmp415:
	.short	.Ltmp417-.Ltmp416
.Ltmp416:
	.short	4360
	.long	4149
	.asciz	"Type_Info"
	.p2align	2
.Ltmp417:
	.short	.Ltmp419-.Ltmp418
.Ltmp418:
	.short	4360
	.long	4149
	.asciz	"Type_Info"
	.p2align	2
.Ltmp419:
	.short	.Ltmp421-.Ltmp420
.Ltmp420:
	.short	4360
	.long	4149
	.asciz	"Type_Info"
	.p2align	2
.Ltmp421:
.Ltmp393:
	.p2align	2
	.cv_filechecksums
	.cv_stringtable
	.long	241
	.long	.Ltmp423-.Ltmp422
.Ltmp422:
	.short	.Ltmp425-.Ltmp424
.Ltmp424:
	.short	4428
	.long	4210
	.p2align	2
.Ltmp425:
.Ltmp423:
	.p2align	2
	.section	.debug$T,"dr"
	.p2align	2
	.long	4
	.short	0x6
	.short	0x1201
	.long	0x0
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1000
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1001
	.asciz	"main"
	.byte	243
	.byte	242
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"String_Builder"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1503
	.long	0x20
	.long	0x23
	.short	0x100
	.byte	0
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1003
	.long	0x1000c
	.short	0x36
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x1004
	.short	0x0
	.asciz	"buffer"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x13
	.short	0x100
	.asciz	"len"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1005
	.short	0x108
	.asciz	"next"
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x3
	.short	0x0
	.long	0x1006
	.long	0x0
	.long	0x0
	.short	0x110
	.asciz	"String_Builder"
	.byte	243
	.byte	242
	.byte	241
	.short	0x36
	.short	0x1605
	.long	0x0
	.asciz	"E:\\C_Projects\\Apocalypse\\Standard\\String.apoc"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1007
	.long	0x1008
	.long	0xa
	.short	0x1e
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"string"
	.byte	243
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x620
	.short	0x0
	.asciz	"text"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x13
	.short	0x8
	.asciz	"len"
	.byte	242
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x100b
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"string"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x100c
	.long	0x1008
	.long	0x4
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1005
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x100e
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x100f
	.asciz	"builder_to_string"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1011
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1012
	.asciz	"init_builder"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x100a
	.long	0x100a
	.short	0xe
	.short	0x1008
	.long	0x30
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1014
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1015
	.asciz	"compare"
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1012
	.asciz	"to_string"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x100a
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1018
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x1019
	.asciz	"terminate_string"
	.byte	243
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x75
	.long	0x13
	.long	0x1005
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x101b
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x101c
	.asciz	"build_unsigned_int"
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x13
	.long	0x1005
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x101e
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x101f
	.asciz	"int_to_str"
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x41
	.long	0x1005
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1021
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1022
	.asciz	"float_to_str"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1a
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"Any"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1024
	.long	0x1000c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x100a
	.long	0x1025
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1026
	.short	0x1e
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"Type_Info"
	.short	0xa
	.short	0x1002
	.long	0x1028
	.long	0x1000c
	.short	0x22
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x1029
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x603
	.short	0x8
	.asciz	"value"
	.short	0x1a
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x102a
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"Any"
	.byte	242
	.byte	241
	.short	0x36
	.short	0x1605
	.long	0x0
	.asciz	"E:\\C_Projects\\Apocalypse\\Standard\\Basic.apoc"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x102b
	.long	0x102c
	.long	0x33
	.short	0x26
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"Type_Primitive"
	.byte	243
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"Type_Struct"
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"Type_Array"
	.byte	243
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"Type_Pointer"
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"Type_Enum"
	.short	0x1e
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"Type_Func"
	.short	0x8a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x0
	.asciz	"kind"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x102e
	.short	0x0
	.asciz	"primitive"
	.short	0x150d
	.short	0x3
	.long	0x102f
	.short	0x0
	.asciz	"structure"
	.short	0x150d
	.short	0x3
	.long	0x1030
	.short	0x0
	.asciz	"array"
	.short	0x150d
	.short	0x3
	.long	0x1031
	.short	0x0
	.asciz	"pointer"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1032
	.short	0x0
	.asciz	"enumerator"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1033
	.short	0x0
	.asciz	"function"
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x1034
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"Type_Info"
	.short	0xe
	.short	0x1606
	.long	0x1035
	.long	0x102c
	.long	0x38
	.short	0x22
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x0
	.asciz	"kind"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x4
	.asciz	"size"
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x1037
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"Type_Primitive"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1038
	.long	0x102c
	.long	0x42
	.short	0xa
	.short	0x1002
	.long	0x620
	.long	0x1000c
	.short	0x92
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x0
	.asciz	"kind"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x4
	.asciz	"member_count"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x30
	.short	0x8
	.asciz	"is_union"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x30
	.short	0x9
	.asciz	"is_packed"
	.short	0x150d
	.short	0x3
	.long	0x620
	.short	0x10
	.asciz	"name"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x103a
	.short	0x18
	.asciz	"member_names"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1029
	.short	0x20
	.asciz	"member_types"
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x103b
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"Type_Struct"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x103c
	.long	0x102c
	.long	0x47
	.short	0x3a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x0
	.asciz	"kind"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1029
	.short	0x8
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x75
	.short	0x10
	.asciz	"elem_count"
	.byte	243
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x3
	.short	0x0
	.long	0x103e
	.long	0x0
	.long	0x0
	.short	0x18
	.asciz	"Type_Array"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x103f
	.long	0x102c
	.long	0x51
	.short	0x26
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x0
	.asciz	"kind"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1029
	.short	0x8
	.asciz	"pointed"
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x1041
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"Type_Pointer"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1042
	.long	0x102c
	.long	0x57
	.short	0x46
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x0
	.asciz	"kind"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x102e
	.short	0x4
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x103a
	.short	0x10
	.asciz	"names"
	.short	0x150d
	.short	0x3
	.long	0x675
	.short	0x18
	.asciz	"values"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x4
	.short	0x0
	.long	0x1044
	.long	0x0
	.long	0x0
	.short	0x20
	.asciz	"Type_Enum"
	.short	0xe
	.short	0x1606
	.long	0x1045
	.long	0x102c
	.long	0x5c
	.short	0x62
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x0
	.asciz	"kind"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1029
	.short	0x8
	.asciz	"param_types"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1029
	.short	0x10
	.asciz	"return_type"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x18
	.asciz	"calling_convention"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x4
	.short	0x0
	.long	0x1047
	.long	0x0
	.long	0x0
	.short	0x20
	.asciz	"Type_Func"
	.short	0xe
	.short	0x1606
	.long	0x1048
	.long	0x102c
	.long	0x63
	.short	0xe
	.short	0x1606
	.long	0x1035
	.long	0x102c
	.long	0x4e
	.short	0xe
	.short	0x1606
	.long	0x1035
	.long	0x102c
	.long	0x53
	.short	0xe
	.short	0x1606
	.long	0x1035
	.long	0x102c
	.long	0x59
	.short	0xe
	.short	0x1606
	.long	0x1035
	.long	0x102c
	.long	0x65
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1027
	.asciz	"parse_format"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1012
	.asciz	"print!@* u8!@-"
	.byte	241
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x1019
	.asciz	"print!@string!@-"
	.byte	243
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x603
	.long	0x603
	.long	0x75
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1051
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1052
	.asciz	"copy"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1008
	.long	0x13
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1011
	.short	0xe
	.short	0x1601
	.long	0x0
	.long	0x1054
	.asciz	"len"
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x620
	.long	0x13
	.short	0xe
	.short	0x1008
	.long	0x603
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1056
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1057
	.asciz	"open_file"
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x603
	.long	0x603
	.long	0x0
	.short	0xe
	.short	0x1008
	.long	0x30
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1059
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x105a
	.asciz	"write_file"
	.byte	241
	.short	0xe
	.short	0x1008
	.long	0x603
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1000
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x105c
	.asciz	"get_stdout"
	.byte	241
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x75
	.short	0xe
	.short	0x1008
	.long	0x603
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x105e
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x105f
	.asciz	"mem_alloc"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x100a
	.long	0x13
	.short	0xe
	.short	0x1008
	.long	0x20
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1061
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1062
	.asciz	"overload[]"
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x100a
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x100a
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1064
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1065
	.asciz	"overload+\214w\255\224\3568"
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1005
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1067
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1068
	.asciz	"overload[x]="
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1005
	.long	0x20
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x106a
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x106b
	.asciz	"overload[x]="
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1008
	.long	0x30
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1064
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x106d
	.asciz	"overload"
	.byte	243
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1605
	.long	0x0
	.asciz	"E:\\C_Projects\\Apocalypse"
	.byte	243
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1605
	.long	0x0
	.asciz	"Test.apoc"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1605
	.long	0x0
	.byte	0
	.byte	243
	.byte	242
	.byte	241
	.short	0x1a
	.short	0x1603
	.short	0x5
	.long	0x106f
	.long	0x0
	.long	0x1070
	.long	0x1071
	.long	0x0
	.byte	242
	.byte	241
	.globl	_fltused
