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
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "W:\\ApocCompiler\\bin\\Standard\\C_Standard.apoc"
	.cv_loc	0 1 13 0
.seh_proc mem_alloc
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 64(%rsp)
	movq	%rdx, 40(%rsp)
.Ltmp0:
	.cv_loc	0 1 14 2
	movq	%rdx, %rcx
	callq	malloc
	movq	%rax, 48(%rsp)
	.cv_loc	0 1 15 8
	movq	40(%rsp), %r8
	movq	%rax, %rcx
	xorl	%edx, %edx
	callq	memset
	.cv_loc	0 1 16 5
	movq	48(%rsp), %rax
	addq	$72, %rsp
	retq
.Ltmp1:
.Lfunc_end0:
	.seh_endproc

	.def	register_printable;
	.scl	2;
	.type	32;
	.endef
	.globl	register_printable
	.p2align	4, 0x90
register_printable:
.Lfunc_begin1:
	.cv_func_id 1
	.cv_file	2 "W:\\ApocCompiler\\bin\\Standard\\String.apoc"
	.cv_loc	1 2 27 0
.seh_proc register_printable
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	%rdx, (%rsp)
	movq	%r8, 24(%rsp)
.Ltmp2:
	.cv_loc	1 2 28 2
	movq	%r8, 40(%rsp)
	movq	%rsp, %rax
	movq	%rax, 32(%rsp)
	.cv_loc	1 2 30 2
	incq	global_var.2(%rip)
	.cv_loc	1 2 31 1
	addq	$48, %rsp
	retq
.Ltmp3:
.Lfunc_end1:
	.seh_endproc

	.def	builder_to_string;
	.scl	2;
	.type	32;
	.endef
	.globl	builder_to_string
	.p2align	4, 0x90
builder_to_string:
.Lfunc_begin2:
	.cv_func_id 2
	.cv_loc	2 2 34 0
.seh_proc builder_to_string
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$144, %rsp
	.seh_stackalloc 144
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 80(%rsp)
	movq	%rdx, 88(%rsp)
.Ltmp4:
	.cv_loc	2 2 36 2
	movq	$0, 48(%rsp)
	.cv_loc	2 2 37 2
	movq	%rdx, 40(%rsp)
	.cv_loc	2 2 38 2
	movq	$0, 96(%rsp)
	.p2align	4, 0x90
.LBB2_1:
	movq	40(%rsp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB2_3
	.cv_loc	2 2 39 3
	movq	40(%rsp), %rax
	movq	256(%rax), %rcx
	addq	%rcx, 48(%rsp)
	.cv_loc	2 2 40 3
	movq	264(%rax), %rax
	movq	%rax, 40(%rsp)
	incq	96(%rsp)
	jmp	.LBB2_1
.LBB2_3:
	.cv_loc	2 2 42 2
	movq	48(%rsp), %rdx
	movq	40(%rsp), %rax
	addq	256(%rax), %rdx
	movq	%rdx, 48(%rsp)
	leaq	120(%rsp), %rcx
	.cv_loc	2 2 43 2
	callq	mem_alloc
	movq	%rax, 64(%rsp)
	.cv_loc	2 2 44 2
	movq	48(%rsp), %rax
	movq	%rax, 72(%rsp)
	.cv_loc	2 2 46 2
	movq	$0, 56(%rsp)
	.cv_loc	2 2 47 2
	movq	$0, 104(%rsp)
	leaq	128(%rsp), %rsi
	.p2align	4, 0x90
.LBB2_4:
	movq	40(%rsp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB2_6
	.cv_loc	2 2 48 7
	movq	56(%rsp), %rdx
	shlq	$8, %rdx
	addq	64(%rsp), %rdx
	movq	40(%rsp), %r8
	movq	256(%r8), %r9
	movq	%rsi, %rcx
	callq	copy
	.cv_loc	2 2 49 3
	movq	40(%rsp), %rax
	movq	264(%rax), %rax
	.cv_loc	2 2 50 3
	incq	56(%rsp)
	.cv_loc	2 2 49 3
	movq	%rax, 40(%rsp)
	.cv_loc	2 2 50 3
	incq	104(%rsp)
	jmp	.LBB2_4
.LBB2_6:
	.cv_loc	2 2 52 6
	movq	56(%rsp), %rdx
	shlq	$8, %rdx
	addq	64(%rsp), %rdx
	movq	40(%rsp), %r8
	movq	256(%r8), %r9
	leaq	136(%rsp), %rcx
	callq	copy
	.cv_loc	2 2 53 2
	movq	88(%rsp), %rax
	movq	256(%rax), %rax
	addq	%rax, 48(%rsp)
	.cv_loc	2 2 54 5
	movq	80(%rsp), %rax
	vmovups	64(%rsp), %xmm0
	vmovups	%xmm0, (%rax)
	addq	$144, %rsp
	popq	%rsi
	retq
.Ltmp5:
.Lfunc_end2:
	.seh_endproc

	.def	init_builder;
	.scl	2;
	.type	32;
	.endef
	.globl	init_builder
	.p2align	4, 0x90
init_builder:
.Lfunc_begin3:
	.cv_func_id 3
	.cv_loc	3 2 58 0
.seh_proc init_builder
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$368, %rsp
	.seh_stackalloc 368
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 72(%rsp)
	movq	%rdx, 64(%rsp)
	leaq	96(%rsp), %rax
.Ltmp6:
	.cv_loc	3 2 60 2
	movq	%rax, 40(%rsp)
	.cv_loc	3 2 61 2
	movq	$0, 56(%rsp)
	.cv_loc	3 2 62 2
	movq	$0, 48(%rsp)
	leaq	88(%rsp), %rsi
	jmp	.LBB3_1
	.p2align	4, 0x90
.LBB3_4:
	.cv_loc	3 2 69 4
	incq	48(%rsp)
.LBB3_1:
	.cv_loc	3 2 62 2
	movq	56(%rsp), %rax
	shlq	$8, %rax
	addq	48(%rsp), %rax
	movq	64(%rsp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB3_5
	.cv_loc	3 2 63 3
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shlq	$8, %rcx
	addq	%rax, %rcx
	movq	64(%rsp), %rdx
	movzbl	(%rdx,%rcx), %ecx
	movq	40(%rsp), %rdx
	movb	%cl, (%rdx,%rax)
	.cv_loc	3 2 64 3
	movq	40(%rsp), %rax
	incq	256(%rax)
	.cv_loc	3 2 65 3
	cmpq	$256, 48(%rsp)
	.cv_loc	3 2 69 4
	jne	.LBB3_4
	.cv_loc	3 2 66 4
	movq	$0, 48(%rsp)
	.cv_loc	3 2 67 4
	incq	56(%rsp)
	.cv_loc	3 2 68 4
	movl	$272, %edx
	movq	%rsi, %rcx
	callq	mem_alloc
	movq	40(%rsp), %rcx
	movq	%rax, 264(%rcx)
	.cv_loc	3 2 69 4
	movq	40(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 40(%rsp)
	jmp	.LBB3_4
.LBB3_5:
	.cv_loc	3 2 72 5
	movq	72(%rsp), %rcx
	leaq	96(%rsp), %rdx
	movl	$272, %r8d
	callq	memcpy
	nop
	addq	$368, %rsp
	popq	%rsi
	retq
.Ltmp7:
.Lfunc_end3:
	.seh_endproc

	.def	compare;
	.scl	2;
	.type	32;
	.endef
	.globl	compare
	.p2align	4, 0x90
compare:
.Lfunc_begin4:
	.cv_func_id 4
	.cv_loc	4 2 128 0
.seh_proc compare
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 24(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, 16(%rsp)
.Ltmp8:
	.cv_loc	4 2 129 2
	movq	8(%rdx), %rax
	cmpq	8(%r8), %rax
	.cv_loc	4 2 132 2
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
	.cv_loc	4 2 133 3
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %ecx
	movq	16(%rsp), %rdx
	movq	(%rdx), %rdx
	cmpb	(%rdx,%rax), %cl
	.cv_loc	4 2 133 38
	jne	.LBB4_1
	incq	(%rsp)
	jmp	.LBB4_4
.LBB4_7:
	.cv_loc	4 2 134 5
	movb	$1, %al
.LBB4_2:
	addq	$40, %rsp
	retq
.Ltmp9:
.Lfunc_end4:
	.seh_endproc

	.def	to_string;
	.scl	2;
	.type	32;
	.endef
	.globl	to_string
	.p2align	4, 0x90
to_string:
.Lfunc_begin5:
	.cv_func_id 5
	.cv_loc	5 2 138 0
.seh_proc to_string
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 88(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 48(%rsp)
	movq	%rdx, 56(%rsp)
	leaq	96(%rsp), %rcx
.Ltmp10:
	.cv_loc	5 2 139 2
	callq	len
	movq	%rax, 40(%rsp)
	leaq	104(%rsp), %rcx
	.cv_loc	5 2 140 2
	movq	%rax, %rdx
	callq	mem_alloc
	movq	%rax, 64(%rsp)
	.cv_loc	5 2 141 6
	movq	56(%rsp), %r8
	movq	40(%rsp), %r9
	leaq	112(%rsp), %rcx
	movq	%rax, %rdx
	callq	copy
	.cv_loc	5 2 142 2
	movq	40(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 72(%rsp)
	.cv_loc	5 2 143 5
	movq	48(%rsp), %rax
	movq	72(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	80(%rsp), %rcx
	movq	%rcx, 8(%rax)
	addq	$120, %rsp
	retq
.Ltmp11:
.Lfunc_end5:
	.seh_endproc

	.def	terminate_string;
	.scl	2;
	.type	32;
	.endef
	.globl	terminate_string
	.p2align	4, 0x90
terminate_string:
.Lfunc_begin6:
	.cv_func_id 6
	.cv_loc	6 2 147 0
.seh_proc terminate_string
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 56(%rsp)
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rdx, 72(%rsp)
	movq	%rax, 64(%rsp)
.Ltmp12:
	.cv_loc	6 2 148 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 32(%rsp)
	.cv_loc	6 2 149 2
	incq	%rdx
	movq	%rdx, 40(%rsp)
	leaq	88(%rsp), %rcx
	.cv_loc	6 2 150 2
	callq	mem_alloc
	movq	%rax, 32(%rsp)
	.cv_loc	6 2 151 6
	movq	64(%rsp), %r8
	movq	72(%rsp), %r9
	leaq	96(%rsp), %rcx
	movq	%rax, %rdx
	callq	copy
	.cv_loc	6 2 152 2
	movq	32(%rsp), %rax
	movq	40(%rsp), %rcx
	movb	$0, (%rax,%rcx)
	.cv_loc	6 2 153 5
	movq	56(%rsp), %rax
	vmovaps	32(%rsp), %xmm0
	vmovups	%xmm0, (%rax)
	addq	$104, %rsp
	retq
.Ltmp13:
.Lfunc_end6:
	.seh_endproc

	.def	build_unsigned_int;
	.scl	2;
	.type	32;
	.endef
	.globl	build_unsigned_int
	.p2align	4, 0x90
build_unsigned_int:
.Lfunc_begin7:
	.cv_func_id 7
	.cv_loc	7 2 156 0
.seh_proc build_unsigned_int
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 72(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 32(%rsp)
.Ltmp14:
	.cv_loc	7 2 157 2
	testq	%r8, %r8
	.cv_loc	7 2 162 1
	je	.LBB7_2
	.cv_loc	7 2 158 3
	movq	40(%rsp), %rdx
	movabsq	$-3689348814741910323, %rax
	mulxq	%rax, %rax, %rax
	.cv_loc	7 2 159 21
	shrq	$3, %rax
	.cv_loc	7 2 158 3
	leaq	(%rax,%rax), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	subq	%rcx, %rdx
	orq	$48, %rdx
	movq	%rdx, 56(%rsp)
	.cv_loc	7 2 159 21
	movq	48(%rsp), %r8
	decq	%r8
	movq	32(%rsp), %r9
	leaq	80(%rsp), %rcx
	movq	%rax, %rdx
	callq	build_unsigned_int
	movq	32(%rsp), %rcx
	movb	56(%rsp), %dl
	callq	"overload[x]=.12"
.LBB7_2:
	.cv_loc	7 2 162 1
	nop
	addq	$88, %rsp
	retq
.Ltmp15:
.Lfunc_end7:
	.seh_endproc

	.def	int_to_str;
	.scl	2;
	.type	32;
	.endef
	.globl	int_to_str
	.p2align	4, 0x90
int_to_str:
.Lfunc_begin8:
	.cv_func_id 8
	.cv_loc	8 2 165 0
.seh_proc int_to_str
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 72(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%r8, 40(%rsp)
.Ltmp16:
	.cv_loc	8 2 166 2
	testq	%rdx, %rdx
	.cv_loc	8 2 173 2
	je	.LBB8_1
	.cv_loc	8 2 170 2
	movq	32(%rsp), %rax
	movq	%rax, 48(%rsp)
	.cv_loc	8 2 171 2
	movq	$0, 56(%rsp)
	movabsq	$7378697629483820647, %rcx
	.cv_loc	8 2 173 2
	cmpq	$0, 48(%rsp)
	je	.LBB8_6
	.p2align	4, 0x90
.LBB8_5:
	.cv_loc	8 2 174 3
	movq	%rcx, %rax
	imulq	48(%rsp)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$2, %rdx
	addq	%rax, %rdx
	movq	%rdx, 48(%rsp)
	incq	56(%rsp)
	.cv_loc	8 2 173 2
	cmpq	$0, 48(%rsp)
	jne	.LBB8_5
.LBB8_6:
	.cv_loc	8 2 176 2
	cmpq	$0, 32(%rsp)
	.cv_loc	8 2 182 1
	jns	.LBB8_8
	movq	40(%rsp), %rcx
	movb	$45, %dl
	callq	"overload[x]=.12"
	.cv_loc	8 2 178 3
	negq	32(%rsp)
	.cv_loc	8 2 179 3
	incq	56(%rsp)
.LBB8_8:
	.cv_loc	8 2 181 20
	movq	32(%rsp), %rdx
	movq	56(%rsp), %r8
	movq	40(%rsp), %r9
	leaq	80(%rsp), %rcx
	callq	build_unsigned_int
	jmp	.LBB8_2
.LBB8_1:
	movq	40(%rsp), %rcx
	movb	$48, %dl
	callq	"overload[x]=.12"
.LBB8_2:
	nop
	addq	$88, %rsp
	retq
.Ltmp17:
.Lfunc_end8:
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
.Lfunc_begin9:
	.cv_func_id 9
	.cv_loc	9 2 185 0
.seh_proc float_to_str
	subq	$136, %rsp
	.seh_stackalloc 136
	vmovapd	%xmm6, 112(%rsp)
	.seh_savexmm %xmm6, 112
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 88(%rsp)
	vmovsd	%xmm1, 40(%rsp)
	movq	%r8, 48(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
.Ltmp18:
	.cv_loc	9 2 186 2
	vucomisd	%xmm0, %xmm1
	.cv_loc	9 2 201 2
	jae	.LBB9_2
	movq	48(%rsp), %rcx
	movb	$45, %dl
	callq	"overload[x]=.12"
	.cv_loc	9 2 188 3
	vmovsd	40(%rsp), %xmm0
	vxorpd	__xmm@80000000000000008000000000000000(%rip), %xmm0, %xmm0
	vmovlpd	%xmm0, 40(%rsp)
.LBB9_2:
	.cv_loc	9 2 191 2
	vmovsd	40(%rsp), %xmm0
	vcvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubsd	__real@43e0000000000000(%rip), %xmm0, %xmm1
	vcvttsd2si	%xmm1, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	%rdx, 72(%rsp)
	.cv_loc	9 2 192 2
	vmovq	%rdx, %xmm1
	vpunpckldq	__xmm@00000000000000004530000043300000(%rip), %xmm1, %xmm1
	vsubpd	__xmm@45300000000000004330000000000000(%rip), %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 40(%rsp)
	.cv_loc	9 2 201 2
	je	.LBB9_3
	.cv_loc	9 2 197 17
	movq	72(%rsp), %rdx
	movq	48(%rsp), %r8
	leaq	96(%rsp), %rcx
	callq	int_to_str
	jmp	.LBB9_4
.LBB9_3:
	movq	48(%rsp), %rcx
	movb	$48, %dl
	callq	"overload[x]=.12"
.LBB9_4:
	movq	48(%rsp), %rcx
	movb	$46, %dl
	callq	"overload[x]=.12"
	.cv_loc	9 2 199 2
	movq	$0, 56(%rsp)
	vmovsd	__real@43e0000000000000(%rip), %xmm0
	vmovdqa	__xmm@00000000000000004530000043300000(%rip), %xmm1
	vmovapd	__xmm@45300000000000004330000000000000(%rip), %xmm2
	vmovsd	__real@4024000000000000(%rip), %xmm3
	.p2align	4, 0x90
.LBB9_5:
	.cv_loc	9 2 201 2
	vmovsd	40(%rsp), %xmm4
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
	.cv_loc	9 2 202 3
	vmulsd	40(%rsp), %xmm3, %xmm4
	.cv_loc	9 2 203 3
	vcvttsd2si	%xmm4, %rax
	.cv_loc	9 2 202 3
	vmovsd	%xmm4, 40(%rsp)
	.cv_loc	9 2 203 3
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubsd	%xmm0, %xmm4, %xmm4
	vcvttsd2si	%xmm4, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	.cv_loc	9 2 203 20
	jne	.LBB9_5
	incq	56(%rsp)
	jmp	.LBB9_5
.LBB9_8:
	.cv_loc	9 2 206 2
	movq	$0, 64(%rsp)
	.p2align	4, 0x90
.LBB9_9:
	movq	64(%rsp), %rax
	cmpq	56(%rsp), %rax
	jge	.LBB9_11
	movq	48(%rsp), %rcx
	movb	$48, %dl
	callq	"overload[x]=.12"
	incq	64(%rsp)
	jmp	.LBB9_9
.LBB9_11:
	.cv_loc	9 2 210 12
	vcvttsd2si	40(%rsp), %rdx
	movq	48(%rsp), %r8
	leaq	104(%rsp), %rcx
	callq	int_to_str
	vmovaps	112(%rsp), %xmm6
	.cv_loc	9 2 211 1
	addq	$136, %rsp
	retq
.Ltmp19:
.Lfunc_end9:
	.seh_endproc

	.def	find_printable_type;
	.scl	2;
	.type	32;
	.endef
	.globl	find_printable_type
	.p2align	4, 0x90
find_printable_type:
.Lfunc_begin10:
	.cv_func_id 10
	.cv_loc	10 2 214 0
.seh_proc find_printable_type
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 80(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%r8, 56(%rsp)
.Ltmp20:
	.cv_loc	10 2 215 2
	movq	$0, 40(%rsp)
	leaq	global_var.1(%rip), %rdi
	.p2align	4, 0x90
.LBB10_1:
	movq	40(%rsp), %rax
	cmpq	global_var.2(%rip), %rax
	jge	.LBB10_4
	.cv_loc	10 2 216 3
	movq	40(%rsp), %rax
	shlq	$4, %rax
	movq	8(%rax,%rdi), %rcx
	movq	48(%rsp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	callq	strcmp
	testl	%eax, %eax
	.cv_loc	10 2 218 6
	je	.LBB10_3
	incq	40(%rsp)
	jmp	.LBB10_1
.LBB10_4:
	movq	56(%rsp), %rcx
	leaq	.L__unnamed_1(%rip), %rdx
	jmp	.LBB10_5
.LBB10_3:
	movq	56(%rsp), %rsi
	movq	40(%rsp), %rax
	shlq	$4, %rax
	leaq	88(%rsp), %rcx
	movq	%rcx, 64(%rsp)
	movq	48(%rsp), %rdx
	leaq	64(%rsp), %rcx
	callq	*(%rax,%rdi)
	movq	88(%rsp), %rdx
	movq	%rsi, %rcx
.LBB10_5:
	callq	"overload[x]="
	nop
	addq	$104, %rsp
	popq	%rdi
	popq	%rsi
	retq
.Ltmp21:
.Lfunc_end10:
	.seh_endproc

	.def	parse_format;
	.scl	2;
	.type	32;
	.endef
	.globl	parse_format
	.p2align	4, 0x90
parse_format:
.Lfunc_begin11:
	.cv_func_id 11
	.cv_loc	11 2 226 0
.seh_proc parse_format
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
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$520, %rsp
	.seh_stackalloc 520
	.seh_endprologue
	movq	%rcx, 152(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 112(%rsp)
	vmovups	(%rdx), %xmm0
	vmovups	%xmm0, 88(%rsp)
	movq	%r8, 120(%rsp)
	leaq	248(%rsp), %rsi
.Ltmp22:
	.cv_loc	11 2 227 2
	movq	%rsi, 128(%rsp)
	leaq	.L__unnamed_2(%rip), %rdx
	leaq	128(%rsp), %rcx
	callq	init_builder
	.cv_loc	11 2 228 2
	movq	$0, 104(%rsp)
	.cv_loc	11 2 229 8
	leaq	.L__unnamed_3(%rip), %rcx
	leaq	88(%rsp), %rdx
	callq	printf
	.cv_loc	11 2 230 8
	movq	96(%rsp), %rdx
	leaq	.L__unnamed_4(%rip), %rcx
	callq	printf
	.cv_loc	11 2 231 2
	movq	$0, 40(%rsp)
	leaq	160(%rsp), %rdi
	leaq	176(%rsp), %r15
	leaq	184(%rsp), %r14
	leaq	64(%rsp), %r12
	leaq	200(%rsp), %r13
	leaq	216(%rsp), %rbp
	jmp	.LBB11_1
.LBB11_6:
	.cv_loc	11 2 240 6
	movq	72(%rsp), %rax
	movsbq	(%rax), %rax
.LBB11_7:
	.cv_loc	11 2 247 15
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	%r15, %rcx
	movq	%rsi, %r8
	callq	int_to_str
	incq	40(%rsp)
.LBB11_1:
	.cv_loc	11 2 231 2
	movq	40(%rsp), %rax
	cmpq	96(%rsp), %rax
	jge	.LBB11_25
	.cv_loc	11 2 232 3
	movq	88(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	40(%rsp), %rdx
	movq	%rdi, %rcx
	callq	"overload[]"
	cmpb	$37, %al
	jne	.LBB11_24
	.cv_loc	11 2 233 4
	movq	104(%rsp), %rax
	movq	120(%rsp), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	(%rcx,%rdx), %rbx
	movq	8(%rcx,%rdx), %rcx
	movq	%rbx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	.cv_loc	11 2 234 4
	incq	%rax
	movq	%rax, 104(%rsp)
	.cv_loc	11 2 235 4
	movl	(%rbx), %eax
	movl	%eax, 56(%rsp)
	.cv_loc	11 2 236 4
	cmpl	$3, %eax
	jne	.LBB11_15
	.cv_loc	11 2 237 5
	movq	$0, 48(%rsp)
	.cv_loc	11 2 238 5
	movq	64(%rsp), %rax
	movl	4(%rax), %eax
	movl	%eax, 60(%rsp)
	.cv_loc	11 2 239 5
	cmpl	$1, %eax
	.cv_loc	11 2 247 15
	je	.LBB11_6
	cmpl	$5, %eax
	je	.LBB11_6
	.cv_loc	11 2 241 10
	movl	60(%rsp), %eax
	cmpl	$2, %eax
	.cv_loc	11 2 246 6
	je	.LBB11_10
	cmpl	$6, %eax
	je	.LBB11_10
	.cv_loc	11 2 243 10
	movl	60(%rsp), %eax
	cmpl	$3, %eax
	.cv_loc	11 2 246 6
	je	.LBB11_13
	cmpl	$7, %eax
	je	.LBB11_13
	movq	72(%rsp), %rax
	movq	(%rax), %rax
	jmp	.LBB11_7
	.p2align	4, 0x90
.LBB11_24:
	movq	88(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	40(%rsp), %rdx
	movq	%rbp, %rcx
.LBB11_23:
	callq	"overload[]"
	movq	%rsi, %rcx
	movl	%eax, %edx
	callq	"overload[x]=.12"
	incq	40(%rsp)
	jmp	.LBB11_1
	.p2align	4, 0x90
.LBB11_15:
	.cv_loc	11 2 248 11
	cmpl	$4, 56(%rsp)
	jne	.LBB11_20
	.cv_loc	11 2 249 5
	movq	$0, 80(%rsp)
	.cv_loc	11 2 250 5
	movq	64(%rsp), %rax
	movl	4(%rax), %eax
	movl	%eax, 148(%rsp)
	.cv_loc	11 2 251 5
	cmpl	$9, %eax
	.cv_loc	11 2 256 17
	jne	.LBB11_19
	.cv_loc	11 2 252 6
	movq	72(%rsp), %rax
	vmovss	(%rax), %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	jmp	.LBB11_18
.LBB11_20:
	.cv_loc	11 2 257 11
	cmpl	$5, 56(%rsp)
	jne	.LBB11_22
	.cv_loc	11 2 258 24
	leaq	192(%rsp), %rcx
	movq	%r12, %rdx
	movq	%rsi, %r8
	callq	find_printable_type
	incq	40(%rsp)
	jmp	.LBB11_1
.LBB11_10:
	.cv_loc	11 2 242 6
	movq	72(%rsp), %rax
	movswq	(%rax), %rax
	jmp	.LBB11_7
.LBB11_19:
	.cv_loc	11 2 254 6
	movq	72(%rsp), %rax
	vmovsd	(%rax), %xmm0
.LBB11_18:
	.cv_loc	11 2 256 17
	vmovsd	%xmm0, 80(%rsp)
	vmovsd	80(%rsp), %xmm1
	movq	%r14, %rcx
	movq	%rsi, %r8
	callq	float_to_str
	incq	40(%rsp)
	jmp	.LBB11_1
.LBB11_22:
	movq	88(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	40(%rsp), %rdx
	movq	%r13, %rcx
	jmp	.LBB11_23
.LBB11_13:
	.cv_loc	11 2 244 6
	movq	72(%rsp), %rax
	movslq	(%rax), %rax
	jmp	.LBB11_7
.LBB11_25:
	leaq	248(%rsp), %rsi
	movq	%rsi, %rcx
	movb	$10, %dl
	callq	"overload[x]=.12"
	leaq	232(%rsp), %rax
	.cv_loc	11 2 267 2
	movq	%rax, 136(%rsp)
	leaq	136(%rsp), %rcx
	movq	%rsi, %rdx
	callq	builder_to_string
	.cv_loc	11 2 268 5
	movq	112(%rsp), %rax
	vmovups	232(%rsp), %xmm0
	vmovups	%xmm0, (%rax)
	addq	$520, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Ltmp23:
.Lfunc_end11:
	.seh_endproc

	.def	"format_args!@string!@-";
	.scl	2;
	.type	32;
	.endef
	.globl	"format_args!@string!@-"
	.p2align	4, 0x90
"format_args!@string!@-":
.Lfunc_begin12:
	.cv_func_id 12
	.cv_loc	12 2 272 0
.seh_proc "format_args!@string!@-"
	subq	$216, %rsp
	.seh_stackalloc 216
	.seh_endprologue
	movq	%r8, 240(%rsp)
	movq	%r9, 248(%rsp)
	movq	%rcx, 64(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	%rdx, 72(%rsp)
	leaq	80(%rsp), %rax
.Ltmp24:
	.cv_loc	12 2 273 2
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %rcx
	callq	to_string
	leaq	240(%rsp), %r8
	.cv_loc	12 2 275 15
	movq	%r8, 96(%rsp)
	leaq	104(%rsp), %rax
	.cv_loc	12 2 276 2
	movq	%rax, 56(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	56(%rsp), %rcx
	leaq	120(%rsp), %rdx
	callq	parse_format
	.cv_loc	12 2 278 5
	movq	40(%rsp), %rax
	vmovups	104(%rsp), %xmm0
	vmovups	%xmm0, (%rax)
	addq	$216, %rsp
	retq
.Ltmp25:
.Lfunc_end12:
	.seh_endproc

	.def	"print!@string!@-";
	.scl	2;
	.type	32;
	.endef
	.globl	"print!@string!@-"
	.p2align	4, 0x90
"print!@string!@-":
.Lfunc_begin13:
	.cv_func_id 13
	.cv_loc	13 2 291 0
.seh_proc "print!@string!@-"
	subq	$264, %rsp
	.seh_stackalloc 264
	.seh_endprologue
	movq	%r8, 288(%rsp)
	movq	%r9, 296(%rsp)
	movq	%rcx, 88(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 96(%rsp)
	movq	%rdx, 104(%rsp)
	leaq	48(%rsp), %rax
.Ltmp26:
	.cv_loc	13 2 292 2
	movq	%rax, 40(%rsp)
	leaq	40(%rsp), %rcx
	callq	to_string
	.cv_loc	13 2 293 8
	movq	48(%rsp), %r8
	movq	56(%rsp), %rdx
	leaq	.L__unnamed_5(%rip), %rcx
	callq	printf
	leaq	288(%rsp), %r8
	.cv_loc	13 2 295 15
	movq	%r8, 112(%rsp)
	leaq	72(%rsp), %rax
	.cv_loc	13 2 296 2
	movq	%rax, 64(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	64(%rsp), %rcx
	leaq	120(%rsp), %rdx
	callq	parse_format
	leaq	136(%rsp), %rcx
	.cv_loc	13 2 298 2
	callq	get_stdout
	movq	%rax, 144(%rsp)
	.cv_loc	13 2 299 12
	movq	72(%rsp), %r8
	movl	80(%rsp), %r9d
	leaq	152(%rsp), %rcx
	movq	%rax, %rdx
	callq	write_file
	.cv_loc	13 2 300 1
	nop
	addq	$264, %rsp
	retq
.Ltmp27:
.Lfunc_end13:
	.seh_endproc

	.def	copy;
	.scl	2;
	.type	32;
	.endef
	.globl	copy
	.p2align	4, 0x90
copy:
.Lfunc_begin14:
	.cv_func_id 14
	.cv_loc	14 2 314 0
.seh_proc copy
	subq	$64, %rsp
	.seh_stackalloc 64
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r9, 8(%rsp)
.Ltmp28:
	.cv_loc	14 2 315 2
	movq	%rdx, 16(%rsp)
	.cv_loc	14 2 316 2
	movq	%r8, 24(%rsp)
	.cv_loc	14 2 317 2
	movq	$0, (%rsp)
	.p2align	4, 0x90
.LBB14_1:
	movq	(%rsp), %rax
	cmpq	8(%rsp), %rax
	jge	.LBB14_3
	.cv_loc	14 2 319 3
	movq	(%rsp), %rax
	movq	24(%rsp), %rcx
	movzbl	(%rcx,%rax), %ecx
	movq	16(%rsp), %rdx
	movb	%cl, (%rdx,%rax)
	incq	(%rsp)
	jmp	.LBB14_1
.LBB14_3:
	.cv_loc	14 2 321 1
	addq	$64, %rsp
	retq
.Ltmp29:
.Lfunc_end14:
	.seh_endproc

	.def	len;
	.scl	2;
	.type	32;
	.endef
	.globl	len
	.p2align	4, 0x90
len:
.Lfunc_begin15:
	.cv_func_id 15
	.cv_loc	15 2 324 0
.seh_proc len
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, 8(%rsp)
.Ltmp30:
	.cv_loc	15 2 325 2
	movq	$0, (%rsp)
	.p2align	4, 0x90
.LBB15_1:
	.cv_loc	15 2 326 2
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB15_3
	incq	(%rsp)
	jmp	.LBB15_1
.LBB15_3:
	.cv_loc	15 2 327 5
	movq	(%rsp), %rax
	addq	$32, %rsp
	retq
.Ltmp31:
.Lfunc_end15:
	.seh_endproc

	.def	open_file;
	.scl	2;
	.type	32;
	.endef
	.globl	open_file
	.p2align	4, 0x90
open_file:
.Lfunc_begin16:
	.cv_func_id 16
	.cv_file	3 "W:\\ApocCompiler\\bin\\Standard\\Windows.apoc"
	.cv_loc	16 3 27 0
.seh_proc open_file
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 88(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%r8, 72(%rsp)
.Ltmp32:
	.cv_loc	16 3 28 2
	movq	$0, 56(%rsp)
	.cv_loc	16 3 35 5
	testb	$1, %r8b
	je	.LBB16_2
	.cv_loc	16 3 29 41
	orl	$1179785, 56(%rsp)
.LBB16_2:
	.cv_loc	16 3 35 5
	testb	$1, 72(%rsp)
	je	.LBB16_4
	.cv_loc	16 3 30 41
	orl	$1179926, 56(%rsp)
.LBB16_4:
	.cv_loc	16 3 35 5
	movb	$1, %al
	testb	%al, %al
	jne	.LBB16_6
	.cv_loc	16 3 31 41
	orq	$1179808, 56(%rsp)
.LBB16_6:
	.cv_loc	16 3 32 2
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	$0, 48(%rsp)
	movq	$32, 40(%rsp)
	movq	$4, 32(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	CreateFileA
	movq	%rax, 96(%rsp)
	.cv_loc	16 3 35 5
	addq	$104, %rsp
	retq
.Ltmp33:
.Lfunc_end16:
	.seh_endproc

	.def	write_file;
	.scl	2;
	.type	32;
	.endef
	.globl	write_file
	.p2align	4, 0x90
write_file:
.Lfunc_begin17:
	.cv_func_id 17
	.cv_loc	17 3 39 0
.seh_proc write_file
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movl	%r9d, %eax
	movq	%rcx, 56(%rsp)
	movq	(%rcx), %rcx
	movq	%rcx, 64(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movl	%r9d, 52(%rsp)
.Ltmp34:
	.cv_loc	17 3 40 2
	movl	$0, 48(%rsp)
	.cv_loc	17 3 41 11
	movq	$0, 32(%rsp)
	leaq	48(%rsp), %r9
	movq	%rdx, %rcx
	movq	%r8, %rdx
	movl	%eax, %r8d
	callq	WriteFile
	.cv_loc	17 3 42 2
	movl	48(%rsp), %eax
	cmpl	52(%rsp), %eax
	sete	%al
	sete	47(%rsp)
	.cv_loc	17 3 43 5
	addq	$88, %rsp
	retq
.Ltmp35:
.Lfunc_end17:
	.seh_endproc

	.def	get_stdout;
	.scl	2;
	.type	32;
	.endef
	.globl	get_stdout
	.p2align	4, 0x90
get_stdout:
.Lfunc_begin18:
	.cv_func_id 18
	.cv_loc	18 3 47 0
.seh_proc get_stdout
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 48(%rsp)
.Ltmp36:
	.cv_loc	18 3 48 5
	movl	$-11, %ecx
	callq	GetStdHandle
	nop
	addq	$56, %rsp
	retq
.Ltmp37:
.Lfunc_end18:
	.seh_endproc

	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main
	.p2align	4, 0x90
main:
.Lfunc_begin19:
	.cv_func_id 19
	.cv_file	4 "W:\\ApocCompiler\\Test.apoc"
	.cv_loc	19 4 7 0
.seh_proc main
	subq	$248, %rsp
	.seh_stackalloc 248
	.seh_endprologue
	movabsq	$85899345930, %rax
.Ltmp38:
	.cv_loc	19 4 8 2
	movq	%rax, 32(%rsp)
	.cv_loc	19 4 9 20
	leaq	print_printable_struct(%rip), %rdx
	leaq	.L__unnamed_6(%rip), %r8
	leaq	88(%rsp), %rcx
	callq	register_printable
	movabsq	$8589934597, %rax
	.cv_loc	19 4 10 7
	movq	%rax, 48(%rsp)
	movw	$0, 56(%rsp)
	leaq	.L__unnamed_7(%rip), %rax
	movq	%rax, 64(%rsp)
	leaq	.L__unnamed_8(%rip), %rax
	movq	%rax, 120(%rsp)
	leaq	.L__unnamed_9(%rip), %rax
	movq	%rax, 128(%rsp)
	leaq	120(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	48(%rsp), %r8
	movq	%r8, 104(%rsp)
	leaq	40(%rsp), %r9
	movq	%r9, 112(%rsp)
	leaq	.L__unnamed_10(%rip), %rdx
	leaq	96(%rsp), %rcx
	callq	"print!@string!@-"
	.cv_loc	19 4 11 5
	xorl	%eax, %eax
	addq	$248, %rsp
	retq
.Ltmp39:
.Lfunc_end19:
	.seh_endproc

	.def	print_printable_struct;
	.scl	2;
	.type	32;
	.endef
	.globl	print_printable_struct
	.p2align	4, 0x90
print_printable_struct:
.Lfunc_begin20:
	.cv_func_id 20
	.cv_loc	20 4 14 0
.seh_proc print_printable_struct
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$240, %rsp
	.seh_stackalloc 240
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	(%rcx), %rsi
	movq	%rsi, 88(%rsp)
	movq	%rdx, 96(%rsp)
.Ltmp40:
	.cv_loc	20 4 15 2
	movq	%rdx, 104(%rsp)
	leaq	112(%rsp), %rax
	.cv_loc	20 4 16 5
	movq	%rax, 56(%rsp)
	movl	(%rdx), %eax
	movabsq	$12884901891, %rcx
	movq	%rcx, 144(%rsp)
	movl	%eax, 48(%rsp)
	leaq	144(%rsp), %r8
	movq	%r8, 128(%rsp)
	leaq	48(%rsp), %r9
	movq	%r9, 136(%rsp)
	movl	4(%rdx), %eax
	movq	%rcx, 192(%rsp)
	movl	%eax, 52(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	52(%rsp), %rax
	movq	%rax, 72(%rsp)
	vmovups	64(%rsp), %xmm0
	vmovups	%xmm0, 32(%rsp)
	leaq	.L__unnamed_11(%rip), %rdx
	leaq	56(%rsp), %rcx
	callq	"format_args!@string!@-"
	vmovups	112(%rsp), %xmm0
	vmovups	%xmm0, (%rsi)
	addq	$240, %rsp
	popq	%rsi
	retq
.Ltmp41:
.Lfunc_end20:
	.seh_endproc

	.def	"overload[]";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[]"
	.p2align	4, 0x90
"overload[]":
.Lfunc_begin21:
	.cv_func_id 21
	.cv_loc	21 2 76 0
.seh_proc "overload[]"
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rdx, 16(%rsp)
.Ltmp42:
	.cv_loc	21 2 77 5
	movb	(%rax,%rdx), %al
	addq	$24, %rsp
	retq
.Ltmp43:
.Lfunc_end21:
	.seh_endproc

	.def	"overload+";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload+"
	.p2align	4, 0x90
"overload+":
.Lfunc_begin22:
	.cv_func_id 22
	.cv_loc	22 2 81 0
.seh_proc "overload+"
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 72(%rsp)
	vmovups	(%rdx), %xmm0
	vmovups	%xmm0, 56(%rsp)
	movq	%r8, 80(%rsp)
.Ltmp44:
	.cv_loc	22 2 82 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 32(%rsp)
	leaq	104(%rsp), %rcx
	.cv_loc	22 2 83 2
	movq	%r8, %rdx
	callq	len
	movq	%rax, 88(%rsp)
	.cv_loc	22 2 84 2
	addq	64(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	112(%rsp), %rcx
	.cv_loc	22 2 85 2
	movq	%rax, %rdx
	callq	mem_alloc
	movq	%rax, 32(%rsp)
	.cv_loc	22 2 86 6
	movq	56(%rsp), %r8
	movq	64(%rsp), %r9
	leaq	120(%rsp), %rcx
	movq	%rax, %rdx
	callq	copy
	.cv_loc	22 2 87 6
	movq	32(%rsp), %rdx
	addq	64(%rsp), %rdx
	movq	80(%rsp), %r8
	movq	88(%rsp), %r9
	leaq	128(%rsp), %rcx
	callq	copy
	.cv_loc	22 2 88 5
	movq	72(%rsp), %rax
	vmovaps	32(%rsp), %xmm0
	vmovups	%xmm0, (%rax)
	addq	$136, %rsp
	retq
.Ltmp45:
.Lfunc_end22:
	.seh_endproc

	.def	"overload[x]=";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[x]="
	.p2align	4, 0x90
"overload[x]=":
.Lfunc_begin23:
	.cv_func_id 23
	.cv_loc	23 2 92 0
.seh_proc "overload[x]="
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$112, %rsp
	.seh_stackalloc 112
	.seh_endprologue
	movq	%rcx, 72(%rsp)
	movq	%rdx, 80(%rsp)
	leaq	96(%rsp), %rcx
.Ltmp46:
	.cv_loc	23 2 93 2
	callq	len
	movq	%rax, 64(%rsp)
	.cv_loc	23 2 94 2
	leaq	255(%rax), %rcx
	testq	%rax, %rax
	cmovnsq	%rax, %rcx
	sarq	$8, %rcx
	movq	%rcx, 88(%rsp)
	.cv_loc	23 2 95 2
	movq	72(%rsp), %rax
	movq	%rax, 40(%rsp)
	.cv_loc	23 2 96 2
	movq	$0, 48(%rsp)
	leaq	104(%rsp), %rsi
	jmp	.LBB23_1
	.p2align	4, 0x90
.LBB23_4:
	.cv_loc	23 2 99 7
	movq	40(%rsp), %rdx
	addq	256(%rdx), %rdx
	movq	48(%rsp), %r8
	shlq	$8, %r8
	addq	80(%rsp), %r8
	movq	56(%rsp), %r9
	movq	%rsi, %rcx
	callq	copy
	.cv_loc	23 2 100 3
	movq	40(%rsp), %rax
	movq	56(%rsp), %rcx
	addq	%rcx, 256(%rax)
	.cv_loc	23 2 101 3
	addq	$-256, 64(%rsp)
	.cv_loc	23 2 102 3
	movq	40(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 40(%rsp)
	incq	48(%rsp)
.LBB23_1:
	.cv_loc	23 2 96 2
	movq	48(%rsp), %rax
	decq	%rax
	cmpq	88(%rsp), %rax
	jge	.LBB23_5
	.cv_loc	23 2 97 3
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)
	.cv_loc	23 2 98 3
	cmpq	$256, %rax
	.cv_loc	23 2 102 3
	jle	.LBB23_4
	.cv_loc	23 2 98 37
	movq	$256, 56(%rsp)
	jmp	.LBB23_4
.LBB23_5:
	.cv_loc	23 2 105 1
	addq	$112, %rsp
	popq	%rsi
	retq
.Ltmp47:
.Lfunc_end23:
	.seh_endproc

	.def	"overload[x]=.12";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[x]=.12"
	.p2align	4, 0x90
"overload[x]=.12":
.Lfunc_begin24:
	.cv_func_id 24
	.cv_loc	24 2 108 0
.seh_proc "overload[x]=.12"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$64, %rsp
	.seh_stackalloc 64
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movb	%dl, 39(%rsp)
.Ltmp48:
	.cv_loc	24 2 109 2
	movq	%rcx, 40(%rsp)
	leaq	56(%rsp), %rsi
	.p2align	4, 0x90
.LBB24_1:
	.cv_loc	24 2 110 2
	movq	40(%rsp), %rax
	testq	%rax, %rax
	je	.LBB24_7
	cmpq	$256, 256(%rax)
	jne	.LBB24_7
	.cv_loc	24 2 111 3
	movq	40(%rsp), %rax
	cmpq	$0, 264(%rax)
	.cv_loc	24 2 115 4
	jne	.LBB24_5
	.cv_loc	24 2 112 4
	movl	$272, %edx
	movq	%rsi, %rcx
	callq	mem_alloc
	movq	40(%rsp), %rcx
	movq	%rax, 264(%rcx)
.LBB24_5:
	.cv_loc	24 2 114 3
	movq	40(%rsp), %rax
	cmpq	$256, 256(%rax)
	.cv_loc	24 2 115 4
	jne	.LBB24_1
	movq	40(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 40(%rsp)
	jmp	.LBB24_1
.LBB24_7:
	.cv_loc	24 2 117 2
	movb	39(%rsp), %al
	movq	40(%rsp), %rcx
	movq	256(%rcx), %rdx
	movb	%al, (%rcx,%rdx)
	.cv_loc	24 2 118 2
	movq	40(%rsp), %rax
	incq	256(%rax)
	.cv_loc	24 2 119 1
	addq	$64, %rsp
	popq	%rsi
	retq
.Ltmp49:
.Lfunc_end24:
	.seh_endproc

	.def	overload;
	.scl	2;
	.type	32;
	.endef
	.globl	overload
	.p2align	4, 0x90
overload:
.Lfunc_begin25:
	.cv_func_id 25
	.cv_loc	25 2 122 0
.seh_proc overload
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	vmovups	(%rcx), %xmm0
	vmovups	%xmm0, 56(%rsp)
	movq	%rdx, 32(%rsp)
	leaq	72(%rsp), %rcx
.Ltmp50:
	.cv_loc	25 2 123 2
	callq	len
	movq	%rax, 48(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	80(%rsp), %rcx
	leaq	56(%rsp), %rdx
	leaq	40(%rsp), %r8
	.cv_loc	25 2 124 5
	callq	compare
	nop
	addq	$88, %rsp
	retq
.Ltmp51:
.Lfunc_end25:
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

	.data
	.globl	global_var.8
	.p2align	3
global_var.8:
	.quad	54321

	.section	.rdata,"dr"
	.globl	global_var.9
global_var.9:
	.byte	1

	.globl	global_var.10
global_var.10:
	.byte	0

	.globl	global_var.11
	.p2align	3
global_var.11:
	.quad	0

.L__unnamed_1:
	.asciz	"Unkown struct"

.L__unnamed_2:
	.zero	1

.L__unnamed_3:
	.asciz	"%p\n"

.L__unnamed_4:
	.asciz	"%d\n"

.L__unnamed_5:
	.asciz	"len: %d, text %s"

.L__unnamed_6:
	.asciz	"Printable_Struct"

.L__unnamed_10:
	.asciz	"works? %"

.L__unnamed_7:
	.asciz	"Printable_Struct"

.L__unnamed_8:
	.asciz	"num1"

.L__unnamed_9:
	.asciz	"num2"

.L__unnamed_11:
	.asciz	"Printable Struct:\nnum1: %\nnum2: %"

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp53-.Ltmp52
.Ltmp52:
	.short	.Ltmp55-.Ltmp54
.Ltmp54:
	.short	4353
	.long	0
	.byte	0
	.p2align	2
.Ltmp55:
	.short	.Ltmp57-.Ltmp56
.Ltmp56:
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
.Ltmp57:
.Ltmp53:
	.p2align	2
	.long	241
	.long	.Ltmp59-.Ltmp58
.Ltmp58:
	.short	.Ltmp61-.Ltmp60
.Ltmp60:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-mem_alloc
	.long	0
	.long	0
	.long	4098
	.secrel32	mem_alloc
	.secidx	mem_alloc
	.byte	0
	.asciz	"mem_alloc"
	.p2align	2
.Ltmp61:
	.short	.Ltmp63-.Ltmp62
.Ltmp62:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp63:
	.short	.Ltmp65-.Ltmp64
.Ltmp64:
	.short	4414
	.long	117
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp65:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 40
	.short	.Ltmp67-.Ltmp66
.Ltmp66:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp67:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 64
	.short	.Ltmp69-.Ltmp68
.Ltmp68:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp69:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp59:
	.p2align	2
	.cv_linetable	0, mem_alloc, .Lfunc_end0
	.long	241
	.long	.Ltmp71-.Ltmp70
.Ltmp70:
	.short	.Ltmp73-.Ltmp72
.Ltmp72:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-register_printable
	.long	0
	.long	0
	.long	4106
	.secrel32	register_printable
	.secidx	register_printable
	.byte	0
	.asciz	"register_printable"
	.p2align	2
.Ltmp73:
	.short	.Ltmp75-.Ltmp74
.Ltmp74:
	.short	4114
	.long	48
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp75:
	.short	.Ltmp77-.Ltmp76
.Ltmp76:
	.short	4414
	.long	1539
	.short	1
	.asciz	"print_fn"
	.p2align	2
.Ltmp77:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 0
	.short	.Ltmp79-.Ltmp78
.Ltmp78:
	.short	4414
	.long	1568
	.short	1
	.asciz	"type_name"
	.p2align	2
.Ltmp79:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 24
	.short	.Ltmp81-.Ltmp80
.Ltmp80:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp81:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 16
	.short	.Ltmp83-.Ltmp82
.Ltmp82:
	.short	4414
	.long	4109
	.short	0
	.asciz	"info"
	.p2align	2
.Ltmp83:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 32
	.short	2
	.short	4431
.Ltmp71:
	.p2align	2
	.cv_linetable	1, register_printable, .Lfunc_end1
	.long	241
	.long	.Ltmp85-.Ltmp84
.Ltmp84:
	.short	.Ltmp87-.Ltmp86
.Ltmp86:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end2-builder_to_string
	.long	0
	.long	0
	.long	4124
	.secrel32	builder_to_string
	.secidx	builder_to_string
	.byte	0
	.asciz	"builder_to_string"
	.p2align	2
.Ltmp87:
	.short	.Ltmp89-.Ltmp88
.Ltmp88:
	.short	4114
	.long	144
	.long	0
	.long	0
	.long	8
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp89:
	.short	.Ltmp91-.Ltmp90
.Ltmp90:
	.short	4414
	.long	4114
	.short	1
	.asciz	"builder"
	.p2align	2
.Ltmp91:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 88
	.short	.Ltmp93-.Ltmp92
.Ltmp92:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp93:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 80
	.short	.Ltmp95-.Ltmp94
.Ltmp94:
	.short	4414
	.long	4118
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp95:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 64
	.short	.Ltmp97-.Ltmp96
.Ltmp96:
	.short	4414
	.long	19
	.short	0
	.asciz	"out_len"
	.p2align	2
.Ltmp97:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 48
	.short	.Ltmp99-.Ltmp98
.Ltmp98:
	.short	4414
	.long	4114
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp99:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 40
	.short	.Ltmp101-.Ltmp100
.Ltmp100:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp101:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 96
	.short	.Ltmp103-.Ltmp102
.Ltmp102:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp103:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 56
	.short	.Ltmp105-.Ltmp104
.Ltmp104:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp105:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 104
	.short	2
	.short	4431
.Ltmp85:
	.p2align	2
	.cv_linetable	2, builder_to_string, .Lfunc_end2
	.long	241
	.long	.Ltmp107-.Ltmp106
.Ltmp106:
	.short	.Ltmp109-.Ltmp108
.Ltmp108:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end3-init_builder
	.long	0
	.long	0
	.long	4127
	.secrel32	init_builder
	.secidx	init_builder
	.byte	0
	.asciz	"init_builder"
	.p2align	2
.Ltmp109:
	.short	.Ltmp111-.Ltmp110
.Ltmp110:
	.short	4114
	.long	368
	.long	0
	.long	0
	.long	8
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp111:
	.short	.Ltmp113-.Ltmp112
.Ltmp112:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp113:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 64
	.short	.Ltmp115-.Ltmp114
.Ltmp114:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp115:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 72
	.short	.Ltmp117-.Ltmp116
.Ltmp116:
	.short	4414
	.long	4122
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp117:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 96
	.short	.Ltmp119-.Ltmp118
.Ltmp118:
	.short	4414
	.long	4114
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp119:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 40
	.short	.Ltmp121-.Ltmp120
.Ltmp120:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp121:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 56
	.short	.Ltmp123-.Ltmp122
.Ltmp122:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp123:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp107:
	.p2align	2
	.cv_linetable	3, init_builder, .Lfunc_end3
	.long	241
	.long	.Ltmp125-.Ltmp124
.Ltmp124:
	.short	.Ltmp127-.Ltmp126
.Ltmp126:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end4-compare
	.long	0
	.long	0
	.long	4131
	.secrel32	compare
	.secidx	compare
	.byte	0
	.asciz	"compare"
	.p2align	2
.Ltmp127:
	.short	.Ltmp129-.Ltmp128
.Ltmp128:
	.short	4114
	.long	40
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
	.long	4128
	.short	1
	.asciz	"str1"
	.p2align	2
.Ltmp131:
	.cv_def_range	 .Ltmp8 .Ltmp9, frame_ptr_rel, 8
	.short	.Ltmp133-.Ltmp132
.Ltmp132:
	.short	4414
	.long	4128
	.short	1
	.asciz	"str2"
	.p2align	2
.Ltmp133:
	.cv_def_range	 .Ltmp8 .Ltmp9, frame_ptr_rel, 16
	.short	.Ltmp135-.Ltmp134
.Ltmp134:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp135:
	.cv_def_range	 .Ltmp8 .Ltmp9, frame_ptr_rel, 32
	.short	.Ltmp137-.Ltmp136
.Ltmp136:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp137:
	.cv_def_range	 .Ltmp8 .Ltmp9, frame_ptr_rel, 0
	.short	2
	.short	4431
.Ltmp125:
	.p2align	2
	.cv_linetable	4, compare, .Lfunc_end4
	.long	241
	.long	.Ltmp139-.Ltmp138
.Ltmp138:
	.short	.Ltmp141-.Ltmp140
.Ltmp140:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end5-to_string
	.long	0
	.long	0
	.long	4133
	.secrel32	to_string
	.secidx	to_string
	.byte	0
	.asciz	"to_string"
	.p2align	2
.Ltmp141:
	.short	.Ltmp143-.Ltmp142
.Ltmp142:
	.short	4114
	.long	120
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp143:
	.short	.Ltmp145-.Ltmp144
.Ltmp144:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp145:
	.cv_def_range	 .Ltmp10 .Ltmp11, frame_ptr_rel, 56
	.short	.Ltmp147-.Ltmp146
.Ltmp146:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp147:
	.cv_def_range	 .Ltmp10 .Ltmp11, frame_ptr_rel, 48
	.short	.Ltmp149-.Ltmp148
.Ltmp148:
	.short	4414
	.long	19
	.short	0
	.asciz	"text_len"
	.p2align	2
.Ltmp149:
	.cv_def_range	 .Ltmp10 .Ltmp11, frame_ptr_rel, 40
	.short	.Ltmp151-.Ltmp150
.Ltmp150:
	.short	4414
	.long	1539
	.short	0
	.asciz	"allocated"
	.p2align	2
.Ltmp151:
	.cv_def_range	 .Ltmp10 .Ltmp11, frame_ptr_rel, 64
	.short	.Ltmp153-.Ltmp152
.Ltmp152:
	.short	4414
	.long	4118
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp153:
	.cv_def_range	 .Ltmp10 .Ltmp11, frame_ptr_rel, 72
	.short	2
	.short	4431
.Ltmp139:
	.p2align	2
	.cv_linetable	5, to_string, .Lfunc_end5
	.long	241
	.long	.Ltmp155-.Ltmp154
.Ltmp154:
	.short	.Ltmp157-.Ltmp156
.Ltmp156:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end6-terminate_string
	.long	0
	.long	0
	.long	4136
	.secrel32	terminate_string
	.secidx	terminate_string
	.byte	0
	.asciz	"terminate_string"
	.p2align	2
.Ltmp157:
	.short	.Ltmp159-.Ltmp158
.Ltmp158:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp159:
	.short	.Ltmp161-.Ltmp160
.Ltmp160:
	.short	4414
	.long	4118
	.short	1
	.asciz	"str"
	.p2align	2
.Ltmp161:
	.cv_def_range	 .Ltmp12 .Ltmp13, frame_ptr_rel, 64
	.short	.Ltmp163-.Ltmp162
.Ltmp162:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp163:
	.cv_def_range	 .Ltmp12 .Ltmp13, frame_ptr_rel, 56
	.short	.Ltmp165-.Ltmp164
.Ltmp164:
	.short	4414
	.long	4118
	.short	0
	.byte	0
	.p2align	2
.Ltmp165:
	.cv_def_range	 .Ltmp12 .Ltmp13, frame_ptr_rel, 32
	.short	2
	.short	4431
.Ltmp155:
	.p2align	2
	.cv_linetable	6, terminate_string, .Lfunc_end6
	.long	241
	.long	.Ltmp167-.Ltmp166
.Ltmp166:
	.short	.Ltmp169-.Ltmp168
.Ltmp168:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end7-build_unsigned_int
	.long	0
	.long	0
	.long	4139
	.secrel32	build_unsigned_int
	.secidx	build_unsigned_int
	.byte	0
	.asciz	"build_unsigned_int"
	.p2align	2
.Ltmp169:
	.short	.Ltmp171-.Ltmp170
.Ltmp170:
	.short	4114
	.long	88
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp171:
	.short	.Ltmp173-.Ltmp172
.Ltmp172:
	.short	4414
	.long	117
	.short	1
	.asciz	"num"
	.p2align	2
.Ltmp173:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 40
	.short	.Ltmp175-.Ltmp174
.Ltmp174:
	.short	4414
	.long	19
	.short	1
	.asciz	"num_size"
	.p2align	2
.Ltmp175:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 48
	.short	.Ltmp177-.Ltmp176
.Ltmp176:
	.short	4414
	.long	4114
	.short	1
	.asciz	"builder"
	.p2align	2
.Ltmp177:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 32
	.short	.Ltmp179-.Ltmp178
.Ltmp178:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp179:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 72
	.short	.Ltmp181-.Ltmp180
.Ltmp180:
	.short	4414
	.long	117
	.short	0
	.asciz	"digit"
	.p2align	2
.Ltmp181:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 56
	.short	2
	.short	4431
.Ltmp167:
	.p2align	2
	.cv_linetable	7, build_unsigned_int, .Lfunc_end7
	.long	241
	.long	.Ltmp183-.Ltmp182
.Ltmp182:
	.short	.Ltmp185-.Ltmp184
.Ltmp184:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end8-int_to_str
	.long	0
	.long	0
	.long	4142
	.secrel32	int_to_str
	.secidx	int_to_str
	.byte	0
	.asciz	"int_to_str"
	.p2align	2
.Ltmp185:
	.short	.Ltmp187-.Ltmp186
.Ltmp186:
	.short	4114
	.long	88
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp187:
	.short	.Ltmp189-.Ltmp188
.Ltmp188:
	.short	4414
	.long	19
	.short	1
	.asciz	"num"
	.p2align	2
.Ltmp189:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 32
	.short	.Ltmp191-.Ltmp190
.Ltmp190:
	.short	4414
	.long	4114
	.short	1
	.asciz	"builder"
	.p2align	2
.Ltmp191:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 40
	.short	.Ltmp193-.Ltmp192
.Ltmp192:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp193:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 72
	.short	.Ltmp195-.Ltmp194
.Ltmp194:
	.short	4414
	.long	19
	.short	0
	.asciz	"div_copy"
	.p2align	2
.Ltmp195:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 48
	.short	.Ltmp197-.Ltmp196
.Ltmp196:
	.short	4414
	.long	19
	.short	0
	.asciz	"num_size"
	.p2align	2
.Ltmp197:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 56
	.short	2
	.short	4431
.Ltmp183:
	.p2align	2
	.cv_linetable	8, int_to_str, .Lfunc_end8
	.long	241
	.long	.Ltmp199-.Ltmp198
.Ltmp198:
	.short	.Ltmp201-.Ltmp200
.Ltmp200:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end9-float_to_str
	.long	0
	.long	0
	.long	4145
	.secrel32	float_to_str
	.secidx	float_to_str
	.byte	0
	.asciz	"float_to_str"
	.p2align	2
.Ltmp201:
	.short	.Ltmp203-.Ltmp202
.Ltmp202:
	.short	4114
	.long	136
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp203:
	.short	.Ltmp205-.Ltmp204
.Ltmp204:
	.short	4414
	.long	65
	.short	1
	.asciz	"num"
	.p2align	2
.Ltmp205:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 40
	.short	.Ltmp207-.Ltmp206
.Ltmp206:
	.short	4414
	.long	4114
	.short	1
	.asciz	"builder"
	.p2align	2
.Ltmp207:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 48
	.short	.Ltmp209-.Ltmp208
.Ltmp208:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp209:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 88
	.short	.Ltmp211-.Ltmp210
.Ltmp210:
	.short	4414
	.long	117
	.short	0
	.asciz	"decimal"
	.p2align	2
.Ltmp211:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 72
	.short	.Ltmp213-.Ltmp212
.Ltmp212:
	.short	4414
	.long	19
	.short	0
	.asciz	"zeroes_to_append"
	.p2align	2
.Ltmp213:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 56
	.short	.Ltmp215-.Ltmp214
.Ltmp214:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp215:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp199:
	.p2align	2
	.cv_linetable	9, float_to_str, .Lfunc_end9
	.long	241
	.long	.Ltmp217-.Ltmp216
.Ltmp216:
	.short	.Ltmp219-.Ltmp218
.Ltmp218:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end10-find_printable_type
	.long	0
	.long	0
	.long	4187
	.secrel32	find_printable_type
	.secidx	find_printable_type
	.byte	0
	.asciz	"find_printable_type"
	.p2align	2
.Ltmp219:
	.short	.Ltmp221-.Ltmp220
.Ltmp220:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	16
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp221:
	.short	.Ltmp223-.Ltmp222
.Ltmp222:
	.short	4414
	.long	4147
	.short	1
	.asciz	"item"
	.p2align	2
.Ltmp223:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 48
	.short	.Ltmp225-.Ltmp224
.Ltmp224:
	.short	4414
	.long	4114
	.short	1
	.asciz	"builder"
	.p2align	2
.Ltmp225:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 56
	.short	.Ltmp227-.Ltmp226
.Ltmp226:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp227:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 80
	.short	.Ltmp229-.Ltmp228
.Ltmp228:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp229:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 40
	.short	2
	.short	4431
.Ltmp217:
	.p2align	2
	.cv_linetable	10, find_printable_type, .Lfunc_end10
	.long	241
	.long	.Ltmp231-.Ltmp230
.Ltmp230:
	.short	.Ltmp233-.Ltmp232
.Ltmp232:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end11-parse_format
	.long	0
	.long	0
	.long	4190
	.secrel32	parse_format
	.secidx	parse_format
	.byte	0
	.asciz	"parse_format"
	.p2align	2
.Ltmp233:
	.short	.Ltmp235-.Ltmp234
.Ltmp234:
	.short	4114
	.long	520
	.long	0
	.long	0
	.long	64
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp235:
	.short	.Ltmp237-.Ltmp236
.Ltmp236:
	.short	4414
	.long	4118
	.short	1
	.asciz	"format"
	.p2align	2
.Ltmp237:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 88
	.short	.Ltmp239-.Ltmp238
.Ltmp238:
	.short	4414
	.long	4147
	.short	1
	.asciz	"list"
	.p2align	2
.Ltmp239:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 120
	.short	.Ltmp241-.Ltmp240
.Ltmp240:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp241:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 112
	.short	.Ltmp243-.Ltmp242
.Ltmp242:
	.short	4414
	.long	4122
	.short	0
	.asciz	"builder"
	.p2align	2
.Ltmp243:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 248
	.short	.Ltmp245-.Ltmp244
.Ltmp244:
	.short	4414
	.long	19
	.short	0
	.asciz	"list_index"
	.p2align	2
.Ltmp245:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 104
	.short	.Ltmp247-.Ltmp246
.Ltmp246:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp247:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 40
	.short	.Ltmp249-.Ltmp248
.Ltmp248:
	.short	4414
	.long	4118
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp249:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 232
	.short	.Ltmp251-.Ltmp250
.Ltmp250:
	.short	4414
	.long	4153
	.short	0
	.asciz	"item"
	.p2align	2
.Ltmp251:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 64
	.short	.Ltmp253-.Ltmp252
.Ltmp252:
	.short	4414
	.long	116
	.short	0
	.asciz	"type"
	.p2align	2
.Ltmp253:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 56
	.short	.Ltmp255-.Ltmp254
.Ltmp254:
	.short	4414
	.long	19
	.short	0
	.asciz	"to_parse"
	.p2align	2
.Ltmp255:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 48
	.short	.Ltmp257-.Ltmp256
.Ltmp256:
	.short	4414
	.long	116
	.short	0
	.asciz	"size"
	.p2align	2
.Ltmp257:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 60
	.short	.Ltmp259-.Ltmp258
.Ltmp258:
	.short	4414
	.long	65
	.short	0
	.asciz	"to_parse"
	.p2align	2
.Ltmp259:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 80
	.short	.Ltmp261-.Ltmp260
.Ltmp260:
	.short	4414
	.long	116
	.short	0
	.asciz	"size"
	.p2align	2
.Ltmp261:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 148
	.short	2
	.short	4431
.Ltmp231:
	.p2align	2
	.cv_linetable	11, parse_format, .Lfunc_end11
	.long	241
	.long	.Ltmp263-.Ltmp262
.Ltmp262:
	.short	.Ltmp265-.Ltmp264
.Ltmp264:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end12-"format_args!@string!@-"
	.long	0
	.long	0
	.long	4191
	.secrel32	"format_args!@string!@-"
	.secidx	"format_args!@string!@-"
	.byte	0
	.asciz	"format_args!@string!@-"
	.p2align	2
.Ltmp265:
	.short	.Ltmp267-.Ltmp266
.Ltmp266:
	.short	4114
	.long	216
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp267:
	.short	.Ltmp269-.Ltmp268
.Ltmp268:
	.short	4414
	.long	1568
	.short	1
	.asciz	"format"
	.p2align	2
.Ltmp269:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 72
	.short	.Ltmp271-.Ltmp270
.Ltmp270:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp271:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 40
	.short	.Ltmp273-.Ltmp272
.Ltmp272:
	.short	4414
	.long	4118
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp273:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 80
	.short	.Ltmp275-.Ltmp274
.Ltmp274:
	.short	4414
	.long	4147
	.short	0
	.byte	0
	.p2align	2
.Ltmp275:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 96
	.short	.Ltmp277-.Ltmp276
.Ltmp276:
	.short	4414
	.long	4118
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp277:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 104
	.short	2
	.short	4431
.Ltmp263:
	.p2align	2
	.cv_linetable	12, "format_args!@string!@-", .Lfunc_end12
	.long	241
	.long	.Ltmp279-.Ltmp278
.Ltmp278:
	.short	.Ltmp281-.Ltmp280
.Ltmp280:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end13-"print!@string!@-"
	.long	0
	.long	0
	.long	4193
	.secrel32	"print!@string!@-"
	.secidx	"print!@string!@-"
	.byte	0
	.asciz	"print!@string!@-"
	.p2align	2
.Ltmp281:
	.short	.Ltmp283-.Ltmp282
.Ltmp282:
	.short	4114
	.long	264
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp283:
	.short	.Ltmp285-.Ltmp284
.Ltmp284:
	.short	4414
	.long	1568
	.short	1
	.asciz	"format"
	.p2align	2
.Ltmp285:
	.cv_def_range	 .Ltmp26 .Ltmp27, frame_ptr_rel, 104
	.short	.Ltmp287-.Ltmp286
.Ltmp286:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp287:
	.cv_def_range	 .Ltmp26 .Ltmp27, frame_ptr_rel, 96
	.short	.Ltmp289-.Ltmp288
.Ltmp288:
	.short	4414
	.long	4118
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp289:
	.cv_def_range	 .Ltmp26 .Ltmp27, frame_ptr_rel, 48
	.short	.Ltmp291-.Ltmp290
.Ltmp290:
	.short	4414
	.long	4147
	.short	0
	.byte	0
	.p2align	2
.Ltmp291:
	.cv_def_range	 .Ltmp26 .Ltmp27, frame_ptr_rel, 112
	.short	.Ltmp293-.Ltmp292
.Ltmp292:
	.short	4414
	.long	4118
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp293:
	.cv_def_range	 .Ltmp26 .Ltmp27, frame_ptr_rel, 72
	.short	.Ltmp295-.Ltmp294
.Ltmp294:
	.short	4414
	.long	1539
	.short	0
	.asciz	"stdout"
	.p2align	2
.Ltmp295:
	.cv_def_range	 .Ltmp26 .Ltmp27, frame_ptr_rel, 144
	.short	2
	.short	4431
.Ltmp279:
	.p2align	2
	.cv_linetable	13, "print!@string!@-", .Lfunc_end13
	.long	241
	.long	.Ltmp297-.Ltmp296
.Ltmp296:
	.short	.Ltmp299-.Ltmp298
.Ltmp298:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end14-copy
	.long	0
	.long	0
	.long	4196
	.secrel32	copy
	.secidx	copy
	.byte	0
	.asciz	"copy"
	.p2align	2
.Ltmp299:
	.short	.Ltmp301-.Ltmp300
.Ltmp300:
	.short	4114
	.long	64
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp301:
	.short	.Ltmp303-.Ltmp302
.Ltmp302:
	.short	4414
	.long	1539
	.short	1
	.asciz	"dst"
	.p2align	2
.Ltmp303:
	.cv_def_range	 .Ltmp28 .Ltmp29, frame_ptr_rel, 48
	.short	.Ltmp305-.Ltmp304
.Ltmp304:
	.short	4414
	.long	1539
	.short	1
	.asciz	"src"
	.p2align	2
.Ltmp305:
	.cv_def_range	 .Ltmp28 .Ltmp29, frame_ptr_rel, 56
	.short	.Ltmp307-.Ltmp306
.Ltmp306:
	.short	4414
	.long	117
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp307:
	.cv_def_range	 .Ltmp28 .Ltmp29, frame_ptr_rel, 8
	.short	.Ltmp309-.Ltmp308
.Ltmp308:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp309:
	.cv_def_range	 .Ltmp28 .Ltmp29, frame_ptr_rel, 40
	.short	.Ltmp311-.Ltmp310
.Ltmp310:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a0"
	.p2align	2
.Ltmp311:
	.cv_def_range	 .Ltmp28 .Ltmp29, frame_ptr_rel, 16
	.short	.Ltmp313-.Ltmp312
.Ltmp312:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a1"
	.p2align	2
.Ltmp313:
	.cv_def_range	 .Ltmp28 .Ltmp29, frame_ptr_rel, 24
	.short	.Ltmp315-.Ltmp314
.Ltmp314:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp315:
	.cv_def_range	 .Ltmp28 .Ltmp29, frame_ptr_rel, 0
	.short	2
	.short	4431
.Ltmp297:
	.p2align	2
	.cv_linetable	14, copy, .Lfunc_end14
	.long	241
	.long	.Ltmp317-.Ltmp316
.Ltmp316:
	.short	.Ltmp319-.Ltmp318
.Ltmp318:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end15-len
	.long	0
	.long	0
	.long	4198
	.secrel32	len
	.secidx	len
	.byte	0
	.asciz	"len"
	.p2align	2
.Ltmp319:
	.short	.Ltmp321-.Ltmp320
.Ltmp320:
	.short	4114
	.long	32
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp321:
	.short	.Ltmp323-.Ltmp322
.Ltmp322:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp323:
	.cv_def_range	 .Ltmp30 .Ltmp31, frame_ptr_rel, 8
	.short	.Ltmp325-.Ltmp324
.Ltmp324:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp325:
	.cv_def_range	 .Ltmp30 .Ltmp31, frame_ptr_rel, 24
	.short	.Ltmp327-.Ltmp326
.Ltmp326:
	.short	4414
	.long	19
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp327:
	.cv_def_range	 .Ltmp30 .Ltmp31, frame_ptr_rel, 0
	.short	2
	.short	4431
.Ltmp317:
	.p2align	2
	.cv_linetable	15, len, .Lfunc_end15
	.long	241
	.long	.Ltmp329-.Ltmp328
.Ltmp328:
	.short	.Ltmp331-.Ltmp330
.Ltmp330:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end16-open_file
	.long	0
	.long	0
	.long	4201
	.secrel32	open_file
	.secidx	open_file
	.byte	0
	.asciz	"open_file"
	.p2align	2
.Ltmp331:
	.short	.Ltmp333-.Ltmp332
.Ltmp332:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	0
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
	.asciz	"f_name"
	.p2align	2
.Ltmp335:
	.cv_def_range	 .Ltmp32 .Ltmp33, frame_ptr_rel, 64
	.short	.Ltmp337-.Ltmp336
.Ltmp336:
	.short	4414
	.long	19
	.short	1
	.asciz	"access"
	.p2align	2
.Ltmp337:
	.cv_def_range	 .Ltmp32 .Ltmp33, frame_ptr_rel, 72
	.short	.Ltmp339-.Ltmp338
.Ltmp338:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp339:
	.cv_def_range	 .Ltmp32 .Ltmp33, frame_ptr_rel, 88
	.short	.Ltmp341-.Ltmp340
.Ltmp340:
	.short	4414
	.long	19
	.short	0
	.byte	0
	.p2align	2
.Ltmp341:
	.cv_def_range	 .Ltmp32 .Ltmp33, frame_ptr_rel, 56
	.short	.Ltmp343-.Ltmp342
.Ltmp342:
	.short	4414
	.long	1539
	.short	0
	.asciz	"file"
	.p2align	2
.Ltmp343:
	.cv_def_range	 .Ltmp32 .Ltmp33, frame_ptr_rel, 96
	.short	2
	.short	4431
.Ltmp329:
	.p2align	2
	.cv_linetable	16, open_file, .Lfunc_end16
	.long	241
	.long	.Ltmp345-.Ltmp344
.Ltmp344:
	.short	.Ltmp347-.Ltmp346
.Ltmp346:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end17-write_file
	.long	0
	.long	0
	.long	4204
	.secrel32	write_file
	.secidx	write_file
	.byte	0
	.asciz	"write_file"
	.p2align	2
.Ltmp347:
	.short	.Ltmp349-.Ltmp348
.Ltmp348:
	.short	4114
	.long	88
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp349:
	.short	.Ltmp351-.Ltmp350
.Ltmp350:
	.short	4414
	.long	1539
	.short	1
	.asciz	"file"
	.p2align	2
.Ltmp351:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 72
	.short	.Ltmp353-.Ltmp352
.Ltmp352:
	.short	4414
	.long	1539
	.short	1
	.asciz	"data"
	.p2align	2
.Ltmp353:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 80
	.short	.Ltmp355-.Ltmp354
.Ltmp354:
	.short	4414
	.long	0
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp355:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 52
	.short	.Ltmp357-.Ltmp356
.Ltmp356:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp357:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 64
	.short	.Ltmp359-.Ltmp358
.Ltmp358:
	.short	4414
	.long	0
	.short	0
	.byte	0
	.p2align	2
.Ltmp359:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 48
	.short	.Ltmp361-.Ltmp360
.Ltmp360:
	.short	4414
	.long	48
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp361:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 47
	.short	2
	.short	4431
.Ltmp345:
	.p2align	2
	.cv_linetable	17, write_file, .Lfunc_end17
	.long	241
	.long	.Ltmp363-.Ltmp362
.Ltmp362:
	.short	.Ltmp365-.Ltmp364
.Ltmp364:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end18-get_stdout
	.long	0
	.long	0
	.long	4207
	.secrel32	get_stdout
	.secidx	get_stdout
	.byte	0
	.asciz	"get_stdout"
	.p2align	2
.Ltmp365:
	.short	.Ltmp367-.Ltmp366
.Ltmp366:
	.short	4114
	.long	56
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp367:
	.short	.Ltmp369-.Ltmp368
.Ltmp368:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp369:
	.cv_def_range	 .Ltmp36 .Ltmp37, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp363:
	.p2align	2
	.cv_linetable	18, get_stdout, .Lfunc_end18
	.long	241
	.long	.Ltmp371-.Ltmp370
.Ltmp370:
	.short	.Ltmp373-.Ltmp372
.Ltmp372:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end19-main
	.long	0
	.long	0
	.long	4209
	.secrel32	main
	.secidx	main
	.byte	0
	.asciz	"main"
	.p2align	2
.Ltmp373:
	.short	.Ltmp375-.Ltmp374
.Ltmp374:
	.short	4114
	.long	248
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp375:
	.short	.Ltmp377-.Ltmp376
.Ltmp376:
	.short	4414
	.long	4212
	.short	0
	.asciz	"to_print"
	.p2align	2
.Ltmp377:
	.cv_def_range	 .Ltmp38 .Ltmp39, frame_ptr_rel, 32
	.short	2
	.short	4431
.Ltmp371:
	.p2align	2
	.cv_linetable	19, main, .Lfunc_end19
	.long	241
	.long	.Ltmp379-.Ltmp378
.Ltmp378:
	.short	.Ltmp381-.Ltmp380
.Ltmp380:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end20-print_printable_struct
	.long	0
	.long	0
	.long	4217
	.secrel32	print_printable_struct
	.secidx	print_printable_struct
	.byte	0
	.asciz	"print_printable_struct"
	.p2align	2
.Ltmp381:
	.short	.Ltmp383-.Ltmp382
.Ltmp382:
	.short	4114
	.long	240
	.long	0
	.long	0
	.long	8
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp383:
	.short	.Ltmp385-.Ltmp384
.Ltmp384:
	.short	4414
	.long	1539
	.short	1
	.asciz	"the_struct"
	.p2align	2
.Ltmp385:
	.cv_def_range	 .Ltmp40 .Ltmp41, frame_ptr_rel, 96
	.short	.Ltmp387-.Ltmp386
.Ltmp386:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp387:
	.cv_def_range	 .Ltmp40 .Ltmp41, frame_ptr_rel, 88
	.short	.Ltmp389-.Ltmp388
.Ltmp388:
	.short	4414
	.long	4218
	.short	0
	.asciz	"casted"
	.p2align	2
.Ltmp389:
	.cv_def_range	 .Ltmp40 .Ltmp41, frame_ptr_rel, 104
	.short	2
	.short	4431
.Ltmp379:
	.p2align	2
	.cv_linetable	20, print_printable_struct, .Lfunc_end20
	.long	241
	.long	.Ltmp391-.Ltmp390
.Ltmp390:
	.short	.Ltmp393-.Ltmp392
.Ltmp392:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end21-"overload[]"
	.long	0
	.long	0
	.long	4221
	.secrel32	"overload[]"
	.secidx	"overload[]"
	.byte	0
	.asciz	"overload[]"
	.p2align	2
.Ltmp393:
	.short	.Ltmp395-.Ltmp394
.Ltmp394:
	.short	4114
	.long	24
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp395:
	.short	.Ltmp397-.Ltmp396
.Ltmp396:
	.short	4414
	.long	19
	.short	1
	.asciz	"index"
	.p2align	2
.Ltmp397:
	.cv_def_range	 .Ltmp42 .Ltmp43, frame_ptr_rel, 16
	.short	.Ltmp399-.Ltmp398
.Ltmp398:
	.short	4414
	.long	4118
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp399:
	.cv_def_range	 .Ltmp42 .Ltmp43, frame_ptr_rel, 0
	.short	2
	.short	4431
.Ltmp391:
	.p2align	2
	.cv_linetable	21, "overload[]", .Lfunc_end21
	.long	241
	.long	.Ltmp401-.Ltmp400
.Ltmp400:
	.short	.Ltmp403-.Ltmp402
.Ltmp402:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end22-"overload+"
	.long	0
	.long	0
	.long	4224
	.secrel32	"overload+"
	.secidx	"overload+"
	.byte	0
	.asciz	"overload+"
	.p2align	2
.Ltmp403:
	.short	.Ltmp405-.Ltmp404
.Ltmp404:
	.short	4114
	.long	136
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp405:
	.short	.Ltmp407-.Ltmp406
.Ltmp406:
	.short	4414
	.long	4118
	.short	1
	.asciz	"str"
	.p2align	2
.Ltmp407:
	.cv_def_range	 .Ltmp44 .Ltmp45, frame_ptr_rel, 56
	.short	.Ltmp409-.Ltmp408
.Ltmp408:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp409:
	.cv_def_range	 .Ltmp44 .Ltmp45, frame_ptr_rel, 80
	.short	.Ltmp411-.Ltmp410
.Ltmp410:
	.short	4414
	.long	4101
	.short	0
	.asciz	"__apoc_internal_context"
	.p2align	2
.Ltmp411:
	.cv_def_range	 .Ltmp44 .Ltmp45, frame_ptr_rel, 72
	.short	.Ltmp413-.Ltmp412
.Ltmp412:
	.short	4414
	.long	4118
	.short	0
	.byte	0
	.p2align	2
.Ltmp413:
	.cv_def_range	 .Ltmp44 .Ltmp45, frame_ptr_rel, 32
	.short	.Ltmp415-.Ltmp414
.Ltmp414:
	.short	4414
	.long	19
	.short	0
	.asciz	"text_len"
	.p2align	2
.Ltmp415:
	.cv_def_range	 .Ltmp44 .Ltmp45, frame_ptr_rel, 88
	.short	2
	.short	4431
.Ltmp401:
	.p2align	2
	.cv_linetable	22, "overload+", .Lfunc_end22
	.long	241
	.long	.Ltmp417-.Ltmp416
.Ltmp416:
	.short	.Ltmp419-.Ltmp418
.Ltmp418:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end23-"overload[x]="
	.long	0
	.long	0
	.long	4227
	.secrel32	"overload[x]="
	.secidx	"overload[x]="
	.byte	0
	.asciz	"overload[x]="
	.p2align	2
.Ltmp419:
	.short	.Ltmp421-.Ltmp420
.Ltmp420:
	.short	4114
	.long	112
	.long	0
	.long	0
	.long	8
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp421:
	.short	.Ltmp423-.Ltmp422
.Ltmp422:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp423:
	.cv_def_range	 .Ltmp46 .Ltmp47, frame_ptr_rel, 80
	.short	.Ltmp425-.Ltmp424
.Ltmp424:
	.short	4414
	.long	4114
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp425:
	.cv_def_range	 .Ltmp46 .Ltmp47, frame_ptr_rel, 72
	.short	.Ltmp427-.Ltmp426
.Ltmp426:
	.short	4414
	.long	19
	.short	0
	.asciz	"text_len"
	.p2align	2
.Ltmp427:
	.cv_def_range	 .Ltmp46 .Ltmp47, frame_ptr_rel, 64
	.short	.Ltmp429-.Ltmp428
.Ltmp428:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp429:
	.cv_def_range	 .Ltmp46 .Ltmp47, frame_ptr_rel, 88
	.short	.Ltmp431-.Ltmp430
.Ltmp430:
	.short	4414
	.long	4114
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp431:
	.cv_def_range	 .Ltmp46 .Ltmp47, frame_ptr_rel, 40
	.short	.Ltmp433-.Ltmp432
.Ltmp432:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp433:
	.cv_def_range	 .Ltmp46 .Ltmp47, frame_ptr_rel, 48
	.short	.Ltmp435-.Ltmp434
.Ltmp434:
	.short	4414
	.long	19
	.short	0
	.asciz	"copy_size"
	.p2align	2
.Ltmp435:
	.cv_def_range	 .Ltmp46 .Ltmp47, frame_ptr_rel, 56
	.short	2
	.short	4431
.Ltmp417:
	.p2align	2
	.cv_linetable	23, "overload[x]=", .Lfunc_end23
	.long	241
	.long	.Ltmp437-.Ltmp436
.Ltmp436:
	.short	.Ltmp439-.Ltmp438
.Ltmp438:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end24-"overload[x]=.12"
	.long	0
	.long	0
	.long	4230
	.secrel32	"overload[x]=.12"
	.secidx	"overload[x]=.12"
	.byte	0
	.asciz	"overload[x]="
	.p2align	2
.Ltmp439:
	.short	.Ltmp441-.Ltmp440
.Ltmp440:
	.short	4114
	.long	64
	.long	0
	.long	0
	.long	8
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp441:
	.short	.Ltmp443-.Ltmp442
.Ltmp442:
	.short	4414
	.long	32
	.short	1
	.asciz	"c"
	.p2align	2
.Ltmp443:
	.cv_def_range	 .Ltmp48 .Ltmp49, frame_ptr_rel, 39
	.short	.Ltmp445-.Ltmp444
.Ltmp444:
	.short	4414
	.long	4114
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp445:
	.cv_def_range	 .Ltmp48 .Ltmp49, frame_ptr_rel, 48
	.short	.Ltmp447-.Ltmp446
.Ltmp446:
	.short	4414
	.long	4114
	.short	0
	.asciz	"to_put"
	.p2align	2
.Ltmp447:
	.cv_def_range	 .Ltmp48 .Ltmp49, frame_ptr_rel, 40
	.short	2
	.short	4431
.Ltmp437:
	.p2align	2
	.cv_linetable	24, "overload[x]=.12", .Lfunc_end24
	.long	241
	.long	.Ltmp449-.Ltmp448
.Ltmp448:
	.short	.Ltmp451-.Ltmp450
.Ltmp450:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end25-overload
	.long	0
	.long	0
	.long	4232
	.secrel32	overload
	.secidx	overload
	.byte	0
	.asciz	"overload"
	.p2align	2
.Ltmp451:
	.short	.Ltmp453-.Ltmp452
.Ltmp452:
	.short	4114
	.long	88
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp453:
	.short	.Ltmp455-.Ltmp454
.Ltmp454:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp455:
	.cv_def_range	 .Ltmp50 .Ltmp51, frame_ptr_rel, 32
	.short	.Ltmp457-.Ltmp456
.Ltmp456:
	.short	4414
	.long	4118
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp457:
	.cv_def_range	 .Ltmp50 .Ltmp51, frame_ptr_rel, 56
	.short	.Ltmp459-.Ltmp458
.Ltmp458:
	.short	4414
	.long	4118
	.short	0
	.asciz	"str2"
	.p2align	2
.Ltmp459:
	.cv_def_range	 .Ltmp50 .Ltmp51, frame_ptr_rel, 40
	.short	2
	.short	4431
.Ltmp449:
	.p2align	2
	.cv_linetable	25, overload, .Lfunc_end25
	.long	241
	.long	.Ltmp461-.Ltmp460
.Ltmp460:
	.short	.Ltmp463-.Ltmp462
.Ltmp462:
	.short	4364
	.long	19
	.secrel32	global_var
	.secidx	global_var
	.asciz	"STRING_BUFFER_SIZE"
	.p2align	2
.Ltmp463:
	.short	.Ltmp465-.Ltmp464
.Ltmp464:
	.short	4364
	.long	4233
	.secrel32	global_var.1
	.secidx	global_var.1
	.asciz	"printable_types"
	.p2align	2
.Ltmp465:
	.short	.Ltmp467-.Ltmp466
.Ltmp466:
	.short	4364
	.long	19
	.secrel32	global_var.2
	.secidx	global_var.2
	.asciz	"last_printable_type"
	.p2align	2
.Ltmp467:
	.short	.Ltmp469-.Ltmp468
.Ltmp468:
	.short	4364
	.long	19
	.secrel32	global_var.3
	.secidx	global_var.3
	.asciz	"DELETE"
	.p2align	2
.Ltmp469:
	.short	.Ltmp471-.Ltmp470
.Ltmp470:
	.short	4364
	.long	19
	.secrel32	global_var.4
	.secidx	global_var.4
	.asciz	"READ_CONTROL"
	.p2align	2
.Ltmp471:
	.short	.Ltmp473-.Ltmp472
.Ltmp472:
	.short	4364
	.long	19
	.secrel32	global_var.5
	.secidx	global_var.5
	.asciz	"WRITE_DAC"
	.p2align	2
.Ltmp473:
	.short	.Ltmp475-.Ltmp474
.Ltmp474:
	.short	4364
	.long	19
	.secrel32	global_var.6
	.secidx	global_var.6
	.asciz	"WRITE_OWNER"
	.p2align	2
.Ltmp475:
	.short	.Ltmp477-.Ltmp476
.Ltmp476:
	.short	4364
	.long	19
	.secrel32	global_var.7
	.secidx	global_var.7
	.asciz	"SYNCHRONIZE"
	.p2align	2
.Ltmp477:
	.short	.Ltmp479-.Ltmp478
.Ltmp478:
	.short	4364
	.long	19
	.secrel32	global_var.8
	.secidx	global_var.8
	.asciz	"my_global_var"
	.p2align	2
.Ltmp479:
	.short	.Ltmp481-.Ltmp480
.Ltmp480:
	.short	4364
	.long	48
	.secrel32	global_var.9
	.secidx	global_var.9
	.asciz	"true"
	.p2align	2
.Ltmp481:
	.short	.Ltmp483-.Ltmp482
.Ltmp482:
	.short	4364
	.long	48
	.secrel32	global_var.10
	.secidx	global_var.10
	.asciz	"false"
	.p2align	2
.Ltmp483:
	.short	.Ltmp485-.Ltmp484
.Ltmp484:
	.short	4364
	.long	1539
	.secrel32	global_var.11
	.secidx	global_var.11
	.asciz	"null"
	.p2align	2
.Ltmp485:
.Ltmp461:
	.p2align	2
	.long	241
	.long	.Ltmp487-.Ltmp486
.Ltmp486:
	.short	.Ltmp489-.Ltmp488
.Ltmp488:
	.short	4360
	.long	4101
	.asciz	"__Internal_Context"
	.p2align	2
.Ltmp489:
	.short	.Ltmp491-.Ltmp490
.Ltmp490:
	.short	4360
	.long	4109
	.asciz	"Printable_Type_Info"
	.p2align	2
.Ltmp491:
	.short	.Ltmp493-.Ltmp492
.Ltmp492:
	.short	4360
	.long	4118
	.asciz	"string"
	.p2align	2
.Ltmp493:
	.short	.Ltmp495-.Ltmp494
.Ltmp494:
	.short	4360
	.long	4122
	.asciz	"String_Builder"
	.p2align	2
.Ltmp495:
	.short	.Ltmp497-.Ltmp496
.Ltmp496:
	.short	4360
	.long	4153
	.asciz	"Any"
	.p2align	2
.Ltmp497:
	.short	.Ltmp499-.Ltmp498
.Ltmp498:
	.short	4360
	.long	4162
	.asciz	"Type_Info"
	.p2align	2
.Ltmp499:
	.short	.Ltmp501-.Ltmp500
.Ltmp500:
	.short	4360
	.long	4165
	.asciz	"Type_Primitive"
	.p2align	2
.Ltmp501:
	.short	.Ltmp503-.Ltmp502
.Ltmp502:
	.short	4360
	.long	4169
	.asciz	"Type_Struct"
	.p2align	2
.Ltmp503:
	.short	.Ltmp505-.Ltmp504
.Ltmp504:
	.short	4360
	.long	4172
	.asciz	"Type_Array"
	.p2align	2
.Ltmp505:
	.short	.Ltmp507-.Ltmp506
.Ltmp506:
	.short	4360
	.long	4175
	.asciz	"Type_Pointer"
	.p2align	2
.Ltmp507:
	.short	.Ltmp509-.Ltmp508
.Ltmp508:
	.short	4360
	.long	4178
	.asciz	"Type_Enum"
	.p2align	2
.Ltmp509:
	.short	.Ltmp511-.Ltmp510
.Ltmp510:
	.short	4360
	.long	4181
	.asciz	"Type_Func"
	.p2align	2
.Ltmp511:
	.short	.Ltmp513-.Ltmp512
.Ltmp512:
	.short	4360
	.long	4162
	.asciz	"Type_Info"
	.p2align	2
.Ltmp513:
	.short	.Ltmp515-.Ltmp514
.Ltmp514:
	.short	4360
	.long	4162
	.asciz	"Type_Info"
	.p2align	2
.Ltmp515:
	.short	.Ltmp517-.Ltmp516
.Ltmp516:
	.short	4360
	.long	4162
	.asciz	"Type_Info"
	.p2align	2
.Ltmp517:
	.short	.Ltmp519-.Ltmp518
.Ltmp518:
	.short	4360
	.long	4162
	.asciz	"Type_Info"
	.p2align	2
.Ltmp519:
	.short	.Ltmp521-.Ltmp520
.Ltmp520:
	.short	4360
	.long	4212
	.asciz	"Printable_Struct"
	.p2align	2
.Ltmp521:
.Ltmp487:
	.p2align	2
	.cv_filechecksums
	.cv_stringtable
	.long	241
	.long	.Ltmp523-.Ltmp522
.Ltmp522:
	.short	.Ltmp525-.Ltmp524
.Ltmp524:
	.short	4428
	.long	4237
	.p2align	2
.Ltmp525:
.Ltmp523:
	.p2align	2
	.section	.debug$T,"dr"
	.p2align	2
	.long	4
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
	.long	0x1000
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1001
	.asciz	"mem_alloc"
	.byte	242
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"__Internal_Context"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x603
	.short	0x0
	.asciz	"return_val"
	.byte	243
	.byte	242
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x1
	.short	0x0
	.long	0x1004
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"__Internal_Context"
	.byte	243
	.byte	242
	.byte	241
	.short	0x2e
	.short	0x1605
	.long	0x0
	.asciz	"W:\\ApocCompiler\\bin\\Standard\\Basic.apoc"
	.short	0xe
	.short	0x1606
	.long	0x1005
	.long	0x1006
	.long	0x32
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x603
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1008
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x1009
	.asciz	"register_printable"
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"Printable_Type_Info"
	.byte	242
	.byte	241
	.short	0x2a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x603
	.short	0x0
	.asciz	"function"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x620
	.short	0x8
	.asciz	"type_name"
	.short	0x2a
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x100c
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"Printable_Type_Info"
	.byte	242
	.byte	241
	.short	0x32
	.short	0x1605
	.long	0x0
	.asciz	"W:\\ApocCompiler\\bin\\Standard\\String.apoc"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x100d
	.long	0x100e
	.long	0x12
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
	.short	0xa
	.short	0x1002
	.long	0x1011
	.long	0x1000c
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1012
	.short	0xe
	.short	0x1008
	.long	0x1010
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1013
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
	.long	0x1015
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"string"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1016
	.long	0x100e
	.long	0x5
	.short	0xe
	.short	0x1503
	.long	0x20
	.long	0x23
	.short	0x100
	.byte	0
	.byte	241
	.short	0x36
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x1018
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
	.long	0x1012
	.short	0x108
	.asciz	"next"
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x3
	.short	0x0
	.long	0x1019
	.long	0x0
	.long	0x0
	.short	0x110
	.asciz	"String_Builder"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x101a
	.long	0x100e
	.long	0xb
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x1014
	.asciz	"builder_to_string"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x1011
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x101d
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x101e
	.asciz	"init_builder"
	.byte	243
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1010
	.long	0x1000c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1020
	.long	0x1020
	.short	0xe
	.short	0x1008
	.long	0x30
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1021
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1022
	.asciz	"compare"
	.short	0xe
	.short	0x1008
	.long	0x1010
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x101d
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1024
	.asciz	"to_string"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1010
	.short	0xe
	.short	0x1008
	.long	0x1010
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1026
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x1027
	.asciz	"terminate_string"
	.byte	243
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x75
	.long	0x13
	.long	0x1012
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1029
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x102a
	.asciz	"build_unsigned_int"
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x13
	.long	0x1012
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x102c
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x102d
	.asciz	"int_to_str"
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x41
	.long	0x1012
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x102f
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1030
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
	.long	0x1032
	.long	0x1000c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1033
	.long	0x1012
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1034
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
	.long	0x1036
	.long	0x1000c
	.short	0x22
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x1037
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
	.long	0x1038
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"Any"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1039
	.long	0x1006
	.long	0x36
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
	.long	0x103b
	.short	0x0
	.asciz	"primitive"
	.short	0x150d
	.short	0x3
	.long	0x103c
	.short	0x0
	.asciz	"structure"
	.short	0x150d
	.short	0x3
	.long	0x103d
	.short	0x0
	.asciz	"array"
	.short	0x150d
	.short	0x3
	.long	0x103e
	.short	0x0
	.asciz	"pointer"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x103f
	.short	0x0
	.asciz	"enumerator"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1040
	.short	0x0
	.asciz	"function"
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x1041
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"Type_Info"
	.short	0xe
	.short	0x1606
	.long	0x1042
	.long	0x1006
	.long	0x3b
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
	.long	0x1044
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"Type_Primitive"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1045
	.long	0x1006
	.long	0x45
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
	.long	0x1047
	.short	0x18
	.asciz	"member_names"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1037
	.short	0x20
	.asciz	"member_types"
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x1048
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"Type_Struct"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1049
	.long	0x1006
	.long	0x4a
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
	.long	0x1037
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
	.long	0x104b
	.long	0x0
	.long	0x0
	.short	0x18
	.asciz	"Type_Array"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x104c
	.long	0x1006
	.long	0x54
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
	.long	0x1037
	.short	0x8
	.asciz	"pointed"
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x104e
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"Type_Pointer"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x104f
	.long	0x1006
	.long	0x5a
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
	.long	0x103b
	.short	0x4
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1047
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
	.long	0x1051
	.long	0x0
	.long	0x0
	.short	0x20
	.asciz	"Type_Enum"
	.short	0xe
	.short	0x1606
	.long	0x1052
	.long	0x1006
	.long	0x5f
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
	.long	0x1037
	.short	0x8
	.asciz	"param_types"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1037
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
	.long	0x1054
	.long	0x0
	.long	0x0
	.short	0x20
	.asciz	"Type_Func"
	.short	0xe
	.short	0x1606
	.long	0x1055
	.long	0x1006
	.long	0x66
	.short	0xe
	.short	0x1606
	.long	0x1042
	.long	0x1006
	.long	0x51
	.short	0xe
	.short	0x1606
	.long	0x1042
	.long	0x1006
	.long	0x56
	.short	0xe
	.short	0x1606
	.long	0x1042
	.long	0x1006
	.long	0x5c
	.short	0xe
	.short	0x1606
	.long	0x1042
	.long	0x1006
	.long	0x68
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x1035
	.asciz	"find_printable_type"
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1010
	.long	0x1033
	.short	0xe
	.short	0x1008
	.long	0x1010
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x105c
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x105d
	.asciz	"parse_format"
	.byte	243
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1601
	.long	0x0
	.long	0x1027
	.asciz	"format_args!@string!@-"
	.byte	241
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1026
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x1060
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
	.long	0x1062
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1063
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
	.long	0x101d
	.short	0xe
	.short	0x1601
	.long	0x0
	.long	0x1065
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
	.long	0x1067
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1068
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
	.long	0x106a
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x106b
	.asciz	"write_file"
	.byte	241
	.short	0x6
	.short	0x1201
	.long	0x0
	.short	0xe
	.short	0x1008
	.long	0x603
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x106d
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x106e
	.asciz	"get_stdout"
	.byte	241
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x106d
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1070
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
	.asciz	"Printable_Struct"
	.byte	241
	.short	0x22
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x0
	.asciz	"num1"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x4
	.asciz	"num2"
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x1073
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"Printable_Struct"
	.byte	241
	.short	0x22
	.short	0x1605
	.long	0x0
	.asciz	"W:\\ApocCompiler\\Test.apoc"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1074
	.long	0x1075
	.long	0x13
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x603
	.short	0xe
	.short	0x1008
	.long	0x1010
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1077
	.short	0x22
	.short	0x1601
	.long	0x0
	.long	0x1078
	.asciz	"print_printable_struct"
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1072
	.long	0x1000c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1010
	.long	0x13
	.short	0xe
	.short	0x1008
	.long	0x20
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x107b
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x107c
	.asciz	"overload[]"
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1010
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x1010
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x107e
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x107f
	.asciz	"overload+"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1012
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1081
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1082
	.asciz	"overload[x]="
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1012
	.long	0x20
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1084
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1085
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
	.long	0x107e
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1087
	.asciz	"overload"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1503
	.long	0x100b
	.long	0x23
	.short	0x4000
	.byte	0
	.byte	241
	.short	0x26
	.short	0x1605
	.long	0x0
	.asciz	"W:\\ApocCompiler\\bin\\Standard"
	.byte	243
	.byte	242
	.byte	241
	.short	0x16
	.short	0x1605
	.long	0x0
	.asciz	"C_Standard.apoc"
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
	.long	0x108a
	.long	0x0
	.long	0x108b
	.long	0x108c
	.long	0x0
	.byte	242
	.byte	241
	.globl	_fltused
