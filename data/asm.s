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
	.cv_file	1 "W:\\Apocalypse\\Test.apoc"
	.cv_loc	0 1 6 0
.seh_proc main
	pushq	%rbp
	.seh_pushreg %rbp
	subq	$432, %rsp
	.seh_stackalloc 432
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	.seh_endprologue
	andq	$-32, %rsp
	movq	%rcx, 64(%rsp)
.Ltmp0:
	.cv_loc	0 1 7 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 336(%rsp)
	vmovaps	%ymm0, 320(%rsp)
	vmovaps	%ymm0, 288(%rsp)
	vmovaps	%ymm0, 256(%rsp)
	vmovaps	%ymm0, 224(%rsp)
	vmovaps	%ymm0, 192(%rsp)
	vmovaps	%ymm0, 160(%rsp)
	vmovaps	%ymm0, 128(%rsp)
	vmovaps	%ymm0, 96(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	%rax, 80(%rsp)
	leaq	.L__unnamed_1(%rip), %rdx
	leaq	80(%rsp), %rcx
	vzeroupper
	callq	init_builder
	.cv_loc	0 1 9 6
	leaq	.L__unnamed_2(%rip), %rcx
	callq	puts
	movq	56(%rsp), %rcx
	.cv_loc	0 1 15 2
	leaq	.L__unnamed_3(%rip), %rdx
	callq	"overload[x]="
	movq	56(%rsp), %rdx
	.cv_loc	0 1 16 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 400(%rsp)
	leaq	400(%rsp), %rax
	movq	%rax, 384(%rsp)
	leaq	384(%rsp), %rcx
	callq	builder_to_string
	.cv_loc	0 1 18 7
	movq	400(%rsp), %rdx
	movq	408(%rsp), %r8
	leaq	416(%rsp), %rcx
	callq	"print!@string"
	.cv_loc	0 1 12 7
	leaq	.L__unnamed_4(%rip), %rcx
	callq	puts
	.cv_loc	0 1 13 7
	leaq	.L__unnamed_5(%rip), %rcx
	callq	puts
	.cv_loc	0 1 10 12
	leaq	.L__unnamed_6(%rip), %rcx
	callq	puts
	.cv_loc	0 1 19 5
	xorl	%eax, %eax
	leaq	304(%rbp), %rsp
	popq	%rbp
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
	.cv_file	2 "W:\\Apocalypse\\Standard\\C_Standard.apoc"
	.cv_loc	1 2 12 0
.seh_proc mem_alloc
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%rdx, 40(%rsp)
.Ltmp2:
	.cv_loc	1 2 13 2
	movq	40(%rsp), %rcx
	callq	malloc
	movq	$0, 48(%rsp)
	movq	%rax, 48(%rsp)
	.cv_loc	1 2 14 8
	movq	48(%rsp), %rcx
	movq	40(%rsp), %r8
	xorl	%edx, %edx
	callq	memset
	.cv_loc	1 2 15 5
	movq	48(%rsp), %rax
	addq	$56, %rsp
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
	.cv_file	3 "W:\\Apocalypse\\Standard\\String.apoc"
	.cv_loc	2 3 18 0
.seh_proc builder_to_string
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%rdx, 40(%rsp)
.Ltmp4:
	.cv_loc	2 3 19 2
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	movl	$16, %r8d
	callq	memset
	.cv_loc	2 3 20 2
	movq	$0, 72(%rsp)
	movq	$0, 72(%rsp)
	.cv_loc	2 3 21 2
	movq	40(%rsp), %rax
	movq	$0, 80(%rsp)
	movq	%rax, 80(%rsp)
	.cv_loc	2 3 22 2
	movq	$0, 88(%rsp)
	movq	$0, 88(%rsp)
.LBB2_1:
	movq	80(%rsp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB2_3
	.cv_loc	2 3 23 3
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	addq	256(%rcx), %rax
	movq	%rax, 72(%rsp)
	.cv_loc	2 3 24 3
	movq	80(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 80(%rsp)
	.cv_loc	2 3 25 2
	jmp	.LBB2_4
.LBB2_3:
	.cv_loc	2 3 26 2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	addq	256(%rcx), %rax
	movq	%rax, 72(%rsp)
	.cv_loc	2 3 27 2
	movq	72(%rsp), %rdx
	leaq	96(%rsp), %rcx
	callq	mem_alloc
	movq	%rax, 48(%rsp)
	.cv_loc	2 3 28 2
	movq	72(%rsp), %rax
	movq	%rax, 56(%rsp)
	.cv_loc	2 3 30 2
	movq	$0, 112(%rsp)
	movq	$0, 112(%rsp)
	.cv_loc	2 3 31 2
	movq	$0, 120(%rsp)
	movq	$0, 120(%rsp)
	jmp	.LBB2_5
.LBB2_4:
	.cv_loc	2 3 25 2
	movq	88(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 88(%rsp)
	jmp	.LBB2_1
.LBB2_5:
	.cv_loc	2 3 31 2
	movq	80(%rsp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB2_7
	.cv_loc	2 3 32 7
	movq	112(%rsp), %rdx
	shlq	$8, %rdx
	addq	48(%rsp), %rdx
	movq	80(%rsp), %r8
	movq	80(%rsp), %rax
	movq	256(%rax), %r9
	leaq	128(%rsp), %rcx
	callq	copy
	.cv_loc	2 3 33 3
	movq	80(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 80(%rsp)
	.cv_loc	2 3 34 3
	movq	112(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 112(%rsp)
	.cv_loc	2 3 35 2
	jmp	.LBB2_8
.LBB2_7:
	.cv_loc	2 3 36 6
	movq	112(%rsp), %rax
	shlq	$8, %rax
	movq	48(%rsp), %rdx
	addq	%rax, %rdx
	movq	80(%rsp), %r8
	movq	256(%r8), %r9
	leaq	144(%rsp), %rcx
	callq	copy
	.cv_loc	2 3 37 2
	movq	72(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	256(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, 72(%rsp)
	.cv_loc	2 3 38 5
	movq	32(%rsp), %rax
	movq	(%rax), %rax
	movq	48(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, (%rax)
	addq	$152, %rsp
	retq
.LBB2_8:
	.cv_loc	2 3 35 2
	movq	120(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 120(%rsp)
	jmp	.LBB2_5
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
	.cv_loc	3 3 42 0
.seh_proc init_builder
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
	subq	$616, %rsp
	.seh_stackalloc 616
	.seh_endprologue
	movq	%rcx, 288(%rsp)
	movq	$0, 296(%rsp)
	movq	%rdx, 296(%rsp)
.Ltmp6:
	.cv_loc	3 3 43 2
	leaq	304(%rsp), %rcx
	xorl	%edx, %edx
	movl	$272, %r8d
	callq	memset
	.cv_loc	3 3 44 2
	movq	560(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 560(%rsp)
	.cv_loc	3 3 45 2
	movq	$0, 584(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 584(%rsp)
	.cv_loc	3 3 46 2
	movq	$0, 592(%rsp)
	movq	$0, 592(%rsp)
	.cv_loc	3 3 47 2
	movq	$0, 600(%rsp)
	movq	$0, 600(%rsp)
.LBB3_1:
	movq	600(%rsp), %rcx
	movq	592(%rsp), %rax
	shlq	$8, %rax
	addq	%rax, %rcx
	movq	296(%rsp), %rax
	cmpb	$0, (%rax,%rcx)
	je	.LBB3_3
	.cv_loc	3 3 48 3
	movq	600(%rsp), %rcx
	movq	592(%rsp), %rax
	shlq	$8, %rax
	addq	%rax, %rcx
	movq	296(%rsp), %rax
	movb	(%rax,%rcx), %dl
	movq	600(%rsp), %rcx
	movq	584(%rsp), %rax
	movb	%dl, (%rax,%rcx)
	.cv_loc	3 3 49 3
	movq	584(%rsp), %rax
	movq	256(%rax), %rcx
	addq	$1, %rcx
	movq	584(%rsp), %rax
	movq	%rcx, 256(%rax)
	.cv_loc	3 3 50 3
	cmpq	$256, 600(%rsp)
	.cv_loc	3 3 56 2
	je	.LBB3_5
	jmp	.LBB3_6
.LBB3_3:
	.cv_loc	3 3 57 5
	movq	288(%rsp), %rax
	movq	(%rax), %rax
	movb	304(%rsp), %cl
	movb	%cl, 99(%rsp)
	movb	305(%rsp), %cl
	movb	%cl, 98(%rsp)
	movb	306(%rsp), %cl
	movb	%cl, 97(%rsp)
	movb	307(%rsp), %cl
	movb	%cl, 96(%rsp)
	movb	308(%rsp), %cl
	movb	%cl, 95(%rsp)
	movb	309(%rsp), %cl
	movb	%cl, 94(%rsp)
	movb	310(%rsp), %cl
	movb	%cl, 93(%rsp)
	movb	311(%rsp), %cl
	movb	%cl, 92(%rsp)
	movb	312(%rsp), %cl
	movb	%cl, 91(%rsp)
	movb	313(%rsp), %cl
	movb	%cl, 90(%rsp)
	movb	314(%rsp), %cl
	movb	%cl, 89(%rsp)
	movb	315(%rsp), %cl
	movb	%cl, 88(%rsp)
	movb	316(%rsp), %cl
	movb	%cl, 87(%rsp)
	movb	317(%rsp), %cl
	movb	%cl, 86(%rsp)
	movb	318(%rsp), %cl
	movb	%cl, 85(%rsp)
	movb	319(%rsp), %cl
	movb	%cl, 84(%rsp)
	movb	320(%rsp), %cl
	movb	%cl, 83(%rsp)
	movb	321(%rsp), %cl
	movb	%cl, 82(%rsp)
	movb	322(%rsp), %cl
	movb	%cl, 81(%rsp)
	movb	323(%rsp), %cl
	movb	%cl, 80(%rsp)
	movb	324(%rsp), %cl
	movb	%cl, 79(%rsp)
	movb	325(%rsp), %cl
	movb	%cl, 78(%rsp)
	movb	326(%rsp), %cl
	movb	%cl, 77(%rsp)
	movb	327(%rsp), %cl
	movb	%cl, 76(%rsp)
	movb	328(%rsp), %cl
	movb	%cl, 75(%rsp)
	movb	329(%rsp), %cl
	movb	%cl, 74(%rsp)
	movb	330(%rsp), %cl
	movb	%cl, 73(%rsp)
	movb	331(%rsp), %cl
	movb	%cl, 72(%rsp)
	movb	332(%rsp), %cl
	movb	%cl, 71(%rsp)
	movb	333(%rsp), %cl
	movb	%cl, 70(%rsp)
	movb	334(%rsp), %cl
	movb	%cl, 69(%rsp)
	movb	335(%rsp), %cl
	movb	%cl, 68(%rsp)
	movb	336(%rsp), %cl
	movb	%cl, 67(%rsp)
	movb	337(%rsp), %cl
	movb	%cl, 66(%rsp)
	movb	338(%rsp), %cl
	movb	%cl, 65(%rsp)
	movb	339(%rsp), %cl
	movb	%cl, 64(%rsp)
	movb	340(%rsp), %cl
	movb	%cl, 63(%rsp)
	movb	341(%rsp), %cl
	movb	%cl, 62(%rsp)
	movb	342(%rsp), %cl
	movb	%cl, 61(%rsp)
	movb	343(%rsp), %cl
	movb	%cl, 60(%rsp)
	movb	344(%rsp), %cl
	movb	%cl, 59(%rsp)
	movb	345(%rsp), %cl
	movb	%cl, 58(%rsp)
	movb	346(%rsp), %cl
	movb	%cl, 57(%rsp)
	movb	347(%rsp), %cl
	movb	%cl, 56(%rsp)
	movb	348(%rsp), %cl
	movb	%cl, 55(%rsp)
	movb	349(%rsp), %cl
	movb	%cl, 54(%rsp)
	movb	350(%rsp), %cl
	movb	%cl, 53(%rsp)
	movb	351(%rsp), %cl
	movb	%cl, 52(%rsp)
	movb	352(%rsp), %cl
	movb	%cl, 51(%rsp)
	movb	353(%rsp), %cl
	movb	%cl, 50(%rsp)
	movb	354(%rsp), %cl
	movb	%cl, 49(%rsp)
	movb	355(%rsp), %cl
	movb	%cl, 48(%rsp)
	movb	356(%rsp), %cl
	movb	%cl, 47(%rsp)
	movb	357(%rsp), %cl
	movb	%cl, 46(%rsp)
	movb	358(%rsp), %cl
	movb	%cl, 45(%rsp)
	movb	359(%rsp), %cl
	movb	%cl, 44(%rsp)
	movb	360(%rsp), %cl
	movb	%cl, 43(%rsp)
	movb	361(%rsp), %cl
	movb	%cl, 42(%rsp)
	movb	362(%rsp), %cl
	movb	%cl, 41(%rsp)
	movb	363(%rsp), %cl
	movb	%cl, 40(%rsp)
	movb	364(%rsp), %cl
	movb	%cl, 39(%rsp)
	movb	365(%rsp), %cl
	movb	%cl, 38(%rsp)
	movb	366(%rsp), %cl
	movb	%cl, 37(%rsp)
	movb	367(%rsp), %cl
	movb	368(%rsp), %dl
	movb	%dl, 163(%rsp)
	movb	369(%rsp), %dl
	movb	%dl, 162(%rsp)
	movb	370(%rsp), %dl
	movb	%dl, 161(%rsp)
	movb	371(%rsp), %dl
	movb	%dl, 160(%rsp)
	movb	372(%rsp), %dl
	movb	%dl, 159(%rsp)
	movb	373(%rsp), %dl
	movb	%dl, 158(%rsp)
	movb	374(%rsp), %dl
	movb	%dl, 157(%rsp)
	movb	375(%rsp), %dl
	movb	%dl, 156(%rsp)
	movb	376(%rsp), %dl
	movb	%dl, 155(%rsp)
	movb	377(%rsp), %dl
	movb	%dl, 154(%rsp)
	movb	378(%rsp), %dl
	movb	%dl, 153(%rsp)
	movb	379(%rsp), %dl
	movb	%dl, 152(%rsp)
	movb	380(%rsp), %dl
	movb	%dl, 151(%rsp)
	movb	381(%rsp), %dl
	movb	%dl, 150(%rsp)
	movb	382(%rsp), %dl
	movb	%dl, 149(%rsp)
	movb	383(%rsp), %dl
	movb	%dl, 148(%rsp)
	movb	384(%rsp), %dl
	movb	%dl, 147(%rsp)
	movb	385(%rsp), %dl
	movb	%dl, 146(%rsp)
	movb	386(%rsp), %dl
	movb	%dl, 145(%rsp)
	movb	387(%rsp), %dl
	movb	%dl, 144(%rsp)
	movb	388(%rsp), %dl
	movb	%dl, 143(%rsp)
	movb	389(%rsp), %dl
	movb	%dl, 142(%rsp)
	movb	390(%rsp), %dl
	movb	%dl, 141(%rsp)
	movb	391(%rsp), %dl
	movb	%dl, 140(%rsp)
	movb	392(%rsp), %dl
	movb	%dl, 139(%rsp)
	movb	393(%rsp), %dl
	movb	%dl, 138(%rsp)
	movb	394(%rsp), %dl
	movb	%dl, 137(%rsp)
	movb	395(%rsp), %dl
	movb	%dl, 136(%rsp)
	movb	396(%rsp), %dl
	movb	%dl, 135(%rsp)
	movb	397(%rsp), %dl
	movb	%dl, 134(%rsp)
	movb	398(%rsp), %dl
	movb	%dl, 133(%rsp)
	movb	399(%rsp), %dl
	movb	%dl, 132(%rsp)
	movb	400(%rsp), %dl
	movb	%dl, 131(%rsp)
	movb	401(%rsp), %dl
	movb	%dl, 130(%rsp)
	movb	402(%rsp), %dl
	movb	%dl, 129(%rsp)
	movb	403(%rsp), %dl
	movb	%dl, 128(%rsp)
	movb	404(%rsp), %dl
	movb	%dl, 127(%rsp)
	movb	405(%rsp), %dl
	movb	%dl, 126(%rsp)
	movb	406(%rsp), %dl
	movb	%dl, 125(%rsp)
	movb	407(%rsp), %dl
	movb	%dl, 124(%rsp)
	movb	408(%rsp), %dl
	movb	%dl, 123(%rsp)
	movb	409(%rsp), %dl
	movb	%dl, 122(%rsp)
	movb	410(%rsp), %dl
	movb	%dl, 121(%rsp)
	movb	411(%rsp), %dl
	movb	%dl, 120(%rsp)
	movb	412(%rsp), %dl
	movb	%dl, 119(%rsp)
	movb	413(%rsp), %dl
	movb	%dl, 118(%rsp)
	movb	414(%rsp), %dl
	movb	%dl, 117(%rsp)
	movb	415(%rsp), %dl
	movb	%dl, 116(%rsp)
	movb	416(%rsp), %dl
	movb	%dl, 115(%rsp)
	movb	417(%rsp), %dl
	movb	%dl, 114(%rsp)
	movb	418(%rsp), %dl
	movb	%dl, 113(%rsp)
	movb	419(%rsp), %dl
	movb	%dl, 112(%rsp)
	movb	420(%rsp), %dl
	movb	%dl, 111(%rsp)
	movb	421(%rsp), %dl
	movb	%dl, 110(%rsp)
	movb	422(%rsp), %dl
	movb	%dl, 109(%rsp)
	movb	423(%rsp), %dl
	movb	%dl, 108(%rsp)
	movb	424(%rsp), %dl
	movb	%dl, 107(%rsp)
	movb	425(%rsp), %dl
	movb	%dl, 106(%rsp)
	movb	426(%rsp), %dl
	movb	%dl, 105(%rsp)
	movb	427(%rsp), %dl
	movb	%dl, 104(%rsp)
	movb	428(%rsp), %dl
	movb	%dl, 103(%rsp)
	movb	429(%rsp), %dl
	movb	%dl, 102(%rsp)
	movb	430(%rsp), %dl
	movb	%dl, 101(%rsp)
	movb	431(%rsp), %dl
	movb	%dl, 100(%rsp)
	movb	432(%rsp), %dl
	movb	%dl, 227(%rsp)
	movb	433(%rsp), %dl
	movb	%dl, 226(%rsp)
	movb	434(%rsp), %dl
	movb	%dl, 225(%rsp)
	movb	435(%rsp), %dl
	movb	%dl, 224(%rsp)
	movb	436(%rsp), %dl
	movb	%dl, 223(%rsp)
	movb	437(%rsp), %dl
	movb	%dl, 222(%rsp)
	movb	438(%rsp), %dl
	movb	%dl, 221(%rsp)
	movb	439(%rsp), %dl
	movb	%dl, 220(%rsp)
	movb	440(%rsp), %dl
	movb	%dl, 219(%rsp)
	movb	441(%rsp), %dl
	movb	%dl, 218(%rsp)
	movb	442(%rsp), %dl
	movb	%dl, 217(%rsp)
	movb	443(%rsp), %dl
	movb	%dl, 216(%rsp)
	movb	444(%rsp), %dl
	movb	%dl, 215(%rsp)
	movb	445(%rsp), %dl
	movb	%dl, 214(%rsp)
	movb	446(%rsp), %dl
	movb	%dl, 213(%rsp)
	movb	447(%rsp), %dl
	movb	%dl, 212(%rsp)
	movb	448(%rsp), %dl
	movb	%dl, 211(%rsp)
	movb	449(%rsp), %dl
	movb	%dl, 210(%rsp)
	movb	450(%rsp), %dl
	movb	%dl, 209(%rsp)
	movb	451(%rsp), %dl
	movb	%dl, 208(%rsp)
	movb	452(%rsp), %dl
	movb	%dl, 207(%rsp)
	movb	453(%rsp), %dl
	movb	%dl, 206(%rsp)
	movb	454(%rsp), %dl
	movb	%dl, 205(%rsp)
	movb	455(%rsp), %dl
	movb	%dl, 204(%rsp)
	movb	456(%rsp), %dl
	movb	%dl, 203(%rsp)
	movb	457(%rsp), %dl
	movb	%dl, 202(%rsp)
	movb	458(%rsp), %dl
	movb	%dl, 201(%rsp)
	movb	459(%rsp), %dl
	movb	%dl, 200(%rsp)
	movb	460(%rsp), %dl
	movb	%dl, 199(%rsp)
	movb	461(%rsp), %dl
	movb	%dl, 198(%rsp)
	movb	462(%rsp), %dl
	movb	%dl, 197(%rsp)
	movb	463(%rsp), %dl
	movb	%dl, 196(%rsp)
	movb	464(%rsp), %dl
	movb	%dl, 195(%rsp)
	movb	465(%rsp), %dl
	movb	%dl, 194(%rsp)
	movb	466(%rsp), %dl
	movb	%dl, 193(%rsp)
	movb	467(%rsp), %dl
	movb	%dl, 192(%rsp)
	movb	468(%rsp), %dl
	movb	%dl, 191(%rsp)
	movb	469(%rsp), %dl
	movb	%dl, 190(%rsp)
	movb	470(%rsp), %dl
	movb	%dl, 189(%rsp)
	movb	471(%rsp), %dl
	movb	%dl, 188(%rsp)
	movb	472(%rsp), %dl
	movb	%dl, 187(%rsp)
	movb	473(%rsp), %dl
	movb	%dl, 186(%rsp)
	movb	474(%rsp), %dl
	movb	%dl, 185(%rsp)
	movb	475(%rsp), %dl
	movb	%dl, 184(%rsp)
	movb	476(%rsp), %dl
	movb	%dl, 183(%rsp)
	movb	477(%rsp), %dl
	movb	%dl, 182(%rsp)
	movb	478(%rsp), %dl
	movb	%dl, 181(%rsp)
	movb	479(%rsp), %dl
	movb	%dl, 180(%rsp)
	movb	480(%rsp), %dl
	movb	%dl, 179(%rsp)
	movb	481(%rsp), %dl
	movb	%dl, 178(%rsp)
	movb	482(%rsp), %dl
	movb	%dl, 177(%rsp)
	movb	483(%rsp), %dl
	movb	%dl, 176(%rsp)
	movb	484(%rsp), %dl
	movb	%dl, 175(%rsp)
	movb	485(%rsp), %dl
	movb	%dl, 174(%rsp)
	movb	486(%rsp), %dl
	movb	%dl, 173(%rsp)
	movb	487(%rsp), %dl
	movb	%dl, 172(%rsp)
	movb	488(%rsp), %dl
	movb	%dl, 171(%rsp)
	movb	489(%rsp), %dl
	movb	%dl, 170(%rsp)
	movb	490(%rsp), %dl
	movb	%dl, 169(%rsp)
	movb	491(%rsp), %dl
	movb	%dl, 168(%rsp)
	movb	492(%rsp), %dl
	movb	%dl, 167(%rsp)
	movb	493(%rsp), %dl
	movb	%dl, 166(%rsp)
	movb	494(%rsp), %dl
	movb	%dl, 165(%rsp)
	movb	495(%rsp), %dl
	movb	%dl, 164(%rsp)
	movb	496(%rsp), %r8b
	movb	497(%rsp), %r9b
	movb	498(%rsp), %r10b
	movb	499(%rsp), %r11b
	movb	500(%rsp), %bl
	movb	501(%rsp), %sil
	movb	502(%rsp), %dil
	movb	503(%rsp), %bpl
	movb	504(%rsp), %r14b
	movb	505(%rsp), %r15b
	movb	506(%rsp), %r12b
	movb	507(%rsp), %r13b
	movb	508(%rsp), %dl
	movb	%dl, 279(%rsp)
	movb	509(%rsp), %dl
	movb	%dl, 278(%rsp)
	movb	510(%rsp), %dl
	movb	%dl, 277(%rsp)
	movb	511(%rsp), %dl
	movb	%dl, 276(%rsp)
	movb	512(%rsp), %dl
	movb	%dl, 275(%rsp)
	movb	513(%rsp), %dl
	movb	%dl, 274(%rsp)
	movb	514(%rsp), %dl
	movb	%dl, 273(%rsp)
	movb	515(%rsp), %dl
	movb	%dl, 272(%rsp)
	movb	516(%rsp), %dl
	movb	%dl, 271(%rsp)
	movb	517(%rsp), %dl
	movb	%dl, 270(%rsp)
	movb	518(%rsp), %dl
	movb	%dl, 269(%rsp)
	movb	519(%rsp), %dl
	movb	%dl, 268(%rsp)
	movb	520(%rsp), %dl
	movb	%dl, 267(%rsp)
	movb	521(%rsp), %dl
	movb	%dl, 266(%rsp)
	movb	522(%rsp), %dl
	movb	%dl, 265(%rsp)
	movb	523(%rsp), %dl
	movb	%dl, 264(%rsp)
	movb	524(%rsp), %dl
	movb	%dl, 263(%rsp)
	movb	525(%rsp), %dl
	movb	%dl, 262(%rsp)
	movb	526(%rsp), %dl
	movb	%dl, 261(%rsp)
	movb	527(%rsp), %dl
	movb	%dl, 260(%rsp)
	movb	528(%rsp), %dl
	movb	%dl, 259(%rsp)
	movb	529(%rsp), %dl
	movb	%dl, 258(%rsp)
	movb	530(%rsp), %dl
	movb	%dl, 257(%rsp)
	movb	531(%rsp), %dl
	movb	%dl, 256(%rsp)
	movb	532(%rsp), %dl
	movb	%dl, 255(%rsp)
	movb	533(%rsp), %dl
	movb	%dl, 254(%rsp)
	movb	534(%rsp), %dl
	movb	%dl, 253(%rsp)
	movb	535(%rsp), %dl
	movb	%dl, 252(%rsp)
	movb	536(%rsp), %dl
	movb	%dl, 251(%rsp)
	movb	537(%rsp), %dl
	movb	%dl, 250(%rsp)
	movb	538(%rsp), %dl
	movb	%dl, 249(%rsp)
	movb	539(%rsp), %dl
	movb	%dl, 248(%rsp)
	movb	540(%rsp), %dl
	movb	%dl, 247(%rsp)
	movb	541(%rsp), %dl
	movb	%dl, 246(%rsp)
	movb	542(%rsp), %dl
	movb	%dl, 245(%rsp)
	movb	543(%rsp), %dl
	movb	%dl, 244(%rsp)
	movb	544(%rsp), %dl
	movb	%dl, 243(%rsp)
	movb	545(%rsp), %dl
	movb	%dl, 242(%rsp)
	movb	546(%rsp), %dl
	movb	%dl, 241(%rsp)
	movb	547(%rsp), %dl
	movb	%dl, 240(%rsp)
	movb	548(%rsp), %dl
	movb	%dl, 239(%rsp)
	movb	549(%rsp), %dl
	movb	%dl, 238(%rsp)
	movb	550(%rsp), %dl
	movb	%dl, 237(%rsp)
	movb	551(%rsp), %dl
	movb	%dl, 236(%rsp)
	movb	552(%rsp), %dl
	movb	%dl, 235(%rsp)
	movb	553(%rsp), %dl
	movb	%dl, 234(%rsp)
	movb	554(%rsp), %dl
	movb	%dl, 233(%rsp)
	movb	555(%rsp), %dl
	movb	%dl, 232(%rsp)
	movb	556(%rsp), %dl
	movb	%dl, 231(%rsp)
	movb	557(%rsp), %dl
	movb	%dl, 230(%rsp)
	movb	558(%rsp), %dl
	movb	%dl, 229(%rsp)
	movb	559(%rsp), %dl
	movb	%dl, 228(%rsp)
	movq	560(%rsp), %rdx
	movq	%rdx, 280(%rsp)
	movq	568(%rsp), %rdx
	movb	%cl, 63(%rax)
	movb	37(%rsp), %cl
	movb	%cl, 62(%rax)
	movb	38(%rsp), %cl
	movb	%cl, 61(%rax)
	movb	39(%rsp), %cl
	movb	%cl, 60(%rax)
	movb	40(%rsp), %cl
	movb	%cl, 59(%rax)
	movb	41(%rsp), %cl
	movb	%cl, 58(%rax)
	movb	42(%rsp), %cl
	movb	%cl, 57(%rax)
	movb	43(%rsp), %cl
	movb	%cl, 56(%rax)
	movb	44(%rsp), %cl
	movb	%cl, 55(%rax)
	movb	45(%rsp), %cl
	movb	%cl, 54(%rax)
	movb	46(%rsp), %cl
	movb	%cl, 53(%rax)
	movb	47(%rsp), %cl
	movb	%cl, 52(%rax)
	movb	48(%rsp), %cl
	movb	%cl, 51(%rax)
	movb	49(%rsp), %cl
	movb	%cl, 50(%rax)
	movb	50(%rsp), %cl
	movb	%cl, 49(%rax)
	movb	51(%rsp), %cl
	movb	%cl, 48(%rax)
	movb	52(%rsp), %cl
	movb	%cl, 47(%rax)
	movb	53(%rsp), %cl
	movb	%cl, 46(%rax)
	movb	54(%rsp), %cl
	movb	%cl, 45(%rax)
	movb	55(%rsp), %cl
	movb	%cl, 44(%rax)
	movb	56(%rsp), %cl
	movb	%cl, 43(%rax)
	movb	57(%rsp), %cl
	movb	%cl, 42(%rax)
	movb	58(%rsp), %cl
	movb	%cl, 41(%rax)
	movb	59(%rsp), %cl
	movb	%cl, 40(%rax)
	movb	60(%rsp), %cl
	movb	%cl, 39(%rax)
	movb	61(%rsp), %cl
	movb	%cl, 38(%rax)
	movb	62(%rsp), %cl
	movb	%cl, 37(%rax)
	movb	63(%rsp), %cl
	movb	%cl, 36(%rax)
	movb	64(%rsp), %cl
	movb	%cl, 35(%rax)
	movb	65(%rsp), %cl
	movb	%cl, 34(%rax)
	movb	66(%rsp), %cl
	movb	%cl, 33(%rax)
	movb	67(%rsp), %cl
	movb	%cl, 32(%rax)
	movb	68(%rsp), %cl
	movb	%cl, 31(%rax)
	movb	69(%rsp), %cl
	movb	%cl, 30(%rax)
	movb	70(%rsp), %cl
	movb	%cl, 29(%rax)
	movb	71(%rsp), %cl
	movb	%cl, 28(%rax)
	movb	72(%rsp), %cl
	movb	%cl, 27(%rax)
	movb	73(%rsp), %cl
	movb	%cl, 26(%rax)
	movb	74(%rsp), %cl
	movb	%cl, 25(%rax)
	movb	75(%rsp), %cl
	movb	%cl, 24(%rax)
	movb	76(%rsp), %cl
	movb	%cl, 23(%rax)
	movb	77(%rsp), %cl
	movb	%cl, 22(%rax)
	movb	78(%rsp), %cl
	movb	%cl, 21(%rax)
	movb	79(%rsp), %cl
	movb	%cl, 20(%rax)
	movb	80(%rsp), %cl
	movb	%cl, 19(%rax)
	movb	81(%rsp), %cl
	movb	%cl, 18(%rax)
	movb	82(%rsp), %cl
	movb	%cl, 17(%rax)
	movb	83(%rsp), %cl
	movb	%cl, 16(%rax)
	movb	84(%rsp), %cl
	movb	%cl, 15(%rax)
	movb	85(%rsp), %cl
	movb	%cl, 14(%rax)
	movb	86(%rsp), %cl
	movb	%cl, 13(%rax)
	movb	87(%rsp), %cl
	movb	%cl, 12(%rax)
	movb	88(%rsp), %cl
	movb	%cl, 11(%rax)
	movb	89(%rsp), %cl
	movb	%cl, 10(%rax)
	movb	90(%rsp), %cl
	movb	%cl, 9(%rax)
	movb	91(%rsp), %cl
	movb	%cl, 8(%rax)
	movb	92(%rsp), %cl
	movb	%cl, 7(%rax)
	movb	93(%rsp), %cl
	movb	%cl, 6(%rax)
	movb	94(%rsp), %cl
	movb	%cl, 5(%rax)
	movb	95(%rsp), %cl
	movb	%cl, 4(%rax)
	movb	96(%rsp), %cl
	movb	%cl, 3(%rax)
	movb	97(%rsp), %cl
	movb	%cl, 2(%rax)
	movb	98(%rsp), %cl
	movb	%cl, 1(%rax)
	movb	99(%rsp), %cl
	movb	%cl, (%rax)
	movb	100(%rsp), %cl
	movb	%cl, 127(%rax)
	movb	101(%rsp), %cl
	movb	%cl, 126(%rax)
	movb	102(%rsp), %cl
	movb	%cl, 125(%rax)
	movb	103(%rsp), %cl
	movb	%cl, 124(%rax)
	movb	104(%rsp), %cl
	movb	%cl, 123(%rax)
	movb	105(%rsp), %cl
	movb	%cl, 122(%rax)
	movb	106(%rsp), %cl
	movb	%cl, 121(%rax)
	movb	107(%rsp), %cl
	movb	%cl, 120(%rax)
	movb	108(%rsp), %cl
	movb	%cl, 119(%rax)
	movb	109(%rsp), %cl
	movb	%cl, 118(%rax)
	movb	110(%rsp), %cl
	movb	%cl, 117(%rax)
	movb	111(%rsp), %cl
	movb	%cl, 116(%rax)
	movb	112(%rsp), %cl
	movb	%cl, 115(%rax)
	movb	113(%rsp), %cl
	movb	%cl, 114(%rax)
	movb	114(%rsp), %cl
	movb	%cl, 113(%rax)
	movb	115(%rsp), %cl
	movb	%cl, 112(%rax)
	movb	116(%rsp), %cl
	movb	%cl, 111(%rax)
	movb	117(%rsp), %cl
	movb	%cl, 110(%rax)
	movb	118(%rsp), %cl
	movb	%cl, 109(%rax)
	movb	119(%rsp), %cl
	movb	%cl, 108(%rax)
	movb	120(%rsp), %cl
	movb	%cl, 107(%rax)
	movb	121(%rsp), %cl
	movb	%cl, 106(%rax)
	movb	122(%rsp), %cl
	movb	%cl, 105(%rax)
	movb	123(%rsp), %cl
	movb	%cl, 104(%rax)
	movb	124(%rsp), %cl
	movb	%cl, 103(%rax)
	movb	125(%rsp), %cl
	movb	%cl, 102(%rax)
	movb	126(%rsp), %cl
	movb	%cl, 101(%rax)
	movb	127(%rsp), %cl
	movb	%cl, 100(%rax)
	movb	128(%rsp), %cl
	movb	%cl, 99(%rax)
	movb	129(%rsp), %cl
	movb	%cl, 98(%rax)
	movb	130(%rsp), %cl
	movb	%cl, 97(%rax)
	movb	131(%rsp), %cl
	movb	%cl, 96(%rax)
	movb	132(%rsp), %cl
	movb	%cl, 95(%rax)
	movb	133(%rsp), %cl
	movb	%cl, 94(%rax)
	movb	134(%rsp), %cl
	movb	%cl, 93(%rax)
	movb	135(%rsp), %cl
	movb	%cl, 92(%rax)
	movb	136(%rsp), %cl
	movb	%cl, 91(%rax)
	movb	137(%rsp), %cl
	movb	%cl, 90(%rax)
	movb	138(%rsp), %cl
	movb	%cl, 89(%rax)
	movb	139(%rsp), %cl
	movb	%cl, 88(%rax)
	movb	140(%rsp), %cl
	movb	%cl, 87(%rax)
	movb	141(%rsp), %cl
	movb	%cl, 86(%rax)
	movb	142(%rsp), %cl
	movb	%cl, 85(%rax)
	movb	143(%rsp), %cl
	movb	%cl, 84(%rax)
	movb	144(%rsp), %cl
	movb	%cl, 83(%rax)
	movb	145(%rsp), %cl
	movb	%cl, 82(%rax)
	movb	146(%rsp), %cl
	movb	%cl, 81(%rax)
	movb	147(%rsp), %cl
	movb	%cl, 80(%rax)
	movb	148(%rsp), %cl
	movb	%cl, 79(%rax)
	movb	149(%rsp), %cl
	movb	%cl, 78(%rax)
	movb	150(%rsp), %cl
	movb	%cl, 77(%rax)
	movb	151(%rsp), %cl
	movb	%cl, 76(%rax)
	movb	152(%rsp), %cl
	movb	%cl, 75(%rax)
	movb	153(%rsp), %cl
	movb	%cl, 74(%rax)
	movb	154(%rsp), %cl
	movb	%cl, 73(%rax)
	movb	155(%rsp), %cl
	movb	%cl, 72(%rax)
	movb	156(%rsp), %cl
	movb	%cl, 71(%rax)
	movb	157(%rsp), %cl
	movb	%cl, 70(%rax)
	movb	158(%rsp), %cl
	movb	%cl, 69(%rax)
	movb	159(%rsp), %cl
	movb	%cl, 68(%rax)
	movb	160(%rsp), %cl
	movb	%cl, 67(%rax)
	movb	161(%rsp), %cl
	movb	%cl, 66(%rax)
	movb	162(%rsp), %cl
	movb	%cl, 65(%rax)
	movb	163(%rsp), %cl
	movb	%cl, 64(%rax)
	movb	164(%rsp), %cl
	movb	%cl, 191(%rax)
	movb	165(%rsp), %cl
	movb	%cl, 190(%rax)
	movb	166(%rsp), %cl
	movb	%cl, 189(%rax)
	movb	167(%rsp), %cl
	movb	%cl, 188(%rax)
	movb	168(%rsp), %cl
	movb	%cl, 187(%rax)
	movb	169(%rsp), %cl
	movb	%cl, 186(%rax)
	movb	170(%rsp), %cl
	movb	%cl, 185(%rax)
	movb	171(%rsp), %cl
	movb	%cl, 184(%rax)
	movb	172(%rsp), %cl
	movb	%cl, 183(%rax)
	movb	173(%rsp), %cl
	movb	%cl, 182(%rax)
	movb	174(%rsp), %cl
	movb	%cl, 181(%rax)
	movb	175(%rsp), %cl
	movb	%cl, 180(%rax)
	movb	176(%rsp), %cl
	movb	%cl, 179(%rax)
	movb	177(%rsp), %cl
	movb	%cl, 178(%rax)
	movb	178(%rsp), %cl
	movb	%cl, 177(%rax)
	movb	179(%rsp), %cl
	movb	%cl, 176(%rax)
	movb	180(%rsp), %cl
	movb	%cl, 175(%rax)
	movb	181(%rsp), %cl
	movb	%cl, 174(%rax)
	movb	182(%rsp), %cl
	movb	%cl, 173(%rax)
	movb	183(%rsp), %cl
	movb	%cl, 172(%rax)
	movb	184(%rsp), %cl
	movb	%cl, 171(%rax)
	movb	185(%rsp), %cl
	movb	%cl, 170(%rax)
	movb	186(%rsp), %cl
	movb	%cl, 169(%rax)
	movb	187(%rsp), %cl
	movb	%cl, 168(%rax)
	movb	188(%rsp), %cl
	movb	%cl, 167(%rax)
	movb	189(%rsp), %cl
	movb	%cl, 166(%rax)
	movb	190(%rsp), %cl
	movb	%cl, 165(%rax)
	movb	191(%rsp), %cl
	movb	%cl, 164(%rax)
	movb	192(%rsp), %cl
	movb	%cl, 163(%rax)
	movb	193(%rsp), %cl
	movb	%cl, 162(%rax)
	movb	194(%rsp), %cl
	movb	%cl, 161(%rax)
	movb	195(%rsp), %cl
	movb	%cl, 160(%rax)
	movb	196(%rsp), %cl
	movb	%cl, 159(%rax)
	movb	197(%rsp), %cl
	movb	%cl, 158(%rax)
	movb	198(%rsp), %cl
	movb	%cl, 157(%rax)
	movb	199(%rsp), %cl
	movb	%cl, 156(%rax)
	movb	200(%rsp), %cl
	movb	%cl, 155(%rax)
	movb	201(%rsp), %cl
	movb	%cl, 154(%rax)
	movb	202(%rsp), %cl
	movb	%cl, 153(%rax)
	movb	203(%rsp), %cl
	movb	%cl, 152(%rax)
	movb	204(%rsp), %cl
	movb	%cl, 151(%rax)
	movb	205(%rsp), %cl
	movb	%cl, 150(%rax)
	movb	206(%rsp), %cl
	movb	%cl, 149(%rax)
	movb	207(%rsp), %cl
	movb	%cl, 148(%rax)
	movb	208(%rsp), %cl
	movb	%cl, 147(%rax)
	movb	209(%rsp), %cl
	movb	%cl, 146(%rax)
	movb	210(%rsp), %cl
	movb	%cl, 145(%rax)
	movb	211(%rsp), %cl
	movb	%cl, 144(%rax)
	movb	212(%rsp), %cl
	movb	%cl, 143(%rax)
	movb	213(%rsp), %cl
	movb	%cl, 142(%rax)
	movb	214(%rsp), %cl
	movb	%cl, 141(%rax)
	movb	215(%rsp), %cl
	movb	%cl, 140(%rax)
	movb	216(%rsp), %cl
	movb	%cl, 139(%rax)
	movb	217(%rsp), %cl
	movb	%cl, 138(%rax)
	movb	218(%rsp), %cl
	movb	%cl, 137(%rax)
	movb	219(%rsp), %cl
	movb	%cl, 136(%rax)
	movb	220(%rsp), %cl
	movb	%cl, 135(%rax)
	movb	221(%rsp), %cl
	movb	%cl, 134(%rax)
	movb	222(%rsp), %cl
	movb	%cl, 133(%rax)
	movb	223(%rsp), %cl
	movb	%cl, 132(%rax)
	movb	224(%rsp), %cl
	movb	%cl, 131(%rax)
	movb	225(%rsp), %cl
	movb	%cl, 130(%rax)
	movb	226(%rsp), %cl
	movb	%cl, 129(%rax)
	movb	227(%rsp), %cl
	movb	%cl, 128(%rax)
	movb	228(%rsp), %cl
	movb	%cl, 255(%rax)
	movb	229(%rsp), %cl
	movb	%cl, 254(%rax)
	movb	230(%rsp), %cl
	movb	%cl, 253(%rax)
	movb	231(%rsp), %cl
	movb	%cl, 252(%rax)
	movb	232(%rsp), %cl
	movb	%cl, 251(%rax)
	movb	233(%rsp), %cl
	movb	%cl, 250(%rax)
	movb	234(%rsp), %cl
	movb	%cl, 249(%rax)
	movb	235(%rsp), %cl
	movb	%cl, 248(%rax)
	movb	236(%rsp), %cl
	movb	%cl, 247(%rax)
	movb	237(%rsp), %cl
	movb	%cl, 246(%rax)
	movb	238(%rsp), %cl
	movb	%cl, 245(%rax)
	movb	239(%rsp), %cl
	movb	%cl, 244(%rax)
	movb	240(%rsp), %cl
	movb	%cl, 243(%rax)
	movb	241(%rsp), %cl
	movb	%cl, 242(%rax)
	movb	242(%rsp), %cl
	movb	%cl, 241(%rax)
	movb	243(%rsp), %cl
	movb	%cl, 240(%rax)
	movb	244(%rsp), %cl
	movb	%cl, 239(%rax)
	movb	245(%rsp), %cl
	movb	%cl, 238(%rax)
	movb	246(%rsp), %cl
	movb	%cl, 237(%rax)
	movb	247(%rsp), %cl
	movb	%cl, 236(%rax)
	movb	248(%rsp), %cl
	movb	%cl, 235(%rax)
	movb	249(%rsp), %cl
	movb	%cl, 234(%rax)
	movb	250(%rsp), %cl
	movb	%cl, 233(%rax)
	movb	251(%rsp), %cl
	movb	%cl, 232(%rax)
	movb	252(%rsp), %cl
	movb	%cl, 231(%rax)
	movb	253(%rsp), %cl
	movb	%cl, 230(%rax)
	movb	254(%rsp), %cl
	movb	%cl, 229(%rax)
	movb	255(%rsp), %cl
	movb	%cl, 228(%rax)
	movb	256(%rsp), %cl
	movb	%cl, 227(%rax)
	movb	257(%rsp), %cl
	movb	%cl, 226(%rax)
	movb	258(%rsp), %cl
	movb	%cl, 225(%rax)
	movb	259(%rsp), %cl
	movb	%cl, 224(%rax)
	movb	260(%rsp), %cl
	movb	%cl, 223(%rax)
	movb	261(%rsp), %cl
	movb	%cl, 222(%rax)
	movb	262(%rsp), %cl
	movb	%cl, 221(%rax)
	movb	263(%rsp), %cl
	movb	%cl, 220(%rax)
	movb	264(%rsp), %cl
	movb	%cl, 219(%rax)
	movb	265(%rsp), %cl
	movb	%cl, 218(%rax)
	movb	266(%rsp), %cl
	movb	%cl, 217(%rax)
	movb	267(%rsp), %cl
	movb	%cl, 216(%rax)
	movb	268(%rsp), %cl
	movb	%cl, 215(%rax)
	movb	269(%rsp), %cl
	movb	%cl, 214(%rax)
	movb	270(%rsp), %cl
	movb	%cl, 213(%rax)
	movb	271(%rsp), %cl
	movb	%cl, 212(%rax)
	movb	272(%rsp), %cl
	movb	%cl, 211(%rax)
	movb	273(%rsp), %cl
	movb	%cl, 210(%rax)
	movb	274(%rsp), %cl
	movb	%cl, 209(%rax)
	movb	275(%rsp), %cl
	movb	%cl, 208(%rax)
	movb	276(%rsp), %cl
	movb	%cl, 207(%rax)
	movb	277(%rsp), %cl
	movb	%cl, 206(%rax)
	movb	278(%rsp), %cl
	movb	%cl, 205(%rax)
	movb	279(%rsp), %cl
	movb	%cl, 204(%rax)
	movq	280(%rsp), %rcx
	movb	%r13b, 203(%rax)
	movb	%r12b, 202(%rax)
	movb	%r15b, 201(%rax)
	movb	%r14b, 200(%rax)
	movb	%bpl, 199(%rax)
	movb	%dil, 198(%rax)
	movb	%sil, 197(%rax)
	movb	%bl, 196(%rax)
	movb	%r11b, 195(%rax)
	movb	%r10b, 194(%rax)
	movb	%r9b, 193(%rax)
	movb	%r8b, 192(%rax)
	movq	%rdx, 264(%rax)
	movq	%rcx, 256(%rax)
	addq	$616, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB3_4:
	.cv_loc	3 3 56 2
	movq	600(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 600(%rsp)
	jmp	.LBB3_1
.LBB3_5:
	.cv_loc	3 3 51 4
	movq	$0, 600(%rsp)
	.cv_loc	3 3 52 4
	movq	592(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 592(%rsp)
	.cv_loc	3 3 53 4
	leaq	608(%rsp), %rcx
	movl	$272, %edx
	callq	mem_alloc
	movq	%rax, %rcx
	movq	584(%rsp), %rax
	movq	%rcx, 264(%rax)
	.cv_loc	3 3 54 4
	movq	584(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 584(%rsp)
.LBB3_6:
	.cv_loc	3 3 56 2
	jmp	.LBB3_4
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
	.cv_loc	4 3 114 0
.seh_proc compare
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	96(%rsp), %rax
	movq	%rcx, (%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	movq	%r8, 24(%rsp)
	movq	%rdx, 16(%rsp)
	vmovdqa	%xmm0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	%r9, 32(%rsp)
.Ltmp8:
	.cv_loc	4 3 115 2
	movq	24(%rsp), %rax
	cmpq	40(%rsp), %rax
	.cv_loc	4 3 118 2
	je	.LBB4_2
	.cv_loc	4 3 116 6
	xorl	%eax, %eax
	addq	$56, %rsp
	retq
.LBB4_2:
	.cv_loc	4 3 118 2
	movq	$0, 48(%rsp)
	movq	$0, 48(%rsp)
.LBB4_3:
	movq	48(%rsp), %rax
	cmpq	24(%rsp), %rax
	jge	.LBB4_5
	.cv_loc	4 3 119 3
	movq	48(%rsp), %rcx
	movq	16(%rsp), %rax
	movb	(%rax,%rcx), %al
	movq	48(%rsp), %rdx
	movq	32(%rsp), %rcx
	cmpb	(%rcx,%rdx), %al
	jne	.LBB4_7
	jmp	.LBB4_8
.LBB4_5:
	.cv_loc	4 3 120 5
	movb	$1, %al
	addq	$56, %rsp
	retq
.LBB4_6:
	.cv_loc	4 3 119 3
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB4_3
.LBB4_7:
	.cv_loc	4 3 119 38
	xorl	%eax, %eax
	addq	$56, %rsp
	retq
.LBB4_8:
	.cv_loc	4 3 119 3
	jmp	.LBB4_6
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
	.cv_loc	5 3 124 0
.seh_proc to_string
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%rdx, 40(%rsp)
.Ltmp10:
	.cv_loc	5 3 125 2
	movq	40(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	len
	movq	$0, 56(%rsp)
	movq	%rax, 56(%rsp)
	.cv_loc	5 3 126 2
	movq	56(%rsp), %rdx
	leaq	64(%rsp), %rcx
	callq	mem_alloc
	movq	$0, 72(%rsp)
	movq	%rax, 72(%rsp)
	.cv_loc	5 3 127 6
	movq	72(%rsp), %rdx
	movq	40(%rsp), %r8
	movq	56(%rsp), %r9
	leaq	80(%rsp), %rcx
	callq	copy
	.cv_loc	5 3 128 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 96(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 104(%rsp)
	.cv_loc	5 3 129 5
	movq	32(%rsp), %rax
	movq	(%rax), %rax
	movq	96(%rsp), %rcx
	movq	104(%rsp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, (%rax)
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
	.cv_loc	6 3 133 0
.seh_proc terminate_string
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
.Ltmp12:
	.cv_loc	6 3 134 2
	vmovdqa	%xmm0, 64(%rsp)
	.cv_loc	6 3 135 2
	movq	56(%rsp), %rax
	incq	%rax
	movq	%rax, 72(%rsp)
	.cv_loc	6 3 136 2
	movq	72(%rsp), %rdx
	leaq	80(%rsp), %rcx
	callq	mem_alloc
	movq	%rax, 64(%rsp)
	.cv_loc	6 3 137 6
	movq	64(%rsp), %rdx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r9
	leaq	96(%rsp), %rcx
	callq	copy
	.cv_loc	6 3 138 2
	movq	64(%rsp), %rax
	movq	72(%rsp), %rcx
	movb	$0, (%rax,%rcx)
	.cv_loc	6 3 139 5
	movq	32(%rsp), %rax
	movq	(%rax), %rax
	movq	64(%rsp), %rcx
	movq	72(%rsp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, (%rax)
	addq	$104, %rsp
	retq
.Ltmp13:
.Lfunc_end6:
	.seh_endproc

	.def	parse_format;
	.scl	2;
	.type	32;
	.endef
	.globl	parse_format
	.p2align	4, 0x90
parse_format:
.Lfunc_begin7:
	.cv_func_id 7
	.cv_loc	7 3 144 0
.seh_proc parse_format
	subq	$456, %rsp
	.seh_stackalloc 456
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 64(%rsp)
	movq	%r8, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	$0, 88(%rsp)
	movq	%r9, 88(%rsp)
.Ltmp14:
	.cv_loc	7 3 145 2
	leaq	112(%rsp), %rcx
	xorl	%edx, %edx
	movl	$272, %r8d
	callq	memset
	leaq	112(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	96(%rsp), %rcx
	leaq	.L__unnamed_7(%rip), %rdx
	callq	init_builder
	.cv_loc	7 3 146 2
	movq	$0, 384(%rsp)
	movq	$0, 384(%rsp)
	.cv_loc	7 3 147 2
	movq	$0, 392(%rsp)
	movq	$0, 392(%rsp)
.LBB7_1:
	movq	392(%rsp), %rax
	cmpq	72(%rsp), %rax
	jge	.LBB7_3
	.cv_loc	7 3 148 3
	movq	64(%rsp), %rcx
	movq	72(%rsp), %rdx
	movq	392(%rsp), %r8
	callq	"overload[]"
	cmpb	$37, %al
	.cv_loc	7 3 154 2
	je	.LBB7_5
	jmp	.LBB7_7
.LBB7_3:
	.cv_loc	7 3 155 2
	leaq	112(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	movb	$10, %dl
	callq	"overload[x]=.10"
	movq	40(%rsp), %rdx
	.cv_loc	7 3 156 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 432(%rsp)
	leaq	432(%rsp), %rax
	movq	%rax, 416(%rsp)
	leaq	416(%rsp), %rcx
	callq	builder_to_string
	.cv_loc	7 3 157 5
	movq	48(%rsp), %rax
	movq	(%rax), %rax
	movq	432(%rsp), %rcx
	movq	440(%rsp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, (%rax)
	addq	$456, %rsp
	retq
.LBB7_4:
	.cv_loc	7 3 154 2
	movq	392(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 392(%rsp)
	jmp	.LBB7_1
.LBB7_5:
	.cv_loc	7 3 149 4
	movq	384(%rsp), %rdx
	movq	88(%rsp), %rcx
	shlq	$4, %rdx
	movq	(%rcx,%rdx), %rax
	movq	8(%rcx,%rdx), %rcx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 400(%rsp)
	movq	%rcx, 408(%rsp)
	movq	%rax, 400(%rsp)
	.cv_loc	7 3 150 4
	movq	384(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 384(%rsp)
.LBB7_6:
	.cv_loc	7 3 154 2
	jmp	.LBB7_4
.LBB7_7:
	.cv_loc	7 3 152 4
	movq	64(%rsp), %rcx
	movq	72(%rsp), %rdx
	movq	392(%rsp), %r8
	callq	"overload[]"
	movb	%al, %dl
	leaq	112(%rsp), %rcx
	callq	"overload[x]=.10"
	.cv_loc	7 3 153 3
	jmp	.LBB7_6
.Ltmp15:
.Lfunc_end7:
	.seh_endproc

	.def	"print!@* u8";
	.scl	2;
	.type	32;
	.endef
	.globl	"print!@* u8"
	.p2align	4, 0x90
"print!@* u8":
.Lfunc_begin8:
	.cv_func_id 8
	.cv_loc	8 3 161 0
.seh_proc "print!@* u8"
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	%rdx, 56(%rsp)
.Ltmp16:
	.cv_loc	8 3 162 2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovdqa	%xmm0, 80(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	56(%rsp), %rdx
	leaq	64(%rsp), %rcx
	callq	to_string
	vmovaps	32(%rsp), %xmm0
	.cv_loc	8 3 163 2
	movq	$0, 104(%rsp)
	movq	$0, 104(%rsp)
	leaq	160(%rsp), %rax
	.cv_loc	8 3 164 15
	movq	%rax, 104(%rsp)
	.cv_loc	8 3 165 2
	vmovdqa	%xmm0, 128(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	80(%rsp), %rdx
	movq	88(%rsp), %r8
	movq	104(%rsp), %r9
	leaq	112(%rsp), %rcx
	callq	parse_format
	.cv_loc	8 3 167 2
	leaq	144(%rsp), %rcx
	callq	get_stdout
	movq	$0, 152(%rsp)
	movq	%rax, 152(%rsp)
	.cv_loc	8 3 168 12
	movq	152(%rsp), %rdx
	movq	128(%rsp), %r8
	movq	136(%rsp), %rax
	movl	%eax, %r9d
	leaq	160(%rsp), %rcx
	callq	write_file
	.cv_loc	8 3 169 1
	nop
	addq	$168, %rsp
	retq
.Ltmp17:
.Lfunc_end8:
	.seh_endproc

	.def	"print!@string";
	.scl	2;
	.type	32;
	.endef
	.globl	"print!@string"
	.p2align	4, 0x90
"print!@string":
.Lfunc_begin9:
	.cv_func_id 9
	.cv_loc	9 3 172 0
.seh_proc "print!@string"
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%r9, 168(%rsp)
	movq	%rcx, 32(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
.Ltmp18:
	.cv_loc	9 3 173 2
	movq	$0, 72(%rsp)
	movq	$0, 72(%rsp)
	leaq	168(%rsp), %rax
	.cv_loc	9 3 174 15
	movq	%rax, 72(%rsp)
	.cv_loc	9 3 175 2
	vmovdqa	%xmm0, 96(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	48(%rsp), %rdx
	movq	56(%rsp), %r8
	movq	72(%rsp), %r9
	leaq	80(%rsp), %rcx
	callq	parse_format
	leaq	112(%rsp), %rcx
	.cv_loc	9 3 177 2
	callq	get_stdout
	movq	$0, 120(%rsp)
	movq	%rax, 120(%rsp)
	.cv_loc	9 3 178 12
	movq	120(%rsp), %rdx
	movq	96(%rsp), %r8
	movl	104(%rsp), %r9d
	leaq	128(%rsp), %rcx
	callq	write_file
	.cv_loc	9 3 179 1
	nop
	addq	$136, %rsp
	retq
.Ltmp19:
.Lfunc_end9:
	.seh_endproc

	.def	copy;
	.scl	2;
	.type	32;
	.endef
	.globl	copy
	.p2align	4, 0x90
copy:
.Lfunc_begin10:
	.cv_func_id 10
	.cv_loc	10 3 183 0
.seh_proc copy
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rdx, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	%r8, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%r9, 24(%rsp)
.Ltmp20:
	.cv_loc	10 3 184 2
	movq	8(%rsp), %rax
	movq	$0, 32(%rsp)
	movq	%rax, 32(%rsp)
	.cv_loc	10 3 185 2
	movq	16(%rsp), %rax
	movq	$0, 40(%rsp)
	movq	%rax, 40(%rsp)
	.cv_loc	10 3 186 2
	movq	$0, 48(%rsp)
	movq	$0, 48(%rsp)
.LBB10_1:
	movq	48(%rsp), %rax
	cmpq	24(%rsp), %rax
	jge	.LBB10_3
	.cv_loc	10 3 188 3
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movb	(%rax,%rcx), %dl
	movq	48(%rsp), %rcx
	movq	32(%rsp), %rax
	movb	%dl, (%rax,%rcx)
	.cv_loc	10 3 189 2
	jmp	.LBB10_4
.LBB10_3:
	.cv_loc	10 3 190 1
	addq	$56, %rsp
	retq
.LBB10_4:
	.cv_loc	10 3 189 2
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB10_1
.Ltmp21:
.Lfunc_end10:
	.seh_endproc

	.def	len;
	.scl	2;
	.type	32;
	.endef
	.globl	len
	.p2align	4, 0x90
len:
.Lfunc_begin11:
	.cv_func_id 11
	.cv_loc	11 3 193 0
.seh_proc len
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rdx, 8(%rsp)
.Ltmp22:
	.cv_loc	11 3 194 2
	movq	$0, 16(%rsp)
	movq	$0, 16(%rsp)
	.cv_loc	11 3 195 2
	movq	$0, 16(%rsp)
.LBB11_1:
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rax
	cmpb	$0, (%rax,%rcx)
	je	.LBB11_3
	.cv_loc	11 3 195 47
	jmp	.LBB11_4
.LBB11_3:
	.cv_loc	11 3 196 5
	movq	16(%rsp), %rax
	addq	$24, %rsp
	retq
.LBB11_4:
	.cv_loc	11 3 195 47
	movq	16(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB11_1
.Ltmp23:
.Lfunc_end11:
	.seh_endproc

	.def	open_file;
	.scl	2;
	.type	32;
	.endef
	.globl	open_file
	.p2align	4, 0x90
open_file:
.Lfunc_begin12:
	.cv_func_id 12
	.cv_file	4 "W:\\Apocalypse\\Standard\\Windows.apoc"
	.cv_loc	12 4 27 0
.seh_proc open_file
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	%rdx, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	%r8, 80(%rsp)
.Ltmp24:
	.cv_loc	12 4 28 2
	movq	$0, 88(%rsp)
	movq	$0, 88(%rsp)
	.cv_loc	12 4 29 2
	movq	80(%rsp), %rax
	andq	$1, %rax
	.cv_loc	12 4 36 1
	testb	$1, %al
	je	.LBB12_6
	.cv_loc	12 4 29 41
	movq	88(%rsp), %rax
	orq	$1179785, %rax
	movq	%rax, 88(%rsp)
	.cv_loc	12 4 30 2
	movq	80(%rsp), %rax
	andq	$1, %rax
	.cv_loc	12 4 36 1
	testb	$1, %al
	je	.LBB12_6
	.cv_loc	12 4 30 41
	movq	88(%rsp), %rax
	orq	$1179926, %rax
	movq	%rax, 88(%rsp)
	.cv_loc	12 4 31 2
	movq	80(%rsp), %rax
	andq	$2, %rax
	.cv_loc	12 4 36 1
	testb	$1, %al
	je	.LBB12_6
	.cv_loc	12 4 31 41
	movq	88(%rsp), %rax
	orq	$1179808, %rax
	movq	%rax, 88(%rsp)
.LBB12_6:
	.cv_loc	12 4 32 2
	movq	72(%rsp), %rcx
	movq	88(%rsp), %rdx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	$4, 32(%rsp)
	movq	$32, 40(%rsp)
	movq	$0, 48(%rsp)
	callq	CreateFileA
	movq	$0, 96(%rsp)
	movq	%rax, 96(%rsp)
	.cv_loc	12 4 35 5
	movq	96(%rsp), %rax
	addq	$104, %rsp
	retq
.Ltmp25:
.Lfunc_end12:
	.seh_endproc

	.def	write_file;
	.scl	2;
	.type	32;
	.endef
	.globl	write_file
	.p2align	4, 0x90
write_file:
.Lfunc_begin13:
	.cv_func_id 13
	.cv_loc	13 4 39 0
.seh_proc write_file
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	%rdx, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	%r8, 64(%rsp)
	movl	$0, 76(%rsp)
	movl	%r9d, 76(%rsp)
.Ltmp26:
	.cv_loc	13 4 40 2
	movl	$0, 80(%rsp)
	movq	$0, 80(%rsp)
	.cv_loc	13 4 41 11
	movq	56(%rsp), %rcx
	movq	64(%rsp), %rdx
	movl	76(%rsp), %r8d
	leaq	80(%rsp), %r9
	xorl	%eax, %eax
	movq	$0, 32(%rsp)
	callq	WriteFile
	.cv_loc	13 4 42 2
	movl	80(%rsp), %eax
	cmpl	76(%rsp), %eax
	sete	%al
	movb	$0, 87(%rsp)
	andb	$1, %al
	movb	%al, 87(%rsp)
	.cv_loc	13 4 43 5
	movb	87(%rsp), %al
	addq	$88, %rsp
	retq
.Ltmp27:
.Lfunc_end13:
	.seh_endproc

	.def	get_stdout;
	.scl	2;
	.type	32;
	.endef
	.globl	get_stdout
	.p2align	4, 0x90
get_stdout:
.Lfunc_begin14:
	.cv_func_id 14
	.cv_loc	14 4 47 0
.seh_proc get_stdout
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
.Ltmp28:
	.cv_loc	14 4 48 5
	movl	$4294967285, %ecx
	callq	GetStdHandle
	nop
	addq	$40, %rsp
	retq
.Ltmp29:
.Lfunc_end14:
	.seh_endproc

	.def	"overload[]";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[]"
	.p2align	4, 0x90
"overload[]":
.Lfunc_begin15:
	.cv_func_id 15
	.cv_loc	15 3 61 0
.seh_proc "overload[]"
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	$0, 16(%rsp)
	movq	%r8, 16(%rsp)
.Ltmp30:
	.cv_loc	15 3 62 5
	movq	16(%rsp), %rcx
	movq	(%rsp), %rax
	movb	(%rax,%rcx), %al
	addq	$24, %rsp
	retq
.Ltmp31:
.Lfunc_end15:
	.seh_endproc

	.def	"overload+";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload+"
	.p2align	4, 0x90
"overload+":
.Lfunc_begin16:
	.cv_func_id 16
	.cv_loc	16 3 66 0
.seh_proc "overload+"
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 32(%rsp)
	movq	$0, 56(%rsp)
	movq	%r8, 56(%rsp)
.Ltmp32:
	.cv_loc	16 3 67 2
	vmovdqa	%xmm0, 64(%rsp)
	.cv_loc	16 3 68 2
	movq	56(%rsp), %rdx
	leaq	80(%rsp), %rcx
	callq	len
	movq	$0, 88(%rsp)
	movq	%rax, 88(%rsp)
	.cv_loc	16 3 69 2
	movq	40(%rsp), %rax
	movq	88(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, 72(%rsp)
	.cv_loc	16 3 70 2
	movq	72(%rsp), %rdx
	leaq	96(%rsp), %rcx
	callq	mem_alloc
	movq	%rax, 64(%rsp)
	.cv_loc	16 3 71 6
	movq	64(%rsp), %rdx
	movq	32(%rsp), %r8
	movq	40(%rsp), %r9
	leaq	112(%rsp), %rcx
	callq	copy
	.cv_loc	16 3 72 6
	movq	40(%rsp), %rax
	movq	64(%rsp), %rdx
	addq	%rax, %rdx
	movq	56(%rsp), %r8
	movq	88(%rsp), %r9
	leaq	128(%rsp), %rcx
	callq	copy
	.cv_loc	16 3 73 5
	movq	64(%rsp), %rax
	movq	72(%rsp), %rdx
	addq	$136, %rsp
	retq
.Ltmp33:
.Lfunc_end16:
	.seh_endproc

	.def	"overload[x]=";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[x]="
	.p2align	4, 0x90
"overload[x]=":
.Lfunc_begin17:
	.cv_func_id 17
	.cv_loc	17 3 77 0
.seh_proc "overload[x]="
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	$0, 32(%rsp)
	movq	%rcx, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%rdx, 40(%rsp)
.Ltmp34:
	.cv_loc	17 3 78 2
	movq	40(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	len
	movq	$0, 56(%rsp)
	movq	%rax, 56(%rsp)
	.cv_loc	17 3 79 2
	movq	56(%rsp), %rax
	movq	32(%rsp), %rcx
	cqto
	idivq	256(%rcx)
	movq	$0, 64(%rsp)
	movq	%rax, 64(%rsp)
	.cv_loc	17 3 80 2
	movq	32(%rsp), %rax
	movq	$0, 72(%rsp)
	movq	%rax, 72(%rsp)
	.cv_loc	17 3 81 2
	movq	$0, 80(%rsp)
	movq	$0, 80(%rsp)
.LBB17_1:
	movq	80(%rsp), %rax
	subq	$1, %rax
	cmpq	64(%rsp), %rax
	jge	.LBB17_3
	.cv_loc	17 3 82 3
	movq	56(%rsp), %rax
	movq	$0, 88(%rsp)
	movq	%rax, 88(%rsp)
	.cv_loc	17 3 83 3
	cmpq	$256, 88(%rsp)
	.cv_loc	17 3 88 2
	jg	.LBB17_5
	jmp	.LBB17_6
.LBB17_3:
	.cv_loc	17 3 90 1
	addq	$104, %rsp
	retq
.LBB17_4:
	.cv_loc	17 3 88 2
	movq	80(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB17_1
.LBB17_5:
	.cv_loc	17 3 83 37
	movq	$256, 88(%rsp)
.LBB17_6:
	.cv_loc	17 3 84 7
	movq	72(%rsp), %rax
	movq	256(%rax), %rax
	subq	$1, %rax
	movq	72(%rsp), %rdx
	addq	%rax, %rdx
	movq	80(%rsp), %r8
	shlq	$8, %r8
	addq	40(%rsp), %r8
	movq	88(%rsp), %r9
	leaq	96(%rsp), %rcx
	callq	copy
	.cv_loc	17 3 85 3
	movq	72(%rsp), %rax
	movq	256(%rax), %rcx
	addq	88(%rsp), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, 256(%rax)
	.cv_loc	17 3 86 3
	movq	56(%rsp), %rax
	subq	$256, %rax
	movq	%rax, 56(%rsp)
	.cv_loc	17 3 87 3
	movq	72(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 72(%rsp)
	.cv_loc	17 3 88 2
	jmp	.LBB17_4
.Ltmp35:
.Lfunc_end17:
	.seh_endproc

	.def	"overload[x]=.10";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[x]=.10"
	.p2align	4, 0x90
"overload[x]=.10":
.Lfunc_begin18:
	.cv_func_id 18
	.cv_loc	18 3 94 0
.seh_proc "overload[x]=.10"
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	$0, 40(%rsp)
	movq	%rcx, 40(%rsp)
	movb	$0, 55(%rsp)
	movb	%dl, 55(%rsp)
.Ltmp36:
	.cv_loc	18 3 95 2
	movq	40(%rsp), %rax
	movq	$0, 56(%rsp)
	movq	%rax, 56(%rsp)
.LBB18_1:
	.cv_loc	18 3 96 2
	cmpq	$0, 56(%rsp)
	setne	%al
	movq	56(%rsp), %rcx
	cmpq	$256, 256(%rcx)
	sete	%cl
	andb	%cl, %al
	testb	$1, %al
	jne	.LBB18_2
	jmp	.LBB18_3
.LBB18_2:
	.cv_loc	18 3 97 3
	movq	56(%rsp), %rax
	cmpq	$0, 264(%rax)
	.cv_loc	18 3 102 2
	je	.LBB18_5
	jmp	.LBB18_8
.LBB18_3:
	.cv_loc	18 3 103 2
	movb	55(%rsp), %dl
	movq	56(%rsp), %rax
	movq	256(%rax), %rcx
	movq	56(%rsp), %rax
	movb	%dl, (%rax,%rcx)
	.cv_loc	18 3 104 2
	movq	56(%rsp), %rax
	movq	256(%rax), %rcx
	addq	$1, %rcx
	movq	56(%rsp), %rax
	movq	%rcx, 256(%rax)
	.cv_loc	18 3 105 1
	addq	$72, %rsp
	retq
.LBB18_4:
	.cv_loc	18 3 102 2
	jmp	.LBB18_1
.LBB18_5:
	.cv_loc	18 3 98 4
	leaq	64(%rsp), %rcx
	movl	$272, %edx
	callq	mem_alloc
	movq	%rax, %rcx
	movq	56(%rsp), %rax
	movq	%rcx, 264(%rax)
	.cv_loc	18 3 100 3
	movq	56(%rsp), %rax
	cmpq	$256, 256(%rax)
	.cv_loc	18 3 102 2
	jne	.LBB18_8
	.cv_loc	18 3 101 4
	movq	56(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 56(%rsp)
.LBB18_8:
	.cv_loc	18 3 102 2
	jmp	.LBB18_4
.Ltmp37:
.Lfunc_end18:
	.seh_endproc

	.def	overload;
	.scl	2;
	.type	32;
	.endef
	.globl	overload
	.p2align	4, 0x90
overload:
.Lfunc_begin19:
	.cv_func_id 19
	.cv_loc	19 3 108 0
.seh_proc overload
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	$0, 72(%rsp)
	movq	%r8, 72(%rsp)
.Ltmp38:
	.cv_loc	19 3 109 2
	vmovdqa	%xmm0, 80(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	72(%rsp), %rdx
	leaq	96(%rsp), %rcx
	callq	len
	movq	%rax, 88(%rsp)
	.cv_loc	19 3 110 5
	movq	48(%rsp), %rdx
	movq	56(%rsp), %r8
	movq	80(%rsp), %r9
	movq	88(%rsp), %rcx
	movq	%rsp, %rax
	movq	%rcx, 32(%rax)
	leaq	112(%rsp), %rcx
	callq	compare
	nop
	addq	$120, %rsp
	retq
.Ltmp39:
.Lfunc_end19:
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
	.p2align	3
global_var.3:
	.quad	256

	.bss
	.globl	global_var.4
	.p2align	3
global_var.4:
	.quad	0

	.section	.rdata,"dr"
	.globl	global_var.5
	.p2align	3
global_var.5:
	.quad	65536

	.globl	global_var.6
	.p2align	3
global_var.6:
	.quad	131072

	.globl	global_var.7
	.p2align	3
global_var.7:
	.quad	262144

	.globl	global_var.8
	.p2align	3
global_var.8:
	.quad	524288

	.globl	global_var.9
	.p2align	3
global_var.9:
	.quad	1048576

.L__unnamed_1:
	.asciz	"my big string"

.L__unnamed_2:
	.asciz	"1"

.L__unnamed_3:
	.asciz	" more text"

.L__unnamed_4:
	.asciz	"2"

.L__unnamed_5:
	.asciz	"3"

.L__unnamed_6:
	.asciz	"4"

.L__unnamed_7:
	.zero	1

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp41-.Ltmp40
.Ltmp40:
	.short	.Ltmp43-.Ltmp42
.Ltmp42:
	.short	4353
	.long	0
	.byte	0
	.p2align	2
.Ltmp43:
	.short	.Ltmp45-.Ltmp44
.Ltmp44:
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
.Ltmp45:
.Ltmp41:
	.p2align	2
	.long	241
	.long	.Ltmp47-.Ltmp46
.Ltmp46:
	.short	.Ltmp49-.Ltmp48
.Ltmp48:
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
.Ltmp49:
	.short	.Ltmp51-.Ltmp50
.Ltmp50:
	.short	4114
	.long	440
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	147456
	.p2align	2
.Ltmp51:
	.short	.Ltmp53-.Ltmp52
.Ltmp52:
	.short	4414
	.long	4103
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp53:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 96
	.short	.Ltmp55-.Ltmp54
.Ltmp54:
	.short	4414
	.long	4108
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp55:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, 400
	.short	2
	.short	4431
.Ltmp47:
	.p2align	2
	.cv_linetable	0, main, .Lfunc_end0
	.long	241
	.long	.Ltmp57-.Ltmp56
.Ltmp56:
	.short	.Ltmp59-.Ltmp58
.Ltmp58:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-mem_alloc
	.long	0
	.long	0
	.long	4112
	.secrel32	mem_alloc
	.secidx	mem_alloc
	.byte	0
	.asciz	"mem_alloc"
	.p2align	2
.Ltmp59:
	.short	.Ltmp61-.Ltmp60
.Ltmp60:
	.short	4114
	.long	56
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp61:
	.short	.Ltmp63-.Ltmp62
.Ltmp62:
	.short	4414
	.long	117
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp63:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 40
	.short	.Ltmp65-.Ltmp64
.Ltmp64:
	.short	4414
	.long	1536
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp65:
	.cv_def_range	 .Ltmp2 .Ltmp3, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp57:
	.p2align	2
	.cv_linetable	1, mem_alloc, .Lfunc_end1
	.long	241
	.long	.Ltmp67-.Ltmp66
.Ltmp66:
	.short	.Ltmp69-.Ltmp68
.Ltmp68:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end2-builder_to_string
	.long	0
	.long	0
	.long	4115
	.secrel32	builder_to_string
	.secidx	builder_to_string
	.byte	0
	.asciz	"builder_to_string"
	.p2align	2
.Ltmp69:
	.short	.Ltmp71-.Ltmp70
.Ltmp70:
	.short	4114
	.long	152
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp71:
	.short	.Ltmp73-.Ltmp72
.Ltmp72:
	.short	4414
	.long	4101
	.short	1
	.asciz	"builder"
	.p2align	2
.Ltmp73:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 40
	.short	.Ltmp75-.Ltmp74
.Ltmp74:
	.short	4414
	.long	4108
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp75:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 48
	.short	.Ltmp77-.Ltmp76
.Ltmp76:
	.short	4414
	.long	19
	.short	0
	.asciz	"out_len"
	.p2align	2
.Ltmp77:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 72
	.short	.Ltmp79-.Ltmp78
.Ltmp78:
	.short	4414
	.long	4101
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp79:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 80
	.short	.Ltmp81-.Ltmp80
.Ltmp80:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp81:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 88
	.short	.Ltmp83-.Ltmp82
.Ltmp82:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp83:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 112
	.short	.Ltmp85-.Ltmp84
.Ltmp84:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp85:
	.cv_def_range	 .Ltmp4 .Ltmp5, frame_ptr_rel, 120
	.short	2
	.short	4431
.Ltmp67:
	.p2align	2
	.cv_linetable	2, builder_to_string, .Lfunc_end2
	.long	241
	.long	.Ltmp87-.Ltmp86
.Ltmp86:
	.short	.Ltmp89-.Ltmp88
.Ltmp88:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end3-init_builder
	.long	0
	.long	0
	.long	4118
	.secrel32	init_builder
	.secidx	init_builder
	.byte	0
	.asciz	"init_builder"
	.p2align	2
.Ltmp89:
	.short	.Ltmp91-.Ltmp90
.Ltmp90:
	.short	4114
	.long	616
	.long	0
	.long	0
	.long	64
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp91:
	.short	.Ltmp93-.Ltmp92
.Ltmp92:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp93:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 296
	.short	.Ltmp95-.Ltmp94
.Ltmp94:
	.short	4414
	.long	4103
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp95:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 304
	.short	.Ltmp97-.Ltmp96
.Ltmp96:
	.short	4414
	.long	4101
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp97:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 584
	.short	.Ltmp99-.Ltmp98
.Ltmp98:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp99:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 592
	.short	.Ltmp101-.Ltmp100
.Ltmp100:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp101:
	.cv_def_range	 .Ltmp6 .Ltmp7, frame_ptr_rel, 600
	.short	2
	.short	4431
.Ltmp87:
	.p2align	2
	.cv_linetable	3, init_builder, .Lfunc_end3
	.long	241
	.long	.Ltmp103-.Ltmp102
.Ltmp102:
	.short	.Ltmp105-.Ltmp104
.Ltmp104:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end4-compare
	.long	0
	.long	0
	.long	4121
	.secrel32	compare
	.secidx	compare
	.byte	0
	.asciz	"compare"
	.p2align	2
.Ltmp105:
	.short	.Ltmp107-.Ltmp106
.Ltmp106:
	.short	4114
	.long	56
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp107:
	.short	.Ltmp109-.Ltmp108
.Ltmp108:
	.short	4414
	.long	4108
	.short	1
	.asciz	"str1"
	.p2align	2
.Ltmp109:
	.cv_def_range	 .Ltmp8 .Ltmp9, frame_ptr_rel, 16
	.short	.Ltmp111-.Ltmp110
.Ltmp110:
	.short	4414
	.long	4108
	.short	1
	.asciz	"str2"
	.p2align	2
.Ltmp111:
	.cv_def_range	 .Ltmp8 .Ltmp9, frame_ptr_rel, 32
	.short	.Ltmp113-.Ltmp112
.Ltmp112:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp113:
	.cv_def_range	 .Ltmp8 .Ltmp9, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp103:
	.p2align	2
	.cv_linetable	4, compare, .Lfunc_end4
	.long	241
	.long	.Ltmp115-.Ltmp114
.Ltmp114:
	.short	.Ltmp117-.Ltmp116
.Ltmp116:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end5-to_string
	.long	0
	.long	0
	.long	4122
	.secrel32	to_string
	.secidx	to_string
	.byte	0
	.asciz	"to_string"
	.p2align	2
.Ltmp117:
	.short	.Ltmp119-.Ltmp118
.Ltmp118:
	.short	4114
	.long	120
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp119:
	.short	.Ltmp121-.Ltmp120
.Ltmp120:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp121:
	.cv_def_range	 .Ltmp10 .Ltmp11, frame_ptr_rel, 40
	.short	.Ltmp123-.Ltmp122
.Ltmp122:
	.short	4414
	.long	19
	.short	0
	.asciz	"text_len"
	.p2align	2
.Ltmp123:
	.cv_def_range	 .Ltmp10 .Ltmp11, frame_ptr_rel, 56
	.short	.Ltmp125-.Ltmp124
.Ltmp124:
	.short	4414
	.long	1536
	.short	0
	.asciz	"allocated"
	.p2align	2
.Ltmp125:
	.cv_def_range	 .Ltmp10 .Ltmp11, frame_ptr_rel, 72
	.short	.Ltmp127-.Ltmp126
.Ltmp126:
	.short	4414
	.long	4108
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp127:
	.cv_def_range	 .Ltmp10 .Ltmp11, frame_ptr_rel, 96
	.short	2
	.short	4431
.Ltmp115:
	.p2align	2
	.cv_linetable	5, to_string, .Lfunc_end5
	.long	241
	.long	.Ltmp129-.Ltmp128
.Ltmp128:
	.short	.Ltmp131-.Ltmp130
.Ltmp130:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end6-terminate_string
	.long	0
	.long	0
	.long	4125
	.secrel32	terminate_string
	.secidx	terminate_string
	.byte	0
	.asciz	"terminate_string"
	.p2align	2
.Ltmp131:
	.short	.Ltmp133-.Ltmp132
.Ltmp132:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp133:
	.short	.Ltmp135-.Ltmp134
.Ltmp134:
	.short	4414
	.long	4108
	.short	1
	.asciz	"str"
	.p2align	2
.Ltmp135:
	.cv_def_range	 .Ltmp12 .Ltmp13, frame_ptr_rel, 48
	.short	.Ltmp137-.Ltmp136
.Ltmp136:
	.short	4414
	.long	4108
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp137:
	.cv_def_range	 .Ltmp12 .Ltmp13, frame_ptr_rel, 64
	.short	2
	.short	4431
.Ltmp129:
	.p2align	2
	.cv_linetable	6, terminate_string, .Lfunc_end6
	.long	241
	.long	.Ltmp139-.Ltmp138
.Ltmp138:
	.short	.Ltmp141-.Ltmp140
.Ltmp140:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end7-parse_format
	.long	0
	.long	0
	.long	4168
	.secrel32	parse_format
	.secidx	parse_format
	.byte	0
	.asciz	"parse_format"
	.p2align	2
.Ltmp141:
	.short	.Ltmp143-.Ltmp142
.Ltmp142:
	.short	4114
	.long	456
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp143:
	.short	.Ltmp145-.Ltmp144
.Ltmp144:
	.short	4414
	.long	4108
	.short	1
	.asciz	"format"
	.p2align	2
.Ltmp145:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 64
	.short	.Ltmp147-.Ltmp146
.Ltmp146:
	.short	4414
	.long	4127
	.short	1
	.asciz	"list"
	.p2align	2
.Ltmp147:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 88
	.short	.Ltmp149-.Ltmp148
.Ltmp148:
	.short	4414
	.long	4103
	.short	0
	.asciz	"builder"
	.p2align	2
.Ltmp149:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 112
	.short	.Ltmp151-.Ltmp150
.Ltmp150:
	.short	4414
	.long	19
	.short	0
	.asciz	"list_index"
	.p2align	2
.Ltmp151:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 384
	.short	.Ltmp153-.Ltmp152
.Ltmp152:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp153:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 392
	.short	.Ltmp155-.Ltmp154
.Ltmp154:
	.short	4414
	.long	4108
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp155:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 432
	.short	.Ltmp157-.Ltmp156
.Ltmp156:
	.short	4414
	.long	4133
	.short	0
	.asciz	"item"
	.p2align	2
.Ltmp157:
	.cv_def_range	 .Ltmp14 .Ltmp15, frame_ptr_rel, 400
	.short	2
	.short	4431
.Ltmp139:
	.p2align	2
	.cv_linetable	7, parse_format, .Lfunc_end7
	.long	241
	.long	.Ltmp159-.Ltmp158
.Ltmp158:
	.short	.Ltmp161-.Ltmp160
.Ltmp160:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end8-"print!@* u8"
	.long	0
	.long	0
	.long	4169
	.secrel32	"print!@* u8"
	.secidx	"print!@* u8"
	.byte	0
	.asciz	"print!@* u8"
	.p2align	2
.Ltmp161:
	.short	.Ltmp163-.Ltmp162
.Ltmp162:
	.short	4114
	.long	168
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp163:
	.short	.Ltmp165-.Ltmp164
.Ltmp164:
	.short	4414
	.long	1568
	.short	1
	.asciz	"format"
	.p2align	2
.Ltmp165:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 56
	.short	.Ltmp167-.Ltmp166
.Ltmp166:
	.short	4414
	.long	4108
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp167:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 80
	.short	.Ltmp169-.Ltmp168
.Ltmp168:
	.short	4414
	.long	4127
	.short	0
	.asciz	"list"
	.p2align	2
.Ltmp169:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 104
	.short	.Ltmp171-.Ltmp170
.Ltmp170:
	.short	4414
	.long	4108
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp171:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 128
	.short	.Ltmp173-.Ltmp172
.Ltmp172:
	.short	4414
	.long	1536
	.short	0
	.asciz	"stdout"
	.p2align	2
.Ltmp173:
	.cv_def_range	 .Ltmp16 .Ltmp17, frame_ptr_rel, 152
	.short	2
	.short	4431
.Ltmp159:
	.p2align	2
	.cv_linetable	8, "print!@* u8", .Lfunc_end8
	.long	241
	.long	.Ltmp175-.Ltmp174
.Ltmp174:
	.short	.Ltmp177-.Ltmp176
.Ltmp176:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end9-"print!@string"
	.long	0
	.long	0
	.long	4170
	.secrel32	"print!@string"
	.secidx	"print!@string"
	.byte	0
	.asciz	"print!@string"
	.p2align	2
.Ltmp177:
	.short	.Ltmp179-.Ltmp178
.Ltmp178:
	.short	4114
	.long	136
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp179:
	.short	.Ltmp181-.Ltmp180
.Ltmp180:
	.short	4414
	.long	4108
	.short	1
	.asciz	"format"
	.p2align	2
.Ltmp181:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 48
	.short	.Ltmp183-.Ltmp182
.Ltmp182:
	.short	4414
	.long	4127
	.short	0
	.asciz	"list"
	.p2align	2
.Ltmp183:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 72
	.short	.Ltmp185-.Ltmp184
.Ltmp184:
	.short	4414
	.long	4108
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp185:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 96
	.short	.Ltmp187-.Ltmp186
.Ltmp186:
	.short	4414
	.long	1536
	.short	0
	.asciz	"stdout"
	.p2align	2
.Ltmp187:
	.cv_def_range	 .Ltmp18 .Ltmp19, frame_ptr_rel, 120
	.short	2
	.short	4431
.Ltmp175:
	.p2align	2
	.cv_linetable	9, "print!@string", .Lfunc_end9
	.long	241
	.long	.Ltmp189-.Ltmp188
.Ltmp188:
	.short	.Ltmp191-.Ltmp190
.Ltmp190:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end10-copy
	.long	0
	.long	0
	.long	4173
	.secrel32	copy
	.secidx	copy
	.byte	0
	.asciz	"copy"
	.p2align	2
.Ltmp191:
	.short	.Ltmp193-.Ltmp192
.Ltmp192:
	.short	4114
	.long	56
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp193:
	.short	.Ltmp195-.Ltmp194
.Ltmp194:
	.short	4414
	.long	1536
	.short	1
	.asciz	"dst"
	.p2align	2
.Ltmp195:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 8
	.short	.Ltmp197-.Ltmp196
.Ltmp196:
	.short	4414
	.long	1536
	.short	1
	.asciz	"src"
	.p2align	2
.Ltmp197:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 16
	.short	.Ltmp199-.Ltmp198
.Ltmp198:
	.short	4414
	.long	117
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp199:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 24
	.short	.Ltmp201-.Ltmp200
.Ltmp200:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a0"
	.p2align	2
.Ltmp201:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 32
	.short	.Ltmp203-.Ltmp202
.Ltmp202:
	.short	4414
	.long	1568
	.short	0
	.asciz	"a1"
	.p2align	2
.Ltmp203:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 40
	.short	.Ltmp205-.Ltmp204
.Ltmp204:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp205:
	.cv_def_range	 .Ltmp20 .Ltmp21, frame_ptr_rel, 48
	.short	2
	.short	4431
.Ltmp189:
	.p2align	2
	.cv_linetable	10, copy, .Lfunc_end10
	.long	241
	.long	.Ltmp207-.Ltmp206
.Ltmp206:
	.short	.Ltmp209-.Ltmp208
.Ltmp208:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end11-len
	.long	0
	.long	0
	.long	4175
	.secrel32	len
	.secidx	len
	.byte	0
	.asciz	"len"
	.p2align	2
.Ltmp209:
	.short	.Ltmp211-.Ltmp210
.Ltmp210:
	.short	4114
	.long	24
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp211:
	.short	.Ltmp213-.Ltmp212
.Ltmp212:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp213:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 8
	.short	.Ltmp215-.Ltmp214
.Ltmp214:
	.short	4414
	.long	19
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp215:
	.cv_def_range	 .Ltmp22 .Ltmp23, frame_ptr_rel, 16
	.short	2
	.short	4431
.Ltmp207:
	.p2align	2
	.cv_linetable	11, len, .Lfunc_end11
	.long	241
	.long	.Ltmp217-.Ltmp216
.Ltmp216:
	.short	.Ltmp219-.Ltmp218
.Ltmp218:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end12-open_file
	.long	0
	.long	0
	.long	4178
	.secrel32	open_file
	.secidx	open_file
	.byte	0
	.asciz	"open_file"
	.p2align	2
.Ltmp219:
	.short	.Ltmp221-.Ltmp220
.Ltmp220:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp221:
	.short	.Ltmp223-.Ltmp222
.Ltmp222:
	.short	4414
	.long	1568
	.short	1
	.asciz	"f_name"
	.p2align	2
.Ltmp223:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 72
	.short	.Ltmp225-.Ltmp224
.Ltmp224:
	.short	4414
	.long	19
	.short	1
	.asciz	"access"
	.p2align	2
.Ltmp225:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 80
	.short	.Ltmp227-.Ltmp226
.Ltmp226:
	.short	4414
	.long	19
	.short	0
	.asciz	"win_access"
	.p2align	2
.Ltmp227:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 88
	.short	.Ltmp229-.Ltmp228
.Ltmp228:
	.short	4414
	.long	1536
	.short	0
	.asciz	"file"
	.p2align	2
.Ltmp229:
	.cv_def_range	 .Ltmp24 .Ltmp25, frame_ptr_rel, 96
	.short	2
	.short	4431
.Ltmp217:
	.p2align	2
	.cv_linetable	12, open_file, .Lfunc_end12
	.long	241
	.long	.Ltmp231-.Ltmp230
.Ltmp230:
	.short	.Ltmp233-.Ltmp232
.Ltmp232:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end13-write_file
	.long	0
	.long	0
	.long	4181
	.secrel32	write_file
	.secidx	write_file
	.byte	0
	.asciz	"write_file"
	.p2align	2
.Ltmp233:
	.short	.Ltmp235-.Ltmp234
.Ltmp234:
	.short	4114
	.long	88
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp235:
	.short	.Ltmp237-.Ltmp236
.Ltmp236:
	.short	4414
	.long	1536
	.short	1
	.asciz	"file"
	.p2align	2
.Ltmp237:
	.cv_def_range	 .Ltmp26 .Ltmp27, frame_ptr_rel, 56
	.short	.Ltmp239-.Ltmp238
.Ltmp238:
	.short	4414
	.long	1536
	.short	1
	.asciz	"data"
	.p2align	2
.Ltmp239:
	.cv_def_range	 .Ltmp26 .Ltmp27, frame_ptr_rel, 64
	.short	.Ltmp241-.Ltmp240
.Ltmp240:
	.short	4414
	.long	0
	.short	1
	.asciz	"size"
	.p2align	2
.Ltmp241:
	.cv_def_range	 .Ltmp26 .Ltmp27, frame_ptr_rel, 76
	.short	.Ltmp243-.Ltmp242
.Ltmp242:
	.short	4414
	.long	0
	.short	0
	.asciz	"written"
	.p2align	2
.Ltmp243:
	.cv_def_range	 .Ltmp26 .Ltmp27, frame_ptr_rel, 80
	.short	.Ltmp245-.Ltmp244
.Ltmp244:
	.short	4414
	.long	48
	.short	0
	.asciz	"result"
	.p2align	2
.Ltmp245:
	.cv_def_range	 .Ltmp26 .Ltmp27, frame_ptr_rel, 87
	.short	2
	.short	4431
.Ltmp231:
	.p2align	2
	.cv_linetable	13, write_file, .Lfunc_end13
	.long	241
	.long	.Ltmp247-.Ltmp246
.Ltmp246:
	.short	.Ltmp249-.Ltmp248
.Ltmp248:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end14-get_stdout
	.long	0
	.long	0
	.long	4183
	.secrel32	get_stdout
	.secidx	get_stdout
	.byte	0
	.asciz	"get_stdout"
	.p2align	2
.Ltmp249:
	.short	.Ltmp251-.Ltmp250
.Ltmp250:
	.short	4114
	.long	40
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp251:
	.short	2
	.short	4431
.Ltmp247:
	.p2align	2
	.cv_linetable	14, get_stdout, .Lfunc_end14
	.long	241
	.long	.Ltmp253-.Ltmp252
.Ltmp252:
	.short	.Ltmp255-.Ltmp254
.Ltmp254:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end15-"overload[]"
	.long	0
	.long	0
	.long	4186
	.secrel32	"overload[]"
	.secidx	"overload[]"
	.byte	0
	.asciz	"overload[]"
	.p2align	2
.Ltmp255:
	.short	.Ltmp257-.Ltmp256
.Ltmp256:
	.short	4114
	.long	24
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp257:
	.short	.Ltmp259-.Ltmp258
.Ltmp258:
	.short	4414
	.long	19
	.short	1
	.asciz	"index"
	.p2align	2
.Ltmp259:
	.cv_def_range	 .Ltmp30 .Ltmp31, frame_ptr_rel, 16
	.short	.Ltmp261-.Ltmp260
.Ltmp260:
	.short	4414
	.long	4108
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp261:
	.cv_def_range	 .Ltmp30 .Ltmp31, frame_ptr_rel, 0
	.short	2
	.short	4431
.Ltmp253:
	.p2align	2
	.cv_linetable	15, "overload[]", .Lfunc_end15
	.long	241
	.long	.Ltmp263-.Ltmp262
.Ltmp262:
	.short	.Ltmp265-.Ltmp264
.Ltmp264:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end16-"overload+"
	.long	0
	.long	0
	.long	4189
	.secrel32	"overload+"
	.secidx	"overload+"
	.byte	0
	.asciz	"overload+"
	.p2align	2
.Ltmp265:
	.short	.Ltmp267-.Ltmp266
.Ltmp266:
	.short	4114
	.long	136
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp267:
	.short	.Ltmp269-.Ltmp268
.Ltmp268:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp269:
	.cv_def_range	 .Ltmp32 .Ltmp33, frame_ptr_rel, 56
	.short	.Ltmp271-.Ltmp270
.Ltmp270:
	.short	4414
	.long	4108
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp271:
	.cv_def_range	 .Ltmp32 .Ltmp33, frame_ptr_rel, 32
	.short	.Ltmp273-.Ltmp272
.Ltmp272:
	.short	4414
	.long	4108
	.short	0
	.asciz	"out"
	.p2align	2
.Ltmp273:
	.cv_def_range	 .Ltmp32 .Ltmp33, frame_ptr_rel, 64
	.short	.Ltmp275-.Ltmp274
.Ltmp274:
	.short	4414
	.long	19
	.short	0
	.asciz	"text_len"
	.p2align	2
.Ltmp275:
	.cv_def_range	 .Ltmp32 .Ltmp33, frame_ptr_rel, 88
	.short	2
	.short	4431
.Ltmp263:
	.p2align	2
	.cv_linetable	16, "overload+", .Lfunc_end16
	.long	241
	.long	.Ltmp277-.Ltmp276
.Ltmp276:
	.short	.Ltmp279-.Ltmp278
.Ltmp278:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end17-"overload[x]="
	.long	0
	.long	0
	.long	4192
	.secrel32	"overload[x]="
	.secidx	"overload[x]="
	.byte	0
	.asciz	"overload[x]="
	.p2align	2
.Ltmp279:
	.short	.Ltmp281-.Ltmp280
.Ltmp280:
	.short	4114
	.long	104
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp281:
	.short	.Ltmp283-.Ltmp282
.Ltmp282:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp283:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 40
	.short	.Ltmp285-.Ltmp284
.Ltmp284:
	.short	4414
	.long	4101
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp285:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 32
	.short	.Ltmp287-.Ltmp286
.Ltmp286:
	.short	4414
	.long	19
	.short	0
	.asciz	"text_len"
	.p2align	2
.Ltmp287:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 56
	.short	.Ltmp289-.Ltmp288
.Ltmp288:
	.short	4414
	.long	19
	.short	0
	.asciz	"times"
	.p2align	2
.Ltmp289:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 64
	.short	.Ltmp291-.Ltmp290
.Ltmp290:
	.short	4414
	.long	4101
	.short	0
	.asciz	"current"
	.p2align	2
.Ltmp291:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 72
	.short	.Ltmp293-.Ltmp292
.Ltmp292:
	.short	4414
	.long	19
	.short	0
	.asciz	"i"
	.p2align	2
.Ltmp293:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 80
	.short	.Ltmp295-.Ltmp294
.Ltmp294:
	.short	4414
	.long	19
	.short	0
	.asciz	"copy_size"
	.p2align	2
.Ltmp295:
	.cv_def_range	 .Ltmp34 .Ltmp35, frame_ptr_rel, 88
	.short	2
	.short	4431
.Ltmp277:
	.p2align	2
	.cv_linetable	17, "overload[x]=", .Lfunc_end17
	.long	241
	.long	.Ltmp297-.Ltmp296
.Ltmp296:
	.short	.Ltmp299-.Ltmp298
.Ltmp298:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end18-"overload[x]=.10"
	.long	0
	.long	0
	.long	4195
	.secrel32	"overload[x]=.10"
	.secidx	"overload[x]=.10"
	.byte	0
	.asciz	"overload[x]="
	.p2align	2
.Ltmp299:
	.short	.Ltmp301-.Ltmp300
.Ltmp300:
	.short	4114
	.long	72
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp301:
	.short	.Ltmp303-.Ltmp302
.Ltmp302:
	.short	4414
	.long	32
	.short	1
	.asciz	"c"
	.p2align	2
.Ltmp303:
	.cv_def_range	 .Ltmp36 .Ltmp37, frame_ptr_rel, 55
	.short	.Ltmp305-.Ltmp304
.Ltmp304:
	.short	4414
	.long	4101
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp305:
	.cv_def_range	 .Ltmp36 .Ltmp37, frame_ptr_rel, 40
	.short	.Ltmp307-.Ltmp306
.Ltmp306:
	.short	4414
	.long	4101
	.short	0
	.asciz	"to_put"
	.p2align	2
.Ltmp307:
	.cv_def_range	 .Ltmp36 .Ltmp37, frame_ptr_rel, 56
	.short	2
	.short	4431
.Ltmp297:
	.p2align	2
	.cv_linetable	18, "overload[x]=.10", .Lfunc_end18
	.long	241
	.long	.Ltmp309-.Ltmp308
.Ltmp308:
	.short	.Ltmp311-.Ltmp310
.Ltmp310:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end19-overload
	.long	0
	.long	0
	.long	4197
	.secrel32	overload
	.secidx	overload
	.byte	0
	.asciz	"overload"
	.p2align	2
.Ltmp311:
	.short	.Ltmp313-.Ltmp312
.Ltmp312:
	.short	4114
	.long	120
	.long	0
	.long	0
	.long	0
	.long	0
	.short	0
	.long	81920
	.p2align	2
.Ltmp313:
	.short	.Ltmp315-.Ltmp314
.Ltmp314:
	.short	4414
	.long	1568
	.short	1
	.asciz	"text"
	.p2align	2
.Ltmp315:
	.cv_def_range	 .Ltmp38 .Ltmp39, frame_ptr_rel, 72
	.short	.Ltmp317-.Ltmp316
.Ltmp316:
	.short	4414
	.long	4108
	.short	0
	.asciz	"str"
	.p2align	2
.Ltmp317:
	.cv_def_range	 .Ltmp38 .Ltmp39, frame_ptr_rel, 48
	.short	.Ltmp319-.Ltmp318
.Ltmp318:
	.short	4414
	.long	4108
	.short	0
	.asciz	"str2"
	.p2align	2
.Ltmp319:
	.cv_def_range	 .Ltmp38 .Ltmp39, frame_ptr_rel, 80
	.short	2
	.short	4431
.Ltmp309:
	.p2align	2
	.cv_linetable	19, overload, .Lfunc_end19
	.long	241
	.long	.Ltmp321-.Ltmp320
.Ltmp320:
	.short	.Ltmp323-.Ltmp322
.Ltmp322:
	.short	4364
	.long	48
	.secrel32	global_var
	.secidx	global_var
	.asciz	"true"
	.p2align	2
.Ltmp323:
	.short	.Ltmp325-.Ltmp324
.Ltmp324:
	.short	4364
	.long	48
	.secrel32	global_var.1
	.secidx	global_var.1
	.asciz	"false"
	.p2align	2
.Ltmp325:
	.short	.Ltmp327-.Ltmp326
.Ltmp326:
	.short	4364
	.long	1536
	.secrel32	global_var.2
	.secidx	global_var.2
	.asciz	"null"
	.p2align	2
.Ltmp327:
	.short	.Ltmp329-.Ltmp328
.Ltmp328:
	.short	4364
	.long	19
	.secrel32	global_var.3
	.secidx	global_var.3
	.asciz	"STRING_BUFFER_SIZE"
	.p2align	2
.Ltmp329:
	.short	.Ltmp331-.Ltmp330
.Ltmp330:
	.short	4364
	.long	19
	.secrel32	global_var.4
	.secidx	global_var.4
	.asciz	"called"
	.p2align	2
.Ltmp331:
	.short	.Ltmp333-.Ltmp332
.Ltmp332:
	.short	4364
	.long	19
	.secrel32	global_var.5
	.secidx	global_var.5
	.asciz	"DELETE"
	.p2align	2
.Ltmp333:
	.short	.Ltmp335-.Ltmp334
.Ltmp334:
	.short	4364
	.long	19
	.secrel32	global_var.6
	.secidx	global_var.6
	.asciz	"READ_CONTROL"
	.p2align	2
.Ltmp335:
	.short	.Ltmp337-.Ltmp336
.Ltmp336:
	.short	4364
	.long	19
	.secrel32	global_var.7
	.secidx	global_var.7
	.asciz	"WRITE_DAC"
	.p2align	2
.Ltmp337:
	.short	.Ltmp339-.Ltmp338
.Ltmp338:
	.short	4364
	.long	19
	.secrel32	global_var.8
	.secidx	global_var.8
	.asciz	"WRITE_OWNER"
	.p2align	2
.Ltmp339:
	.short	.Ltmp341-.Ltmp340
.Ltmp340:
	.short	4364
	.long	19
	.secrel32	global_var.9
	.secidx	global_var.9
	.asciz	"SYNCHRONIZE"
	.p2align	2
.Ltmp341:
.Ltmp321:
	.p2align	2
	.long	241
	.long	.Ltmp343-.Ltmp342
.Ltmp342:
	.short	.Ltmp345-.Ltmp344
.Ltmp344:
	.short	4360
	.long	4103
	.asciz	"String_Builder"
	.p2align	2
.Ltmp345:
	.short	.Ltmp347-.Ltmp346
.Ltmp346:
	.short	4360
	.long	4108
	.asciz	"string"
	.p2align	2
.Ltmp347:
	.short	.Ltmp349-.Ltmp348
.Ltmp348:
	.short	4360
	.long	4133
	.asciz	"Any"
	.p2align	2
.Ltmp349:
	.short	.Ltmp351-.Ltmp350
.Ltmp350:
	.short	4360
	.long	4143
	.asciz	"Type_Info"
	.p2align	2
.Ltmp351:
	.short	.Ltmp353-.Ltmp352
.Ltmp352:
	.short	4360
	.long	4146
	.asciz	"Type_Primitive"
	.p2align	2
.Ltmp353:
	.short	.Ltmp355-.Ltmp354
.Ltmp354:
	.short	4360
	.long	4150
	.asciz	"Type_Struct"
	.p2align	2
.Ltmp355:
	.short	.Ltmp357-.Ltmp356
.Ltmp356:
	.short	4360
	.long	4153
	.asciz	"Type_Array"
	.p2align	2
.Ltmp357:
	.short	.Ltmp359-.Ltmp358
.Ltmp358:
	.short	4360
	.long	4156
	.asciz	"Type_Pointer"
	.p2align	2
.Ltmp359:
	.short	.Ltmp361-.Ltmp360
.Ltmp360:
	.short	4360
	.long	4159
	.asciz	"Type_Enum"
	.p2align	2
.Ltmp361:
	.short	.Ltmp363-.Ltmp362
.Ltmp362:
	.short	4360
	.long	4162
	.asciz	"Type_Func"
	.p2align	2
.Ltmp363:
	.short	.Ltmp365-.Ltmp364
.Ltmp364:
	.short	4360
	.long	4143
	.asciz	"Type_Info"
	.p2align	2
.Ltmp365:
	.short	.Ltmp367-.Ltmp366
.Ltmp366:
	.short	4360
	.long	4143
	.asciz	"Type_Info"
	.p2align	2
.Ltmp367:
	.short	.Ltmp369-.Ltmp368
.Ltmp368:
	.short	4360
	.long	4143
	.asciz	"Type_Info"
	.p2align	2
.Ltmp369:
	.short	.Ltmp371-.Ltmp370
.Ltmp370:
	.short	4360
	.long	4143
	.asciz	"Type_Info"
	.p2align	2
.Ltmp371:
.Ltmp343:
	.p2align	2
	.cv_filechecksums
	.cv_stringtable
	.long	241
	.long	.Ltmp373-.Ltmp372
.Ltmp372:
	.short	.Ltmp375-.Ltmp374
.Ltmp374:
	.short	4428
	.long	4201
	.p2align	2
.Ltmp375:
.Ltmp373:
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
	.short	0x2a
	.short	0x1605
	.long	0x0
	.asciz	"W:\\Apocalypse\\Standard\\String.apoc"
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
	.long	0x75
	.short	0xe
	.short	0x1008
	.long	0x600
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x100e
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x100f
	.asciz	"mem_alloc"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x1005
	.short	0xe
	.short	0x1008
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x1011
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x1012
	.asciz	"builder_to_string"
	.byte	242
	.byte	241
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
	.long	0x1014
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1015
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
	.long	0x1017
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x1018
	.asciz	"compare"
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1015
	.asciz	"to_string"
	.byte	242
	.byte	241
	.short	0xa
	.short	0x1201
	.long	0x1
	.long	0x100a
	.short	0xe
	.short	0x1008
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x1
	.long	0x101b
	.short	0x1e
	.short	0x1601
	.long	0x0
	.long	0x101c
	.asciz	"terminate_string"
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
	.long	0x101e
	.long	0x1000c
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x100a
	.long	0x101f
	.short	0xe
	.short	0x1008
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1020
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
	.long	0x1022
	.long	0x1000c
	.short	0x22
	.short	0x1203
	.short	0x150d
	.short	0x3
	.long	0x1023
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
	.long	0x1024
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"Any"
	.byte	242
	.byte	241
	.short	0x2a
	.short	0x1605
	.long	0x0
	.asciz	"W:\\Apocalypse\\Standard\\Basic.apoc"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1025
	.long	0x1026
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
	.long	0x1028
	.short	0x0
	.asciz	"primitive"
	.short	0x150d
	.short	0x3
	.long	0x1029
	.short	0x0
	.asciz	"structure"
	.short	0x150d
	.short	0x3
	.long	0x102a
	.short	0x0
	.asciz	"array"
	.short	0x150d
	.short	0x3
	.long	0x102b
	.short	0x0
	.asciz	"pointer"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x102c
	.short	0x0
	.asciz	"enumerator"
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x102d
	.short	0x0
	.asciz	"function"
	.byte	241
	.short	0x1e
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x102e
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"Type_Info"
	.short	0xe
	.short	0x1606
	.long	0x102f
	.long	0x1026
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
	.long	0x1031
	.long	0x0
	.long	0x0
	.short	0x8
	.asciz	"Type_Primitive"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1032
	.long	0x1026
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
	.long	0x1034
	.short	0x18
	.asciz	"member_names"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1023
	.short	0x20
	.asciz	"member_types"
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x7
	.short	0x0
	.long	0x1035
	.long	0x0
	.long	0x0
	.short	0x28
	.asciz	"Type_Struct"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1036
	.long	0x1026
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
	.long	0x1023
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
	.long	0x1038
	.long	0x0
	.long	0x0
	.short	0x18
	.asciz	"Type_Array"
	.byte	243
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x1039
	.long	0x1026
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
	.long	0x1023
	.short	0x8
	.asciz	"pointed"
	.byte	242
	.byte	241
	.short	0x22
	.short	0x1505
	.short	0x2
	.short	0x0
	.long	0x103b
	.long	0x0
	.long	0x0
	.short	0x10
	.asciz	"Type_Pointer"
	.byte	241
	.short	0xe
	.short	0x1606
	.long	0x103c
	.long	0x1026
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
	.long	0x1028
	.short	0x4
	.asciz	"type"
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1034
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
	.long	0x103e
	.long	0x0
	.long	0x0
	.short	0x20
	.asciz	"Type_Enum"
	.short	0xe
	.short	0x1606
	.long	0x103f
	.long	0x1026
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
	.long	0x1023
	.short	0x8
	.asciz	"param_types"
	.byte	242
	.byte	241
	.short	0x150d
	.short	0x3
	.long	0x1023
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
	.long	0x1041
	.long	0x0
	.long	0x0
	.short	0x20
	.asciz	"Type_Func"
	.short	0xe
	.short	0x1606
	.long	0x1042
	.long	0x1026
	.long	0x63
	.short	0xe
	.short	0x1606
	.long	0x102f
	.long	0x1026
	.long	0x4e
	.short	0xe
	.short	0x1606
	.long	0x102f
	.long	0x1026
	.long	0x53
	.short	0xe
	.short	0x1606
	.long	0x102f
	.long	0x1026
	.long	0x59
	.short	0xe
	.short	0x1606
	.long	0x102f
	.long	0x1026
	.long	0x65
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1021
	.asciz	"parse_format"
	.byte	243
	.byte	242
	.byte	241
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1015
	.asciz	"print!@* u8"
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x101c
	.asciz	"print!@string"
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
	.long	0x104b
	.short	0x12
	.short	0x1601
	.long	0x0
	.long	0x104c
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
	.long	0x1014
	.short	0xe
	.short	0x1601
	.long	0x0
	.long	0x104e
	.asciz	"len"
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x620
	.long	0x13
	.short	0xe
	.short	0x1008
	.long	0x600
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1050
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1051
	.asciz	"open_file"
	.byte	242
	.byte	241
	.short	0x12
	.short	0x1201
	.long	0x3
	.long	0x600
	.long	0x600
	.long	0x0
	.short	0xe
	.short	0x1008
	.long	0x30
	.byte	0x0
	.byte	0x0
	.short	0x3
	.long	0x1053
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1054
	.asciz	"write_file"
	.byte	241
	.short	0xe
	.short	0x1008
	.long	0x600
	.byte	0x0
	.byte	0x0
	.short	0x0
	.long	0x1000
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1056
	.asciz	"get_stdout"
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
	.long	0x1058
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1059
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
	.long	0x105b
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x105c
	.asciz	"overload+"
	.byte	242
	.byte	241
	.short	0xe
	.short	0x1201
	.long	0x2
	.long	0x1005
	.long	0x620
	.short	0xe
	.short	0x1008
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x105e
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x105f
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
	.long	0x0
	.byte	0x0
	.byte	0x0
	.short	0x2
	.long	0x1061
	.short	0x1a
	.short	0x1601
	.long	0x0
	.long	0x1062
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
	.long	0x105b
	.short	0x16
	.short	0x1601
	.long	0x0
	.long	0x1064
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
	.long	0x1066
	.long	0x0
	.long	0x1067
	.long	0x1068
	.long	0x0
	.byte	242
	.byte	241
