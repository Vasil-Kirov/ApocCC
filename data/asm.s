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
.seh_proc main
	subq	$376, %rsp
	.seh_stackalloc 376
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	movl	$272, %r8d
	callq	memset
	leaq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %rcx
	leaq	.L__unnamed_1(%rip), %rdx
	callq	init_builder
	leaq	.L__unnamed_2(%rip), %rcx
	callq	puts
	leaq	.L__unnamed_3(%rip), %rcx
	callq	puts
	leaq	64(%rsp), %rcx
	leaq	.L__unnamed_4(%rip), %rdx
	callq	"overload[x]="
	leaq	352(%rsp), %rcx
	xorl	%edx, %edx
	movl	$16, %r8d
	callq	memset
	leaq	352(%rsp), %rax
	movq	%rax, 336(%rsp)
	leaq	336(%rsp), %rcx
	leaq	64(%rsp), %rdx
	callq	builder_to_string
	leaq	.L__unnamed_5(%rip), %rcx
	callq	puts
	leaq	.L__unnamed_6(%rip), %rcx
	callq	puts
	leaq	.L__unnamed_7(%rip), %rcx
	callq	puts
	xorl	%eax, %eax
	addq	$376, %rsp
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
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	malloc
	movq	$0, 48(%rsp)
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %r8
	xorl	%edx, %edx
	callq	memset
	movq	48(%rsp), %rax
	addq	$56, %rsp
	retq
	.seh_endproc

	.def	builder_to_string;
	.scl	2;
	.type	32;
	.endef
	.globl	builder_to_string
	.p2align	4, 0x90
builder_to_string:
.seh_proc builder_to_string
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%rdx, 40(%rsp)
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	movl	$16, %r8d
	callq	memset
	movq	$0, 72(%rsp)
	movq	$0, 72(%rsp)
	movq	40(%rsp), %rax
	movq	$0, 80(%rsp)
	movq	%rax, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 88(%rsp)
.LBB2_1:
	movq	80(%rsp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB2_3
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	addq	256(%rcx), %rax
	movq	%rax, 72(%rsp)
	movq	80(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB2_4
.LBB2_3:
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	addq	256(%rcx), %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rdx
	leaq	96(%rsp), %rcx
	callq	mem_alloc
	movq	%rax, 48(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 120(%rsp)
	jmp	.LBB2_5
.LBB2_4:
	movq	88(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 88(%rsp)
	jmp	.LBB2_1
.LBB2_5:
	movq	80(%rsp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB2_7
	movq	112(%rsp), %rdx
	shlq	$8, %rdx
	addq	48(%rsp), %rdx
	movq	80(%rsp), %r8
	movq	80(%rsp), %rax
	movq	256(%rax), %r9
	leaq	128(%rsp), %rcx
	callq	copy
	movq	80(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 80(%rsp)
	movq	112(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 112(%rsp)
	jmp	.LBB2_8
.LBB2_7:
	movq	112(%rsp), %rax
	shlq	$8, %rax
	movq	48(%rsp), %rdx
	addq	%rax, %rdx
	movq	80(%rsp), %r8
	movq	256(%r8), %r9
	leaq	144(%rsp), %rcx
	callq	copy
	movq	72(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	256(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, 72(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rax
	movq	48(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, (%rax)
	addq	$152, %rsp
	retq
.LBB2_8:
	movq	120(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 120(%rsp)
	jmp	.LBB2_5
	.seh_endproc

	.def	init_builder;
	.scl	2;
	.type	32;
	.endef
	.globl	init_builder
	.p2align	4, 0x90
init_builder:
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
	leaq	304(%rsp), %rcx
	xorl	%edx, %edx
	movl	$272, %r8d
	callq	memset
	movq	560(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 560(%rsp)
	movq	$0, 584(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 584(%rsp)
	movq	$0, 592(%rsp)
	movq	$0, 592(%rsp)
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
	movq	600(%rsp), %rcx
	movq	592(%rsp), %rax
	shlq	$8, %rax
	addq	%rax, %rcx
	movq	296(%rsp), %rax
	movb	(%rax,%rcx), %dl
	movq	600(%rsp), %rcx
	movq	584(%rsp), %rax
	movb	%dl, (%rax,%rcx)
	movq	584(%rsp), %rax
	movq	256(%rax), %rcx
	addq	$1, %rcx
	movq	584(%rsp), %rax
	movq	%rcx, 256(%rax)
	cmpq	$256, 600(%rsp)
	je	.LBB3_5
	jmp	.LBB3_4
.LBB3_3:
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
	movq	600(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 600(%rsp)
	jmp	.LBB3_1
.LBB3_5:
	movq	$0, 600(%rsp)
	movq	592(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 592(%rsp)
	leaq	608(%rsp), %rcx
	movl	$272, %edx
	callq	mem_alloc
	movq	%rax, %rcx
	movq	584(%rsp), %rax
	movq	%rcx, 264(%rax)
	movq	584(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 584(%rsp)
	jmp	.LBB3_4
	.seh_endproc

	.def	compare;
	.scl	2;
	.type	32;
	.endef
	.globl	compare
	.p2align	4, 0x90
compare:
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
	movq	24(%rsp), %rax
	cmpq	40(%rsp), %rax
	je	.LBB4_2
	xorl	%eax, %eax
	addq	$56, %rsp
	retq
.LBB4_2:
	movq	$0, 48(%rsp)
	movq	$0, 48(%rsp)
.LBB4_3:
	movq	48(%rsp), %rax
	cmpq	24(%rsp), %rax
	jge	.LBB4_5
	movq	48(%rsp), %rcx
	movq	16(%rsp), %rax
	movb	(%rax,%rcx), %al
	movq	48(%rsp), %rdx
	movq	32(%rsp), %rcx
	cmpb	(%rcx,%rdx), %al
	jne	.LBB4_7
	jmp	.LBB4_6
.LBB4_5:
	movb	$1, %al
	addq	$56, %rsp
	retq
.LBB4_6:
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB4_3
.LBB4_7:
	xorl	%eax, %eax
	addq	$56, %rsp
	retq
	.seh_endproc

	.def	to_string;
	.scl	2;
	.type	32;
	.endef
	.globl	to_string
	.p2align	4, 0x90
to_string:
.seh_proc to_string
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	len
	movq	$0, 56(%rsp)
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rdx
	leaq	64(%rsp), %rcx
	callq	mem_alloc
	movq	$0, 72(%rsp)
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rdx
	movq	40(%rsp), %r8
	movq	56(%rsp), %r9
	leaq	80(%rsp), %rcx
	callq	copy
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 96(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	32(%rsp), %rax
	movq	(%rax), %rax
	movq	96(%rsp), %rcx
	movq	104(%rsp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, (%rax)
	addq	$120, %rsp
	retq
	.seh_endproc

	.def	terminate_string;
	.scl	2;
	.type	32;
	.endef
	.globl	terminate_string
	.p2align	4, 0x90
terminate_string:
.seh_proc terminate_string
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	vmovdqa	%xmm0, 64(%rsp)
	movq	56(%rsp), %rax
	incq	%rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rdx
	leaq	80(%rsp), %rcx
	callq	mem_alloc
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rdx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r9
	leaq	96(%rsp), %rcx
	callq	copy
	movq	64(%rsp), %rax
	movq	72(%rsp), %rcx
	movb	$0, (%rax,%rcx)
	movq	32(%rsp), %rax
	movq	(%rax), %rax
	movq	64(%rsp), %rcx
	movq	72(%rsp), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, (%rax)
	addq	$104, %rsp
	retq
	.seh_endproc

	.def	parse_format;
	.scl	2;
	.type	32;
	.endef
	.globl	parse_format
	.p2align	4, 0x90
parse_format:
.seh_proc parse_format
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, (%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 16(%rsp)
	movq	%r8, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	$0, 32(%rsp)
	movq	%r9, 32(%rsp)
	xorl	%eax, %eax
	addq	$40, %rsp
	retq
	.seh_endproc

	.def	"print!@* u8";
	.scl	2;
	.type	32;
	.endef
	.globl	"print!@* u8"
	.p2align	4, 0x90
"print!@* u8":
.seh_proc "print!@* u8"
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	%rdx, 56(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 32(%rsp)
	vmovdqa	%xmm0, 80(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	56(%rsp), %rdx
	leaq	64(%rsp), %rcx
	callq	to_string
	vmovaps	32(%rsp), %xmm0
	vmovdqa	%xmm0, 112(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	80(%rsp), %rdx
	movq	88(%rsp), %r8
	leaq	96(%rsp), %rcx
	callq	terminate_string
	movq	$0, 136(%rsp)
	movq	$0, 136(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	112(%rsp), %rdx
	movq	120(%rsp), %r8
	movq	136(%rsp), %r9
	leaq	144(%rsp), %rcx
	callq	parse_format
	nop
	addq	$152, %rsp
	retq
	.seh_endproc

	.def	"print!@string!@ 'unkown' ";
	.scl	2;
	.type	32;
	.endef
	.globl	"print!@string!@ 'unkown' "
	.p2align	4, 0x90
"print!@string!@ 'unkown' ":
.seh_proc "print!@string!@ 'unkown' "
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%r9, 152(%rsp)
	movq	%rcx, 32(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 48(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	vmovdqa	%xmm0, 80(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	48(%rsp), %rdx
	movq	56(%rsp), %r8
	leaq	64(%rsp), %rcx
	callq	terminate_string
	movq	$0, 104(%rsp)
	movq	$0, 104(%rsp)
	leaq	152(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	80(%rsp), %rdx
	movq	88(%rsp), %r8
	movq	104(%rsp), %r9
	leaq	112(%rsp), %rcx
	callq	parse_format
	nop
	addq	$120, %rsp
	retq
	.seh_endproc

	.def	copy;
	.scl	2;
	.type	32;
	.endef
	.globl	copy
	.p2align	4, 0x90
copy:
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
	movq	8(%rsp), %rax
	movq	$0, 32(%rsp)
	movq	%rax, 32(%rsp)
	movq	16(%rsp), %rax
	movq	$0, 40(%rsp)
	movq	%rax, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 48(%rsp)
.LBB10_1:
	movq	48(%rsp), %rax
	cmpq	24(%rsp), %rax
	jge	.LBB10_3
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movb	(%rax,%rcx), %dl
	movq	48(%rsp), %rcx
	movq	32(%rsp), %rax
	movb	%dl, (%rax,%rcx)
	jmp	.LBB10_4
.LBB10_3:
	addq	$56, %rsp
	retq
.LBB10_4:
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	jmp	.LBB10_1
	.seh_endproc

	.def	len;
	.scl	2;
	.type	32;
	.endef
	.globl	len
	.p2align	4, 0x90
len:
.seh_proc len
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rdx, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 16(%rsp)
.LBB11_1:
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rax
	cmpb	$0, (%rax,%rcx)
	je	.LBB11_3
	jmp	.LBB11_4
.LBB11_3:
	movq	16(%rsp), %rax
	addq	$24, %rsp
	retq
.LBB11_4:
	movq	16(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB11_1
	.seh_endproc

	.def	"overload[]";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[]"
	.p2align	4, 0x90
"overload[]":
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
	movq	16(%rsp), %rcx
	movq	(%rsp), %rax
	movb	(%rax,%rcx), %al
	addq	$24, %rsp
	retq
	.seh_endproc

	.def	"overload+";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload+"
	.p2align	4, 0x90
"overload+":
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
	vmovdqa	%xmm0, 64(%rsp)
	movq	56(%rsp), %rdx
	leaq	80(%rsp), %rcx
	callq	len
	movq	$0, 88(%rsp)
	movq	%rax, 88(%rsp)
	movq	40(%rsp), %rax
	movq	88(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rdx
	leaq	96(%rsp), %rcx
	callq	mem_alloc
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rdx
	movq	32(%rsp), %r8
	movq	40(%rsp), %r9
	leaq	112(%rsp), %rcx
	callq	copy
	movq	40(%rsp), %rax
	movq	64(%rsp), %rdx
	addq	%rax, %rdx
	movq	56(%rsp), %r8
	movq	88(%rsp), %r9
	leaq	128(%rsp), %rcx
	callq	copy
	movq	64(%rsp), %rax
	movq	72(%rsp), %rdx
	addq	$136, %rsp
	retq
	.seh_endproc

	.def	"overload[x]=";
	.scl	2;
	.type	32;
	.endef
	.globl	"overload[x]="
	.p2align	4, 0x90
"overload[x]=":
.seh_proc "overload[x]="
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	$0, 32(%rsp)
	movq	%rcx, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	len
	movq	$0, 56(%rsp)
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rax
	movq	32(%rsp), %rcx
	cqto
	idivq	256(%rcx)
	movq	$0, 64(%rsp)
	movq	%rax, 64(%rsp)
	movq	32(%rsp), %rax
	movq	$0, 72(%rsp)
	movq	%rax, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 80(%rsp)
.LBB14_1:
	movq	80(%rsp), %rax
	subq	$1, %rax
	cmpq	64(%rsp), %rax
	jge	.LBB14_3
	movq	56(%rsp), %rax
	movq	$0, 88(%rsp)
	movq	%rax, 88(%rsp)
	cmpq	$256, 88(%rsp)
	jg	.LBB14_5
	jmp	.LBB14_4
.LBB14_3:
	addq	$104, %rsp
	retq
.LBB14_4:
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
	movq	72(%rsp), %rax
	movq	256(%rax), %rcx
	addq	88(%rsp), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, 256(%rax)
	movq	56(%rsp), %rax
	subq	$256, %rax
	movq	%rax, 56(%rsp)
	movq	72(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 72(%rsp)
	movq	80(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB14_1
.LBB14_5:
	movq	$256, 88(%rsp)
	jmp	.LBB14_4
	.seh_endproc

	.def	overload;
	.scl	2;
	.type	32;
	.endef
	.globl	overload
	.p2align	4, 0x90
overload:
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
	vmovdqa	%xmm0, 80(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	72(%rsp), %rdx
	leaq	96(%rsp), %rcx
	callq	len
	movq	%rax, 88(%rsp)
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

.L__unnamed_1:
	.asciz	"my big string"

.L__unnamed_2:
	.asciz	"Windows"

.L__unnamed_3:
	.asciz	"1"

.L__unnamed_4:
	.asciz	" more text"

.L__unnamed_5:
	.asciz	"2"

.L__unnamed_6:
	.asciz	"3"

.L__unnamed_7:
	.asciz	"4"

