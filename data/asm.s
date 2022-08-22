	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"main.apoc"
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main
	.p2align	4, 0x90
main:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "W:\\Engine\\src\\main.apoc"
	.cv_loc	0 1 6 0
.seh_proc main
	subq	$232, %rsp
	.seh_stackalloc 232
	.seh_endprologue
.Ltmp0:
	.cv_loc	0 1 7 0
	movl	$32, %ecx
	callq	SDL_Init
	cmpl	$0, %eax
	jne	.LBB0_12
	.cv_loc	0 1 12 0
	leaq	.L__unnamed_1(%rip), %rcx
	callq	printf
	.cv_loc	0 1 13 0
	leaq	.L__unnamed_2(%rip), %rcx
	movl	$805240832, %r8d
	movl	$1280, %r9d
	movl	%r8d, %edx
	movl	$720, 32(%rsp)
	movl	$32, 40(%rsp)
	callq	SDL_CreateWindow
	movq	%rax, 64(%rsp)
	leaq	72(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	64(%rsp), %rax
	movq	%rax, 72(%rsp)
	.cv_loc	0 1 16 0
	cmpq	$0, 72(%rsp)
	je	.LBB0_11
	.cv_loc	0 1 20 0
	movq	72(%rsp), %rcx
	callq	SDL_GetWindowSurface
	movq	%rax, 48(%rsp)
	leaq	80(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	48(%rsp), %rax
	movq	%rax, 80(%rsp)
	.cv_loc	0 1 21 0
	movq	72(%rsp), %rcx
	movl	$4294967295, %edx
	movl	$4, %r8d
	callq	SDL_CreateRenderer
	movq	%rax, 56(%rsp)
	leaq	88(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	56(%rsp), %rax
	movq	%rax, 88(%rsp)
	.cv_loc	0 1 22 0
	xorl	%eax, %eax
	testb	$1, %al
	jne	.LBB0_10
	jmp	.LBB0_4
.LBB0_3:
	.cv_loc	0 1 29 0
	leaq	103(%rsp), %rcx
	xorl	%edx, %edx
	movl	$1, %r8d
	callq	memset
	movb	$1, 103(%rsp)
	.cv_loc	0 1 30 0
	leaq	.L__unnamed_3(%rip), %rcx
	callq	puts
	.cv_loc	0 1 31 0
	leaq	104(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	$0, 104(%rsp)
	testb	$1, 103(%rsp)
	jne	.LBB0_7
	jmp	.LBB0_6
.LBB0_4:
	.cv_loc	0 1 25 0
	leaq	.L__unnamed_4(%rip), %rcx
	callq	printf
	.cv_loc	0 1 31 0
	jmp	.LBB0_3
.LBB0_5:
	.cv_loc	0 1 34 0
	movq	104(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 104(%rsp)
	.cv_loc	0 1 31 0
	testb	$1, 103(%rsp)
	jne	.LBB0_7
.LBB0_6:
	.cv_loc	0 1 42 0
	movq	72(%rsp), %rcx
	callq	SDL_DestroyWindow
	.cv_loc	0 1 43 0
	callq	SDL_Quit
	.cv_loc	0 1 44 0
	leaq	.L__unnamed_5(%rip), %rcx
	callq	printf
	.cv_loc	0 1 45 0
	xorl	%eax, %eax
	addq	$232, %rsp
	retq
.LBB0_7:
	.cv_loc	0 1 32 0
	leaq	112(%rsp), %rcx
	xorl	%edx, %edx
	movl	$56, %r8d
	callq	memset
	leaq	176(%rsp), %rcx
	xorl	%edx, %edx
	movl	$56, %r8d
	callq	memset
	leaq	112(%rsp), %rax
	movq	%rax, 176(%rsp)
	.cv_loc	0 1 33 0
	leaq	176(%rsp), %rcx
	callq	SDL_PollEvent
	.cv_loc	0 1 34 0
	cmpl	$256, 176(%rsp)
	je	.LBB0_9
.LBB0_8:
	jmp	.LBB0_5
.LBB0_9:
	.cv_loc	0 1 35 0
	movb	$0, 103(%rsp)
	jmp	.LBB0_8
.LBB0_10:
	.cv_loc	0 1 23 0
	leaq	.L__unnamed_6(%rip), %rcx
	callq	printf
	jmp	.LBB0_3
.LBB0_11:
	.cv_loc	0 1 17 0
	leaq	.L__unnamed_7(%rip), %rcx
	callq	printf
	.cv_loc	0 1 18 0
	movl	$4294967295, %eax
	addq	$232, %rsp
	retq
.LBB0_12:
	.cv_loc	0 1 8 0
	callq	SDL_GetError
	movq	%rax, %rdx
	leaq	.L__unnamed_8(%rip), %rcx
	callq	printf
	.cv_loc	0 1 9 0
	movl	$1, %eax
	addq	$232, %rsp
	retq
.Ltmp1:
.Lfunc_end0:
	.seh_endproc

	.def	draw_square;
	.scl	2;
	.type	32;
	.endef
	.globl	draw_square
	.p2align	4, 0x90
draw_square:
.Lfunc_begin1:
	.cv_func_id 1
	.cv_loc	1 1 50 0
.seh_proc draw_square
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movl	%r9d, 76(%rsp)
	movl	%r8d, 72(%rsp)
	movl	%edx, 68(%rsp)
	movq	%rcx, 56(%rsp)
	movl	216(%rsp), %eax
	movl	%eax, 84(%rsp)
	movl	208(%rsp), %eax
	movl	%eax, 80(%rsp)
	leaq	104(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	56(%rsp), %rcx
	movq	%rcx, 104(%rsp)
	leaq	116(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	68(%rsp), %edx
	movl	%edx, 116(%rsp)
	leaq	120(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	72(%rsp), %r8d
	movl	%r8d, 120(%rsp)
	leaq	124(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	76(%rsp), %r9d
	movl	%r9d, 124(%rsp)
	leaq	128(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	80(%rsp), %eax
	movl	%eax, 128(%rsp)
	leaq	132(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	84(%rsp), %eax
	movl	%eax, 132(%rsp)
.Ltmp2:
	.cv_loc	1 1 51 0
	movq	104(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 88(%rsp)
	leaq	136(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	88(%rsp), %rax
	movq	%rax, 136(%rsp)
	.cv_loc	1 1 52 0
	movq	104(%rsp), %rax
	movl	16(%rax), %eax
	movl	%eax, 96(%rsp)
	leaq	148(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	96(%rsp), %eax
	movl	%eax, 148(%rsp)
	.cv_loc	1 1 53 0
	movq	104(%rsp), %rax
	movl	20(%rax), %eax
	movl	%eax, 100(%rsp)
	leaq	152(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	100(%rsp), %eax
	movl	%eax, 152(%rsp)
	.cv_loc	1 1 55 0
	movl	120(%rsp), %eax
	addl	128(%rsp), %eax
	cmpl	152(%rsp), %eax
	jg	.LBB1_10
	.cv_loc	1 1 56 0
	movl	116(%rsp), %eax
	addl	124(%rsp), %eax
	cmpl	148(%rsp), %eax
	jg	.LBB1_9
	.cv_loc	1 1 59 0
	movl	120(%rsp), %eax
	movl	%eax, 52(%rsp)
	leaq	156(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	52(%rsp), %eax
	movl	%eax, 156(%rsp)
	movl	156(%rsp), %eax
	movl	120(%rsp), %ecx
	addl	128(%rsp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_5
	jmp	.LBB1_4
.LBB1_3:
	.cv_loc	1 1 60 0
	movl	156(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 156(%rsp)
	.cv_loc	1 1 59 0
	movl	156(%rsp), %eax
	movl	120(%rsp), %ecx
	addl	128(%rsp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_5
.LBB1_4:
	.cv_loc	1 1 65 0
	addq	$168, %rsp
	retq
.LBB1_5:
	.cv_loc	1 1 60 0
	movl	116(%rsp), %eax
	movl	%eax, 48(%rsp)
	leaq	160(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	48(%rsp), %eax
	movl	%eax, 160(%rsp)
	movl	160(%rsp), %eax
	movl	116(%rsp), %ecx
	addl	124(%rsp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_8
	jmp	.LBB1_7
.LBB1_6:
.Ltmp3:
	.cv_loc	1 1 62 0
	movl	160(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 160(%rsp)
	.cv_loc	1 1 60 0
	movl	160(%rsp), %eax
	movl	116(%rsp), %ecx
	addl	124(%rsp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_8
.Ltmp4:
.LBB1_7:
	jmp	.LBB1_3
.LBB1_8:
	.cv_loc	1 1 61 0
	movl	160(%rsp), %eax
	movl	156(%rsp), %ecx
	imull	148(%rsp), %ecx
	addl	%ecx, %eax
	movl	%eax, 44(%rsp)
	leaq	164(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	44(%rsp), %eax
	movl	%eax, 164(%rsp)
	.cv_loc	1 1 62 0
	movl	132(%rsp), %edx
	movl	164(%rsp), %ecx
	movq	136(%rsp), %rax
	movslq	%ecx, %r9
	shlq	$2, %r9
	movq	%rax, %r8
	addq	%r9, %r8
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
.Ltmp5:
	jmp	.LBB1_6
.Ltmp6:
.LBB1_9:
	.cv_loc	1 1 56 0
	addq	$168, %rsp
	retq
.LBB1_10:
	.cv_loc	1 1 55 0
	addq	$168, %rsp
	retq
.Ltmp7:
.Lfunc_end1:
	.seh_endproc

	.def	swap_buffers;
	.scl	2;
	.type	32;
	.endef
	.globl	swap_buffers
	.p2align	4, 0x90
swap_buffers:
.Lfunc_begin2:
	.cv_func_id 2
	.cv_loc	2 1 69 0
.seh_proc swap_buffers
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	40(%rsp), %rcx
	movq	%rcx, 48(%rsp)
.Ltmp8:
	.cv_loc	2 1 70 0
	movq	48(%rsp), %rcx
	callq	SDL_UpdateWindowSurface
	nop
	addq	$56, %rsp
	retq
.Ltmp9:
.Lfunc_end2:
	.seh_endproc

	.def	mem_alloc;
	.scl	2;
	.type	32;
	.endef
	.globl	mem_alloc
	.p2align	4, 0x90
mem_alloc:
.Lfunc_begin3:
	.cv_func_id 3
	.cv_file	2 "W:\\Apocalypse\\FileTwo.apoc"
	.cv_loc	3 2 14 0
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
.Ltmp10:
	.cv_loc	3 2 15 0
	movq	56(%rsp), %rcx
	callq	malloc
	movq	%rax, 48(%rsp)
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	48(%rsp), %rax
	movq	%rax, 64(%rsp)
	.cv_loc	3 2 16 0
	movq	64(%rsp), %rcx
	movq	56(%rsp), %r8
	xorl	%edx, %edx
	callq	memset
	.cv_loc	3 2 17 0
	movq	64(%rsp), %rax
	addq	$72, %rsp
	retq
.Ltmp11:
.Lfunc_end3:
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

	.globl	global_var.3
	.p2align	2
global_var.3:
	.long	805240832

	.globl	global_var.4
	.p2align	3
global_var.4:
	.quad	32

	.globl	global_var.5
	.p2align	3
global_var.5:
	.quad	12

.L__unnamed_1:
	.asciz	"Creating window...\n"

.L__unnamed_2:
	.asciz	"Test Window"

.L__unnamed_4:
	.asciz	"it's false?\n"

.L__unnamed_3:
	.asciz	"Entering main loop...\n"

.L__unnamed_5:
	.asciz	"exited normally"

.L__unnamed_6:
	.asciz	"true is true\n"

.L__unnamed_7:
	.asciz	"Failed to create window"

.L__unnamed_8:
	.asciz	"Error initializing sdl %s\n"

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp13-.Ltmp12
.Ltmp12:
	.short	.Ltmp15-.Ltmp14
.Ltmp14:
	.short	4353
	.long	0
	.byte	0
	.p2align	2
.Ltmp15:
	.short	.Ltmp17-.Ltmp16
.Ltmp16:
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
.Ltmp17:
.Ltmp13:
	.p2align	2
	.long	241
	.long	.Ltmp19-.Ltmp18
.Ltmp18:
	.short	.Ltmp21-.Ltmp20
.Ltmp20:
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
.Ltmp21:
	.short	.Ltmp23-.Ltmp22
.Ltmp22:
	.short	4114
	.long	232
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp23:
	.short	.Ltmp25-.Ltmp24
.Ltmp24:
	.short	4414
	.long	4100
	.short	0
	.asciz	"window"
	.p2align	2
.Ltmp25:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 72
	.short	.Ltmp27-.Ltmp26
.Ltmp26:
	.short	4414
	.long	4106
	.short	0
	.asciz	"surface"
	.p2align	2
.Ltmp27:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 80
	.short	.Ltmp29-.Ltmp28
.Ltmp28:
	.short	4414
	.long	4130
	.short	0
	.asciz	"renderer"
	.p2align	2
.Ltmp29:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 88
	.short	.Ltmp31-.Ltmp30
.Ltmp30:
	.short	4414
	.long	48
	.short	0
	.asciz	"running"
	.p2align	2
.Ltmp31:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 103
	.short	.Ltmp33-.Ltmp32
.Ltmp32:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp33:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 104
	.short	.Ltmp35-.Ltmp34
.Ltmp34:
	.short	4414
	.long	4159
	.short	0
	.asciz	"event"
	.p2align	2
.Ltmp35:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 176
	.short	.Ltmp37-.Ltmp36
.Ltmp36:
	.short	4414
	.long	48
	.short	0
	.asciz	"running"
	.p2align	2
.Ltmp37:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 103
	.short	2
	.short	4431
.Ltmp19:
	.p2align	2
	.cv_linetable	0, main, .Lfunc_end0
	.long	241
	.long	.Ltmp39-.Ltmp38
.Ltmp38:
	.short	.Ltmp41-.Ltmp40
.Ltmp40:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-draw_square
	.long	0
	.long	0
	.long	4239
	.secrel32	draw_square
	.secidx	draw_square
	.byte	0
	.asciz	"draw_square"
	.p2align	2
.Ltmp41:
	.short	.Ltmp43-.Ltmp42
.Ltmp42:
	.short	4114
	.long	168
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp43:
	.short	.Ltmp45-.Ltmp44
.Ltmp44:
	.short	4414
	.long	116
	.short	1
	.asciz	"start_x"
	.p2align	2
.Ltmp45:
	.cv_def_range	 .Ltmp2 .Ltmp7, frame_ptr_rel, 116
	.short	.Ltmp47-.Ltmp46
.Ltmp46:
	.short	4414
	.long	116
	.short	1
	.asciz	"start_y"
	.p2align	2
.Ltmp47:
	.cv_def_range	 .Ltmp2 .Ltmp7, frame_ptr_rel, 120
	.short	.Ltmp49-.Ltmp48
.Ltmp48:
	.short	4414
	.long	116
	.short	1
	.asciz	"w"
	.p2align	2
.Ltmp49:
	.cv_def_range	 .Ltmp2 .Ltmp7, frame_ptr_rel, 124
	.short	.Ltmp51-.Ltmp50
.Ltmp50:
	.short	4414
	.long	116
	.short	1
	.asciz	"h"
	.p2align	2
.Ltmp51:
	.cv_def_range	 .Ltmp2 .Ltmp7, frame_ptr_rel, 128
	.short	.Ltmp53-.Ltmp52
.Ltmp52:
	.short	4414
	.long	0
	.short	1
	.asciz	"color"
	.p2align	2
.Ltmp53:
	.cv_def_range	 .Ltmp2 .Ltmp7, frame_ptr_rel, 132
	.short	.Ltmp55-.Ltmp54
.Ltmp54:
	.short	4414
	.long	4106
	.short	0
	.asciz	"surface"
	.p2align	2
.Ltmp55:
	.cv_def_range	 .Ltmp2 .Ltmp7, frame_ptr_rel, 104
	.short	.Ltmp57-.Ltmp56
.Ltmp56:
	.short	4414
	.long	1536
	.short	0
	.asciz	"pixels"
	.p2align	2
.Ltmp57:
	.cv_def_range	 .Ltmp2 .Ltmp7, frame_ptr_rel, 136
	.short	.Ltmp59-.Ltmp58
.Ltmp58:
	.short	4414
	.long	116
	.short	0
	.asciz	"p_w"
	.p2align	2
.Ltmp59:
	.cv_def_range	 .Ltmp2 .Ltmp7, frame_ptr_rel, 148
	.short	.Ltmp61-.Ltmp60
.Ltmp60:
	.short	4414
	.long	116
	.short	0
	.asciz	"p_h"
	.p2align	2
.Ltmp61:
	.cv_def_range	 .Ltmp2 .Ltmp7, frame_ptr_rel, 152
	.short	.Ltmp63-.Ltmp62
.Ltmp62:
	.short	4414
	.long	116
	.short	0
	.asciz	"y"
	.p2align	2
.Ltmp63:
	.cv_def_range	 .Ltmp2 .Ltmp7, frame_ptr_rel, 156
	.short	.Ltmp65-.Ltmp64
.Ltmp64:
	.short	4414
	.long	116
	.short	0
	.asciz	"x"
	.p2align	2
.Ltmp65:
	.cv_def_range	 .Ltmp2 .Ltmp7, frame_ptr_rel, 160
	.short	.Ltmp67-.Ltmp66
.Ltmp66:
	.short	4414
	.long	116
	.short	0
	.asciz	"location"
	.p2align	2
.Ltmp67:
	.cv_def_range	 .Ltmp2 .Ltmp7, frame_ptr_rel, 164
	.short	.Ltmp69-.Ltmp68
.Ltmp68:
	.short	4414
	.long	0
	.short	0
	.byte	0
	.p2align	2
.Ltmp69:
	.cv_def_range	 .Ltmp3 .Ltmp4 .Ltmp5 .Ltmp6, reg_rel, 336, 0, 0
	.short	2
	.short	4431
.Ltmp39:
	.p2align	2
	.cv_linetable	1, draw_square, .Lfunc_end1
	.long	241
	.long	.Ltmp71-.Ltmp70
.Ltmp70:
	.short	.Ltmp73-.Ltmp72
.Ltmp72:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end2-swap_buffers
	.long	0
	.long	0
	.long	4242
	.secrel32	swap_buffers
	.secidx	swap_buffers
	.byte	0
	.asciz	"swap_buffers"
	.p2align	2
.Ltmp73:
	.short	.Ltmp75-.Ltmp74
.Ltmp74:
	.short	4114
	.long	56
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp75:
	.short	.Ltmp77-.Ltmp76
.Ltmp76:
	.short	4414
	.long	4100
	.short	0
	.asciz	"window"
	.p2align	2
.Ltmp77:
	.cv_def_range	 .Ltmp8 .Ltmp9, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp71:
	.p2align	2
	.cv_linetable	2, swap_buffers, .Lfunc_end2
	.long	241
	.long	.Ltmp79-.Ltmp78
.Ltmp78:
	.short	.Ltmp81-.Ltmp80
.Ltmp80:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end3-mem_alloc
	.long	0
	.long	0
	.long	4245
	.secrel32	mem_alloc
	.secidx	mem_alloc
	.byte	0
	.asciz	"mem_alloc"
	.p2align	2
.Ltmp81:
	.short	.Ltmp83-.Ltmp82
.Ltmp82:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp83:
	.short	.Ltmp85-.Ltmp84
.Ltmp84:
	.short	4414
	.long	117
	.short	0
	.asciz	"size"
	.p2align	2
.Ltmp85:
	.cv_def_range	 .Ltmp10 .Ltmp11, frame_ptr_rel, 56
	.short	.Ltmp87-.Ltmp86
.Ltmp86:
	.short	4414
	.long	1536
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp87:
	.cv_def_range	 .Ltmp10 .Ltmp11, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp79:
	.p2align	2
	.cv_linetable	3, mem_alloc, .Lfunc_end3
	.long	241
	.long	.Ltmp89-.Ltmp88
.Ltmp88:
	.short	.Ltmp91-.Ltmp90
.Ltmp90:
	.short	4360
	.long	4102
	.asciz	"SDL_Window"
	.p2align	2
.Ltmp91:
	.short	.Ltmp93-.Ltmp92
.Ltmp92:
	.short	4360
	.long	4111
	.asciz	"SDL_Surface"
	.p2align	2
.Ltmp93:
	.short	.Ltmp95-.Ltmp94
.Ltmp94:
	.short	4360
	.long	4116
	.asciz	"SDL_PixelFormat"
	.p2align	2
.Ltmp95:
	.short	.Ltmp97-.Ltmp96
.Ltmp96:
	.short	4360
	.long	4119
	.asciz	"SDL_Rect"
	.p2align	2
.Ltmp97:
	.short	.Ltmp99-.Ltmp98
.Ltmp98:
	.short	4360
	.long	4124
	.asciz	"SDL_Palette"
	.p2align	2
.Ltmp99:
	.short	.Ltmp101-.Ltmp100
.Ltmp100:
	.short	4360
	.long	4127
	.asciz	"SDL_Color"
	.p2align	2
.Ltmp101:
	.short	.Ltmp103-.Ltmp102
.Ltmp102:
	.short	4360
	.long	4131
	.asciz	"SDL_Renderer"
	.p2align	2
.Ltmp103:
	.short	.Ltmp105-.Ltmp104
.Ltmp104:
	.short	4360
	.long	4159
	.asciz	"SDL_Event"
	.p2align	2
.Ltmp105:
	.short	.Ltmp107-.Ltmp106
.Ltmp106:
	.short	4360
	.long	4162
	.asciz	"SDL_CommonEvent"
	.p2align	2
.Ltmp107:
	.short	.Ltmp109-.Ltmp108
.Ltmp108:
	.short	4360
	.long	4165
	.asciz	"SDL_WindowEvent"
	.p2align	2
.Ltmp109:
	.short	.Ltmp111-.Ltmp110
.Ltmp110:
	.short	4360
	.long	4169
	.asciz	"SDL_KeyboardEvent"
	.p2align	2
.Ltmp111:
	.short	.Ltmp113-.Ltmp112
.Ltmp112:
	.short	4360
	.long	4172
	.asciz	"SDL_TextEditingEvent"
	.p2align	2
.Ltmp113:
	.short	.Ltmp115-.Ltmp114
.Ltmp114:
	.short	4360
	.long	4175
	.asciz	"SDL_TextInputEvent"
	.p2align	2
.Ltmp115:
	.short	.Ltmp117-.Ltmp116
.Ltmp116:
	.short	4360
	.long	4178
	.asciz	"SDL_MouseMotionEvent"
	.p2align	2
.Ltmp117:
	.short	.Ltmp119-.Ltmp118
.Ltmp118:
	.short	4360
	.long	4181
	.asciz	"SDL_MouseButtonEvent"
	.p2align	2
.Ltmp119:
	.short	.Ltmp121-.Ltmp120
.Ltmp120:
	.short	4360
	.long	4184
	.asciz	"SDL_MouseWheelEvent"
	.p2align	2
.Ltmp121:
	.short	.Ltmp123-.Ltmp122
.Ltmp122:
	.short	4360
	.long	4187
	.asciz	"SDL_JoyAxisEvent"
	.p2align	2
.Ltmp123:
	.short	.Ltmp125-.Ltmp124
.Ltmp124:
	.short	4360
	.long	4190
	.asciz	"SDL_JoyBallEvent"
	.p2align	2
.Ltmp125:
	.short	.Ltmp127-.Ltmp126
.Ltmp126:
	.short	4360
	.long	4193
	.asciz	"SDL_JoyHatEvent"
	.p2align	2
.Ltmp127:
	.short	.Ltmp129-.Ltmp128
.Ltmp128:
	.short	4360
	.long	4196
	.asciz	"SDL_JoyButtonEvent"
	.p2align	2
.Ltmp129:
	.short	.Ltmp131-.Ltmp130
.Ltmp130:
	.short	4360
	.long	4199
	.asciz	"SDL_JoyDeviceEvent"
	.p2align	2
.Ltmp131:
	.short	.Ltmp133-.Ltmp132
.Ltmp132:
	.short	4360
	.long	4201
	.asciz	"SDL_ControllerAxisEvent"
	.p2align	2
.Ltmp133:
	.short	.Ltmp135-.Ltmp134
.Ltmp134:
	.short	4360
	.long	4203
	.asciz	"SDL_ControllerButtonEvent"
	.p2align	2
.Ltmp135:
	.short	.Ltmp137-.Ltmp136
.Ltmp136:
	.short	4360
	.long	4205
	.asciz	"SDL_ControllerDeviceEvent"
	.p2align	2
.Ltmp137:
	.short	.Ltmp139-.Ltmp138
.Ltmp138:
	.short	4360
	.long	4208
	.asciz	"SDL_AudioDeviceEvent"
	.p2align	2
.Ltmp139:
	.short	.Ltmp141-.Ltmp140
.Ltmp140:
	.short	4360
	.long	4210
	.asciz	"SDL_QuitEvent"
	.p2align	2
.Ltmp141:
	.short	.Ltmp143-.Ltmp142
.Ltmp142:
	.short	4360
	.long	4213
	.asciz	"SDL_UserEvent"
	.p2align	2
.Ltmp143:
	.short	.Ltmp145-.Ltmp144
.Ltmp144:
	.short	4360
	.long	4218
	.asciz	"SDL_SysWMEvent"
	.p2align	2
.Ltmp145:
	.short	.Ltmp147-.Ltmp146
.Ltmp146:
	.short	4360
	.long	4221
	.asciz	"SDL_TouchFingerEvent"
	.p2align	2
.Ltmp147:
	.short	.Ltmp149-.Ltmp148
.Ltmp148:
	.short	4360
	.long	4224
	.asciz	"SDL_MultiGestureEvent"
	.p2align	2
.Ltmp149:
	.short	.Ltmp151-.Ltmp150
.Ltmp150:
	.short	4360
	.long	4227
	.asciz	"SDL_DollarGestureEvent"
	.p2align	2
.Ltmp151:
	.short	.Ltmp153-.Ltmp152
.Ltmp152:
	.short	4360
	.long	4230
	.asciz	"SDL_DropEvent"
	.p2align	2
.Ltmp153:
	.short	.Ltmp155-.Ltmp154
.Ltmp154:
	.short	4360
	.long	4233
	.asciz	"SDL_Keysym"
	.p2align	2
.Ltmp155:
	.short	.Ltmp157-.Ltmp156
.Ltmp156:
	.short	4360
	.long	4235
	.asciz	"SDL_SysWMmsg"
	.p2align	2
.Ltmp157:
.Ltmp89:
	.p2align	2
	.cv_filechecksums
	.cv_stringtable
	.long	241
	.long	.Ltmp159-.Ltmp158
.Ltmp158:
	.short	.Ltmp161-.Ltmp160
.Ltmp160:
	.short	4428
	.long	4249
	.p2align	2
.Ltmp161:
.Ltmp159:
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
	.short	0x22
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_Window"
	.byte	243
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1003
	.long	0x1000c
	.short	0x2
	.short	0x1203
	.short	0x22
	.short	0x1505
	.short	0x0
	.short	0x0
	.long	0x1005
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_Window"
	.byte	243
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1605
	.long	0x0
	.asciz	"W:\\Engine\\src\\sdl_bindings"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1006
	.long	0x1007
	.long	0x46f
	.short	0x22
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_Surface"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1009
	.long	0x1000c
	.short	0x26
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_PixelFormat"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x100b
	.long	0x1000c
	.short	0x1e
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_Rect"
	.byte	241
	.short	0xd6
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"flags"
	.short	0x150d
	.short	0x3
	.long	0x100c
	.short	0x8
	.asciz	"format"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x10
	.asciz	"w"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x14
	.asciz	"h"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x18
	.asciz	"pitch"
	.short	0x150d
	.short	0x3
	.long	0x600
	.short	0x20
	.asciz	"pixels"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x600
	.short	0x28
	.asciz	"userdata"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x30
	.asciz	"locked"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x34
	.asciz	"lock_data"
	.short	0x150d
	.short	0x3
	.long	0x100d
	.short	0x38
	.asciz	"clip_rect"
	.short	0x150d
	.short	0x3
	.long	0x600
	.short	0x48
	.asciz	"map"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x50
	.asciz	"refcount"
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0xc
	.short	0x0
	.long	0x100e
	.long	0x0
	.long	0x0
	.short	0x58
	.asciz	"SDL_Surface"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x100f
	.long	0x1007
	.long	0x1e
	.short	0x22
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_Palette"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1011
	.long	0x1000c
	.short	0x14e
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"format"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1012
	.short	0x8
	.asciz	"palette"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x10
	.asciz	"BitsPerPixel"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x11
	.asciz	"BytesPerPixel"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x14
	.asciz	"Rmask"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x18
	.asciz	"Gmask"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x1c
	.asciz	"Bmask"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x20
	.asciz	"Amask"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x24
	.asciz	"Rloss"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x25
	.asciz	"Gloss"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x26
	.asciz	"Bloss"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x27
	.asciz	"Aloss"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x28
	.asciz	"Rshift"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x29
	.asciz	"Gshift"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x2a
	.asciz	"Bshift"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x2b
	.asciz	"Ashift"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x2c
	.asciz	"refcount"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x100c
	.short	0x30
	.asciz	"next"
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x12
	.short	0x0
	.long	0x1013
	.long	0x0
	.long	0x0
	.short	0x38
	.asciz	"SDL_PixelFormat"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1014
	.long	0x1007
	.long	0x36
	.short	0x32
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x0
	.asciz	"x"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x4
	.asciz	"y"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x8
	.asciz	"w"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0xc
	.asciz	"h"
	.short	0x1e
	.short	0x1505
	.short	0x4
	.short	0x0
	.long	0x1016
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"SDL_Rect"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1017
	.long	0x1007
	.long	0x2e
	.short	0x1e
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_Color"
	.short	0xa
	.short	0x1002
	.long	0x1019
	.long	0x1000c
	.short	0x4e
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x0
	.asciz	"ncolors"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x101a
	.short	0x8
	.asciz	"color"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x10
	.asciz	"version"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x14
	.asciz	"refcount"
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x4
	.short	0x0
	.long	0x101b
	.long	0x0
	.long	0x0
	.short	0x18
	.asciz	"SDL_Palette"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x101c
	.long	0x1007
	.long	0x4c
	.short	0x32
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x0
	.asciz	"r"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x1
	.asciz	"g"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x2
	.asciz	"b"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x3
	.asciz	"a"
	.short	0x1e
	.short	0x1505
	.short	0x4
	.short	0x0
	.long	0x101e
	.long	0x0
	.long	0x0
	.short	0x4
	.asciz	"SDL_Color"
	.short	0xe
	.short	0x1606
	.long	0x101f
	.long	0x1007
	.long	0x54
	.short	0x22
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_Renderer"
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1021
	.long	0x1000c
	.short	0x22
	.short	0x1505
	.short	0x0
	.short	0x0
	.long	0x1005
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_Renderer"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1023
	.long	0x1007
	.long	0x471
	.short	0x1e
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_Event"
	.short	0x26
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_CommonEvent"
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
	.asciz	"SDL_WindowEvent"
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
	.asciz	"SDL_KeyboardEvent"
	.short	0x2a
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_TextEditingEvent"
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_TextInputEvent"
	.byte	243
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
	.asciz	"SDL_MouseMotionEvent"
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_MouseButtonEvent"
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_MouseWheelEvent"
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
	.asciz	"SDL_JoyAxisEvent"
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_JoyBallEvent"
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_JoyHatEvent"
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
	.asciz	"SDL_JoyButtonEvent"
	.byte	243
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
	.asciz	"SDL_JoyDeviceEvent"
	.byte	243
	.byte	242
	.byte	241
	.short	0x2e
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_ControllerAxisEvent"
	.byte	242
	.byte	241
	.short	0x2e
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_ControllerButtonEvent"
	.short	0x2e
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_ControllerDeviceEvent"
	.short	0x2a
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_AudioDeviceEvent"
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_QuitEvent"
	.short	0x22
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_UserEvent"
	.short	0x26
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_SysWMEvent"
	.byte	243
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
	.asciz	"SDL_TouchFingerEvent"
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_MultiGestureEvent"
	.short	0x2e
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_DollarGestureEvent"
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
	.asciz	"SDL_DropEvent"
	.short	0x1d6
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1026
	.short	0x0
	.asciz	"common"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1027
	.short	0x0
	.asciz	"window"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1028
	.short	0x0
	.asciz	"key"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1029
	.short	0x0
	.asciz	"edit"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x102a
	.short	0x0
	.asciz	"text"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x102b
	.short	0x0
	.asciz	"motion"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x102c
	.short	0x0
	.asciz	"button"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x102d
	.short	0x0
	.asciz	"wheel"
	.short	0x150d
	.short	0x3
	.long	0x102e
	.short	0x0
	.asciz	"jaxis"
	.short	0x150d
	.short	0x3
	.long	0x102f
	.short	0x0
	.asciz	"jball"
	.short	0x150d
	.short	0x3
	.long	0x1030
	.short	0x0
	.asciz	"jhat"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1031
	.short	0x0
	.asciz	"jbutton"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1032
	.short	0x0
	.asciz	"jdevice"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1033
	.short	0x0
	.asciz	"caxis"
	.short	0x150d
	.short	0x3
	.long	0x1034
	.short	0x0
	.asciz	"cbutton"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1035
	.short	0x0
	.asciz	"cdevice"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1036
	.short	0x0
	.asciz	"adevice"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1037
	.short	0x0
	.asciz	"quit"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1038
	.short	0x0
	.asciz	"user"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1039
	.short	0x0
	.asciz	"syswm"
	.short	0x150d
	.short	0x3
	.long	0x103a
	.short	0x0
	.asciz	"tfinger"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x103b
	.short	0x0
	.asciz	"mgesture"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x103c
	.short	0x0
	.asciz	"dgesture"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x103d
	.short	0x0
	.asciz	"drop"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x0
	.asciz	"padding"
	.byte	242
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x1a
	.short	0x0
	.long	0x103e
	.long	0x0
	.long	0x0
	.short	0x38
	.asciz	"SDL_Event"
	.short	0xe
	.short	0x1606
	.long	0x103f
	.long	0x1007
	.long	0x5c
	.short	0x26
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x26
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x1041
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"SDL_CommonEvent"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1042
	.long	0x1007
	.long	0x7c
	.short	0xa6
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x8
	.asciz	"windowID"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xc
	.asciz	"event"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xd
	.asciz	"padding1"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xe
	.asciz	"padding2"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xf
	.asciz	"padding3"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x10
	.asciz	"data1"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x14
	.asciz	"data2"
	.short	0x26
	.short	0x1505
	.short	0x9
	.short	0x0
	.long	0x1044
	.long	0x0
	.long	0x0
	.short	0x18
	.asciz	"SDL_WindowEvent"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1045
	.long	0x1007
	.long	0x82
	.short	0x22
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_Keysym"
	.byte	243
	.byte	242
	.byte	241
	.short	0x9a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x8
	.asciz	"windowID"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xc
	.asciz	"state"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xd
	.asciz	"repeat"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xe
	.asciz	"padding2"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xf
	.asciz	"padding3"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1047
	.short	0x10
	.asciz	"keysym"
	.byte	243
	.byte	242
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x8
	.short	0x0
	.long	0x1048
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"SDL_KeyboardEvent"
	.short	0xe
	.short	0x1606
	.long	0x1049
	.long	0x1007
	.long	0x8f
	.short	0x6e
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x8
	.asciz	"windowID"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xc
	.asciz	"text"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x2c
	.asciz	"start"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x30
	.asciz	"length"
	.byte	243
	.byte	242
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x6
	.short	0x0
	.long	0x104b
	.long	0x0
	.long	0x0
	.short	0x34
	.asciz	"SDL_TextEditingEvent"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x104c
	.long	0x1007
	.long	0x9d
	.short	0x4a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x8
	.asciz	"windowID"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xc
	.asciz	"text"
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x4
	.short	0x0
	.long	0x104e
	.long	0x0
	.long	0x0
	.short	0x2c
	.asciz	"SDL_TextInputEvent"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x104f
	.long	0x1007
	.long	0xa7
	.short	0x92
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x8
	.asciz	"windowID"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0xc
	.asciz	"which"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x10
	.asciz	"state"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x14
	.asciz	"x"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x18
	.asciz	"y"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x1c
	.asciz	"xrel"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x20
	.asciz	"yrel"
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x9
	.short	0x0
	.long	0x1051
	.long	0x0
	.long	0x0
	.short	0x24
	.asciz	"SDL_MouseMotionEvent"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1052
	.long	0x1007
	.long	0xaf
	.short	0xae
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x8
	.asciz	"windowID"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0xc
	.asciz	"which"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x10
	.asciz	"button"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x11
	.asciz	"state"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x12
	.asciz	"clicks"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0x13
	.asciz	"padding1"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x14
	.asciz	"x"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x18
	.asciz	"y"
	.short	0x2a
	.short	0x1505
	.short	0xa
	.short	0x0
	.long	0x1054
	.long	0x0
	.long	0x0
	.short	0x1c
	.asciz	"SDL_MouseButtonEvent"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1055
	.long	0x1007
	.long	0xbc
	.short	0x9e
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x8
	.asciz	"windowID"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0xc
	.asciz	"which"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x10
	.asciz	"x"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x14
	.asciz	"y"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x18
	.asciz	"direction"
	.short	0x150d
	.short	0x3
	.long	0x40
	.short	0x1c
	.asciz	"preciseX"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x40
	.short	0x20
	.asciz	"preciseY"
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x9
	.short	0x0
	.long	0x1057
	.long	0x0
	.long	0x0
	.short	0x24
	.asciz	"SDL_MouseWheelEvent"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1058
	.long	0x1007
	.long	0xca
	.short	0xa6
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x8
	.asciz	"which"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xc
	.asciz	"axis"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xd
	.asciz	"padding1"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xe
	.asciz	"padding2"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xf
	.asciz	"padding3"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x11
	.short	0x10
	.asciz	"value"
	.short	0x150d
	.short	0x3
	.long	0x21
	.short	0x12
	.asciz	"padding4"
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x9
	.short	0x0
	.long	0x105a
	.long	0x0
	.long	0x0
	.short	0x14
	.asciz	"SDL_JoyAxisEvent"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x105b
	.long	0x1007
	.long	0xd7
	.short	0xa2
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x8
	.asciz	"which"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xc
	.asciz	"ball"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xd
	.asciz	"padding1"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xe
	.asciz	"padding2"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xf
	.asciz	"padding3"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x11
	.short	0x10
	.asciz	"xrel"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x11
	.short	0x12
	.asciz	"yrel"
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x9
	.short	0x0
	.long	0x105d
	.long	0x0
	.long	0x0
	.short	0x14
	.asciz	"SDL_JoyBallEvent"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x105e
	.long	0x1007
	.long	0xe4
	.short	0x7e
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x8
	.asciz	"which"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xc
	.asciz	"hat"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xd
	.asciz	"value"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xe
	.asciz	"padding1"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xf
	.asciz	"padding2"
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x1060
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"SDL_JoyHatEvent"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1061
	.long	0x1007
	.long	0xf1
	.short	0x82
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x8
	.asciz	"which"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xc
	.asciz	"button"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xd
	.asciz	"state"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xe
	.asciz	"padding1"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xf
	.asciz	"padding2"
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x1063
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"SDL_JoyButtonEvent"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1064
	.long	0x1007
	.long	0x102
	.short	0x36
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x8
	.asciz	"which"
	.short	0x2a
	.short	0x1505
	.short	0x3
	.short	0x0
	.long	0x1066
	.long	0x0
	.long	0x0
	.short	0xc
	.asciz	"SDL_JoyDeviceEvent"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1067
	.long	0x1007
	.long	0x10d
	.short	0x2e
	.short	0x1505
	.short	0x9
	.short	0x0
	.long	0x105a
	.long	0x0
	.long	0x0
	.short	0x14
	.asciz	"SDL_ControllerAxisEvent"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1069
	.long	0x1007
	.long	0x114
	.short	0x2e
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x1063
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"SDL_ControllerButtonEvent"
	.short	0xe
	.short	0x1606
	.long	0x106b
	.long	0x1007
	.long	0x121
	.short	0x2e
	.short	0x1505
	.short	0x3
	.short	0x0
	.long	0x1066
	.long	0x0
	.long	0x0
	.short	0xc
	.asciz	"SDL_ControllerDeviceEvent"
	.short	0xe
	.short	0x1606
	.long	0x106d
	.long	0x1007
	.long	0x12c
	.short	0x86
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x8
	.asciz	"which"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xc
	.asciz	"iscapture"
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xd
	.asciz	"padding1"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xe
	.asciz	"padding2"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x20
	.short	0xf
	.asciz	"padding3"
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x106f
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"SDL_AudioDeviceEvent"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1070
	.long	0x1007
	.long	0x148
	.short	0x22
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x1041
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"SDL_QuitEvent"
	.short	0xe
	.short	0x1606
	.long	0x1072
	.long	0x1007
	.long	0x19e
	.short	0x6a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x8
	.asciz	"windowID"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0xc
	.asciz	"code"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x600
	.short	0x10
	.asciz	"data1"
	.short	0x150d
	.short	0x3
	.long	0x600
	.short	0x18
	.asciz	"data2"
	.short	0x22
	.short	0x1505
	.short	0x6
	.short	0x0
	.long	0x1074
	.long	0x0
	.long	0x0
	.short	0x20
	.asciz	"SDL_UserEvent"
	.short	0xe
	.short	0x1606
	.long	0x1075
	.long	0x1007
	.long	0x1b0
	.short	0x22
	.short	0x1505
	.short	0x0
	.short	0x80
	.long	0x0
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_SysWMmsg"
	.byte	241
	.short	0xa
	.short	0x1002
	.long	0x1077
	.long	0x1000c
	.short	0x36
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x1078
	.short	0x8
	.asciz	"msg"
	.byte	242
	.byte	241
	.short	0x26
	.short	0x1505
	.short	0x3
	.short	0x0
	.long	0x1079
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"SDL_SysWMEvent"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x107a
	.long	0x1007
	.long	0x1c0
	.short	0xae
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x13
	.short	0x8
	.asciz	"touchId"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x13
	.short	0x10
	.asciz	"fingerId"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x40
	.short	0x18
	.asciz	"x"
	.short	0x150d
	.short	0x3
	.long	0x40
	.short	0x1c
	.asciz	"y"
	.short	0x150d
	.short	0x3
	.long	0x40
	.short	0x20
	.asciz	"dx"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x40
	.short	0x24
	.asciz	"dy"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x40
	.short	0x28
	.asciz	"pressure"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x2c
	.asciz	"windowID"
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0xa
	.short	0x0
	.long	0x107c
	.long	0x0
	.long	0x0
	.short	0x30
	.asciz	"SDL_TouchFingerEvent"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x107d
	.long	0x1007
	.long	0x156
	.short	0xa2
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x13
	.short	0x8
	.asciz	"touchId"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x40
	.short	0x10
	.asciz	"dTheta"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x40
	.short	0x14
	.asciz	"dDist"
	.short	0x150d
	.short	0x3
	.long	0x40
	.short	0x18
	.asciz	"x"
	.short	0x150d
	.short	0x3
	.long	0x40
	.short	0x1c
	.asciz	"y"
	.short	0x150d
	.short	0x3
	.long	0x21
	.short	0x20
	.asciz	"numFingers"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x21
	.short	0x22
	.asciz	"padding"
	.byte	242
	.byte	241
	.short	0x2a
	.short	0x1505
	.short	0x9
	.short	0x0
	.long	0x107f
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"SDL_MultiGestureEvent"
	.short	0xe
	.short	0x1606
	.long	0x1080
	.long	0x1007
	.long	0x167
	.short	0x8e
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x13
	.short	0x8
	.asciz	"touchId"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x13
	.short	0x10
	.asciz	"gestureId"
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x18
	.asciz	"numFingers"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x40
	.short	0x1c
	.asciz	"error"
	.short	0x150d
	.short	0x3
	.long	0x40
	.short	0x20
	.asciz	"x"
	.short	0x150d
	.short	0x3
	.long	0x40
	.short	0x24
	.asciz	"y"
	.short	0x2e
	.short	0x1505
	.short	0x8
	.short	0x0
	.long	0x1082
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"SDL_DollarGestureEvent"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1083
	.long	0x1007
	.long	0x177
	.short	0x4a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x0
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x4
	.asciz	"timestamp"
	.short	0x150d
	.short	0x3
	.long	0x620
	.short	0x8
	.asciz	"file"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x10
	.asciz	"windowID"
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x4
	.short	0x0
	.long	0x1085
	.long	0x0
	.long	0x0
	.short	0x18
	.asciz	"SDL_DropEvent"
	.short	0xe
	.short	0x1606
	.long	0x1086
	.long	0x1007
	.long	0x188
	.short	0x4a
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x13
	.short	0x0
	.asciz	"scancode"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x74
	.short	0x8
	.asciz	"sym"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x21
	.short	0xc
	.asciz	"mod"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x0
	.short	0x10
	.asciz	"unused"
	.byte	243
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x4
	.short	0x0
	.long	0x1088
	.long	0x0
	.long	0x0
	.short	0x18
	.asciz	"SDL_Keysym"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1089
	.long	0x1007
	.long	0x1c9
	.short	0x22
	.short	0x1505
	.short	0x0
	.short	0x0
	.long	0x1005
	.long	0x0
	.long	0x0
	.short	0x0
	.asciz	"SDL_SysWMmsg"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x108b
	.long	0x1007
	.long	0x1c7
	.short	0x1e
	.short	0x1201
	.long	0x6
	.long	0x100a
	.long	0x74
	.long	0x74
	.long	0x74
	.long	0x74
	.long	0x0
	.short	0xe
	.short	0x1008
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x6
	.long	0x108d
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x108e
	.asciz	"draw_square"
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1004
	.short	0xe
	.short	0x1008
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1090
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1091
	.asciz	"swap_buffers"
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
	.long	0x1093
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1094
	.asciz	"mem_alloc"
	.byte	242
	.byte	241
	.short	0x16
	.short	0x1605
	.long	0x0
	.asciz	"W:\\Engine\\src"
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1605
	.long	0x0
	.asciz	"main.apoc"
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
	.long	0x1096
	.long	0x0
	.long	0x1097
	.long	0x1098
	.long	0x0
	.byte	242
	.byte	241
