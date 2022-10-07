	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"op_overlaod_big_struct.apoc"
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@00000004000000030000000200000001
	.section	.rdata,"dr",discard,__xmm@00000004000000030000000200000001
	.p2align	4
__xmm@00000004000000030000000200000001:
	.long	1
	.long	2
	.long	3
	.long	4
	.globl	__xmm@00000005000000040000000300000002
	.section	.rdata,"dr",discard,__xmm@00000005000000040000000300000002
	.p2align	4
__xmm@00000005000000040000000300000002:
	.long	2
	.long	3
	.long	4
	.long	5
	.text
	.globl	main
	.p2align	4, 0x90
main:
.seh_proc main
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	movl	$6112, %eax
	callq	__chkstk
	subq	%rax, %rsp
	.seh_stackalloc 6112
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	.seh_endprologue
	andq	$-512, %rsp
	movq	%rcx, 1016(%rsp)
	leaq	2048(%rsp), %rsi
	movl	$516, %r8d
	movq	%rsi, %rcx
	xorl	%edx, %edx
	callq	memset
	movl	$4, 2560(%rsp)
	vxorps	%xmm1, %xmm1, %xmm1
	vmovaps	%ymm1, 1024(%rsp)
	vmovaps	%ymm1, 1472(%rsp)
	vmovaps	%ymm1, 1440(%rsp)
	vmovaps	%ymm1, 1408(%rsp)
	vmovaps	%ymm1, 1376(%rsp)
	vmovaps	%ymm1, 1344(%rsp)
	vmovaps	%ymm1, 1312(%rsp)
	vmovaps	%ymm1, 1280(%rsp)
	vmovaps	%ymm1, 1248(%rsp)
	vmovaps	%ymm1, 1216(%rsp)
	vmovaps	%ymm1, 1184(%rsp)
	vmovaps	%ymm1, 1152(%rsp)
	vmovaps	%ymm1, 1120(%rsp)
	vmovaps	%ymm1, 1088(%rsp)
	vmovaps	%ymm1, 1056(%rsp)
	vmovaps	%ymm1, 1504(%rsp)
	vmovaps	__xmm@00000004000000030000000200000001(%rip), %xmm0
	vmovaps	%xmm0, 1024(%rsp)
	vmovups	%ymm1, 1456(%rsp)
	vmovups	%ymm1, 1424(%rsp)
	vmovups	%ymm1, 1392(%rsp)
	vmovups	%ymm1, 1360(%rsp)
	vmovups	%ymm1, 1328(%rsp)
	vmovups	%ymm1, 1296(%rsp)
	vmovups	%ymm1, 1264(%rsp)
	vmovups	%ymm1, 1232(%rsp)
	vmovups	%ymm1, 1200(%rsp)
	vmovups	%ymm1, 1168(%rsp)
	vmovups	%ymm1, 1136(%rsp)
	vmovups	%ymm1, 1104(%rsp)
	vmovups	%ymm1, 1072(%rsp)
	vmovups	%ymm1, 1040(%rsp)
	vmovups	%ymm1, 1504(%rsp)
	vmovups	%ymm1, 1488(%rsp)
	leaq	1024(%rsp), %rdx
	movl	$512, %r8d
	movq	%rsi, %rcx
	vzeroupper
	callq	memcpy
	leaq	3072(%rsp), %rsi
	movl	$516, %r8d
	movq	%rsi, %rcx
	xorl	%edx, %edx
	callq	memset
	movl	$4, 3584(%rsp)
	vxorps	%xmm1, %xmm1, %xmm1
	vmovaps	%ymm1, 1536(%rsp)
	vmovaps	%ymm1, 1984(%rsp)
	vmovaps	%ymm1, 1952(%rsp)
	vmovaps	%ymm1, 1920(%rsp)
	vmovaps	%ymm1, 1888(%rsp)
	vmovaps	%ymm1, 1856(%rsp)
	vmovaps	%ymm1, 1824(%rsp)
	vmovaps	%ymm1, 1792(%rsp)
	vmovaps	%ymm1, 1760(%rsp)
	vmovaps	%ymm1, 1728(%rsp)
	vmovaps	%ymm1, 1696(%rsp)
	vmovaps	%ymm1, 1664(%rsp)
	vmovaps	%ymm1, 1632(%rsp)
	vmovaps	%ymm1, 1600(%rsp)
	vmovaps	%ymm1, 1568(%rsp)
	vmovaps	%ymm1, 2016(%rsp)
	vmovaps	__xmm@00000005000000040000000300000002(%rip), %xmm0
	vmovaps	%xmm0, 1536(%rsp)
	vmovups	%ymm1, 1968(%rsp)
	vmovups	%ymm1, 1936(%rsp)
	vmovups	%ymm1, 1904(%rsp)
	vmovups	%ymm1, 1872(%rsp)
	vmovups	%ymm1, 1840(%rsp)
	vmovups	%ymm1, 1808(%rsp)
	vmovups	%ymm1, 1776(%rsp)
	vmovups	%ymm1, 1744(%rsp)
	vmovups	%ymm1, 1712(%rsp)
	vmovups	%ymm1, 1680(%rsp)
	vmovups	%ymm1, 1648(%rsp)
	vmovups	%ymm1, 1616(%rsp)
	vmovups	%ymm1, 1584(%rsp)
	vmovups	%ymm1, 1552(%rsp)
	vmovups	%ymm1, 2016(%rsp)
	vmovups	%ymm1, 2000(%rsp)
	leaq	1536(%rsp), %rdx
	movl	$512, %r8d
	movq	%rsi, %rcx
	vzeroupper
	callq	memcpy
	movl	2560(%rsp), %edi
	vmovaps	2528(%rsp), %ymm0
	vmovaps	%ymm0, 960(%rsp)
	vmovaps	2496(%rsp), %ymm0
	vmovaps	%ymm0, 928(%rsp)
	vmovaps	2464(%rsp), %ymm0
	vmovaps	%ymm0, 896(%rsp)
	vmovaps	2432(%rsp), %ymm0
	vmovaps	%ymm0, 864(%rsp)
	vmovaps	2400(%rsp), %ymm0
	vmovaps	%ymm0, 832(%rsp)
	vmovaps	2368(%rsp), %ymm0
	vmovaps	%ymm0, 800(%rsp)
	vmovaps	2336(%rsp), %ymm0
	vmovaps	%ymm0, 768(%rsp)
	vmovaps	2304(%rsp), %ymm0
	vmovaps	%ymm0, 736(%rsp)
	vmovaps	2272(%rsp), %ymm0
	vmovaps	%ymm0, 704(%rsp)
	vmovaps	2240(%rsp), %ymm0
	vmovaps	%ymm0, 672(%rsp)
	vmovaps	2208(%rsp), %ymm0
	vmovaps	%ymm0, 640(%rsp)
	vmovaps	2176(%rsp), %ymm0
	vmovaps	%ymm0, 608(%rsp)
	vmovaps	2048(%rsp), %ymm0
	vmovaps	%ymm0, 576(%rsp)
	vmovaps	2080(%rsp), %ymm0
	vmovaps	%ymm0, 544(%rsp)
	vmovaps	2112(%rsp), %ymm0
	vmovaps	%ymm0, 512(%rsp)
	vmovaps	2144(%rsp), %ymm0
	vmovaps	%ymm0, 480(%rsp)
	leaq	4096(%rsp), %rsi
	movl	$516, %r8d
	movq	%rsi, %rcx
	xorl	%edx, %edx
	vzeroupper
	callq	memset
	vmovaps	576(%rsp), %ymm0
	vmovaps	%ymm0, 4096(%rsp)
	vmovaps	544(%rsp), %ymm0
	vmovaps	%ymm0, 4128(%rsp)
	vmovaps	512(%rsp), %ymm0
	vmovaps	%ymm0, 4160(%rsp)
	vmovaps	480(%rsp), %ymm0
	vmovaps	%ymm0, 4192(%rsp)
	vmovaps	608(%rsp), %ymm0
	vmovaps	%ymm0, 4224(%rsp)
	vmovaps	640(%rsp), %ymm0
	vmovaps	%ymm0, 4256(%rsp)
	vmovaps	672(%rsp), %ymm0
	vmovaps	%ymm0, 4288(%rsp)
	vmovaps	704(%rsp), %ymm0
	vmovaps	%ymm0, 4320(%rsp)
	vmovaps	736(%rsp), %ymm0
	vmovaps	%ymm0, 4352(%rsp)
	vmovaps	768(%rsp), %ymm0
	vmovaps	%ymm0, 4384(%rsp)
	vmovaps	800(%rsp), %ymm0
	vmovaps	%ymm0, 4416(%rsp)
	vmovaps	832(%rsp), %ymm0
	vmovaps	%ymm0, 4448(%rsp)
	vmovaps	864(%rsp), %ymm0
	vmovaps	%ymm0, 4480(%rsp)
	vmovaps	896(%rsp), %ymm0
	vmovaps	%ymm0, 4512(%rsp)
	vmovaps	928(%rsp), %ymm0
	vmovaps	%ymm0, 4544(%rsp)
	vmovaps	960(%rsp), %ymm0
	vmovaps	%ymm0, 4576(%rsp)
	movl	%edi, 4608(%rsp)
	movq	%rsi, 464(%rsp)
	movl	3584(%rsp), %edi
	vmovaps	3552(%rsp), %ymm0
	vmovaps	%ymm0, 960(%rsp)
	vmovaps	3520(%rsp), %ymm0
	vmovaps	%ymm0, 928(%rsp)
	vmovaps	3488(%rsp), %ymm0
	vmovaps	%ymm0, 896(%rsp)
	vmovaps	3456(%rsp), %ymm0
	vmovaps	%ymm0, 864(%rsp)
	vmovaps	3424(%rsp), %ymm0
	vmovaps	%ymm0, 832(%rsp)
	vmovaps	3392(%rsp), %ymm0
	vmovaps	%ymm0, 800(%rsp)
	vmovaps	3360(%rsp), %ymm0
	vmovaps	%ymm0, 768(%rsp)
	vmovaps	3328(%rsp), %ymm0
	vmovaps	%ymm0, 736(%rsp)
	vmovaps	3296(%rsp), %ymm0
	vmovaps	%ymm0, 704(%rsp)
	vmovaps	3264(%rsp), %ymm0
	vmovaps	%ymm0, 672(%rsp)
	vmovaps	3232(%rsp), %ymm0
	vmovaps	%ymm0, 640(%rsp)
	vmovaps	3200(%rsp), %ymm0
	vmovaps	%ymm0, 608(%rsp)
	vmovaps	3072(%rsp), %ymm0
	vmovaps	%ymm0, 576(%rsp)
	vmovaps	3104(%rsp), %ymm0
	vmovaps	%ymm0, 544(%rsp)
	vmovaps	3136(%rsp), %ymm0
	vmovaps	%ymm0, 512(%rsp)
	vmovaps	3168(%rsp), %ymm0
	vmovaps	%ymm0, 480(%rsp)
	leaq	5120(%rsp), %rsi
	movl	$516, %r8d
	movq	%rsi, %rcx
	xorl	%edx, %edx
	vzeroupper
	callq	memset
	vmovaps	576(%rsp), %ymm0
	vmovaps	%ymm0, 5120(%rsp)
	vmovaps	544(%rsp), %ymm0
	vmovaps	%ymm0, 5152(%rsp)
	vmovaps	512(%rsp), %ymm0
	vmovaps	%ymm0, 5184(%rsp)
	vmovaps	480(%rsp), %ymm0
	vmovaps	%ymm0, 5216(%rsp)
	vmovaps	608(%rsp), %ymm0
	vmovaps	%ymm0, 5248(%rsp)
	vmovaps	640(%rsp), %ymm0
	vmovaps	%ymm0, 5280(%rsp)
	vmovaps	672(%rsp), %ymm0
	vmovaps	%ymm0, 5312(%rsp)
	vmovaps	704(%rsp), %ymm0
	vmovaps	%ymm0, 5344(%rsp)
	vmovaps	736(%rsp), %ymm0
	vmovaps	%ymm0, 5376(%rsp)
	vmovaps	768(%rsp), %ymm0
	vmovaps	%ymm0, 5408(%rsp)
	vmovaps	800(%rsp), %ymm0
	vmovaps	%ymm0, 5440(%rsp)
	vmovaps	832(%rsp), %ymm0
	vmovaps	%ymm0, 5472(%rsp)
	vmovaps	864(%rsp), %ymm0
	vmovaps	%ymm0, 5504(%rsp)
	vmovaps	896(%rsp), %ymm0
	vmovaps	%ymm0, 5536(%rsp)
	vmovaps	928(%rsp), %ymm0
	vmovaps	%ymm0, 5568(%rsp)
	vmovaps	960(%rsp), %ymm0
	vmovaps	%ymm0, 5600(%rsp)
	movl	%edi, 5632(%rsp)
	movq	%rsi, 472(%rsp)
	leaq	464(%rsp), %rcx
	leaq	472(%rsp), %rdx
	vzeroupper
	callq	"overload+"
	nop
	leaq	5984(%rbp), %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
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
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$2528, %rsp
	.seh_stackalloc 2528
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	.seh_endprologue
	andq	$-512, %rsp
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	leaq	512(%rsp), %rcx
	movl	$516, %r8d
	xorl	%edx, %edx
	callq	memset
	movq	(%rdi), %rdi
	leaq	1536(%rsp), %rcx
	movl	$516, %r8d
	xorl	%edx, %edx
	callq	memset
	movq	(%rsi), %rcx
	movl	(%rdi), %eax
	addl	(%rcx), %eax
	leaq	2400(%rbp), %rsp
	popq	%rdi
	popq	%rsi
	popq	%rbp
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

