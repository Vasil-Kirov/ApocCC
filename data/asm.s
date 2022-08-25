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
.seh_proc _apoc_init
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
.Ltmp0:
	.cv_loc	0 1 6 2
	leaq	.L__unnamed_1(%rip), %rcx
	callq	to_string
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rax, 32(%rsp)
	.cv_loc	0 1 7 2
	movq	32(%rsp), %rcx
	movq	40(%rsp), %rdx
	leaq	.L__unnamed_2(%rip), %r8
	callq	"overload+"
	movq	%rdx, 40(%rsp)
	movq	%rax, 32(%rsp)
	.cv_loc	0 1 8 2
	movq	32(%rsp), %rcx
	movq	40(%rsp), %rdx
	leaq	.L__unnamed_3(%rip), %r8
	callq	"overload+"
	movq	%rdx, 40(%rsp)
	movq	%rax, 32(%rsp)
	.cv_loc	0 1 9 2
	movq	32(%rsp), %rcx
	movq	40(%rsp), %rdx
	leaq	.L__unnamed_4(%rip), %r8
	callq	overload
	testb	$1, %al
	jne	.LBB0_2
	.cv_loc	0 1 11 7
	movq	32(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	print
	.cv_loc	0 1 12 5
	xorl	%eax, %eax
	addq	$56, %rsp
	retq
.LBB0_2:
	.cv_loc	0 1 10 6
	movl	$1, %eax
	addq	$56, %rsp
	retq
.Ltmp1:
.Lfunc_end0:
	.seh_endproc

	.def	mem_alloc;
	.scl	2;
	.type	32;
	.endef
	.globl	mem_alloc
	.p2align	4, 0x90
mem_alloc:
.Lfunc_begin1:
	.cv_func_id 1
	.cv_file	2 "W:\\Apocalypse\\Standard\\Basic.apoc"
	.cv_loc	1 2 66 0
.seh_proc mem_alloc
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	leaq	56(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	40(%rsp), %rcx
	movq	%rcx, 56(%rsp)
.Ltmp2:
	.cv_loc	1 2 67 2
	movq	56(%rsp), %rcx
	callq	malloc
	movq	%rax, 48(%rsp)
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	48(%rsp), %rax
	movq	%rax, 64(%rsp)
	.cv_loc	1 2 68 8
	movq	64(%rsp), %rcx
	movq	56(%rsp), %r8
	xorl	%edx, %edx
	callq	memset
	.cv_loc	1 2 69 5
	movq	64(%rsp), %rax
	addq	$72, %rsp
	retq
.Ltmp3:
.Lfunc_end1:
	.seh_endproc

	.def	compare;
	.scl	2;
	.type	32;
	.endef
	.globl	compare
	.p2align	4, 0x90
compare:
.Lfunc_begin2:
	.cv_func_id 2
	.cv_file	3 "W:\\Apocalypse\\Standard\\String.apoc"
	.cv_loc	2 3 31 0
.seh_proc compare
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 32(%rsp)
	vmovdqa	%xmm0, 48(%rsp)
	movq	%r9, 56(%rsp)
	movq	%r8, 48(%rsp)
.Ltmp4:
	.cv_loc	2 3 32 2
	movq	40(%rsp), %rax
	cmpq	56(%rsp), %rax
	jne	.LBB2_7
	.cv_loc	2 3 35 2
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	$0, 64(%rsp)
.LBB2_2:
	movq	64(%rsp), %rax
	cmpq	40(%rsp), %rax
	jae	.LBB2_4
	.cv_loc	2 3 36 3
	movq	64(%rsp), %rcx
	movq	32(%rsp), %rax
	movb	(%rax,%rcx), %al
	movq	64(%rsp), %rdx
	movq	48(%rsp), %rcx
	cmpb	(%rcx,%rdx), %al
	jne	.LBB2_6
	jmp	.LBB2_5
.LBB2_4:
	.cv_loc	2 3 37 5
	movb	$1, %al
	addq	$72, %rsp
	retq
.LBB2_5:
	.cv_loc	2 3 35 2
	movq	64(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 64(%rsp)
	jmp	.LBB2_2
.LBB2_6:
	.cv_loc	2 3 36 38
	xorl	%eax, %eax
	addq	$72, %rsp
	retq
.LBB2_7:
	.cv_loc	2 3 33 6
	xorl	%eax, %eax
	addq	$72, %rsp
	retq
.Ltmp5:
.Lfunc_end2:
	.seh_endproc

	.def	to_string;
	.scl	2;
	.type	32;
	.endef
	.globl	to_string
	.p2align	4, 0x90
to_string:
.Lfunc_begin3:
	.cv_func_id 3
	.cv_loc	3 3 41 0
.seh_proc to_string
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	$0, 40(%rsp)
	movq	%rcx, 40(%rsp)
.Ltmp6:
	.cv_loc	3 3 42 2
	movq	40(%rsp), %rcx
	callq	len
	movq	$0, 48(%rsp)
	movq	%rax, 48(%rsp)
	.cv_loc	3 3 43 2
	movq	48(%rsp), %rcx
	callq	mem_alloc
	movq	$0, 56(%rsp)
	movq	%rax, 56(%rsp)
	.cv_loc	3 3 44 6
	movq	56(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	copy
	.cv_loc	3 3 45 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 72(%rsp)
	.cv_loc	3 3 46 5
	movq	64(%rsp), %rax
	movq	72(%rsp), %rdx
	addq	$88, %rsp
	retq
.Ltmp7:
.Lfunc_end3:
	.seh_endproc

	.def	terminate_string;
	.scl	2;
	.type	32;
	.endef
	.globl	terminate_string
	.p2align	4, 0x90
terminate_string:
.Lfunc_begin4:
	.cv_func_id 4
	.cv_loc	4 3 50 0
.seh_proc terminate_string
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 32(%rsp)
.Ltmp8:
	.cv_loc	4 3 51 2
	vmovdqa	%xmm0, 48(%rsp)
	vmovdqa	%xmm0, 64(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 64(%rsp)
	.cv_loc	4 3 52 2
	movq	40(%rsp), %rax
	incq	%rax
	movq	%rax, 72(%rsp)
	.cv_loc	4 3 53 2
	movq	72(%rsp), %rcx
	callq	mem_alloc
	movq	%rax, 64(%rsp)
	.cv_loc	4 3 54 6
	movq	64(%rsp), %rcx
	movq	32(%rsp), %rdx
	movq	40(%rsp), %r8
	callq	copy
	.cv_loc	4 3 55 2
	movq	64(%rsp), %rax
	movq	72(%rsp), %rcx
	movb	$0, (%rax,%rcx)
.Ltmp9:
	.cv_loc	4 3 56 5
	movq	64(%rsp), %rax
	movq	72(%rsp), %rdx
	addq	$88, %rsp
	retq
.Ltmp10:
.Lfunc_end4:
	.seh_endproc

	.def	print;
	.scl	2;
	.type	32;
	.endef
	.globl	print
	.p2align	4, 0x90
print:
.Lfunc_begin5:
	.cv_func_id 5
	.cv_loc	5 3 60 0
.seh_proc print
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovdqa	%xmm0, 48(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
.Ltmp11:
	.cv_loc	5 3 61 2
	movq	48(%rsp), %rcx
	movq	56(%rsp), %rdx
	callq	terminate_string
	vmovaps	32(%rsp), %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rax, 64(%rsp)
	.cv_loc	5 3 62 8
	movq	64(%rsp), %rcx
	callq	printf
	nop
	addq	$88, %rsp
	retq
.Ltmp12:
.Lfunc_end5:
	.seh_endproc

	.def	copy;
	.scl	2;
	.type	32;
	.endef
	.globl	copy
	.p2align	4, 0x90
copy:
.Lfunc_begin6:
	.cv_func_id 6
	.cv_loc	6 3 66 0
.seh_proc copy
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%r8, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 32(%rsp)
	leaq	72(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	32(%rsp), %rcx
	movq	%rcx, 72(%rsp)
	leaq	80(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	40(%rsp), %rdx
	movq	%rdx, 80(%rsp)
	leaq	88(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	48(%rsp), %r8
	movq	%r8, 88(%rsp)
.Ltmp13:
	.cv_loc	6 3 67 2
	movq	72(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	96(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	56(%rsp), %rax
	movq	%rax, 96(%rsp)
	.cv_loc	6 3 68 2
	movq	80(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	104(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	64(%rsp), %rax
	movq	%rax, 104(%rsp)
	.cv_loc	6 3 69 2
	leaq	112(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	$0, 112(%rsp)
.LBB6_1:
	movq	112(%rsp), %rax
	cmpq	88(%rsp), %rax
	jae	.LBB6_3
	.cv_loc	6 3 70 3
	movq	112(%rsp), %rcx
	movq	104(%rsp), %rax
	movb	(%rax,%rcx), %dl
	movq	112(%rsp), %rcx
	movq	96(%rsp), %rax
	movq	%rax, %r8
	addq	%rcx, %r8
	movb	%dl, (%rax,%rcx)
.Ltmp14:
	jmp	.LBB6_4
.Ltmp15:
.LBB6_3:
	movq	112(%rsp), %rcx
	movq	104(%rsp), %rax
	movb	(%rax,%rcx), %dl
	movq	112(%rsp), %rcx
	movq	96(%rsp), %rax
	movq	%rax, %r8
	addq	%rcx, %r8
	movb	%dl, (%rax,%rcx)
.Ltmp16:
	addq	$120, %rsp
	retq
.Ltmp17:
.LBB6_4:
	.cv_loc	6 3 69 2
	movq	112(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 112(%rsp)
	jmp	.LBB6_1
.Ltmp18:
.Lfunc_end6:
	.seh_endproc

	.def	len;
	.scl	2;
	.type	32;
	.endef
	.globl	len
	.p2align	4, 0x90
len:
.Lfunc_begin7:
	.cv_func_id 7
	.cv_loc	7 3 74 0
.seh_proc len
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	leaq	40(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	32(%rsp), %rcx
	movq	%rcx, 40(%rsp)
.Ltmp19:
	.cv_loc	7 3 75 2
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	$0, 48(%rsp)
	.cv_loc	7 3 76 2
	movq	$0, 48(%rsp)
.LBB7_1:
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	cmpb	$0, (%rax,%rcx)
	je	.LBB7_3
	.cv_loc	7 3 76 47
	jmp	.LBB7_4
.LBB7_3:
	.cv_loc	7 3 77 5
	movq	48(%rsp), %rax
	addq	$56, %rsp
	retq
.LBB7_4:
	.cv_loc	7 3 76 2
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB7_1
.Ltmp20:
.Lfunc_end7:
	.seh_endproc

	.def	"overload[]";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[]"
	.p2align	4, 0x90
"overload[]":
.Lfunc_begin8:
	.cv_func_id 8
	.cv_loc	8 3 9 0
.seh_proc "overload[]"
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r8, 40(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	40(%rsp), %r8
	movq	%r8, 64(%rsp)
.Ltmp21:
	.cv_loc	8 3 10 5
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rax
	movb	(%rax,%rcx), %al
	addq	$72, %rsp
	retq
.Ltmp22:
.Lfunc_end8:
	.seh_endproc

	.def	"overload+";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload+"
	.p2align	4, 0x90
"overload+":
.Lfunc_begin9:
	.cv_func_id 9
	.cv_loc	9 3 14 0
.seh_proc "overload+"
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 32(%rsp)
	movq	$0, 56(%rsp)
	movq	%r8, 56(%rsp)
.Ltmp23:
	.cv_loc	9 3 15 2
	vmovdqa	%xmm0, 64(%rsp)
	vmovdqa	%xmm0, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 80(%rsp)
	.cv_loc	9 3 16 2
	movq	56(%rsp), %rcx
	callq	len
	movq	$0, 96(%rsp)
	movq	%rax, 96(%rsp)
	.cv_loc	9 3 17 2
	movq	40(%rsp), %rax
	movq	96(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, 88(%rsp)
	.cv_loc	9 3 18 2
	movq	88(%rsp), %rcx
	callq	mem_alloc
	movq	%rax, 80(%rsp)
	.cv_loc	9 3 19 6
	movq	80(%rsp), %rcx
	movq	32(%rsp), %rdx
	movq	40(%rsp), %r8
	callq	copy
	.cv_loc	9 3 20 6
	movq	40(%rsp), %rax
	movq	80(%rsp), %rcx
	addq	%rax, %rcx
	movq	56(%rsp), %rdx
	movq	96(%rsp), %r8
	callq	copy
	.cv_loc	9 3 21 5
	movq	80(%rsp), %rax
	movq	88(%rsp), %rdx
	addq	$104, %rsp
	retq
.Ltmp24:
.Lfunc_end9:
	.seh_endproc

	.def	overload;
	.scl	2;
	.type	32;
	.endef
	.globl	overload
	.p2align	4, 0x90
overload:
.Lfunc_begin10:
	.cv_func_id 10
	.cv_loc	10 3 25 0
.seh_proc overload
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 32(%rsp)
	movq	$0, 56(%rsp)
	movq	%r8, 56(%rsp)
.Ltmp25:
	.cv_loc	10 3 26 2
	vmovdqa	%xmm0, 64(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	56(%rsp), %rcx
	callq	len
	movq	%rax, 72(%rsp)
	.cv_loc	10 3 27 5
	movq	32(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	64(%rsp), %r8
	movq	72(%rsp), %r9
	callq	compare
	nop
	addq	$88, %rsp
	retq
.Ltmp26:
.Lfunc_end10:
	.seh_endproc

	.section	.rdata,"dr"
	.globl	global_var
global_var:
	.byte	1

	.globl	global_var.1
global_var.1:
	.byte	0

.L__unnamed_1:
	.asciz	"some_text"

.L__unnamed_2:
	.asciz	" more text"

.L__unnamed_3:
	.asciz	" even more text"

.L__unnamed_4:
	.asciz	"some_text more text even more text"

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp28-.Ltmp27
.Ltmp27:
	.short	.Ltmp30-.Ltmp29
.Ltmp29:
	.short	4353
	.long	0
	.byte	0
	.p2align	2
.Ltmp30:
	.short	.Ltmp32-.Ltmp31
.Ltmp31:
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
.Ltmp32:
.Ltmp28:
	.p2align	2
	.long	241
	.long	.Ltmp34-.Ltmp33
.Ltmp33:
	.short	.Ltmp36-.Ltmp35
.Ltmp35:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-_apoc_init
	.long	0
	.long	0
	.long	4098
	.secrel32	_apoc_init
	.secidx	_apoc_init
	.byte	0
	.asciz	"_apoc_init"
	.p2align	2
.Ltmp36:
	.short	.Ltmp38-.Ltmp37
.Ltmp37:
	.short	4114
	.long	56
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp38:
	.short	.Ltmp40-.Ltmp39
.Ltmp39:
	.short	4414
	.long	4101
	.short	0
	.asciz	"my_str"
	.p2align	2
.Ltmp40:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 32
	.short	.Ltmp42-.Ltmp41
.Ltmp41:
	.short	4414
	.long	4101
	.short	0
	.asciz	"my_str"
	.p2align	2
.Ltmp42:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 32
	.short	.Ltmp44-.Ltmp43
.Ltmp43:
	.short	4414
	.long	4101
	.short	0
	.asciz	"my_str"
	.p2align	2
.Ltmp44:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 32
	.short	2
	.short	4431
.Ltmp34:
	.p2align	2
	.cv_linetable	0, _apoc_init, .Lfunc_end0
	.long	241
	.long	.Ltmp46-.Ltmp45
.Ltmp45:
	.short	.Ltmp48-.Ltmp47
.Ltmp47:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-mem_alloc
	.long	0
	.long	0
	.long	4106
	.secrel32	mem_alloc
	.secidx	mem_alloc
	.byte	0
	.asciz	"mem_alloc"
	.p2align	2
.Ltmp48:
	.short	.Ltmp50-.Ltmp49
.Ltmp49:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp50:
	.short	.Ltmp52-.Ltmp51
.Ltmp51:
	.short	4414
	.long	117
	.short	0
	.asciz	"size"
	.p2align	2
.Ltmp52:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 56
	.short	.Ltmp54-.Ltmp53
.Ltmp53:
	.short	4414
	.long	1536
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp54:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp46:
	.p2align	2
	.cv_linetable	1, mem_alloc, .Lfunc_end1
	.long	241
	.long	.Ltmp56-.Ltmp55
.Ltmp55:
	.short	.Ltmp58-.Ltmp57
.Ltmp57:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end2-compare
	.long	0
	.long	0
	.long	4109
	.secrel32	compare
	.secidx	compare
	.byte	0
	.asciz	"compare"
	.p2align	2
.Ltmp58:
	.short	.Ltmp60-.Ltmp59
.Ltmp59:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp60:
	.short	.Ltmp62-.Ltmp61
.Ltmp61:
	.short	4414
	.long	4101
	.short	1
	.asciz	"str2"
	.p2align	2
.Ltmp62:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 48
	.short	.Ltmp64-.Ltmp63
.Ltmp63:
	.short	4414
	.long	4101
	.short	0
	.asciz	"str1"
	.p2align	2
.Ltmp64:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 32
	.short	.Ltmp66-.Ltmp65
.Ltmp65:
	.short	4414
	.long	117
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp66:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp56:
	.p2align	2
	.cv_linetable	2, compare, .Lfunc_end2
	.long	241
	.long	.Ltmp68-.Ltmp67
.Ltmp67:
	.short	.Ltmp70-.Ltmp69
.Ltmp69:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end3-to_string
	.long	0
	.long	0
	.long	4112
	.secrel32	to_string
	.secidx	to_string
	.byte	0
	.asciz	"to_string"
	.p2align	2
.Ltmp70:
	.short	.Ltmp72-.Ltmp71
.Ltmp71:
	.short	4114
	.long	88
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp72:
	.short	.Ltmp74-.Ltmp73
.Ltmp73:
	.short	4414
	.long	1568
	.short	0
	.asciz	"text"
	.p2align	2
.Ltmp74:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 40
	.short	.Ltmp76-.Ltmp75
.Ltmp75:
	.short	4414
	.long	117
	.short	0
	.asciz	"text_len"
	.p2align	2
.Ltmp76:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 48
	.short	.Ltmp78-.Ltmp77
.Ltmp77:
	.short	4414
	.long	1536
	.short	0
	.asciz	"allocated"
	.p2align	2
.Ltmp78:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 56
	.short	.Ltmp80-.Ltmp79
.Ltmp79:
	.short	4414
	.long	4101
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp80:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp68:
	.p2align	2
	.cv_linetable	3, to_string, .Lfunc_end3
	.long	241
	.long	.Ltmp82-.Ltmp81
.Ltmp81:
	.short	.Ltmp84-.Ltmp83
.Ltmp83:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end4-terminate_string
	.long	0
	.long	0
	.long	4115
	.secrel32	terminate_string
	.secidx	terminate_string
	.byte	0
	.asciz	"terminate_string"
	.p2align	2
.Ltmp84:
	.short	.Ltmp86-.Ltmp85
.Ltmp85:
	.short	4114
	.long	88
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp86:
	.short	.Ltmp88-.Ltmp87
.Ltmp87:
	.short	4414
	.long	4101
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp88:
	.cv_def_range	 .Ltmp8 .Ltmp10, frame_ptr_rel, 32
	.short	.Ltmp90-.Ltmp89
.Ltmp89:
	.short	4414
	.long	4101
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp90:
	.cv_def_range	 .Ltmp8 .Ltmp10, frame_ptr_rel, 64
	.short	.Ltmp92-.Ltmp91
.Ltmp91:
	.short	4414
	.long	117
	.short	0
	.byte	0
	.p2align	2
.Ltmp92:
	.cv_def_range	 .Ltmp8 .Ltmp10, frame_ptr_rel, 72
	.short	.Ltmp94-.Ltmp93
.Ltmp93:
	.short	4414
	.long	1568
	.short	0
	.byte	0
	.p2align	2
.Ltmp94:
	.cv_def_range	 .Ltmp8 .Ltmp10, frame_ptr_rel, 64
	.short	.Ltmp96-.Ltmp95
.Ltmp95:
	.short	4414
	.long	32
	.short	256
	.byte	0
	.p2align	2
.Ltmp96:
	.short	2
	.short	4431
.Ltmp82:
	.p2align	2
	.cv_linetable	4, terminate_string, .Lfunc_end4
	.long	241
	.long	.Ltmp98-.Ltmp97
.Ltmp97:
	.short	.Ltmp100-.Ltmp99
.Ltmp99:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end5-print
	.long	0
	.long	0
	.long	4117
	.secrel32	print
	.secidx	print
	.byte	0
	.asciz	"print"
	.p2align	2
.Ltmp100:
	.short	.Ltmp102-.Ltmp101
.Ltmp101:
	.short	4114
	.long	88
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp102:
	.short	.Ltmp104-.Ltmp103
.Ltmp103:
	.short	4414
	.long	4101
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp104:
	.cv_def_range	 .Ltmp11 .Ltmp12, frame_ptr_rel, 48
	.short	.Ltmp106-.Ltmp105
.Ltmp105:
	.short	4414
	.long	4101
	.short	0
	.asciz	"to_print"
	.p2align	2
.Ltmp106:
	.cv_def_range	 .Ltmp11 .Ltmp12, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp98:
	.p2align	2
	.cv_linetable	5, print, .Lfunc_end5
	.long	241
	.long	.Ltmp108-.Ltmp107
.Ltmp107:
	.short	.Ltmp110-.Ltmp109
.Ltmp109:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end6-copy
	.long	0
	.long	0
	.long	4120
	.secrel32	copy
	.secidx	copy
	.byte	0
	.asciz	"copy"
	.p2align	2
.Ltmp110:
	.short	.Ltmp112-.Ltmp111
.Ltmp111:
	.short	4114
	.long	120
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp112:
	.short	.Ltmp114-.Ltmp113
.Ltmp113:
	.short	4414
	.long	1536
	.short	1
	.asciz	"src"
	.p2align	2
.Ltmp114:
	.cv_def_range	 .Ltmp13 .Ltmp18, frame_ptr_rel, 80
	.short	.Ltmp116-.Ltmp115
.Ltmp115:
	.short	4414
	.long	117
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp116:
	.cv_def_range	 .Ltmp13 .Ltmp18, frame_ptr_rel, 88
	.short	.Ltmp118-.Ltmp117
.Ltmp117:
	.short	4414
	.long	1536
	.short	0
	.asciz	"dst"
	.p2align	2
.Ltmp118:
	.cv_def_range	 .Ltmp13 .Ltmp18, frame_ptr_rel, 72
	.short	.Ltmp120-.Ltmp119
.Ltmp119:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a0"
	.p2align	2
.Ltmp120:
	.cv_def_range	 .Ltmp13 .Ltmp18, frame_ptr_rel, 96
	.short	.Ltmp122-.Ltmp121
.Ltmp121:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a1"
	.p2align	2
.Ltmp122:
	.cv_def_range	 .Ltmp13 .Ltmp18, frame_ptr_rel, 104
	.short	.Ltmp124-.Ltmp123
.Ltmp123:
	.short	4414
	.long	117
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp124:
	.cv_def_range	 .Ltmp13 .Ltmp18, frame_ptr_rel, 112
	.short	.Ltmp126-.Ltmp125
.Ltmp125:
	.short	4414
	.long	32
	.short	0
	.byte	0
	.p2align	2
.Ltmp126:
	.cv_def_range	 .Ltmp14 .Ltmp15 .Ltmp16 .Lfunc_end6, reg_rel, 336, 0, 0
	.short	2
	.short	4431
.Ltmp108:
	.p2align	2
	.cv_linetable	6, copy, .Lfunc_end6
	.long	241
	.long	.Ltmp128-.Ltmp127
.Ltmp127:
	.short	.Ltmp130-.Ltmp129
.Ltmp129:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end7-len
	.long	0
	.long	0
	.long	4122
	.secrel32	len
	.secidx	len
	.byte	0
	.asciz	"len"
	.p2align	2
.Ltmp130:
	.short	.Ltmp132-.Ltmp131
.Ltmp131:
	.short	4114
	.long	56
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp132:
	.short	.Ltmp134-.Ltmp133
.Ltmp133:
	.short	4414
	.long	1568
	.short	0
	.asciz	"text"
	.p2align	2
.Ltmp134:
	.cv_def_range	 .Ltmp19 .Ltmp20, frame_ptr_rel, 40
	.short	.Ltmp136-.Ltmp135
.Ltmp135:
	.short	4414
	.long	117
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp136:
	.cv_def_range	 .Ltmp19 .Ltmp20, frame_ptr_rel, 48
	.short	.Ltmp138-.Ltmp137
.Ltmp137:
	.short	4414
	.long	117
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp138:
	.cv_def_range	 .Ltmp19 .Ltmp20, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp128:
	.p2align	2
	.cv_linetable	7, len, .Lfunc_end7
	.long	241
	.long	.Ltmp140-.Ltmp139
.Ltmp139:
	.short	.Ltmp142-.Ltmp141
.Ltmp141:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end8-"overload[]"
	.long	0
	.long	0
	.long	4125
	.secrel32	"overload[]"
	.secidx	"overload[]"
	.byte	0
	.asciz	"overload[]"
	.p2align	2
.Ltmp142:
	.short	.Ltmp144-.Ltmp143
.Ltmp143:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp144:
	.short	.Ltmp146-.Ltmp145
.Ltmp145:
	.short	4414
	.long	117
	.short	1
	.asciz	"index"
	.p2align	2
.Ltmp146:
	.cv_def_range	 .Ltmp21 .Ltmp22, frame_ptr_rel, 64
	.short	.Ltmp148-.Ltmp147
.Ltmp147:
	.short	4414
	.long	4101
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp148:
	.cv_def_range	 .Ltmp21 .Ltmp22, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp140:
	.p2align	2
	.cv_linetable	8, "overload[]", .Lfunc_end8
	.long	241
	.long	.Ltmp150-.Ltmp149
.Ltmp149:
	.short	.Ltmp152-.Ltmp151
.Ltmp151:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end9-"overload+"
	.long	0
	.long	0
	.long	4128
	.secrel32	"overload+"
	.secidx	"overload+"
	.byte	0
	.asciz	"overload+"
	.p2align	2
.Ltmp152:
	.short	.Ltmp154-.Ltmp153
.Ltmp153:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp154:
	.short	.Ltmp156-.Ltmp155
.Ltmp155:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp156:
	.cv_def_range	 .Ltmp23 .Ltmp24, frame_ptr_rel, 56
	.short	.Ltmp158-.Ltmp157
.Ltmp157:
	.short	4414
	.long	4101
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp158:
	.cv_def_range	 .Ltmp23 .Ltmp24, frame_ptr_rel, 32
	.short	.Ltmp160-.Ltmp159
.Ltmp159:
	.short	4414
	.long	4101
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp160:
	.cv_def_range	 .Ltmp23 .Ltmp24, frame_ptr_rel, 80
	.short	.Ltmp162-.Ltmp161
.Ltmp161:
	.short	4414
	.long	117
	.short	0
	.asciz	"text_len"
	.p2align	2
.Ltmp162:
	.cv_def_range	 .Ltmp23 .Ltmp24, frame_ptr_rel, 96
	.short	.Ltmp164-.Ltmp163
.Ltmp163:
	.short	4414
	.long	117
	.short	0
	.byte	0
	.p2align	2
.Ltmp164:
	.cv_def_range	 .Ltmp23 .Ltmp24, frame_ptr_rel, 88
	.short	.Ltmp166-.Ltmp165
.Ltmp165:
	.short	4414
	.long	1568
	.short	0
	.byte	0
	.p2align	2
.Ltmp166:
	.cv_def_range	 .Ltmp23 .Ltmp24, frame_ptr_rel, 80
	.short	2
	.short	4431
.Ltmp150:
	.p2align	2
	.cv_linetable	9, "overload+", .Lfunc_end9
	.long	241
	.long	.Ltmp168-.Ltmp167
.Ltmp167:
	.short	.Ltmp170-.Ltmp169
.Ltmp169:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end10-overload
	.long	0
	.long	0
	.long	4130
	.secrel32	overload
	.secidx	overload
	.byte	0
	.asciz	"overload"
	.p2align	2
.Ltmp170:
	.short	.Ltmp172-.Ltmp171
.Ltmp171:
	.short	4114
	.long	88
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp172:
	.short	.Ltmp174-.Ltmp173
.Ltmp173:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp174:
	.cv_def_range	 .Ltmp25 .Ltmp26, frame_ptr_rel, 56
	.short	.Ltmp176-.Ltmp175
.Ltmp175:
	.short	4414
	.long	4101
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp176:
	.cv_def_range	 .Ltmp25 .Ltmp26, frame_ptr_rel, 32
	.short	.Ltmp178-.Ltmp177
.Ltmp177:
	.short	4414
	.long	4101
	.short	0
	.asciz	"str2"
	.p2align	2
.Ltmp178:
	.cv_def_range	 .Ltmp25 .Ltmp26, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp168:
	.p2align	2
	.cv_linetable	10, overload, .Lfunc_end10
	.long	241
	.long	.Ltmp180-.Ltmp179
.Ltmp179:
	.short	.Ltmp182-.Ltmp181
.Ltmp181:
	.short	4360
	.long	4101
	.asciz	"string"
	.p2align	2
.Ltmp182:
.Ltmp180:
	.p2align	2
	.cv_filechecksums
	.cv_stringtable
	.long	241
	.long	.Ltmp184-.Ltmp183
.Ltmp183:
	.short	.Ltmp186-.Ltmp185
.Ltmp185:
	.short	4428
	.long	4134
	.p2align	2
.Ltmp186:
.Ltmp184:
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
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1001
	.asciz	"_apoc_init"
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
	.long	0x75
	.short	0x8
	.asciz	"len"
	.byte	242
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x1004
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
	.long	0x1005
	.long	0x1006
	.long	0x2
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
	.long	0x1008
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1009
	.asciz	"mem_alloc"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1003
	.long	0x1003
	.short	0xe
	.short	0x1008
	.long	0x30
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x100b
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x100c
	.asciz	"compare"
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x1003
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x100e
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x100f
	.asciz	"to_string"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1003
	.short	0xe
	.short	0x1008
	.long	0x1003
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1011
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x1012
	.asciz	"terminate_string"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1008
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1011
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1014
	.asciz	"print"
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
	.long	0x1016
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1017
	.asciz	"copy"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1008
	.long	0x75
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x100e
	.short	0xe
	.short	0x1601
	.long	0x0
	.long	0x1019
	.asciz	"len"
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1003
	.long	0x75
	.short	0xe
	.short	0x1008
	.long	0x20
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x101b
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x101c
	.asciz	"overload[]"
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1003
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x1003
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x101e
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x101f
	.asciz	"overload+"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1008
	.long	0x30
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x101e
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1021
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
	.long	0x1023
	.long	0x0
	.long	0x1024
	.long	0x1025
	.long	0x0
	.byte	242
	.byte	241
