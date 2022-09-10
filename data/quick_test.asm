	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"quick_test.apoc"
	.def	give_num;
	.scl	2;
	.type	32;
	.endef
	.globl	give_num
	.p2align	4, 0x90
give_num:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "E:\\C_Projects\\Apocalypse\\quick_test_2.apoc"
	.cv_loc	0 1 4 5
	movl	$12, %eax
	retq
.Ltmp0:
.Lfunc_end0:

	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main
	.p2align	4, 0x90
main:
.Lfunc_begin1:
	.cv_func_id 1
	.cv_file	2 "E:\\C_Projects\\Apocalypse\\Test.apoc"
	.cv_loc	1 2 7 0
	subq	$40, %rsp
.Ltmp1:
	.cv_loc	1 2 15 13
	leaq	.L__unnamed_1(%rip), %rcx
	callq	puts
	.cv_loc	1 2 14 13
	leaq	.L__unnamed_2(%rip), %rcx
	callq	puts
	.cv_loc	1 2 12 12
	leaq	.L__unnamed_3(%rip), %rcx
	callq	puts
	.cv_loc	1 2 9 7
	leaq	.L__unnamed_4(%rip), %rcx
	callq	puts
	.cv_loc	1 2 16 6
	xorl	%eax, %eax
	addq	$40, %rsp
	retq
.Ltmp2:
.Lfunc_end1:

	.def	mem_alloc;
	.scl	2;
	.type	32;
	.endef
	.globl	mem_alloc
	.p2align	4, 0x90
mem_alloc:
.Lfunc_begin2:
	.cv_func_id 2
	.cv_file	3 "E:\\C_Projects\\Apocalypse\\Standard\\C_Standard.apoc"
	.cv_loc	2 3 13 0
	pushq	%rsi
	pushq	%rdi
	subq	$40, %rsp
	movq	%rdx, %rsi
.Ltmp3:
	.cv_loc	2 3 14 2
	movq	%rdx, %rcx
	callq	malloc
	movq	%rax, %rdi
.Ltmp4:
	.cv_loc	2 3 15 8
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rsi, %r8
	callq	memset
	.cv_loc	2 3 16 5
	movq	%rdi, %rax
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	retq
.Ltmp5:
.Lfunc_end2:

	.def	builder_to_string;
	.scl	2;
	.type	32;
	.endef
	.globl	builder_to_string
	.p2align	4, 0x90
builder_to_string:
.Lfunc_begin3:
	.cv_func_id 3
	.cv_file	4 "E:\\C_Projects\\Apocalypse\\Standard\\String.apoc"
	.cv_loc	3 4 18 0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$32, %rsp
.Ltmp6:
	movq	%rdx, %rbx
	movq	%rcx, %r14
.Ltmp7:
	.cv_loc	3 4 22 2
	movq	264(%rdx), %rax
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB3_3
.Ltmp8:
	movq	%rbx, %rcx
.Ltmp9:
	.p2align	4, 0x90
.LBB3_2:
	.cv_loc	3 4 23 3
	addq	256(%rcx), %r12
.Ltmp10:
	movq	%rax, %rbx
	.cv_loc	3 4 22 2
	movq	264(%rax), %rax
.Ltmp11:
	movq	%rbx, %rcx
	testq	%rax, %rax
	jne	.LBB3_2
.Ltmp12:
.LBB3_3:
	.cv_loc	3 4 26 2
	addq	256(%rbx), %r12
.Ltmp13:
	.cv_inline_site_id 4 within 3 inlined_at 4 27 2
	.cv_loc	4 3 14 2
	movq	%r12, %rcx
	callq	malloc
	movq	%rax, %r15
.Ltmp14:
	xorl	%r13d, %r13d
	.cv_loc	4 3 15 8
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%r12, %r8
	callq	memset
.Ltmp15:
	.cv_loc	3 4 31 2
	cmpq	$0, 264(%rbx)
	je	.LBB3_15
.Ltmp16:
	leaq	264(%rbx), %r8
	xorl	%r13d, %r13d
	movq	%r15, %rax
	jmp	.LBB3_5
.Ltmp17:
	.p2align	4, 0x90
.LBB3_13:
	.cv_loc	3 4 33 3
	movq	(%r8), %rbx
.Ltmp18:
	.cv_loc	3 4 34 3
	incq	%r13
.Ltmp19:
	.cv_loc	3 4 31 2
	leaq	264(%rbx), %r8
	addq	$256, %rax
	cmpq	$0, 264(%rbx)
	je	.LBB3_14
.Ltmp20:
.LBB3_5:
	.cv_loc	3 4 32 7
	movq	256(%rbx), %rdi
.Ltmp21:
	.cv_inline_site_id 5 within 3 inlined_at 4 32 7
	.cv_loc	5 4 249 2
	testq	%rdi, %rdi
	jle	.LBB3_13
.Ltmp22:
	cmpq	$4, %rdi
	jb	.LBB3_7
.Ltmp23:
	movq	%r13, %rcx
	shlq	$8, %rcx
	addq	%r15, %rcx
.Ltmp24:
	subq	%rbx, %rcx
	movl	$0, %edx
	cmpq	$4, %rcx
	jb	.LBB3_12
.Ltmp25:
	movq	%rdi, %rdx
	andq	$-4, %rdx
	xorl	%ecx, %ecx
.Ltmp26:
	.p2align	4, 0x90
.LBB3_10:
	.cv_loc	5 4 251 3
	movl	(%rbx,%rcx), %esi
	movl	%esi, (%rax,%rcx)
	.cv_loc	5 4 252 2
	addq	$4, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB3_10
.Ltmp27:
	.cv_loc	5 4 249 2
	cmpq	%rdx, %rdi
	jne	.LBB3_12
	jmp	.LBB3_13
.Ltmp28:
.LBB3_7:
	xorl	%edx, %edx
.Ltmp29:
	.p2align	4, 0x90
.LBB3_12:
	.cv_loc	5 4 251 3
	movzbl	(%rbx,%rdx), %ecx
	movb	%cl, (%rax,%rdx)
	.cv_loc	5 4 252 2
	incq	%rdx
.Ltmp30:
	.cv_loc	5 4 249 2
	cmpq	%rdi, %rdx
	jl	.LBB3_12
	jmp	.LBB3_13
.Ltmp31:
.LBB3_14:
	.cv_loc	3 4 36 6
	shlq	$8, %r13
.Ltmp32:
.LBB3_15:
	movq	256(%rbx), %r8
.Ltmp33:
	.cv_inline_site_id 6 within 3 inlined_at 4 36 6
	.cv_loc	6 4 249 2
	testq	%r8, %r8
	jle	.LBB3_24
.Ltmp34:
	movq	%r15, %rcx
	addq	%r13, %rcx
.Ltmp35:
	cmpq	$8, %r8
	jae	.LBB3_18
.Ltmp36:
	xorl	%edx, %edx
	jmp	.LBB3_23
.Ltmp37:
.LBB3_18:
	movq	%rcx, %rdx
	subq	%rbx, %rdx
	cmpq	$4, %rdx
	jae	.LBB3_20
.Ltmp38:
	xorl	%edx, %edx
	jmp	.LBB3_23
.Ltmp39:
.LBB3_20:
	movq	%r8, %rdx
	andq	$-4, %rdx
	xorl	%edi, %edi
.Ltmp40:
	.p2align	4, 0x90
.LBB3_21:
	.cv_loc	6 4 251 3
	movl	(%rbx,%rdi), %esi
	movl	%esi, (%rcx,%rdi)
	.cv_loc	6 4 252 2
	addq	$4, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB3_21
.Ltmp41:
	.cv_loc	6 4 249 2
	cmpq	%rdx, %r8
	je	.LBB3_24
.Ltmp42:
	.p2align	4, 0x90
.LBB3_23:
	.cv_loc	6 4 251 3
	movzbl	(%rbx,%rdx), %eax
	movb	%al, (%rcx,%rdx)
	.cv_loc	6 4 252 2
	incq	%rdx
.Ltmp43:
	.cv_loc	6 4 249 2
	cmpq	%r8, %rdx
	jl	.LBB3_23
.Ltmp44:
.LBB3_24:
	.cv_loc	3 4 38 5
	movq	(%r14), %rax
	movq	%r15, (%rax)
	movq	%r12, 8(%rax)
	addq	$32, %rsp
	popq	%rbx
.Ltmp45:
	popq	%rdi
	popq	%rsi
	popq	%r12
.Ltmp46:
	popq	%r13
	popq	%r14
	popq	%r15
.Ltmp47:
	retq
.Ltmp48:
.Lfunc_end3:

	.def	init_builder;
	.scl	2;
	.type	32;
	.endef
	.globl	init_builder
	.p2align	4, 0x90
init_builder:
.Lfunc_begin4:
	.cv_func_id 7
	.cv_loc	7 4 42 0
	pushq	%rbp
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$720, %rsp
	leaq	128(%rsp), %rbp
	vmovaps	%xmm8, 576(%rbp)
	vmovaps	%xmm7, 560(%rbp)
	vmovaps	%xmm6, 544(%rbp)
	andq	$-256, %rsp
	movq	%rcx, %r14
.Ltmp49:
	.cv_loc	7 4 43 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 496(%rsp)
	vmovaps	%ymm0, 480(%rsp)
	vmovaps	%ymm0, 448(%rsp)
	vmovaps	%ymm0, 416(%rsp)
	vmovaps	%ymm0, 384(%rsp)
	vmovaps	%ymm0, 352(%rsp)
	vmovaps	%ymm0, 320(%rsp)
	vmovaps	%ymm0, 288(%rsp)
	vmovaps	%ymm0, 256(%rsp)
.Ltmp50:
	.cv_loc	7 4 46 2
	movb	(%rdx), %cl
	testb	%cl, %cl
	je	.LBB4_5
.Ltmp51:
	movq	%rdx, %rdi
	leaq	256(%rsp), %rbx
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.LBB4_2
.Ltmp52:
	.p2align	4, 0x90
.LBB4_4:
	movq	%rsi, %rcx
	shlq	$8, %rcx
	addq	%rax, %rcx
	incq	%rcx
.Ltmp53:
	.cv_loc	7 4 55 2
	incq	%rax
.Ltmp54:
	.cv_loc	7 4 46 2
	movzbl	(%rdi,%rcx), %ecx
	testb	%cl, %cl
	je	.LBB4_5
.Ltmp55:
.LBB4_2:
	.cv_loc	7 4 47 3
	movb	%cl, (%rbx,%rax)
	.cv_loc	7 4 48 3
	incq	256(%rbx)
	.cv_loc	7 4 49 3
	cmpq	$256, %rax
	.cv_loc	7 4 55 2
	jne	.LBB4_4
.Ltmp56:
	.cv_loc	7 4 51 4
	incq	%rsi
.Ltmp57:
	.cv_inline_site_id 8 within 7 inlined_at 4 52 4
	.cv_loc	8 3 14 2
	movl	$272, %ecx
	vzeroupper
	callq	malloc
.Ltmp58:
	.cv_loc	7 4 43 2
	vxorps	%xmm0, %xmm0, %xmm0
.Ltmp59:
	.cv_loc	8 3 15 8
	vmovups	%ymm0, (%rax)
	vmovups	%ymm0, 32(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 160(%rax)
	vmovups	%ymm0, 192(%rax)
	vmovups	%ymm0, 224(%rax)
	vmovups	%ymm0, 240(%rax)
.Ltmp60:
	.cv_loc	7 4 52 4
	movq	%rax, 264(%rbx)
	movq	%rax, %rbx
.Ltmp61:
	xorl	%eax, %eax
	jmp	.LBB4_4
.Ltmp62:
.LBB4_5:
	.cv_loc	7 4 56 5
	movq	(%r14), %rax
	vmovaps	256(%rsp), %ymm0
	vmovaps	288(%rsp), %ymm1
	vmovaps	320(%rsp), %ymm2
	vmovaps	352(%rsp), %ymm3
	vmovaps	384(%rsp), %ymm4
	vmovaps	416(%rsp), %ymm5
	vmovaps	448(%rsp), %ymm6
	vmovaps	480(%rsp), %ymm7
	vmovaps	512(%rsp), %xmm8
	vmovaps	%ymm0, (%rax)
	vmovaps	%ymm1, 32(%rax)
	vmovaps	%ymm2, 64(%rax)
	vmovaps	%ymm3, 96(%rax)
	vmovaps	%ymm4, 128(%rax)
	vmovaps	%ymm5, 160(%rax)
	vmovaps	%ymm6, 192(%rax)
	vmovaps	%ymm7, 224(%rax)
	vmovaps	%xmm8, 256(%rax)
	vmovaps	544(%rbp), %xmm6
	vmovaps	560(%rbp), %xmm7
	vmovaps	576(%rbp), %xmm8
	leaq	592(%rbp), %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%rbp
	vzeroupper
	retq
.Ltmp63:
.Lfunc_end4:

	.def	compare;
	.scl	2;
	.type	32;
	.endef
	.globl	compare
	.p2align	4, 0x90
compare:
.Lfunc_begin5:
	.cv_func_id 9
	.cv_loc	9 4 112 0
	.cv_loc	9 4 113 2
	cmpq	40(%rsp), %r8
	.cv_loc	9 4 116 2
	jne	.LBB5_1
.Ltmp64:
	movb	$1, %al
	testq	%r8, %r8
	jle	.LBB5_2
.Ltmp65:
	xorl	%r10d, %r10d
.Ltmp66:
	.p2align	4, 0x90
.LBB5_6:
	.cv_loc	9 4 117 3
	movzbl	(%rdx,%r10), %ecx
	cmpb	(%r9,%r10), %cl
.Ltmp67:
	.cv_loc	9 4 116 2
	jne	.LBB5_1
.Ltmp68:
	incq	%r10
.Ltmp69:
	cmpq	%r8, %r10
	jl	.LBB5_6
.Ltmp70:
.LBB5_2:
	retq
.Ltmp71:
.LBB5_1:
	xorl	%eax, %eax
	retq
.Ltmp72:
.Lfunc_end5:

	.def	to_string;
	.scl	2;
	.type	32;
	.endef
	.globl	to_string
	.p2align	4, 0x90
to_string:
.Lfunc_begin6:
	.cv_func_id 10
	.cv_loc	10 4 122 0
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %rbx
	movq	%rcx, %r14
	movq	$-1, %rdi
.Ltmp73:
	.p2align	4, 0x90
.LBB6_1:
	.cv_inline_site_id 11 within 10 inlined_at 4 123 2
	.cv_loc	11 4 258 2
	cmpb	$0, 1(%rbx,%rdi)
	leaq	1(%rdi), %rdi
.Ltmp74:
	jne	.LBB6_1
.Ltmp75:
	.cv_inline_site_id 12 within 10 inlined_at 4 124 2
	.cv_loc	12 3 14 2
	movq	%rdi, %rcx
	callq	malloc
	movq	%rax, %rsi
.Ltmp76:
	.cv_loc	12 3 15 8
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rdi, %r8
	callq	memset
.Ltmp77:
	.cv_inline_site_id 13 within 10 inlined_at 4 125 6
	.cv_loc	13 4 249 2
	testq	%rdi, %rdi
	jle	.LBB6_4
.Ltmp78:
	.cv_loc	13 4 251 3
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	movq	%rdi, %r8
	callq	memcpy
.Ltmp79:
.LBB6_4:
	.cv_loc	10 4 127 5
	movq	(%r14), %rax
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
.Ltmp80:
	popq	%r14
	retq
.Ltmp81:
.Lfunc_end6:

	.def	terminate_string;
	.scl	2;
	.type	32;
	.endef
	.globl	terminate_string
	.p2align	4, 0x90
terminate_string:
.Lfunc_begin7:
	.cv_func_id 14
	.cv_loc	14 4 131 0
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$32, %rsp
	movq	%r8, %rbx
	movq	%rdx, %rdi
	movq	%rcx, %r14
.Ltmp82:
	.cv_loc	14 4 133 2
	leaq	1(%r8), %r15
.Ltmp83:
	.cv_inline_site_id 15 within 14 inlined_at 4 134 2
	.cv_loc	15 3 14 2
	movq	%r15, %rcx
	callq	malloc
	movq	%rax, %rsi
.Ltmp84:
	.cv_loc	15 3 15 8
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%r15, %r8
	callq	memset
.Ltmp85:
	.cv_inline_site_id 16 within 14 inlined_at 4 135 6
	.cv_loc	16 4 249 2
	testq	%rbx, %rbx
	jle	.LBB7_7
.Ltmp86:
	xorl	%eax, %eax
	cmpq	$4, %rbx
	jb	.LBB7_6
.Ltmp87:
	movq	%rsi, %rcx
	subq	%rdi, %rcx
	cmpq	$4, %rcx
	jb	.LBB7_6
.Ltmp88:
	movq	%rbx, %rax
	andq	$-4, %rax
	xorl	%ecx, %ecx
.Ltmp89:
	.p2align	4, 0x90
.LBB7_4:
	.cv_loc	16 4 251 3
	movl	(%rdi,%rcx), %edx
	movl	%edx, (%rsi,%rcx)
	.cv_loc	16 4 252 2
	addq	$4, %rcx
	cmpq	%rcx, %rax
	jne	.LBB7_4
.Ltmp90:
	.cv_loc	16 4 249 2
	cmpq	%rax, %rbx
	je	.LBB7_7
.Ltmp91:
	.p2align	4, 0x90
.LBB7_6:
	.cv_loc	16 4 251 3
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, (%rsi,%rax)
	.cv_loc	16 4 252 2
	incq	%rax
.Ltmp92:
	.cv_loc	16 4 249 2
	cmpq	%rbx, %rax
	jl	.LBB7_6
.Ltmp93:
.LBB7_7:
	.cv_loc	14 4 136 2
	movb	$0, (%rsi,%r15)
	.cv_loc	14 4 137 5
	movq	(%r14), %rax
	movq	%rsi, (%rax)
	movq	%r15, 8(%rax)
	addq	$32, %rsp
	popq	%rbx
.Ltmp94:
	popq	%rdi
.Ltmp95:
	popq	%rsi
.Ltmp96:
	popq	%r14
	popq	%r15
.Ltmp97:
	retq
.Ltmp98:
.Lfunc_end7:

	.def	build_unsigned_int;
	.scl	2;
	.type	32;
	.endef
	.globl	build_unsigned_int
	.p2align	4, 0x90
build_unsigned_int:
.Lfunc_begin8:
	.cv_func_id 17
	.cv_loc	17 4 140 0
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$32, %rsp
	.cv_loc	17 4 141 2
	testq	%r8, %r8
	.cv_loc	17 4 146 1
	je	.LBB8_11
.Ltmp99:
	.cv_loc	17 4 143 21
	movq	%r9, %rsi
	movq	%rdx, %rdi
	movabsq	$-3689348814741910323, %rax
	mulxq	%rax, %rdx, %rdx
	shrq	$3, %rdx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %edi
.Ltmp100:
	decq	%r8
	callq	build_unsigned_int
	.cv_loc	17 4 144 4
	orb	$48, %dil
.Ltmp101:
	.cv_inline_site_id 18 within 17 inlined_at 4 144 4
	.cv_loc	18 4 94 2
	movq	256(%rsi), %rax
	testq	%rsi, %rsi
	je	.LBB8_10
.Ltmp102:
	cmpq	$256, %rax
	jne	.LBB8_10
.Ltmp103:
	leaq	256(%rsi), %rbx
.Ltmp104:
	.p2align	4, 0x90
.LBB8_4:
	.cv_loc	18 4 95 3
	cmpq	$0, 264(%rsi)
	.cv_loc	18 4 100 2
	je	.LBB8_5
.Ltmp105:
	.cv_loc	18 4 98 3
	cmpq	$256, (%rbx)
	.cv_loc	18 4 100 2
	jne	.LBB8_8
.Ltmp106:
.LBB8_7:
	.cv_loc	18 4 99 4
	movq	264(%rsi), %rsi
.Ltmp107:
.LBB8_8:
	.cv_loc	18 4 94 2
	movq	256(%rsi), %rax
	testq	%rsi, %rsi
	je	.LBB8_10
.Ltmp108:
	leaq	256(%rsi), %rbx
	cmpq	$256, %rax
	je	.LBB8_4
	jmp	.LBB8_10
.Ltmp109:
	.p2align	4, 0x90
.LBB8_5:
	.cv_inline_site_id 19 within 18 inlined_at 4 96 4
	.cv_loc	19 3 14 2
	movl	$272, %ecx
	vzeroupper
	callq	malloc
.Ltmp110:
	vxorps	%xmm0, %xmm0, %xmm0
	.cv_loc	19 3 15 8
	vmovups	%ymm0, (%rax)
	vmovups	%ymm0, 32(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 160(%rax)
	vmovups	%ymm0, 192(%rax)
	vmovups	%ymm0, 224(%rax)
	vmovups	%ymm0, 240(%rax)
.Ltmp111:
	.cv_loc	18 4 96 4
	movq	%rax, 264(%rsi)
	.cv_loc	18 4 98 3
	cmpq	$256, (%rbx)
	.cv_loc	18 4 100 2
	je	.LBB8_7
	jmp	.LBB8_8
.Ltmp112:
.LBB8_10:
	.cv_loc	18 4 101 2
	movb	%dil, (%rsi,%rax)
	.cv_loc	18 4 102 2
	incq	256(%rsi)
.Ltmp113:
.LBB8_11:
	.cv_loc	17 4 146 1
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	vzeroupper
	retq
.Ltmp114:
.Lfunc_end8:

	.def	int_to_str;
	.scl	2;
	.type	32;
	.endef
	.globl	int_to_str
	.p2align	4, 0x90
int_to_str:
.Lfunc_begin9:
	.cv_func_id 20
	.cv_loc	20 4 149 0
	pushq	%r15
	pushq	%r14
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$32, %rsp
	movq	%r8, %r15
.Ltmp115:
	.cv_loc	20 4 150 2
	testq	%rdx, %rdx
	.cv_loc	20 4 157 2
	je	.LBB9_15
.Ltmp116:
	movq	%rdx, %r14
	xorl	%ebx, %ebx
	movabsq	$7378697629483820647, %rdi
	movq	%rdx, %rcx
.Ltmp117:
	.p2align	4, 0x90
.LBB9_2:
	.cv_loc	20 4 158 3
	movq	%rcx, %rax
	imulq	%rdi
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$2, %rdx
	addq	%rax, %rdx
.Ltmp118:
	.cv_loc	20 4 157 2
	addq	$9, %rcx
	incq	%rbx
.Ltmp119:
	cmpq	$18, %rcx
	movq	%rdx, %rcx
	ja	.LBB9_2
.Ltmp120:
	.cv_loc	20 4 160 2
	testq	%r14, %r14
	.cv_loc	20 4 166 1
	jns	.LBB9_14
.Ltmp121:
	.cv_inline_site_id 21 within 20 inlined_at 4 161 4
	.cv_loc	21 4 94 2
	movq	256(%r15), %rax
	movq	%r15, %rsi
	testq	%r15, %r15
	je	.LBB9_13
.Ltmp122:
	cmpq	$256, %rax
	jne	.LBB9_13
.Ltmp123:
	leaq	256(%r15), %rdi
	movq	%r15, %rsi
.Ltmp124:
	.p2align	4, 0x90
.LBB9_7:
	.cv_loc	21 4 95 3
	cmpq	$0, 264(%rsi)
	.cv_loc	21 4 100 2
	je	.LBB9_8
.Ltmp125:
	.cv_loc	21 4 98 3
	cmpq	$256, (%rdi)
	.cv_loc	21 4 100 2
	jne	.LBB9_11
.Ltmp126:
.LBB9_10:
	.cv_loc	21 4 99 4
	movq	264(%rsi), %rsi
.Ltmp127:
.LBB9_11:
	.cv_loc	21 4 94 2
	movq	256(%rsi), %rax
	testq	%rsi, %rsi
	je	.LBB9_13
.Ltmp128:
	leaq	256(%rsi), %rdi
	cmpq	$256, %rax
	je	.LBB9_7
	jmp	.LBB9_13
.Ltmp129:
	.p2align	4, 0x90
.LBB9_8:
	.cv_inline_site_id 22 within 21 inlined_at 4 96 4
	.cv_loc	22 3 14 2
	movl	$272, %ecx
	vzeroupper
	callq	malloc
.Ltmp130:
	vxorps	%xmm0, %xmm0, %xmm0
	.cv_loc	22 3 15 8
	vmovups	%ymm0, (%rax)
	vmovups	%ymm0, 32(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 160(%rax)
	vmovups	%ymm0, 192(%rax)
	vmovups	%ymm0, 224(%rax)
	vmovups	%ymm0, 240(%rax)
.Ltmp131:
	.cv_loc	21 4 96 4
	movq	%rax, 264(%rsi)
	.cv_loc	21 4 98 3
	cmpq	$256, (%rdi)
	.cv_loc	21 4 100 2
	je	.LBB9_10
	jmp	.LBB9_11
.Ltmp132:
.LBB9_15:
	.cv_inline_site_id 23 within 20 inlined_at 4 151 4
	.cv_loc	23 4 94 2
	movq	256(%r15), %rax
	testq	%r15, %r15
	je	.LBB9_24
.Ltmp133:
	cmpq	$256, %rax
	jne	.LBB9_24
.Ltmp134:
	leaq	256(%r15), %rsi
.Ltmp135:
	.p2align	4, 0x90
.LBB9_18:
	.cv_loc	23 4 95 3
	cmpq	$0, 264(%r15)
	.cv_loc	23 4 100 2
	je	.LBB9_19
.Ltmp136:
	.cv_loc	23 4 98 3
	cmpq	$256, (%rsi)
	.cv_loc	23 4 100 2
	jne	.LBB9_22
.Ltmp137:
.LBB9_21:
	.cv_loc	23 4 99 4
	movq	264(%r15), %r15
.Ltmp138:
.LBB9_22:
	.cv_loc	23 4 94 2
	movq	256(%r15), %rax
	testq	%r15, %r15
	je	.LBB9_24
.Ltmp139:
	leaq	256(%r15), %rsi
	cmpq	$256, %rax
	je	.LBB9_18
	jmp	.LBB9_24
.Ltmp140:
	.p2align	4, 0x90
.LBB9_19:
	.cv_inline_site_id 24 within 23 inlined_at 4 96 4
	.cv_loc	24 3 14 2
	movl	$272, %ecx
	vzeroupper
	callq	malloc
.Ltmp141:
	vxorps	%xmm0, %xmm0, %xmm0
	.cv_loc	24 3 15 8
	vmovups	%ymm0, (%rax)
	vmovups	%ymm0, 32(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 160(%rax)
	vmovups	%ymm0, 192(%rax)
	vmovups	%ymm0, 224(%rax)
	vmovups	%ymm0, 240(%rax)
.Ltmp142:
	.cv_loc	23 4 96 4
	movq	%rax, 264(%r15)
	.cv_loc	23 4 98 3
	cmpq	$256, (%rsi)
	.cv_loc	23 4 100 2
	je	.LBB9_21
	jmp	.LBB9_22
.Ltmp143:
.LBB9_24:
	.cv_loc	23 4 101 2
	movb	$48, (%r15,%rax)
	.cv_loc	23 4 102 2
	incq	256(%r15)
	jmp	.LBB9_25
.Ltmp144:
.LBB9_13:
	.cv_loc	21 4 101 2
	incq	%rbx
.Ltmp145:
	movb	$45, (%rsi,%rax)
	.cv_loc	21 4 102 2
	incq	256(%rsi)
.Ltmp146:
	.cv_loc	20 4 162 3
	negq	%r14
.Ltmp147:
.LBB9_14:
	.cv_loc	20 4 165 20
	movq	%r14, %rdx
	movq	%rbx, %r8
	movq	%r15, %r9
	vzeroupper
	callq	build_unsigned_int
.Ltmp148:
.LBB9_25:
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	vzeroupper
	retq
.Ltmp149:
.Lfunc_end9:

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
.Lfunc_begin10:
	.cv_func_id 25
	.cv_loc	25 4 169 0
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$72, %rsp
	vmovaps	%xmm7, 48(%rsp)
	vmovaps	%xmm6, 32(%rsp)
	movq	%r8, %r15
	vmovapd	%xmm1, %xmm6
.Ltmp150:
	vxorpd	%xmm0, %xmm0, %xmm0
.Ltmp151:
	.cv_loc	25 4 170 2
	vucomisd	%xmm0, %xmm1
	.cv_loc	25 4 185 2
	jae	.LBB10_11
.Ltmp152:
	.cv_inline_site_id 26 within 25 inlined_at 4 171 4
	.cv_loc	26 4 94 2
	movq	256(%r15), %rax
	movq	%r15, %rdi
	testq	%r15, %r15
	je	.LBB10_10
.Ltmp153:
	cmpq	$256, %rax
	jne	.LBB10_10
.Ltmp154:
	leaq	256(%r15), %rsi
	movq	%r15, %rdi
.Ltmp155:
	.p2align	4, 0x90
.LBB10_4:
	.cv_loc	26 4 95 3
	cmpq	$0, 264(%rdi)
	.cv_loc	26 4 100 2
	je	.LBB10_5
.Ltmp156:
	.cv_loc	26 4 98 3
	cmpq	$256, (%rsi)
	.cv_loc	26 4 100 2
	jne	.LBB10_8
.Ltmp157:
.LBB10_7:
	.cv_loc	26 4 99 4
	movq	264(%rdi), %rdi
.Ltmp158:
.LBB10_8:
	.cv_loc	26 4 94 2
	movq	256(%rdi), %rax
	testq	%rdi, %rdi
	je	.LBB10_10
.Ltmp159:
	leaq	256(%rdi), %rsi
	cmpq	$256, %rax
	je	.LBB10_4
	jmp	.LBB10_10
.Ltmp160:
	.p2align	4, 0x90
.LBB10_5:
	.cv_inline_site_id 27 within 26 inlined_at 4 96 4
	.cv_loc	27 3 14 2
	movl	$272, %ecx
	vzeroupper
	callq	malloc
.Ltmp161:
	vxorpd	%xmm0, %xmm0, %xmm0
	.cv_loc	27 3 15 8
	vmovupd	%ymm0, (%rax)
	vmovupd	%ymm0, 32(%rax)
	vmovupd	%ymm0, 64(%rax)
	vmovupd	%ymm0, 96(%rax)
	vmovupd	%ymm0, 128(%rax)
	vmovupd	%ymm0, 160(%rax)
	vmovupd	%ymm0, 192(%rax)
	vmovupd	%ymm0, 224(%rax)
	vmovupd	%ymm0, 240(%rax)
.Ltmp162:
	.cv_loc	26 4 96 4
	movq	%rax, 264(%rdi)
	.cv_loc	26 4 98 3
	cmpq	$256, (%rsi)
	.cv_loc	26 4 100 2
	je	.LBB10_7
	jmp	.LBB10_8
.Ltmp163:
.LBB10_10:
	.cv_loc	26 4 101 2
	movb	$45, (%rdi,%rax)
	.cv_loc	26 4 102 2
	incq	256(%rdi)
.Ltmp164:
	.cv_loc	25 4 172 3
	vxorpd	__xmm@80000000000000008000000000000000(%rip), %xmm6, %xmm6
.Ltmp165:
.LBB10_11:
	.cv_loc	25 4 175 2
	vcvttsd2si	%xmm6, %rax
	movq	%rax, %rcx
	vsubsd	__real@43e0000000000000(%rip), %xmm6, %xmm0
	sarq	$63, %rcx
	vcvttsd2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
.Ltmp166:
	.cv_loc	25 4 176 2
	vmovq	%rdx, %xmm0
	vpunpckldq	__xmm@00000000000000004530000043300000(%rip), %xmm0, %xmm0
	vsubpd	__xmm@45300000000000004330000000000000(%rip), %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm7
.Ltmp167:
	.cv_loc	25 4 185 2
	je	.LBB10_12
.Ltmp168:
	.cv_loc	25 4 181 17
	movq	%r15, %r8
	vzeroupper
	callq	int_to_str
	jmp	.LBB10_22
.Ltmp169:
.LBB10_12:
	.cv_inline_site_id 28 within 25 inlined_at 4 179 4
	.cv_loc	28 4 94 2
	movq	256(%r15), %rax
	movq	%r15, %rdi
	testq	%r15, %r15
	je	.LBB10_21
.Ltmp170:
	cmpq	$256, %rax
	jne	.LBB10_21
.Ltmp171:
	leaq	256(%r15), %rsi
	movq	%r15, %rdi
.Ltmp172:
	.p2align	4, 0x90
.LBB10_15:
	.cv_loc	28 4 95 3
	cmpq	$0, 264(%rdi)
	.cv_loc	28 4 100 2
	je	.LBB10_16
.Ltmp173:
	.cv_loc	28 4 98 3
	cmpq	$256, (%rsi)
	.cv_loc	28 4 100 2
	jne	.LBB10_19
.Ltmp174:
.LBB10_18:
	.cv_loc	28 4 99 4
	movq	264(%rdi), %rdi
.Ltmp175:
.LBB10_19:
	.cv_loc	28 4 94 2
	movq	256(%rdi), %rax
	testq	%rdi, %rdi
	je	.LBB10_21
.Ltmp176:
	leaq	256(%rdi), %rsi
	cmpq	$256, %rax
	je	.LBB10_15
	jmp	.LBB10_21
.Ltmp177:
	.p2align	4, 0x90
.LBB10_16:
	.cv_inline_site_id 29 within 28 inlined_at 4 96 4
	.cv_loc	29 3 14 2
	movl	$272, %ecx
	vzeroupper
	callq	malloc
.Ltmp178:
	vxorpd	%xmm0, %xmm0, %xmm0
	.cv_loc	29 3 15 8
	vmovupd	%ymm0, (%rax)
	vmovupd	%ymm0, 32(%rax)
	vmovupd	%ymm0, 64(%rax)
	vmovupd	%ymm0, 96(%rax)
	vmovupd	%ymm0, 128(%rax)
	vmovupd	%ymm0, 160(%rax)
	vmovupd	%ymm0, 192(%rax)
	vmovupd	%ymm0, 224(%rax)
	vmovupd	%ymm0, 240(%rax)
.Ltmp179:
	.cv_loc	28 4 96 4
	movq	%rax, 264(%rdi)
	.cv_loc	28 4 98 3
	cmpq	$256, (%rsi)
	.cv_loc	28 4 100 2
	je	.LBB10_18
	jmp	.LBB10_19
.Ltmp180:
.LBB10_21:
	.cv_loc	28 4 101 2
	movb	$48, (%rdi,%rax)
	.cv_loc	28 4 102 2
	incq	256(%rdi)
.Ltmp181:
.LBB10_22:
	.cv_inline_site_id 30 within 25 inlined_at 4 182 3
	.cv_loc	30 4 94 2
	vsubsd	%xmm7, %xmm6, %xmm6
.Ltmp182:
	leaq	256(%r15), %r14
	movq	256(%r15), %rax
	movq	%r15, %rdi
	testq	%r15, %r15
	je	.LBB10_31
.Ltmp183:
	cmpq	$256, %rax
	jne	.LBB10_31
.Ltmp184:
	movq	%r14, %rsi
	movq	%r15, %rdi
.Ltmp185:
	.p2align	4, 0x90
.LBB10_25:
	.cv_loc	30 4 95 3
	cmpq	$0, 264(%rdi)
	.cv_loc	30 4 100 2
	je	.LBB10_26
.Ltmp186:
	.cv_loc	30 4 98 3
	cmpq	$256, (%rsi)
	.cv_loc	30 4 100 2
	jne	.LBB10_29
.Ltmp187:
.LBB10_28:
	.cv_loc	30 4 99 4
	movq	264(%rdi), %rdi
.Ltmp188:
.LBB10_29:
	.cv_loc	30 4 94 2
	movq	256(%rdi), %rax
	testq	%rdi, %rdi
	je	.LBB10_31
.Ltmp189:
	leaq	256(%rdi), %rsi
	cmpq	$256, %rax
	je	.LBB10_25
	jmp	.LBB10_31
.Ltmp190:
	.p2align	4, 0x90
.LBB10_26:
	.cv_inline_site_id 31 within 30 inlined_at 4 96 4
	.cv_loc	31 3 14 2
	movl	$272, %ecx
	vzeroupper
	callq	malloc
.Ltmp191:
	vxorpd	%xmm0, %xmm0, %xmm0
	.cv_loc	31 3 15 8
	vmovupd	%ymm0, (%rax)
	vmovupd	%ymm0, 32(%rax)
	vmovupd	%ymm0, 64(%rax)
	vmovupd	%ymm0, 96(%rax)
	vmovupd	%ymm0, 128(%rax)
	vmovupd	%ymm0, 160(%rax)
	vmovupd	%ymm0, 192(%rax)
	vmovupd	%ymm0, 224(%rax)
	vmovupd	%ymm0, 240(%rax)
.Ltmp192:
	.cv_loc	30 4 96 4
	movq	%rax, 264(%rdi)
	.cv_loc	30 4 98 3
	cmpq	$256, (%rsi)
	.cv_loc	30 4 100 2
	je	.LBB10_28
	jmp	.LBB10_29
.Ltmp193:
.LBB10_31:
	.cv_loc	30 4 101 2
	movb	$46, (%rdi,%rax)
	.cv_loc	30 4 102 2
	incq	256(%rdi)
.Ltmp194:
	.cv_loc	25 4 185 2
	vcvttsd2si	%xmm6, %rax
	movq	%rax, %rcx
	vsubsd	__real@43e0000000000000(%rip), %xmm6, %xmm0
	vcvttsd2si	%xmm0, %rdx
	sarq	$63, %rcx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	vmovq	%rdx, %xmm0
	vpunpckldq	__xmm@00000000000000004530000043300000(%rip), %xmm0, %xmm0
	vsubpd	__xmm@45300000000000004330000000000000(%rip), %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	xorl	%r12d, %r12d
	vucomisd	%xmm0, %xmm6
	jne	.LBB10_45
	jnp	.LBB10_32
.Ltmp195:
.LBB10_45:
	vmovsd	__real@4024000000000000(%rip), %xmm0
	vmovsd	__real@43e0000000000000(%rip), %xmm1
	vmovdqa	__xmm@00000000000000004530000043300000(%rip), %xmm2
	vmovapd	__xmm@45300000000000004330000000000000(%rip), %xmm3
.Ltmp196:
	.p2align	4, 0x90
.LBB10_46:
	.cv_loc	25 4 186 3
	vmulsd	%xmm0, %xmm6, %xmm6
.Ltmp197:
	.cv_loc	25 4 187 3
	vcvttsd2si	%xmm6, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubsd	%xmm1, %xmm6, %xmm4
	vcvttsd2si	%xmm4, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	.cv_loc	25 4 188 2
	cmpq	$1, %rdx
	adcq	$0, %r12
.Ltmp198:
	.cv_loc	25 4 185 2
	vmovq	%rdx, %xmm4
	vpunpckldq	%xmm2, %xmm4, %xmm4
	vsubpd	%xmm3, %xmm4, %xmm4
	vpermilpd	$1, %xmm4, %xmm5
	vaddsd	%xmm4, %xmm5, %xmm4
	vucomisd	%xmm4, %xmm6
	jne	.LBB10_46
	jp	.LBB10_46
.Ltmp199:
.LBB10_32:
	.cv_loc	25 4 190 2
	testq	%r12, %r12
	jle	.LBB10_44
.Ltmp200:
	xorl	%edi, %edi
	jmp	.LBB10_34
.Ltmp201:
	.p2align	4, 0x90
.LBB10_43:
	.cv_inline_site_id 32 within 25 inlined_at 4 191 4
	.cv_loc	32 4 101 2
	movb	$48, (%rsi,%rax)
	.cv_loc	32 4 102 2
	incq	256(%rsi)
.Ltmp202:
	.cv_loc	25 4 192 2
	incq	%rdi
.Ltmp203:
	.cv_loc	25 4 190 2
	cmpq	%r12, %rdi
	jge	.LBB10_44
.Ltmp204:
.LBB10_34:
	.cv_loc	32 4 94 2
	movq	256(%r15), %rax
	movq	%r15, %rsi
.Ltmp205:
	.cv_loc	30 4 94 2
	testq	%r15, %r15
.Ltmp206:
	.cv_loc	32 4 94 2
	je	.LBB10_43
.Ltmp207:
	cmpq	$256, %rax
	jne	.LBB10_43
.Ltmp208:
	movq	%r14, %rbx
	movq	%r15, %rsi
.Ltmp209:
	.p2align	4, 0x90
.LBB10_37:
	.cv_loc	32 4 95 3
	cmpq	$0, 264(%rsi)
	.cv_loc	32 4 100 2
	je	.LBB10_38
.Ltmp210:
	.cv_loc	32 4 98 3
	cmpq	$256, (%rbx)
	.cv_loc	32 4 100 2
	jne	.LBB10_41
.Ltmp211:
.LBB10_40:
	.cv_loc	32 4 99 4
	movq	264(%rsi), %rsi
.Ltmp212:
.LBB10_41:
	.cv_loc	32 4 94 2
	movq	256(%rsi), %rax
	testq	%rsi, %rsi
	je	.LBB10_43
.Ltmp213:
	leaq	256(%rsi), %rbx
	cmpq	$256, %rax
	je	.LBB10_37
	jmp	.LBB10_43
.Ltmp214:
	.p2align	4, 0x90
.LBB10_38:
	.cv_inline_site_id 33 within 32 inlined_at 4 96 4
	.cv_loc	33 3 14 2
	movl	$272, %ecx
	vzeroupper
	callq	malloc
.Ltmp215:
	vxorpd	%xmm0, %xmm0, %xmm0
	.cv_loc	33 3 15 8
	vmovupd	%ymm0, (%rax)
	vmovupd	%ymm0, 32(%rax)
	vmovupd	%ymm0, 64(%rax)
	vmovupd	%ymm0, 96(%rax)
	vmovupd	%ymm0, 128(%rax)
	vmovupd	%ymm0, 160(%rax)
	vmovupd	%ymm0, 192(%rax)
	vmovupd	%ymm0, 224(%rax)
	vmovupd	%ymm0, 240(%rax)
.Ltmp216:
	.cv_loc	32 4 96 4
	movq	%rax, 264(%rsi)
	.cv_loc	32 4 98 3
	cmpq	$256, (%rbx)
	.cv_loc	32 4 100 2
	je	.LBB10_40
	jmp	.LBB10_41
.Ltmp217:
.LBB10_44:
	.cv_loc	25 4 194 12
	vcvttsd2si	%xmm6, %rdx
	movq	%r15, %r8
	vzeroupper
	callq	int_to_str
	vmovaps	32(%rsp), %xmm6
	vmovaps	48(%rsp), %xmm7
	.cv_loc	25 4 195 1
	addq	$72, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Ltmp218:
.Lfunc_end10:

	.def	parse_format;
	.scl	2;
	.type	32;
	.endef
	.globl	parse_format
	.p2align	4, 0x90
parse_format:
.Lfunc_begin11:
	.cv_func_id 34
	.cv_loc	34 4 198 0
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$696, %rsp
	leaq	128(%rsp), %rbp
	andq	$-256, %rsp
	movq	%r9, %r13
	movq	%r8, %rsi
	movq	%rdx, 232(%rsp)
	movq	%rcx, 224(%rsp)
.Ltmp219:
	.cv_loc	34 4 199 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 496(%rsp)
	vmovaps	%ymm0, 480(%rsp)
	vmovaps	%ymm0, 448(%rsp)
	vmovaps	%ymm0, 416(%rsp)
	vmovaps	%ymm0, 384(%rsp)
	vmovaps	%ymm0, 352(%rsp)
	vmovaps	%ymm0, 320(%rsp)
	vmovaps	%ymm0, 288(%rsp)
	vmovaps	%ymm0, 256(%rsp)
	leaq	256(%rsp), %rdi
	movq	%rdi, 248(%rsp)
	leaq	.L__unnamed_5(%rip), %rdx
	leaq	248(%rsp), %rcx
	vzeroupper
	callq	init_builder
.Ltmp220:
	movq	%rsi, 240(%rsp)
.Ltmp221:
	.cv_loc	34 4 201 2
	testq	%rsi, %rsi
	jle	.LBB11_6
.Ltmp222:
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	jmp	.LBB11_2
.Ltmp223:
	.p2align	4, 0x90
.LBB11_58:
	.cv_inline_site_id 35 within 34 inlined_at 4 215 4
	.cv_loc	35 4 101 2
	movb	%r15b, (%rsi,%rax)
	.cv_loc	35 4 102 2
	incq	256(%rsi)
.Ltmp224:
.LBB11_59:
	.cv_loc	34 4 217 2
	incq	%r14
.Ltmp225:
	.cv_loc	34 4 201 2
	cmpq	240(%rsp), %r14
	jge	.LBB11_6
.Ltmp226:
.LBB11_2:
	.cv_inline_site_id 36 within 34 inlined_at 4 202 3
	.cv_loc	36 4 61 5
	movq	232(%rsp), %rax
.Ltmp227:
	movb	(%rax,%r14), %r15b
.Ltmp228:
	.cv_loc	34 4 202 3
	cmpb	$37, %r15b
	.cv_loc	34 4 217 2
	jne	.LBB11_50
.Ltmp229:
	.cv_loc	34 4 203 4
	movq	%r12, %rax
	shlq	$4, %rax
	movq	(%r13,%rax), %rcx
	movq	8(%r13,%rax), %rsi
.Ltmp230:
	.cv_loc	34 4 204 4
	incq	%r12
.Ltmp231:
	.cv_loc	34 4 205 4
	movl	(%rcx), %eax
.Ltmp232:
	.cv_loc	34 4 214 3
	cmpl	$3, %eax
	je	.LBB11_40
.Ltmp233:
	cmpl	$4, %eax
	jne	.LBB11_41
.Ltmp234:
	.cv_loc	34 4 209 11
	vmovq	(%rsi), %xmm1
	leaq	.L__unnamed_6(%rip), %rcx
.Ltmp235:
	vmovq	%xmm1, %rdx
	vzeroupper
	callq	printf
	.cv_loc	34 4 210 17
	vmovsd	(%rsi), %xmm1
	leaq	256(%rsp), %r8
	callq	float_to_str
	jmp	.LBB11_59
.Ltmp236:
	.p2align	4, 0x90
.LBB11_50:
	.cv_loc	35 4 94 2
	movq	512(%rsp), %rax
	leaq	256(%rsp), %rsi
	cmpq	$256, %rax
	jne	.LBB11_58
.Ltmp237:
	leaq	512(%rsp), %rbx
	leaq	256(%rsp), %rsi
.Ltmp238:
	.p2align	4, 0x90
.LBB11_52:
	.cv_loc	35 4 95 3
	cmpq	$0, 264(%rsi)
	.cv_loc	35 4 100 2
	je	.LBB11_53
.Ltmp239:
	.cv_loc	35 4 98 3
	cmpq	$256, (%rbx)
	.cv_loc	35 4 100 2
	jne	.LBB11_56
.Ltmp240:
.LBB11_55:
	.cv_loc	35 4 99 4
	movq	264(%rsi), %rsi
.Ltmp241:
.LBB11_56:
	.cv_loc	35 4 94 2
	movq	256(%rsi), %rax
	testq	%rsi, %rsi
	je	.LBB11_58
.Ltmp242:
	leaq	256(%rsi), %rbx
	cmpq	$256, %rax
	je	.LBB11_52
	jmp	.LBB11_58
.Ltmp243:
	.p2align	4, 0x90
.LBB11_53:
	.cv_inline_site_id 37 within 35 inlined_at 4 96 4
	.cv_loc	37 3 14 2
	movl	$272, %ecx
	vzeroupper
	callq	malloc
.Ltmp244:
	.cv_loc	34 4 199 2
	vxorps	%xmm0, %xmm0, %xmm0
.Ltmp245:
	.cv_loc	37 3 15 8
	vmovups	%ymm0, (%rax)
	vmovups	%ymm0, 32(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 160(%rax)
	vmovups	%ymm0, 192(%rax)
	vmovups	%ymm0, 224(%rax)
	vmovups	%ymm0, 240(%rax)
.Ltmp246:
	.cv_loc	35 4 96 4
	movq	%rax, 264(%rsi)
	.cv_loc	35 4 98 3
	cmpq	$256, (%rbx)
	.cv_loc	35 4 100 2
	je	.LBB11_55
	jmp	.LBB11_56
.Ltmp247:
.LBB11_40:
	.cv_loc	34 4 207 15
	movq	(%rsi), %rdx
	leaq	256(%rsp), %r8
	vzeroupper
	callq	int_to_str
.Ltmp248:
	jmp	.LBB11_59
.Ltmp249:
.LBB11_41:
	.cv_inline_site_id 38 within 34 inlined_at 4 212 5
	.cv_loc	38 4 94 2
	movq	%r13, %rbx
.Ltmp250:
	movq	512(%rsp), %rax
	leaq	256(%rsp), %r13
	cmpq	$256, %rax
	jne	.LBB11_49
.Ltmp251:
	leaq	512(%rsp), %rsi
	leaq	256(%rsp), %r13
.Ltmp252:
	.p2align	4, 0x90
.LBB11_43:
	.cv_loc	38 4 95 3
	cmpq	$0, 264(%r13)
	.cv_loc	38 4 100 2
	je	.LBB11_44
.Ltmp253:
	.cv_loc	38 4 98 3
	cmpq	$256, (%rsi)
	.cv_loc	38 4 100 2
	jne	.LBB11_47
.Ltmp254:
.LBB11_46:
	.cv_loc	38 4 99 4
	movq	264(%r13), %r13
.Ltmp255:
.LBB11_47:
	.cv_loc	38 4 94 2
	movq	256(%r13), %rax
	testq	%r13, %r13
	je	.LBB11_49
.Ltmp256:
	leaq	256(%r13), %rsi
	cmpq	$256, %rax
	je	.LBB11_43
	jmp	.LBB11_49
.Ltmp257:
	.p2align	4, 0x90
.LBB11_44:
	.cv_inline_site_id 39 within 38 inlined_at 4 96 4
	.cv_loc	39 3 14 2
	movl	$272, %ecx
	vzeroupper
	callq	malloc
.Ltmp258:
	.cv_loc	34 4 199 2
	vxorps	%xmm0, %xmm0, %xmm0
.Ltmp259:
	.cv_loc	39 3 15 8
	vmovups	%ymm0, (%rax)
	vmovups	%ymm0, 32(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 160(%rax)
	vmovups	%ymm0, 192(%rax)
	vmovups	%ymm0, 224(%rax)
	vmovups	%ymm0, 240(%rax)
.Ltmp260:
	.cv_loc	38 4 96 4
	movq	%rax, 264(%r13)
	.cv_loc	38 4 98 3
	cmpq	$256, (%rsi)
	.cv_loc	38 4 100 2
	je	.LBB11_46
	jmp	.LBB11_47
.Ltmp261:
.LBB11_49:
	.cv_loc	38 4 101 2
	movb	%r15b, (%r13,%rax)
	.cv_loc	38 4 102 2
	incq	256(%r13)
	movq	%rbx, %r13
	jmp	.LBB11_59
.Ltmp262:
.LBB11_6:
	.cv_inline_site_id 40 within 34 inlined_at 4 218 2
	.cv_loc	40 4 94 2
	movq	512(%rsp), %rax
	movq	%rdi, %rsi
	cmpq	$256, %rax
	jne	.LBB11_14
.Ltmp263:
	leaq	512(%rsp), %rbx
	leaq	256(%rsp), %rsi
.Ltmp264:
	.p2align	4, 0x90
.LBB11_8:
	.cv_loc	40 4 95 3
	cmpq	$0, 264(%rsi)
	.cv_loc	40 4 100 2
	je	.LBB11_9
.Ltmp265:
	.cv_loc	40 4 98 3
	cmpq	$256, (%rbx)
	.cv_loc	40 4 100 2
	jne	.LBB11_12
.Ltmp266:
.LBB11_11:
	.cv_loc	40 4 99 4
	movq	264(%rsi), %rsi
.Ltmp267:
.LBB11_12:
	.cv_loc	40 4 94 2
	movq	256(%rsi), %rax
	testq	%rsi, %rsi
	je	.LBB11_14
.Ltmp268:
	leaq	256(%rsi), %rbx
	cmpq	$256, %rax
	je	.LBB11_8
	jmp	.LBB11_14
.Ltmp269:
	.p2align	4, 0x90
.LBB11_9:
	.cv_inline_site_id 41 within 40 inlined_at 4 96 4
	.cv_loc	41 3 14 2
	movl	$272, %ecx
	vzeroupper
	callq	malloc
.Ltmp270:
	vxorps	%xmm0, %xmm0, %xmm0
	.cv_loc	41 3 15 8
	vmovups	%ymm0, (%rax)
	vmovups	%ymm0, 32(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 160(%rax)
	vmovups	%ymm0, 192(%rax)
	vmovups	%ymm0, 224(%rax)
	vmovups	%ymm0, 240(%rax)
.Ltmp271:
	.cv_loc	40 4 96 4
	movq	%rax, 264(%rsi)
	.cv_loc	40 4 98 3
	cmpq	$256, (%rbx)
	.cv_loc	40 4 100 2
	je	.LBB11_11
	jmp	.LBB11_12
.Ltmp272:
.LBB11_14:
	.cv_loc	40 4 101 2
	movb	$10, (%rsi,%rax)
	.cv_loc	40 4 102 2
	incq	256(%rsi)
.Ltmp273:
	.cv_inline_site_id 42 within 34 inlined_at 4 219 2
	.cv_loc	42 4 22 2
	movq	520(%rsp), %rax
	testq	%rax, %rax
	je	.LBB11_15
.Ltmp274:
	leaq	256(%rsp), %rcx
	xorl	%r15d, %r15d
.Ltmp275:
	.p2align	4, 0x90
.LBB11_17:
	.cv_loc	42 4 23 3
	addq	256(%rcx), %r15
.Ltmp276:
	movq	%rax, %rdi
	.cv_loc	42 4 22 2
	movq	264(%rax), %rax
.Ltmp277:
	movq	%rdi, %rcx
	testq	%rax, %rax
	jne	.LBB11_17
	jmp	.LBB11_18
.Ltmp278:
.LBB11_15:
	xorl	%r15d, %r15d
.Ltmp279:
.LBB11_18:
	.cv_loc	42 4 26 2
	addq	256(%rdi), %r15
.Ltmp280:
	.cv_inline_site_id 43 within 42 inlined_at 4 27 2
	.cv_loc	43 3 14 2
	movq	%r15, %rcx
	vzeroupper
	callq	malloc
	movq	%rax, %r14
.Ltmp281:
	xorl	%r12d, %r12d
	.cv_loc	43 3 15 8
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%r15, %r8
	callq	memset
.Ltmp282:
	.cv_loc	42 4 31 2
	cmpq	$0, 264(%rdi)
	je	.LBB11_30
.Ltmp283:
	leaq	264(%rdi), %r8
	xorl	%r12d, %r12d
	movq	%r14, %rax
	jmp	.LBB11_20
.Ltmp284:
	.p2align	4, 0x90
.LBB11_28:
	.cv_loc	42 4 33 3
	movq	(%r8), %rdi
.Ltmp285:
	.cv_loc	42 4 34 3
	incq	%r12
.Ltmp286:
	.cv_loc	42 4 31 2
	leaq	264(%rdi), %r8
	addq	$256, %rax
	cmpq	$0, 264(%rdi)
	je	.LBB11_29
.Ltmp287:
.LBB11_20:
	.cv_loc	42 4 32 7
	movq	256(%rdi), %rsi
.Ltmp288:
	.cv_inline_site_id 44 within 42 inlined_at 4 32 7
	.cv_loc	44 4 249 2
	testq	%rsi, %rsi
	jle	.LBB11_28
.Ltmp289:
	cmpq	$4, %rsi
	jb	.LBB11_22
.Ltmp290:
	movq	%r12, %rcx
	shlq	$8, %rcx
	addq	%r14, %rcx
.Ltmp291:
	subq	%rdi, %rcx
	movl	$0, %edx
	cmpq	$4, %rcx
	jb	.LBB11_27
.Ltmp292:
	movq	%rsi, %rdx
	andq	$-4, %rdx
	xorl	%ecx, %ecx
.Ltmp293:
	.p2align	4, 0x90
.LBB11_25:
	.cv_loc	44 4 251 3
	movl	(%rdi,%rcx), %ebx
	movl	%ebx, (%rax,%rcx)
	.cv_loc	44 4 252 2
	addq	$4, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB11_25
.Ltmp294:
	.cv_loc	44 4 249 2
	cmpq	%rdx, %rsi
	jne	.LBB11_27
	jmp	.LBB11_28
.Ltmp295:
.LBB11_22:
	xorl	%edx, %edx
.Ltmp296:
	.p2align	4, 0x90
.LBB11_27:
	.cv_loc	44 4 251 3
	movzbl	(%rdi,%rdx), %ecx
	movb	%cl, (%rax,%rdx)
	.cv_loc	44 4 252 2
	incq	%rdx
.Ltmp297:
	.cv_loc	44 4 249 2
	cmpq	%rsi, %rdx
	jl	.LBB11_27
	jmp	.LBB11_28
.Ltmp298:
.LBB11_29:
	.cv_loc	42 4 36 6
	shlq	$8, %r12
.Ltmp299:
.LBB11_30:
	movq	256(%rdi), %rax
.Ltmp300:
	.cv_inline_site_id 45 within 42 inlined_at 4 36 6
	.cv_loc	45 4 249 2
	testq	%rax, %rax
	jle	.LBB11_39
.Ltmp301:
	movq	%r14, %rcx
	addq	%r12, %rcx
.Ltmp302:
	cmpq	$8, %rax
	jae	.LBB11_33
.Ltmp303:
	xorl	%edx, %edx
	jmp	.LBB11_38
.Ltmp304:
.LBB11_33:
	movq	%rcx, %rdx
	subq	%rdi, %rdx
	cmpq	$4, %rdx
	jae	.LBB11_35
.Ltmp305:
	xorl	%edx, %edx
	jmp	.LBB11_38
.Ltmp306:
.LBB11_35:
	movq	%rax, %rdx
	andq	$-4, %rdx
	xorl	%ebx, %ebx
.Ltmp307:
	.p2align	4, 0x90
.LBB11_36:
	.cv_loc	45 4 251 3
	movl	(%rdi,%rbx), %esi
	movl	%esi, (%rcx,%rbx)
	.cv_loc	45 4 252 2
	addq	$4, %rbx
	cmpq	%rbx, %rdx
	jne	.LBB11_36
.Ltmp308:
	.cv_loc	45 4 249 2
	cmpq	%rdx, %rax
	je	.LBB11_39
.Ltmp309:
	.p2align	4, 0x90
.LBB11_38:
	.cv_loc	45 4 251 3
	movzbl	(%rdi,%rdx), %ebx
	movb	%bl, (%rcx,%rdx)
	.cv_loc	45 4 252 2
	incq	%rdx
.Ltmp310:
	.cv_loc	45 4 249 2
	cmpq	%rax, %rdx
	jl	.LBB11_38
.Ltmp311:
.LBB11_39:
	.cv_loc	34 4 220 5
	movq	224(%rsp), %rax
	movq	(%rax), %rax
	movq	%r14, (%rax)
	movq	%r15, 8(%rax)
	leaq	568(%rbp), %rsp
.Ltmp312:
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
.Ltmp313:
	popq	%r15
.Ltmp314:
	popq	%rbp
	retq
.Ltmp315:
.Lfunc_end11:

	.def	"print!@* u8!@-";
	.scl	2;
	.type	32;
	.endef
	.globl	"print!@* u8!@-"
	.p2align	4, 0x90
"print!@* u8!@-":
.Lfunc_begin12:
	.cv_func_id 46
	.cv_loc	46 4 224 0
.seh_proc "print!@* u8!@-"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$80, %rsp
	.seh_stackalloc 80
	.seh_endprologue
	movq	%rdx, %rdi
	movq	%r8, 128(%rsp)
	movq	%r9, 136(%rsp)
	movq	$-1, %rsi
.Ltmp316:
	.p2align	4, 0x90
.LBB12_1:
	.cv_inline_site_id 47 within 46 inlined_at 4 225 2
	.cv_inline_site_id 48 within 47 inlined_at 4 123 2
	.cv_loc	48 4 258 2
	cmpb	$0, 1(%rdi,%rsi)
	leaq	1(%rsi), %rsi
.Ltmp317:
	jne	.LBB12_1
.Ltmp318:
	.cv_inline_site_id 49 within 47 inlined_at 4 124 2
	.cv_loc	49 3 14 2
	movq	%rsi, %rcx
	callq	malloc
	movq	%rax, %rbx
.Ltmp319:
	.cv_loc	49 3 15 8
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rsi, %r8
	callq	memset
.Ltmp320:
	.cv_inline_site_id 50 within 47 inlined_at 4 125 6
	.cv_loc	50 4 249 2
	testq	%rsi, %rsi
	jle	.LBB12_4
.Ltmp321:
	.cv_loc	50 4 251 3
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	movq	%rsi, %r8
	callq	memcpy
.Ltmp322:
.LBB12_4:
	.cv_loc	46 4 227 15
	leaq	128(%rsp), %r9
.Ltmp323:
	movq	%r9, 72(%rsp)
	.cv_loc	46 4 228 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	64(%rsp), %rcx
	movq	%rbx, %rdx
	movq	%rsi, %r8
	callq	parse_format
.Ltmp324:
	.cv_file	5 "E:\\C_Projects\\Apocalypse\\Standard\\Windows.apoc"
	.cv_inline_site_id 51 within 46 inlined_at 4 230 2
	.cv_loc	51 5 48 5
	movl	$-11, %ecx
	callq	GetStdHandle
.Ltmp325:
	.cv_loc	46 4 231 12
	movq	48(%rsp), %rdx
	movl	56(%rsp), %r8d
.Ltmp326:
	.cv_inline_site_id 52 within 46 inlined_at 4 231 12
	.cv_loc	52 5 40 2
	movq	$0, 40(%rsp)
.Ltmp327:
	.cv_loc	52 5 41 11
	movq	$0, 32(%rsp)
	leaq	40(%rsp), %r9
	movq	%rax, %rcx
	callq	WriteFile
.Ltmp328:
	.cv_loc	46 4 232 1
	nop
	addq	$80, %rsp
	popq	%rbx
.Ltmp329:
	popq	%rdi
.Ltmp330:
	popq	%rsi
	retq
.Ltmp331:
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
	.cv_func_id 53
	.cv_loc	53 4 235 0
.seh_proc "print!@string!@-"
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r9, 120(%rsp)
	leaq	120(%rsp), %r9
.Ltmp332:
	.cv_loc	53 4 237 15
	movq	%r9, 80(%rsp)
	.cv_loc	53 4 238 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	72(%rsp), %rcx
	callq	parse_format
.Ltmp333:
	.cv_inline_site_id 54 within 53 inlined_at 4 240 2
	.cv_loc	54 5 48 5
	movl	$-11, %ecx
	callq	GetStdHandle
.Ltmp334:
	.cv_loc	53 4 241 12
	movq	48(%rsp), %rdx
	movl	56(%rsp), %r8d
.Ltmp335:
	.cv_inline_site_id 55 within 53 inlined_at 4 241 12
	.cv_loc	55 5 40 2
	movq	$0, 40(%rsp)
.Ltmp336:
	.cv_loc	55 5 41 11
	movq	$0, 32(%rsp)
	leaq	40(%rsp), %r9
	movq	%rax, %rcx
	callq	WriteFile
.Ltmp337:
	.cv_loc	53 4 242 1
	nop
	addq	$88, %rsp
	retq
.Ltmp338:
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
	.cv_func_id 56
	.cv_loc	56 4 246 0
	.cv_loc	56 4 249 2
	testq	%r9, %r9
	jle	.LBB14_7
.Ltmp339:
	xorl	%r10d, %r10d
	cmpq	$4, %r9
	jb	.LBB14_6
.Ltmp340:
	movq	%rdx, %rcx
	subq	%r8, %rcx
	cmpq	$4, %rcx
	jb	.LBB14_6
.Ltmp341:
	movq	%r9, %r10
	andq	$-4, %r10
	xorl	%ecx, %ecx
.Ltmp342:
	.p2align	4, 0x90
.LBB14_4:
	.cv_loc	56 4 251 3
	movl	(%r8,%rcx), %eax
	movl	%eax, (%rdx,%rcx)
	.cv_loc	56 4 252 2
	addq	$4, %rcx
	cmpq	%rcx, %r10
	jne	.LBB14_4
.Ltmp343:
	.cv_loc	56 4 249 2
	cmpq	%r9, %r10
	je	.LBB14_7
.Ltmp344:
	.p2align	4, 0x90
.LBB14_6:
	.cv_loc	56 4 251 3
	movzbl	(%r8,%r10), %eax
	movb	%al, (%rdx,%r10)
	.cv_loc	56 4 252 2
	incq	%r10
.Ltmp345:
	.cv_loc	56 4 249 2
	cmpq	%r9, %r10
	jl	.LBB14_6
.Ltmp346:
.LBB14_7:
	.cv_loc	56 4 253 1
	retq
.Ltmp347:
.Lfunc_end14:

	.def	len;
	.scl	2;
	.type	32;
	.endef
	.globl	len
	.p2align	4, 0x90
len:
.Lfunc_begin15:
	.cv_func_id 57
	.cv_loc	57 4 256 0
	movq	$-1, %rax
.Ltmp348:
	.p2align	4, 0x90
.LBB15_1:
	.cv_loc	57 4 258 2
	cmpb	$0, 1(%rdx,%rax)
	leaq	1(%rax), %rax
.Ltmp349:
	jne	.LBB15_1
.Ltmp350:
	.cv_loc	57 4 259 5
	retq
.Ltmp351:
.Lfunc_end15:

	.def	open_file;
	.scl	2;
	.type	32;
	.endef
	.globl	open_file
	.p2align	4, 0x90
open_file:
.Lfunc_begin16:
	.cv_func_id 58
	.cv_loc	58 5 27 0
.seh_proc open_file
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rdx, %rcx
.Ltmp352:
	.cv_loc	58 5 29 2
	andl	$1, %r8d
	negl	%r8d
.Ltmp353:
	.cv_loc	58 5 35 5
	andl	$1180063, %r8d
.Ltmp354:
	.cv_loc	58 5 32 2
	movq	$0, 48(%rsp)
	movq	$32, 40(%rsp)
	movq	$4, 32(%rsp)
	movq	%r8, %rdx
	xorl	%r8d, %r8d
.Ltmp355:
	xorl	%r9d, %r9d
	callq	CreateFileA
.Ltmp356:
	.cv_loc	58 5 35 5
	nop
	addq	$56, %rsp
	retq
.Ltmp357:
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
	.cv_func_id 59
	.cv_loc	59 5 39 0
.seh_proc write_file
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$64, %rsp
	.seh_stackalloc 64
	.seh_endprologue
	movl	%r9d, %esi
	movq	%rdx, %rcx
.Ltmp358:
	.cv_loc	59 5 40 2
	movq	$0, 56(%rsp)
.Ltmp359:
	.cv_loc	59 5 41 11
	movq	$0, 32(%rsp)
	leaq	56(%rsp), %r9
.Ltmp360:
	movq	%r8, %rdx
.Ltmp361:
	movl	%esi, %r8d
.Ltmp362:
	callq	WriteFile
.Ltmp363:
	.cv_loc	59 5 42 2
	cmpl	%esi, 56(%rsp)
	sete	%al
.Ltmp364:
	sete	55(%rsp)
	.cv_loc	59 5 43 5
	addq	$64, %rsp
	popq	%rsi
.Ltmp365:
	retq
.Ltmp366:
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
	.cv_func_id 60
	.cv_loc	60 5 47 0
.seh_proc get_stdout
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
.Ltmp367:
	.cv_loc	60 5 48 5
	movl	$-11, %ecx
	callq	GetStdHandle
	nop
	addq	$40, %rsp
	retq
.Ltmp368:
.Lfunc_end18:
	.seh_endproc

	.def	"overload[]";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[]"
	.p2align	4, 0x90
"overload[]":
.Lfunc_begin19:
	.cv_func_id 61
	.cv_loc	61 4 61 5
	movb	(%rcx,%r8), %al
	retq
.Ltmp369:
.Lfunc_end19:

	.def	"overload+¥ÔB¶M";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload+¥ÔB¶M"
	.p2align	4, 0x90
"overload+¥ÔB¶M":
.Lfunc_begin20:
	.cv_func_id 62
	.cv_loc	62 4 65 0
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$40, %rsp
	movq	%r8, %rsi
	movq	%rdx, %r15
	movq	%rcx, %r12
.Ltmp370:
	movq	$-1, %rbx
.Ltmp371:
	.p2align	4, 0x90
.LBB20_1:
	.cv_inline_site_id 63 within 62 inlined_at 4 67 2
	.cv_loc	63 4 258 2
	cmpb	$0, 1(%rsi,%rbx)
	leaq	1(%rbx), %rbx
.Ltmp372:
	jne	.LBB20_1
.Ltmp373:
	.cv_inline_site_id 64 within 62 inlined_at 4 69 2
	.cv_loc	64 3 14 2
	leaq	(%r15,%rbx), %r14
	movq	%r14, %rcx
	callq	malloc
	movq	%rax, %rdi
.Ltmp374:
	.cv_loc	64 3 15 8
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%r14, %r8
	callq	memset
.Ltmp375:
	.cv_inline_site_id 65 within 62 inlined_at 4 70 6
	.cv_loc	65 4 249 2
	testq	%r15, %r15
	jle	.LBB20_9
.Ltmp376:
	xorl	%eax, %eax
	cmpq	$4, %r15
	jb	.LBB20_8
.Ltmp377:
	movq	%rdi, %rcx
	subq	%r12, %rcx
	cmpq	$4, %rcx
	jb	.LBB20_8
.Ltmp378:
	movq	%r15, %rax
	andq	$-4, %rax
	xorl	%ecx, %ecx
.Ltmp379:
	.p2align	4, 0x90
.LBB20_6:
	.cv_loc	65 4 251 3
	movl	(%r12,%rcx), %edx
	movl	%edx, (%rdi,%rcx)
	.cv_loc	65 4 252 2
	addq	$4, %rcx
	cmpq	%rcx, %rax
	jne	.LBB20_6
.Ltmp380:
	.cv_loc	65 4 249 2
	cmpq	%rax, %r15
	je	.LBB20_9
.Ltmp381:
	.p2align	4, 0x90
.LBB20_8:
	.cv_loc	65 4 251 3
	movzbl	(%r12,%rax), %ecx
	movb	%cl, (%rdi,%rax)
	.cv_loc	65 4 252 2
	incq	%rax
.Ltmp382:
	.cv_loc	65 4 249 2
	cmpq	%r15, %rax
	jl	.LBB20_8
.Ltmp383:
.LBB20_9:
	.cv_inline_site_id 66 within 62 inlined_at 4 71 6
	.cv_loc	66 4 249 2
	testq	%rbx, %rbx
	jle	.LBB20_11
.Ltmp384:
	.cv_loc	62 4 71 6
	movq	%rdi, %rcx
	addq	%r15, %rcx
.Ltmp385:
	.cv_loc	66 4 251 3
	movq	%rsi, %rdx
	movq	%rbx, %r8
	callq	memcpy
.Ltmp386:
.LBB20_11:
	.cv_loc	62 4 72 5
	movq	%rdi, %rax
	movq	%r14, %rdx
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
.Ltmp387:
	popq	%rsi
	popq	%r12
.Ltmp388:
	popq	%r14
	popq	%r15
.Ltmp389:
	retq
.Ltmp390:
.Lfunc_end20:

	.def	"overload[x]=";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[x]="
	.p2align	4, 0x90
"overload[x]=":
.Lfunc_begin21:
	.cv_func_id 67
	.cv_loc	67 4 76 0
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rsi
	pushq	%rdi
	pushq	%rbp
	pushq	%rbx
.Ltmp391:
	movq	$-1, %r11
.Ltmp392:
	.p2align	4, 0x90
.LBB21_1:
	.cv_inline_site_id 68 within 67 inlined_at 4 77 2
	.cv_loc	68 4 258 2
	cmpb	$0, 1(%rdx,%r11)
	leaq	1(%r11), %r11
.Ltmp393:
	jne	.LBB21_1
.Ltmp394:
	.cv_loc	67 4 78 2
	leaq	255(%r11), %r8
	testq	%r11, %r11
	cmovnsq	%r11, %r8
.Ltmp395:
	.cv_loc	67 4 80 2
	cmpq	$-255, %r11
	jl	.LBB21_14
.Ltmp396:
	sarq	$8, %r8
	xorl	%r9d, %r9d
	movabsq	$9223372036854775804, %r10
	movq	%rdx, %r12
	jmp	.LBB21_4
.Ltmp397:
	.p2align	4, 0x90
.LBB21_13:
	.cv_loc	67 4 84 3
	addq	%rsi, 256(%rcx)
	.cv_loc	67 4 85 3
	addq	$-256, %r11
.Ltmp398:
	.cv_loc	67 4 86 3
	movq	264(%rcx), %rcx
.Ltmp399:
	.cv_loc	67 4 87 2
	leaq	1(%r9), %rax
.Ltmp400:
	.cv_loc	67 4 80 2
	addq	$256, %r12
	cmpq	%r8, %r9
	movq	%rax, %r9
	jge	.LBB21_14
.Ltmp401:
.LBB21_4:
	.cv_loc	68 4 258 2
	cmpq	$256, %r11
	movl	$256, %esi
	cmovlq	%r11, %rsi
.Ltmp402:
	cmpq	$2, %rsi
	movl	$1, %r14d
	cmovgeq	%rsi, %r14
.Ltmp403:
	.cv_inline_site_id 69 within 67 inlined_at 4 83 7
	.cv_loc	69 4 249 2
	testq	%r11, %r11
	jle	.LBB21_13
.Ltmp404:
	movq	256(%rcx), %rdi
	addq	%rcx, %rdi
	cmpq	$8, %r14
	jae	.LBB21_7
.Ltmp405:
	xorl	%ebx, %ebx
	jmp	.LBB21_12
.Ltmp406:
	.p2align	4, 0x90
.LBB21_7:
	movq	%r9, %rax
	shlq	$8, %rax
	addq	%rdx, %rax
	movq	%rdi, %rbx
	subq	%rax, %rbx
	cmpq	$4, %rbx
	jae	.LBB21_9
.Ltmp407:
	xorl	%ebx, %ebx
	jmp	.LBB21_12
.Ltmp408:
.LBB21_9:
	movl	%r14d, %r15d
	andl	$508, %r15d
	movq	%r14, %rbx
	andq	%r10, %rbx
	xorl	%eax, %eax
.Ltmp409:
	.p2align	4, 0x90
.LBB21_10:
	.cv_loc	69 4 251 3
	movl	(%r12,%rax), %ebp
	movl	%ebp, (%rdi,%rax)
	.cv_loc	69 4 252 2
	addq	$4, %rax
	cmpq	%rax, %r15
	jne	.LBB21_10
.Ltmp410:
	.cv_loc	69 4 249 2
	cmpq	%rbx, %r14
	je	.LBB21_13
.Ltmp411:
	.p2align	4, 0x90
.LBB21_12:
	.cv_loc	69 4 251 3
	movzbl	(%r12,%rbx), %eax
	movb	%al, (%rdi,%rbx)
	.cv_loc	69 4 252 2
	incq	%rbx
.Ltmp412:
	.cv_loc	69 4 249 2
	cmpq	%rsi, %rbx
	jl	.LBB21_12
	jmp	.LBB21_13
.Ltmp413:
.LBB21_14:
	.cv_loc	67 4 89 1
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Ltmp414:
.Lfunc_end21:

	.def	"overload[x]=.9";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[x]=.9"
	.p2align	4, 0x90
"overload[x]=.9":
.Lfunc_begin22:
	.cv_func_id 70
	.cv_loc	70 4 92 0
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$32, %rsp
.Ltmp415:
	movl	%edx, %ebx
	movq	%rcx, %rsi
.Ltmp416:
	.cv_loc	70 4 94 2
	movq	256(%rcx), %rax
	testq	%rcx, %rcx
	je	.LBB22_9
.Ltmp417:
	cmpq	$256, %rax
	jne	.LBB22_9
.Ltmp418:
	leaq	256(%rsi), %rdi
.Ltmp419:
	.p2align	4, 0x90
.LBB22_3:
	.cv_loc	70 4 95 3
	cmpq	$0, 264(%rsi)
	.cv_loc	70 4 100 2
	je	.LBB22_4
.Ltmp420:
	.cv_loc	70 4 98 3
	cmpq	$256, (%rdi)
	.cv_loc	70 4 100 2
	jne	.LBB22_7
.Ltmp421:
.LBB22_6:
	.cv_loc	70 4 99 4
	movq	264(%rsi), %rsi
.Ltmp422:
.LBB22_7:
	.cv_loc	70 4 94 2
	movq	256(%rsi), %rax
	testq	%rsi, %rsi
	je	.LBB22_9
.Ltmp423:
	leaq	256(%rsi), %rdi
	cmpq	$256, %rax
	je	.LBB22_3
	jmp	.LBB22_9
.Ltmp424:
	.p2align	4, 0x90
.LBB22_4:
	.cv_inline_site_id 71 within 70 inlined_at 4 96 4
	.cv_loc	71 3 14 2
	movl	$272, %ecx
	vzeroupper
	callq	malloc
.Ltmp425:
	vxorps	%xmm0, %xmm0, %xmm0
	.cv_loc	71 3 15 8
	vmovups	%ymm0, (%rax)
	vmovups	%ymm0, 32(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 160(%rax)
	vmovups	%ymm0, 192(%rax)
	vmovups	%ymm0, 224(%rax)
	vmovups	%ymm0, 240(%rax)
.Ltmp426:
	.cv_loc	70 4 96 4
	movq	%rax, 264(%rsi)
	.cv_loc	70 4 98 3
	cmpq	$256, (%rdi)
	.cv_loc	70 4 100 2
	je	.LBB22_6
	jmp	.LBB22_7
.Ltmp427:
.LBB22_9:
	.cv_loc	70 4 101 2
	movb	%bl, (%rsi,%rax)
	.cv_loc	70 4 102 2
	incq	256(%rsi)
	.cv_loc	70 4 103 1
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	vzeroupper
	retq
.Ltmp428:
.Lfunc_end22:

	.def	overload;
	.scl	2;
	.type	32;
	.endef
	.globl	overload
	.p2align	4, 0x90
overload:
.Lfunc_begin23:
	.cv_func_id 72
	.cv_loc	72 4 106 0
	movq	$-1, %rax
.Ltmp429:
	.p2align	4, 0x90
.LBB23_1:
	.cv_inline_site_id 73 within 72 inlined_at 4 107 2
	.cv_loc	73 4 258 2
	cmpb	$0, 1(%r8,%rax)
	leaq	1(%rax), %rax
.Ltmp430:
	jne	.LBB23_1
.Ltmp431:
	.cv_inline_site_id 74 within 72 inlined_at 4 108 5
	.cv_loc	74 4 113 2
	cmpq	%rax, %rdx
	.cv_loc	74 4 116 2
	jne	.LBB23_7
.Ltmp432:
	movb	$1, %al
	testq	%rdx, %rdx
	jle	.LBB23_8
.Ltmp433:
	xorl	%r9d, %r9d
.Ltmp434:
	.p2align	4, 0x90
.LBB23_6:
	.cv_loc	74 4 117 3
	movzbl	(%rcx,%r9), %r10d
	cmpb	(%r8,%r9), %r10b
.Ltmp435:
	.cv_loc	74 4 116 2
	jne	.LBB23_7
.Ltmp436:
	incq	%r9
.Ltmp437:
	cmpq	%rdx, %r9
	jl	.LBB23_6
.Ltmp438:
.LBB23_8:
	.cv_loc	72 4 108 5
	retq
.Ltmp439:
.LBB23_7:
	xorl	%eax, %eax
	retq
.Ltmp440:
.Lfunc_end23:

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

	.globl	global_var.3
	.p2align	3
global_var.3:
	.quad	256

	.globl	global_var.4
	.p2align	3
global_var.4:
	.quad	65536

	.globl	global_var.5
	.p2align	3
global_var.5:
	.quad	131072

	.globl	global_var.6
	.p2align	3
global_var.6:
	.quad	262144

	.globl	global_var.7
	.p2align	3
global_var.7:
	.quad	524288

	.globl	global_var.8
	.p2align	3
global_var.8:
	.quad	1048576

.L__unnamed_1:
	.asciz	"1st"

.L__unnamed_2:
	.asciz	"2nd"

.L__unnamed_3:
	.asciz	"3rd"

.L__unnamed_4:
	.asciz	"4th"

.L__unnamed_5:
	.zero	1

.L__unnamed_6:
	.asciz	"int: %f\n"

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp442-.Ltmp441
.Ltmp441:
	.short	.Ltmp444-.Ltmp443
.Ltmp443:
	.short	4353
	.long	0
	.byte	0
	.p2align	2
.Ltmp444:
	.short	.Ltmp446-.Ltmp445
.Ltmp445:
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
.Ltmp446:
.Ltmp442:
	.p2align	2
	.long	246
	.long	.Ltmp448-.Ltmp447
.Ltmp447:
	.long	0


	.long	4098
	.cv_filechecksumoffset	3
	.long	12


	.long	4101
	.cv_filechecksumoffset	4
	.long	245


	.long	4104
	.cv_filechecksumoffset	4
	.long	255


	.long	4114
	.cv_filechecksumoffset	4
	.long	91


	.long	4121
	.cv_filechecksumoffset	4
	.long	59


	.long	4124
	.cv_filechecksumoffset	4
	.long	17


	.long	4126
	.cv_filechecksumoffset	4
	.long	121


	.long	4129
	.cv_filechecksumoffset	5
	.long	46


	.long	4132
	.cv_filechecksumoffset	5
	.long	38


	.long	4135
	.cv_filechecksumoffset	4
	.long	111
.Ltmp448:
	.p2align	2
	.long	241
	.long	.Ltmp450-.Ltmp449
.Ltmp449:
	.short	.Ltmp452-.Ltmp451
.Ltmp451:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-give_num
	.long	0
	.long	0
	.long	4137
	.secrel32	give_num
	.secidx	give_num
	.byte	0
	.asciz	"give_num"
	.p2align	2
.Ltmp452:
	.short	.Ltmp454-.Ltmp453
.Ltmp453:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp454:
	.short	.Ltmp456-.Ltmp455
.Ltmp455:
	.short	4414
	.long	116
	.short	256
	.asciz	"a"
	.p2align	2
.Ltmp456:
	.short	2
	.short	4431
.Ltmp450:
	.p2align	2
	.cv_linetable	0, give_num, .Lfunc_end0
	.long	241
	.long	.Ltmp458-.Ltmp457
.Ltmp457:
	.short	.Ltmp460-.Ltmp459
.Ltmp459:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-main
	.long	0
	.long	0
	.long	4138
	.secrel32	main
	.secidx	main
	.byte	0
	.asciz	"main"
	.p2align	2
.Ltmp460:
	.short	.Ltmp462-.Ltmp461
.Ltmp461:
	.short	4114
	.long	40
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp462:
	.short	2
	.short	4431
.Ltmp458:
	.p2align	2
	.cv_linetable	1, main, .Lfunc_end1
	.long	241
	.long	.Ltmp464-.Ltmp463
.Ltmp463:
	.short	.Ltmp466-.Ltmp465
.Ltmp465:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end2-mem_alloc
	.long	0
	.long	0
	.long	4098
	.secrel32	mem_alloc
	.secidx	mem_alloc
	.byte	0
	.asciz	"mem_alloc"
	.p2align	2
.Ltmp466:
	.short	.Ltmp468-.Ltmp467
.Ltmp467:
	.short	4114
	.long	40
	.long	0
	.long	0
	.long	16
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp468:
	.short	.Ltmp470-.Ltmp469
.Ltmp469:
	.short	4414
	.long	117
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp470:
	.cv_def_range	 .Lfunc_begin2 .Ltmp3, reg, 331
	.short	.Ltmp472-.Ltmp471
.Ltmp471:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp472:
	.cv_def_range	 .Ltmp4 .Ltmp4, reg, 333
	.short	2
	.short	4431
.Ltmp464:
	.p2align	2
	.cv_linetable	2, mem_alloc, .Lfunc_end2
	.long	241
	.long	.Ltmp474-.Ltmp473
.Ltmp473:
	.short	.Ltmp476-.Ltmp475
.Ltmp475:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end3-builder_to_string
	.long	0
	.long	0
	.long	4124
	.secrel32	builder_to_string
	.secidx	builder_to_string
	.byte	0
	.asciz	"builder_to_string"
	.p2align	2
.Ltmp476:
	.short	.Ltmp478-.Ltmp477
.Ltmp477:
	.short	4114
	.long	32
	.long	0
	.long	0
	.long	56
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp478:
	.short	.Ltmp480-.Ltmp479
.Ltmp479:
	.short	4414
	.long	4106
	.short	1
	.asciz	"builder"
	.p2align	2
.Ltmp480:
	.cv_def_range	 .Lfunc_begin3 .Ltmp7, reg, 331
	.short	.Ltmp482-.Ltmp481
.Ltmp481:
	.short	4414
	.long	4106
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp482:
	.cv_def_range	 .Ltmp6 .Ltmp7, reg, 331
	.cv_def_range	 .Ltmp9 .Ltmp10, reg, 330
	.cv_def_range	 .Ltmp10 .Ltmp11, reg, 328
	.cv_def_range	 .Ltmp11 .Ltmp12 .Ltmp15 .Ltmp45, reg, 329
	.short	.Ltmp484-.Ltmp483
.Ltmp483:
	.short	4414
	.long	4119
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp484:
	.cv_def_range	 .Ltmp14 .Ltmp47, subfield_reg, 343, 0
	.cv_def_range	 .Ltmp15 .Ltmp46, subfield_reg, 340, 8
	.short	.Ltmp486-.Ltmp485
.Ltmp485:
	.short	4414
	.long	19
	.short	0
	.asciz	"out_len"
	.p2align	2
.Ltmp486:
	.cv_def_range	 .Ltmp9 .Ltmp12 .Ltmp13 .Ltmp44, reg, 340
	.short	.Ltmp488-.Ltmp487
.Ltmp487:
	.short	4414
	.long	19
	.short	256
	.asciz	"i"
	.p2align	2
.Ltmp488:
	.short	.Ltmp490-.Ltmp489
.Ltmp489:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp490:
	.cv_def_range	 .Ltmp17 .Ltmp32, reg, 341
	.short	.Ltmp492-.Ltmp491
.Ltmp491:
	.short	4414
	.long	19
	.short	256
	.asciz	"i"
	.p2align	2
.Ltmp492:
	.short	.Ltmp494-.Ltmp493
.Ltmp493:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	4 3 12 .Lfunc_begin3 .Lfunc_end3
	.p2align	2
.Ltmp494:
	.short	.Ltmp496-.Ltmp495
.Ltmp495:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp496:
	.short	.Ltmp498-.Ltmp497
.Ltmp497:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp498:
	.cv_def_range	 .Ltmp14 .Ltmp14, reg, 343
	.short	2
	.short	4430
	.short	.Ltmp500-.Ltmp499
.Ltmp499:
	.short	4429
	.long	0
	.long	0
	.long	4101
	.cv_inline_linetable	5 4 245 .Lfunc_begin3 .Lfunc_end3
	.p2align	2
.Ltmp500:
	.short	.Ltmp502-.Ltmp501
.Ltmp501:
	.short	4414
	.long	1539
	.short	257
	.asciz	"dst"
	.p2align	2
.Ltmp502:
	.short	.Ltmp504-.Ltmp503
.Ltmp503:
	.short	4414
	.long	1539
	.short	1
	.asciz	"src"
	.p2align	2
.Ltmp504:
	.cv_def_range	 .Ltmp21 .Ltmp31, reg, 329
	.short	.Ltmp506-.Ltmp505
.Ltmp505:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp506:
	.short	.Ltmp508-.Ltmp507
.Ltmp507:
	.short	4414
	.long	1568
	.short	256
	.asciz	"a0"
	.p2align	2
.Ltmp508:
	.short	.Ltmp510-.Ltmp509
.Ltmp509:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a1"
	.p2align	2
.Ltmp510:
	.cv_def_range	 .Ltmp21 .Ltmp31, reg, 329
	.short	.Ltmp512-.Ltmp511
.Ltmp511:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp512:
	.cv_def_range	 .Ltmp29 .Ltmp31, reg, 331
	.short	2
	.short	4430
	.short	.Ltmp514-.Ltmp513
.Ltmp513:
	.short	4429
	.long	0
	.long	0
	.long	4101
	.cv_inline_linetable	6 4 245 .Lfunc_begin3 .Lfunc_end3
	.p2align	2
.Ltmp514:
	.short	.Ltmp516-.Ltmp515
.Ltmp515:
	.short	4414
	.long	1539
	.short	1
	.asciz	"dst"
	.p2align	2
.Ltmp516:
	.cv_def_range	 .Ltmp35 .Ltmp44, reg, 330
	.short	.Ltmp518-.Ltmp517
.Ltmp517:
	.short	4414
	.long	1539
	.short	1
	.asciz	"src"
	.p2align	2
.Ltmp518:
	.cv_def_range	 .Ltmp33 .Ltmp44, reg, 329
	.short	.Ltmp520-.Ltmp519
.Ltmp519:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp520:
	.short	.Ltmp522-.Ltmp521
.Ltmp521:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a0"
	.p2align	2
.Ltmp522:
	.cv_def_range	 .Ltmp35 .Ltmp44, reg, 330
	.short	.Ltmp524-.Ltmp523
.Ltmp523:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a1"
	.p2align	2
.Ltmp524:
	.cv_def_range	 .Ltmp33 .Ltmp44, reg, 329
	.short	.Ltmp526-.Ltmp525
.Ltmp525:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp526:
	.cv_def_range	 .Ltmp42 .Ltmp44, reg, 331
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp474:
	.p2align	2
	.cv_linetable	3, builder_to_string, .Lfunc_end3
	.long	241
	.long	.Ltmp528-.Ltmp527
.Ltmp527:
	.short	.Ltmp530-.Ltmp529
.Ltmp529:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end4-init_builder
	.long	0
	.long	0
	.long	4139
	.secrel32	init_builder
	.secidx	init_builder
	.byte	0
	.asciz	"init_builder"
	.p2align	2
.Ltmp530:
	.short	.Ltmp532-.Ltmp531
.Ltmp531:
	.short	4114
	.long	728
	.long	0
	.long	0
	.long	32
	.long	0
	.short	0
	.long	1196032
	.p2align	2
.Ltmp532:
	.short	.Ltmp534-.Ltmp533
.Ltmp533:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp534:
	.cv_def_range	 .Lfunc_begin4 .Ltmp49, reg, 331
	.short	.Ltmp536-.Ltmp535
.Ltmp535:
	.short	4414
	.long	4111
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp536:
	.cv_def_range	 .Ltmp49 .Ltmp63, frame_ptr_rel, 256
	.short	.Ltmp538-.Ltmp537
.Ltmp537:
	.short	4414
	.long	4106
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp538:
	.cv_def_range	 .Ltmp52 .Ltmp58 .Ltmp61 .Ltmp62, reg, 329
	.cv_def_range	 .Ltmp58 .Ltmp61, reg, 328
	.short	.Ltmp540-.Ltmp539
.Ltmp539:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp540:
	.cv_def_range	 .Ltmp52 .Ltmp62, reg, 332
	.short	.Ltmp542-.Ltmp541
.Ltmp541:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp542:
	.cv_def_range	 .Ltmp53 .Ltmp56, reg, 328
	.short	.Ltmp544-.Ltmp543
.Ltmp543:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	8 3 12 .Lfunc_begin4 .Lfunc_end4
	.p2align	2
.Ltmp544:
	.short	.Ltmp546-.Ltmp545
.Ltmp545:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp546:
	.short	.Ltmp548-.Ltmp547
.Ltmp547:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp548:
	.cv_def_range	 .Ltmp58 .Ltmp58, reg, 328
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp528:
	.p2align	2
	.cv_linetable	7, init_builder, .Lfunc_end4
	.long	241
	.long	.Ltmp550-.Ltmp549
.Ltmp549:
	.short	.Ltmp552-.Ltmp551
.Ltmp551:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end5-compare
	.long	0
	.long	0
	.long	4135
	.secrel32	compare
	.secidx	compare
	.byte	0
	.asciz	"compare"
	.p2align	2
.Ltmp552:
	.short	.Ltmp554-.Ltmp553
.Ltmp553:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp554:
	.short	.Ltmp556-.Ltmp555
.Ltmp555:
	.short	4414
	.long	4119
	.short	1
	.asciz	"str1"
	.p2align	2
.Ltmp556:
	.cv_def_range	 .Lfunc_begin5 .Lfunc_end5, subfield_reg, 331, 0
	.cv_def_range	 .Lfunc_begin5 .Lfunc_end5, subfield_reg, 336, 8
	.short	.Ltmp558-.Ltmp557
.Ltmp557:
	.short	4414
	.long	4119
	.short	1
	.asciz	"str2"
	.p2align	2
.Ltmp558:
	.cv_def_range	 .Lfunc_begin5 .Lfunc_end5, subfield_reg, 337, 0
	.short	.Ltmp560-.Ltmp559
.Ltmp559:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp560:
	.cv_def_range	 .Ltmp66 .Ltmp67 .Ltmp69 .Ltmp69, reg, 338
	.short	2
	.short	4431
.Ltmp550:
	.p2align	2
	.cv_linetable	9, compare, .Lfunc_end5
	.long	241
	.long	.Ltmp562-.Ltmp561
.Ltmp561:
	.short	.Ltmp564-.Ltmp563
.Ltmp563:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end6-to_string
	.long	0
	.long	0
	.long	4126
	.secrel32	to_string
	.secidx	to_string
	.byte	0
	.asciz	"to_string"
	.p2align	2
.Ltmp564:
	.short	.Ltmp566-.Ltmp565
.Ltmp565:
	.short	4114
	.long	40
	.long	0
	.long	0
	.long	32
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp566:
	.short	.Ltmp568-.Ltmp567
.Ltmp567:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp568:
	.cv_def_range	 .Lfunc_begin6 .Ltmp73, reg, 331
	.short	.Ltmp570-.Ltmp569
.Ltmp569:
	.short	4414
	.long	19
	.short	256
	.asciz	"text_len"
	.p2align	2
.Ltmp570:
	.short	.Ltmp572-.Ltmp571
.Ltmp571:
	.short	4414
	.long	1539
	.short	0
	.asciz	"allocated"
	.p2align	2
.Ltmp572:
	.cv_def_range	 .Ltmp76 .Ltmp77, reg, 332
	.short	.Ltmp574-.Ltmp573
.Ltmp573:
	.short	4414
	.long	4119
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp574:
	.cv_def_range	 .Ltmp79 .Ltmp80, subfield_reg, 332, 0
	.short	.Ltmp576-.Ltmp575
.Ltmp575:
	.short	4429
	.long	0
	.long	0
	.long	4104
	.cv_inline_linetable	11 4 255 .Lfunc_begin6 .Lfunc_end6
	.p2align	2
.Ltmp576:
	.short	.Ltmp578-.Ltmp577
.Ltmp577:
	.short	4414
	.long	1568
	.short	257
	.asciz	"text"
	.p2align	2
.Ltmp578:
	.short	.Ltmp580-.Ltmp579
.Ltmp579:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp580:
	.short	2
	.short	4430
	.short	.Ltmp582-.Ltmp581
.Ltmp581:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	12 3 12 .Lfunc_begin6 .Lfunc_end6
	.p2align	2
.Ltmp582:
	.short	.Ltmp584-.Ltmp583
.Ltmp583:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp584:
	.short	.Ltmp586-.Ltmp585
.Ltmp585:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp586:
	.cv_def_range	 .Ltmp76 .Ltmp76, reg, 332
	.short	2
	.short	4430
	.short	.Ltmp588-.Ltmp587
.Ltmp587:
	.short	4429
	.long	0
	.long	0
	.long	4101
	.cv_inline_linetable	13 4 245 .Lfunc_begin6 .Lfunc_end6
	.p2align	2
.Ltmp588:
	.short	.Ltmp590-.Ltmp589
.Ltmp589:
	.short	4414
	.long	1539
	.short	257
	.asciz	"dst"
	.p2align	2
.Ltmp590:
	.short	.Ltmp592-.Ltmp591
.Ltmp591:
	.short	4414
	.long	1539
	.short	1
	.asciz	"src"
	.p2align	2
.Ltmp592:
	.cv_def_range	 .Ltmp77 .Ltmp79, reg, 329
	.short	.Ltmp594-.Ltmp593
.Ltmp593:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp594:
	.short	.Ltmp596-.Ltmp595
.Ltmp595:
	.short	4414
	.long	1568
	.short	256
	.asciz	"a0"
	.p2align	2
.Ltmp596:
	.short	.Ltmp598-.Ltmp597
.Ltmp597:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a1"
	.p2align	2
.Ltmp598:
	.cv_def_range	 .Ltmp77 .Ltmp79, reg, 329
	.short	.Ltmp600-.Ltmp599
.Ltmp599:
	.short	4414
	.long	19
	.short	256
	.asciz	"i"
	.p2align	2
.Ltmp600:
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp562:
	.p2align	2
	.cv_linetable	10, to_string, .Lfunc_end6
	.long	241
	.long	.Ltmp602-.Ltmp601
.Ltmp601:
	.short	.Ltmp604-.Ltmp603
.Ltmp603:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end7-terminate_string
	.long	0
	.long	0
	.long	4142
	.secrel32	terminate_string
	.secidx	terminate_string
	.byte	0
	.asciz	"terminate_string"
	.p2align	2
.Ltmp604:
	.short	.Ltmp606-.Ltmp605
.Ltmp605:
	.short	4114
	.long	32
	.long	0
	.long	0
	.long	40
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp606:
	.short	.Ltmp608-.Ltmp607
.Ltmp607:
	.short	4414
	.long	4119
	.short	1
	.asciz	"str"
	.p2align	2
.Ltmp608:
	.cv_def_range	 .Ltmp82 .Ltmp95, subfield_reg, 333, 0
	.cv_def_range	 .Ltmp82 .Ltmp94, subfield_reg, 329, 8
	.short	.Ltmp610-.Ltmp609
.Ltmp609:
	.short	4414
	.long	4119
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp610:
	.cv_def_range	 .Ltmp83 .Ltmp97, subfield_reg, 343, 8
	.cv_def_range	 .Ltmp84 .Ltmp96, subfield_reg, 332, 0
	.short	.Ltmp612-.Ltmp611
.Ltmp611:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	15 3 12 .Lfunc_begin7 .Lfunc_end7
	.p2align	2
.Ltmp612:
	.short	.Ltmp614-.Ltmp613
.Ltmp613:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp614:
	.short	.Ltmp616-.Ltmp615
.Ltmp615:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp616:
	.cv_def_range	 .Ltmp84 .Ltmp84, reg, 332
	.short	2
	.short	4430
	.short	.Ltmp618-.Ltmp617
.Ltmp617:
	.short	4429
	.long	0
	.long	0
	.long	4101
	.cv_inline_linetable	16 4 245 .Lfunc_begin7 .Lfunc_end7
	.p2align	2
.Ltmp618:
	.short	.Ltmp620-.Ltmp619
.Ltmp619:
	.short	4414
	.long	1539
	.short	257
	.asciz	"dst"
	.p2align	2
.Ltmp620:
	.short	.Ltmp622-.Ltmp621
.Ltmp621:
	.short	4414
	.long	1539
	.short	1
	.asciz	"src"
	.p2align	2
.Ltmp622:
	.cv_def_range	 .Ltmp85 .Ltmp93, reg, 333
	.short	.Ltmp624-.Ltmp623
.Ltmp623:
	.short	4414
	.long	117
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp624:
	.cv_def_range	 .Ltmp85 .Ltmp93, reg, 329
	.short	.Ltmp626-.Ltmp625
.Ltmp625:
	.short	4414
	.long	1568
	.short	256
	.asciz	"a0"
	.p2align	2
.Ltmp626:
	.short	.Ltmp628-.Ltmp627
.Ltmp627:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a1"
	.p2align	2
.Ltmp628:
	.cv_def_range	 .Ltmp85 .Ltmp93, reg, 333
	.short	.Ltmp630-.Ltmp629
.Ltmp629:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp630:
	.cv_def_range	 .Ltmp91 .Ltmp93, reg, 328
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp602:
	.p2align	2
	.cv_linetable	14, terminate_string, .Lfunc_end7
	.long	241
	.long	.Ltmp632-.Ltmp631
.Ltmp631:
	.short	.Ltmp634-.Ltmp633
.Ltmp633:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end8-build_unsigned_int
	.long	0
	.long	0
	.long	4145
	.secrel32	build_unsigned_int
	.secidx	build_unsigned_int
	.byte	0
	.asciz	"build_unsigned_int"
	.p2align	2
.Ltmp634:
	.short	.Ltmp636-.Ltmp635
.Ltmp635:
	.short	4114
	.long	32
	.long	0
	.long	0
	.long	24
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp636:
	.short	.Ltmp638-.Ltmp637
.Ltmp637:
	.short	4414
	.long	117
	.short	1
	.asciz	"num"
	.p2align	2
.Ltmp638:
	.cv_def_range	 .Lfunc_begin8 .Lfunc_begin8, reg, 331
	.short	.Ltmp640-.Ltmp639
.Ltmp639:
	.short	4414
	.long	19
	.short	1
	.asciz	"num_size"
	.p2align	2
.Ltmp640:
	.cv_def_range	 .Lfunc_begin8 .Lfunc_begin8, reg, 336
	.short	.Ltmp642-.Ltmp641
.Ltmp641:
	.short	4414
	.long	4106
	.short	1
	.asciz	"builder"
	.p2align	2
.Ltmp642:
	.cv_def_range	 .Lfunc_begin8 .Lfunc_begin8, reg, 337
	.short	.Ltmp644-.Ltmp643
.Ltmp643:
	.short	4414
	.long	117
	.short	256
	.asciz	"digit"
	.p2align	2
.Ltmp644:
	.short	.Ltmp646-.Ltmp645
.Ltmp645:
	.short	4429
	.long	0
	.long	0
	.long	4114
	.cv_inline_linetable	18 4 91 .Lfunc_begin8 .Lfunc_end8
	.p2align	2
.Ltmp646:
	.short	.Ltmp648-.Ltmp647
.Ltmp647:
	.short	4414
	.long	32
	.short	257
	.asciz	"c"
	.p2align	2
.Ltmp648:
	.short	.Ltmp650-.Ltmp649
.Ltmp649:
	.short	4414
	.long	4106
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp650:
	.cv_def_range	 .Ltmp101 .Ltmp104, reg, 332
	.short	.Ltmp652-.Ltmp651
.Ltmp651:
	.short	4414
	.long	4106
	.short	0
	.asciz	"to_put"
	.p2align	2
.Ltmp652:
	.cv_def_range	 .Ltmp101 .Ltmp113, reg, 332
	.short	.Ltmp654-.Ltmp653
.Ltmp653:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	19 3 12 .Lfunc_begin8 .Lfunc_end8
	.p2align	2
.Ltmp654:
	.short	.Ltmp656-.Ltmp655
.Ltmp655:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp656:
	.short	.Ltmp658-.Ltmp657
.Ltmp657:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp658:
	.cv_def_range	 .Ltmp110 .Ltmp110, reg, 328
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp632:
	.p2align	2
	.cv_linetable	17, build_unsigned_int, .Lfunc_end8
	.long	241
	.long	.Ltmp660-.Ltmp659
.Ltmp659:
	.short	.Ltmp662-.Ltmp661
.Ltmp661:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end9-int_to_str
	.long	0
	.long	0
	.long	4148
	.secrel32	int_to_str
	.secidx	int_to_str
	.byte	0
	.asciz	"int_to_str"
	.p2align	2
.Ltmp662:
	.short	.Ltmp664-.Ltmp663
.Ltmp663:
	.short	4114
	.long	32
	.long	0
	.long	0
	.long	40
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp664:
	.short	.Ltmp666-.Ltmp665
.Ltmp665:
	.short	4414
	.long	19
	.short	1
	.asciz	"num"
	.p2align	2
.Ltmp666:
	.cv_def_range	 .Lfunc_begin9 .Ltmp115, reg, 331
	.cv_def_range	 .Ltmp147 .Ltmp148, reg, 342
	.short	.Ltmp668-.Ltmp667
.Ltmp667:
	.short	4414
	.long	4106
	.short	1
	.asciz	"builder"
	.p2align	2
.Ltmp668:
	.cv_def_range	 .Lfunc_begin9 .Ltmp115, reg, 336
	.short	.Ltmp670-.Ltmp669
.Ltmp669:
	.short	4414
	.long	19
	.short	0
	.asciz	"num_size"
	.p2align	2
.Ltmp670:
	.cv_def_range	 .Ltmp147 .Ltmp148, reg, 329
	.short	.Ltmp672-.Ltmp671
.Ltmp671:
	.short	4414
	.long	19
	.short	0
	.asciz	"div_copy"
	.p2align	2
.Ltmp672:
	.cv_def_range	 .Ltmp117 .Ltmp118, reg, 330
	.cv_def_range	 .Ltmp118 .Ltmp124, reg, 331
	.short	.Ltmp674-.Ltmp673
.Ltmp673:
	.short	4429
	.long	0
	.long	0
	.long	4114
	.cv_inline_linetable	21 4 91 .Lfunc_begin9 .Lfunc_end9
	.p2align	2
.Ltmp674:
	.short	.Ltmp676-.Ltmp675
.Ltmp675:
	.short	4414
	.long	32
	.short	257
	.asciz	"c"
	.p2align	2
.Ltmp676:
	.short	.Ltmp678-.Ltmp677
.Ltmp677:
	.short	4414
	.long	4106
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp678:
	.cv_def_range	 .Ltmp121 .Ltmp132 .Ltmp144 .Ltmp147, reg, 343
	.short	.Ltmp680-.Ltmp679
.Ltmp679:
	.short	4414
	.long	4106
	.short	0
	.asciz	"to_put"
	.p2align	2
.Ltmp680:
	.cv_def_range	 .Ltmp121 .Ltmp124, reg, 343
	.cv_def_range	 .Ltmp124 .Ltmp132 .Ltmp144 .Ltmp147, reg, 332
	.short	.Ltmp682-.Ltmp681
.Ltmp681:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	22 3 12 .Lfunc_begin9 .Lfunc_end9
	.p2align	2
.Ltmp682:
	.short	.Ltmp684-.Ltmp683
.Ltmp683:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp684:
	.short	.Ltmp686-.Ltmp685
.Ltmp685:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp686:
	.cv_def_range	 .Ltmp130 .Ltmp130, reg, 328
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp688-.Ltmp687
.Ltmp687:
	.short	4429
	.long	0
	.long	0
	.long	4114
	.cv_inline_linetable	23 4 91 .Lfunc_begin9 .Lfunc_end9
	.p2align	2
.Ltmp688:
	.short	.Ltmp690-.Ltmp689
.Ltmp689:
	.short	4414
	.long	32
	.short	257
	.asciz	"c"
	.p2align	2
.Ltmp690:
	.short	.Ltmp692-.Ltmp691
.Ltmp691:
	.short	4414
	.long	4106
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp692:
	.cv_def_range	 .Ltmp132 .Ltmp135, reg, 343
	.short	.Ltmp694-.Ltmp693
.Ltmp693:
	.short	4414
	.long	4106
	.short	0
	.asciz	"to_put"
	.p2align	2
.Ltmp694:
	.cv_def_range	 .Ltmp132 .Ltmp144, reg, 343
	.short	.Ltmp696-.Ltmp695
.Ltmp695:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	24 3 12 .Lfunc_begin9 .Lfunc_end9
	.p2align	2
.Ltmp696:
	.short	.Ltmp698-.Ltmp697
.Ltmp697:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp698:
	.short	.Ltmp700-.Ltmp699
.Ltmp699:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp700:
	.cv_def_range	 .Ltmp141 .Ltmp141, reg, 328
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp660:
	.p2align	2
	.cv_linetable	20, int_to_str, .Lfunc_end9
	.long	241
	.long	.Ltmp702-.Ltmp701
.Ltmp701:
	.short	.Ltmp704-.Ltmp703
.Ltmp703:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end10-float_to_str
	.long	0
	.long	0
	.long	4151
	.secrel32	float_to_str
	.secidx	float_to_str
	.byte	0
	.asciz	"float_to_str"
	.p2align	2
.Ltmp704:
	.short	.Ltmp706-.Ltmp705
.Ltmp705:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	48
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp706:
	.short	.Ltmp708-.Ltmp707
.Ltmp707:
	.short	4414
	.long	65
	.short	1
	.asciz	"num"
	.p2align	2
.Ltmp708:
	.cv_def_range	 .Lfunc_begin10 .Ltmp150, reg, 155
	.cv_def_range	 .Ltmp165 .Ltmp167 .Ltmp182 .Ltmp185 .Ltmp196 .Ltmp197, reg, 160
	.short	.Ltmp710-.Ltmp709
.Ltmp709:
	.short	4414
	.long	4106
	.short	1
	.asciz	"builder"
	.p2align	2
.Ltmp710:
	.cv_def_range	 .Lfunc_begin10 .Ltmp150, reg, 336
	.short	.Ltmp712-.Ltmp711
.Ltmp711:
	.short	4414
	.long	117
	.short	0
	.asciz	"decimal"
	.p2align	2
.Ltmp712:
	.cv_def_range	 .Ltmp166 .Ltmp166, reg, 331
	.short	.Ltmp714-.Ltmp713
.Ltmp713:
	.short	4414
	.long	19
	.short	0
	.asciz	"zeroes_to_append"
	.p2align	2
.Ltmp714:
	.cv_def_range	 .Ltmp196 .Ltmp199, reg, 340
	.short	.Ltmp716-.Ltmp715
.Ltmp715:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp716:
	.cv_def_range	 .Ltmp201 .Ltmp217, reg, 333
	.short	.Ltmp718-.Ltmp717
.Ltmp717:
	.short	4429
	.long	0
	.long	0
	.long	4114
	.cv_inline_linetable	26 4 91 .Lfunc_begin10 .Lfunc_end10
	.p2align	2
.Ltmp718:
	.short	.Ltmp720-.Ltmp719
.Ltmp719:
	.short	4414
	.long	32
	.short	257
	.asciz	"c"
	.p2align	2
.Ltmp720:
	.short	.Ltmp722-.Ltmp721
.Ltmp721:
	.short	4414
	.long	4106
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp722:
	.cv_def_range	 .Ltmp152 .Ltmp165, reg, 343
	.short	.Ltmp724-.Ltmp723
.Ltmp723:
	.short	4414
	.long	4106
	.short	0
	.asciz	"to_put"
	.p2align	2
.Ltmp724:
	.cv_def_range	 .Ltmp152 .Ltmp155, reg, 343
	.cv_def_range	 .Ltmp155 .Ltmp165, reg, 333
	.short	.Ltmp726-.Ltmp725
.Ltmp725:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	27 3 12 .Lfunc_begin10 .Lfunc_end10
	.p2align	2
.Ltmp726:
	.short	.Ltmp728-.Ltmp727
.Ltmp727:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp728:
	.short	.Ltmp730-.Ltmp729
.Ltmp729:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp730:
	.cv_def_range	 .Ltmp161 .Ltmp161, reg, 328
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp732-.Ltmp731
.Ltmp731:
	.short	4429
	.long	0
	.long	0
	.long	4114
	.cv_inline_linetable	28 4 91 .Lfunc_begin10 .Lfunc_end10
	.p2align	2
.Ltmp732:
	.short	.Ltmp734-.Ltmp733
.Ltmp733:
	.short	4414
	.long	32
	.short	257
	.asciz	"c"
	.p2align	2
.Ltmp734:
	.short	.Ltmp736-.Ltmp735
.Ltmp735:
	.short	4414
	.long	4106
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp736:
	.cv_def_range	 .Ltmp169 .Ltmp181, reg, 343
	.short	.Ltmp738-.Ltmp737
.Ltmp737:
	.short	4414
	.long	4106
	.short	0
	.asciz	"to_put"
	.p2align	2
.Ltmp738:
	.cv_def_range	 .Ltmp169 .Ltmp172, reg, 343
	.cv_def_range	 .Ltmp172 .Ltmp181, reg, 333
	.short	.Ltmp740-.Ltmp739
.Ltmp739:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	29 3 12 .Lfunc_begin10 .Lfunc_end10
	.p2align	2
.Ltmp740:
	.short	.Ltmp742-.Ltmp741
.Ltmp741:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp742:
	.short	.Ltmp744-.Ltmp743
.Ltmp743:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp744:
	.cv_def_range	 .Ltmp178 .Ltmp178, reg, 328
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp746-.Ltmp745
.Ltmp745:
	.short	4429
	.long	0
	.long	0
	.long	4114
	.cv_inline_linetable	30 4 91 .Lfunc_begin10 .Lfunc_end10
	.p2align	2
.Ltmp746:
	.short	.Ltmp748-.Ltmp747
.Ltmp747:
	.short	4414
	.long	32
	.short	257
	.asciz	"c"
	.p2align	2
.Ltmp748:
	.short	.Ltmp750-.Ltmp749
.Ltmp749:
	.short	4414
	.long	4106
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp750:
	.cv_def_range	 .Ltmp182 .Ltmp195 .Ltmp204 .Ltmp207, reg, 343
	.short	.Ltmp752-.Ltmp751
.Ltmp751:
	.short	4414
	.long	4106
	.short	0
	.asciz	"to_put"
	.p2align	2
.Ltmp752:
	.cv_def_range	 .Ltmp182 .Ltmp185, reg, 343
	.cv_def_range	 .Ltmp185 .Ltmp195, reg, 333
	.short	.Ltmp754-.Ltmp753
.Ltmp753:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	31 3 12 .Lfunc_begin10 .Lfunc_end10
	.p2align	2
.Ltmp754:
	.short	.Ltmp756-.Ltmp755
.Ltmp755:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp756:
	.short	.Ltmp758-.Ltmp757
.Ltmp757:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp758:
	.cv_def_range	 .Ltmp191 .Ltmp191, reg, 328
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp760-.Ltmp759
.Ltmp759:
	.short	4429
	.long	0
	.long	0
	.long	4114
	.cv_inline_linetable	32 4 91 .Lfunc_begin10 .Lfunc_end10
	.p2align	2
.Ltmp760:
	.short	.Ltmp762-.Ltmp761
.Ltmp761:
	.short	4414
	.long	32
	.short	257
	.asciz	"c"
	.p2align	2
.Ltmp762:
	.short	.Ltmp764-.Ltmp763
.Ltmp763:
	.short	4414
	.long	4106
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp764:
	.cv_def_range	 .Ltmp201 .Ltmp217, reg, 343
	.short	.Ltmp766-.Ltmp765
.Ltmp765:
	.short	4414
	.long	4106
	.short	0
	.asciz	"to_put"
	.p2align	2
.Ltmp766:
	.cv_def_range	 .Ltmp201 .Ltmp204 .Ltmp209 .Ltmp217, reg, 332
	.cv_def_range	 .Ltmp204 .Ltmp209, reg, 343
	.short	.Ltmp768-.Ltmp767
.Ltmp767:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	33 3 12 .Lfunc_begin10 .Lfunc_end10
	.p2align	2
.Ltmp768:
	.short	.Ltmp770-.Ltmp769
.Ltmp769:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp770:
	.short	.Ltmp772-.Ltmp771
.Ltmp771:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp772:
	.cv_def_range	 .Ltmp215 .Ltmp215, reg, 328
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp702:
	.p2align	2
	.cv_linetable	25, float_to_str, .Lfunc_end10
	.long	241
	.long	.Ltmp774-.Ltmp773
.Ltmp773:
	.short	.Ltmp776-.Ltmp775
.Ltmp775:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end11-parse_format
	.long	0
	.long	0
	.long	4194
	.secrel32	parse_format
	.secidx	parse_format
	.byte	0
	.asciz	"parse_format"
	.p2align	2
.Ltmp776:
	.short	.Ltmp778-.Ltmp777
.Ltmp777:
	.short	4114
	.long	704
	.long	0
	.long	0
	.long	56
	.long	0
	.short	0
	.long	1196032
	.p2align	2
.Ltmp778:
	.short	.Ltmp780-.Ltmp779
.Ltmp779:
	.short	4414
	.long	4119
	.short	1
	.asciz	"format"
	.p2align	2
.Ltmp780:
	.cv_def_range	 .Ltmp219 .Ltmp221 .Ltmp222 .Ltmp223, subfield_reg, 332, 8
	.cv_def_range	 .Ltmp221 .Ltmp222 .Ltmp223 .Ltmp312, reg_rel, 335, 129, 240
	.short	.Ltmp782-.Ltmp781
.Ltmp781:
	.short	4414
	.long	4153
	.short	1
	.asciz	"list"
	.p2align	2
.Ltmp782:
	.cv_def_range	 .Lfunc_begin11 .Ltmp219, reg, 337
	.short	.Ltmp784-.Ltmp783
.Ltmp783:
	.short	4414
	.long	4111
	.short	0
	.asciz	"builder"
	.p2align	2
.Ltmp784:
	.cv_def_range	 .Ltmp219 .Ltmp315, frame_ptr_rel, 256
	.short	.Ltmp786-.Ltmp785
.Ltmp785:
	.short	4414
	.long	19
	.short	0
	.asciz	"list_index"
	.p2align	2
.Ltmp786:
	.cv_def_range	 .Ltmp223 .Ltmp262, reg, 340
	.short	.Ltmp788-.Ltmp787
.Ltmp787:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp788:
	.cv_def_range	 .Ltmp223 .Ltmp262, reg, 342
	.short	.Ltmp790-.Ltmp789
.Ltmp789:
	.short	4414
	.long	4159
	.short	0
	.asciz	"item"
	.p2align	2
.Ltmp790:
	.cv_def_range	 .Ltmp230 .Ltmp230, subfield_reg, 332, 8
	.cv_def_range	 .Ltmp230 .Ltmp235 .Ltmp247 .Ltmp248 .Ltmp249 .Ltmp252, subfield_reg, 330, 0
	.short	.Ltmp792-.Ltmp791
.Ltmp791:
	.short	4414
	.long	116
	.short	0
	.asciz	"type"
	.p2align	2
.Ltmp792:
	.cv_def_range	 .Ltmp232 .Ltmp232, reg, 17
	.short	.Ltmp794-.Ltmp793
.Ltmp793:
	.short	4414
	.long	4119
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp794:
	.cv_def_range	 .Ltmp311 .Ltmp313, subfield_reg, 342, 0
	.cv_def_range	 .Ltmp311 .Ltmp314, subfield_reg, 343, 8
	.short	.Ltmp796-.Ltmp795
.Ltmp795:
	.short	4429
	.long	0
	.long	0
	.long	4114
	.cv_inline_linetable	35 4 91 .Lfunc_begin11 .Lfunc_end11
	.p2align	2
.Ltmp796:
	.short	.Ltmp798-.Ltmp797
.Ltmp797:
	.short	4414
	.long	32
	.short	1
	.asciz	"c"
	.p2align	2
.Ltmp798:
	.cv_def_range	 .Ltmp223 .Ltmp224 .Ltmp236 .Ltmp247, reg, 351
	.short	.Ltmp800-.Ltmp799
.Ltmp799:
	.short	4414
	.long	4106
	.short	256
	.asciz	"str"
	.p2align	2
.Ltmp800:
	.short	.Ltmp802-.Ltmp801
.Ltmp801:
	.short	4414
	.long	4106
	.short	0
	.asciz	"to_put"
	.p2align	2
.Ltmp802:
	.cv_def_range	 .Ltmp238 .Ltmp247, reg, 332
	.short	.Ltmp804-.Ltmp803
.Ltmp803:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	37 3 12 .Lfunc_begin11 .Lfunc_end11
	.p2align	2
.Ltmp804:
	.short	.Ltmp806-.Ltmp805
.Ltmp805:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp806:
	.short	.Ltmp808-.Ltmp807
.Ltmp807:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp808:
	.cv_def_range	 .Ltmp244 .Ltmp244, reg, 328
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp810-.Ltmp809
.Ltmp809:
	.short	4429
	.long	0
	.long	0
	.long	4121
	.cv_inline_linetable	36 4 59 .Lfunc_begin11 .Lfunc_end11
	.p2align	2
.Ltmp810:
	.short	.Ltmp812-.Ltmp811
.Ltmp811:
	.short	4414
	.long	19
	.short	1
	.asciz	"index"
	.p2align	2
.Ltmp812:
	.cv_def_range	 .Ltmp226 .Ltmp229, reg, 342
	.short	.Ltmp814-.Ltmp813
.Ltmp813:
	.short	4414
	.long	4119
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp814:
	.cv_def_range	 .Ltmp226 .Ltmp229, reg_rel, 335, 1, 232
	.short	2
	.short	4430
	.short	.Ltmp816-.Ltmp815
.Ltmp815:
	.short	4429
	.long	0
	.long	0
	.long	4114
	.cv_inline_linetable	38 4 91 .Lfunc_begin11 .Lfunc_end11
	.p2align	2
.Ltmp816:
	.short	.Ltmp818-.Ltmp817
.Ltmp817:
	.short	4414
	.long	32
	.short	1
	.asciz	"c"
	.p2align	2
.Ltmp818:
	.cv_def_range	 .Ltmp249 .Ltmp262, reg, 351
	.short	.Ltmp820-.Ltmp819
.Ltmp819:
	.short	4414
	.long	4106
	.short	256
	.asciz	"str"
	.p2align	2
.Ltmp820:
	.short	.Ltmp822-.Ltmp821
.Ltmp821:
	.short	4414
	.long	4106
	.short	0
	.asciz	"to_put"
	.p2align	2
.Ltmp822:
	.cv_def_range	 .Ltmp252 .Ltmp261, reg, 341
	.short	.Ltmp824-.Ltmp823
.Ltmp823:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	39 3 12 .Lfunc_begin11 .Lfunc_end11
	.p2align	2
.Ltmp824:
	.short	.Ltmp826-.Ltmp825
.Ltmp825:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp826:
	.short	.Ltmp828-.Ltmp827
.Ltmp827:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp828:
	.cv_def_range	 .Ltmp258 .Ltmp258, reg, 328
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp830-.Ltmp829
.Ltmp829:
	.short	4429
	.long	0
	.long	0
	.long	4114
	.cv_inline_linetable	40 4 91 .Lfunc_begin11 .Lfunc_end11
	.p2align	2
.Ltmp830:
	.short	.Ltmp832-.Ltmp831
.Ltmp831:
	.short	4414
	.long	32
	.short	257
	.asciz	"c"
	.p2align	2
.Ltmp832:
	.short	.Ltmp834-.Ltmp833
.Ltmp833:
	.short	4414
	.long	4106
	.short	256
	.asciz	"str"
	.p2align	2
.Ltmp834:
	.short	.Ltmp836-.Ltmp835
.Ltmp835:
	.short	4414
	.long	4106
	.short	0
	.asciz	"to_put"
	.p2align	2
.Ltmp836:
	.cv_def_range	 .Ltmp264 .Ltmp272, reg, 332
	.short	.Ltmp838-.Ltmp837
.Ltmp837:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	41 3 12 .Lfunc_begin11 .Lfunc_end11
	.p2align	2
.Ltmp838:
	.short	.Ltmp840-.Ltmp839
.Ltmp839:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp840:
	.short	.Ltmp842-.Ltmp841
.Ltmp841:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp842:
	.cv_def_range	 .Ltmp270 .Ltmp270, reg, 328
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp844-.Ltmp843
.Ltmp843:
	.short	4429
	.long	0
	.long	0
	.long	4124
	.cv_inline_linetable	42 4 17 .Lfunc_begin11 .Lfunc_end11
	.p2align	2
.Ltmp844:
	.short	.Ltmp846-.Ltmp845
.Ltmp845:
	.short	4414
	.long	4106
	.short	257
	.asciz	"builder"
	.p2align	2
.Ltmp846:
	.short	.Ltmp848-.Ltmp847
.Ltmp847:
	.short	4414
	.long	4119
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp848:
	.cv_def_range	 .Ltmp281 .Ltmp311, subfield_reg, 342, 0
	.cv_def_range	 .Ltmp282 .Ltmp311, subfield_reg, 343, 8
	.short	.Ltmp850-.Ltmp849
.Ltmp849:
	.short	4414
	.long	19
	.short	0
	.asciz	"out_len"
	.p2align	2
.Ltmp850:
	.cv_def_range	 .Ltmp275 .Ltmp278 .Ltmp280 .Ltmp311, reg, 343
	.short	.Ltmp852-.Ltmp851
.Ltmp851:
	.short	4414
	.long	4106
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp852:
	.cv_def_range	 .Ltmp275 .Ltmp276, reg, 330
	.cv_def_range	 .Ltmp276 .Ltmp277, reg, 328
	.cv_def_range	 .Ltmp277 .Ltmp278 .Ltmp282 .Ltmp311, reg, 333
	.short	.Ltmp854-.Ltmp853
.Ltmp853:
	.short	4414
	.long	19
	.short	256
	.asciz	"i"
	.p2align	2
.Ltmp854:
	.short	.Ltmp856-.Ltmp855
.Ltmp855:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp856:
	.cv_def_range	 .Ltmp284 .Ltmp299, reg, 340
	.short	.Ltmp858-.Ltmp857
.Ltmp857:
	.short	4414
	.long	19
	.short	256
	.asciz	"i"
	.p2align	2
.Ltmp858:
	.short	.Ltmp860-.Ltmp859
.Ltmp859:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	43 3 12 .Lfunc_begin11 .Lfunc_end11
	.p2align	2
.Ltmp860:
	.short	.Ltmp862-.Ltmp861
.Ltmp861:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp862:
	.short	.Ltmp864-.Ltmp863
.Ltmp863:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp864:
	.cv_def_range	 .Ltmp281 .Ltmp281, reg, 342
	.short	2
	.short	4430
	.short	.Ltmp866-.Ltmp865
.Ltmp865:
	.short	4429
	.long	0
	.long	0
	.long	4101
	.cv_inline_linetable	44 4 245 .Lfunc_begin11 .Lfunc_end11
	.p2align	2
.Ltmp866:
	.short	.Ltmp868-.Ltmp867
.Ltmp867:
	.short	4414
	.long	1539
	.short	257
	.asciz	"dst"
	.p2align	2
.Ltmp868:
	.short	.Ltmp870-.Ltmp869
.Ltmp869:
	.short	4414
	.long	1539
	.short	1
	.asciz	"src"
	.p2align	2
.Ltmp870:
	.cv_def_range	 .Ltmp288 .Ltmp298, reg, 333
	.short	.Ltmp872-.Ltmp871
.Ltmp871:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp872:
	.short	.Ltmp874-.Ltmp873
.Ltmp873:
	.short	4414
	.long	1568
	.short	256
	.asciz	"a0"
	.p2align	2
.Ltmp874:
	.short	.Ltmp876-.Ltmp875
.Ltmp875:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a1"
	.p2align	2
.Ltmp876:
	.cv_def_range	 .Ltmp288 .Ltmp298, reg, 333
	.short	.Ltmp878-.Ltmp877
.Ltmp877:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp878:
	.cv_def_range	 .Ltmp296 .Ltmp298, reg, 331
	.short	2
	.short	4430
	.short	.Ltmp880-.Ltmp879
.Ltmp879:
	.short	4429
	.long	0
	.long	0
	.long	4101
	.cv_inline_linetable	45 4 245 .Lfunc_begin11 .Lfunc_end11
	.p2align	2
.Ltmp880:
	.short	.Ltmp882-.Ltmp881
.Ltmp881:
	.short	4414
	.long	1539
	.short	1
	.asciz	"dst"
	.p2align	2
.Ltmp882:
	.cv_def_range	 .Ltmp302 .Ltmp311, reg, 330
	.short	.Ltmp884-.Ltmp883
.Ltmp883:
	.short	4414
	.long	1539
	.short	1
	.asciz	"src"
	.p2align	2
.Ltmp884:
	.cv_def_range	 .Ltmp300 .Ltmp311, reg, 333
	.short	.Ltmp886-.Ltmp885
.Ltmp885:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp886:
	.short	.Ltmp888-.Ltmp887
.Ltmp887:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a0"
	.p2align	2
.Ltmp888:
	.cv_def_range	 .Ltmp302 .Ltmp311, reg, 330
	.short	.Ltmp890-.Ltmp889
.Ltmp889:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a1"
	.p2align	2
.Ltmp890:
	.cv_def_range	 .Ltmp300 .Ltmp311, reg, 333
	.short	.Ltmp892-.Ltmp891
.Ltmp891:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp892:
	.cv_def_range	 .Ltmp309 .Ltmp311, reg, 331
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp774:
	.p2align	2
	.cv_linetable	34, parse_format, .Lfunc_end11
	.long	241
	.long	.Ltmp894-.Ltmp893
.Ltmp893:
	.short	.Ltmp896-.Ltmp895
.Ltmp895:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end12-"print!@* u8!@-"
	.long	0
	.long	0
	.long	4195
	.secrel32	"print!@* u8!@-"
	.secidx	"print!@* u8!@-"
	.byte	0
	.asciz	"print!@* u8!@-"
	.p2align	2
.Ltmp896:
	.short	.Ltmp898-.Ltmp897
.Ltmp897:
	.short	4114
	.long	80
	.long	0
	.long	0
	.long	24
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp898:
	.short	.Ltmp900-.Ltmp899
.Ltmp899:
	.short	4414
	.long	1568
	.short	1
	.asciz	"format"
	.p2align	2
.Ltmp900:
	.cv_def_range	 .Lfunc_begin12 .Ltmp316, reg, 331
	.cv_def_range	 .Ltmp316 .Ltmp330, reg, 333
	.short	.Ltmp902-.Ltmp901
.Ltmp901:
	.short	4414
	.long	4119
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp902:
	.cv_def_range	 .Ltmp316 .Ltmp331, frame_ptr_rel, 48
	.short	.Ltmp904-.Ltmp903
.Ltmp903:
	.short	4414
	.long	4119
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp904:
	.cv_def_range	 .Ltmp322 .Ltmp329, subfield_reg, 329, 0
	.short	.Ltmp906-.Ltmp905
.Ltmp905:
	.short	4414
	.long	4153
	.short	0
	.asciz	"list"
	.p2align	2
.Ltmp906:
	.cv_def_range	 .Ltmp322 .Ltmp323 .Ltmp324 .Lfunc_end12, frame_ptr_rel, 72
	.cv_def_range	 .Ltmp323 .Ltmp324, reg, 337
	.short	.Ltmp908-.Ltmp907
.Ltmp907:
	.short	4414
	.long	1539
	.short	0
	.asciz	"stdout"
	.p2align	2
.Ltmp908:
	.cv_def_range	 .Ltmp325 .Ltmp328, reg, 328
	.short	.Ltmp910-.Ltmp909
.Ltmp909:
	.short	4429
	.long	0
	.long	0
	.long	4126
	.cv_inline_linetable	47 4 121 .Lfunc_begin12 .Lfunc_end12
	.p2align	2
.Ltmp910:
	.short	.Ltmp912-.Ltmp911
.Ltmp911:
	.short	4414
	.long	1568
	.short	257
	.asciz	"text"
	.p2align	2
.Ltmp912:
	.short	.Ltmp914-.Ltmp913
.Ltmp913:
	.short	4414
	.long	19
	.short	256
	.asciz	"text_len"
	.p2align	2
.Ltmp914:
	.short	.Ltmp916-.Ltmp915
.Ltmp915:
	.short	4414
	.long	1539
	.short	0
	.asciz	"allocated"
	.p2align	2
.Ltmp916:
	.cv_def_range	 .Ltmp319 .Ltmp320, reg, 329
	.short	.Ltmp918-.Ltmp917
.Ltmp917:
	.short	4414
	.long	4119
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp918:
	.cv_def_range	 .Ltmp322 .Ltmp329, subfield_reg, 329, 0
	.short	.Ltmp920-.Ltmp919
.Ltmp919:
	.short	4429
	.long	0
	.long	0
	.long	4104
	.cv_inline_linetable	48 4 255 .Lfunc_begin12 .Lfunc_end12
	.p2align	2
.Ltmp920:
	.short	.Ltmp922-.Ltmp921
.Ltmp921:
	.short	4414
	.long	1568
	.short	257
	.asciz	"text"
	.p2align	2
.Ltmp922:
	.short	.Ltmp924-.Ltmp923
.Ltmp923:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp924:
	.short	2
	.short	4430
	.short	.Ltmp926-.Ltmp925
.Ltmp925:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	49 3 12 .Lfunc_begin12 .Lfunc_end12
	.p2align	2
.Ltmp926:
	.short	.Ltmp928-.Ltmp927
.Ltmp927:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp928:
	.short	.Ltmp930-.Ltmp929
.Ltmp929:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp930:
	.cv_def_range	 .Ltmp319 .Ltmp319, reg, 329
	.short	2
	.short	4430
	.short	.Ltmp932-.Ltmp931
.Ltmp931:
	.short	4429
	.long	0
	.long	0
	.long	4101
	.cv_inline_linetable	50 4 245 .Lfunc_begin12 .Lfunc_end12
	.p2align	2
.Ltmp932:
	.short	.Ltmp934-.Ltmp933
.Ltmp933:
	.short	4414
	.long	1539
	.short	257
	.asciz	"dst"
	.p2align	2
.Ltmp934:
	.short	.Ltmp936-.Ltmp935
.Ltmp935:
	.short	4414
	.long	1539
	.short	1
	.asciz	"src"
	.p2align	2
.Ltmp936:
	.cv_def_range	 .Ltmp320 .Ltmp322, reg, 333
	.short	.Ltmp938-.Ltmp937
.Ltmp937:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp938:
	.short	.Ltmp940-.Ltmp939
.Ltmp939:
	.short	4414
	.long	1568
	.short	256
	.asciz	"a0"
	.p2align	2
.Ltmp940:
	.short	.Ltmp942-.Ltmp941
.Ltmp941:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a1"
	.p2align	2
.Ltmp942:
	.cv_def_range	 .Ltmp320 .Ltmp322, reg, 333
	.short	.Ltmp944-.Ltmp943
.Ltmp943:
	.short	4414
	.long	19
	.short	256
	.asciz	"i"
	.p2align	2
.Ltmp944:
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp946-.Ltmp945
.Ltmp945:
	.short	4429
	.long	0
	.long	0
	.long	4129
	.cv_inline_linetable	51 5 46 .Lfunc_begin12 .Lfunc_end12
	.p2align	2
.Ltmp946:
	.short	2
	.short	4430
	.short	.Ltmp948-.Ltmp947
.Ltmp947:
	.short	4429
	.long	0
	.long	0
	.long	4132
	.cv_inline_linetable	52 5 38 .Lfunc_begin12 .Lfunc_end12
	.p2align	2
.Ltmp948:
	.short	.Ltmp950-.Ltmp949
.Ltmp949:
	.short	4414
	.long	1539
	.short	1
	.asciz	"file"
	.p2align	2
.Ltmp950:
	.cv_def_range	 .Ltmp325 .Ltmp328, reg, 328
	.short	.Ltmp952-.Ltmp951
.Ltmp951:
	.short	4414
	.long	1539
	.short	1
	.asciz	"data"
	.p2align	2
.Ltmp952:
	.cv_def_range	 .Ltmp326 .Ltmp328, reg, 331
	.short	.Ltmp954-.Ltmp953
.Ltmp953:
	.short	4414
	.long	0
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp954:
	.cv_def_range	 .Ltmp326 .Ltmp328, reg, 360
	.short	.Ltmp956-.Ltmp955
.Ltmp955:
	.short	4414
	.long	0
	.short	0
	.asciz	"written"
	.p2align	2
.Ltmp956:
	.cv_def_range	 .Ltmp327 .Ltmp328, frame_ptr_rel, 40
	.short	.Ltmp958-.Ltmp957
.Ltmp957:
	.short	4414
	.long	48
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp958:
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp894:
	.p2align	2
	.cv_linetable	46, "print!@* u8!@-", .Lfunc_end12
	.long	241
	.long	.Ltmp960-.Ltmp959
.Ltmp959:
	.short	.Ltmp962-.Ltmp961
.Ltmp961:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end13-"print!@string!@-"
	.long	0
	.long	0
	.long	4196
	.secrel32	"print!@string!@-"
	.secidx	"print!@string!@-"
	.byte	0
	.asciz	"print!@string!@-"
	.p2align	2
.Ltmp962:
	.short	.Ltmp964-.Ltmp963
.Ltmp963:
	.short	4114
	.long	88
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp964:
	.short	.Ltmp966-.Ltmp965
.Ltmp965:
	.short	4414
	.long	4119
	.short	257
	.asciz	"format"
	.p2align	2
.Ltmp966:
	.short	.Ltmp968-.Ltmp967
.Ltmp967:
	.short	4414
	.long	4119
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp968:
	.cv_def_range	 .Ltmp332 .Ltmp338, frame_ptr_rel, 48
	.short	.Ltmp970-.Ltmp969
.Ltmp969:
	.short	4414
	.long	4153
	.short	0
	.asciz	"list"
	.p2align	2
.Ltmp970:
	.cv_def_range	 .Ltmp332 .Ltmp332, reg, 337
	.cv_def_range	 .Ltmp332 .Lfunc_end13, frame_ptr_rel, 80
	.short	.Ltmp972-.Ltmp971
.Ltmp971:
	.short	4414
	.long	1539
	.short	0
	.asciz	"stdout"
	.p2align	2
.Ltmp972:
	.cv_def_range	 .Ltmp334 .Ltmp337, reg, 328
	.short	.Ltmp974-.Ltmp973
.Ltmp973:
	.short	4429
	.long	0
	.long	0
	.long	4129
	.cv_inline_linetable	54 5 46 .Lfunc_begin13 .Lfunc_end13
	.p2align	2
.Ltmp974:
	.short	2
	.short	4430
	.short	.Ltmp976-.Ltmp975
.Ltmp975:
	.short	4429
	.long	0
	.long	0
	.long	4132
	.cv_inline_linetable	55 5 38 .Lfunc_begin13 .Lfunc_end13
	.p2align	2
.Ltmp976:
	.short	.Ltmp978-.Ltmp977
.Ltmp977:
	.short	4414
	.long	1539
	.short	1
	.asciz	"file"
	.p2align	2
.Ltmp978:
	.cv_def_range	 .Ltmp334 .Ltmp337, reg, 328
	.short	.Ltmp980-.Ltmp979
.Ltmp979:
	.short	4414
	.long	1539
	.short	1
	.asciz	"data"
	.p2align	2
.Ltmp980:
	.cv_def_range	 .Ltmp335 .Ltmp337, reg, 331
	.short	.Ltmp982-.Ltmp981
.Ltmp981:
	.short	4414
	.long	0
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp982:
	.cv_def_range	 .Ltmp335 .Ltmp337, reg, 360
	.short	.Ltmp984-.Ltmp983
.Ltmp983:
	.short	4414
	.long	0
	.short	0
	.asciz	"written"
	.p2align	2
.Ltmp984:
	.cv_def_range	 .Ltmp336 .Ltmp337, frame_ptr_rel, 40
	.short	.Ltmp986-.Ltmp985
.Ltmp985:
	.short	4414
	.long	48
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp986:
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp960:
	.p2align	2
	.cv_linetable	53, "print!@string!@-", .Lfunc_end13
	.long	241
	.long	.Ltmp988-.Ltmp987
.Ltmp987:
	.short	.Ltmp990-.Ltmp989
.Ltmp989:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end14-copy
	.long	0
	.long	0
	.long	4101
	.secrel32	copy
	.secidx	copy
	.byte	0
	.asciz	"copy"
	.p2align	2
.Ltmp990:
	.short	.Ltmp992-.Ltmp991
.Ltmp991:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp992:
	.short	.Ltmp994-.Ltmp993
.Ltmp993:
	.short	4414
	.long	1539
	.short	257
	.asciz	"dst"
	.p2align	2
.Ltmp994:
	.short	.Ltmp996-.Ltmp995
.Ltmp995:
	.short	4414
	.long	1539
	.short	257
	.asciz	"src"
	.p2align	2
.Ltmp996:
	.short	.Ltmp998-.Ltmp997
.Ltmp997:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp998:
	.short	.Ltmp1000-.Ltmp999
.Ltmp999:
	.short	4414
	.long	1568
	.short	256
	.asciz	"a0"
	.p2align	2
.Ltmp1000:
	.short	.Ltmp1002-.Ltmp1001
.Ltmp1001:
	.short	4414
	.long	1568
	.short	256
	.asciz	"a1"
	.p2align	2
.Ltmp1002:
	.short	.Ltmp1004-.Ltmp1003
.Ltmp1003:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp1004:
	.cv_def_range	 .Ltmp344 .Ltmp346, reg, 338
	.short	2
	.short	4431
.Ltmp988:
	.p2align	2
	.cv_linetable	56, copy, .Lfunc_end14
	.long	241
	.long	.Ltmp1006-.Ltmp1005
.Ltmp1005:
	.short	.Ltmp1008-.Ltmp1007
.Ltmp1007:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end15-len
	.long	0
	.long	0
	.long	4104
	.secrel32	len
	.secidx	len
	.byte	0
	.asciz	"len"
	.p2align	2
.Ltmp1008:
	.short	.Ltmp1010-.Ltmp1009
.Ltmp1009:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp1010:
	.short	.Ltmp1012-.Ltmp1011
.Ltmp1011:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp1012:
	.cv_def_range	 .Lfunc_begin15 .Ltmp348, reg, 331
	.short	.Ltmp1014-.Ltmp1013
.Ltmp1013:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp1014:
	.short	2
	.short	4431
.Ltmp1006:
	.p2align	2
	.cv_linetable	57, len, .Lfunc_end15
	.long	241
	.long	.Ltmp1016-.Ltmp1015
.Ltmp1015:
	.short	.Ltmp1018-.Ltmp1017
.Ltmp1017:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end16-open_file
	.long	0
	.long	0
	.long	4199
	.secrel32	open_file
	.secidx	open_file
	.byte	0
	.asciz	"open_file"
	.p2align	2
.Ltmp1018:
	.short	.Ltmp1020-.Ltmp1019
.Ltmp1019:
	.short	4114
	.long	56
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp1020:
	.short	.Ltmp1022-.Ltmp1021
.Ltmp1021:
	.short	4414
	.long	1568
	.short	1
	.asciz	"f_name"
	.p2align	2
.Ltmp1022:
	.cv_def_range	 .Lfunc_begin16 .Ltmp352, reg, 331
	.short	.Ltmp1024-.Ltmp1023
.Ltmp1023:
	.short	4414
	.long	19
	.short	1
	.asciz	"access"
	.p2align	2
.Ltmp1024:
	.cv_def_range	 .Lfunc_begin16 .Ltmp352, reg, 336
	.short	.Ltmp1026-.Ltmp1025
.Ltmp1025:
	.short	4414
	.long	19
	.short	0
	.asciz	"win_access"
	.p2align	2
.Ltmp1026:
	.cv_def_range	 .Ltmp354 .Ltmp355, reg, 360
	.cv_def_range	 .Ltmp355 .Ltmp356, reg, 19
	.short	.Ltmp1028-.Ltmp1027
.Ltmp1027:
	.short	4414
	.long	1539
	.short	0
	.asciz	"file"
	.p2align	2
.Ltmp1028:
	.cv_def_range	 .Ltmp356 .Ltmp356, reg, 328
	.short	2
	.short	4431
.Ltmp1016:
	.p2align	2
	.cv_linetable	58, open_file, .Lfunc_end16
	.long	241
	.long	.Ltmp1030-.Ltmp1029
.Ltmp1029:
	.short	.Ltmp1032-.Ltmp1031
.Ltmp1031:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end17-write_file
	.long	0
	.long	0
	.long	4132
	.secrel32	write_file
	.secidx	write_file
	.byte	0
	.asciz	"write_file"
	.p2align	2
.Ltmp1032:
	.short	.Ltmp1034-.Ltmp1033
.Ltmp1033:
	.short	4114
	.long	64
	.long	0
	.long	0
	.long	8
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp1034:
	.short	.Ltmp1036-.Ltmp1035
.Ltmp1035:
	.short	4414
	.long	1539
	.short	1
	.asciz	"file"
	.p2align	2
.Ltmp1036:
	.cv_def_range	 .Lfunc_begin17 .Ltmp361, reg, 331
	.cv_def_range	 .Ltmp361 .Ltmp363, reg, 330
	.short	.Ltmp1038-.Ltmp1037
.Ltmp1037:
	.short	4414
	.long	1539
	.short	1
	.asciz	"data"
	.p2align	2
.Ltmp1038:
	.cv_def_range	 .Lfunc_begin17 .Ltmp362, reg, 336
	.cv_def_range	 .Ltmp362 .Ltmp363, reg, 331
	.short	.Ltmp1040-.Ltmp1039
.Ltmp1039:
	.short	4414
	.long	0
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp1040:
	.cv_def_range	 .Lfunc_begin17 .Ltmp360, reg, 361
	.cv_def_range	 .Ltmp360 .Ltmp365, reg, 23
	.short	.Ltmp1042-.Ltmp1041
.Ltmp1041:
	.short	4414
	.long	0
	.short	0
	.asciz	"written"
	.p2align	2
.Ltmp1042:
	.cv_def_range	 .Ltmp359 .Ltmp363, frame_ptr_rel, 56
	.short	.Ltmp1044-.Ltmp1043
.Ltmp1043:
	.short	4414
	.long	48
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp1044:
	.cv_def_range	 .Ltmp364 .Lfunc_end17, reg, 1
	.short	2
	.short	4431
.Ltmp1030:
	.p2align	2
	.cv_linetable	59, write_file, .Lfunc_end17
	.long	241
	.long	.Ltmp1046-.Ltmp1045
.Ltmp1045:
	.short	.Ltmp1048-.Ltmp1047
.Ltmp1047:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end18-get_stdout
	.long	0
	.long	0
	.long	4129
	.secrel32	get_stdout
	.secidx	get_stdout
	.byte	0
	.asciz	"get_stdout"
	.p2align	2
.Ltmp1048:
	.short	.Ltmp1050-.Ltmp1049
.Ltmp1049:
	.short	4114
	.long	40
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp1050:
	.short	2
	.short	4431
.Ltmp1046:
	.p2align	2
	.cv_linetable	60, get_stdout, .Lfunc_end18
	.long	241
	.long	.Ltmp1052-.Ltmp1051
.Ltmp1051:
	.short	.Ltmp1054-.Ltmp1053
.Ltmp1053:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end19-"overload[]"
	.long	0
	.long	0
	.long	4121
	.secrel32	"overload[]"
	.secidx	"overload[]"
	.byte	0
	.asciz	"overload[]"
	.p2align	2
.Ltmp1054:
	.short	.Ltmp1056-.Ltmp1055
.Ltmp1055:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp1056:
	.short	.Ltmp1058-.Ltmp1057
.Ltmp1057:
	.short	4414
	.long	19
	.short	257
	.asciz	"index"
	.p2align	2
.Ltmp1058:
	.short	.Ltmp1060-.Ltmp1059
.Ltmp1059:
	.short	4414
	.long	4119
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp1060:
	.cv_def_range	 .Lfunc_begin19 .Lfunc_end19, subfield_reg, 330, 0
	.short	2
	.short	4431
.Ltmp1052:
	.p2align	2
	.cv_linetable	61, "overload[]", .Lfunc_end19
	.long	241
	.long	.Ltmp1062-.Ltmp1061
.Ltmp1061:
	.short	.Ltmp1064-.Ltmp1063
.Ltmp1063:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end20-"overload+¥ÔB¶M"
	.long	0
	.long	0
	.long	4202
	.secrel32	"overload+¥ÔB¶M"
	.secidx	"overload+¥ÔB¶M"
	.byte	0
	.asciz	"overload+\264\357B\017\246M"
	.p2align	2
.Ltmp1064:
	.short	.Ltmp1066-.Ltmp1065
.Ltmp1065:
	.short	4114
	.long	40
	.long	0
	.long	0
	.long	48
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp1066:
	.short	.Ltmp1068-.Ltmp1067
.Ltmp1067:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp1068:
	.cv_def_range	 .Lfunc_begin20 .Ltmp371, reg, 336
	.short	.Ltmp1070-.Ltmp1069
.Ltmp1069:
	.short	4414
	.long	4119
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp1070:
	.cv_def_range	 .Ltmp370 .Ltmp388, subfield_reg, 340, 0
	.cv_def_range	 .Ltmp373 .Ltmp389, subfield_reg, 343, 8
	.short	.Ltmp1072-.Ltmp1071
.Ltmp1071:
	.short	4414
	.long	4119
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp1072:
	.cv_def_range	 .Ltmp374 .Ltmp387, subfield_reg, 333, 0
	.cv_def_range	 .Ltmp387 .Lfunc_end20, subfield_reg, 328, 0
	.short	.Ltmp1074-.Ltmp1073
.Ltmp1073:
	.short	4414
	.long	19
	.short	256
	.asciz	"text_len"
	.p2align	2
.Ltmp1074:
	.short	.Ltmp1076-.Ltmp1075
.Ltmp1075:
	.short	4429
	.long	0
	.long	0
	.long	4104
	.cv_inline_linetable	63 4 255 .Lfunc_begin20 .Lfunc_end20
	.p2align	2
.Ltmp1076:
	.short	.Ltmp1078-.Ltmp1077
.Ltmp1077:
	.short	4414
	.long	1568
	.short	257
	.asciz	"text"
	.p2align	2
.Ltmp1078:
	.short	.Ltmp1080-.Ltmp1079
.Ltmp1079:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp1080:
	.short	2
	.short	4430
	.short	.Ltmp1082-.Ltmp1081
.Ltmp1081:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	64 3 12 .Lfunc_begin20 .Lfunc_end20
	.p2align	2
.Ltmp1082:
	.short	.Ltmp1084-.Ltmp1083
.Ltmp1083:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp1084:
	.short	.Ltmp1086-.Ltmp1085
.Ltmp1085:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp1086:
	.cv_def_range	 .Ltmp374 .Ltmp374, reg, 333
	.short	2
	.short	4430
	.short	.Ltmp1088-.Ltmp1087
.Ltmp1087:
	.short	4429
	.long	0
	.long	0
	.long	4101
	.cv_inline_linetable	65 4 245 .Lfunc_begin20 .Lfunc_end20
	.p2align	2
.Ltmp1088:
	.short	.Ltmp1090-.Ltmp1089
.Ltmp1089:
	.short	4414
	.long	1539
	.short	257
	.asciz	"dst"
	.p2align	2
.Ltmp1090:
	.short	.Ltmp1092-.Ltmp1091
.Ltmp1091:
	.short	4414
	.long	1539
	.short	1
	.asciz	"src"
	.p2align	2
.Ltmp1092:
	.cv_def_range	 .Ltmp375 .Ltmp383, reg, 340
	.short	.Ltmp1094-.Ltmp1093
.Ltmp1093:
	.short	4414
	.long	117
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp1094:
	.cv_def_range	 .Ltmp375 .Ltmp383, reg, 343
	.short	.Ltmp1096-.Ltmp1095
.Ltmp1095:
	.short	4414
	.long	1568
	.short	256
	.asciz	"a0"
	.p2align	2
.Ltmp1096:
	.short	.Ltmp1098-.Ltmp1097
.Ltmp1097:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a1"
	.p2align	2
.Ltmp1098:
	.cv_def_range	 .Ltmp375 .Ltmp383, reg, 340
	.short	.Ltmp1100-.Ltmp1099
.Ltmp1099:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp1100:
	.cv_def_range	 .Ltmp381 .Ltmp383, reg, 328
	.short	2
	.short	4430
	.short	.Ltmp1102-.Ltmp1101
.Ltmp1101:
	.short	4429
	.long	0
	.long	0
	.long	4101
	.cv_inline_linetable	66 4 245 .Lfunc_begin20 .Lfunc_end20
	.p2align	2
.Ltmp1102:
	.short	.Ltmp1104-.Ltmp1103
.Ltmp1103:
	.short	4414
	.long	1539
	.short	1
	.asciz	"dst"
	.p2align	2
.Ltmp1104:
	.cv_def_range	 .Ltmp385 .Ltmp386, reg, 330
	.short	.Ltmp1106-.Ltmp1105
.Ltmp1105:
	.short	4414
	.long	1539
	.short	1
	.asciz	"src"
	.p2align	2
.Ltmp1106:
	.cv_def_range	 .Ltmp383 .Ltmp386, reg, 332
	.short	.Ltmp1108-.Ltmp1107
.Ltmp1107:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp1108:
	.short	.Ltmp1110-.Ltmp1109
.Ltmp1109:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a0"
	.p2align	2
.Ltmp1110:
	.cv_def_range	 .Ltmp385 .Ltmp386, reg, 330
	.short	.Ltmp1112-.Ltmp1111
.Ltmp1111:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a1"
	.p2align	2
.Ltmp1112:
	.cv_def_range	 .Ltmp383 .Ltmp386, reg, 332
	.short	.Ltmp1114-.Ltmp1113
.Ltmp1113:
	.short	4414
	.long	19
	.short	256
	.asciz	"i"
	.p2align	2
.Ltmp1114:
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp1062:
	.p2align	2
	.cv_linetable	62, "overload+¥ÔB¶M", .Lfunc_end20
	.long	241
	.long	.Ltmp1116-.Ltmp1115
.Ltmp1115:
	.short	.Ltmp1118-.Ltmp1117
.Ltmp1117:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end21-"overload[x]="
	.long	0
	.long	0
	.long	4205
	.secrel32	"overload[x]="
	.secidx	"overload[x]="
	.byte	0
	.asciz	"overload[x]="
	.p2align	2
.Ltmp1118:
	.short	.Ltmp1120-.Ltmp1119
.Ltmp1119:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	56
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp1120:
	.short	.Ltmp1122-.Ltmp1121
.Ltmp1121:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp1122:
	.cv_def_range	 .Lfunc_begin21 .Ltmp392, reg, 331
	.short	.Ltmp1124-.Ltmp1123
.Ltmp1123:
	.short	4414
	.long	4106
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp1124:
	.cv_def_range	 .Ltmp391 .Ltmp392, reg, 330
	.short	.Ltmp1126-.Ltmp1125
.Ltmp1125:
	.short	4414
	.long	19
	.short	0
	.asciz	"text_len"
	.p2align	2
.Ltmp1126:
	.cv_def_range	 .Ltmp397 .Ltmp401 .Ltmp403 .Ltmp413, reg, 339
	.short	.Ltmp1128-.Ltmp1127
.Ltmp1127:
	.short	4414
	.long	19
	.short	256
	.asciz	"times"
	.p2align	2
.Ltmp1128:
	.short	.Ltmp1130-.Ltmp1129
.Ltmp1129:
	.short	4414
	.long	4106
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp1130:
	.cv_def_range	 .Ltmp395 .Lfunc_end21, reg, 330
	.short	.Ltmp1132-.Ltmp1131
.Ltmp1131:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp1132:
	.cv_def_range	 .Ltmp397 .Ltmp400 .Ltmp403 .Ltmp413, reg, 337
	.cv_def_range	 .Ltmp400 .Ltmp401, reg, 328
	.short	.Ltmp1134-.Ltmp1133
.Ltmp1133:
	.short	4414
	.long	19
	.short	0
	.asciz	"copy_size"
	.p2align	2
.Ltmp1134:
	.cv_def_range	 .Ltmp397 .Ltmp398 .Ltmp403 .Ltmp413, reg, 339
	.cv_def_range	 .Ltmp402 .Ltmp403, reg, 332
	.short	.Ltmp1136-.Ltmp1135
.Ltmp1135:
	.short	4429
	.long	0
	.long	0
	.long	4104
	.cv_inline_linetable	68 4 255 .Lfunc_begin21 .Lfunc_end21
	.p2align	2
.Ltmp1136:
	.short	.Ltmp1138-.Ltmp1137
.Ltmp1137:
	.short	4414
	.long	1568
	.short	257
	.asciz	"text"
	.p2align	2
.Ltmp1138:
	.short	.Ltmp1140-.Ltmp1139
.Ltmp1139:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp1140:
	.short	2
	.short	4430
	.short	.Ltmp1142-.Ltmp1141
.Ltmp1141:
	.short	4429
	.long	0
	.long	0
	.long	4101
	.cv_inline_linetable	69 4 245 .Lfunc_begin21 .Lfunc_end21
	.p2align	2
.Ltmp1142:
	.short	.Ltmp1144-.Ltmp1143
.Ltmp1143:
	.short	4414
	.long	1539
	.short	257
	.asciz	"dst"
	.p2align	2
.Ltmp1144:
	.short	.Ltmp1146-.Ltmp1145
.Ltmp1145:
	.short	4414
	.long	1539
	.short	257
	.asciz	"src"
	.p2align	2
.Ltmp1146:
	.short	.Ltmp1148-.Ltmp1147
.Ltmp1147:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp1148:
	.short	.Ltmp1150-.Ltmp1149
.Ltmp1149:
	.short	4414
	.long	1568
	.short	256
	.asciz	"a1"
	.p2align	2
.Ltmp1150:
	.short	.Ltmp1152-.Ltmp1151
.Ltmp1151:
	.short	4414
	.long	1568
	.short	256
	.asciz	"a0"
	.p2align	2
.Ltmp1152:
	.short	.Ltmp1154-.Ltmp1153
.Ltmp1153:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp1154:
	.cv_def_range	 .Ltmp411 .Ltmp413, reg, 329
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp1116:
	.p2align	2
	.cv_linetable	67, "overload[x]=", .Lfunc_end21
	.long	241
	.long	.Ltmp1156-.Ltmp1155
.Ltmp1155:
	.short	.Ltmp1158-.Ltmp1157
.Ltmp1157:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end22-"overload[x]=.9"
	.long	0
	.long	0
	.long	4114
	.secrel32	"overload[x]=.9"
	.secidx	"overload[x]=.9"
	.byte	0
	.asciz	"overload[x]="
	.p2align	2
.Ltmp1158:
	.short	.Ltmp1160-.Ltmp1159
.Ltmp1159:
	.short	4114
	.long	32
	.long	0
	.long	0
	.long	24
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp1160:
	.short	.Ltmp1162-.Ltmp1161
.Ltmp1161:
	.short	4414
	.long	32
	.short	1
	.asciz	"c"
	.p2align	2
.Ltmp1162:
	.cv_def_range	 .Lfunc_begin22 .Ltmp416, reg, 3
	.short	.Ltmp1164-.Ltmp1163
.Ltmp1163:
	.short	4414
	.long	4106
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp1164:
	.cv_def_range	 .Ltmp415 .Ltmp416, reg, 330
	.short	.Ltmp1166-.Ltmp1165
.Ltmp1165:
	.short	4414
	.long	4106
	.short	0
	.asciz	"to_put"
	.p2align	2
.Ltmp1166:
	.cv_def_range	 .Ltmp415 .Ltmp416, reg, 330
	.cv_def_range	 .Ltmp419 .Ltmp427, reg, 332
	.short	.Ltmp1168-.Ltmp1167
.Ltmp1167:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	71 3 12 .Lfunc_begin22 .Lfunc_end22
	.p2align	2
.Ltmp1168:
	.short	.Ltmp1170-.Ltmp1169
.Ltmp1169:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp1170:
	.short	.Ltmp1172-.Ltmp1171
.Ltmp1171:
	.short	4414
	.long	1539
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp1172:
	.cv_def_range	 .Ltmp425 .Ltmp425, reg, 328
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp1156:
	.p2align	2
	.cv_linetable	70, "overload[x]=.9", .Lfunc_end22
	.long	241
	.long	.Ltmp1174-.Ltmp1173
.Ltmp1173:
	.short	.Ltmp1176-.Ltmp1175
.Ltmp1175:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end23-overload
	.long	0
	.long	0
	.long	4207
	.secrel32	overload
	.secidx	overload
	.byte	0
	.asciz	"overload"
	.p2align	2
.Ltmp1176:
	.short	.Ltmp1178-.Ltmp1177
.Ltmp1177:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp1178:
	.short	.Ltmp1180-.Ltmp1179
.Ltmp1179:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp1180:
	.cv_def_range	 .Lfunc_begin23 .Ltmp429, reg, 336
	.short	.Ltmp1182-.Ltmp1181
.Ltmp1181:
	.short	4414
	.long	4119
	.short	0
	.asciz	"str2"
	.p2align	2
.Ltmp1182:
	.cv_def_range	 .Lfunc_begin23 .Ltmp429, subfield_reg, 336, 0
	.short	.Ltmp1184-.Ltmp1183
.Ltmp1183:
	.short	4414
	.long	4119
	.short	256
	.asciz	"str"
	.p2align	2
.Ltmp1184:
	.short	.Ltmp1186-.Ltmp1185
.Ltmp1185:
	.short	4429
	.long	0
	.long	0
	.long	4104
	.cv_inline_linetable	73 4 255 .Lfunc_begin23 .Lfunc_end23
	.p2align	2
.Ltmp1186:
	.short	.Ltmp1188-.Ltmp1187
.Ltmp1187:
	.short	4414
	.long	1568
	.short	257
	.asciz	"text"
	.p2align	2
.Ltmp1188:
	.short	.Ltmp1190-.Ltmp1189
.Ltmp1189:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp1190:
	.short	2
	.short	4430
	.short	.Ltmp1192-.Ltmp1191
.Ltmp1191:
	.short	4429
	.long	0
	.long	0
	.long	4135
	.cv_inline_linetable	74 4 111 .Lfunc_begin23 .Lfunc_end23
	.p2align	2
.Ltmp1192:
	.short	.Ltmp1194-.Ltmp1193
.Ltmp1193:
	.short	4414
	.long	4119
	.short	1
	.asciz	"str1"
	.p2align	2
.Ltmp1194:
	.cv_def_range	 .Ltmp431 .Ltmp438, subfield_reg, 330, 0
	.cv_def_range	 .Ltmp431 .Ltmp438, subfield_reg, 331, 8
	.short	.Ltmp1196-.Ltmp1195
.Ltmp1195:
	.short	4414
	.long	4119
	.short	1
	.asciz	"str2"
	.p2align	2
.Ltmp1196:
	.cv_def_range	 .Ltmp431 .Ltmp438, subfield_reg, 336, 0
	.short	.Ltmp1198-.Ltmp1197
.Ltmp1197:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp1198:
	.cv_def_range	 .Ltmp434 .Ltmp435 .Ltmp437 .Ltmp437, reg, 337
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp1174:
	.p2align	2
	.cv_linetable	72, overload, .Lfunc_end23
	.long	241
	.long	.Ltmp1200-.Ltmp1199
.Ltmp1199:
	.short	.Ltmp1202-.Ltmp1201
.Ltmp1201:
	.short	4364
	.long	48
	.secrel32	global_var
	.secidx	global_var
	.asciz	"true"
	.p2align	2
.Ltmp1202:
	.short	.Ltmp1204-.Ltmp1203
.Ltmp1203:
	.short	4364
	.long	48
	.secrel32	global_var.1
	.secidx	global_var.1
	.asciz	"false"
	.p2align	2
.Ltmp1204:
	.short	.Ltmp1206-.Ltmp1205
.Ltmp1205:
	.short	4364
	.long	1539
	.secrel32	global_var.2
	.secidx	global_var.2
	.asciz	"null"
	.p2align	2
.Ltmp1206:
	.short	.Ltmp1208-.Ltmp1207
.Ltmp1207:
	.short	4364
	.long	19
	.secrel32	global_var.3
	.secidx	global_var.3
	.asciz	"STRING_BUFFER_SIZE"
	.p2align	2
.Ltmp1208:
	.short	.Ltmp1210-.Ltmp1209
.Ltmp1209:
	.short	4364
	.long	19
	.secrel32	global_var.4
	.secidx	global_var.4
	.asciz	"DELETE"
	.p2align	2
.Ltmp1210:
	.short	.Ltmp1212-.Ltmp1211
.Ltmp1211:
	.short	4364
	.long	19
	.secrel32	global_var.5
	.secidx	global_var.5
	.asciz	"READ_CONTROL"
	.p2align	2
.Ltmp1212:
	.short	.Ltmp1214-.Ltmp1213
.Ltmp1213:
	.short	4364
	.long	19
	.secrel32	global_var.6
	.secidx	global_var.6
	.asciz	"WRITE_DAC"
	.p2align	2
.Ltmp1214:
	.short	.Ltmp1216-.Ltmp1215
.Ltmp1215:
	.short	4364
	.long	19
	.secrel32	global_var.7
	.secidx	global_var.7
	.asciz	"WRITE_OWNER"
	.p2align	2
.Ltmp1216:
	.short	.Ltmp1218-.Ltmp1217
.Ltmp1217:
	.short	4364
	.long	19
	.secrel32	global_var.8
	.secidx	global_var.8
	.asciz	"SYNCHRONIZE"
	.p2align	2
.Ltmp1218:
.Ltmp1200:
	.p2align	2
	.long	241
	.long	.Ltmp1220-.Ltmp1219
.Ltmp1219:
	.short	.Ltmp1222-.Ltmp1221
.Ltmp1221:
	.short	4360
	.long	4111
	.asciz	"String_Builder"
	.p2align	2
.Ltmp1222:
	.short	.Ltmp1224-.Ltmp1223
.Ltmp1223:
	.short	4360
	.long	4119
	.asciz	"string"
	.p2align	2
.Ltmp1224:
	.short	.Ltmp1226-.Ltmp1225
.Ltmp1225:
	.short	4360
	.long	4159
	.asciz	"Any"
	.p2align	2
.Ltmp1226:
	.short	.Ltmp1228-.Ltmp1227
.Ltmp1227:
	.short	4360
	.long	4169
	.asciz	"Type_Info"
	.p2align	2
.Ltmp1228:
	.short	.Ltmp1230-.Ltmp1229
.Ltmp1229:
	.short	4360
	.long	4172
	.asciz	"Type_Primitive"
	.p2align	2
.Ltmp1230:
	.short	.Ltmp1232-.Ltmp1231
.Ltmp1231:
	.short	4360
	.long	4176
	.asciz	"Type_Struct"
	.p2align	2
.Ltmp1232:
	.short	.Ltmp1234-.Ltmp1233
.Ltmp1233:
	.short	4360
	.long	4179
	.asciz	"Type_Array"
	.p2align	2
.Ltmp1234:
	.short	.Ltmp1236-.Ltmp1235
.Ltmp1235:
	.short	4360
	.long	4182
	.asciz	"Type_Pointer"
	.p2align	2
.Ltmp1236:
	.short	.Ltmp1238-.Ltmp1237
.Ltmp1237:
	.short	4360
	.long	4185
	.asciz	"Type_Enum"
	.p2align	2
.Ltmp1238:
	.short	.Ltmp1240-.Ltmp1239
.Ltmp1239:
	.short	4360
	.long	4188
	.asciz	"Type_Func"
	.p2align	2
.Ltmp1240:
	.short	.Ltmp1242-.Ltmp1241
.Ltmp1241:
	.short	4360
	.long	4169
	.asciz	"Type_Info"
	.p2align	2
.Ltmp1242:
	.short	.Ltmp1244-.Ltmp1243
.Ltmp1243:
	.short	4360
	.long	4169
	.asciz	"Type_Info"
	.p2align	2
.Ltmp1244:
	.short	.Ltmp1246-.Ltmp1245
.Ltmp1245:
	.short	4360
	.long	4169
	.asciz	"Type_Info"
	.p2align	2
.Ltmp1246:
	.short	.Ltmp1248-.Ltmp1247
.Ltmp1247:
	.short	4360
	.long	4169
	.asciz	"Type_Info"
	.p2align	2
.Ltmp1248:
.Ltmp1220:
	.p2align	2
	.cv_filechecksums
	.cv_stringtable
	.long	241
	.long	.Ltmp1250-.Ltmp1249
.Ltmp1249:
	.short	.Ltmp1252-.Ltmp1251
.Ltmp1251:
	.short	4428
	.long	4211
	.p2align	2
.Ltmp1252:
.Ltmp1250:
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
	.long	0x1003
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1004
	.asciz	"copy"
	.byte	243
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x13
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1006
	.short	0xe
	.short	0x1601
	.long	0x0
	.long	0x1007
	.asciz	"len"
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
	.long	0x1009
	.long	0x1000c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x100a
	.long	0x20
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x100b
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
	.long	0x100d
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
	.long	0x100a
	.short	0x108
	.asciz	"next"
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x3
	.short	0x0
	.long	0x100e
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
	.long	0x100f
	.long	0x1010
	.long	0xa
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x100c
	.asciz	"overload[x]="
	.byte	243
	.byte	242
	.byte	241
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
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1013
	.long	0x13
	.short	0xe
	.short	0x1008
	.long	0x20
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1014
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
	.long	0x1016
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"string"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1017
	.long	0x1010
	.long	0x4
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1015
	.asciz	"overload[]"
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
	.long	0x101a
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x101b
	.asciz	"builder_to_string"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1006
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x101d
	.asciz	"to_string"
	.byte	242
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
	.long	0x101f
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1020
	.asciz	"get_stdout"
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
	.long	0x1022
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1023
	.asciz	"write_file"
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1013
	.long	0x1013
	.short	0xe
	.short	0x1008
	.long	0x30
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1025
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1026
	.asciz	"compare"
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x101f
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1028
	.asciz	"give_num"
	.byte	243
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1028
	.asciz	"main"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x101d
	.asciz	"init_builder"
	.byte	243
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1013
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x102c
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x102d
	.asciz	"terminate_string"
	.byte	243
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x75
	.long	0x13
	.long	0x100a
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x102f
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x1030
	.asciz	"build_unsigned_int"
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x13
	.long	0x100a
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1032
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1033
	.asciz	"int_to_str"
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x41
	.long	0x100a
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1035
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1036
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
	.long	0x1038
	.long	0x1000c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1013
	.long	0x1039
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x103a
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
	.long	0x103c
	.long	0x1000c
	.short	0x22
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x103d
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
	.long	0x103e
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
	.long	0x103f
	.long	0x1040
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
	.long	0x1042
	.short	0x0
	.asciz	"primitive"
	.short	0x150d
	.short	0x3
	.long	0x1043
	.short	0x0
	.asciz	"structure"
	.short	0x150d
	.short	0x3
	.long	0x1044
	.short	0x0
	.asciz	"array"
	.short	0x150d
	.short	0x3
	.long	0x1045
	.short	0x0
	.asciz	"pointer"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1046
	.short	0x0
	.asciz	"enumerator"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1047
	.short	0x0
	.asciz	"function"
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x1048
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"Type_Info"
	.short	0xe
	.short	0x1606
	.long	0x1049
	.long	0x1040
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
	.long	0x104b
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"Type_Primitive"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x104c
	.long	0x1040
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
	.long	0x104e
	.short	0x18
	.asciz	"member_names"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x103d
	.short	0x20
	.asciz	"member_types"
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x104f
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"Type_Struct"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1050
	.long	0x1040
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
	.long	0x103d
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
	.long	0x1052
	.long	0x0
	.long	0x0
	.short	0x18
	.asciz	"Type_Array"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1053
	.long	0x1040
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
	.long	0x103d
	.short	0x8
	.asciz	"pointed"
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x1055
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"Type_Pointer"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1056
	.long	0x1040
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
	.long	0x1042
	.short	0x4
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x104e
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
	.long	0x1058
	.long	0x0
	.long	0x0
	.short	0x20
	.asciz	"Type_Enum"
	.short	0xe
	.short	0x1606
	.long	0x1059
	.long	0x1040
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
	.long	0x103d
	.short	0x8
	.asciz	"param_types"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x103d
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
	.long	0x105b
	.long	0x0
	.long	0x0
	.short	0x20
	.asciz	"Type_Func"
	.short	0xe
	.short	0x1606
	.long	0x105c
	.long	0x1040
	.long	0x63
	.short	0xe
	.short	0x1606
	.long	0x1049
	.long	0x1040
	.long	0x4e
	.short	0xe
	.short	0x1606
	.long	0x1049
	.long	0x1040
	.long	0x53
	.short	0xe
	.short	0x1606
	.long	0x1049
	.long	0x1040
	.long	0x59
	.short	0xe
	.short	0x1606
	.long	0x1049
	.long	0x1040
	.long	0x65
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x103b
	.asciz	"parse_format"
	.byte	243
	.byte	242
	.byte	241
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x101d
	.asciz	"print!@* u8!@-"
	.byte	241
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x102d
	.asciz	"print!@string!@-"
	.byte	243
	.byte	242
	.byte	241
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
	.long	0x1065
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1066
	.asciz	"open_file"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1013
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x1013
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1068
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1069
	.asciz	"overload+\264\357B\017\246M"
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x100a
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x3
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x106b
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x106c
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
	.long	0x1068
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x106e
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
	.short	0x16
	.short	0x1605
	.long	0x0
	.asciz	"quick_test.apoc"
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
	.long	0x1070
	.long	0x0
	.long	0x1071
	.long	0x1072
	.long	0x0
	.byte	242
	.byte	241
	.globl	_fltused
