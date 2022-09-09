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
	.cv_loc	0 1 2 0
.seh_proc give_num
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
.Ltmp0:
	.cv_loc	0 1 3 2
	movl	$12, 4(%rsp)
	.cv_loc	0 1 4 5
	movl	$12, %eax
	popq	%rcx
	retq
.Ltmp1:
.Lfunc_end0:
	.seh_endproc

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp3-.Ltmp2
.Ltmp2:
	.short	.Ltmp5-.Ltmp4
.Ltmp4:
	.short	4353
	.long	0
	.byte	0
	.p2align	2
.Ltmp5:
	.short	.Ltmp7-.Ltmp6
.Ltmp6:
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
.Ltmp7:
.Ltmp3:
	.p2align	2
	.long	241
	.long	.Ltmp9-.Ltmp8
.Ltmp8:
	.short	.Ltmp11-.Ltmp10
.Ltmp10:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-give_num
	.long	0
	.long	0
	.long	4098
	.secrel32	give_num
	.secidx	give_num
	.byte	0
	.asciz	"give_num"
	.p2align	2
.Ltmp11:
	.short	.Ltmp13-.Ltmp12
.Ltmp12:
	.short	4114
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	1130496
	.p2align	2
.Ltmp13:
	.short	.Ltmp15-.Ltmp14
.Ltmp14:
	.short	4414
	.long	116
	.short	0
	.asciz	"a"
	.p2align	2
.Ltmp15:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 4
	.short	2
	.short	4431
.Ltmp9:
	.p2align	2
	.cv_linetable	0, give_num, .Lfunc_end0
	.cv_filechecksums
	.cv_stringtable
	.long	241
	.long	.Ltmp17-.Ltmp16
.Ltmp16:
	.short	.Ltmp19-.Ltmp18
.Ltmp18:
	.short	4428
	.long	4102
	.p2align	2
.Ltmp19:
.Ltmp17:
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
	.asciz	"give_num"
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
	.long	0x1003
	.long	0x0
	.long	0x1004
	.long	0x1005
	.long	0x0
	.byte	242
	.byte	241
