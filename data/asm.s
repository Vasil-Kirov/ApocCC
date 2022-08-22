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
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
.Ltmp0:
	.cv_loc	0 1 6 0
	leaq	32(%rsp), %rcx
	xorl	%edx, %edx
	movl	$24, %r8d
	callq	memset
	movb	$40, 32(%rsp)
	movl	$20, 36(%rsp)
	movq	$10, 40(%rsp)
	movl	$5, 48(%rsp)
	.cv_loc	0 1 7 0
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	$24, 64(%rsp)
	.cv_loc	0 1 8 0
	movl	48(%rsp), %ecx
	callq	change_a
	leaq	32(%rsp), %rcx
	addq	$16, %rcx
	movl	%eax, 48(%rsp)
.Ltmp1:
	.cv_loc	0 1 9 0
	cmpl	$3, 48(%rsp)
	.cv_loc	0 1 12 0
	je	.LBB0_4
.Ltmp2:
	.cv_loc	0 1 14 0
	cmpl	$2, 48(%rsp)
	.cv_loc	0 1 15 0
	je	.LBB0_3
.Ltmp3:
	.cv_loc	0 1 17 0
	xorl	%eax, %eax
	addq	$72, %rsp
	retq
.Ltmp4:
.LBB0_3:
	.cv_loc	0 1 15 0
	movl	$1, %eax
	addq	$72, %rsp
	retq
.Ltmp5:
.LBB0_4:
	.cv_loc	0 1 11 0
	leaq	.L__unnamed_1(%rip), %rcx
.Ltmp6:
	callq	puts
	.cv_loc	0 1 12 0
	xorl	%eax, %eax
	addq	$72, %rsp
	retq
.Ltmp7:
.Lfunc_end0:
	.seh_endproc

	.def	change_a;
	.scl	2;
	.type	32;
	.endef
	.globl	change_a
	.p2align	4, 0x90
change_a:
.Lfunc_begin1:
	.cv_func_id 1
	.cv_loc	1 1 24 0
.seh_proc change_a
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%ecx, 32(%rsp)
	leaq	36(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	32(%rsp), %ecx
	movl	%ecx, 36(%rsp)
.Ltmp8:
	.cv_loc	1 1 25 0
	movl	36(%rsp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	addq	$40, %rsp
	retq
.Ltmp9:
.Lfunc_end1:
	.seh_endproc

	.data
	.globl	global_var
	.p2align	3
global_var:
	.quad	10

	.section	.rdata,"dr"
.L__unnamed_1:
	.asciz	"a"

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp11-.Ltmp10
.Ltmp10:
	.short	.Ltmp13-.Ltmp12
.Ltmp12:
	.short	4353
	.long	0
	.byte	0
	.p2align	2
.Ltmp13:
	.short	.Ltmp15-.Ltmp14
.Ltmp14:
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
.Ltmp15:
.Ltmp11:
	.p2align	2
	.long	241
	.long	.Ltmp17-.Ltmp16
.Ltmp16:
	.short	.Ltmp19-.Ltmp18
.Ltmp18:
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
.Ltmp19:
	.short	.Ltmp21-.Ltmp20
.Ltmp20:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp21:
	.short	.Ltmp23-.Ltmp22
.Ltmp22:
	.short	4414
	.long	4101
	.short	0
	.asciz	"a"
	.p2align	2
.Ltmp23:
	.cv_def_range	 .Ltmp0 .Ltmp7, frame_ptr_rel, 32
	.short	.Ltmp25-.Ltmp24
.Ltmp24:
	.short	4414
	.long	19
	.short	0
	.asciz	"c"
	.p2align	2
.Ltmp25:
	.cv_def_range	 .Ltmp0 .Ltmp7, frame_ptr_rel, 64
	.short	.Ltmp27-.Ltmp26
.Ltmp26:
	.short	4414
	.long	116
	.short	0
	.byte	0
	.p2align	2
.Ltmp27:
	.cv_def_range	 .Ltmp0 .Ltmp7, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp17:
	.p2align	2
	.cv_linetable	0, _apoc_init, .Lfunc_end0
	.long	241
	.long	.Ltmp29-.Ltmp28
.Ltmp28:
	.short	.Ltmp31-.Ltmp30
.Ltmp30:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-change_a
	.long	0
	.long	0
	.long	4106
	.secrel32	change_a
	.secidx	change_a
	.byte	0
	.asciz	"change_a"
	.p2align	2
.Ltmp31:
	.short	.Ltmp33-.Ltmp32
.Ltmp32:
	.short	4114
	.long	40
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp33:
	.short	.Ltmp35-.Ltmp34
.Ltmp34:
	.short	4414
	.long	116
	.short	0
	.asciz	"a"
	.p2align	2
.Ltmp35:
	.cv_def_range	 .Ltmp8 .Ltmp9, frame_ptr_rel, 36
	.short	2
	.short	4431
.Ltmp29:
	.p2align	2
	.cv_linetable	1, change_a, .Lfunc_end1
	.long	241
	.long	.Ltmp37-.Ltmp36
.Ltmp36:
	.short	.Ltmp39-.Ltmp38
.Ltmp38:
	.short	4360
	.long	4101
	.asciz	"My_Nums"
	.p2align	2
.Ltmp39:
.Ltmp37:
	.p2align	2
	.cv_filechecksums
	.cv_stringtable
	.long	241
	.long	.Ltmp41-.Ltmp40
.Ltmp40:
	.short	.Ltmp43-.Ltmp42
.Ltmp42:
	.short	4428
	.long	4110
	.p2align	2
.Ltmp43:
.Ltmp41:
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
	.asciz	"My_Nums"
	.byte	242
	.byte	241
	.short	0x32
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x10
	.short	0x0
	.asciz	"e"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x4
	.asciz	"a"
	.short	0x150d
	.short	0x3
	.long	0x13
	.short	0x8
	.asciz	"c"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x10
	.asciz	"b"
	.short	0x1e
	.short	0x1505
	.short	0x4
	.short	0x0
	.long	0x1004
	.long	0x0
	.long	0x0
	.short	0x18
	.asciz	"My_Nums"
	.byte	242
	.byte	241
	.short	0x1e
	.short	0x1605
	.long	0x0
	.asciz	"W:\\Apocalypse\\Test.apoc"
	.short	0xe
	.short	0x1606
	.long	0x1005
	.long	0x1006
	.long	0x1d
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x74
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1008
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1009
	.asciz	"change_a"
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
	.long	0x100b
	.long	0x0
	.long	0x100c
	.long	0x100d
	.long	0x0
	.byte	242
	.byte	241
