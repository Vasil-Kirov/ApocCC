	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"Test.apoc"
	.def	test_var_args;
	.scl	2;
	.type	32;
	.endef
	.globl	test_var_args
	.p2align	4, 0x90
test_var_args:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "W:\\Apocalypse\\Test.apoc"
	.cv_loc	0 1 5 0
.seh_proc test_var_args
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movl	%ecx, 40(%rsp)
	movq	%r9, 88(%rsp)
	movq	%r8, 80(%rsp)
	movq	%rdx, 72(%rsp)
	leaq	44(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	40(%rsp), %ecx
	movl	%ecx, 44(%rsp)
.Ltmp0:
	.cv_loc	0 1 6 2
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	$0, 48(%rsp)
	leaq	72(%rsp), %rax
	.cv_loc	0 1 7 15
	movq	%rax, 48(%rsp)
	.cv_loc	0 1 8 2
	movq	48(%rsp), %rax
	movq	(%rax), %rax
	cmpl	$3, (%rax)
	je	.LBB0_2
	.cv_loc	0 1 10 5
	movl	44(%rsp), %eax
	addq	$56, %rsp
	retq
.LBB0_2:
	.cv_loc	0 1 9 6
	movq	48(%rsp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	addq	$56, %rsp
	retq
.Ltmp1:
.Lfunc_end0:
	.seh_endproc

	.def	_apoc_init;
	.scl	2;
	.type	32;
	.endef
	.globl	_apoc_init
	.p2align	4, 0x90
_apoc_init:
.Lfunc_begin1:
	.cv_func_id 1
	.cv_loc	1 1 15 0
.seh_proc _apoc_init
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
.Ltmp2:
	.cv_loc	1 1 16 8
	movl	$3, 32(%rsp)
	movl	$4, 36(%rsp)
	movq	$0, 72(%rsp)
	movq	$34, 72(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 80(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	80(%rsp), %rdx
	movq	88(%rsp), %r8
	movl	$10, %ecx
	callq	test_var_args
	movl	%eax, %edx
	leaq	.L__unnamed_1(%rip), %rcx
	callq	printf
	.cv_loc	1 1 17 5
	xorl	%eax, %eax
	addq	$104, %rsp
	retq
.Ltmp3:
.Lfunc_end1:
	.seh_endproc

	.section	.rdata,"dr"
.L__unnamed_1:
	.asciz	"%d"

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp5-.Ltmp4
.Ltmp4:
	.short	.Ltmp7-.Ltmp6
.Ltmp6:
	.short	4353
	.long	0
	.byte	0
	.p2align	2
.Ltmp7:
	.short	.Ltmp9-.Ltmp8
.Ltmp8:
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
.Ltmp9:
.Ltmp5:
	.p2align	2
	.long	241
	.long	.Ltmp11-.Ltmp10
.Ltmp10:
	.short	.Ltmp13-.Ltmp12
.Ltmp12:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-test_var_args
	.long	0
	.long	0
	.long	4098
	.secrel32	test_var_args
	.secidx	test_var_args
	.byte	0
	.asciz	"test_var_args"
	.p2align	2
.Ltmp13:
	.short	.Ltmp15-.Ltmp14
.Ltmp14:
	.short	4114
	.long	56
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp15:
	.short	.Ltmp17-.Ltmp16
.Ltmp16:
	.short	4414
	.long	116
	.short	0
	.asciz	"a"
	.p2align	2
.Ltmp17:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 44
	.short	.Ltmp19-.Ltmp18
.Ltmp18:
	.short	4414
	.long	4100
	.short	0
	.asciz	"list"
	.p2align	2
.Ltmp19:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp11:
	.p2align	2
	.cv_linetable	0, test_var_args, .Lfunc_end0
	.long	241
	.long	.Ltmp21-.Ltmp20
.Ltmp20:
	.short	.Ltmp23-.Ltmp22
.Ltmp22:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-_apoc_init
	.long	0
	.long	0
	.long	4141
	.secrel32	_apoc_init
	.secidx	_apoc_init
	.byte	0
	.asciz	"_apoc_init"
	.p2align	2
.Ltmp23:
	.short	.Ltmp25-.Ltmp24
.Ltmp24:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp25:
	.short	2
	.short	4431
.Ltmp21:
	.p2align	2
	.cv_linetable	1, _apoc_init, .Lfunc_end1
	.long	241
	.long	.Ltmp27-.Ltmp26
.Ltmp26:
	.short	.Ltmp29-.Ltmp28
.Ltmp28:
	.short	4360
	.long	4104
	.asciz	"Any"
	.p2align	2
.Ltmp29:
	.short	.Ltmp31-.Ltmp30
.Ltmp30:
	.short	4360
	.long	4114
	.asciz	"Type_Info"
	.p2align	2
.Ltmp31:
	.short	.Ltmp33-.Ltmp32
.Ltmp32:
	.short	4360
	.long	4117
	.asciz	"Type_Primitive"
	.p2align	2
.Ltmp33:
	.short	.Ltmp35-.Ltmp34
.Ltmp34:
	.short	4360
	.long	4121
	.asciz	"Type_Struct"
	.p2align	2
.Ltmp35:
	.short	.Ltmp37-.Ltmp36
.Ltmp36:
	.short	4360
	.long	4124
	.asciz	"Type_Array"
	.p2align	2
.Ltmp37:
	.short	.Ltmp39-.Ltmp38
.Ltmp38:
	.short	4360
	.long	4127
	.asciz	"Type_Pointer"
	.p2align	2
.Ltmp39:
	.short	.Ltmp41-.Ltmp40
.Ltmp40:
	.short	4360
	.long	4130
	.asciz	"Type_Enum"
	.p2align	2
.Ltmp41:
	.short	.Ltmp43-.Ltmp42
.Ltmp42:
	.short	4360
	.long	4133
	.asciz	"Type_Func"
	.p2align	2
.Ltmp43:
	.short	.Ltmp45-.Ltmp44
.Ltmp44:
	.short	4360
	.long	4114
	.asciz	"Type_Info"
	.p2align	2
.Ltmp45:
	.short	.Ltmp47-.Ltmp46
.Ltmp46:
	.short	4360
	.long	4114
	.asciz	"Type_Info"
	.p2align	2
.Ltmp47:
	.short	.Ltmp49-.Ltmp48
.Ltmp48:
	.short	4360
	.long	4114
	.asciz	"Type_Info"
	.p2align	2
.Ltmp49:
	.short	.Ltmp51-.Ltmp50
.Ltmp50:
	.short	4360
	.long	4114
	.asciz	"Type_Info"
	.p2align	2
.Ltmp51:
.Ltmp27:
	.p2align	2
	.cv_filechecksums
	.cv_stringtable
	.long	241
	.long	.Ltmp53-.Ltmp52
.Ltmp52:
	.short	.Ltmp55-.Ltmp54
.Ltmp54:
	.short	4428
	.long	4145
	.p2align	2
.Ltmp55:
.Ltmp53:
	.p2align	2
	.section	.debug$T,"dr"
	.p2align	2
	.long	4
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
	.long	0x1000
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1001
	.asciz	"test_var_args"
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
	.long	0x1003
	.long	0x1000c
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
	.long	0x1005
	.long	0x1000c
	.short	0x22
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x1006
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x600
	.short	0x8
	.asciz	"value"
	.short	0x1a
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x1007
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"Any"
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1605
	.long	0x0
	.asciz	"W:\\Apocalypse\\Basic.apoc"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1008
	.long	0x1009
	.long	0x2f
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
	.long	0x100b
	.short	0x0
	.asciz	"primitive"
	.short	0x150d
	.short	0x3
	.long	0x100c
	.short	0x0
	.asciz	"structure"
	.short	0x150d
	.short	0x3
	.long	0x100d
	.short	0x0
	.asciz	"array"
	.short	0x150d
	.short	0x3
	.long	0x100e
	.short	0x0
	.asciz	"pointer"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x100f
	.short	0x0
	.asciz	"enumerator"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1010
	.short	0x0
	.asciz	"function"
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x1011
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"Type_Info"
	.short	0xe
	.short	0x1606
	.long	0x1012
	.long	0x1009
	.long	0x34
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
	.long	0x1014
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"Type_Primitive"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1015
	.long	0x1009
	.long	0x3e
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
	.long	0x1017
	.short	0x18
	.asciz	"member_names"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1006
	.short	0x20
	.asciz	"member_types"
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x1018
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"Type_Struct"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1019
	.long	0x1009
	.long	0x43
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
	.long	0x1006
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
	.long	0x101b
	.long	0x0
	.long	0x0
	.short	0x18
	.asciz	"Type_Array"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x101c
	.long	0x1009
	.long	0x4d
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
	.long	0x1006
	.short	0x8
	.asciz	"pointed"
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x101e
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"Type_Pointer"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x101f
	.long	0x1009
	.long	0x53
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
	.long	0x100b
	.short	0x4
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1017
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
	.long	0x1021
	.long	0x0
	.long	0x0
	.short	0x20
	.asciz	"Type_Enum"
	.short	0xe
	.short	0x1606
	.long	0x1022
	.long	0x1009
	.long	0x58
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
	.long	0x1006
	.short	0x8
	.asciz	"param_types"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1006
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
	.long	0x1024
	.long	0x0
	.long	0x0
	.short	0x20
	.asciz	"Type_Func"
	.short	0xe
	.short	0x1606
	.long	0x1025
	.long	0x1009
	.long	0x5f
	.short	0xe
	.short	0x1606
	.long	0x1012
	.long	0x1009
	.long	0x4a
	.short	0xe
	.short	0x1606
	.long	0x1012
	.long	0x1009
	.long	0x4f
	.short	0xe
	.short	0x1606
	.long	0x1012
	.long	0x1009
	.long	0x55
	.short	0xe
	.short	0x1606
	.long	0x1012
	.long	0x1009
	.long	0x61
	.short	0x6
	.short	0x1201
	.long	0x0
	.short	0xe
	.short	0x1008
	.long	0x74
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x102b
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x102c
	.asciz	"_apoc_init"
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
	.long	0x102e
	.long	0x0
	.long	0x102f
	.long	0x1030
	.long	0x0
	.byte	242
	.byte	241
