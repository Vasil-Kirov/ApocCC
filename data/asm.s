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
.seh_proc main
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
	subq	$312, %rsp
	.seh_stackalloc 312
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	.seh_endprologue
	andq	$-32, %rsp
	movl	$32, %ecx
	callq	SDL_Init
	cmpl	$0, %eax
	jne	.LBB0_12
	leaq	.L__unnamed_1(%rip), %rcx
	callq	printf
	leaq	.L__unnamed_2(%rip), %rcx
	movl	$805240832, %r8d
	movl	$1280, %r9d
	xorl	%eax, %eax
	movl	%r8d, %edx
	movl	$720, 32(%rsp)
	movl	$0, 40(%rsp)
	callq	SDL_CreateWindow
	movq	%rax, 64(%rsp)
	leaq	80(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	64(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rcx
	callq	SDL_GetWindowSurface
	movq	%rax, 72(%rsp)
	leaq	88(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	72(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	88(%rsp), %rdx
	leaq	.L__unnamed_3(%rip), %rcx
	callq	printf
	cmpq	$0, 88(%rsp)
	je	.LBB0_11
.LBB0_2:
	movq	88(%rsp), %r13
	movq	%r13, 56(%rsp)
	movl	(%r13), %eax
	movq	8(%r13), %rcx
	movl	16(%r13), %edx
	movl	20(%r13), %r8d
	movq	24(%r13), %r9
	movq	32(%r13), %r10
	movl	40(%r13), %r11d
	movl	44(%r13), %esi
	movl	48(%r13), %edi
	movl	52(%r13), %ebx
	movl	56(%r13), %r14d
	movl	60(%r13), %r15d
	movq	64(%r13), %r12
	movl	72(%r13), %r13d
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 128(%rsp)
	vmovaps	%ymm0, 96(%rsp)
	movq	$0, 160(%rsp)
	movl	%r13d, 168(%rsp)
	movq	%r12, 160(%rsp)
	movl	%r15d, 156(%rsp)
	movl	%r14d, 152(%rsp)
	movl	%ebx, 148(%rsp)
	movl	%edi, 144(%rsp)
	movl	%esi, 140(%rsp)
	movl	%r11d, 136(%rsp)
	movq	%r10, 128(%rsp)
	movq	%r9, 120(%rsp)
	movl	%r8d, 116(%rsp)
	movl	%edx, 112(%rsp)
	movq	%rcx, 104(%rsp)
	movl	%eax, 96(%rsp)
	movq	120(%rsp), %rax
	movq	88(%rsp), %rcx
	cmpq	24(%rcx), %rax
	je	.LBB0_10
	jmp	.LBB0_4
.LBB0_3:
	movq	120(%rsp), %rdx
	movq	88(%rsp), %rax
	movq	24(%rax), %r8
	leaq	.L__unnamed_4(%rip), %rcx
	callq	printf
	leaq	.L__unnamed_5(%rip), %rcx
	callq	printf
	leaq	183(%rsp), %rcx
	xorl	%edx, %edx
	movl	$1, %r8d
	callq	memset
	movb	$1, 183(%rsp)
	leaq	.L__unnamed_6(%rip), %rcx
	callq	printf
	leaq	184(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	$0, 184(%rsp)
	testb	$1, 183(%rsp)
	jne	.LBB0_7
	jmp	.LBB0_6
.LBB0_4:
	leaq	.L__unnamed_7(%rip), %rcx
	vzeroupper
	callq	printf
	jmp	.LBB0_3
.LBB0_5:
	movq	184(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 184(%rsp)
	testb	$1, 183(%rsp)
	jne	.LBB0_7
.LBB0_6:
	movq	80(%rsp), %rcx
	callq	SDL_DestroyWindow
	callq	SDL_Quit
	leaq	.L__unnamed_8(%rip), %rcx
	callq	printf
	xorl	%eax, %eax
	leaq	184(%rbp), %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_7:
	leaq	192(%rsp), %rcx
	xorl	%edx, %edx
	movl	$56, %r8d
	callq	memset
	leaq	256(%rsp), %rcx
	xorl	%edx, %edx
	movl	$56, %r8d
	callq	memset
	leaq	192(%rsp), %rax
	movq	%rax, 256(%rsp)
	leaq	256(%rsp), %rcx
	callq	SDL_PollEvent
	cmpl	$256, 256(%rsp)
	je	.LBB0_9
.LBB0_8:
	movq	88(%rsp), %rcx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	movl	%r8d, %edx
	movl	$100, 32(%rsp)
	movl	$16777215, 40(%rsp)
	callq	draw_square
	jmp	.LBB0_5
.LBB0_9:
	movb	$0, 183(%rsp)
	jmp	.LBB0_8
.LBB0_10:
	leaq	.L__unnamed_9(%rip), %rcx
	vzeroupper
	callq	printf
	jmp	.LBB0_3
.LBB0_11:
	callq	SDL_GetError
	movq	%rax, %rdx
	leaq	.L__unnamed_10(%rip), %rcx
	callq	printf
	jmp	.LBB0_2
.LBB0_12:
	callq	SDL_GetError
	movq	%rax, %rdx
	leaq	.L__unnamed_11(%rip), %rcx
	callq	printf
	movl	$1, %eax
	leaq	184(%rbp), %rsp
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

	.def	draw_square;
	.scl	2;
	.type	32;
	.endef
	.globl	draw_square
	.p2align	4, 0x90
draw_square:
.seh_proc draw_square
	subq	$184, %rsp
	.seh_stackalloc 184
	.seh_endprologue
	movl	%r9d, 84(%rsp)
	movl	%r8d, 80(%rsp)
	movl	%edx, 76(%rsp)
	movq	%rcx, 64(%rsp)
	movl	232(%rsp), %eax
	movl	%eax, 92(%rsp)
	movl	224(%rsp), %eax
	movl	%eax, 88(%rsp)
	leaq	112(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	64(%rsp), %rcx
	movq	%rcx, 112(%rsp)
	leaq	124(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	76(%rsp), %edx
	movl	%edx, 124(%rsp)
	leaq	128(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	80(%rsp), %r8d
	movl	%r8d, 128(%rsp)
	leaq	132(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	84(%rsp), %r9d
	movl	%r9d, 132(%rsp)
	leaq	136(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	88(%rsp), %eax
	movl	%eax, 136(%rsp)
	leaq	140(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	92(%rsp), %eax
	movl	%eax, 140(%rsp)
	movq	112(%rsp), %rax
	movq	24(%rax), %rax
	movq	%rax, 96(%rsp)
	leaq	144(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	96(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	112(%rsp), %rax
	movq	24(%rax), %rdx
	leaq	.L__unnamed_12(%rip), %rcx
	callq	printf
	movq	144(%rsp), %rdx
	leaq	.L__unnamed_13(%rip), %rcx
	callq	printf
	movq	112(%rsp), %rax
	movl	16(%rax), %eax
	movl	%eax, 104(%rsp)
	leaq	156(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	104(%rsp), %eax
	movl	%eax, 156(%rsp)
	movq	112(%rsp), %rax
	movl	20(%rax), %eax
	movl	%eax, 108(%rsp)
	leaq	160(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	108(%rsp), %eax
	movl	%eax, 160(%rsp)
	movl	128(%rsp), %eax
	addl	136(%rsp), %eax
	cmpl	160(%rsp), %eax
	jg	.LBB1_10
	movl	124(%rsp), %eax
	addl	132(%rsp), %eax
	cmpl	156(%rsp), %eax
	jg	.LBB1_9
	movl	128(%rsp), %eax
	movl	%eax, 60(%rsp)
	leaq	164(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	60(%rsp), %eax
	movl	%eax, 164(%rsp)
	movl	164(%rsp), %eax
	movl	128(%rsp), %ecx
	addl	136(%rsp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_5
	jmp	.LBB1_4
.LBB1_3:
	movl	164(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 164(%rsp)
	movl	164(%rsp), %eax
	movl	128(%rsp), %ecx
	addl	136(%rsp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_5
.LBB1_4:
	addq	$184, %rsp
	retq
.LBB1_5:
	movl	124(%rsp), %eax
	movl	%eax, 56(%rsp)
	leaq	168(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	56(%rsp), %eax
	movl	%eax, 168(%rsp)
	movl	168(%rsp), %eax
	movl	124(%rsp), %ecx
	addl	132(%rsp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_8
	jmp	.LBB1_7
.LBB1_6:
	movl	168(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 168(%rsp)
	movl	168(%rsp), %eax
	movl	124(%rsp), %ecx
	addl	132(%rsp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB1_8
.LBB1_7:
	jmp	.LBB1_3
.LBB1_8:
	movl	168(%rsp), %eax
	movl	164(%rsp), %ecx
	imull	156(%rsp), %ecx
	addl	%ecx, %eax
	movl	%eax, 44(%rsp)
	leaq	172(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	callq	memset
	movl	44(%rsp), %eax
	movl	%eax, 172(%rsp)
	movq	144(%rsp), %rax
	movl	172(%rsp), %ecx
	addq	%rcx, %rax
	movq	%rax, 48(%rsp)
	leaq	176(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	48(%rsp), %rax
	movq	%rax, 176(%rsp)
	movl	140(%rsp), %ecx
	movq	176(%rsp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB1_6
.LBB1_9:
	addq	$184, %rsp
	retq
.LBB1_10:
	addq	$184, %rsp
	retq
	.seh_endproc

	.def	swap_buffers;
	.scl	2;
	.type	32;
	.endef
	.globl	swap_buffers
	.p2align	4, 0x90
swap_buffers:
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
	movq	48(%rsp), %rcx
	callq	SDL_UpdateWindowSurface
	nop
	addq	$56, %rsp
	retq
	.seh_endproc

	.def	mem_alloc;
	.scl	2;
	.type	32;
	.endef
	.globl	mem_alloc
	.p2align	4, 0x90
mem_alloc:
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
	movq	56(%rsp), %rcx
	callq	malloc
	movq	%rax, 48(%rsp)
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	movl	$8, %r8d
	callq	memset
	movq	48(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	56(%rsp), %r8
	xorl	%edx, %edx
	callq	memset
	movq	64(%rsp), %rax
	addq	$72, %rsp
	retq
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

.L__unnamed_3:
	.asciz	"%p\n"

.L__unnamed_7:
	.asciz	"False\n"

.L__unnamed_4:
	.asciz	"pixel_address: %p == %p\n"

.L__unnamed_5:
	.asciz	"Initializing variables before main loop...\n"

.L__unnamed_6:
	.asciz	"Entering main loop\n"

.L__unnamed_8:
	.asciz	"exited normally"

.L__unnamed_9:
	.asciz	"True\n"

.L__unnamed_10:
	.asciz	"Couldn't get window surface: %s\n"

.L__unnamed_11:
	.asciz	"Error initializing sdl %s\n"

.L__unnamed_12:
	.asciz	"Original: %p\n"

.L__unnamed_13:
	.asciz	"Pixels: %p\n"

