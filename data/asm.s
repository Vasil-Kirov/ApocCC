	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"quick_test.a"
	.def	give_num;
	.scl	2;
	.type	32;
	.endef
	.globl	__real@3fff0000000000a66666
	.section	.rdata,"dr",discard,__real@3fff0000000000a66666
	.p2align	2
__real@3fff0000000000a66666:
	.quad	0x0000000000a66666
	.short	0x3fff
	.text
	.globl	give_num
	.p2align	4, 0x90
give_num:
.seh_proc give_num
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	vmovss	__real@3fff0000000000a66666(%rip), %xmm0
	vmovss	%xmm0, 4(%rsp)
	vmovss	4(%rsp), %xmm0
	popq	%rax
	retq
	.seh_endproc

	.globl	_fltused
