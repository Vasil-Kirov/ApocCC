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
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "W:\\Apocalypse\\Test.apoc"
	.cv_loc	0 1 5 0
	pushq	%rbp
.Ltmp0:
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$344, %rsp
	leaq	128(%rsp), %rbp
	andq	$-32, %rsp
.Ltmp1:
	.cv_file	2 "W:\\Apocalypse\\Standard\\String.apoc"
	.cv_inline_site_id 1 within 0 inlined_at 1 7 2
	.cv_loc	1 2 42 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 272(%rsp)
	vmovaps	%ymm0, 256(%rsp)
	vmovaps	%ymm0, 224(%rsp)
	vmovaps	%ymm0, 192(%rsp)
	vmovaps	%ymm0, 160(%rsp)
	vmovaps	%ymm0, 128(%rsp)
	vmovaps	%ymm0, 96(%rsp)
	vmovaps	%ymm0, 64(%rsp)
	vmovaps	%ymm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movb	$109, %al
	xorl	%esi, %esi
.Ltmp2:
	leaq	.L__unnamed_1(%rip), %rbx
	xorl	%ecx, %ecx
	jmp	.LBB0_1
.Ltmp3:
	.p2align	4, 0x90
.LBB0_2:
	.cv_loc	1 2 45 2
	movq	%rsi, %rax
	shlq	$8, %rax
	addq	%rcx, %rax
	incq	%rax
.Ltmp4:
	.cv_loc	1 2 53 3
	incq	%rcx
.Ltmp5:
	.cv_loc	1 2 45 2
	movzbl	(%rbx,%rax), %eax
	testb	%al, %al
	je	.LBB0_3
.Ltmp6:
.LBB0_1:
	.cv_loc	1 2 46 3
	movb	%al, (%rdi,%rcx)
.Ltmp7:
	.cv_loc	1 2 47 3
	incq	256(%rdi)
.Ltmp8:
	.cv_loc	1 2 48 3
	cmpq	$256, %rcx
	.cv_loc	1 2 53 3
	jne	.LBB0_2
.Ltmp9:
	.cv_loc	1 2 50 4
	incq	%rsi
.Ltmp10:
	.cv_file	3 "W:\\Apocalypse\\Standard\\Basic.apoc"
	.cv_inline_site_id 2 within 1 inlined_at 2 51 4
	.cv_loc	2 3 68 2
	movl	$1, %ecx
	movl	$272, %edx
	vzeroupper
	callq	calloc
.Ltmp11:
	.cv_loc	1 2 51 4
	movq	%rax, 264(%rdi)
.Ltmp12:
	xorl	%ecx, %ecx
	movq	%rax, %rdi
.Ltmp13:
	jmp	.LBB0_2
.Ltmp14:
.LBB0_3:
	.cv_inline_site_id 3 within 0 inlined_at 1 10 7
	.cv_loc	3 2 125 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 32(%rsp)
.Ltmp15:
	leaq	32(%rsp), %rcx
	.cv_loc	3 2 126 8
	vzeroupper
	callq	printf
.Ltmp16:
	.cv_loc	0 1 11 5
	xorl	%eax, %eax
	leaq	216(%rbp), %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	retq
.Ltmp17:
.Lfunc_end0:

	.def	mem_alloc;
	.scl	2;
	.type	32;
	.endef
	.globl	mem_alloc
	.p2align	4, 0x90
mem_alloc:
.Lfunc_begin1:
	.cv_func_id 4
	.cv_loc	4 3 67 0
	subq	$40, %rsp
.Ltmp18:
	.cv_loc	4 3 68 2
	movl	$1, %ecx
	callq	calloc
.Ltmp19:
	.cv_loc	4 3 70 5
	addq	$40, %rsp
	retq
.Ltmp20:
.Lfunc_end1:

	.def	builder_to_string;
	.scl	2;
	.type	32;
	.endef
	.globl	builder_to_string
	.p2align	4, 0x90
builder_to_string:
.Lfunc_begin2:
	.cv_func_id 5
	.cv_loc	5 2 18 0
	.cv_loc	5 2 22 2
	movq	2072(%rsp), %rax
.Ltmp21:
	testq	%rax, %rax
	je	.LBB2_3
.Ltmp22:
	.p2align	4, 0x90
.LBB2_1:
	movq	264(%rax), %rax
.Ltmp23:
	testq	%rax, %rax
	jne	.LBB2_1
.Ltmp24:
.LBB2_3:
	.cv_loc	5 2 37 5
	retq
.Ltmp25:
.Lfunc_end2:

	.def	init_builder;
	.scl	2;
	.type	32;
	.endef
	.globl	init_builder
	.p2align	4, 0x90
init_builder:
.Lfunc_begin3:
	.cv_func_id 6
	.cv_loc	6 2 41 0
	pushq	%rbp
.Ltmp26:
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	subq	$312, %rsp
	leaq	128(%rsp), %rbp
	andq	$-32, %rsp
.Ltmp27:
	.cv_loc	6 2 42 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 272(%rsp)
	vmovaps	%ymm0, 256(%rsp)
	vmovaps	%ymm0, 224(%rsp)
	vmovaps	%ymm0, 192(%rsp)
	vmovaps	%ymm0, 160(%rsp)
	vmovaps	%ymm0, 128(%rsp)
	vmovaps	%ymm0, 96(%rsp)
	vmovaps	%ymm0, 64(%rsp)
	vmovaps	%ymm0, 32(%rsp)
.Ltmp28:
	.cv_loc	6 2 45 2
	movb	(%rdx), %al
	testb	%al, %al
	je	.LBB3_4
.Ltmp29:
	movq	%rdx, %rsi
	leaq	32(%rsp), %rbx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	jmp	.LBB3_2
.Ltmp30:
	.p2align	4, 0x90
.LBB3_3:
	movq	%rdi, %rax
	shlq	$8, %rax
	addq	%rcx, %rax
	incq	%rax
.Ltmp31:
	.cv_loc	6 2 53 3
	incq	%rcx
.Ltmp32:
	.cv_loc	6 2 45 2
	movzbl	(%rsi,%rax), %eax
	testb	%al, %al
	je	.LBB3_4
.Ltmp33:
.LBB3_2:
	.cv_loc	6 2 46 3
	movb	%al, (%rbx,%rcx)
.Ltmp34:
	.cv_loc	6 2 47 3
	incq	256(%rbx)
.Ltmp35:
	.cv_loc	6 2 48 3
	cmpq	$256, %rcx
	.cv_loc	6 2 53 3
	jne	.LBB3_3
.Ltmp36:
	.cv_loc	6 2 50 4
	incq	%rdi
.Ltmp37:
	.cv_inline_site_id 7 within 6 inlined_at 2 51 4
	.cv_loc	7 3 68 2
	movl	$1, %ecx
	movl	$272, %edx
	vzeroupper
	callq	calloc
.Ltmp38:
	.cv_loc	6 2 51 4
	movq	%rax, 264(%rbx)
.Ltmp39:
	xorl	%ecx, %ecx
	movq	%rax, %rbx
.Ltmp40:
	jmp	.LBB3_3
.Ltmp41:
.LBB3_4:
	.cv_loc	6 2 55 5
	leaq	184(%rbp), %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%rbp
	vzeroupper
	retq
.Ltmp42:
.Lfunc_end3:

	.def	compare;
	.scl	2;
	.type	32;
	.endef
	.globl	compare
	.p2align	4, 0x90
compare:
.Lfunc_begin4:
	.cv_func_id 8
	.cv_loc	8 2 95 0
	.cv_loc	8 2 96 2
	cmpq	40(%rsp), %r8
	.cv_loc	8 2 99 2
	jne	.LBB4_1
.Ltmp43:
	movb	$1, %al
	testq	%r8, %r8
	jle	.LBB4_2
.Ltmp44:
	xorl	%r10d, %r10d
.Ltmp45:
	.p2align	4, 0x90
.LBB4_6:
	.cv_loc	8 2 100 3
	movzbl	(%rdx,%r10), %ecx
	cmpb	(%r9,%r10), %cl
.Ltmp46:
	.cv_loc	8 2 100 38
	jne	.LBB4_1
.Ltmp47:
	incq	%r10
.Ltmp48:
	.cv_loc	8 2 99 2
	cmpq	%r8, %r10
	jl	.LBB4_6
.Ltmp49:
.LBB4_2:
	retq
.Ltmp50:
.LBB4_1:
	xorl	%eax, %eax
	retq
.Ltmp51:
.Lfunc_end4:

	.def	to_string;
	.scl	2;
	.type	32;
	.endef
	.globl	to_string
	.p2align	4, 0x90
to_string:
.Lfunc_begin5:
	.cv_func_id 9
	.p2align	4, 0x90
.LBB5_1:
	.cv_inline_site_id 10 within 9 inlined_at 2 106 2
	.cv_loc	10 2 140 2
	cmpb	$0, (%rdx)
	leaq	1(%rdx), %rdx
	jne	.LBB5_1
.Ltmp52:
	.cv_loc	9 2 110 5
	retq
.Ltmp53:
.Lfunc_end5:

	.def	terminate_string;
	.scl	2;
	.type	32;
	.endef
	.globl	terminate_string
	.p2align	4, 0x90
terminate_string:
.Lfunc_begin6:
	.cv_func_id 11
	.cv_loc	11 2 120 5
	retq
.Ltmp54:
.Lfunc_end6:

	.def	print;
	.scl	2;
	.type	32;
	.endef
	.globl	print
	.p2align	4, 0x90
print:
.Lfunc_begin7:
	.cv_func_id 12
	.cv_loc	12 2 124 0
	subq	$56, %rsp
.Ltmp55:
	.cv_loc	12 2 125 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 32(%rsp)
.Ltmp56:
	leaq	32(%rsp), %rcx
	.cv_loc	12 2 126 8
	callq	printf
	addq	$56, %rsp
	retq
.Ltmp57:
.Lfunc_end7:

	.def	copy;
	.scl	2;
	.type	32;
	.endef
	.globl	copy
	.p2align	4, 0x90
copy:
.Lfunc_begin8:
	.cv_func_id 13
	.cv_loc	13 2 130 0
	.cv_loc	13 2 133 2
	testq	%r9, %r9
	jle	.LBB8_1
.Ltmp58:
	xorl	%r10d, %r10d
	cmpq	$4, %r9
	jb	.LBB8_7
.Ltmp59:
	movq	%rdx, %rcx
	subq	%r8, %rcx
	cmpq	$4, %rcx
	jb	.LBB8_7
.Ltmp60:
	movq	%r9, %r10
	andq	$-4, %r10
	xorl	%ecx, %ecx
.Ltmp61:
	.p2align	4, 0x90
.LBB8_5:
	.cv_loc	13 2 134 3
	movl	(%r8,%rcx), %eax
	movl	%eax, (%rdx,%rcx)
	addq	$4, %rcx
	cmpq	%rcx, %r10
	jne	.LBB8_5
.Ltmp62:
	.cv_loc	13 2 133 2
	cmpq	%r9, %r10
	je	.LBB8_8
.Ltmp63:
	.p2align	4, 0x90
.LBB8_7:
	.cv_loc	13 2 134 3
	movzbl	(%r8,%r10), %eax
	movb	%al, (%rdx,%r10)
.Ltmp64:
	incq	%r10
.Ltmp65:
	.cv_loc	13 2 133 2
	cmpq	%r9, %r10
	jl	.LBB8_7
.Ltmp66:
.LBB8_8:
	.cv_loc	13 2 134 3
	movb	(%r8,%r9), %al
	movb	%al, (%rdx,%r9)
.Ltmp67:
	retq
.Ltmp68:
.LBB8_1:
	xorl	%r9d, %r9d
	movb	(%r8,%r9), %al
	movb	%al, (%rdx,%r9)
.Ltmp69:
	retq
.Ltmp70:
.Lfunc_end8:

	.def	len;
	.scl	2;
	.type	32;
	.endef
	.globl	len
	.p2align	4, 0x90
len:
.Lfunc_begin9:
	.cv_func_id 14
	.cv_loc	14 2 138 0
	movq	$-1, %rax
.Ltmp71:
	.p2align	4, 0x90
.LBB9_1:
	.cv_loc	14 2 140 2
	cmpb	$0, 1(%rdx,%rax)
	leaq	1(%rax), %rax
.Ltmp72:
	jne	.LBB9_1
.Ltmp73:
	.cv_loc	14 2 141 5
	retq
.Ltmp74:
.Lfunc_end9:

	.def	"overload[]";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[]"
	.p2align	4, 0x90
"overload[]":
.Lfunc_begin10:
	.cv_func_id 15
	.cv_loc	15 2 60 5
	movb	(%rdx,%r9), %al
	retq
.Ltmp75:
.Lfunc_end10:

	.def	"overload+";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload+"
	.p2align	4, 0x90
"overload+":
.Lfunc_begin11:
	.cv_func_id 16
	.p2align	4, 0x90
.LBB11_1:
	.cv_inline_site_id 17 within 16 inlined_at 2 66 2
	.cv_loc	17 2 140 2
	cmpb	$0, (%r9)
	leaq	1(%r9), %r9
	jne	.LBB11_1
.Ltmp76:
	.cv_loc	16 2 71 5
	retq
.Ltmp77:
.Lfunc_end11:

	.def	"overload[x]=";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[x]="
	.p2align	4, 0x90
"overload[x]=":
.Lfunc_begin12:
	.cv_func_id 18
	.cv_loc	18 2 75 0
	.p2align	4, 0x90
.LBB12_1:
	.cv_inline_site_id 19 within 18 inlined_at 2 76 2
	.cv_loc	19 2 140 2
	cmpb	$0, (%r8)
	leaq	1(%r8), %r8
	jne	.LBB12_1
.Ltmp78:
	retq
.Lfunc_end12:

	.def	overload;
	.scl	2;
	.type	32;
	.endef
	.globl	overload
	.p2align	4, 0x90
overload:
.Lfunc_begin13:
	.cv_func_id 20
	.cv_loc	20 2 89 0
	movq	$-1, %rcx
.Ltmp79:
	.p2align	4, 0x90
.LBB13_1:
	.cv_inline_site_id 21 within 20 inlined_at 2 90 2
	.cv_loc	21 2 140 2
	cmpb	$0, 1(%r9,%rcx)
	leaq	1(%rcx), %rcx
.Ltmp80:
	jne	.LBB13_1
.Ltmp81:
	.cv_inline_site_id 22 within 20 inlined_at 2 91 5
	.cv_loc	22 2 96 2
	cmpq	%rcx, %r8
	.cv_loc	22 2 99 2
	jne	.LBB13_7
.Ltmp82:
	movb	$1, %al
	testq	%rcx, %rcx
	jle	.LBB13_8
.Ltmp83:
	xorl	%r8d, %r8d
.Ltmp84:
	.p2align	4, 0x90
.LBB13_6:
	.cv_loc	22 2 100 3
	movzbl	(%rdx,%r8), %r10d
	cmpb	(%r9,%r8), %r10b
.Ltmp85:
	.cv_loc	22 2 100 38
	jne	.LBB13_7
.Ltmp86:
	incq	%r8
.Ltmp87:
	.cv_loc	22 2 99 2
	cmpq	%rcx, %r8
	jl	.LBB13_6
.Ltmp88:
.LBB13_8:
	.cv_loc	20 2 91 5
	retq
.Ltmp89:
.LBB13_7:
	xorl	%eax, %eax
	retq
.Ltmp90:
.Lfunc_end13:

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

.L__unnamed_1:
	.asciz	"my text"

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp92-.Ltmp91
.Ltmp91:
	.short	.Ltmp94-.Ltmp93
.Ltmp93:
	.short	4353
	.long	0
	.byte	0
	.p2align	2
.Ltmp94:
	.short	.Ltmp96-.Ltmp95
.Ltmp95:
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
.Ltmp96:
.Ltmp92:
	.p2align	2
	.long	246
	.long	.Ltmp98-.Ltmp97
.Ltmp97:
	.long	0


	.long	4098
	.cv_filechecksumoffset	2
	.long	40


	.long	4101
	.cv_filechecksumoffset	3
	.long	66


	.long	4109
	.cv_filechecksumoffset	2
	.long	123


	.long	4111
	.cv_filechecksumoffset	2
	.long	137


	.long	4114
	.cv_filechecksumoffset	2
	.long	94
.Ltmp98:
	.p2align	2
	.long	241
	.long	.Ltmp100-.Ltmp99
.Ltmp99:
	.short	.Ltmp102-.Ltmp101
.Ltmp101:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-_apoc_init
	.long	0
	.long	0
	.long	4117
	.secrel32	_apoc_init
	.secidx	_apoc_init
	.byte	0
	.asciz	"_apoc_init"
	.p2align	2
.Ltmp102:
	.short	.Ltmp104-.Ltmp103
.Ltmp103:
	.short	4114
	.long	352
	.long	0
	.long	0
	.long	24
	.long	0
	.short	0
	.long	1196032
	.p2align	2
.Ltmp104:
	.short	.Ltmp106-.Ltmp105
.Ltmp105:
	.short	4414
	.long	4122
	.short	256
	.asciz	"builder"
	.p2align	2
.Ltmp106:
	.short	.Ltmp108-.Ltmp107
.Ltmp107:
	.short	4414
	.long	4106
	.short	256
	.asciz	"my_str"
	.p2align	2
.Ltmp108:
	.short	.Ltmp110-.Ltmp109
.Ltmp109:
	.short	4429
	.long	0
	.long	0
	.long	4098
	.cv_inline_linetable	1 2 40 .Lfunc_begin0 .Lfunc_end0
	.p2align	2
.Ltmp110:
	.short	.Ltmp112-.Ltmp111
.Ltmp111:
	.short	4414
	.long	4122
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp112:
	.cv_def_range	 .Ltmp0 .Ltmp14, frame_ptr_rel, 32
	.short	.Ltmp114-.Ltmp113
.Ltmp113:
	.short	4414
	.long	1568
	.short	256
	.asciz	"text"
	.p2align	2
.Ltmp114:
	.short	.Ltmp116-.Ltmp115
.Ltmp115:
	.short	4414
	.long	4120
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp116:
	.cv_def_range	 .Ltmp4 .Ltmp6 .Ltmp13 .Ltmp14, reg, 333
	.cv_def_range	 .Ltmp11 .Ltmp13, reg, 328
	.short	.Ltmp118-.Ltmp117
.Ltmp117:
	.short	4414
	.long	4120
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp118:
	.cv_def_range	 .Ltmp3 .Ltmp11 .Ltmp13 .Ltmp14, reg, 333
	.cv_def_range	 .Ltmp11 .Ltmp13, reg, 328
	.short	.Ltmp120-.Ltmp119
.Ltmp119:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp120:
	.cv_def_range	 .Ltmp4 .Ltmp6 .Ltmp10 .Ltmp14, reg, 332
	.short	.Ltmp122-.Ltmp121
.Ltmp121:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp122:
	.cv_def_range	 .Ltmp3 .Ltmp14, reg, 332
	.short	.Ltmp124-.Ltmp123
.Ltmp123:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp124:
	.cv_def_range	 .Ltmp4 .Ltmp6, reg, 330
	.short	.Ltmp126-.Ltmp125
.Ltmp125:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp126:
	.cv_def_range	 .Ltmp4 .Ltmp9, reg, 330
	.short	.Ltmp128-.Ltmp127
.Ltmp127:
	.short	4414
	.long	32
	.short	256
	.byte	0
	.p2align	2
.Ltmp128:
	.short	.Ltmp130-.Ltmp129
.Ltmp129:
	.short	4414
	.long	19
	.short	256
	.byte	0
	.p2align	2
.Ltmp130:
	.short	.Ltmp132-.Ltmp131
.Ltmp131:
	.short	4414
	.long	4120
	.short	256
	.byte	0
	.p2align	2
.Ltmp132:
	.short	.Ltmp134-.Ltmp133
.Ltmp133:
	.short	4429
	.long	0
	.long	0
	.long	4101
	.cv_inline_linetable	2 3 66 .Lfunc_begin0 .Lfunc_end0
	.p2align	2
.Ltmp134:
	.short	.Ltmp136-.Ltmp135
.Ltmp135:
	.short	4414
	.long	117
	.short	256
	.asciz	"size"
	.p2align	2
.Ltmp136:
	.short	.Ltmp138-.Ltmp137
.Ltmp137:
	.short	4414
	.long	1536
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp138:
	.short	2
	.short	4430
	.short	2
	.short	4430
	.short	.Ltmp140-.Ltmp139
.Ltmp139:
	.short	4429
	.long	0
	.long	0
	.long	4109
	.cv_inline_linetable	3 2 123 .Lfunc_begin0 .Lfunc_end0
	.p2align	2
.Ltmp140:
	.short	.Ltmp142-.Ltmp141
.Ltmp141:
	.short	4414
	.long	4106
	.short	256
	.asciz	"str"
	.p2align	2
.Ltmp142:
	.short	.Ltmp144-.Ltmp143
.Ltmp143:
	.short	4414
	.long	4106
	.short	256
	.asciz	"to_print"
	.p2align	2
.Ltmp144:
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp100:
	.p2align	2
	.cv_linetable	0, _apoc_init, .Lfunc_end0
	.long	241
	.long	.Ltmp146-.Ltmp145
.Ltmp145:
	.short	.Ltmp148-.Ltmp147
.Ltmp147:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-mem_alloc
	.long	0
	.long	0
	.long	4101
	.secrel32	mem_alloc
	.secidx	mem_alloc
	.byte	0
	.asciz	"mem_alloc"
	.p2align	2
.Ltmp148:
	.short	.Ltmp150-.Ltmp149
.Ltmp149:
	.short	4114
	.long	40
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp150:
	.short	.Ltmp152-.Ltmp151
.Ltmp151:
	.short	4414
	.long	117
	.short	256
	.asciz	"size"
	.p2align	2
.Ltmp152:
	.short	.Ltmp154-.Ltmp153
.Ltmp153:
	.short	4414
	.long	1536
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp154:
	.cv_def_range	 .Ltmp19 .Ltmp19, reg, 328
	.short	2
	.short	4431
.Ltmp146:
	.p2align	2
	.cv_linetable	4, mem_alloc, .Lfunc_end1
	.long	241
	.long	.Ltmp156-.Ltmp155
.Ltmp155:
	.short	.Ltmp158-.Ltmp157
.Ltmp157:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end2-builder_to_string
	.long	0
	.long	0
	.long	4126
	.secrel32	builder_to_string
	.secidx	builder_to_string
	.byte	0
	.asciz	"builder_to_string"
	.p2align	2
.Ltmp158:
	.short	.Ltmp160-.Ltmp159
.Ltmp159:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp160:
	.short	.Ltmp162-.Ltmp161
.Ltmp161:
	.short	4414
	.long	4122
	.short	256
	.asciz	"builder"
	.p2align	2
.Ltmp162:
	.short	.Ltmp164-.Ltmp163
.Ltmp163:
	.short	4414
	.long	4106
	.short	256
	.asciz	"out"
	.p2align	2
.Ltmp164:
	.short	.Ltmp166-.Ltmp165
.Ltmp165:
	.short	4414
	.long	19
	.short	256
	.asciz	"out_len"
	.p2align	2
.Ltmp166:
	.short	.Ltmp168-.Ltmp167
.Ltmp167:
	.short	4414
	.long	19
	.short	256
	.asciz	"out_len"
	.p2align	2
.Ltmp168:
	.short	.Ltmp170-.Ltmp169
.Ltmp169:
	.short	4414
	.long	19
	.short	256
	.asciz	"out_len"
	.p2align	2
.Ltmp170:
	.short	.Ltmp172-.Ltmp171
.Ltmp171:
	.short	4414
	.long	19
	.short	256
	.asciz	"out_len"
	.p2align	2
.Ltmp172:
	.short	.Ltmp174-.Ltmp173
.Ltmp173:
	.short	4414
	.long	4120
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp174:
	.cv_def_range	 .Ltmp22 .Ltmp23, reg, 328
	.short	.Ltmp176-.Ltmp175
.Ltmp175:
	.short	4414
	.long	4120
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp176:
	.cv_def_range	 .Ltmp22 .Ltmp23, reg, 328
	.short	.Ltmp178-.Ltmp177
.Ltmp177:
	.short	4414
	.long	4120
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp178:
	.cv_def_range	 .Ltmp22 .Ltmp23, reg, 328
	.short	.Ltmp180-.Ltmp179
.Ltmp179:
	.short	4414
	.long	19
	.short	256
	.asciz	"i"
	.p2align	2
.Ltmp180:
	.short	.Ltmp182-.Ltmp181
.Ltmp181:
	.short	4414
	.long	19
	.short	256
	.asciz	"times"
	.p2align	2
.Ltmp182:
	.short	.Ltmp184-.Ltmp183
.Ltmp183:
	.short	4414
	.long	19
	.short	256
	.asciz	"times"
	.p2align	2
.Ltmp184:
	.short	.Ltmp186-.Ltmp185
.Ltmp185:
	.short	4414
	.long	19
	.short	256
	.asciz	"i"
	.p2align	2
.Ltmp186:
	.short	2
	.short	4431
.Ltmp156:
	.p2align	2
	.cv_linetable	5, builder_to_string, .Lfunc_end2
	.long	241
	.long	.Ltmp188-.Ltmp187
.Ltmp187:
	.short	.Ltmp190-.Ltmp189
.Ltmp189:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end3-init_builder
	.long	0
	.long	0
	.long	4098
	.secrel32	init_builder
	.secidx	init_builder
	.byte	0
	.asciz	"init_builder"
	.p2align	2
.Ltmp190:
	.short	.Ltmp192-.Ltmp191
.Ltmp191:
	.short	4114
	.long	320
	.long	0
	.long	0
	.long	24
	.long	0
	.short	0
	.long	1196032
	.p2align	2
.Ltmp192:
	.short	.Ltmp194-.Ltmp193
.Ltmp193:
	.short	4414
	.long	4122
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp194:
	.cv_def_range	 .Ltmp26 .Ltmp42, frame_ptr_rel, 32
	.short	.Ltmp196-.Ltmp195
.Ltmp195:
	.short	4414
	.long	1568
	.short	0
	.asciz	"text"
	.p2align	2
.Ltmp196:
	.cv_def_range	 .Ltmp27 .Ltmp30, reg, 331
	.cv_def_range	 .Ltmp30 .Ltmp41, reg, 332
	.short	.Ltmp198-.Ltmp197
.Ltmp197:
	.short	4414
	.long	4120
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp198:
	.cv_def_range	 .Ltmp31 .Ltmp33 .Ltmp40 .Ltmp41, reg, 329
	.cv_def_range	 .Ltmp38 .Ltmp40, reg, 328
	.short	.Ltmp200-.Ltmp199
.Ltmp199:
	.short	4414
	.long	4120
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp200:
	.cv_def_range	 .Ltmp30 .Ltmp38 .Ltmp40 .Ltmp41, reg, 329
	.cv_def_range	 .Ltmp38 .Ltmp40, reg, 328
	.short	.Ltmp202-.Ltmp201
.Ltmp201:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp202:
	.cv_def_range	 .Ltmp31 .Ltmp33 .Ltmp37 .Ltmp41, reg, 333
	.short	.Ltmp204-.Ltmp203
.Ltmp203:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp204:
	.cv_def_range	 .Ltmp30 .Ltmp41, reg, 333
	.short	.Ltmp206-.Ltmp205
.Ltmp205:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp206:
	.cv_def_range	 .Ltmp31 .Ltmp33, reg, 330
	.short	.Ltmp208-.Ltmp207
.Ltmp207:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp208:
	.cv_def_range	 .Ltmp31 .Ltmp36, reg, 330
	.short	.Ltmp210-.Ltmp209
.Ltmp209:
	.short	4414
	.long	32
	.short	256
	.byte	0
	.p2align	2
.Ltmp210:
	.short	.Ltmp212-.Ltmp211
.Ltmp211:
	.short	4414
	.long	19
	.short	256
	.byte	0
	.p2align	2
.Ltmp212:
	.short	.Ltmp214-.Ltmp213
.Ltmp213:
	.short	4414
	.long	4120
	.short	256
	.byte	0
	.p2align	2
.Ltmp214:
	.short	.Ltmp216-.Ltmp215
.Ltmp215:
	.short	4429
	.long	0
	.long	0
	.long	4101
	.cv_inline_linetable	7 3 66 .Lfunc_begin3 .Lfunc_end3
	.p2align	2
.Ltmp216:
	.short	.Ltmp218-.Ltmp217
.Ltmp217:
	.short	4414
	.long	117
	.short	256
	.asciz	"size"
	.p2align	2
.Ltmp218:
	.short	.Ltmp220-.Ltmp219
.Ltmp219:
	.short	4414
	.long	1536
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp220:
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp188:
	.p2align	2
	.cv_linetable	6, init_builder, .Lfunc_end3
	.long	241
	.long	.Ltmp222-.Ltmp221
.Ltmp221:
	.short	.Ltmp224-.Ltmp223
.Ltmp223:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end4-compare
	.long	0
	.long	0
	.long	4114
	.secrel32	compare
	.secidx	compare
	.byte	0
	.asciz	"compare"
	.p2align	2
.Ltmp224:
	.short	.Ltmp226-.Ltmp225
.Ltmp225:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp226:
	.short	.Ltmp228-.Ltmp227
.Ltmp227:
	.short	4414
	.long	4106
	.short	1
	.asciz	"str2"
	.p2align	2
.Ltmp228:
	.cv_def_range	 .Lfunc_begin4 .Lfunc_end4, subfield_reg, 337, 0
	.short	.Ltmp230-.Ltmp229
.Ltmp229:
	.short	4414
	.long	4106
	.short	0
	.asciz	"str1"
	.p2align	2
.Ltmp230:
	.cv_def_range	 .Lfunc_begin4 .Lfunc_end4, subfield_reg, 331, 0
	.cv_def_range	 .Lfunc_begin4 .Lfunc_end4, subfield_reg, 336, 8
	.short	.Ltmp232-.Ltmp231
.Ltmp231:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp232:
	.cv_def_range	 .Ltmp45 .Ltmp46, reg, 338
	.short	2
	.short	4431
.Ltmp222:
	.p2align	2
	.cv_linetable	8, compare, .Lfunc_end4
	.long	241
	.long	.Ltmp234-.Ltmp233
.Ltmp233:
	.short	.Ltmp236-.Ltmp235
.Ltmp235:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end5-to_string
	.long	0
	.long	0
	.long	4127
	.secrel32	to_string
	.secidx	to_string
	.byte	0
	.asciz	"to_string"
	.p2align	2
.Ltmp236:
	.short	.Ltmp238-.Ltmp237
.Ltmp237:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp238:
	.short	.Ltmp240-.Ltmp239
.Ltmp239:
	.short	4414
	.long	1568
	.short	256
	.asciz	"text"
	.p2align	2
.Ltmp240:
	.short	.Ltmp242-.Ltmp241
.Ltmp241:
	.short	4414
	.long	19
	.short	256
	.asciz	"text_len"
	.p2align	2
.Ltmp242:
	.short	.Ltmp244-.Ltmp243
.Ltmp243:
	.short	4414
	.long	1536
	.short	256
	.asciz	"allocated"
	.p2align	2
.Ltmp244:
	.short	.Ltmp246-.Ltmp245
.Ltmp245:
	.short	4414
	.long	4106
	.short	256
	.asciz	"str"
	.p2align	2
.Ltmp246:
	.short	.Ltmp248-.Ltmp247
.Ltmp247:
	.short	4429
	.long	0
	.long	0
	.long	4111
	.cv_inline_linetable	10 2 137 .Lfunc_begin5 .Lfunc_end5
	.p2align	2
.Ltmp248:
	.short	.Ltmp250-.Ltmp249
.Ltmp249:
	.short	4414
	.long	1568
	.short	256
	.asciz	"text"
	.p2align	2
.Ltmp250:
	.short	.Ltmp252-.Ltmp251
.Ltmp251:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp252:
	.short	.Ltmp254-.Ltmp253
.Ltmp253:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp254:
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp234:
	.p2align	2
	.cv_linetable	9, to_string, .Lfunc_end5
	.long	241
	.long	.Ltmp256-.Ltmp255
.Ltmp255:
	.short	.Ltmp258-.Ltmp257
.Ltmp257:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end6-terminate_string
	.long	0
	.long	0
	.long	4128
	.secrel32	terminate_string
	.secidx	terminate_string
	.byte	0
	.asciz	"terminate_string"
	.p2align	2
.Ltmp258:
	.short	.Ltmp260-.Ltmp259
.Ltmp259:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp260:
	.short	.Ltmp262-.Ltmp261
.Ltmp261:
	.short	4414
	.long	4106
	.short	256
	.asciz	"str"
	.p2align	2
.Ltmp262:
	.short	.Ltmp264-.Ltmp263
.Ltmp263:
	.short	4414
	.long	4106
	.short	256
	.asciz	"out"
	.p2align	2
.Ltmp264:
	.short	2
	.short	4431
.Ltmp256:
	.p2align	2
	.cv_linetable	11, terminate_string, .Lfunc_end6
	.long	241
	.long	.Ltmp266-.Ltmp265
.Ltmp265:
	.short	.Ltmp268-.Ltmp267
.Ltmp267:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end7-print
	.long	0
	.long	0
	.long	4109
	.secrel32	print
	.secidx	print
	.byte	0
	.asciz	"print"
	.p2align	2
.Ltmp268:
	.short	.Ltmp270-.Ltmp269
.Ltmp269:
	.short	4114
	.long	56
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp270:
	.short	.Ltmp272-.Ltmp271
.Ltmp271:
	.short	4414
	.long	4106
	.short	256
	.asciz	"str"
	.p2align	2
.Ltmp272:
	.short	.Ltmp274-.Ltmp273
.Ltmp273:
	.short	4414
	.long	4106
	.short	256
	.asciz	"to_print"
	.p2align	2
.Ltmp274:
	.short	2
	.short	4431
.Ltmp266:
	.p2align	2
	.cv_linetable	12, print, .Lfunc_end7
	.long	241
	.long	.Ltmp276-.Ltmp275
.Ltmp275:
	.short	.Ltmp278-.Ltmp277
.Ltmp277:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end8-copy
	.long	0
	.long	0
	.long	4131
	.secrel32	copy
	.secidx	copy
	.byte	0
	.asciz	"copy"
	.p2align	2
.Ltmp278:
	.short	.Ltmp280-.Ltmp279
.Ltmp279:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp280:
	.short	.Ltmp282-.Ltmp281
.Ltmp281:
	.short	4414
	.long	1536
	.short	257
	.asciz	"src"
	.p2align	2
.Ltmp282:
	.short	.Ltmp284-.Ltmp283
.Ltmp283:
	.short	4414
	.long	117
	.short	257
	.asciz	"size"
	.p2align	2
.Ltmp284:
	.short	.Ltmp286-.Ltmp285
.Ltmp285:
	.short	4414
	.long	1536
	.short	256
	.asciz	"dst"
	.p2align	2
.Ltmp286:
	.short	.Ltmp288-.Ltmp287
.Ltmp287:
	.short	4414
	.long	1568
	.short	256
	.asciz	"a0"
	.p2align	2
.Ltmp288:
	.short	.Ltmp290-.Ltmp289
.Ltmp289:
	.short	4414
	.long	1568
	.short	256
	.asciz	"a1"
	.p2align	2
.Ltmp290:
	.short	.Ltmp292-.Ltmp291
.Ltmp291:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp292:
	.cv_def_range	 .Ltmp63 .Ltmp66, reg, 338
	.short	.Ltmp294-.Ltmp293
.Ltmp293:
	.short	4414
	.long	32
	.short	256
	.byte	0
	.p2align	2
.Ltmp294:
	.short	2
	.short	4431
.Ltmp276:
	.p2align	2
	.cv_linetable	13, copy, .Lfunc_end8
	.long	241
	.long	.Ltmp296-.Ltmp295
.Ltmp295:
	.short	.Ltmp298-.Ltmp297
.Ltmp297:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end9-len
	.long	0
	.long	0
	.long	4111
	.secrel32	len
	.secidx	len
	.byte	0
	.asciz	"len"
	.p2align	2
.Ltmp298:
	.short	.Ltmp300-.Ltmp299
.Ltmp299:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp300:
	.short	.Ltmp302-.Ltmp301
.Ltmp301:
	.short	4414
	.long	1568
	.short	0
	.asciz	"text"
	.p2align	2
.Ltmp302:
	.cv_def_range	 .Lfunc_begin9 .Ltmp71, reg, 331
	.short	.Ltmp304-.Ltmp303
.Ltmp303:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp304:
	.short	.Ltmp306-.Ltmp305
.Ltmp305:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp306:
	.short	2
	.short	4431
.Ltmp296:
	.p2align	2
	.cv_linetable	14, len, .Lfunc_end9
	.long	241
	.long	.Ltmp308-.Ltmp307
.Ltmp307:
	.short	.Ltmp310-.Ltmp309
.Ltmp309:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end10-"overload[]"
	.long	0
	.long	0
	.long	4134
	.secrel32	"overload[]"
	.secidx	"overload[]"
	.byte	0
	.asciz	"overload[]"
	.p2align	2
.Ltmp310:
	.short	.Ltmp312-.Ltmp311
.Ltmp311:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp312:
	.short	.Ltmp314-.Ltmp313
.Ltmp313:
	.short	4414
	.long	117
	.short	257
	.asciz	"index"
	.p2align	2
.Ltmp314:
	.short	.Ltmp316-.Ltmp315
.Ltmp315:
	.short	4414
	.long	4106
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp316:
	.cv_def_range	 .Lfunc_begin10 .Lfunc_end10, subfield_reg, 331, 0
	.short	2
	.short	4431
.Ltmp308:
	.p2align	2
	.cv_linetable	15, "overload[]", .Lfunc_end10
	.long	241
	.long	.Ltmp318-.Ltmp317
.Ltmp317:
	.short	.Ltmp320-.Ltmp319
.Ltmp319:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end11-"overload+"
	.long	0
	.long	0
	.long	4137
	.secrel32	"overload+"
	.secidx	"overload+"
	.byte	0
	.asciz	"overload+"
	.p2align	2
.Ltmp320:
	.short	.Ltmp322-.Ltmp321
.Ltmp321:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp322:
	.short	.Ltmp324-.Ltmp323
.Ltmp323:
	.short	4414
	.long	1568
	.short	257
	.asciz	"text"
	.p2align	2
.Ltmp324:
	.short	.Ltmp326-.Ltmp325
.Ltmp325:
	.short	4414
	.long	4106
	.short	256
	.asciz	"str"
	.p2align	2
.Ltmp326:
	.short	.Ltmp328-.Ltmp327
.Ltmp327:
	.short	4414
	.long	4106
	.short	256
	.asciz	"out"
	.p2align	2
.Ltmp328:
	.short	.Ltmp330-.Ltmp329
.Ltmp329:
	.short	4414
	.long	19
	.short	256
	.asciz	"text_len"
	.p2align	2
.Ltmp330:
	.short	.Ltmp332-.Ltmp331
.Ltmp331:
	.short	4429
	.long	0
	.long	0
	.long	4111
	.cv_inline_linetable	17 2 137 .Lfunc_begin11 .Lfunc_end11
	.p2align	2
.Ltmp332:
	.short	.Ltmp334-.Ltmp333
.Ltmp333:
	.short	4414
	.long	1568
	.short	256
	.asciz	"text"
	.p2align	2
.Ltmp334:
	.short	.Ltmp336-.Ltmp335
.Ltmp335:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp336:
	.short	.Ltmp338-.Ltmp337
.Ltmp337:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp338:
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp318:
	.p2align	2
	.cv_linetable	16, "overload+", .Lfunc_end11
	.long	241
	.long	.Ltmp340-.Ltmp339
.Ltmp339:
	.short	.Ltmp342-.Ltmp341
.Ltmp341:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end12-"overload[x]="
	.long	0
	.long	0
	.long	4140
	.secrel32	"overload[x]="
	.secidx	"overload[x]="
	.byte	0
	.asciz	"overload[x]="
	.p2align	2
.Ltmp342:
	.short	.Ltmp344-.Ltmp343
.Ltmp343:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp344:
	.short	.Ltmp346-.Ltmp345
.Ltmp345:
	.short	4414
	.long	1568
	.short	257
	.asciz	"text"
	.p2align	2
.Ltmp346:
	.short	.Ltmp348-.Ltmp347
.Ltmp347:
	.short	4414
	.long	4120
	.short	256
	.asciz	"str"
	.p2align	2
.Ltmp348:
	.short	.Ltmp350-.Ltmp349
.Ltmp349:
	.short	4414
	.long	19
	.short	256
	.asciz	"text_len"
	.p2align	2
.Ltmp350:
	.short	.Ltmp352-.Ltmp351
.Ltmp351:
	.short	4414
	.long	19
	.short	256
	.asciz	"times"
	.p2align	2
.Ltmp352:
	.short	.Ltmp354-.Ltmp353
.Ltmp353:
	.short	4414
	.long	4120
	.short	256
	.asciz	"current"
	.p2align	2
.Ltmp354:
	.short	.Ltmp356-.Ltmp355
.Ltmp355:
	.short	4414
	.long	19
	.short	256
	.asciz	"i"
	.p2align	2
.Ltmp356:
	.short	.Ltmp358-.Ltmp357
.Ltmp357:
	.short	4414
	.long	19
	.short	256
	.asciz	"copy_size"
	.p2align	2
.Ltmp358:
	.short	.Ltmp360-.Ltmp359
.Ltmp359:
	.short	4429
	.long	0
	.long	0
	.long	4111
	.cv_inline_linetable	19 2 137 .Lfunc_begin12 .Lfunc_end12
	.p2align	2
.Ltmp360:
	.short	.Ltmp362-.Ltmp361
.Ltmp361:
	.short	4414
	.long	1568
	.short	256
	.asciz	"text"
	.p2align	2
.Ltmp362:
	.short	.Ltmp364-.Ltmp363
.Ltmp363:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp364:
	.short	.Ltmp366-.Ltmp365
.Ltmp365:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp366:
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp340:
	.p2align	2
	.cv_linetable	18, "overload[x]=", .Lfunc_end12
	.long	241
	.long	.Ltmp368-.Ltmp367
.Ltmp367:
	.short	.Ltmp370-.Ltmp369
.Ltmp369:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end13-overload
	.long	0
	.long	0
	.long	4142
	.secrel32	overload
	.secidx	overload
	.byte	0
	.asciz	"overload"
	.p2align	2
.Ltmp370:
	.short	.Ltmp372-.Ltmp371
.Ltmp371:
	.short	4114
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1048576
	.p2align	2
.Ltmp372:
	.short	.Ltmp374-.Ltmp373
.Ltmp373:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp374:
	.cv_def_range	 .Lfunc_begin13 .Ltmp79, reg, 337
	.short	.Ltmp376-.Ltmp375
.Ltmp375:
	.short	4414
	.long	4106
	.short	0
	.asciz	"str2"
	.p2align	2
.Ltmp376:
	.cv_def_range	 .Lfunc_begin13 .Ltmp79, subfield_reg, 337, 0
	.short	.Ltmp378-.Ltmp377
.Ltmp377:
	.short	4414
	.long	4106
	.short	256
	.asciz	"str"
	.p2align	2
.Ltmp378:
	.short	.Ltmp380-.Ltmp379
.Ltmp379:
	.short	4429
	.long	0
	.long	0
	.long	4111
	.cv_inline_linetable	21 2 137 .Lfunc_begin13 .Lfunc_end13
	.p2align	2
.Ltmp380:
	.short	.Ltmp382-.Ltmp381
.Ltmp381:
	.short	4414
	.long	1568
	.short	256
	.asciz	"text"
	.p2align	2
.Ltmp382:
	.short	.Ltmp384-.Ltmp383
.Ltmp383:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp384:
	.short	.Ltmp386-.Ltmp385
.Ltmp385:
	.short	4414
	.long	19
	.short	256
	.asciz	"result"
	.p2align	2
.Ltmp386:
	.short	2
	.short	4430
	.short	.Ltmp388-.Ltmp387
.Ltmp387:
	.short	4429
	.long	0
	.long	0
	.long	4114
	.cv_inline_linetable	22 2 94 .Lfunc_begin13 .Lfunc_end13
	.p2align	2
.Ltmp388:
	.short	.Ltmp390-.Ltmp389
.Ltmp389:
	.short	4414
	.long	4106
	.short	1
	.asciz	"str2"
	.p2align	2
.Ltmp390:
	.cv_def_range	 .Ltmp81 .Ltmp88, subfield_reg, 337, 0
	.short	.Ltmp392-.Ltmp391
.Ltmp391:
	.short	4414
	.long	4106
	.short	0
	.asciz	"str1"
	.p2align	2
.Ltmp392:
	.cv_def_range	 .Ltmp81 .Ltmp88, subfield_reg, 331, 0
	.cv_def_range	 .Ltmp81 .Ltmp84, subfield_reg, 336, 8
	.short	.Ltmp394-.Ltmp393
.Ltmp393:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp394:
	.cv_def_range	 .Ltmp84 .Ltmp85, reg, 336
	.short	2
	.short	4430
	.short	2
	.short	4431
.Ltmp368:
	.p2align	2
	.cv_linetable	20, overload, .Lfunc_end13
	.long	241
	.long	.Ltmp396-.Ltmp395
.Ltmp395:
	.short	.Ltmp398-.Ltmp397
.Ltmp397:
	.short	4360
	.long	4106
	.asciz	"string"
	.p2align	2
.Ltmp398:
	.short	.Ltmp400-.Ltmp399
.Ltmp399:
	.short	4360
	.long	4122
	.asciz	"String_Builder"
	.p2align	2
.Ltmp400:
.Ltmp396:
	.p2align	2
	.cv_filechecksums
	.cv_stringtable
	.long	241
	.long	.Ltmp402-.Ltmp401
.Ltmp401:
	.short	.Ltmp404-.Ltmp403
.Ltmp403:
	.short	4428
	.long	4146
	.p2align	2
.Ltmp404:
.Ltmp402:
	.p2align	2
	.section	.debug$T,"dr"
	.p2align	2
	.long	4
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1000
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1001
	.asciz	"init_builder"
	.byte	243
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x75
	.short	0xe
	.short	0x1008
	.long	0x600
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1003
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1004
	.asciz	"mem_alloc"
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
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1006
	.short	0xe
	.short	0x1008
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1007
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
	.long	0x1009
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"string"
	.byte	243
	.byte	242
	.byte	241
	.short	0x2a
	.short	0x1605
	.long	0x0
	.asciz	"W:\\Apocalypse\\Standard\\String.apoc"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x100a
	.long	0x100b
	.long	0x4
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1008
	.asciz	"print"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1008
	.long	0x13
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1000
	.short	0xe
	.short	0x1601
	.long	0x0
	.long	0x100e
	.asciz	"len"
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1006
	.long	0x1006
	.short	0xe
	.short	0x1008
	.long	0x30
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1010
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1011
	.asciz	"compare"
	.short	0x6
	.short	0x1201
	.long	0x0
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1013
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1014
	.asciz	"_apoc_init"
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
	.long	0x1016
	.long	0x1000c
	.short	0x36
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x1017
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
	.long	0x1018
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
	.long	0x100b
	.long	0xa
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1016
	.short	0xe
	.short	0x1008
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x101c
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x101d
	.asciz	"builder_to_string"
	.byte	242
	.byte	241
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1001
	.asciz	"to_string"
	.byte	242
	.byte	241
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x1008
	.asciz	"terminate_string"
	.byte	243
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x600
	.long	0x600
	.long	0x75
	.short	0xe
	.short	0x1008
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1021
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1022
	.asciz	"copy"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1006
	.long	0x75
	.short	0xe
	.short	0x1008
	.long	0x20
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1024
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1025
	.asciz	"overload[]"
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1006
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1027
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1028
	.asciz	"overload+"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1018
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x102a
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x102b
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
	.long	0x1027
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x102d
	.asciz	"overload"
	.byte	243
	.byte	242
	.byte	241
	.short	0x16
	.short	0x1605
	.long	0x0
	.asciz	"W:\\Apocalypse"
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
	.long	0x102f
	.long	0x0
	.long	0x1030
	.long	0x1031
	.long	0x0
	.byte	242
	.byte	241
