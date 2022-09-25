
a.exe:	file format coff-x86-64

Disassembly of section .text:

0000000140001000 <.text>:
140001000: 55                          	push	rbp
140001001: 48 8b ec                    	mov	rbp, rsp
140001004: 48 81 ec 50 00 00 00        	sub	rsp, 80
14000100b: 48 8b c1                    	mov	rax, rcx
14000100e: 48 b9 0a 00 00 00 00 00 00 00       	movabs	rcx, 10
140001018: 48 ba 0a 00 00 00 00 00 00 00       	movabs	rdx, 10
140001022: 48 8b c2                    	mov	rax, rdx
140001025: 01 c8                       	add	eax, ecx
140001027: 48 b9 0a 00 00 00 00 00 00 00       	movabs	rcx, 10
140001031: 48 8b d1                    	mov	rdx, rcx
140001034: 01 d2                       	add	edx, edx
140001036: 48 b8 0a 00 00 00 00 00 00 00       	movabs	rax, 10
140001040: 48 8b c8                    	mov	rcx, rax
140001043: 01 d9                       	add	ecx, ebx
140001045: 48 ba 0a 00 00 00 00 00 00 00       	movabs	rdx, 10
14000104f: 48 8b c2                    	mov	rax, rdx
140001052: 01 e0                       	add	eax, esp
140001054: 8b c2                       	mov	eax, edx
140001056: f7 eb                       	imul	ebx
140001058: 8b c1                       	mov	eax, ecx
14000105a: 8b cc                       	mov	ecx, esp
14000105c: 89 55 c0                    	mov	dword ptr [rbp - 64], edx
14000105f: 33 d2                       	xor	edx, edx
140001061: 8b 55 c0                    	mov	edx, dword ptr [rbp - 64]
140001064: f7 fc                       	idiv	esp
140001066: 8b c2                       	mov	eax, edx
140001068: f7 ed                       	imul	ebp
14000106a: 01 c1                       	add	ecx, eax
14000106c: 48 81 c4 50 00 00 00        	add	rsp, 80
140001073: 8b c1                       	mov	eax, ecx
140001075: 5d                          	pop	rbp
140001076: c3                          	ret
140001077: cc                          	int3
140001078: cc                          	int3
140001079: cc                          	int3
14000107a: cc                          	int3
14000107b: cc                          	int3
14000107c: cc                          	int3
14000107d: cc                          	int3
14000107e: cc                          	int3
14000107f: cc                          	int3
140001080: 40 53                       	push	rbx
140001082: 48 83 ec 20                 	sub	rsp, 32
140001086: b9 01 00 00 00              	mov	ecx, 1
14000108b: e8 54 1f 00 00              	call	0x140002fe4 <.text+0x1fe4>
140001090: e8 67 05 00 00              	call	0x1400015fc <.text+0x5fc>
140001095: 8b c8                       	mov	ecx, eax
140001097: e8 94 2a 00 00              	call	0x140003b30 <.text+0x2b30>
14000109c: e8 4f 05 00 00              	call	0x1400015f0 <.text+0x5f0>
1400010a1: 8b d8                       	mov	ebx, eax
1400010a3: e8 4c 2c 00 00              	call	0x140003cf4 <.text+0x2cf4>
1400010a8: b9 01 00 00 00              	mov	ecx, 1
1400010ad: 89 18                       	mov	dword ptr [rax], ebx
1400010af: e8 c8 02 00 00              	call	0x14000137c <.text+0x37c>
1400010b4: 84 c0                       	test	al, al
1400010b6: 74 73                       	je	0x14000112b <.text+0x12b>
1400010b8: e8 c3 07 00 00              	call	0x140001880 <.text+0x880>
1400010bd: 48 8d 0d f8 07 00 00        	lea	rcx, [rip + 2040]       # 0x1400018bc <.text+0x8bc>
1400010c4: e8 63 04 00 00              	call	0x14000152c <.text+0x52c>
1400010c9: e8 26 05 00 00              	call	0x1400015f4 <.text+0x5f4>
1400010ce: 8b c8                       	mov	ecx, eax
1400010d0: e8 b7 21 00 00              	call	0x14000328c <.text+0x228c>
1400010d5: 85 c0                       	test	eax, eax
1400010d7: 75 52                       	jne	0x14000112b <.text+0x12b>
1400010d9: e8 26 05 00 00              	call	0x140001604 <.text+0x604>
1400010de: e8 65 05 00 00              	call	0x140001648 <.text+0x648>
1400010e3: 85 c0                       	test	eax, eax
1400010e5: 74 0c                       	je	0x1400010f3 <.text+0xf3>
1400010e7: 48 8d 0d 02 05 00 00        	lea	rcx, [rip + 1282]       # 0x1400015f0 <.text+0x5f0>
1400010ee: e8 51 1f 00 00              	call	0x140003044 <.text+0x2044>
1400010f3: e8 20 05 00 00              	call	0x140001618 <.text+0x618>
1400010f8: e8 1b 05 00 00              	call	0x140001618 <.text+0x618>
1400010fd: e8 ee 04 00 00              	call	0x1400015f0 <.text+0x5f0>
140001102: 8b c8                       	mov	ecx, eax
140001104: e8 4b 2b 00 00              	call	0x140003c54 <.text+0x2c54>
140001109: e8 06 05 00 00              	call	0x140001614 <.text+0x614>
14000110e: 84 c0                       	test	al, al
140001110: 74 05                       	je	0x140001117 <.text+0x117>
140001112: e8 85 26 00 00              	call	0x14000379c <.text+0x279c>
140001117: e8 d4 04 00 00              	call	0x1400015f0 <.text+0x5f0>
14000111c: e8 97 06 00 00              	call	0x1400017b8 <.text+0x7b8>
140001121: 85 c0                       	test	eax, eax
140001123: 75 06                       	jne	0x14000112b <.text+0x12b>
140001125: 48 83 c4 20                 	add	rsp, 32
140001129: 5b                          	pop	rbx
14000112a: c3                          	ret
14000112b: b9 07 00 00 00              	mov	ecx, 7
140001130: e8 37 05 00 00              	call	0x14000166c <.text+0x66c>
140001135: cc                          	int3
140001136: cc                          	int3
140001137: cc                          	int3
140001138: 48 83 ec 28                 	sub	rsp, 40
14000113c: e8 eb 04 00 00              	call	0x14000162c <.text+0x62c>
140001141: 33 c0                       	xor	eax, eax
140001143: 48 83 c4 28                 	add	rsp, 40
140001147: c3                          	ret
140001148: 48 83 ec 28                 	sub	rsp, 40
14000114c: e8 c3 06 00 00              	call	0x140001814 <.text+0x814>
140001151: e8 9a 04 00 00              	call	0x1400015f0 <.text+0x5f0>
140001156: 8b c8                       	mov	ecx, eax
140001158: 48 83 c4 28                 	add	rsp, 40
14000115c: e9 67 2b 00 00              	jmp	0x140003cc8 <.text+0x2cc8>
140001161: cc                          	int3
140001162: cc                          	int3
140001163: cc                          	int3
140001164: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140001169: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000116e: 57                          	push	rdi
14000116f: 48 83 ec 30                 	sub	rsp, 48
140001173: b9 01 00 00 00              	mov	ecx, 1
140001178: e8 b3 01 00 00              	call	0x140001330 <.text+0x330>
14000117d: 84 c0                       	test	al, al
14000117f: 0f 84 36 01 00 00           	je	0x1400012bb <.text+0x2bb>
140001185: 40 32 f6                    	xor	sil, sil
140001188: 40 88 74 24 20              	mov	byte ptr [rsp + 32], sil
14000118d: e8 62 01 00 00              	call	0x1400012f4 <.text+0x2f4>
140001192: 8a d8                       	mov	bl, al
140001194: 8b 0d 66 68 01 00           	mov	ecx, dword ptr [rip + 92262] # 0x140017a00
14000119a: 83 f9 01                    	cmp	ecx, 1
14000119d: 0f 84 23 01 00 00           	je	0x1400012c6 <.text+0x2c6>
1400011a3: 85 c9                       	test	ecx, ecx
1400011a5: 75 4a                       	jne	0x1400011f1 <.text+0x1f1>
1400011a7: c7 05 4f 68 01 00 01 00 00 00       	mov	dword ptr [rip + 92239], 1 # 0x140017a00
1400011b1: 48 8d 15 f0 d0 00 00        	lea	rdx, [rip + 53488]      # 0x14000e2a8
1400011b8: 48 8d 0d b1 d0 00 00        	lea	rcx, [rip + 53425]      # 0x14000e270
1400011bf: e8 44 26 00 00              	call	0x140003808 <.text+0x2808>
1400011c4: 85 c0                       	test	eax, eax
1400011c6: 74 0a                       	je	0x1400011d2 <.text+0x1d2>
1400011c8: b8 ff 00 00 00              	mov	eax, 255
1400011cd: e9 d9 00 00 00              	jmp	0x1400012ab <.text+0x2ab>
1400011d2: 48 8d 15 8f d0 00 00        	lea	rdx, [rip + 53391]      # 0x14000e268
1400011d9: 48 8d 0d 78 d0 00 00        	lea	rcx, [rip + 53368]      # 0x14000e258
1400011e0: e8 bf 25 00 00              	call	0x1400037a4 <.text+0x27a4>
1400011e5: c7 05 11 68 01 00 02 00 00 00       	mov	dword ptr [rip + 92177], 2 # 0x140017a00
1400011ef: eb 08                       	jmp	0x1400011f9 <.text+0x1f9>
1400011f1: 40 b6 01                    	mov	sil, 1
1400011f4: 40 88 74 24 20              	mov	byte ptr [rsp + 32], sil
1400011f9: 8a cb                       	mov	cl, bl
1400011fb: e8 a0 02 00 00              	call	0x1400014a0 <.text+0x4a0>
140001200: e8 4f 04 00 00              	call	0x140001654 <.text+0x654>
140001205: 48 8b d8                    	mov	rbx, rax
140001208: 48 83 38 00                 	cmp	qword ptr [rax], 0
14000120c: 74 1e                       	je	0x14000122c <.text+0x22c>
14000120e: 48 8b c8                    	mov	rcx, rax
140001211: e8 f2 01 00 00              	call	0x140001408 <.text+0x408>
140001216: 84 c0                       	test	al, al
140001218: 74 12                       	je	0x14000122c <.text+0x22c>
14000121a: 45 33 c0                    	xor	r8d, r8d
14000121d: 41 8d 50 02                 	lea	edx, [r8 + 2]
140001221: 33 c9                       	xor	ecx, ecx
140001223: 48 8b 03                    	mov	rax, qword ptr [rbx]
140001226: ff 15 04 d0 00 00           	call	qword ptr [rip + 53252] # 0x14000e230
14000122c: e8 2b 04 00 00              	call	0x14000165c <.text+0x65c>
140001231: 48 8b d8                    	mov	rbx, rax
140001234: 48 83 38 00                 	cmp	qword ptr [rax], 0
140001238: 74 14                       	je	0x14000124e <.text+0x24e>
14000123a: 48 8b c8                    	mov	rcx, rax
14000123d: e8 c6 01 00 00              	call	0x140001408 <.text+0x408>
140001242: 84 c0                       	test	al, al
140001244: 74 08                       	je	0x14000124e <.text+0x24e>
140001246: 48 8b 0b                    	mov	rcx, qword ptr [rbx]
140001249: e8 9a 28 00 00              	call	0x140003ae8 <.text+0x2ae8>
14000124e: e8 f9 24 00 00              	call	0x14000374c <.text+0x274c>
140001253: 48 8b f8                    	mov	rdi, rax
140001256: e8 45 29 00 00              	call	0x140003ba0 <.text+0x2ba0>
14000125b: 48 8b 18                    	mov	rbx, qword ptr [rax]
14000125e: e8 35 29 00 00              	call	0x140003b98 <.text+0x2b98>
140001263: 4c 8b c7                    	mov	r8, rdi
140001266: 48 8b d3                    	mov	rdx, rbx
140001269: 8b 08                       	mov	ecx, dword ptr [rax]
14000126b: e8 90 fd ff ff              	call	0x140001000 <.text>
140001270: 8b d8                       	mov	ebx, eax
140001272: e8 49 05 00 00              	call	0x1400017c0 <.text+0x7c0>
140001277: 84 c0                       	test	al, al
140001279: 74 55                       	je	0x1400012d0 <.text+0x2d0>
14000127b: 40 84 f6                    	test	sil, sil
14000127e: 75 05                       	jne	0x140001285 <.text+0x285>
140001280: e8 47 28 00 00              	call	0x140003acc <.text+0x2acc>
140001285: 33 d2                       	xor	edx, edx
140001287: b1 01                       	mov	cl, 1
140001289: e8 36 02 00 00              	call	0x1400014c4 <.text+0x4c4>
14000128e: 8b c3                       	mov	eax, ebx
140001290: eb 19                       	jmp	0x1400012ab <.text+0x2ab>
140001292: 8b d8                       	mov	ebx, eax
140001294: e8 27 05 00 00              	call	0x1400017c0 <.text+0x7c0>
140001299: 84 c0                       	test	al, al
14000129b: 74 3b                       	je	0x1400012d8 <.text+0x2d8>
14000129d: 80 7c 24 20 00              	cmp	byte ptr [rsp + 32], 0
1400012a2: 75 05                       	jne	0x1400012a9 <.text+0x2a9>
1400012a4: e8 13 28 00 00              	call	0x140003abc <.text+0x2abc>
1400012a9: 8b c3                       	mov	eax, ebx
1400012ab: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
1400012b0: 48 8b 74 24 48              	mov	rsi, qword ptr [rsp + 72]
1400012b5: 48 83 c4 30                 	add	rsp, 48
1400012b9: 5f                          	pop	rdi
1400012ba: c3                          	ret
1400012bb: b9 07 00 00 00              	mov	ecx, 7
1400012c0: e8 a7 03 00 00              	call	0x14000166c <.text+0x66c>
1400012c5: 90                          	nop
1400012c6: b9 07 00 00 00              	mov	ecx, 7
1400012cb: e8 9c 03 00 00              	call	0x14000166c <.text+0x66c>
1400012d0: 8b cb                       	mov	ecx, ebx
1400012d2: e8 4d 28 00 00              	call	0x140003b24 <.text+0x2b24>
1400012d7: 90                          	nop
1400012d8: 8b cb                       	mov	ecx, ebx
1400012da: e8 fd 27 00 00              	call	0x140003adc <.text+0x2adc>
1400012df: 90                          	nop
1400012e0: 48 83 ec 28                 	sub	rsp, 40
1400012e4: e8 5b 02 00 00              	call	0x140001544 <.text+0x544>
1400012e9: 48 83 c4 28                 	add	rsp, 40
1400012ed: e9 72 fe ff ff              	jmp	0x140001164 <.text+0x164>
1400012f2: cc                          	int3
1400012f3: cc                          	int3
1400012f4: 48 83 ec 28                 	sub	rsp, 40
1400012f8: e8 a7 07 00 00              	call	0x140001aa4 <.text+0xaa4>
1400012fd: 85 c0                       	test	eax, eax
1400012ff: 74 21                       	je	0x140001322 <.text+0x322>
140001301: 65 48 8b 04 25 30 00 00 00  	mov	rax, qword ptr gs:[48]
14000130a: 48 8b 48 08                 	mov	rcx, qword ptr [rax + 8]
14000130e: eb 05                       	jmp	0x140001315 <.text+0x315>
140001310: 48 3b c8                    	cmp	rcx, rax
140001313: 74 14                       	je	0x140001329 <.text+0x329>
140001315: 33 c0                       	xor	eax, eax
140001317: f0                          	lock
140001318: 48 0f b1 0d e8 66 01 00     	cmpxchg	qword ptr [rip + 91880], rcx # 0x140017a08
140001320: 75 ee                       	jne	0x140001310 <.text+0x310>
140001322: 32 c0                       	xor	al, al
140001324: 48 83 c4 28                 	add	rsp, 40
140001328: c3                          	ret
140001329: b0 01                       	mov	al, 1
14000132b: eb f7                       	jmp	0x140001324 <.text+0x324>
14000132d: cc                          	int3
14000132e: cc                          	int3
14000132f: cc                          	int3
140001330: 40 53                       	push	rbx
140001332: 48 83 ec 20                 	sub	rsp, 32
140001336: 0f b6 05 d3 66 01 00        	movzx	eax, byte ptr [rip + 91859] # 0x140017a10
14000133d: 85 c9                       	test	ecx, ecx
14000133f: bb 01 00 00 00              	mov	ebx, 1
140001344: 0f 44 c3                    	cmove	eax, ebx
140001347: 88 05 c3 66 01 00           	mov	byte ptr [rip + 91843], al # 0x140017a10
14000134d: e8 a6 05 00 00              	call	0x1400018f8 <.text+0x8f8>
140001352: e8 51 09 00 00              	call	0x140001ca8 <.text+0xca8>
140001357: 84 c0                       	test	al, al
140001359: 75 04                       	jne	0x14000135f <.text+0x35f>
14000135b: 32 c0                       	xor	al, al
14000135d: eb 14                       	jmp	0x140001373 <.text+0x373>
14000135f: e8 c0 2e 00 00              	call	0x140004224 <.text+0x3224>
140001364: 84 c0                       	test	al, al
140001366: 75 09                       	jne	0x140001371 <.text+0x371>
140001368: 33 c9                       	xor	ecx, ecx
14000136a: e8 61 09 00 00              	call	0x140001cd0 <.text+0xcd0>
14000136f: eb ea                       	jmp	0x14000135b <.text+0x35b>
140001371: 8a c3                       	mov	al, bl
140001373: 48 83 c4 20                 	add	rsp, 32
140001377: 5b                          	pop	rbx
140001378: c3                          	ret
140001379: cc                          	int3
14000137a: cc                          	int3
14000137b: cc                          	int3
14000137c: 40 53                       	push	rbx
14000137e: 48 83 ec 20                 	sub	rsp, 32
140001382: 80 3d 88 66 01 00 00        	cmp	byte ptr [rip + 91784], 0 # 0x140017a11
140001389: 8b d9                       	mov	ebx, ecx
14000138b: 75 67                       	jne	0x1400013f4 <.text+0x3f4>
14000138d: 83 f9 01                    	cmp	ecx, 1
140001390: 77 6a                       	ja	0x1400013fc <.text+0x3fc>
140001392: e8 0d 07 00 00              	call	0x140001aa4 <.text+0xaa4>
140001397: 85 c0                       	test	eax, eax
140001399: 74 28                       	je	0x1400013c3 <.text+0x3c3>
14000139b: 85 db                       	test	ebx, ebx
14000139d: 75 24                       	jne	0x1400013c3 <.text+0x3c3>
14000139f: 48 8d 0d 72 66 01 00        	lea	rcx, [rip + 91762]      # 0x140017a18
1400013a6: e8 dd 2c 00 00              	call	0x140004088 <.text+0x3088>
1400013ab: 85 c0                       	test	eax, eax
1400013ad: 75 10                       	jne	0x1400013bf <.text+0x3bf>
1400013af: 48 8d 0d 7a 66 01 00        	lea	rcx, [rip + 91770]      # 0x140017a30
1400013b6: e8 cd 2c 00 00              	call	0x140004088 <.text+0x3088>
1400013bb: 85 c0                       	test	eax, eax
1400013bd: 74 2e                       	je	0x1400013ed <.text+0x3ed>
1400013bf: 32 c0                       	xor	al, al
1400013c1: eb 33                       	jmp	0x1400013f6 <.text+0x3f6>
1400013c3: 66 0f 6f 05 25 cf 00 00     	movdqa	xmm0, xmmword ptr [rip + 53029] # 0x14000e2f0
1400013cb: 48 83 c8 ff                 	or	rax, -1
1400013cf: f3 0f 7f 05 41 66 01 00     	movdqu	xmmword ptr [rip + 91713], xmm0 # 0x140017a18
1400013d7: 48 89 05 4a 66 01 00        	mov	qword ptr [rip + 91722], rax # 0x140017a28
1400013de: f3 0f 7f 05 4a 66 01 00     	movdqu	xmmword ptr [rip + 91722], xmm0 # 0x140017a30
1400013e6: 48 89 05 53 66 01 00        	mov	qword ptr [rip + 91731], rax # 0x140017a40
1400013ed: c6 05 1d 66 01 00 01        	mov	byte ptr [rip + 91677], 1 # 0x140017a11
1400013f4: b0 01                       	mov	al, 1
1400013f6: 48 83 c4 20                 	add	rsp, 32
1400013fa: 5b                          	pop	rbx
1400013fb: c3                          	ret
1400013fc: b9 05 00 00 00              	mov	ecx, 5
140001401: e8 66 02 00 00              	call	0x14000166c <.text+0x66c>
140001406: cc                          	int3
140001407: cc                          	int3
140001408: 48 83 ec 18                 	sub	rsp, 24
14000140c: 4c 8b c1                    	mov	r8, rcx
14000140f: b8 4d 5a 00 00              	mov	eax, 23117
140001414: 66 39 05 e5 eb ff ff        	cmp	word ptr [rip - 5147], ax # 0x140000000
14000141b: 75 78                       	jne	0x140001495 <.text+0x495>
14000141d: 48 63 0d 18 ec ff ff        	movsxd	rcx, dword ptr [rip - 5096] # 0x14000003c
140001424: 48 8d 15 d5 eb ff ff        	lea	rdx, [rip - 5163]       # 0x140000000
14000142b: 48 03 ca                    	add	rcx, rdx
14000142e: 81 39 50 45 00 00           	cmp	dword ptr [rcx], 17744
140001434: 75 5f                       	jne	0x140001495 <.text+0x495>
140001436: b8 0b 02 00 00              	mov	eax, 523
14000143b: 66 39 41 18                 	cmp	word ptr [rcx + 24], ax
14000143f: 75 54                       	jne	0x140001495 <.text+0x495>
140001441: 4c 2b c2                    	sub	r8, rdx
140001444: 0f b7 51 14                 	movzx	edx, word ptr [rcx + 20]
140001448: 48 83 c2 18                 	add	rdx, 24
14000144c: 48 03 d1                    	add	rdx, rcx
14000144f: 0f b7 41 06                 	movzx	eax, word ptr [rcx + 6]
140001453: 48 8d 0c 80                 	lea	rcx, [rax + 4*rax]
140001457: 4c 8d 0c ca                 	lea	r9, [rdx + 8*rcx]
14000145b: 48 89 14 24                 	mov	qword ptr [rsp], rdx
14000145f: 49 3b d1                    	cmp	rdx, r9
140001462: 74 18                       	je	0x14000147c <.text+0x47c>
140001464: 8b 4a 0c                    	mov	ecx, dword ptr [rdx + 12]
140001467: 4c 3b c1                    	cmp	r8, rcx
14000146a: 72 0a                       	jb	0x140001476 <.text+0x476>
14000146c: 8b 42 08                    	mov	eax, dword ptr [rdx + 8]
14000146f: 03 c1                       	add	eax, ecx
140001471: 4c 3b c0                    	cmp	r8, rax
140001474: 72 08                       	jb	0x14000147e <.text+0x47e>
140001476: 48 83 c2 28                 	add	rdx, 40
14000147a: eb df                       	jmp	0x14000145b <.text+0x45b>
14000147c: 33 d2                       	xor	edx, edx
14000147e: 48 85 d2                    	test	rdx, rdx
140001481: 75 04                       	jne	0x140001487 <.text+0x487>
140001483: 32 c0                       	xor	al, al
140001485: eb 14                       	jmp	0x14000149b <.text+0x49b>
140001487: 83 7a 24 00                 	cmp	dword ptr [rdx + 36], 0
14000148b: 7d 04                       	jge	0x140001491 <.text+0x491>
14000148d: 32 c0                       	xor	al, al
14000148f: eb 0a                       	jmp	0x14000149b <.text+0x49b>
140001491: b0 01                       	mov	al, 1
140001493: eb 06                       	jmp	0x14000149b <.text+0x49b>
140001495: 32 c0                       	xor	al, al
140001497: eb 02                       	jmp	0x14000149b <.text+0x49b>
140001499: 32 c0                       	xor	al, al
14000149b: 48 83 c4 18                 	add	rsp, 24
14000149f: c3                          	ret
1400014a0: 40 53                       	push	rbx
1400014a2: 48 83 ec 20                 	sub	rsp, 32
1400014a6: 8a d9                       	mov	bl, cl
1400014a8: e8 f7 05 00 00              	call	0x140001aa4 <.text+0xaa4>
1400014ad: 33 d2                       	xor	edx, edx
1400014af: 85 c0                       	test	eax, eax
1400014b1: 74 0b                       	je	0x1400014be <.text+0x4be>
1400014b3: 84 db                       	test	bl, bl
1400014b5: 75 07                       	jne	0x1400014be <.text+0x4be>
1400014b7: 48 87 15 4a 65 01 00        	xchg	qword ptr [rip + 91466], rdx # 0x140017a08
1400014be: 48 83 c4 20                 	add	rsp, 32
1400014c2: 5b                          	pop	rbx
1400014c3: c3                          	ret
1400014c4: 40 53                       	push	rbx
1400014c6: 48 83 ec 20                 	sub	rsp, 32
1400014ca: 80 3d 3f 65 01 00 00        	cmp	byte ptr [rip + 91455], 0 # 0x140017a10
1400014d1: 8a d9                       	mov	bl, cl
1400014d3: 74 04                       	je	0x1400014d9 <.text+0x4d9>
1400014d5: 84 d2                       	test	dl, dl
1400014d7: 75 0c                       	jne	0x1400014e5 <.text+0x4e5>
1400014d9: e8 5a 2d 00 00              	call	0x140004238 <.text+0x3238>
1400014de: 8a cb                       	mov	cl, bl
1400014e0: e8 eb 07 00 00              	call	0x140001cd0 <.text+0xcd0>
1400014e5: b0 01                       	mov	al, 1
1400014e7: 48 83 c4 20                 	add	rsp, 32
1400014eb: 5b                          	pop	rbx
1400014ec: c3                          	ret
1400014ed: cc                          	int3
1400014ee: cc                          	int3
1400014ef: cc                          	int3
1400014f0: 40 53                       	push	rbx
1400014f2: 48 83 ec 20                 	sub	rsp, 32
1400014f6: 48 83 3d 1a 65 01 00 ff     	cmp	qword ptr [rip + 91418], -1 # 0x140017a18
1400014fe: 48 8b d9                    	mov	rbx, rcx
140001501: 75 07                       	jne	0x14000150a <.text+0x50a>
140001503: e8 34 2b 00 00              	call	0x14000403c <.text+0x303c>
140001508: eb 0f                       	jmp	0x140001519 <.text+0x519>
14000150a: 48 8b d3                    	mov	rdx, rbx
14000150d: 48 8d 0d 04 65 01 00        	lea	rcx, [rip + 91396]      # 0x140017a18
140001514: e8 97 2b 00 00              	call	0x1400040b0 <.text+0x30b0>
140001519: 33 d2                       	xor	edx, edx
14000151b: 85 c0                       	test	eax, eax
14000151d: 48 0f 44 d3                 	cmove	rdx, rbx
140001521: 48 8b c2                    	mov	rax, rdx
140001524: 48 83 c4 20                 	add	rsp, 32
140001528: 5b                          	pop	rbx
140001529: c3                          	ret
14000152a: cc                          	int3
14000152b: cc                          	int3
14000152c: 48 83 ec 28                 	sub	rsp, 40
140001530: e8 bb ff ff ff              	call	0x1400014f0 <.text+0x4f0>
140001535: 48 f7 d8                    	neg	rax
140001538: 1b c0                       	sbb	eax, eax
14000153a: f7 d8                       	neg	eax
14000153c: ff c8                       	dec	eax
14000153e: 48 83 c4 28                 	add	rsp, 40
140001542: c3                          	ret
140001543: cc                          	int3
140001544: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140001549: 55                          	push	rbp
14000154a: 48 8b ec                    	mov	rbp, rsp
14000154d: 48 83 ec 20                 	sub	rsp, 32
140001551: 48 8b 05 d0 5a 01 00        	mov	rax, qword ptr [rip + 88784] # 0x140017028
140001558: 48 bb 32 a2 df 2d 99 2b 00 00       	movabs	rbx, 47936899621426
140001562: 48 3b c3                    	cmp	rax, rbx
140001565: 75 74                       	jne	0x1400015db <.text+0x5db>
140001567: 48 83 65 18 00              	and	qword ptr [rbp + 24], 0
14000156c: 48 8d 4d 18                 	lea	rcx, [rbp + 24]
140001570: ff 15 a2 ca 00 00           	call	qword ptr [rip + 51874] # 0x14000e018
140001576: 48 8b 45 18                 	mov	rax, qword ptr [rbp + 24]
14000157a: 48 89 45 10                 	mov	qword ptr [rbp + 16], rax
14000157e: ff 15 8c ca 00 00           	call	qword ptr [rip + 51852] # 0x14000e010
140001584: 8b c0                       	mov	eax, eax
140001586: 48 31 45 10                 	xor	qword ptr [rbp + 16], rax
14000158a: ff 15 78 ca 00 00           	call	qword ptr [rip + 51832] # 0x14000e008
140001590: 8b c0                       	mov	eax, eax
140001592: 48 8d 4d 20                 	lea	rcx, [rbp + 32]
140001596: 48 31 45 10                 	xor	qword ptr [rbp + 16], rax
14000159a: ff 15 60 ca 00 00           	call	qword ptr [rip + 51808] # 0x14000e000
1400015a0: 8b 45 20                    	mov	eax, dword ptr [rbp + 32]
1400015a3: 48 8d 4d 10                 	lea	rcx, [rbp + 16]
1400015a7: 48 c1 e0 20                 	shl	rax, 32
1400015ab: 48 33 45 20                 	xor	rax, qword ptr [rbp + 32]
1400015af: 48 33 45 10                 	xor	rax, qword ptr [rbp + 16]
1400015b3: 48 33 c1                    	xor	rax, rcx
1400015b6: 48 b9 ff ff ff ff ff ff 00 00       	movabs	rcx, 281474976710655
1400015c0: 48 23 c1                    	and	rax, rcx
1400015c3: 48 b9 33 a2 df 2d 99 2b 00 00       	movabs	rcx, 47936899621427
1400015cd: 48 3b c3                    	cmp	rax, rbx
1400015d0: 48 0f 44 c1                 	cmove	rax, rcx
1400015d4: 48 89 05 4d 5a 01 00        	mov	qword ptr [rip + 88653], rax # 0x140017028
1400015db: 48 8b 5c 24 48              	mov	rbx, qword ptr [rsp + 72]
1400015e0: 48 f7 d0                    	not	rax
1400015e3: 48 89 05 36 5a 01 00        	mov	qword ptr [rip + 88630], rax # 0x140017020
1400015ea: 48 83 c4 20                 	add	rsp, 32
1400015ee: 5d                          	pop	rbp
1400015ef: c3                          	ret
1400015f0: 33 c0                       	xor	eax, eax
1400015f2: c3                          	ret
1400015f3: cc                          	int3
1400015f4: b8 01 00 00 00              	mov	eax, 1
1400015f9: c3                          	ret
1400015fa: cc                          	int3
1400015fb: cc                          	int3
1400015fc: b8 00 40 00 00              	mov	eax, 16384
140001601: c3                          	ret
140001602: cc                          	int3
140001603: cc                          	int3
140001604: 48 8d 0d 45 64 01 00        	lea	rcx, [rip + 91205]      # 0x140017a50
14000160b: 48 ff 25 0e ca 00 00        	jmp	qword ptr [rip + 51726] # 0x14000e020
140001612: cc                          	int3
140001613: cc                          	int3
140001614: b0 01                       	mov	al, 1
140001616: c3                          	ret
140001617: cc                          	int3
140001618: c2 00 00                    	ret	0
14000161b: cc                          	int3
14000161c: 48 8d 05 3d 64 01 00        	lea	rax, [rip + 91197]      # 0x140017a60
140001623: c3                          	ret
140001624: 48 8d 05 3d 64 01 00        	lea	rax, [rip + 91197]      # 0x140017a68
14000162b: c3                          	ret
14000162c: 48 83 ec 28                 	sub	rsp, 40
140001630: e8 e7 ff ff ff              	call	0x14000161c <.text+0x61c>
140001635: 48 83 08 24                 	or	qword ptr [rax], 36
140001639: e8 e6 ff ff ff              	call	0x140001624 <.text+0x624>
14000163e: 48 83 08 02                 	or	qword ptr [rax], 2
140001642: 48 83 c4 28                 	add	rsp, 40
140001646: c3                          	ret
140001647: cc                          	int3
140001648: 33 c0                       	xor	eax, eax
14000164a: 39 05 b4 59 01 00           	cmp	dword ptr [rip + 88500], eax # 0x140017004
140001650: 0f 94 c0                    	sete	al
140001653: c3                          	ret
140001654: 48 8d 05 65 75 01 00        	lea	rax, [rip + 95589]      # 0x140018bc0
14000165b: c3                          	ret
14000165c: 48 8d 05 55 75 01 00        	lea	rax, [rip + 95573]      # 0x140018bb8
140001663: c3                          	ret
140001664: 83 25 05 64 01 00 00        	and	dword ptr [rip + 91141], 0 # 0x140017a70
14000166b: c3                          	ret
14000166c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140001671: 55                          	push	rbp
140001672: 48 8d ac 24 40 fb ff ff     	lea	rbp, [rsp - 1216]
14000167a: 48 81 ec c0 05 00 00        	sub	rsp, 1472
140001681: 8b d9                       	mov	ebx, ecx
140001683: b9 17 00 00 00              	mov	ecx, 23
140001688: ff 15 d2 c9 00 00           	call	qword ptr [rip + 51666] # 0x14000e060
14000168e: 85 c0                       	test	eax, eax
140001690: 74 04                       	je	0x140001696 <.text+0x696>
140001692: 8b cb                       	mov	ecx, ebx
140001694: cd 29                       	int	41
140001696: b9 03 00 00 00              	mov	ecx, 3
14000169b: e8 c4 ff ff ff              	call	0x140001664 <.text+0x664>
1400016a0: 33 d2                       	xor	edx, edx
1400016a2: 48 8d 4d f0                 	lea	rcx, [rbp - 16]
1400016a6: 41 b8 d0 04 00 00           	mov	r8d, 1232
1400016ac: e8 0f 07 00 00              	call	0x140001dc0 <.text+0xdc0>
1400016b1: 48 8d 4d f0                 	lea	rcx, [rbp - 16]
1400016b5: ff 15 6d c9 00 00           	call	qword ptr [rip + 51565] # 0x14000e028
1400016bb: 48 8b 9d e8 00 00 00        	mov	rbx, qword ptr [rbp + 232]
1400016c2: 48 8d 95 d8 04 00 00        	lea	rdx, [rbp + 1240]
1400016c9: 48 8b cb                    	mov	rcx, rbx
1400016cc: 45 33 c0                    	xor	r8d, r8d
1400016cf: ff 15 5b c9 00 00           	call	qword ptr [rip + 51547] # 0x14000e030
1400016d5: 48 85 c0                    	test	rax, rax
1400016d8: 74 3c                       	je	0x140001716 <.text+0x716>
1400016da: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
1400016e0: 48 8d 8d e0 04 00 00        	lea	rcx, [rbp + 1248]
1400016e7: 48 8b 95 d8 04 00 00        	mov	rdx, qword ptr [rbp + 1240]
1400016ee: 4c 8b c8                    	mov	r9, rax
1400016f1: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
1400016f6: 4c 8b c3                    	mov	r8, rbx
1400016f9: 48 8d 8d e8 04 00 00        	lea	rcx, [rbp + 1256]
140001700: 48 89 4c 24 28              	mov	qword ptr [rsp + 40], rcx
140001705: 48 8d 4d f0                 	lea	rcx, [rbp - 16]
140001709: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
14000170e: 33 c9                       	xor	ecx, ecx
140001710: ff 15 22 c9 00 00           	call	qword ptr [rip + 51490] # 0x14000e038
140001716: 48 8b 85 c8 04 00 00        	mov	rax, qword ptr [rbp + 1224]
14000171d: 48 8d 4c 24 50              	lea	rcx, [rsp + 80]
140001722: 48 89 85 e8 00 00 00        	mov	qword ptr [rbp + 232], rax
140001729: 33 d2                       	xor	edx, edx
14000172b: 48 8d 85 c8 04 00 00        	lea	rax, [rbp + 1224]
140001732: 41 b8 98 00 00 00           	mov	r8d, 152
140001738: 48 83 c0 08                 	add	rax, 8
14000173c: 48 89 85 88 00 00 00        	mov	qword ptr [rbp + 136], rax
140001743: e8 78 06 00 00              	call	0x140001dc0 <.text+0xdc0>
140001748: 48 8b 85 c8 04 00 00        	mov	rax, qword ptr [rbp + 1224]
14000174f: 48 89 44 24 60              	mov	qword ptr [rsp + 96], rax
140001754: c7 44 24 50 15 00 00 40     	mov	dword ptr [rsp + 80], 1073741845
14000175c: c7 44 24 54 01 00 00 00     	mov	dword ptr [rsp + 84], 1
140001764: ff 15 d6 c8 00 00           	call	qword ptr [rip + 51414] # 0x14000e040
14000176a: 83 f8 01                    	cmp	eax, 1
14000176d: 48 8d 44 24 50              	lea	rax, [rsp + 80]
140001772: 48 89 44 24 40              	mov	qword ptr [rsp + 64], rax
140001777: 48 8d 45 f0                 	lea	rax, [rbp - 16]
14000177b: 0f 94 c3                    	sete	bl
14000177e: 48 89 44 24 48              	mov	qword ptr [rsp + 72], rax
140001783: 33 c9                       	xor	ecx, ecx
140001785: ff 15 c5 c8 00 00           	call	qword ptr [rip + 51397] # 0x14000e050
14000178b: 48 8d 4c 24 40              	lea	rcx, [rsp + 64]
140001790: ff 15 b2 c8 00 00           	call	qword ptr [rip + 51378] # 0x14000e048
140001796: 85 c0                       	test	eax, eax
140001798: 75 0c                       	jne	0x1400017a6 <.text+0x7a6>
14000179a: 84 db                       	test	bl, bl
14000179c: 75 08                       	jne	0x1400017a6 <.text+0x7a6>
14000179e: 8d 48 03                    	lea	ecx, [rax + 3]
1400017a1: e8 be fe ff ff              	call	0x140001664 <.text+0x664>
1400017a6: 48 8b 9c 24 d0 05 00 00     	mov	rbx, qword ptr [rsp + 1488]
1400017ae: 48 81 c4 c0 05 00 00        	add	rsp, 1472
1400017b5: 5d                          	pop	rbp
1400017b6: c3                          	ret
1400017b7: cc                          	int3
1400017b8: e9 33 fe ff ff              	jmp	0x1400015f0 <.text+0x5f0>
1400017bd: cc                          	int3
1400017be: cc                          	int3
1400017bf: cc                          	int3
1400017c0: 48 83 ec 28                 	sub	rsp, 40
1400017c4: 33 c9                       	xor	ecx, ecx
1400017c6: ff 15 9c c8 00 00           	call	qword ptr [rip + 51356] # 0x14000e068
1400017cc: 48 85 c0                    	test	rax, rax
1400017cf: 74 39                       	je	0x14000180a <.text+0x80a>
1400017d1: b9 4d 5a 00 00              	mov	ecx, 23117
1400017d6: 66 39 08                    	cmp	word ptr [rax], cx
1400017d9: 75 2f                       	jne	0x14000180a <.text+0x80a>
1400017db: 48 63 48 3c                 	movsxd	rcx, dword ptr [rax + 60]
1400017df: 48 03 c8                    	add	rcx, rax
1400017e2: 81 39 50 45 00 00           	cmp	dword ptr [rcx], 17744
1400017e8: 75 20                       	jne	0x14000180a <.text+0x80a>
1400017ea: b8 0b 02 00 00              	mov	eax, 523
1400017ef: 66 39 41 18                 	cmp	word ptr [rcx + 24], ax
1400017f3: 75 15                       	jne	0x14000180a <.text+0x80a>
1400017f5: 83 b9 84 00 00 00 0e        	cmp	dword ptr [rcx + 132], 14
1400017fc: 76 0c                       	jbe	0x14000180a <.text+0x80a>
1400017fe: 83 b9 f8 00 00 00 00        	cmp	dword ptr [rcx + 248], 0
140001805: 0f 95 c0                    	setne	al
140001808: eb 02                       	jmp	0x14000180c <.text+0x80c>
14000180a: 32 c0                       	xor	al, al
14000180c: 48 83 c4 28                 	add	rsp, 40
140001810: c3                          	ret
140001811: cc                          	int3
140001812: cc                          	int3
140001813: cc                          	int3
140001814: 48 8d 0d 09 00 00 00        	lea	rcx, [rip + 9]          # 0x140001824 <.text+0x824>
14000181b: 48 ff 25 2e c8 00 00        	jmp	qword ptr [rip + 51246] # 0x14000e050
140001822: cc                          	int3
140001823: cc                          	int3
140001824: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140001829: 57                          	push	rdi
14000182a: 48 83 ec 20                 	sub	rsp, 32
14000182e: 48 8b 19                    	mov	rbx, qword ptr [rcx]
140001831: 48 8b f9                    	mov	rdi, rcx
140001834: 81 3b 63 73 6d e0           	cmp	dword ptr [rbx], 3765269347
14000183a: 75 1c                       	jne	0x140001858 <.text+0x858>
14000183c: 83 7b 18 04                 	cmp	dword ptr [rbx + 24], 4
140001840: 75 16                       	jne	0x140001858 <.text+0x858>
140001842: 8b 53 20                    	mov	edx, dword ptr [rbx + 32]
140001845: 8d 82 e0 fa 6c e6           	lea	eax, [rdx - 429065504]
14000184b: 83 f8 02                    	cmp	eax, 2
14000184e: 76 15                       	jbe	0x140001865 <.text+0x865>
140001850: 81 fa 00 40 99 01           	cmp	edx, 26820608
140001856: 74 0d                       	je	0x140001865 <.text+0x865>
140001858: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000185d: 33 c0                       	xor	eax, eax
14000185f: 48 83 c4 20                 	add	rsp, 32
140001863: 5f                          	pop	rdi
140001864: c3                          	ret
140001865: e8 f6 04 00 00              	call	0x140001d60 <.text+0xd60>
14000186a: 48 89 18                    	mov	qword ptr [rax], rbx
14000186d: 48 8b 5f 08                 	mov	rbx, qword ptr [rdi + 8]
140001871: e8 fe 04 00 00              	call	0x140001d74 <.text+0xd74>
140001876: 48 89 18                    	mov	qword ptr [rax], rbx
140001879: e8 f2 29 00 00              	call	0x140004270 <.text+0x3270>
14000187e: cc                          	int3
14000187f: cc                          	int3
140001880: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140001885: 57                          	push	rdi
140001886: 48 83 ec 20                 	sub	rsp, 32
14000188a: 48 8d 1d 7f 42 01 00        	lea	rbx, [rip + 82559]      # 0x140015b10
140001891: 48 8d 3d 78 42 01 00        	lea	rdi, [rip + 82552]      # 0x140015b10
140001898: eb 12                       	jmp	0x1400018ac <.text+0x8ac>
14000189a: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000189d: 48 85 c0                    	test	rax, rax
1400018a0: 74 06                       	je	0x1400018a8 <.text+0x8a8>
1400018a2: ff 15 88 c9 00 00           	call	qword ptr [rip + 51592] # 0x14000e230
1400018a8: 48 83 c3 08                 	add	rbx, 8
1400018ac: 48 3b df                    	cmp	rbx, rdi
1400018af: 72 e9                       	jb	0x14000189a <.text+0x89a>
1400018b1: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400018b6: 48 83 c4 20                 	add	rsp, 32
1400018ba: 5f                          	pop	rdi
1400018bb: c3                          	ret
1400018bc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400018c1: 57                          	push	rdi
1400018c2: 48 83 ec 20                 	sub	rsp, 32
1400018c6: 48 8d 1d 53 42 01 00        	lea	rbx, [rip + 82515]      # 0x140015b20
1400018cd: 48 8d 3d 4c 42 01 00        	lea	rdi, [rip + 82508]      # 0x140015b20
1400018d4: eb 12                       	jmp	0x1400018e8 <.text+0x8e8>
1400018d6: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400018d9: 48 85 c0                    	test	rax, rax
1400018dc: 74 06                       	je	0x1400018e4 <.text+0x8e4>
1400018de: ff 15 4c c9 00 00           	call	qword ptr [rip + 51532] # 0x14000e230
1400018e4: 48 83 c3 08                 	add	rbx, 8
1400018e8: 48 3b df                    	cmp	rbx, rdi
1400018eb: 72 e9                       	jb	0x1400018d6 <.text+0x8d6>
1400018ed: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400018f2: 48 83 c4 20                 	add	rsp, 32
1400018f6: 5f                          	pop	rdi
1400018f7: c3                          	ret
1400018f8: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
1400018fd: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140001902: 57                          	push	rdi
140001903: 48 83 ec 10                 	sub	rsp, 16
140001907: 33 c0                       	xor	eax, eax
140001909: 33 c9                       	xor	ecx, ecx
14000190b: 0f a2                       	cpuid
14000190d: 44 8b c1                    	mov	r8d, ecx
140001910: 45 33 db                    	xor	r11d, r11d
140001913: 44 8b d2                    	mov	r10d, edx
140001916: 41 81 f0 6e 74 65 6c        	xor	r8d, 1818588270
14000191d: 41 81 f2 69 6e 65 49        	xor	r10d, 1231384169
140001924: 44 8b cb                    	mov	r9d, ebx
140001927: 8b f0                       	mov	esi, eax
140001929: 33 c9                       	xor	ecx, ecx
14000192b: 41 8d 43 01                 	lea	eax, [r11 + 1]
14000192f: 45 0b d0                    	or	r10d, r8d
140001932: 0f a2                       	cpuid
140001934: 41 81 f1 47 65 6e 75        	xor	r9d, 1970169159
14000193b: 89 04 24                    	mov	dword ptr [rsp], eax
14000193e: 45 0b d1                    	or	r10d, r9d
140001941: 89 5c 24 04                 	mov	dword ptr [rsp + 4], ebx
140001945: 8b f9                       	mov	edi, ecx
140001947: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
14000194b: 89 54 24 0c                 	mov	dword ptr [rsp + 12], edx
14000194f: 75 5b                       	jne	0x1400019ac <.text+0x9ac>
140001951: 48 83 0d bf 56 01 00 ff     	or	qword ptr [rip + 87743], -1 # 0x140017018
140001959: 25 f0 3f ff 0f              	and	eax, 268386288
14000195e: 48 c7 05 a7 56 01 00 00 80 00 00    	mov	qword ptr [rip + 87719], 32768 # 0x140017010
140001969: 3d c0 06 01 00              	cmp	eax, 67264
14000196e: 74 28                       	je	0x140001998 <.text+0x998>
140001970: 3d 60 06 02 00              	cmp	eax, 132704
140001975: 74 21                       	je	0x140001998 <.text+0x998>
140001977: 3d 70 06 02 00              	cmp	eax, 132720
14000197c: 74 1a                       	je	0x140001998 <.text+0x998>
14000197e: 05 b0 f9 fc ff              	add	eax, 4294769072
140001983: 83 f8 20                    	cmp	eax, 32
140001986: 77 24                       	ja	0x1400019ac <.text+0x9ac>
140001988: 48 b9 01 00 01 00 01 00 00 00       	movabs	rcx, 4295032833
140001992: 48 0f a3 c1                 	bt	rcx, rax
140001996: 73 14                       	jae	0x1400019ac <.text+0x9ac>
140001998: 44 8b 05 d5 60 01 00        	mov	r8d, dword ptr [rip + 90325] # 0x140017a74
14000199f: 41 83 c8 01                 	or	r8d, 1
1400019a3: 44 89 05 ca 60 01 00        	mov	dword ptr [rip + 90314], r8d # 0x140017a74
1400019aa: eb 07                       	jmp	0x1400019b3 <.text+0x9b3>
1400019ac: 44 8b 05 c1 60 01 00        	mov	r8d, dword ptr [rip + 90305] # 0x140017a74
1400019b3: b8 07 00 00 00              	mov	eax, 7
1400019b8: 44 8d 48 fb                 	lea	r9d, [rax - 5]
1400019bc: 3b f0                       	cmp	esi, eax
1400019be: 7c 26                       	jl	0x1400019e6 <.text+0x9e6>
1400019c0: 33 c9                       	xor	ecx, ecx
1400019c2: 0f a2                       	cpuid
1400019c4: 89 04 24                    	mov	dword ptr [rsp], eax
1400019c7: 44 8b db                    	mov	r11d, ebx
1400019ca: 89 5c 24 04                 	mov	dword ptr [rsp + 4], ebx
1400019ce: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
1400019d2: 89 54 24 0c                 	mov	dword ptr [rsp + 12], edx
1400019d6: 0f ba e3 09                 	bt	ebx, 9
1400019da: 73 0a                       	jae	0x1400019e6 <.text+0x9e6>
1400019dc: 45 0b c1                    	or	r8d, r9d
1400019df: 44 89 05 8e 60 01 00        	mov	dword ptr [rip + 90254], r8d # 0x140017a74
1400019e6: c7 05 18 56 01 00 01 00 00 00       	mov	dword ptr [rip + 87576], 1 # 0x140017008
1400019f0: 44 89 0d 15 56 01 00        	mov	dword ptr [rip + 87573], r9d # 0x14001700c
1400019f7: 0f ba e7 14                 	bt	edi, 20
1400019fb: 0f 83 91 00 00 00           	jae	0x140001a92 <.text+0xa92>
140001a01: 44 89 0d 00 56 01 00        	mov	dword ptr [rip + 87552], r9d # 0x140017008
140001a08: bb 06 00 00 00              	mov	ebx, 6
140001a0d: 89 1d f9 55 01 00           	mov	dword ptr [rip + 87545], ebx # 0x14001700c
140001a13: 0f ba e7 1b                 	bt	edi, 27
140001a17: 73 79                       	jae	0x140001a92 <.text+0xa92>
140001a19: 0f ba e7 1c                 	bt	edi, 28
140001a1d: 73 73                       	jae	0x140001a92 <.text+0xa92>
140001a1f: 33 c9                       	xor	ecx, ecx
140001a21: 0f 01 d0                    	xgetbv
140001a24: 48 c1 e2 20                 	shl	rdx, 32
140001a28: 48 0b d0                    	or	rdx, rax
140001a2b: 48 89 54 24 20              	mov	qword ptr [rsp + 32], rdx
140001a30: 48 8b 44 24 20              	mov	rax, qword ptr [rsp + 32]
140001a35: 22 c3                       	and	al, bl
140001a37: 3a c3                       	cmp	al, bl
140001a39: 75 57                       	jne	0x140001a92 <.text+0xa92>
140001a3b: 8b 05 cb 55 01 00           	mov	eax, dword ptr [rip + 87499] # 0x14001700c
140001a41: 83 c8 08                    	or	eax, 8
140001a44: c7 05 ba 55 01 00 03 00 00 00       	mov	dword ptr [rip + 87482], 3 # 0x140017008
140001a4e: 89 05 b8 55 01 00           	mov	dword ptr [rip + 87480], eax # 0x14001700c
140001a54: 41 f6 c3 20                 	test	r11b, 32
140001a58: 74 38                       	je	0x140001a92 <.text+0xa92>
140001a5a: 83 c8 20                    	or	eax, 32
140001a5d: c7 05 a1 55 01 00 05 00 00 00       	mov	dword ptr [rip + 87457], 5 # 0x140017008
140001a67: 89 05 9f 55 01 00           	mov	dword ptr [rip + 87455], eax # 0x14001700c
140001a6d: b8 00 00 03 d0              	mov	eax, 3489857536
140001a72: 44 23 d8                    	and	r11d, eax
140001a75: 44 3b d8                    	cmp	r11d, eax
140001a78: 75 18                       	jne	0x140001a92 <.text+0xa92>
140001a7a: 48 8b 44 24 20              	mov	rax, qword ptr [rsp + 32]
140001a7f: 24 e0                       	and	al, -32
140001a81: 3c e0                       	cmp	al, -32
140001a83: 75 0d                       	jne	0x140001a92 <.text+0xa92>
140001a85: 83 0d 80 55 01 00 40        	or	dword ptr [rip + 87424], 64 # 0x14001700c
140001a8c: 89 1d 76 55 01 00           	mov	dword ptr [rip + 87414], ebx # 0x140017008
140001a92: 48 8b 5c 24 28              	mov	rbx, qword ptr [rsp + 40]
140001a97: 33 c0                       	xor	eax, eax
140001a99: 48 8b 74 24 30              	mov	rsi, qword ptr [rsp + 48]
140001a9e: 48 83 c4 10                 	add	rsp, 16
140001aa2: 5f                          	pop	rdi
140001aa3: c3                          	ret
140001aa4: 33 c0                       	xor	eax, eax
140001aa6: 39 05 04 71 01 00           	cmp	dword ptr [rip + 94468], eax # 0x140018bb0
140001aac: 0f 95 c0                    	setne	al
140001aaf: c3                          	ret
140001ab0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140001ab5: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140001aba: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140001abf: 57                          	push	rdi
140001ac0: 41 54                       	push	r12
140001ac2: 41 55                       	push	r13
140001ac4: 41 56                       	push	r14
140001ac6: 41 57                       	push	r15
140001ac8: 48 83 ec 40                 	sub	rsp, 64
140001acc: 48 8b e9                    	mov	rbp, rcx
140001acf: 4d 8b f9                    	mov	r15, r9
140001ad2: 49 8b c8                    	mov	rcx, r8
140001ad5: 49 8b f0                    	mov	rsi, r8
140001ad8: 4c 8b ea                    	mov	r13, rdx
140001adb: e8 b4 06 00 00              	call	0x140002194 <.text+0x1194>
140001ae0: 4d 8b 67 08                 	mov	r12, qword ptr [r15 + 8]
140001ae4: 4d 8b 37                    	mov	r14, qword ptr [r15]
140001ae7: 49 8b 5f 38                 	mov	rbx, qword ptr [r15 + 56]
140001aeb: 4d 2b f4                    	sub	r14, r12
140001aee: f6 45 04 66                 	test	byte ptr [rbp + 4], 102
140001af2: 41 8b 7f 48                 	mov	edi, dword ptr [r15 + 72]
140001af6: 0f 85 dc 00 00 00           	jne	0x140001bd8 <.text+0xbd8>
140001afc: 48 89 6c 24 30              	mov	qword ptr [rsp + 48], rbp
140001b01: 48 89 74 24 38              	mov	qword ptr [rsp + 56], rsi
140001b06: 3b 3b                       	cmp	edi, dword ptr [rbx]
140001b08: 0f 83 76 01 00 00           	jae	0x140001c84 <.text+0xc84>
140001b0e: 8b f7                       	mov	esi, edi
140001b10: 48 03 f6                    	add	rsi, rsi
140001b13: 8b 44 f3 04                 	mov	eax, dword ptr [rbx + 8*rsi + 4]
140001b17: 4c 3b f0                    	cmp	r14, rax
140001b1a: 0f 82 aa 00 00 00           	jb	0x140001bca <.text+0xbca>
140001b20: 8b 44 f3 08                 	mov	eax, dword ptr [rbx + 8*rsi + 8]
140001b24: 4c 3b f0                    	cmp	r14, rax
140001b27: 0f 83 9d 00 00 00           	jae	0x140001bca <.text+0xbca>
140001b2d: 83 7c f3 10 00              	cmp	dword ptr [rbx + 8*rsi + 16], 0
140001b32: 0f 84 92 00 00 00           	je	0x140001bca <.text+0xbca>
140001b38: 83 7c f3 0c 01              	cmp	dword ptr [rbx + 8*rsi + 12], 1
140001b3d: 74 17                       	je	0x140001b56 <.text+0xb56>
140001b3f: 8b 44 f3 0c                 	mov	eax, dword ptr [rbx + 8*rsi + 12]
140001b43: 48 8d 4c 24 30              	lea	rcx, [rsp + 48]
140001b48: 49 03 c4                    	add	rax, r12
140001b4b: 49 8b d5                    	mov	rdx, r13
140001b4e: ff d0                       	call	rax
140001b50: 85 c0                       	test	eax, eax
140001b52: 78 7d                       	js	0x140001bd1 <.text+0xbd1>
140001b54: 7e 74                       	jle	0x140001bca <.text+0xbca>
140001b56: 81 7d 00 63 73 6d e0        	cmp	dword ptr [rbp], 3765269347
140001b5d: 75 28                       	jne	0x140001b87 <.text+0xb87>
140001b5f: 48 83 3d 99 c7 00 00 00     	cmp	qword ptr [rip + 51097], 0 # 0x14000e300
140001b67: 74 1e                       	je	0x140001b87 <.text+0xb87>
140001b69: 48 8d 0d 90 c7 00 00        	lea	rcx, [rip + 51088]      # 0x14000e300
140001b70: e8 8b ae 00 00              	call	0x14000ca00 <.text+0xba00>
140001b75: 85 c0                       	test	eax, eax
140001b77: 74 0e                       	je	0x140001b87 <.text+0xb87>
140001b79: ba 01 00 00 00              	mov	edx, 1
140001b7e: 48 8b cd                    	mov	rcx, rbp
140001b81: ff 15 79 c7 00 00           	call	qword ptr [rip + 51065] # 0x14000e300
140001b87: 8b 4c f3 10                 	mov	ecx, dword ptr [rbx + 8*rsi + 16]
140001b8b: 41 b8 01 00 00 00           	mov	r8d, 1
140001b91: 49 03 cc                    	add	rcx, r12
140001b94: 49 8b d5                    	mov	rdx, r13
140001b97: e8 c4 05 00 00              	call	0x140002160 <.text+0x1160>
140001b9c: 49 8b 47 40                 	mov	rax, qword ptr [r15 + 64]
140001ba0: 4c 8b c5                    	mov	r8, rbp
140001ba3: 8b 54 f3 10                 	mov	edx, dword ptr [rbx + 8*rsi + 16]
140001ba7: 49 8b cd                    	mov	rcx, r13
140001baa: 44 8b 4d 00                 	mov	r9d, dword ptr [rbp]
140001bae: 49 03 d4                    	add	rdx, r12
140001bb1: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
140001bb6: 49 8b 47 28                 	mov	rax, qword ptr [r15 + 40]
140001bba: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140001bbf: ff 15 b3 c4 00 00           	call	qword ptr [rip + 50355] # 0x14000e078
140001bc5: e8 c6 05 00 00              	call	0x140002190 <.text+0x1190>
140001bca: ff c7                       	inc	edi
140001bcc: e9 35 ff ff ff              	jmp	0x140001b06 <.text+0xb06>
140001bd1: 33 c0                       	xor	eax, eax
140001bd3: e9 b1 00 00 00              	jmp	0x140001c89 <.text+0xc89>
140001bd8: 49 8b 77 20                 	mov	rsi, qword ptr [r15 + 32]
140001bdc: 49 2b f4                    	sub	rsi, r12
140001bdf: e9 96 00 00 00              	jmp	0x140001c7a <.text+0xc7a>
140001be4: 8b cf                       	mov	ecx, edi
140001be6: 48 03 c9                    	add	rcx, rcx
140001be9: 8b 44 cb 04                 	mov	eax, dword ptr [rbx + 8*rcx + 4]
140001bed: 4c 3b f0                    	cmp	r14, rax
140001bf0: 0f 82 82 00 00 00           	jb	0x140001c78 <.text+0xc78>
140001bf6: 8b 44 cb 08                 	mov	eax, dword ptr [rbx + 8*rcx + 8]
140001bfa: 4c 3b f0                    	cmp	r14, rax
140001bfd: 73 79                       	jae	0x140001c78 <.text+0xc78>
140001bff: 44 8b 55 04                 	mov	r10d, dword ptr [rbp + 4]
140001c03: 41 83 e2 20                 	and	r10d, 32
140001c07: 74 44                       	je	0x140001c4d <.text+0xc4d>
140001c09: 45 33 c9                    	xor	r9d, r9d
140001c0c: 85 d2                       	test	edx, edx
140001c0e: 74 38                       	je	0x140001c48 <.text+0xc48>
140001c10: 45 8b c1                    	mov	r8d, r9d
140001c13: 4d 03 c0                    	add	r8, r8
140001c16: 42 8b 44 c3 04              	mov	eax, dword ptr [rbx + 8*r8 + 4]
140001c1b: 48 3b f0                    	cmp	rsi, rax
140001c1e: 72 20                       	jb	0x140001c40 <.text+0xc40>
140001c20: 42 8b 44 c3 08              	mov	eax, dword ptr [rbx + 8*r8 + 8]
140001c25: 48 3b f0                    	cmp	rsi, rax
140001c28: 73 16                       	jae	0x140001c40 <.text+0xc40>
140001c2a: 8b 44 cb 10                 	mov	eax, dword ptr [rbx + 8*rcx + 16]
140001c2e: 42 39 44 c3 10              	cmp	dword ptr [rbx + 8*r8 + 16], eax
140001c33: 75 0b                       	jne	0x140001c40 <.text+0xc40>
140001c35: 8b 44 cb 0c                 	mov	eax, dword ptr [rbx + 8*rcx + 12]
140001c39: 42 39 44 c3 0c              	cmp	dword ptr [rbx + 8*r8 + 12], eax
140001c3e: 74 08                       	je	0x140001c48 <.text+0xc48>
140001c40: 41 ff c1                    	inc	r9d
140001c43: 44 3b ca                    	cmp	r9d, edx
140001c46: 72 c8                       	jb	0x140001c10 <.text+0xc10>
140001c48: 44 3b ca                    	cmp	r9d, edx
140001c4b: 75 37                       	jne	0x140001c84 <.text+0xc84>
140001c4d: 8b 44 cb 10                 	mov	eax, dword ptr [rbx + 8*rcx + 16]
140001c51: 85 c0                       	test	eax, eax
140001c53: 74 0c                       	je	0x140001c61 <.text+0xc61>
140001c55: 48 3b f0                    	cmp	rsi, rax
140001c58: 75 1e                       	jne	0x140001c78 <.text+0xc78>
140001c5a: 45 85 d2                    	test	r10d, r10d
140001c5d: 75 25                       	jne	0x140001c84 <.text+0xc84>
140001c5f: eb 17                       	jmp	0x140001c78 <.text+0xc78>
140001c61: 8d 47 01                    	lea	eax, [rdi + 1]
140001c64: 49 8b d5                    	mov	rdx, r13
140001c67: 41 89 47 48                 	mov	dword ptr [r15 + 72], eax
140001c6b: 44 8b 44 cb 0c              	mov	r8d, dword ptr [rbx + 8*rcx + 12]
140001c70: b1 01                       	mov	cl, 1
140001c72: 4d 03 c4                    	add	r8, r12
140001c75: 41 ff d0                    	call	r8
140001c78: ff c7                       	inc	edi
140001c7a: 8b 13                       	mov	edx, dword ptr [rbx]
140001c7c: 3b fa                       	cmp	edi, edx
140001c7e: 0f 82 60 ff ff ff           	jb	0x140001be4 <.text+0xbe4>
140001c84: b8 01 00 00 00              	mov	eax, 1
140001c89: 4c 8d 5c 24 40              	lea	r11, [rsp + 64]
140001c8e: 49 8b 5b 30                 	mov	rbx, qword ptr [r11 + 48]
140001c92: 49 8b 6b 38                 	mov	rbp, qword ptr [r11 + 56]
140001c96: 49 8b 73 40                 	mov	rsi, qword ptr [r11 + 64]
140001c9a: 49 8b e3                    	mov	rsp, r11
140001c9d: 41 5f                       	pop	r15
140001c9f: 41 5e                       	pop	r14
140001ca1: 41 5d                       	pop	r13
140001ca3: 41 5c                       	pop	r12
140001ca5: 5f                          	pop	rdi
140001ca6: c3                          	ret
140001ca7: cc                          	int3
140001ca8: 48 83 ec 28                 	sub	rsp, 40
140001cac: e8 83 06 00 00              	call	0x140002334 <.text+0x1334>
140001cb1: 84 c0                       	test	al, al
140001cb3: 75 04                       	jne	0x140001cb9 <.text+0xcb9>
140001cb5: 32 c0                       	xor	al, al
140001cb7: eb 12                       	jmp	0x140001ccb <.text+0xccb>
140001cb9: e8 0a 06 00 00              	call	0x1400022c8 <.text+0x12c8>
140001cbe: 84 c0                       	test	al, al
140001cc0: 75 07                       	jne	0x140001cc9 <.text+0xcc9>
140001cc2: e8 b5 06 00 00              	call	0x14000237c <.text+0x137c>
140001cc7: eb ec                       	jmp	0x140001cb5 <.text+0xcb5>
140001cc9: b0 01                       	mov	al, 1
140001ccb: 48 83 c4 28                 	add	rsp, 40
140001ccf: c3                          	ret
140001cd0: 48 83 ec 28                 	sub	rsp, 40
140001cd4: 84 c9                       	test	cl, cl
140001cd6: 75 0a                       	jne	0x140001ce2 <.text+0xce2>
140001cd8: e8 33 06 00 00              	call	0x140002310 <.text+0x1310>
140001cdd: e8 9a 06 00 00              	call	0x14000237c <.text+0x137c>
140001ce2: b0 01                       	mov	al, 1
140001ce4: 48 83 c4 28                 	add	rsp, 40
140001ce8: c3                          	ret
140001ce9: cc                          	int3
140001cea: cc                          	int3
140001ceb: cc                          	int3
140001cec: 48 85 c9                    	test	rcx, rcx
140001cef: 74 67                       	je	0x140001d58 <.text+0xd58>
140001cf1: 88 54 24 10                 	mov	byte ptr [rsp + 16], dl
140001cf5: 48 83 ec 48                 	sub	rsp, 72
140001cf9: 81 39 63 73 6d e0           	cmp	dword ptr [rcx], 3765269347
140001cff: 75 53                       	jne	0x140001d54 <.text+0xd54>
140001d01: 83 79 18 04                 	cmp	dword ptr [rcx + 24], 4
140001d05: 75 4d                       	jne	0x140001d54 <.text+0xd54>
140001d07: 8b 41 20                    	mov	eax, dword ptr [rcx + 32]
140001d0a: 2d 20 05 93 19              	sub	eax, 429065504
140001d0f: 83 f8 02                    	cmp	eax, 2
140001d12: 77 40                       	ja	0x140001d54 <.text+0xd54>
140001d14: 48 8b 41 30                 	mov	rax, qword ptr [rcx + 48]
140001d18: 48 85 c0                    	test	rax, rax
140001d1b: 74 37                       	je	0x140001d54 <.text+0xd54>
140001d1d: 48 63 50 04                 	movsxd	rdx, dword ptr [rax + 4]
140001d21: 85 d2                       	test	edx, edx
140001d23: 74 11                       	je	0x140001d36 <.text+0xd36>
140001d25: 48 03 51 38                 	add	rdx, qword ptr [rcx + 56]
140001d29: 48 8b 49 28                 	mov	rcx, qword ptr [rcx + 40]
140001d2d: e8 2a 00 00 00              	call	0x140001d5c <.text+0xd5c>
140001d32: eb 20                       	jmp	0x140001d54 <.text+0xd54>
140001d34: eb 1e                       	jmp	0x140001d54 <.text+0xd54>
140001d36: f6 00 10                    	test	byte ptr [rax], 16
140001d39: 74 19                       	je	0x140001d54 <.text+0xd54>
140001d3b: 48 8b 41 28                 	mov	rax, qword ptr [rcx + 40]
140001d3f: 48 8b 08                    	mov	rcx, qword ptr [rax]
140001d42: 48 85 c9                    	test	rcx, rcx
140001d45: 74 0d                       	je	0x140001d54 <.text+0xd54>
140001d47: 48 8b 01                    	mov	rax, qword ptr [rcx]
140001d4a: 48 8b 40 10                 	mov	rax, qword ptr [rax + 16]
140001d4e: ff 15 dc c4 00 00           	call	qword ptr [rip + 50396] # 0x14000e230
140001d54: 48 83 c4 48                 	add	rsp, 72
140001d58: c3                          	ret
140001d59: cc                          	int3
140001d5a: cc                          	int3
140001d5b: cc                          	int3
140001d5c: 48 ff e2                    	jmp	rdx
140001d5f: cc                          	int3
140001d60: 48 83 ec 28                 	sub	rsp, 40
140001d64: e8 83 04 00 00              	call	0x1400021ec <.text+0x11ec>
140001d69: 48 83 c0 20                 	add	rax, 32
140001d6d: 48 83 c4 28                 	add	rsp, 40
140001d71: c3                          	ret
140001d72: cc                          	int3
140001d73: cc                          	int3
140001d74: 48 83 ec 28                 	sub	rsp, 40
140001d78: e8 6f 04 00 00              	call	0x1400021ec <.text+0x11ec>
140001d7d: 48 83 c0 28                 	add	rax, 40
140001d81: 48 83 c4 28                 	add	rsp, 40
140001d85: c3                          	ret
140001d86: cc                          	int3
140001d87: cc                          	int3
140001d88: cc                          	int3
140001d89: cc                          	int3
140001d8a: cc                          	int3
140001d8b: cc                          	int3
140001d8c: cc                          	int3
140001d8d: cc                          	int3
140001d8e: cc                          	int3
140001d8f: cc                          	int3
140001d90: cc                          	int3
140001d91: cc                          	int3
140001d92: cc                          	int3
140001d93: cc                          	int3
140001d94: cc                          	int3
140001d95: cc                          	int3
140001d96: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140001da0: 57                          	push	rdi
140001da1: 8b c2                       	mov	eax, edx
140001da3: 48 8b f9                    	mov	rdi, rcx
140001da6: 49 8b c8                    	mov	rcx, r8
140001da9: f3 aa                       	rep		stosb	byte ptr es:[rdi], al
140001dab: 49 8b c1                    	mov	rax, r9
140001dae: 5f                          	pop	rdi
140001daf: c3                          	ret
140001db0: cc                          	int3
140001db1: cc                          	int3
140001db2: cc                          	int3
140001db3: cc                          	int3
140001db4: cc                          	int3
140001db5: cc                          	int3
140001db6: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140001dc0: 48 8b c1                    	mov	rax, rcx
140001dc3: 4c 8b c9                    	mov	r9, rcx
140001dc6: 4c 8d 15 33 e2 ff ff        	lea	r10, [rip - 7629]       # 0x140000000
140001dcd: 0f b6 d2                    	movzx	edx, dl
140001dd0: 49 bb 01 01 01 01 01 01 01 01       	movabs	r11, 72340172838076673
140001dda: 4c 0f af da                 	imul	r11, rdx
140001dde: 66 49 0f 6e c3              	movq	xmm0, r11
140001de3: 49 83 f8 0f                 	cmp	r8, 15
140001de7: 0f 87 83 00 00 00           	ja	0x140001e70 <.text+0xe70>
140001ded: 0f 1f 00                    	nop	dword ptr [rax]
140001df0: 49 03 c8                    	add	rcx, r8
140001df3: 47 8b 8c 82 00 a0 01 00     	mov	r9d, dword ptr [r10 + 4*r8 + 106496]
140001dfb: 4d 03 ca                    	add	r9, r10
140001dfe: 41 ff e1                    	jmp	r9
140001e01: 4c 89 59 f1                 	mov	qword ptr [rcx - 15], r11
140001e05: 44 89 59 f9                 	mov	dword ptr [rcx - 7], r11d
140001e09: 66 44 89 59 fd              	mov	word ptr [rcx - 3], r11w
140001e0e: 44 88 59 ff                 	mov	byte ptr [rcx - 1], r11b
140001e12: c3                          	ret
140001e13: 4c 89 59 f2                 	mov	qword ptr [rcx - 14], r11
140001e17: 44 89 59 fa                 	mov	dword ptr [rcx - 6], r11d
140001e1b: 66 44 89 59 fe              	mov	word ptr [rcx - 2], r11w
140001e20: c3                          	ret
140001e21: 66 66 66 66 66 66 66 0f 1f 84 00 00 00 00 00	nop	word ptr [rax + rax]
140001e30: 4c 89 59 f3                 	mov	qword ptr [rcx - 13], r11
140001e34: 44 89 59 fb                 	mov	dword ptr [rcx - 5], r11d
140001e38: 44 88 59 ff                 	mov	byte ptr [rcx - 1], r11b
140001e3c: c3                          	ret
140001e3d: 0f 1f 00                    	nop	dword ptr [rax]
140001e40: 4c 89 59 f4                 	mov	qword ptr [rcx - 12], r11
140001e44: 44 89 59 fc                 	mov	dword ptr [rcx - 4], r11d
140001e48: c3                          	ret
140001e49: 4c 89 59 f5                 	mov	qword ptr [rcx - 11], r11
140001e4d: 66 44 89 59 fd              	mov	word ptr [rcx - 3], r11w
140001e52: 44 88 59 ff                 	mov	byte ptr [rcx - 1], r11b
140001e56: c3                          	ret
140001e57: 4c 89 59 f7                 	mov	qword ptr [rcx - 9], r11
140001e5b: 44 88 59 ff                 	mov	byte ptr [rcx - 1], r11b
140001e5f: c3                          	ret
140001e60: 4c 89 59 f6                 	mov	qword ptr [rcx - 10], r11
140001e64: 66 44 89 59 fe              	mov	word ptr [rcx - 2], r11w
140001e69: c3                          	ret
140001e6a: 4c 89 59 f8                 	mov	qword ptr [rcx - 8], r11
140001e6e: c3                          	ret
140001e6f: 90                          	nop
140001e70: 66 0f 6c c0                 	punpcklqdq	xmm0, xmm0      # xmm0 = xmm0[0,0]
140001e74: 49 83 f8 20                 	cmp	r8, 32
140001e78: 77 0c                       	ja	0x140001e86 <.text+0xe86>
140001e7a: f3 0f 7f 01                 	movdqu	xmmword ptr [rcx], xmm0
140001e7e: f3 42 0f 7f 44 01 f0        	movdqu	xmmword ptr [rcx + r8 - 16], xmm0
140001e85: c3                          	ret
140001e86: 83 3d 7b 51 01 00 03        	cmp	dword ptr [rip + 86395], 3 # 0x140017008
140001e8d: 0f 82 dd 01 00 00           	jb	0x140002070 <.text+0x1070>
140001e93: 4c 3b 05 76 51 01 00        	cmp	r8, qword ptr [rip + 86390] # 0x140017010
140001e9a: 76 16                       	jbe	0x140001eb2 <.text+0xeb2>
140001e9c: 4c 3b 05 75 51 01 00        	cmp	r8, qword ptr [rip + 86389] # 0x140017018
140001ea3: 77 0d                       	ja	0x140001eb2 <.text+0xeb2>
140001ea5: f6 05 c8 5b 01 00 02        	test	byte ptr [rip + 89032], 2 # 0x140017a74
140001eac: 0f 85 ee fe ff ff           	jne	0x140001da0 <.text+0xda0>
140001eb2: c4 e3 7d 18 c0 01           	vinsertf128	ymm0, ymm0, xmm0, 1
140001eb8: 4c 8b c9                    	mov	r9, rcx
140001ebb: 49 83 e1 1f                 	and	r9, 31
140001ebf: 49 83 e9 20                 	sub	r9, 32
140001ec3: 49 2b c9                    	sub	rcx, r9
140001ec6: 49 2b d1                    	sub	rdx, r9
140001ec9: 4d 03 c1                    	add	r8, r9
140001ecc: 49 81 f8 00 01 00 00        	cmp	r8, 256
140001ed3: 76 65                       	jbe	0x140001f3a <.text+0xf3a>
140001ed5: 4c 3b 05 3c 51 01 00        	cmp	r8, qword ptr [rip + 86332] # 0x140017018
140001edc: 0f 87 ce 00 00 00           	ja	0x140001fb0 <.text+0xfb0>
140001ee2: 66 66 66 66 66 66 0f 1f 84 00 00 00 00 00   	nop	word ptr [rax + rax]
140001ef0: c5 fd 7f 01                 	vmovdqa	ymmword ptr [rcx], ymm0
140001ef4: c5 fd 7f 41 20              	vmovdqa	ymmword ptr [rcx + 32], ymm0
140001ef9: c5 fd 7f 41 40              	vmovdqa	ymmword ptr [rcx + 64], ymm0
140001efe: c5 fd 7f 41 60              	vmovdqa	ymmword ptr [rcx + 96], ymm0
140001f03: c5 fd 7f 81 80 00 00 00     	vmovdqa	ymmword ptr [rcx + 128], ymm0
140001f0b: c5 fd 7f 81 a0 00 00 00     	vmovdqa	ymmword ptr [rcx + 160], ymm0
140001f13: c5 fd 7f 81 c0 00 00 00     	vmovdqa	ymmword ptr [rcx + 192], ymm0
140001f1b: c5 fd 7f 81 e0 00 00 00     	vmovdqa	ymmword ptr [rcx + 224], ymm0
140001f23: 48 81 c1 00 01 00 00        	add	rcx, 256
140001f2a: 49 81 e8 00 01 00 00        	sub	r8, 256
140001f31: 49 81 f8 00 01 00 00        	cmp	r8, 256
140001f38: 73 b6                       	jae	0x140001ef0 <.text+0xef0>
140001f3a: 4d 8d 48 1f                 	lea	r9, [r8 + 31]
140001f3e: 49 83 e1 e0                 	and	r9, -32
140001f42: 4d 8b d9                    	mov	r11, r9
140001f45: 49 c1 eb 05                 	shr	r11, 5
140001f49: 47 8b 9c 9a 40 a0 01 00     	mov	r11d, dword ptr [r10 + 4*r11 + 106560]
140001f51: 4d 03 da                    	add	r11, r10
140001f54: 41 ff e3                    	jmp	r11
140001f57: c4 a1 7e 7f 84 09 00 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 256], ymm0
140001f61: c4 a1 7e 7f 84 09 20 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 224], ymm0
140001f6b: c4 a1 7e 7f 84 09 40 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 192], ymm0
140001f75: c4 a1 7e 7f 84 09 60 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 160], ymm0
140001f7f: c4 a1 7e 7f 44 09 80        	vmovdqu	ymmword ptr [rcx + r9 - 128], ymm0
140001f86: c4 a1 7e 7f 44 09 a0        	vmovdqu	ymmword ptr [rcx + r9 - 96], ymm0
140001f8d: c4 a1 7e 7f 44 09 c0        	vmovdqu	ymmword ptr [rcx + r9 - 64], ymm0
140001f94: c4 a1 7e 7f 44 01 e0        	vmovdqu	ymmword ptr [rcx + r8 - 32], ymm0
140001f9b: c5 fe 7f 00                 	vmovdqu	ymmword ptr [rax], ymm0
140001f9f: c5 f8 77                    	vzeroupper
140001fa2: c3                          	ret
140001fa3: 66 66 66 66 66 0f 1f 84 00 00 00 00 00      	nop	word ptr [rax + rax]
140001fb0: c5 fd e7 01                 	vmovntdq	ymmword ptr [rcx], ymm0
140001fb4: c5 fd e7 41 20              	vmovntdq	ymmword ptr [rcx + 32], ymm0
140001fb9: c5 fd e7 41 40              	vmovntdq	ymmword ptr [rcx + 64], ymm0
140001fbe: c5 fd e7 41 60              	vmovntdq	ymmword ptr [rcx + 96], ymm0
140001fc3: c5 fd e7 81 80 00 00 00     	vmovntdq	ymmword ptr [rcx + 128], ymm0
140001fcb: c5 fd e7 81 a0 00 00 00     	vmovntdq	ymmword ptr [rcx + 160], ymm0
140001fd3: c5 fd e7 81 c0 00 00 00     	vmovntdq	ymmword ptr [rcx + 192], ymm0
140001fdb: c5 fd e7 81 e0 00 00 00     	vmovntdq	ymmword ptr [rcx + 224], ymm0
140001fe3: 48 81 c1 00 01 00 00        	add	rcx, 256
140001fea: 49 81 e8 00 01 00 00        	sub	r8, 256
140001ff1: 49 81 f8 00 01 00 00        	cmp	r8, 256
140001ff8: 73 b6                       	jae	0x140001fb0 <.text+0xfb0>
140001ffa: 4d 8d 48 1f                 	lea	r9, [r8 + 31]
140001ffe: 49 83 e1 e0                 	and	r9, -32
140002002: 4d 8b d9                    	mov	r11, r9
140002005: 49 c1 eb 05                 	shr	r11, 5
140002009: 47 8b 9c 9a 64 a0 01 00     	mov	r11d, dword ptr [r10 + 4*r11 + 106596]
140002011: 4d 03 da                    	add	r11, r10
140002014: 41 ff e3                    	jmp	r11
140002017: c4 a1 7d e7 84 09 00 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 256], ymm0
140002021: c4 a1 7d e7 84 09 20 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 224], ymm0
14000202b: c4 a1 7d e7 84 09 40 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 192], ymm0
140002035: c4 a1 7d e7 84 09 60 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 160], ymm0
14000203f: c4 a1 7d e7 44 09 80        	vmovntdq	ymmword ptr [rcx + r9 - 128], ymm0
140002046: c4 a1 7d e7 44 09 a0        	vmovntdq	ymmword ptr [rcx + r9 - 96], ymm0
14000204d: c4 a1 7d e7 44 09 c0        	vmovntdq	ymmword ptr [rcx + r9 - 64], ymm0
140002054: c4 a1 7e 7f 44 01 e0        	vmovdqu	ymmword ptr [rcx + r8 - 32], ymm0
14000205b: c5 fe 7f 00                 	vmovdqu	ymmword ptr [rax], ymm0
14000205f: 0f ae f8                    	sfence
140002062: c5 f8 77                    	vzeroupper
140002065: c3                          	ret
140002066: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140002070: 4c 3b 05 99 4f 01 00        	cmp	r8, qword ptr [rip + 85913] # 0x140017010
140002077: 76 0d                       	jbe	0x140002086 <.text+0x1086>
140002079: f6 05 f4 59 01 00 02        	test	byte ptr [rip + 88564], 2 # 0x140017a74
140002080: 0f 85 1a fd ff ff           	jne	0x140001da0 <.text+0xda0>
140002086: 4c 8b c9                    	mov	r9, rcx
140002089: 49 83 e1 0f                 	and	r9, 15
14000208d: 49 83 e9 10                 	sub	r9, 16
140002091: 49 2b c9                    	sub	rcx, r9
140002094: 49 2b d1                    	sub	rdx, r9
140002097: 4d 03 c1                    	add	r8, r9
14000209a: 49 81 f8 80 00 00 00        	cmp	r8, 128
1400020a1: 76 4b                       	jbe	0x1400020ee <.text+0x10ee>
1400020a3: 66 66 66 66 66 0f 1f 84 00 00 00 00 00      	nop	word ptr [rax + rax]
1400020b0: 66 0f 7f 01                 	movdqa	xmmword ptr [rcx], xmm0
1400020b4: 66 0f 7f 41 10              	movdqa	xmmword ptr [rcx + 16], xmm0
1400020b9: 66 0f 7f 41 20              	movdqa	xmmword ptr [rcx + 32], xmm0
1400020be: 66 0f 7f 41 30              	movdqa	xmmword ptr [rcx + 48], xmm0
1400020c3: 66 0f 7f 41 40              	movdqa	xmmword ptr [rcx + 64], xmm0
1400020c8: 66 0f 7f 41 50              	movdqa	xmmword ptr [rcx + 80], xmm0
1400020cd: 66 0f 7f 41 60              	movdqa	xmmword ptr [rcx + 96], xmm0
1400020d2: 66 0f 7f 41 70              	movdqa	xmmword ptr [rcx + 112], xmm0
1400020d7: 48 81 c1 80 00 00 00        	add	rcx, 128
1400020de: 49 81 e8 80 00 00 00        	sub	r8, 128
1400020e5: 49 81 f8 80 00 00 00        	cmp	r8, 128
1400020ec: 73 c2                       	jae	0x1400020b0 <.text+0x10b0>
1400020ee: 4d 8d 48 0f                 	lea	r9, [r8 + 15]
1400020f2: 49 83 e1 f0                 	and	r9, -16
1400020f6: 4d 8b d9                    	mov	r11, r9
1400020f9: 49 c1 eb 04                 	shr	r11, 4
1400020fd: 47 8b 9c 9a 88 a0 01 00     	mov	r11d, dword ptr [r10 + 4*r11 + 106632]
140002105: 4d 03 da                    	add	r11, r10
140002108: 41 ff e3                    	jmp	r11
14000210b: f3 42 0f 7f 44 09 80        	movdqu	xmmword ptr [rcx + r9 - 128], xmm0
140002112: f3 42 0f 7f 44 09 90        	movdqu	xmmword ptr [rcx + r9 - 112], xmm0
140002119: f3 42 0f 7f 44 09 a0        	movdqu	xmmword ptr [rcx + r9 - 96], xmm0
140002120: f3 42 0f 7f 44 09 b0        	movdqu	xmmword ptr [rcx + r9 - 80], xmm0
140002127: f3 42 0f 7f 44 09 c0        	movdqu	xmmword ptr [rcx + r9 - 64], xmm0
14000212e: f3 42 0f 7f 44 09 d0        	movdqu	xmmword ptr [rcx + r9 - 48], xmm0
140002135: f3 42 0f 7f 44 09 e0        	movdqu	xmmword ptr [rcx + r9 - 32], xmm0
14000213c: f3 42 0f 7f 44 01 f0        	movdqu	xmmword ptr [rcx + r8 - 16], xmm0
140002143: f3 0f 7f 00                 	movdqu	xmmword ptr [rax], xmm0
140002147: c3                          	ret
140002148: cc                          	int3
140002149: cc                          	int3
14000214a: cc                          	int3
14000214b: cc                          	int3
14000214c: cc                          	int3
14000214d: cc                          	int3
14000214e: cc                          	int3
14000214f: cc                          	int3
140002150: cc                          	int3
140002151: cc                          	int3
140002152: cc                          	int3
140002153: cc                          	int3
140002154: cc                          	int3
140002155: cc                          	int3
140002156: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140002160: 48 89 4c 24 08              	mov	qword ptr [rsp + 8], rcx
140002165: 48 89 54 24 18              	mov	qword ptr [rsp + 24], rdx
14000216a: 44 89 44 24 10              	mov	dword ptr [rsp + 16], r8d
14000216f: 49 c7 c1 20 05 93 19        	mov	r9, 429065504
140002176: eb 08                       	jmp	0x140002180 <.text+0x1180>
140002178: cc                          	int3
140002179: cc                          	int3
14000217a: cc                          	int3
14000217b: cc                          	int3
14000217c: cc                          	int3
14000217d: cc                          	int3
14000217e: 66 90                       	nop
140002180: c3                          	ret
140002181: cc                          	int3
140002182: cc                          	int3
140002183: cc                          	int3
140002184: cc                          	int3
140002185: cc                          	int3
140002186: cc                          	int3
140002187: 66 0f 1f 84 00 00 00 00 00  	nop	word ptr [rax + rax]
140002190: c3                          	ret
140002191: cc                          	int3
140002192: cc                          	int3
140002193: cc                          	int3
140002194: 48 8b 05 85 c0 00 00        	mov	rax, qword ptr [rip + 49285] # 0x14000e220
14000219b: 48 8d 15 76 f4 ff ff        	lea	rdx, [rip - 2954]       # 0x140001618 <.text+0x618>
1400021a2: 48 3b c2                    	cmp	rax, rdx
1400021a5: 74 23                       	je	0x1400021ca <.text+0x11ca>
1400021a7: 65 48 8b 04 25 30 00 00 00  	mov	rax, qword ptr gs:[48]
1400021b0: 48 8b 89 98 00 00 00        	mov	rcx, qword ptr [rcx + 152]
1400021b7: 48 3b 48 10                 	cmp	rcx, qword ptr [rax + 16]
1400021bb: 72 06                       	jb	0x1400021c3 <.text+0x11c3>
1400021bd: 48 3b 48 08                 	cmp	rcx, qword ptr [rax + 8]
1400021c1: 76 07                       	jbe	0x1400021ca <.text+0x11ca>
1400021c3: b9 0d 00 00 00              	mov	ecx, 13
1400021c8: cd 29                       	int	41
1400021ca: c3                          	ret
1400021cb: cc                          	int3
1400021cc: 48 83 ec 28                 	sub	rsp, 40
1400021d0: 48 85 c9                    	test	rcx, rcx
1400021d3: 74 11                       	je	0x1400021e6 <.text+0x11e6>
1400021d5: 48 8d 05 a4 58 01 00        	lea	rax, [rip + 88228]      # 0x140017a80
1400021dc: 48 3b c8                    	cmp	rcx, rax
1400021df: 74 05                       	je	0x1400021e6 <.text+0x11e6>
1400021e1: e8 aa 20 00 00              	call	0x140004290 <.text+0x3290>
1400021e6: 48 83 c4 28                 	add	rsp, 40
1400021ea: c3                          	ret
1400021eb: cc                          	int3
1400021ec: 48 83 ec 28                 	sub	rsp, 40
1400021f0: e8 13 00 00 00              	call	0x140002208 <.text+0x1208>
1400021f5: 48 85 c0                    	test	rax, rax
1400021f8: 74 05                       	je	0x1400021ff <.text+0x11ff>
1400021fa: 48 83 c4 28                 	add	rsp, 40
1400021fe: c3                          	ret
1400021ff: e8 00 21 00 00              	call	0x140004304 <.text+0x3304>
140002204: cc                          	int3
140002205: cc                          	int3
140002206: cc                          	int3
140002207: cc                          	int3
140002208: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000220d: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
140002212: 57                          	push	rdi
140002213: 48 83 ec 20                 	sub	rsp, 32
140002217: 83 3d 12 4e 01 00 ff        	cmp	dword ptr [rip + 85522], -1 # 0x140017030
14000221e: 75 07                       	jne	0x140002227 <.text+0x1227>
140002220: 33 c0                       	xor	eax, eax
140002222: e9 90 00 00 00              	jmp	0x1400022b7 <.text+0x12b7>
140002227: ff 15 53 be 00 00           	call	qword ptr [rip + 48723] # 0x14000e080
14000222d: 8b 0d fd 4d 01 00           	mov	ecx, dword ptr [rip + 85501] # 0x140017030
140002233: 8b f8                       	mov	edi, eax
140002235: e8 5a 03 00 00              	call	0x140002594 <.text+0x1594>
14000223a: 48 83 ca ff                 	or	rdx, -1
14000223e: 33 f6                       	xor	esi, esi
140002240: 48 3b c2                    	cmp	rax, rdx
140002243: 74 67                       	je	0x1400022ac <.text+0x12ac>
140002245: 48 85 c0                    	test	rax, rax
140002248: 74 05                       	je	0x14000224f <.text+0x124f>
14000224a: 48 8b f0                    	mov	rsi, rax
14000224d: eb 5d                       	jmp	0x1400022ac <.text+0x12ac>
14000224f: 8b 0d db 4d 01 00           	mov	ecx, dword ptr [rip + 85467] # 0x140017030
140002255: e8 82 03 00 00              	call	0x1400025dc <.text+0x15dc>
14000225a: 85 c0                       	test	eax, eax
14000225c: 74 4e                       	je	0x1400022ac <.text+0x12ac>
14000225e: ba 80 00 00 00              	mov	edx, 128
140002263: 8d 4a 81                    	lea	ecx, [rdx - 127]
140002266: e8 f1 20 00 00              	call	0x14000435c <.text+0x335c>
14000226b: 8b 0d bf 4d 01 00           	mov	ecx, dword ptr [rip + 85439] # 0x140017030
140002271: 48 8b d8                    	mov	rbx, rax
140002274: 48 85 c0                    	test	rax, rax
140002277: 74 24                       	je	0x14000229d <.text+0x129d>
140002279: 48 8b d0                    	mov	rdx, rax
14000227c: e8 5b 03 00 00              	call	0x1400025dc <.text+0x15dc>
140002281: 85 c0                       	test	eax, eax
140002283: 74 12                       	je	0x140002297 <.text+0x1297>
140002285: 48 8b c3                    	mov	rax, rbx
140002288: c7 43 78 fe ff ff ff        	mov	dword ptr [rbx + 120], 4294967294
14000228f: 48 8b de                    	mov	rbx, rsi
140002292: 48 8b f0                    	mov	rsi, rax
140002295: eb 0d                       	jmp	0x1400022a4 <.text+0x12a4>
140002297: 8b 0d 93 4d 01 00           	mov	ecx, dword ptr [rip + 85395] # 0x140017030
14000229d: 33 d2                       	xor	edx, edx
14000229f: e8 38 03 00 00              	call	0x1400025dc <.text+0x15dc>
1400022a4: 48 8b cb                    	mov	rcx, rbx
1400022a7: e8 e4 1f 00 00              	call	0x140004290 <.text+0x3290>
1400022ac: 8b cf                       	mov	ecx, edi
1400022ae: ff 15 d4 bd 00 00           	call	qword ptr [rip + 48596] # 0x14000e088
1400022b4: 48 8b c6                    	mov	rax, rsi
1400022b7: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400022bc: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
1400022c1: 48 83 c4 20                 	add	rsp, 32
1400022c5: 5f                          	pop	rdi
1400022c6: c3                          	ret
1400022c7: cc                          	int3
1400022c8: 48 83 ec 28                 	sub	rsp, 40
1400022cc: 48 8d 0d f9 fe ff ff        	lea	rcx, [rip - 263]        # 0x1400021cc <.text+0x11cc>
1400022d3: e8 2c 02 00 00              	call	0x140002504 <.text+0x1504>
1400022d8: 89 05 52 4d 01 00           	mov	dword ptr [rip + 85330], eax # 0x140017030
1400022de: 83 f8 ff                    	cmp	eax, -1
1400022e1: 74 25                       	je	0x140002308 <.text+0x1308>
1400022e3: 48 8d 15 96 57 01 00        	lea	rdx, [rip + 87958]      # 0x140017a80
1400022ea: 8b c8                       	mov	ecx, eax
1400022ec: e8 eb 02 00 00              	call	0x1400025dc <.text+0x15dc>
1400022f1: 85 c0                       	test	eax, eax
1400022f3: 74 0e                       	je	0x140002303 <.text+0x1303>
1400022f5: c7 05 f9 57 01 00 fe ff ff ff       	mov	dword ptr [rip + 88057], 4294967294 # 0x140017af8
1400022ff: b0 01                       	mov	al, 1
140002301: eb 07                       	jmp	0x14000230a <.text+0x130a>
140002303: e8 08 00 00 00              	call	0x140002310 <.text+0x1310>
140002308: 32 c0                       	xor	al, al
14000230a: 48 83 c4 28                 	add	rsp, 40
14000230e: c3                          	ret
14000230f: cc                          	int3
140002310: 48 83 ec 28                 	sub	rsp, 40
140002314: 8b 0d 16 4d 01 00           	mov	ecx, dword ptr [rip + 85270] # 0x140017030
14000231a: 83 f9 ff                    	cmp	ecx, -1
14000231d: 74 0c                       	je	0x14000232b <.text+0x132b>
14000231f: e8 28 02 00 00              	call	0x14000254c <.text+0x154c>
140002324: 83 0d 05 4d 01 00 ff        	or	dword ptr [rip + 85253], -1 # 0x140017030
14000232b: b0 01                       	mov	al, 1
14000232d: 48 83 c4 28                 	add	rsp, 40
140002331: c3                          	ret
140002332: cc                          	int3
140002333: cc                          	int3
140002334: 40 53                       	push	rbx
140002336: 48 83 ec 20                 	sub	rsp, 32
14000233a: 33 db                       	xor	ebx, ebx
14000233c: 48 8d 15 bd 57 01 00        	lea	rdx, [rip + 87997]      # 0x140017b00
140002343: 45 33 c0                    	xor	r8d, r8d
140002346: 48 8d 0c 9b                 	lea	rcx, [rbx + 4*rbx]
14000234a: 48 8d 0c ca                 	lea	rcx, [rdx + 8*rcx]
14000234e: ba a0 0f 00 00              	mov	edx, 4000
140002353: e8 d8 02 00 00              	call	0x140002630 <.text+0x1630>
140002358: 85 c0                       	test	eax, eax
14000235a: 74 11                       	je	0x14000236d <.text+0x136d>
14000235c: ff 05 c6 57 01 00           	inc	dword ptr [rip + 88006] # 0x140017b28
140002362: ff c3                       	inc	ebx
140002364: 83 fb 01                    	cmp	ebx, 1
140002367: 72 d3                       	jb	0x14000233c <.text+0x133c>
140002369: b0 01                       	mov	al, 1
14000236b: eb 07                       	jmp	0x140002374 <.text+0x1374>
14000236d: e8 0a 00 00 00              	call	0x14000237c <.text+0x137c>
140002372: 32 c0                       	xor	al, al
140002374: 48 83 c4 20                 	add	rsp, 32
140002378: 5b                          	pop	rbx
140002379: c3                          	ret
14000237a: cc                          	int3
14000237b: cc                          	int3
14000237c: 40 53                       	push	rbx
14000237e: 48 83 ec 20                 	sub	rsp, 32
140002382: 8b 1d a0 57 01 00           	mov	ebx, dword ptr [rip + 87968] # 0x140017b28
140002388: eb 1d                       	jmp	0x1400023a7 <.text+0x13a7>
14000238a: 48 8d 05 6f 57 01 00        	lea	rax, [rip + 87919]      # 0x140017b00
140002391: ff cb                       	dec	ebx
140002393: 48 8d 0c 9b                 	lea	rcx, [rbx + 4*rbx]
140002397: 48 8d 0c c8                 	lea	rcx, [rax + 8*rcx]
14000239b: ff 15 ff bc 00 00           	call	qword ptr [rip + 48383] # 0x14000e0a0
1400023a1: ff 0d 81 57 01 00           	dec	dword ptr [rip + 87937] # 0x140017b28
1400023a7: 85 db                       	test	ebx, ebx
1400023a9: 75 df                       	jne	0x14000238a <.text+0x138a>
1400023ab: b0 01                       	mov	al, 1
1400023ad: 48 83 c4 20                 	add	rsp, 32
1400023b1: 5b                          	pop	rbx
1400023b2: c3                          	ret
1400023b3: cc                          	int3
1400023b4: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400023b9: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
1400023be: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
1400023c3: 57                          	push	rdi
1400023c4: 41 54                       	push	r12
1400023c6: 41 55                       	push	r13
1400023c8: 41 56                       	push	r14
1400023ca: 41 57                       	push	r15
1400023cc: 48 83 ec 20                 	sub	rsp, 32
1400023d0: 8b f9                       	mov	edi, ecx
1400023d2: 4c 8d 3d 27 dc ff ff        	lea	r15, [rip - 9177]       # 0x140000000
1400023d9: 49 83 ce ff                 	or	r14, -1
1400023dd: 4d 8b e1                    	mov	r12, r9
1400023e0: 49 8b e8                    	mov	rbp, r8
1400023e3: 4c 8b ea                    	mov	r13, rdx
1400023e6: 49 8b 84 ff b0 7b 01 00     	mov	rax, qword ptr [r15 + 8*rdi + 97200]
1400023ee: 90                          	nop
1400023ef: 49 3b c6                    	cmp	rax, r14
1400023f2: 0f 84 eb 00 00 00           	je	0x1400024e3 <.text+0x14e3>
1400023f8: 48 85 c0                    	test	rax, rax
1400023fb: 0f 85 e4 00 00 00           	jne	0x1400024e5 <.text+0x14e5>
140002401: 4d 3b c1                    	cmp	r8, r9
140002404: 0f 84 d1 00 00 00           	je	0x1400024db <.text+0x14db>
14000240a: 8b 75 00                    	mov	esi, dword ptr [rbp]
14000240d: 49 8b 9c f7 98 7b 01 00     	mov	rbx, qword ptr [r15 + 8*rsi + 97176]
140002415: 90                          	nop
140002416: 48 85 db                    	test	rbx, rbx
140002419: 74 0b                       	je	0x140002426 <.text+0x1426>
14000241b: 49 3b de                    	cmp	rbx, r14
14000241e: 0f 85 99 00 00 00           	jne	0x1400024bd <.text+0x14bd>
140002424: eb 6b                       	jmp	0x140002491 <.text+0x1491>
140002426: 4d 8b bc f7 e8 f0 00 00     	mov	r15, qword ptr [r15 + 8*rsi + 61672]
14000242e: 33 d2                       	xor	edx, edx
140002430: 49 8b cf                    	mov	rcx, r15
140002433: 41 b8 00 08 00 00           	mov	r8d, 2048
140002439: ff 15 a1 bc 00 00           	call	qword ptr [rip + 48289] # 0x14000e0e0
14000243f: 48 8b d8                    	mov	rbx, rax
140002442: 48 85 c0                    	test	rax, rax
140002445: 75 56                       	jne	0x14000249d <.text+0x149d>
140002447: ff 15 33 bc 00 00           	call	qword ptr [rip + 48179] # 0x14000e080
14000244d: 83 f8 57                    	cmp	eax, 87
140002450: 75 2d                       	jne	0x14000247f <.text+0x147f>
140002452: 44 8d 43 07                 	lea	r8d, [rbx + 7]
140002456: 49 8b cf                    	mov	rcx, r15
140002459: 48 8d 15 38 cd 00 00        	lea	rdx, [rip + 52536]      # 0x14000f198
140002460: e8 2b 20 00 00              	call	0x140004490 <.text+0x3490>
140002465: 85 c0                       	test	eax, eax
140002467: 74 16                       	je	0x14000247f <.text+0x147f>
140002469: 45 33 c0                    	xor	r8d, r8d
14000246c: 33 d2                       	xor	edx, edx
14000246e: 49 8b cf                    	mov	rcx, r15
140002471: ff 15 69 bc 00 00           	call	qword ptr [rip + 48233] # 0x14000e0e0
140002477: 48 8b d8                    	mov	rbx, rax
14000247a: 48 85 c0                    	test	rax, rax
14000247d: 75 1e                       	jne	0x14000249d <.text+0x149d>
14000247f: 49 8b c6                    	mov	rax, r14
140002482: 4c 8d 3d 77 db ff ff        	lea	r15, [rip - 9353]       # 0x140000000
140002489: 49 87 84 f7 98 7b 01 00     	xchg	qword ptr [r15 + 8*rsi + 97176], rax
140002491: 48 83 c5 04                 	add	rbp, 4
140002495: 49 3b ec                    	cmp	rbp, r12
140002498: e9 67 ff ff ff              	jmp	0x140002404 <.text+0x1404>
14000249d: 48 8b c3                    	mov	rax, rbx
1400024a0: 4c 8d 3d 59 db ff ff        	lea	r15, [rip - 9383]       # 0x140000000
1400024a7: 49 87 84 f7 98 7b 01 00     	xchg	qword ptr [r15 + 8*rsi + 97176], rax
1400024af: 48 85 c0                    	test	rax, rax
1400024b2: 74 09                       	je	0x1400024bd <.text+0x14bd>
1400024b4: 48 8b cb                    	mov	rcx, rbx
1400024b7: ff 15 13 bc 00 00           	call	qword ptr [rip + 48147] # 0x14000e0d0
1400024bd: 49 8b d5                    	mov	rdx, r13
1400024c0: 48 8b cb                    	mov	rcx, rbx
1400024c3: ff 15 0f bc 00 00           	call	qword ptr [rip + 48143] # 0x14000e0d8
1400024c9: 48 85 c0                    	test	rax, rax
1400024cc: 74 0d                       	je	0x1400024db <.text+0x14db>
1400024ce: 48 8b c8                    	mov	rcx, rax
1400024d1: 49 87 8c ff b0 7b 01 00     	xchg	qword ptr [r15 + 8*rdi + 97200], rcx
1400024d9: eb 0a                       	jmp	0x1400024e5 <.text+0x14e5>
1400024db: 4d 87 b4 ff b0 7b 01 00     	xchg	qword ptr [r15 + 8*rdi + 97200], r14
1400024e3: 33 c0                       	xor	eax, eax
1400024e5: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
1400024ea: 48 8b 6c 24 58              	mov	rbp, qword ptr [rsp + 88]
1400024ef: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
1400024f4: 48 83 c4 20                 	add	rsp, 32
1400024f8: 41 5f                       	pop	r15
1400024fa: 41 5e                       	pop	r14
1400024fc: 41 5d                       	pop	r13
1400024fe: 41 5c                       	pop	r12
140002500: 5f                          	pop	rdi
140002501: c3                          	ret
140002502: cc                          	int3
140002503: cc                          	int3
140002504: 40 53                       	push	rbx
140002506: 48 83 ec 20                 	sub	rsp, 32
14000250a: 48 8b d9                    	mov	rbx, rcx
14000250d: 4c 8d 0d 9c cc 00 00        	lea	r9, [rip + 52380]       # 0x14000f1b0
140002514: 33 c9                       	xor	ecx, ecx
140002516: 4c 8d 05 8b cc 00 00        	lea	r8, [rip + 52363]       # 0x14000f1a8
14000251d: 48 8d 15 8c cc 00 00        	lea	rdx, [rip + 52364]      # 0x14000f1b0
140002524: e8 8b fe ff ff              	call	0x1400023b4 <.text+0x13b4>
140002529: 48 85 c0                    	test	rax, rax
14000252c: 74 0f                       	je	0x14000253d <.text+0x153d>
14000252e: 48 8b cb                    	mov	rcx, rbx
140002531: 48 83 c4 20                 	add	rsp, 32
140002535: 5b                          	pop	rbx
140002536: 48 ff 25 f3 bc 00 00        	jmp	qword ptr [rip + 48371] # 0x14000e230
14000253d: 48 83 c4 20                 	add	rsp, 32
140002541: 5b                          	pop	rbx
140002542: 48 ff 25 67 bb 00 00        	jmp	qword ptr [rip + 47975] # 0x14000e0b0
140002549: cc                          	int3
14000254a: cc                          	int3
14000254b: cc                          	int3
14000254c: 40 53                       	push	rbx
14000254e: 48 83 ec 20                 	sub	rsp, 32
140002552: 8b d9                       	mov	ebx, ecx
140002554: 4c 8d 0d 6d cc 00 00        	lea	r9, [rip + 52333]       # 0x14000f1c8
14000255b: b9 01 00 00 00              	mov	ecx, 1
140002560: 4c 8d 05 59 cc 00 00        	lea	r8, [rip + 52313]       # 0x14000f1c0
140002567: 48 8d 15 5a cc 00 00        	lea	rdx, [rip + 52314]      # 0x14000f1c8
14000256e: e8 41 fe ff ff              	call	0x1400023b4 <.text+0x13b4>
140002573: 8b cb                       	mov	ecx, ebx
140002575: 48 85 c0                    	test	rax, rax
140002578: 74 0c                       	je	0x140002586 <.text+0x1586>
14000257a: 48 83 c4 20                 	add	rsp, 32
14000257e: 5b                          	pop	rbx
14000257f: 48 ff 25 aa bc 00 00        	jmp	qword ptr [rip + 48298] # 0x14000e230
140002586: 48 83 c4 20                 	add	rsp, 32
14000258a: 5b                          	pop	rbx
14000258b: 48 ff 25 36 bb 00 00        	jmp	qword ptr [rip + 47926] # 0x14000e0c8
140002592: cc                          	int3
140002593: cc                          	int3
140002594: 40 53                       	push	rbx
140002596: 48 83 ec 20                 	sub	rsp, 32
14000259a: 8b d9                       	mov	ebx, ecx
14000259c: 4c 8d 0d 35 cc 00 00        	lea	r9, [rip + 52277]       # 0x14000f1d8
1400025a3: b9 02 00 00 00              	mov	ecx, 2
1400025a8: 4c 8d 05 21 cc 00 00        	lea	r8, [rip + 52257]       # 0x14000f1d0
1400025af: 48 8d 15 22 cc 00 00        	lea	rdx, [rip + 52258]      # 0x14000f1d8
1400025b6: e8 f9 fd ff ff              	call	0x1400023b4 <.text+0x13b4>
1400025bb: 8b cb                       	mov	ecx, ebx
1400025bd: 48 85 c0                    	test	rax, rax
1400025c0: 74 0c                       	je	0x1400025ce <.text+0x15ce>
1400025c2: 48 83 c4 20                 	add	rsp, 32
1400025c6: 5b                          	pop	rbx
1400025c7: 48 ff 25 62 bc 00 00        	jmp	qword ptr [rip + 48226] # 0x14000e230
1400025ce: 48 83 c4 20                 	add	rsp, 32
1400025d2: 5b                          	pop	rbx
1400025d3: 48 ff 25 de ba 00 00        	jmp	qword ptr [rip + 47838] # 0x14000e0b8
1400025da: cc                          	int3
1400025db: cc                          	int3
1400025dc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400025e1: 57                          	push	rdi
1400025e2: 48 83 ec 20                 	sub	rsp, 32
1400025e6: 48 8b da                    	mov	rbx, rdx
1400025e9: 4c 8d 0d 00 cc 00 00        	lea	r9, [rip + 52224]       # 0x14000f1f0
1400025f0: 8b f9                       	mov	edi, ecx
1400025f2: 48 8d 15 f7 cb 00 00        	lea	rdx, [rip + 52215]      # 0x14000f1f0
1400025f9: b9 03 00 00 00              	mov	ecx, 3
1400025fe: 4c 8d 05 e3 cb 00 00        	lea	r8, [rip + 52195]       # 0x14000f1e8
140002605: e8 aa fd ff ff              	call	0x1400023b4 <.text+0x13b4>
14000260a: 48 8b d3                    	mov	rdx, rbx
14000260d: 8b cf                       	mov	ecx, edi
14000260f: 48 85 c0                    	test	rax, rax
140002612: 74 08                       	je	0x14000261c <.text+0x161c>
140002614: ff 15 16 bc 00 00           	call	qword ptr [rip + 48150] # 0x14000e230
14000261a: eb 06                       	jmp	0x140002622 <.text+0x1622>
14000261c: ff 15 9e ba 00 00           	call	qword ptr [rip + 47774] # 0x14000e0c0
140002622: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140002627: 48 83 c4 20                 	add	rsp, 32
14000262b: 5f                          	pop	rdi
14000262c: c3                          	ret
14000262d: cc                          	int3
14000262e: cc                          	int3
14000262f: cc                          	int3
140002630: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140002635: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000263a: 57                          	push	rdi
14000263b: 48 83 ec 20                 	sub	rsp, 32
14000263f: 41 8b f0                    	mov	esi, r8d
140002642: 4c 8d 0d bf cb 00 00        	lea	r9, [rip + 52159]       # 0x14000f208
140002649: 8b da                       	mov	ebx, edx
14000264b: 4c 8d 05 ae cb 00 00        	lea	r8, [rip + 52142]       # 0x14000f200
140002652: 48 8b f9                    	mov	rdi, rcx
140002655: 48 8d 15 ac cb 00 00        	lea	rdx, [rip + 52140]      # 0x14000f208
14000265c: b9 04 00 00 00              	mov	ecx, 4
140002661: e8 4e fd ff ff              	call	0x1400023b4 <.text+0x13b4>
140002666: 8b d3                       	mov	edx, ebx
140002668: 48 8b cf                    	mov	rcx, rdi
14000266b: 48 85 c0                    	test	rax, rax
14000266e: 74 0b                       	je	0x14000267b <.text+0x167b>
140002670: 44 8b c6                    	mov	r8d, esi
140002673: ff 15 b7 bb 00 00           	call	qword ptr [rip + 48055] # 0x14000e230
140002679: eb 06                       	jmp	0x140002681 <.text+0x1681>
14000267b: ff 15 27 ba 00 00           	call	qword ptr [rip + 47655] # 0x14000e0a8
140002681: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140002686: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
14000268b: 48 83 c4 20                 	add	rsp, 32
14000268f: 5f                          	pop	rdi
140002690: c3                          	ret
140002691: cc                          	int3
140002692: cc                          	int3
140002693: cc                          	int3
140002694: cc                          	int3
140002695: cc                          	int3
140002696: cc                          	int3
140002697: cc                          	int3
140002698: cc                          	int3
140002699: cc                          	int3
14000269a: cc                          	int3
14000269b: cc                          	int3
14000269c: cc                          	int3
14000269d: cc                          	int3
14000269e: cc                          	int3
14000269f: cc                          	int3
1400026a0: cc                          	int3
1400026a1: cc                          	int3
1400026a2: cc                          	int3
1400026a3: cc                          	int3
1400026a4: cc                          	int3
1400026a5: cc                          	int3
1400026a6: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
1400026b0: 57                          	push	rdi
1400026b1: 56                          	push	rsi
1400026b2: 48 8b f9                    	mov	rdi, rcx
1400026b5: 48 8b f2                    	mov	rsi, rdx
1400026b8: 49 8b c8                    	mov	rcx, r8
1400026bb: f3 a4                       	rep		movsb	byte ptr es:[rdi], byte ptr [rsi]
1400026bd: 5e                          	pop	rsi
1400026be: 5f                          	pop	rdi
1400026bf: c3                          	ret
1400026c0: cc                          	int3
1400026c1: cc                          	int3
1400026c2: cc                          	int3
1400026c3: cc                          	int3
1400026c4: cc                          	int3
1400026c5: cc                          	int3
1400026c6: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
1400026d0: 48 8b c1                    	mov	rax, rcx
1400026d3: 4c 8d 15 26 d9 ff ff        	lea	r10, [rip - 9946]       # 0x140000000
1400026da: 49 83 f8 0f                 	cmp	r8, 15
1400026de: 0f 87 0c 01 00 00           	ja	0x1400027f0 <.text+0x17f0>
1400026e4: 66 66 66 66 0f 1f 84 00 00 00 00 00 	nop	word ptr [rax + rax]
1400026f0: 47 8b 8c 82 b0 a0 01 00     	mov	r9d, dword ptr [r10 + 4*r8 + 106672]
1400026f8: 4d 03 ca                    	add	r9, r10
1400026fb: 41 ff e1                    	jmp	r9
1400026fe: c3                          	ret
1400026ff: 90                          	nop
140002700: 4c 8b 02                    	mov	r8, qword ptr [rdx]
140002703: 8b 4a 08                    	mov	ecx, dword ptr [rdx + 8]
140002706: 44 0f b7 4a 0c              	movzx	r9d, word ptr [rdx + 12]
14000270b: 44 0f b6 52 0e              	movzx	r10d, byte ptr [rdx + 14]
140002710: 4c 89 00                    	mov	qword ptr [rax], r8
140002713: 89 48 08                    	mov	dword ptr [rax + 8], ecx
140002716: 66 44 89 48 0c              	mov	word ptr [rax + 12], r9w
14000271b: 44 88 50 0e                 	mov	byte ptr [rax + 14], r10b
14000271f: c3                          	ret
140002720: 4c 8b 02                    	mov	r8, qword ptr [rdx]
140002723: 0f b7 4a 08                 	movzx	ecx, word ptr [rdx + 8]
140002727: 44 0f b6 4a 0a              	movzx	r9d, byte ptr [rdx + 10]
14000272c: 4c 89 00                    	mov	qword ptr [rax], r8
14000272f: 66 89 48 08                 	mov	word ptr [rax + 8], cx
140002733: 44 88 48 0a                 	mov	byte ptr [rax + 10], r9b
140002737: c3                          	ret
140002738: 0f b7 0a                    	movzx	ecx, word ptr [rdx]
14000273b: 66 89 08                    	mov	word ptr [rax], cx
14000273e: c3                          	ret
14000273f: 90                          	nop
140002740: 8b 0a                       	mov	ecx, dword ptr [rdx]
140002742: 44 0f b7 42 04              	movzx	r8d, word ptr [rdx + 4]
140002747: 44 0f b6 4a 06              	movzx	r9d, byte ptr [rdx + 6]
14000274c: 89 08                       	mov	dword ptr [rax], ecx
14000274e: 66 44 89 40 04              	mov	word ptr [rax + 4], r8w
140002753: 44 88 48 06                 	mov	byte ptr [rax + 6], r9b
140002757: c3                          	ret
140002758: 4c 8b 02                    	mov	r8, qword ptr [rdx]
14000275b: 8b 4a 08                    	mov	ecx, dword ptr [rdx + 8]
14000275e: 44 0f b7 4a 0c              	movzx	r9d, word ptr [rdx + 12]
140002763: 4c 89 00                    	mov	qword ptr [rax], r8
140002766: 89 48 08                    	mov	dword ptr [rax + 8], ecx
140002769: 66 44 89 48 0c              	mov	word ptr [rax + 12], r9w
14000276e: c3                          	ret
14000276f: 0f b7 0a                    	movzx	ecx, word ptr [rdx]
140002772: 44 0f b6 42 02              	movzx	r8d, byte ptr [rdx + 2]
140002777: 66 89 08                    	mov	word ptr [rax], cx
14000277a: 44 88 40 02                 	mov	byte ptr [rax + 2], r8b
14000277e: c3                          	ret
14000277f: 90                          	nop
140002780: 4c 8b 02                    	mov	r8, qword ptr [rdx]
140002783: 8b 4a 08                    	mov	ecx, dword ptr [rdx + 8]
140002786: 44 0f b6 4a 0c              	movzx	r9d, byte ptr [rdx + 12]
14000278b: 4c 89 00                    	mov	qword ptr [rax], r8
14000278e: 89 48 08                    	mov	dword ptr [rax + 8], ecx
140002791: 44 88 48 0c                 	mov	byte ptr [rax + 12], r9b
140002795: c3                          	ret
140002796: 4c 8b 02                    	mov	r8, qword ptr [rdx]
140002799: 0f b7 4a 08                 	movzx	ecx, word ptr [rdx + 8]
14000279d: 4c 89 00                    	mov	qword ptr [rax], r8
1400027a0: 66 89 48 08                 	mov	word ptr [rax + 8], cx
1400027a4: c3                          	ret
1400027a5: 4c 8b 02                    	mov	r8, qword ptr [rdx]
1400027a8: 0f b6 4a 08                 	movzx	ecx, byte ptr [rdx + 8]
1400027ac: 4c 89 00                    	mov	qword ptr [rax], r8
1400027af: 88 48 08                    	mov	byte ptr [rax + 8], cl
1400027b2: c3                          	ret
1400027b3: 4c 8b 02                    	mov	r8, qword ptr [rdx]
1400027b6: 8b 4a 08                    	mov	ecx, dword ptr [rdx + 8]
1400027b9: 4c 89 00                    	mov	qword ptr [rax], r8
1400027bc: 89 48 08                    	mov	dword ptr [rax + 8], ecx
1400027bf: c3                          	ret
1400027c0: 8b 0a                       	mov	ecx, dword ptr [rdx]
1400027c2: 44 0f b7 42 04              	movzx	r8d, word ptr [rdx + 4]
1400027c7: 89 08                       	mov	dword ptr [rax], ecx
1400027c9: 66 44 89 40 04              	mov	word ptr [rax + 4], r8w
1400027ce: c3                          	ret
1400027cf: 8b 0a                       	mov	ecx, dword ptr [rdx]
1400027d1: 44 0f b6 42 04              	movzx	r8d, byte ptr [rdx + 4]
1400027d6: 89 08                       	mov	dword ptr [rax], ecx
1400027d8: 44 88 40 04                 	mov	byte ptr [rax + 4], r8b
1400027dc: c3                          	ret
1400027dd: 48 8b 0a                    	mov	rcx, qword ptr [rdx]
1400027e0: 48 89 08                    	mov	qword ptr [rax], rcx
1400027e3: c3                          	ret
1400027e4: 0f b6 0a                    	movzx	ecx, byte ptr [rdx]
1400027e7: 88 08                       	mov	byte ptr [rax], cl
1400027e9: c3                          	ret
1400027ea: 8b 0a                       	mov	ecx, dword ptr [rdx]
1400027ec: 89 08                       	mov	dword ptr [rax], ecx
1400027ee: c3                          	ret
1400027ef: 90                          	nop
1400027f0: 49 83 f8 20                 	cmp	r8, 32
1400027f4: 77 17                       	ja	0x14000280d <.text+0x180d>
1400027f6: f3 0f 6f 0a                 	movdqu	xmm1, xmmword ptr [rdx]
1400027fa: f3 42 0f 6f 54 02 f0        	movdqu	xmm2, xmmword ptr [rdx + r8 - 16]
140002801: f3 0f 7f 09                 	movdqu	xmmword ptr [rcx], xmm1
140002805: f3 42 0f 7f 54 01 f0        	movdqu	xmmword ptr [rcx + r8 - 16], xmm2
14000280c: c3                          	ret
14000280d: 48 3b d1                    	cmp	rdx, rcx
140002810: 73 0e                       	jae	0x140002820 <.text+0x1820>
140002812: 4e 8d 0c 02                 	lea	r9, [rdx + r8]
140002816: 49 3b c9                    	cmp	rcx, r9
140002819: 0f 82 41 04 00 00           	jb	0x140002c60 <.text+0x1c60>
14000281f: 90                          	nop
140002820: 83 3d e1 47 01 00 03        	cmp	dword ptr [rip + 83937], 3 # 0x140017008
140002827: 0f 82 e3 02 00 00           	jb	0x140002b10 <.text+0x1b10>
14000282d: 49 81 f8 00 20 00 00        	cmp	r8, 8192
140002834: 76 16                       	jbe	0x14000284c <.text+0x184c>
140002836: 49 81 f8 00 00 18 00        	cmp	r8, 1572864
14000283d: 77 0d                       	ja	0x14000284c <.text+0x184c>
14000283f: f6 05 2e 52 01 00 02        	test	byte ptr [rip + 86574], 2 # 0x140017a74
140002846: 0f 85 64 fe ff ff           	jne	0x1400026b0 <.text+0x16b0>
14000284c: c5 fe 6f 02                 	vmovdqu	ymm0, ymmword ptr [rdx]
140002850: c4 a1 7e 6f 6c 02 e0        	vmovdqu	ymm5, ymmword ptr [rdx + r8 - 32]
140002857: 49 81 f8 00 01 00 00        	cmp	r8, 256
14000285e: 0f 86 c4 00 00 00           	jbe	0x140002928 <.text+0x1928>
140002864: 4c 8b c9                    	mov	r9, rcx
140002867: 49 83 e1 1f                 	and	r9, 31
14000286b: 49 83 e9 20                 	sub	r9, 32
14000286f: 49 2b c9                    	sub	rcx, r9
140002872: 49 2b d1                    	sub	rdx, r9
140002875: 4d 03 c1                    	add	r8, r9
140002878: 49 81 f8 00 01 00 00        	cmp	r8, 256
14000287f: 0f 86 a3 00 00 00           	jbe	0x140002928 <.text+0x1928>
140002885: 49 81 f8 00 00 18 00        	cmp	r8, 1572864
14000288c: 0f 87 3e 01 00 00           	ja	0x1400029d0 <.text+0x19d0>
140002892: 66 66 66 66 66 66 0f 1f 84 00 00 00 00 00   	nop	word ptr [rax + rax]
1400028a0: c5 fe 6f 0a                 	vmovdqu	ymm1, ymmword ptr [rdx]
1400028a4: c5 fe 6f 52 20              	vmovdqu	ymm2, ymmword ptr [rdx + 32]
1400028a9: c5 fe 6f 5a 40              	vmovdqu	ymm3, ymmword ptr [rdx + 64]
1400028ae: c5 fe 6f 62 60              	vmovdqu	ymm4, ymmword ptr [rdx + 96]
1400028b3: c5 fd 7f 09                 	vmovdqa	ymmword ptr [rcx], ymm1
1400028b7: c5 fd 7f 51 20              	vmovdqa	ymmword ptr [rcx + 32], ymm2
1400028bc: c5 fd 7f 59 40              	vmovdqa	ymmword ptr [rcx + 64], ymm3
1400028c1: c5 fd 7f 61 60              	vmovdqa	ymmword ptr [rcx + 96], ymm4
1400028c6: c5 fe 6f 8a 80 00 00 00     	vmovdqu	ymm1, ymmword ptr [rdx + 128]
1400028ce: c5 fe 6f 92 a0 00 00 00     	vmovdqu	ymm2, ymmword ptr [rdx + 160]
1400028d6: c5 fe 6f 9a c0 00 00 00     	vmovdqu	ymm3, ymmword ptr [rdx + 192]
1400028de: c5 fe 6f a2 e0 00 00 00     	vmovdqu	ymm4, ymmword ptr [rdx + 224]
1400028e6: c5 fd 7f 89 80 00 00 00     	vmovdqa	ymmword ptr [rcx + 128], ymm1
1400028ee: c5 fd 7f 91 a0 00 00 00     	vmovdqa	ymmword ptr [rcx + 160], ymm2
1400028f6: c5 fd 7f 99 c0 00 00 00     	vmovdqa	ymmword ptr [rcx + 192], ymm3
1400028fe: c5 fd 7f a1 e0 00 00 00     	vmovdqa	ymmword ptr [rcx + 224], ymm4
140002906: 48 81 c1 00 01 00 00        	add	rcx, 256
14000290d: 48 81 c2 00 01 00 00        	add	rdx, 256
140002914: 49 81 e8 00 01 00 00        	sub	r8, 256
14000291b: 49 81 f8 00 01 00 00        	cmp	r8, 256
140002922: 0f 83 78 ff ff ff           	jae	0x1400028a0 <.text+0x18a0>
140002928: 4d 8d 48 1f                 	lea	r9, [r8 + 31]
14000292c: 49 83 e1 e0                 	and	r9, -32
140002930: 4d 8b d9                    	mov	r11, r9
140002933: 49 c1 eb 05                 	shr	r11, 5
140002937: 47 8b 9c 9a f0 a0 01 00     	mov	r11d, dword ptr [r10 + 4*r11 + 106736]
14000293f: 4d 03 da                    	add	r11, r10
140002942: 41 ff e3                    	jmp	r11
140002945: c4 a1 7e 6f 8c 0a 00 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 256]
14000294f: c4 a1 7e 7f 8c 09 00 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 256], ymm1
140002959: c4 a1 7e 6f 8c 0a 20 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 224]
140002963: c4 a1 7e 7f 8c 09 20 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 224], ymm1
14000296d: c4 a1 7e 6f 8c 0a 40 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 192]
140002977: c4 a1 7e 7f 8c 09 40 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 192], ymm1
140002981: c4 a1 7e 6f 8c 0a 60 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 160]
14000298b: c4 a1 7e 7f 8c 09 60 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 160], ymm1
140002995: c4 a1 7e 6f 4c 0a 80        	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 128]
14000299c: c4 a1 7e 7f 4c 09 80        	vmovdqu	ymmword ptr [rcx + r9 - 128], ymm1
1400029a3: c4 a1 7e 6f 4c 0a a0        	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 96]
1400029aa: c4 a1 7e 7f 4c 09 a0        	vmovdqu	ymmword ptr [rcx + r9 - 96], ymm1
1400029b1: c4 a1 7e 6f 4c 0a c0        	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 64]
1400029b8: c4 a1 7e 7f 4c 09 c0        	vmovdqu	ymmword ptr [rcx + r9 - 64], ymm1
1400029bf: c4 a1 7e 7f 6c 01 e0        	vmovdqu	ymmword ptr [rcx + r8 - 32], ymm5
1400029c6: c5 fe 7f 00                 	vmovdqu	ymmword ptr [rax], ymm0
1400029ca: c5 f8 77                    	vzeroupper
1400029cd: c3                          	ret
1400029ce: 66 90                       	nop
1400029d0: c5 fe 6f 0a                 	vmovdqu	ymm1, ymmword ptr [rdx]
1400029d4: c5 fe 6f 52 20              	vmovdqu	ymm2, ymmword ptr [rdx + 32]
1400029d9: c5 fe 6f 5a 40              	vmovdqu	ymm3, ymmword ptr [rdx + 64]
1400029de: c5 fe 6f 62 60              	vmovdqu	ymm4, ymmword ptr [rdx + 96]
1400029e3: c5 fd e7 09                 	vmovntdq	ymmword ptr [rcx], ymm1
1400029e7: c5 fd e7 51 20              	vmovntdq	ymmword ptr [rcx + 32], ymm2
1400029ec: c5 fd e7 59 40              	vmovntdq	ymmword ptr [rcx + 64], ymm3
1400029f1: c5 fd e7 61 60              	vmovntdq	ymmword ptr [rcx + 96], ymm4
1400029f6: c5 fe 6f 8a 80 00 00 00     	vmovdqu	ymm1, ymmword ptr [rdx + 128]
1400029fe: c5 fe 6f 92 a0 00 00 00     	vmovdqu	ymm2, ymmword ptr [rdx + 160]
140002a06: c5 fe 6f 9a c0 00 00 00     	vmovdqu	ymm3, ymmword ptr [rdx + 192]
140002a0e: c5 fe 6f a2 e0 00 00 00     	vmovdqu	ymm4, ymmword ptr [rdx + 224]
140002a16: c5 fd e7 89 80 00 00 00     	vmovntdq	ymmword ptr [rcx + 128], ymm1
140002a1e: c5 fd e7 91 a0 00 00 00     	vmovntdq	ymmword ptr [rcx + 160], ymm2
140002a26: c5 fd e7 99 c0 00 00 00     	vmovntdq	ymmword ptr [rcx + 192], ymm3
140002a2e: c5 fd e7 a1 e0 00 00 00     	vmovntdq	ymmword ptr [rcx + 224], ymm4
140002a36: 48 81 c1 00 01 00 00        	add	rcx, 256
140002a3d: 48 81 c2 00 01 00 00        	add	rdx, 256
140002a44: 49 81 e8 00 01 00 00        	sub	r8, 256
140002a4b: 49 81 f8 00 01 00 00        	cmp	r8, 256
140002a52: 0f 83 78 ff ff ff           	jae	0x1400029d0 <.text+0x19d0>
140002a58: 4d 8d 48 1f                 	lea	r9, [r8 + 31]
140002a5c: 49 83 e1 e0                 	and	r9, -32
140002a60: 4d 8b d9                    	mov	r11, r9
140002a63: 49 c1 eb 05                 	shr	r11, 5
140002a67: 47 8b 9c 9a 14 a1 01 00     	mov	r11d, dword ptr [r10 + 4*r11 + 106772]
140002a6f: 4d 03 da                    	add	r11, r10
140002a72: 41 ff e3                    	jmp	r11
140002a75: c4 a1 7e 6f 8c 0a 00 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 256]
140002a7f: c4 a1 7d e7 8c 09 00 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 256], ymm1
140002a89: c4 a1 7e 6f 8c 0a 20 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 224]
140002a93: c4 a1 7d e7 8c 09 20 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 224], ymm1
140002a9d: c4 a1 7e 6f 8c 0a 40 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 192]
140002aa7: c4 a1 7d e7 8c 09 40 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 192], ymm1
140002ab1: c4 a1 7e 6f 8c 0a 60 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 160]
140002abb: c4 a1 7d e7 8c 09 60 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 160], ymm1
140002ac5: c4 a1 7e 6f 4c 0a 80        	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 128]
140002acc: c4 a1 7d e7 4c 09 80        	vmovntdq	ymmword ptr [rcx + r9 - 128], ymm1
140002ad3: c4 a1 7e 6f 4c 0a a0        	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 96]
140002ada: c4 a1 7d e7 4c 09 a0        	vmovntdq	ymmword ptr [rcx + r9 - 96], ymm1
140002ae1: c4 a1 7e 6f 4c 0a c0        	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 64]
140002ae8: c4 a1 7d e7 4c 09 c0        	vmovntdq	ymmword ptr [rcx + r9 - 64], ymm1
140002aef: c4 a1 7e 7f 6c 01 e0        	vmovdqu	ymmword ptr [rcx + r8 - 32], ymm5
140002af6: c5 fe 7f 00                 	vmovdqu	ymmword ptr [rax], ymm0
140002afa: 0f ae f8                    	sfence
140002afd: c5 f8 77                    	vzeroupper
140002b00: c3                          	ret
140002b01: 66 66 66 66 66 66 66 0f 1f 84 00 00 00 00 00	nop	word ptr [rax + rax]
140002b10: 49 81 f8 00 08 00 00        	cmp	r8, 2048
140002b17: 76 0d                       	jbe	0x140002b26 <.text+0x1b26>
140002b19: f6 05 54 4f 01 00 02        	test	byte ptr [rip + 85844], 2 # 0x140017a74
140002b20: 0f 85 8a fb ff ff           	jne	0x1400026b0 <.text+0x16b0>
140002b26: f3 0f 6f 02                 	movdqu	xmm0, xmmword ptr [rdx]
140002b2a: f3 42 0f 6f 6c 02 f0        	movdqu	xmm5, xmmword ptr [rdx + r8 - 16]
140002b31: 49 81 f8 80 00 00 00        	cmp	r8, 128
140002b38: 0f 86 8e 00 00 00           	jbe	0x140002bcc <.text+0x1bcc>
140002b3e: 4c 8b c9                    	mov	r9, rcx
140002b41: 49 83 e1 0f                 	and	r9, 15
140002b45: 49 83 e9 10                 	sub	r9, 16
140002b49: 49 2b c9                    	sub	rcx, r9
140002b4c: 49 2b d1                    	sub	rdx, r9
140002b4f: 4d 03 c1                    	add	r8, r9
140002b52: 49 81 f8 80 00 00 00        	cmp	r8, 128
140002b59: 76 71                       	jbe	0x140002bcc <.text+0x1bcc>
140002b5b: 0f 1f 44 00 00              	nop	dword ptr [rax + rax]
140002b60: f3 0f 6f 0a                 	movdqu	xmm1, xmmword ptr [rdx]
140002b64: f3 0f 6f 52 10              	movdqu	xmm2, xmmword ptr [rdx + 16]
140002b69: f3 0f 6f 5a 20              	movdqu	xmm3, xmmword ptr [rdx + 32]
140002b6e: f3 0f 6f 62 30              	movdqu	xmm4, xmmword ptr [rdx + 48]
140002b73: 66 0f 7f 09                 	movdqa	xmmword ptr [rcx], xmm1
140002b77: 66 0f 7f 51 10              	movdqa	xmmword ptr [rcx + 16], xmm2
140002b7c: 66 0f 7f 59 20              	movdqa	xmmword ptr [rcx + 32], xmm3
140002b81: 66 0f 7f 61 30              	movdqa	xmmword ptr [rcx + 48], xmm4
140002b86: f3 0f 6f 4a 40              	movdqu	xmm1, xmmword ptr [rdx + 64]
140002b8b: f3 0f 6f 52 50              	movdqu	xmm2, xmmword ptr [rdx + 80]
140002b90: f3 0f 6f 5a 60              	movdqu	xmm3, xmmword ptr [rdx + 96]
140002b95: f3 0f 6f 62 70              	movdqu	xmm4, xmmword ptr [rdx + 112]
140002b9a: 66 0f 7f 49 40              	movdqa	xmmword ptr [rcx + 64], xmm1
140002b9f: 66 0f 7f 51 50              	movdqa	xmmword ptr [rcx + 80], xmm2
140002ba4: 66 0f 7f 59 60              	movdqa	xmmword ptr [rcx + 96], xmm3
140002ba9: 66 0f 7f 61 70              	movdqa	xmmword ptr [rcx + 112], xmm4
140002bae: 48 81 c1 80 00 00 00        	add	rcx, 128
140002bb5: 48 81 c2 80 00 00 00        	add	rdx, 128
140002bbc: 49 81 e8 80 00 00 00        	sub	r8, 128
140002bc3: 49 81 f8 80 00 00 00        	cmp	r8, 128
140002bca: 73 94                       	jae	0x140002b60 <.text+0x1b60>
140002bcc: 4d 8d 48 0f                 	lea	r9, [r8 + 15]
140002bd0: 49 83 e1 f0                 	and	r9, -16
140002bd4: 4d 8b d9                    	mov	r11, r9
140002bd7: 49 c1 eb 04                 	shr	r11, 4
140002bdb: 47 8b 9c 9a 38 a1 01 00     	mov	r11d, dword ptr [r10 + 4*r11 + 106808]
140002be3: 4d 03 da                    	add	r11, r10
140002be6: 41 ff e3                    	jmp	r11
140002be9: f3 42 0f 6f 4c 0a 80        	movdqu	xmm1, xmmword ptr [rdx + r9 - 128]
140002bf0: f3 42 0f 7f 4c 09 80        	movdqu	xmmword ptr [rcx + r9 - 128], xmm1
140002bf7: f3 42 0f 6f 4c 0a 90        	movdqu	xmm1, xmmword ptr [rdx + r9 - 112]
140002bfe: f3 42 0f 7f 4c 09 90        	movdqu	xmmword ptr [rcx + r9 - 112], xmm1
140002c05: f3 42 0f 6f 4c 0a a0        	movdqu	xmm1, xmmword ptr [rdx + r9 - 96]
140002c0c: f3 42 0f 7f 4c 09 a0        	movdqu	xmmword ptr [rcx + r9 - 96], xmm1
140002c13: f3 42 0f 6f 4c 0a b0        	movdqu	xmm1, xmmword ptr [rdx + r9 - 80]
140002c1a: f3 42 0f 7f 4c 09 b0        	movdqu	xmmword ptr [rcx + r9 - 80], xmm1
140002c21: f3 42 0f 6f 4c 0a c0        	movdqu	xmm1, xmmword ptr [rdx + r9 - 64]
140002c28: f3 42 0f 7f 4c 09 c0        	movdqu	xmmword ptr [rcx + r9 - 64], xmm1
140002c2f: f3 42 0f 6f 4c 0a d0        	movdqu	xmm1, xmmword ptr [rdx + r9 - 48]
140002c36: f3 42 0f 7f 4c 09 d0        	movdqu	xmmword ptr [rcx + r9 - 48], xmm1
140002c3d: f3 42 0f 6f 4c 0a e0        	movdqu	xmm1, xmmword ptr [rdx + r9 - 32]
140002c44: f3 42 0f 7f 4c 09 e0        	movdqu	xmmword ptr [rcx + r9 - 32], xmm1
140002c4b: f3 42 0f 7f 6c 01 f0        	movdqu	xmmword ptr [rcx + r8 - 16], xmm5
140002c52: f3 0f 7f 00                 	movdqu	xmmword ptr [rax], xmm0
140002c56: c3                          	ret
140002c57: 66 0f 1f 84 00 00 00 00 00  	nop	word ptr [rax + rax]
140002c60: 4c 8b d9                    	mov	r11, rcx
140002c63: 4c 8b d2                    	mov	r10, rdx
140002c66: 48 2b d1                    	sub	rdx, rcx
140002c69: 49 03 c8                    	add	rcx, r8
140002c6c: 0f 10 44 11 f0              	movups	xmm0, xmmword ptr [rcx + rdx - 16]
140002c71: 48 83 e9 10                 	sub	rcx, 16
140002c75: 49 83 e8 10                 	sub	r8, 16
140002c79: f6 c1 0f                    	test	cl, 15
140002c7c: 74 17                       	je	0x140002c95 <.text+0x1c95>
140002c7e: 48 8b c1                    	mov	rax, rcx
140002c81: 48 83 e1 f0                 	and	rcx, -16
140002c85: 0f 10 c8                    	movups	xmm1, xmm0
140002c88: 0f 10 04 11                 	movups	xmm0, xmmword ptr [rcx + rdx]
140002c8c: 0f 11 08                    	movups	xmmword ptr [rax], xmm1
140002c8f: 4c 8b c1                    	mov	r8, rcx
140002c92: 4d 2b c3                    	sub	r8, r11
140002c95: 4d 8b c8                    	mov	r9, r8
140002c98: 49 c1 e9 07                 	shr	r9, 7
140002c9c: 74 6f                       	je	0x140002d0d <.text+0x1d0d>
140002c9e: 0f 29 01                    	movaps	xmmword ptr [rcx], xmm0
140002ca1: eb 14                       	jmp	0x140002cb7 <.text+0x1cb7>
140002ca3: 66 66 66 66 66 0f 1f 84 00 00 00 00 00      	nop	word ptr [rax + rax]
140002cb0: 0f 29 41 10                 	movaps	xmmword ptr [rcx + 16], xmm0
140002cb4: 0f 29 09                    	movaps	xmmword ptr [rcx], xmm1
140002cb7: 0f 10 44 11 f0              	movups	xmm0, xmmword ptr [rcx + rdx - 16]
140002cbc: 0f 10 4c 11 e0              	movups	xmm1, xmmword ptr [rcx + rdx - 32]
140002cc1: 48 81 e9 80 00 00 00        	sub	rcx, 128
140002cc8: 0f 29 41 70                 	movaps	xmmword ptr [rcx + 112], xmm0
140002ccc: 0f 29 49 60                 	movaps	xmmword ptr [rcx + 96], xmm1
140002cd0: 0f 10 44 11 50              	movups	xmm0, xmmword ptr [rcx + rdx + 80]
140002cd5: 0f 10 4c 11 40              	movups	xmm1, xmmword ptr [rcx + rdx + 64]
140002cda: 49 ff c9                    	dec	r9
140002cdd: 0f 29 41 50                 	movaps	xmmword ptr [rcx + 80], xmm0
140002ce1: 0f 29 49 40                 	movaps	xmmword ptr [rcx + 64], xmm1
140002ce5: 0f 10 44 11 30              	movups	xmm0, xmmword ptr [rcx + rdx + 48]
140002cea: 0f 10 4c 11 20              	movups	xmm1, xmmword ptr [rcx + rdx + 32]
140002cef: 0f 29 41 30                 	movaps	xmmword ptr [rcx + 48], xmm0
140002cf3: 0f 29 49 20                 	movaps	xmmword ptr [rcx + 32], xmm1
140002cf7: 0f 10 44 11 10              	movups	xmm0, xmmword ptr [rcx + rdx + 16]
140002cfc: 0f 10 0c 11                 	movups	xmm1, xmmword ptr [rcx + rdx]
140002d00: 75 ae                       	jne	0x140002cb0 <.text+0x1cb0>
140002d02: 0f 29 41 10                 	movaps	xmmword ptr [rcx + 16], xmm0
140002d06: 49 83 e0 7f                 	and	r8, 127
140002d0a: 0f 28 c1                    	movaps	xmm0, xmm1
140002d0d: 4d 8b c8                    	mov	r9, r8
140002d10: 49 c1 e9 04                 	shr	r9, 4
140002d14: 74 1a                       	je	0x140002d30 <.text+0x1d30>
140002d16: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140002d20: 0f 11 01                    	movups	xmmword ptr [rcx], xmm0
140002d23: 48 83 e9 10                 	sub	rcx, 16
140002d27: 0f 10 04 11                 	movups	xmm0, xmmword ptr [rcx + rdx]
140002d2b: 49 ff c9                    	dec	r9
140002d2e: 75 f0                       	jne	0x140002d20 <.text+0x1d20>
140002d30: 49 83 e0 0f                 	and	r8, 15
140002d34: 74 08                       	je	0x140002d3e <.text+0x1d3e>
140002d36: 41 0f 10 0a                 	movups	xmm1, xmmword ptr [r10]
140002d3a: 41 0f 11 0b                 	movups	xmmword ptr [r11], xmm1
140002d3e: 0f 11 01                    	movups	xmmword ptr [rcx], xmm0
140002d41: 49 8b c3                    	mov	rax, r11
140002d44: c3                          	ret
140002d45: cc                          	int3
140002d46: cc                          	int3
140002d47: cc                          	int3
140002d48: cc                          	int3
140002d49: cc                          	int3
140002d4a: cc                          	int3
140002d4b: cc                          	int3
140002d4c: cc                          	int3
140002d4d: cc                          	int3
140002d4e: cc                          	int3
140002d4f: cc                          	int3
140002d50: cc                          	int3
140002d51: cc                          	int3
140002d52: cc                          	int3
140002d53: cc                          	int3
140002d54: cc                          	int3
140002d55: cc                          	int3
140002d56: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140002d60: 48 83 ec 28                 	sub	rsp, 40
140002d64: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
140002d69: 48 89 54 24 38              	mov	qword ptr [rsp + 56], rdx
140002d6e: 44 89 44 24 40              	mov	dword ptr [rsp + 64], r8d
140002d73: 48 8b 12                    	mov	rdx, qword ptr [rdx]
140002d76: 48 8b c1                    	mov	rax, rcx
140002d79: e8 e2 f3 ff ff              	call	0x140002160 <.text+0x1160>
140002d7e: ff d0                       	call	rax
140002d80: e8 0b f4 ff ff              	call	0x140002190 <.text+0x1190>
140002d85: 48 8b c8                    	mov	rcx, rax
140002d88: 48 8b 54 24 38              	mov	rdx, qword ptr [rsp + 56]
140002d8d: 48 8b 12                    	mov	rdx, qword ptr [rdx]
140002d90: 41 b8 02 00 00 00           	mov	r8d, 2
140002d96: e8 c5 f3 ff ff              	call	0x140002160 <.text+0x1160>
140002d9b: 48 83 c4 28                 	add	rsp, 40
140002d9f: c3                          	ret
140002da0: cc                          	int3
140002da1: cc                          	int3
140002da2: cc                          	int3
140002da3: cc                          	int3
140002da4: cc                          	int3
140002da5: cc                          	int3
140002da6: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140002db0: 48 83 ec 28                 	sub	rsp, 40
140002db4: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
140002db9: 48 89 54 24 38              	mov	qword ptr [rsp + 56], rdx
140002dbe: 44 89 44 24 40              	mov	dword ptr [rsp + 64], r8d
140002dc3: 48 8b 12                    	mov	rdx, qword ptr [rdx]
140002dc6: 48 8b c1                    	mov	rax, rcx
140002dc9: e8 92 f3 ff ff              	call	0x140002160 <.text+0x1160>
140002dce: ff d0                       	call	rax
140002dd0: e8 bb f3 ff ff              	call	0x140002190 <.text+0x1190>
140002dd5: 48 83 c4 28                 	add	rsp, 40
140002dd9: c3                          	ret
140002dda: cc                          	int3
140002ddb: cc                          	int3
140002ddc: cc                          	int3
140002ddd: cc                          	int3
140002dde: cc                          	int3
140002ddf: cc                          	int3
140002de0: 48 83 ec 28                 	sub	rsp, 40
140002de4: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
140002de9: 48 89 54 24 38              	mov	qword ptr [rsp + 56], rdx
140002dee: 48 8b 54 24 38              	mov	rdx, qword ptr [rsp + 56]
140002df3: 48 8b 12                    	mov	rdx, qword ptr [rdx]
140002df6: 41 b8 02 00 00 00           	mov	r8d, 2
140002dfc: e8 5f f3 ff ff              	call	0x140002160 <.text+0x1160>
140002e01: 48 83 c4 28                 	add	rsp, 40
140002e05: c3                          	ret
140002e06: cc                          	int3
140002e07: cc                          	int3
140002e08: cc                          	int3
140002e09: cc                          	int3
140002e0a: cc                          	int3
140002e0b: cc                          	int3
140002e0c: 0f 1f 40 00                 	nop	dword ptr [rax]
140002e10: 48 83 ec 28                 	sub	rsp, 40
140002e14: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
140002e19: 48 89 54 24 38              	mov	qword ptr [rsp + 56], rdx
140002e1e: 4c 89 44 24 40              	mov	qword ptr [rsp + 64], r8
140002e23: 44 89 4c 24 48              	mov	dword ptr [rsp + 72], r9d
140002e28: 45 8b c1                    	mov	r8d, r9d
140002e2b: 48 8b c1                    	mov	rax, rcx
140002e2e: e8 2d f3 ff ff              	call	0x140002160 <.text+0x1160>
140002e33: 48 8b 4c 24 40              	mov	rcx, qword ptr [rsp + 64]
140002e38: ff d0                       	call	rax
140002e3a: e8 51 f3 ff ff              	call	0x140002190 <.text+0x1190>
140002e3f: 48 8b c8                    	mov	rcx, rax
140002e42: 48 8b 54 24 38              	mov	rdx, qword ptr [rsp + 56]
140002e47: 41 b8 02 00 00 00           	mov	r8d, 2
140002e4d: e8 0e f3 ff ff              	call	0x140002160 <.text+0x1160>
140002e52: 48 83 c4 28                 	add	rsp, 40
140002e56: c3                          	ret
140002e57: cc                          	int3
140002e58: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140002e5d: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140002e62: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140002e67: 57                          	push	rdi
140002e68: 48 83 ec 20                 	sub	rsp, 32
140002e6c: 48 8b f2                    	mov	rsi, rdx
140002e6f: 8b f9                       	mov	edi, ecx
140002e71: e8 3a 1b 00 00              	call	0x1400049b0 <.text+0x39b0>
140002e76: 45 33 c9                    	xor	r9d, r9d
140002e79: 48 8b d8                    	mov	rbx, rax
140002e7c: 48 85 c0                    	test	rax, rax
140002e7f: 0f 84 3e 01 00 00           	je	0x140002fc3 <.text+0x1fc3>
140002e85: 48 8b 08                    	mov	rcx, qword ptr [rax]
140002e88: 48 8b c1                    	mov	rax, rcx
140002e8b: 4c 8d 81 c0 00 00 00        	lea	r8, [rcx + 192]
140002e92: 49 3b c8                    	cmp	rcx, r8
140002e95: 74 0d                       	je	0x140002ea4 <.text+0x1ea4>
140002e97: 39 38                       	cmp	dword ptr [rax], edi
140002e99: 74 0c                       	je	0x140002ea7 <.text+0x1ea7>
140002e9b: 48 83 c0 10                 	add	rax, 16
140002e9f: 49 3b c0                    	cmp	rax, r8
140002ea2: 75 f3                       	jne	0x140002e97 <.text+0x1e97>
140002ea4: 49 8b c1                    	mov	rax, r9
140002ea7: 48 85 c0                    	test	rax, rax
140002eaa: 0f 84 13 01 00 00           	je	0x140002fc3 <.text+0x1fc3>
140002eb0: 4c 8b 40 08                 	mov	r8, qword ptr [rax + 8]
140002eb4: 4d 85 c0                    	test	r8, r8
140002eb7: 0f 84 06 01 00 00           	je	0x140002fc3 <.text+0x1fc3>
140002ebd: 49 83 f8 05                 	cmp	r8, 5
140002ec1: 75 0d                       	jne	0x140002ed0 <.text+0x1ed0>
140002ec3: 4c 89 48 08                 	mov	qword ptr [rax + 8], r9
140002ec7: 41 8d 40 fc                 	lea	eax, [r8 - 4]
140002ecb: e9 f5 00 00 00              	jmp	0x140002fc5 <.text+0x1fc5>
140002ed0: 49 83 f8 01                 	cmp	r8, 1
140002ed4: 75 08                       	jne	0x140002ede <.text+0x1ede>
140002ed6: 83 c8 ff                    	or	eax, -1
140002ed9: e9 e7 00 00 00              	jmp	0x140002fc5 <.text+0x1fc5>
140002ede: 48 8b 6b 08                 	mov	rbp, qword ptr [rbx + 8]
140002ee2: 48 89 73 08                 	mov	qword ptr [rbx + 8], rsi
140002ee6: 83 78 04 08                 	cmp	dword ptr [rax + 4], 8
140002eea: 0f 85 ba 00 00 00           	jne	0x140002faa <.text+0x1faa>
140002ef0: 48 83 c1 30                 	add	rcx, 48
140002ef4: 48 8d 91 90 00 00 00        	lea	rdx, [rcx + 144]
140002efb: eb 08                       	jmp	0x140002f05 <.text+0x1f05>
140002efd: 4c 89 49 08                 	mov	qword ptr [rcx + 8], r9
140002f01: 48 83 c1 10                 	add	rcx, 16
140002f05: 48 3b ca                    	cmp	rcx, rdx
140002f08: 75 f3                       	jne	0x140002efd <.text+0x1efd>
140002f0a: 81 38 8d 00 00 c0           	cmp	dword ptr [rax], 3221225613
140002f10: 8b 7b 10                    	mov	edi, dword ptr [rbx + 16]
140002f13: 74 7a                       	je	0x140002f8f <.text+0x1f8f>
140002f15: 81 38 8e 00 00 c0           	cmp	dword ptr [rax], 3221225614
140002f1b: 74 6b                       	je	0x140002f88 <.text+0x1f88>
140002f1d: 81 38 8f 00 00 c0           	cmp	dword ptr [rax], 3221225615
140002f23: 74 5c                       	je	0x140002f81 <.text+0x1f81>
140002f25: 81 38 90 00 00 c0           	cmp	dword ptr [rax], 3221225616
140002f2b: 74 4d                       	je	0x140002f7a <.text+0x1f7a>
140002f2d: 81 38 91 00 00 c0           	cmp	dword ptr [rax], 3221225617
140002f33: 74 3e                       	je	0x140002f73 <.text+0x1f73>
140002f35: 81 38 92 00 00 c0           	cmp	dword ptr [rax], 3221225618
140002f3b: 74 2f                       	je	0x140002f6c <.text+0x1f6c>
140002f3d: 81 38 93 00 00 c0           	cmp	dword ptr [rax], 3221225619
140002f43: 74 20                       	je	0x140002f65 <.text+0x1f65>
140002f45: 81 38 b4 02 00 c0           	cmp	dword ptr [rax], 3221226164
140002f4b: 74 11                       	je	0x140002f5e <.text+0x1f5e>
140002f4d: 81 38 b5 02 00 c0           	cmp	dword ptr [rax], 3221226165
140002f53: 8b d7                       	mov	edx, edi
140002f55: 75 40                       	jne	0x140002f97 <.text+0x1f97>
140002f57: ba 8d 00 00 00              	mov	edx, 141
140002f5c: eb 36                       	jmp	0x140002f94 <.text+0x1f94>
140002f5e: ba 8e 00 00 00              	mov	edx, 142
140002f63: eb 2f                       	jmp	0x140002f94 <.text+0x1f94>
140002f65: ba 85 00 00 00              	mov	edx, 133
140002f6a: eb 28                       	jmp	0x140002f94 <.text+0x1f94>
140002f6c: ba 8a 00 00 00              	mov	edx, 138
140002f71: eb 21                       	jmp	0x140002f94 <.text+0x1f94>
140002f73: ba 84 00 00 00              	mov	edx, 132
140002f78: eb 1a                       	jmp	0x140002f94 <.text+0x1f94>
140002f7a: ba 81 00 00 00              	mov	edx, 129
140002f7f: eb 13                       	jmp	0x140002f94 <.text+0x1f94>
140002f81: ba 86 00 00 00              	mov	edx, 134
140002f86: eb 0c                       	jmp	0x140002f94 <.text+0x1f94>
140002f88: ba 83 00 00 00              	mov	edx, 131
140002f8d: eb 05                       	jmp	0x140002f94 <.text+0x1f94>
140002f8f: ba 82 00 00 00              	mov	edx, 130
140002f94: 89 53 10                    	mov	dword ptr [rbx + 16], edx
140002f97: b9 08 00 00 00              	mov	ecx, 8
140002f9c: 49 8b c0                    	mov	rax, r8
140002f9f: ff 15 8b b2 00 00           	call	qword ptr [rip + 45707] # 0x14000e230
140002fa5: 89 7b 10                    	mov	dword ptr [rbx + 16], edi
140002fa8: eb 10                       	jmp	0x140002fba <.text+0x1fba>
140002faa: 8b 48 04                    	mov	ecx, dword ptr [rax + 4]
140002fad: 4c 89 48 08                 	mov	qword ptr [rax + 8], r9
140002fb1: 49 8b c0                    	mov	rax, r8
140002fb4: ff 15 76 b2 00 00           	call	qword ptr [rip + 45686] # 0x14000e230
140002fba: 48 89 6b 08                 	mov	qword ptr [rbx + 8], rbp
140002fbe: e9 13 ff ff ff              	jmp	0x140002ed6 <.text+0x1ed6>
140002fc3: 33 c0                       	xor	eax, eax
140002fc5: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140002fca: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
140002fcf: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
140002fd4: 48 83 c4 20                 	add	rsp, 32
140002fd8: 5f                          	pop	rdi
140002fd9: c3                          	ret
140002fda: cc                          	int3
140002fdb: cc                          	int3
140002fdc: 8b 05 fe 4b 01 00           	mov	eax, dword ptr [rip + 84990] # 0x140017be0
140002fe2: c3                          	ret
140002fe3: cc                          	int3
140002fe4: 89 0d f6 4b 01 00           	mov	dword ptr [rip + 84982], ecx # 0x140017be0
140002fea: c3                          	ret
140002feb: cc                          	int3
140002fec: 48 8b 15 35 40 01 00        	mov	rdx, qword ptr [rip + 81973] # 0x140017028
140002ff3: 8b ca                       	mov	ecx, edx
140002ff5: 48 33 15 ec 4b 01 00        	xor	rdx, qword ptr [rip + 84972] # 0x140017be8
140002ffc: 83 e1 3f                    	and	ecx, 63
140002fff: 48 d3 ca                    	ror	rdx, cl
140003002: 48 85 d2                    	test	rdx, rdx
140003005: 0f 95 c0                    	setne	al
140003008: c3                          	ret
140003009: cc                          	int3
14000300a: cc                          	int3
14000300b: cc                          	int3
14000300c: 48 89 0d d5 4b 01 00        	mov	qword ptr [rip + 84949], rcx # 0x140017be8
140003013: c3                          	ret
140003014: 48 8b 15 0d 40 01 00        	mov	rdx, qword ptr [rip + 81933] # 0x140017028
14000301b: 4c 8b c1                    	mov	r8, rcx
14000301e: 8b ca                       	mov	ecx, edx
140003020: 48 33 15 c1 4b 01 00        	xor	rdx, qword ptr [rip + 84929] # 0x140017be8
140003027: 83 e1 3f                    	and	ecx, 63
14000302a: 48 d3 ca                    	ror	rdx, cl
14000302d: 48 85 d2                    	test	rdx, rdx
140003030: 75 03                       	jne	0x140003035 <.text+0x2035>
140003032: 33 c0                       	xor	eax, eax
140003034: c3                          	ret
140003035: 49 8b c8                    	mov	rcx, r8
140003038: 48 8b c2                    	mov	rax, rdx
14000303b: 48 ff 25 ee b1 00 00        	jmp	qword ptr [rip + 45550] # 0x14000e230
140003042: cc                          	int3
140003043: cc                          	int3
140003044: 4c 8b 05 dd 3f 01 00        	mov	r8, qword ptr [rip + 81885] # 0x140017028
14000304b: 4c 8b c9                    	mov	r9, rcx
14000304e: 41 8b d0                    	mov	edx, r8d
140003051: b9 40 00 00 00              	mov	ecx, 64
140003056: 83 e2 3f                    	and	edx, 63
140003059: 2b ca                       	sub	ecx, edx
14000305b: 49 d3 c9                    	ror	r9, cl
14000305e: 4d 33 c8                    	xor	r9, r8
140003061: 4c 89 0d 80 4b 01 00        	mov	qword ptr [rip + 84864], r9 # 0x140017be8
140003068: c3                          	ret
140003069: cc                          	int3
14000306a: cc                          	int3
14000306b: cc                          	int3
14000306c: 48 8b c4                    	mov	rax, rsp
14000306f: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
140003073: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
140003077: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
14000307b: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
14000307f: 41 54                       	push	r12
140003081: 41 56                       	push	r14
140003083: 41 57                       	push	r15
140003085: 48 83 ec 20                 	sub	rsp, 32
140003089: 4c 8b 7c 24 60              	mov	r15, qword ptr [rsp + 96]
14000308e: 4d 8b e1                    	mov	r12, r9
140003091: 49 8b d8                    	mov	rbx, r8
140003094: 4c 8b f2                    	mov	r14, rdx
140003097: 48 8b f9                    	mov	rdi, rcx
14000309a: 49 83 27 00                 	and	qword ptr [r15], 0
14000309e: 49 c7 01 01 00 00 00        	mov	qword ptr [r9], 1
1400030a5: 48 85 d2                    	test	rdx, rdx
1400030a8: 74 07                       	je	0x1400030b1 <.text+0x20b1>
1400030aa: 48 89 1a                    	mov	qword ptr [rdx], rbx
1400030ad: 49 83 c6 08                 	add	r14, 8
1400030b1: 40 32 ed                    	xor	bpl, bpl
1400030b4: 80 3f 22                    	cmp	byte ptr [rdi], 34
1400030b7: 75 0f                       	jne	0x1400030c8 <.text+0x20c8>
1400030b9: 40 84 ed                    	test	bpl, bpl
1400030bc: 40 b6 22                    	mov	sil, 34
1400030bf: 40 0f 94 c5                 	sete	bpl
1400030c3: 48 ff c7                    	inc	rdi
1400030c6: eb 37                       	jmp	0x1400030ff <.text+0x20ff>
1400030c8: 49 ff 07                    	inc	qword ptr [r15]
1400030cb: 48 85 db                    	test	rbx, rbx
1400030ce: 74 07                       	je	0x1400030d7 <.text+0x20d7>
1400030d0: 8a 07                       	mov	al, byte ptr [rdi]
1400030d2: 88 03                       	mov	byte ptr [rbx], al
1400030d4: 48 ff c3                    	inc	rbx
1400030d7: 0f be 37                    	movsx	esi, byte ptr [rdi]
1400030da: 48 ff c7                    	inc	rdi
1400030dd: 8b ce                       	mov	ecx, esi
1400030df: e8 d4 34 00 00              	call	0x1400065b8 <.text+0x55b8>
1400030e4: 85 c0                       	test	eax, eax
1400030e6: 74 12                       	je	0x1400030fa <.text+0x20fa>
1400030e8: 49 ff 07                    	inc	qword ptr [r15]
1400030eb: 48 85 db                    	test	rbx, rbx
1400030ee: 74 07                       	je	0x1400030f7 <.text+0x20f7>
1400030f0: 8a 07                       	mov	al, byte ptr [rdi]
1400030f2: 88 03                       	mov	byte ptr [rbx], al
1400030f4: 48 ff c3                    	inc	rbx
1400030f7: 48 ff c7                    	inc	rdi
1400030fa: 40 84 f6                    	test	sil, sil
1400030fd: 74 1c                       	je	0x14000311b <.text+0x211b>
1400030ff: 40 84 ed                    	test	bpl, bpl
140003102: 75 b0                       	jne	0x1400030b4 <.text+0x20b4>
140003104: 40 80 fe 20                 	cmp	sil, 32
140003108: 74 06                       	je	0x140003110 <.text+0x2110>
14000310a: 40 80 fe 09                 	cmp	sil, 9
14000310e: 75 a4                       	jne	0x1400030b4 <.text+0x20b4>
140003110: 48 85 db                    	test	rbx, rbx
140003113: 74 09                       	je	0x14000311e <.text+0x211e>
140003115: c6 43 ff 00                 	mov	byte ptr [rbx - 1], 0
140003119: eb 03                       	jmp	0x14000311e <.text+0x211e>
14000311b: 48 ff cf                    	dec	rdi
14000311e: 40 32 f6                    	xor	sil, sil
140003121: 8a 07                       	mov	al, byte ptr [rdi]
140003123: 84 c0                       	test	al, al
140003125: 0f 84 d4 00 00 00           	je	0x1400031ff <.text+0x21ff>
14000312b: 3c 20                       	cmp	al, 32
14000312d: 74 04                       	je	0x140003133 <.text+0x2133>
14000312f: 3c 09                       	cmp	al, 9
140003131: 75 07                       	jne	0x14000313a <.text+0x213a>
140003133: 48 ff c7                    	inc	rdi
140003136: 8a 07                       	mov	al, byte ptr [rdi]
140003138: eb f1                       	jmp	0x14000312b <.text+0x212b>
14000313a: 84 c0                       	test	al, al
14000313c: 0f 84 bd 00 00 00           	je	0x1400031ff <.text+0x21ff>
140003142: 4d 85 f6                    	test	r14, r14
140003145: 74 07                       	je	0x14000314e <.text+0x214e>
140003147: 49 89 1e                    	mov	qword ptr [r14], rbx
14000314a: 49 83 c6 08                 	add	r14, 8
14000314e: 49 ff 04 24                 	inc	qword ptr [r12]
140003152: ba 01 00 00 00              	mov	edx, 1
140003157: 33 c0                       	xor	eax, eax
140003159: eb 05                       	jmp	0x140003160 <.text+0x2160>
14000315b: 48 ff c7                    	inc	rdi
14000315e: ff c0                       	inc	eax
140003160: 8a 0f                       	mov	cl, byte ptr [rdi]
140003162: 80 f9 5c                    	cmp	cl, 92
140003165: 74 f4                       	je	0x14000315b <.text+0x215b>
140003167: 80 f9 22                    	cmp	cl, 34
14000316a: 75 30                       	jne	0x14000319c <.text+0x219c>
14000316c: 84 c2                       	test	dl, al
14000316e: 75 18                       	jne	0x140003188 <.text+0x2188>
140003170: 40 84 f6                    	test	sil, sil
140003173: 74 0a                       	je	0x14000317f <.text+0x217f>
140003175: 38 4f 01                    	cmp	byte ptr [rdi + 1], cl
140003178: 75 05                       	jne	0x14000317f <.text+0x217f>
14000317a: 48 ff c7                    	inc	rdi
14000317d: eb 09                       	jmp	0x140003188 <.text+0x2188>
14000317f: 33 d2                       	xor	edx, edx
140003181: 40 84 f6                    	test	sil, sil
140003184: 40 0f 94 c6                 	sete	sil
140003188: d1 e8                       	shr	eax
14000318a: eb 10                       	jmp	0x14000319c <.text+0x219c>
14000318c: ff c8                       	dec	eax
14000318e: 48 85 db                    	test	rbx, rbx
140003191: 74 06                       	je	0x140003199 <.text+0x2199>
140003193: c6 03 5c                    	mov	byte ptr [rbx], 92
140003196: 48 ff c3                    	inc	rbx
140003199: 49 ff 07                    	inc	qword ptr [r15]
14000319c: 85 c0                       	test	eax, eax
14000319e: 75 ec                       	jne	0x14000318c <.text+0x218c>
1400031a0: 8a 07                       	mov	al, byte ptr [rdi]
1400031a2: 84 c0                       	test	al, al
1400031a4: 74 46                       	je	0x1400031ec <.text+0x21ec>
1400031a6: 40 84 f6                    	test	sil, sil
1400031a9: 75 08                       	jne	0x1400031b3 <.text+0x21b3>
1400031ab: 3c 20                       	cmp	al, 32
1400031ad: 74 3d                       	je	0x1400031ec <.text+0x21ec>
1400031af: 3c 09                       	cmp	al, 9
1400031b1: 74 39                       	je	0x1400031ec <.text+0x21ec>
1400031b3: 85 d2                       	test	edx, edx
1400031b5: 74 2d                       	je	0x1400031e4 <.text+0x21e4>
1400031b7: 48 85 db                    	test	rbx, rbx
1400031ba: 74 07                       	je	0x1400031c3 <.text+0x21c3>
1400031bc: 88 03                       	mov	byte ptr [rbx], al
1400031be: 48 ff c3                    	inc	rbx
1400031c1: 8a 07                       	mov	al, byte ptr [rdi]
1400031c3: 0f be c8                    	movsx	ecx, al
1400031c6: e8 ed 33 00 00              	call	0x1400065b8 <.text+0x55b8>
1400031cb: 85 c0                       	test	eax, eax
1400031cd: 74 12                       	je	0x1400031e1 <.text+0x21e1>
1400031cf: 49 ff 07                    	inc	qword ptr [r15]
1400031d2: 48 ff c7                    	inc	rdi
1400031d5: 48 85 db                    	test	rbx, rbx
1400031d8: 74 07                       	je	0x1400031e1 <.text+0x21e1>
1400031da: 8a 07                       	mov	al, byte ptr [rdi]
1400031dc: 88 03                       	mov	byte ptr [rbx], al
1400031de: 48 ff c3                    	inc	rbx
1400031e1: 49 ff 07                    	inc	qword ptr [r15]
1400031e4: 48 ff c7                    	inc	rdi
1400031e7: e9 66 ff ff ff              	jmp	0x140003152 <.text+0x2152>
1400031ec: 48 85 db                    	test	rbx, rbx
1400031ef: 74 06                       	je	0x1400031f7 <.text+0x21f7>
1400031f1: c6 03 00                    	mov	byte ptr [rbx], 0
1400031f4: 48 ff c3                    	inc	rbx
1400031f7: 49 ff 07                    	inc	qword ptr [r15]
1400031fa: e9 22 ff ff ff              	jmp	0x140003121 <.text+0x2121>
1400031ff: 4d 85 f6                    	test	r14, r14
140003202: 74 04                       	je	0x140003208 <.text+0x2208>
140003204: 49 83 26 00                 	and	qword ptr [r14], 0
140003208: 49 ff 04 24                 	inc	qword ptr [r12]
14000320c: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140003211: 48 8b 6c 24 48              	mov	rbp, qword ptr [rsp + 72]
140003216: 48 8b 74 24 50              	mov	rsi, qword ptr [rsp + 80]
14000321b: 48 8b 7c 24 58              	mov	rdi, qword ptr [rsp + 88]
140003220: 48 83 c4 20                 	add	rsp, 32
140003224: 41 5f                       	pop	r15
140003226: 41 5e                       	pop	r14
140003228: 41 5c                       	pop	r12
14000322a: c3                          	ret
14000322b: cc                          	int3
14000322c: 40 53                       	push	rbx
14000322e: 48 83 ec 20                 	sub	rsp, 32
140003232: 48 b8 ff ff ff ff ff ff ff 1f       	movabs	rax, 2305843009213693951
14000323c: 4c 8b ca                    	mov	r9, rdx
14000323f: 48 3b c8                    	cmp	rcx, rax
140003242: 73 3d                       	jae	0x140003281 <.text+0x2281>
140003244: 33 d2                       	xor	edx, edx
140003246: 48 83 c8 ff                 	or	rax, -1
14000324a: 49 f7 f0                    	div	r8
14000324d: 4c 3b c8                    	cmp	r9, rax
140003250: 73 2f                       	jae	0x140003281 <.text+0x2281>
140003252: 48 c1 e1 03                 	shl	rcx, 3
140003256: 4d 0f af c8                 	imul	r9, r8
14000325a: 48 8b c1                    	mov	rax, rcx
14000325d: 48 f7 d0                    	not	rax
140003260: 49 3b c1                    	cmp	rax, r9
140003263: 76 1c                       	jbe	0x140003281 <.text+0x2281>
140003265: 49 03 c9                    	add	rcx, r9
140003268: ba 01 00 00 00              	mov	edx, 1
14000326d: e8 be 1b 00 00              	call	0x140004e30 <.text+0x3e30>
140003272: 33 c9                       	xor	ecx, ecx
140003274: 48 8b d8                    	mov	rbx, rax
140003277: e8 2c 1c 00 00              	call	0x140004ea8 <.text+0x3ea8>
14000327c: 48 8b c3                    	mov	rax, rbx
14000327f: eb 02                       	jmp	0x140003283 <.text+0x2283>
140003281: 33 c0                       	xor	eax, eax
140003283: 48 83 c4 20                 	add	rsp, 32
140003287: 5b                          	pop	rbx
140003288: c3                          	ret
140003289: cc                          	int3
14000328a: cc                          	int3
14000328b: cc                          	int3
14000328c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003291: 55                          	push	rbp
140003292: 56                          	push	rsi
140003293: 57                          	push	rdi
140003294: 41 56                       	push	r14
140003296: 41 57                       	push	r15
140003298: 48 8b ec                    	mov	rbp, rsp
14000329b: 48 83 ec 30                 	sub	rsp, 48
14000329f: 33 ff                       	xor	edi, edi
1400032a1: 44 8b f1                    	mov	r14d, ecx
1400032a4: 85 c9                       	test	ecx, ecx
1400032a6: 0f 84 53 01 00 00           	je	0x1400033ff <.text+0x23ff>
1400032ac: 8d 41 ff                    	lea	eax, [rcx - 1]
1400032af: 83 f8 01                    	cmp	eax, 1
1400032b2: 76 16                       	jbe	0x1400032ca <.text+0x22ca>
1400032b4: e8 57 1b 00 00              	call	0x140004e10 <.text+0x3e10>
1400032b9: 8d 5f 16                    	lea	ebx, [rdi + 22]
1400032bc: 89 18                       	mov	dword ptr [rax], ebx
1400032be: e8 2d 1a 00 00              	call	0x140004cf0 <.text+0x3cf0>
1400032c3: 8b fb                       	mov	edi, ebx
1400032c5: e9 35 01 00 00              	jmp	0x1400033ff <.text+0x23ff>
1400032ca: e8 39 2f 00 00              	call	0x140006208 <.text+0x5208>
1400032cf: 48 8d 1d 1a 49 01 00        	lea	rbx, [rip + 84250]      # 0x140017bf0
1400032d6: 41 b8 04 01 00 00           	mov	r8d, 260
1400032dc: 48 8b d3                    	mov	rdx, rbx
1400032df: 33 c9                       	xor	ecx, ecx
1400032e1: e8 da 26 00 00              	call	0x1400059c0 <.text+0x49c0>
1400032e6: 48 8b 35 63 4a 01 00        	mov	rsi, qword ptr [rip + 84579] # 0x140017d50
1400032ed: 48 89 1d 3c 4a 01 00        	mov	qword ptr [rip + 84540], rbx # 0x140017d30
1400032f4: 48 85 f6                    	test	rsi, rsi
1400032f7: 74 05                       	je	0x1400032fe <.text+0x22fe>
1400032f9: 40 38 3e                    	cmp	byte ptr [rsi], dil
1400032fc: 75 03                       	jne	0x140003301 <.text+0x2301>
1400032fe: 48 8b f3                    	mov	rsi, rbx
140003301: 48 8d 45 48                 	lea	rax, [rbp + 72]
140003305: 48 89 7d 40                 	mov	qword ptr [rbp + 64], rdi
140003309: 4c 8d 4d 40                 	lea	r9, [rbp + 64]
14000330d: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140003312: 45 33 c0                    	xor	r8d, r8d
140003315: 48 89 7d 48                 	mov	qword ptr [rbp + 72], rdi
140003319: 33 d2                       	xor	edx, edx
14000331b: 48 8b ce                    	mov	rcx, rsi
14000331e: e8 49 fd ff ff              	call	0x14000306c <.text+0x206c>
140003323: 4c 8b 7d 40                 	mov	r15, qword ptr [rbp + 64]
140003327: 41 b8 01 00 00 00           	mov	r8d, 1
14000332d: 48 8b 55 48                 	mov	rdx, qword ptr [rbp + 72]
140003331: 49 8b cf                    	mov	rcx, r15
140003334: e8 f3 fe ff ff              	call	0x14000322c <.text+0x222c>
140003339: 48 8b d8                    	mov	rbx, rax
14000333c: 48 85 c0                    	test	rax, rax
14000333f: 75 18                       	jne	0x140003359 <.text+0x2359>
140003341: e8 ca 1a 00 00              	call	0x140004e10 <.text+0x3e10>
140003346: bb 0c 00 00 00              	mov	ebx, 12
14000334b: 33 c9                       	xor	ecx, ecx
14000334d: 89 18                       	mov	dword ptr [rax], ebx
14000334f: e8 54 1b 00 00              	call	0x140004ea8 <.text+0x3ea8>
140003354: e9 6a ff ff ff              	jmp	0x1400032c3 <.text+0x22c3>
140003359: 4e 8d 04 f8                 	lea	r8, [rax + 8*r15]
14000335d: 48 8b d3                    	mov	rdx, rbx
140003360: 48 8d 45 48                 	lea	rax, [rbp + 72]
140003364: 48 8b ce                    	mov	rcx, rsi
140003367: 4c 8d 4d 40                 	lea	r9, [rbp + 64]
14000336b: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140003370: e8 f7 fc ff ff              	call	0x14000306c <.text+0x206c>
140003375: 41 83 fe 01                 	cmp	r14d, 1
140003379: 75 16                       	jne	0x140003391 <.text+0x2391>
14000337b: 8b 45 40                    	mov	eax, dword ptr [rbp + 64]
14000337e: ff c8                       	dec	eax
140003380: 48 89 1d b9 49 01 00        	mov	qword ptr [rip + 84409], rbx # 0x140017d40
140003387: 89 05 ab 49 01 00           	mov	dword ptr [rip + 84395], eax # 0x140017d38
14000338d: 33 c9                       	xor	ecx, ecx
14000338f: eb 69                       	jmp	0x1400033fa <.text+0x23fa>
140003391: 48 8d 55 38                 	lea	rdx, [rbp + 56]
140003395: 48 89 7d 38                 	mov	qword ptr [rbp + 56], rdi
140003399: 48 8b cb                    	mov	rcx, rbx
14000339c: e8 03 25 00 00              	call	0x1400058a4 <.text+0x48a4>
1400033a1: 8b f0                       	mov	esi, eax
1400033a3: 85 c0                       	test	eax, eax
1400033a5: 74 19                       	je	0x1400033c0 <.text+0x23c0>
1400033a7: 48 8b 4d 38                 	mov	rcx, qword ptr [rbp + 56]
1400033ab: e8 f8 1a 00 00              	call	0x140004ea8 <.text+0x3ea8>
1400033b0: 48 8b cb                    	mov	rcx, rbx
1400033b3: 48 89 7d 38                 	mov	qword ptr [rbp + 56], rdi
1400033b7: e8 ec 1a 00 00              	call	0x140004ea8 <.text+0x3ea8>
1400033bc: 8b fe                       	mov	edi, esi
1400033be: eb 3f                       	jmp	0x1400033ff <.text+0x23ff>
1400033c0: 48 8b 55 38                 	mov	rdx, qword ptr [rbp + 56]
1400033c4: 48 8b cf                    	mov	rcx, rdi
1400033c7: 48 8b c2                    	mov	rax, rdx
1400033ca: 48 39 3a                    	cmp	qword ptr [rdx], rdi
1400033cd: 74 0c                       	je	0x1400033db <.text+0x23db>
1400033cf: 48 8d 40 08                 	lea	rax, [rax + 8]
1400033d3: 48 ff c1                    	inc	rcx
1400033d6: 48 39 38                    	cmp	qword ptr [rax], rdi
1400033d9: 75 f4                       	jne	0x1400033cf <.text+0x23cf>
1400033db: 89 0d 57 49 01 00           	mov	dword ptr [rip + 84311], ecx # 0x140017d38
1400033e1: 33 c9                       	xor	ecx, ecx
1400033e3: 48 89 7d 38                 	mov	qword ptr [rbp + 56], rdi
1400033e7: 48 89 15 52 49 01 00        	mov	qword ptr [rip + 84306], rdx # 0x140017d40
1400033ee: e8 b5 1a 00 00              	call	0x140004ea8 <.text+0x3ea8>
1400033f3: 48 8b cb                    	mov	rcx, rbx
1400033f6: 48 89 7d 38                 	mov	qword ptr [rbp + 56], rdi
1400033fa: e8 a9 1a 00 00              	call	0x140004ea8 <.text+0x3ea8>
1400033ff: 48 8b 5c 24 60              	mov	rbx, qword ptr [rsp + 96]
140003404: 8b c7                       	mov	eax, edi
140003406: 48 83 c4 30                 	add	rsp, 48
14000340a: 41 5f                       	pop	r15
14000340c: 41 5e                       	pop	r14
14000340e: 5f                          	pop	rdi
14000340f: 5e                          	pop	rsi
140003410: 5d                          	pop	rbp
140003411: c3                          	ret
140003412: cc                          	int3
140003413: cc                          	int3
140003414: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003419: 57                          	push	rdi
14000341a: 48 83 ec 20                 	sub	rsp, 32
14000341e: 33 ff                       	xor	edi, edi
140003420: 48 39 3d d1 48 01 00        	cmp	qword ptr [rip + 84177], rdi # 0x140017cf8
140003427: 74 04                       	je	0x14000342d <.text+0x242d>
140003429: 33 c0                       	xor	eax, eax
14000342b: eb 48                       	jmp	0x140003475 <.text+0x2475>
14000342d: e8 d6 2d 00 00              	call	0x140006208 <.text+0x5208>
140003432: e8 a1 32 00 00              	call	0x1400066d8 <.text+0x56d8>
140003437: 48 8b d8                    	mov	rbx, rax
14000343a: 48 85 c0                    	test	rax, rax
14000343d: 75 05                       	jne	0x140003444 <.text+0x2444>
14000343f: 83 cf ff                    	or	edi, -1
140003442: eb 27                       	jmp	0x14000346b <.text+0x246b>
140003444: 48 8b cb                    	mov	rcx, rbx
140003447: e8 34 00 00 00              	call	0x140003480 <.text+0x2480>
14000344c: 48 85 c0                    	test	rax, rax
14000344f: 75 05                       	jne	0x140003456 <.text+0x2456>
140003451: 83 cf ff                    	or	edi, -1
140003454: eb 0e                       	jmp	0x140003464 <.text+0x2464>
140003456: 48 89 05 b3 48 01 00        	mov	qword ptr [rip + 84147], rax # 0x140017d10
14000345d: 48 89 05 94 48 01 00        	mov	qword ptr [rip + 84116], rax # 0x140017cf8
140003464: 33 c9                       	xor	ecx, ecx
140003466: e8 3d 1a 00 00              	call	0x140004ea8 <.text+0x3ea8>
14000346b: 48 8b cb                    	mov	rcx, rbx
14000346e: e8 35 1a 00 00              	call	0x140004ea8 <.text+0x3ea8>
140003473: 8b c7                       	mov	eax, edi
140003475: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000347a: 48 83 c4 20                 	add	rsp, 32
14000347e: 5f                          	pop	rdi
14000347f: c3                          	ret
140003480: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003485: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
14000348a: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
14000348f: 57                          	push	rdi
140003490: 41 56                       	push	r14
140003492: 41 57                       	push	r15
140003494: 48 83 ec 30                 	sub	rsp, 48
140003498: 4c 8b f1                    	mov	r14, rcx
14000349b: 33 f6                       	xor	esi, esi
14000349d: 8b ce                       	mov	ecx, esi
14000349f: 4d 8b c6                    	mov	r8, r14
1400034a2: 41 8a 16                    	mov	dl, byte ptr [r14]
1400034a5: eb 24                       	jmp	0x1400034cb <.text+0x24cb>
1400034a7: 80 fa 3d                    	cmp	dl, 61
1400034aa: 48 8d 41 01                 	lea	rax, [rcx + 1]
1400034ae: 48 0f 44 c1                 	cmove	rax, rcx
1400034b2: 48 8b c8                    	mov	rcx, rax
1400034b5: 48 83 c8 ff                 	or	rax, -1
1400034b9: 48 ff c0                    	inc	rax
1400034bc: 41 38 34 00                 	cmp	byte ptr [r8 + rax], sil
1400034c0: 75 f7                       	jne	0x1400034b9 <.text+0x24b9>
1400034c2: 49 ff c0                    	inc	r8
1400034c5: 4c 03 c0                    	add	r8, rax
1400034c8: 41 8a 10                    	mov	dl, byte ptr [r8]
1400034cb: 84 d2                       	test	dl, dl
1400034cd: 75 d8                       	jne	0x1400034a7 <.text+0x24a7>
1400034cf: 48 ff c1                    	inc	rcx
1400034d2: ba 08 00 00 00              	mov	edx, 8
1400034d7: e8 54 19 00 00              	call	0x140004e30 <.text+0x3e30>
1400034dc: 48 8b d8                    	mov	rbx, rax
1400034df: 48 85 c0                    	test	rax, rax
1400034e2: 74 6c                       	je	0x140003550 <.text+0x2550>
1400034e4: 4c 8b f8                    	mov	r15, rax
1400034e7: 41 8a 06                    	mov	al, byte ptr [r14]
1400034ea: 84 c0                       	test	al, al
1400034ec: 74 5f                       	je	0x14000354d <.text+0x254d>
1400034ee: 48 83 cd ff                 	or	rbp, -1
1400034f2: 48 ff c5                    	inc	rbp
1400034f5: 41 38 34 2e                 	cmp	byte ptr [r14 + rbp], sil
1400034f9: 75 f7                       	jne	0x1400034f2 <.text+0x24f2>
1400034fb: 48 ff c5                    	inc	rbp
1400034fe: 3c 3d                       	cmp	al, 61
140003500: 74 35                       	je	0x140003537 <.text+0x2537>
140003502: ba 01 00 00 00              	mov	edx, 1
140003507: 48 8b cd                    	mov	rcx, rbp
14000350a: e8 21 19 00 00              	call	0x140004e30 <.text+0x3e30>
14000350f: 48 8b f8                    	mov	rdi, rax
140003512: 48 85 c0                    	test	rax, rax
140003515: 74 25                       	je	0x14000353c <.text+0x253c>
140003517: 4d 8b c6                    	mov	r8, r14
14000351a: 48 8b d5                    	mov	rdx, rbp
14000351d: 48 8b c8                    	mov	rcx, rax
140003520: e8 7f 0d 00 00              	call	0x1400042a4 <.text+0x32a4>
140003525: 33 c9                       	xor	ecx, ecx
140003527: 85 c0                       	test	eax, eax
140003529: 75 48                       	jne	0x140003573 <.text+0x2573>
14000352b: 49 89 3f                    	mov	qword ptr [r15], rdi
14000352e: 49 83 c7 08                 	add	r15, 8
140003532: e8 71 19 00 00              	call	0x140004ea8 <.text+0x3ea8>
140003537: 4c 03 f5                    	add	r14, rbp
14000353a: eb ab                       	jmp	0x1400034e7 <.text+0x24e7>
14000353c: 48 8b cb                    	mov	rcx, rbx
14000353f: e8 44 00 00 00              	call	0x140003588 <.text+0x2588>
140003544: 33 c9                       	xor	ecx, ecx
140003546: e8 5d 19 00 00              	call	0x140004ea8 <.text+0x3ea8>
14000354b: eb 03                       	jmp	0x140003550 <.text+0x2550>
14000354d: 48 8b f3                    	mov	rsi, rbx
140003550: 33 c9                       	xor	ecx, ecx
140003552: e8 51 19 00 00              	call	0x140004ea8 <.text+0x3ea8>
140003557: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
14000355c: 48 8b c6                    	mov	rax, rsi
14000355f: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
140003564: 48 8b 6c 24 58              	mov	rbp, qword ptr [rsp + 88]
140003569: 48 83 c4 30                 	add	rsp, 48
14000356d: 41 5f                       	pop	r15
14000356f: 41 5e                       	pop	r14
140003571: 5f                          	pop	rdi
140003572: c3                          	ret
140003573: 45 33 c9                    	xor	r9d, r9d
140003576: 48 89 74 24 20              	mov	qword ptr [rsp + 32], rsi
14000357b: 45 33 c0                    	xor	r8d, r8d
14000357e: 33 d2                       	xor	edx, edx
140003580: e8 8b 17 00 00              	call	0x140004d10 <.text+0x3d10>
140003585: cc                          	int3
140003586: cc                          	int3
140003587: cc                          	int3
140003588: 48 85 c9                    	test	rcx, rcx
14000358b: 74 3b                       	je	0x1400035c8 <.text+0x25c8>
14000358d: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003592: 57                          	push	rdi
140003593: 48 83 ec 20                 	sub	rsp, 32
140003597: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000359a: 48 8b d9                    	mov	rbx, rcx
14000359d: 48 8b f9                    	mov	rdi, rcx
1400035a0: eb 0f                       	jmp	0x1400035b1 <.text+0x25b1>
1400035a2: 48 8b c8                    	mov	rcx, rax
1400035a5: e8 fe 18 00 00              	call	0x140004ea8 <.text+0x3ea8>
1400035aa: 48 8d 7f 08                 	lea	rdi, [rdi + 8]
1400035ae: 48 8b 07                    	mov	rax, qword ptr [rdi]
1400035b1: 48 85 c0                    	test	rax, rax
1400035b4: 75 ec                       	jne	0x1400035a2 <.text+0x25a2>
1400035b6: 48 8b cb                    	mov	rcx, rbx
1400035b9: e8 ea 18 00 00              	call	0x140004ea8 <.text+0x3ea8>
1400035be: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400035c3: 48 83 c4 20                 	add	rsp, 32
1400035c7: 5f                          	pop	rdi
1400035c8: c3                          	ret
1400035c9: cc                          	int3
1400035ca: cc                          	int3
1400035cb: cc                          	int3
1400035cc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400035d1: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
1400035d6: 57                          	push	rdi
1400035d7: 48 83 ec 40                 	sub	rsp, 64
1400035db: 48 8b 3d 1e 47 01 00        	mov	rdi, qword ptr [rip + 83742] # 0x140017d00
1400035e2: 48 85 ff                    	test	rdi, rdi
1400035e5: 0f 85 94 00 00 00           	jne	0x14000367f <.text+0x267f>
1400035eb: 83 c8 ff                    	or	eax, -1
1400035ee: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
1400035f3: 48 8b 74 24 58              	mov	rsi, qword ptr [rsp + 88]
1400035f8: 48 83 c4 40                 	add	rsp, 64
1400035fc: 5f                          	pop	rdi
1400035fd: c3                          	ret
1400035fe: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
140003604: 41 83 c9 ff                 	or	r9d, -1
140003608: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
14000360e: 4c 8b c0                    	mov	r8, rax
140003611: 83 64 24 28 00              	and	dword ptr [rsp + 40], 0
140003616: 33 d2                       	xor	edx, edx
140003618: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000361e: 33 c9                       	xor	ecx, ecx
140003620: e8 03 30 00 00              	call	0x140006628 <.text+0x5628>
140003625: 48 63 f0                    	movsxd	rsi, eax
140003628: 85 c0                       	test	eax, eax
14000362a: 74 bf                       	je	0x1400035eb <.text+0x25eb>
14000362c: ba 01 00 00 00              	mov	edx, 1
140003631: 48 8b ce                    	mov	rcx, rsi
140003634: e8 f7 17 00 00              	call	0x140004e30 <.text+0x3e30>
140003639: 48 8b d8                    	mov	rbx, rax
14000363c: 48 85 c0                    	test	rax, rax
14000363f: 74 4f                       	je	0x140003690 <.text+0x2690>
140003641: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
140003647: 41 83 c9 ff                 	or	r9d, -1
14000364b: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
140003651: 33 d2                       	xor	edx, edx
140003653: 4c 8b 07                    	mov	r8, qword ptr [rdi]
140003656: 33 c9                       	xor	ecx, ecx
140003658: 89 74 24 28                 	mov	dword ptr [rsp + 40], esi
14000365c: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140003661: e8 c2 2f 00 00              	call	0x140006628 <.text+0x5628>
140003666: 85 c0                       	test	eax, eax
140003668: 74 26                       	je	0x140003690 <.text+0x2690>
14000366a: 33 d2                       	xor	edx, edx
14000366c: 48 8b cb                    	mov	rcx, rbx
14000366f: e8 70 35 00 00              	call	0x140006be4 <.text+0x5be4>
140003674: 33 c9                       	xor	ecx, ecx
140003676: e8 2d 18 00 00              	call	0x140004ea8 <.text+0x3ea8>
14000367b: 48 83 c7 08                 	add	rdi, 8
14000367f: 48 8b 07                    	mov	rax, qword ptr [rdi]
140003682: 48 85 c0                    	test	rax, rax
140003685: 0f 85 73 ff ff ff           	jne	0x1400035fe <.text+0x25fe>
14000368b: e9 5e ff ff ff              	jmp	0x1400035ee <.text+0x25ee>
140003690: 48 8b cb                    	mov	rcx, rbx
140003693: e8 10 18 00 00              	call	0x140004ea8 <.text+0x3ea8>
140003698: e9 4e ff ff ff              	jmp	0x1400035eb <.text+0x25eb>
14000369d: cc                          	int3
14000369e: cc                          	int3
14000369f: cc                          	int3
1400036a0: 48 83 ec 28                 	sub	rsp, 40
1400036a4: 48 8b 09                    	mov	rcx, qword ptr [rcx]
1400036a7: 48 3b 0d 62 46 01 00        	cmp	rcx, qword ptr [rip + 83554] # 0x140017d10
1400036ae: 74 05                       	je	0x1400036b5 <.text+0x26b5>
1400036b0: e8 d3 fe ff ff              	call	0x140003588 <.text+0x2588>
1400036b5: 48 83 c4 28                 	add	rsp, 40
1400036b9: c3                          	ret
1400036ba: cc                          	int3
1400036bb: cc                          	int3
1400036bc: 48 83 ec 28                 	sub	rsp, 40
1400036c0: 48 8b 09                    	mov	rcx, qword ptr [rcx]
1400036c3: 48 3b 0d 3e 46 01 00        	cmp	rcx, qword ptr [rip + 83518] # 0x140017d08
1400036ca: 74 05                       	je	0x1400036d1 <.text+0x26d1>
1400036cc: e8 b7 fe ff ff              	call	0x140003588 <.text+0x2588>
1400036d1: 48 83 c4 28                 	add	rsp, 40
1400036d5: c3                          	ret
1400036d6: cc                          	int3
1400036d7: cc                          	int3
1400036d8: 48 83 ec 28                 	sub	rsp, 40
1400036dc: 48 8b 05 15 46 01 00        	mov	rax, qword ptr [rip + 83477] # 0x140017cf8
1400036e3: 48 85 c0                    	test	rax, rax
1400036e6: 75 26                       	jne	0x14000370e <.text+0x270e>
1400036e8: 48 39 05 11 46 01 00        	cmp	qword ptr [rip + 83473], rax # 0x140017d00
1400036ef: 75 04                       	jne	0x1400036f5 <.text+0x26f5>
1400036f1: 33 c0                       	xor	eax, eax
1400036f3: eb 19                       	jmp	0x14000370e <.text+0x270e>
1400036f5: e8 1a fd ff ff              	call	0x140003414 <.text+0x2414>
1400036fa: 85 c0                       	test	eax, eax
1400036fc: 74 09                       	je	0x140003707 <.text+0x2707>
1400036fe: e8 c9 fe ff ff              	call	0x1400035cc <.text+0x25cc>
140003703: 85 c0                       	test	eax, eax
140003705: 75 ea                       	jne	0x1400036f1 <.text+0x26f1>
140003707: 48 8b 05 ea 45 01 00        	mov	rax, qword ptr [rip + 83434] # 0x140017cf8
14000370e: 48 83 c4 28                 	add	rsp, 40
140003712: c3                          	ret
140003713: cc                          	int3
140003714: 48 83 ec 28                 	sub	rsp, 40
140003718: 48 8d 0d d9 45 01 00        	lea	rcx, [rip + 83417]      # 0x140017cf8
14000371f: e8 7c ff ff ff              	call	0x1400036a0 <.text+0x26a0>
140003724: 48 8d 0d d5 45 01 00        	lea	rcx, [rip + 83413]      # 0x140017d00
14000372b: e8 8c ff ff ff              	call	0x1400036bc <.text+0x26bc>
140003730: 48 8b 0d d9 45 01 00        	mov	rcx, qword ptr [rip + 83417] # 0x140017d10
140003737: e8 4c fe ff ff              	call	0x140003588 <.text+0x2588>
14000373c: 48 8b 0d c5 45 01 00        	mov	rcx, qword ptr [rip + 83397] # 0x140017d08
140003743: 48 83 c4 28                 	add	rsp, 40
140003747: e9 3c fe ff ff              	jmp	0x140003588 <.text+0x2588>
14000374c: 48 83 ec 28                 	sub	rsp, 40
140003750: 48 8b 05 b9 45 01 00        	mov	rax, qword ptr [rip + 83385] # 0x140017d10
140003757: 48 85 c0                    	test	rax, rax
14000375a: 75 39                       	jne	0x140003795 <.text+0x2795>
14000375c: 48 8b 05 95 45 01 00        	mov	rax, qword ptr [rip + 83349] # 0x140017cf8
140003763: 48 85 c0                    	test	rax, rax
140003766: 75 26                       	jne	0x14000378e <.text+0x278e>
140003768: 48 39 05 91 45 01 00        	cmp	qword ptr [rip + 83345], rax # 0x140017d00
14000376f: 75 04                       	jne	0x140003775 <.text+0x2775>
140003771: 33 c0                       	xor	eax, eax
140003773: eb 19                       	jmp	0x14000378e <.text+0x278e>
140003775: e8 9a fc ff ff              	call	0x140003414 <.text+0x2414>
14000377a: 85 c0                       	test	eax, eax
14000377c: 74 09                       	je	0x140003787 <.text+0x2787>
14000377e: e8 49 fe ff ff              	call	0x1400035cc <.text+0x25cc>
140003783: 85 c0                       	test	eax, eax
140003785: 75 ea                       	jne	0x140003771 <.text+0x2771>
140003787: 48 8b 05 6a 45 01 00        	mov	rax, qword ptr [rip + 83306] # 0x140017cf8
14000378e: 48 89 05 7b 45 01 00        	mov	qword ptr [rip + 83323], rax # 0x140017d10
140003795: 48 83 c4 28                 	add	rsp, 40
140003799: c3                          	ret
14000379a: cc                          	int3
14000379b: cc                          	int3
14000379c: e9 73 fc ff ff              	jmp	0x140003414 <.text+0x2414>
1400037a1: cc                          	int3
1400037a2: cc                          	int3
1400037a3: cc                          	int3
1400037a4: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400037a9: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
1400037ae: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
1400037b3: 57                          	push	rdi
1400037b4: 48 83 ec 20                 	sub	rsp, 32
1400037b8: 33 ed                       	xor	ebp, ebp
1400037ba: 48 8b fa                    	mov	rdi, rdx
1400037bd: 48 2b f9                    	sub	rdi, rcx
1400037c0: 48 8b d9                    	mov	rbx, rcx
1400037c3: 48 83 c7 07                 	add	rdi, 7
1400037c7: 8b f5                       	mov	esi, ebp
1400037c9: 48 c1 ef 03                 	shr	rdi, 3
1400037cd: 48 3b ca                    	cmp	rcx, rdx
1400037d0: 48 0f 47 fd                 	cmova	rdi, rbp
1400037d4: 48 85 ff                    	test	rdi, rdi
1400037d7: 74 1a                       	je	0x1400037f3 <.text+0x27f3>
1400037d9: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400037dc: 48 85 c0                    	test	rax, rax
1400037df: 74 06                       	je	0x1400037e7 <.text+0x27e7>
1400037e1: ff 15 49 aa 00 00           	call	qword ptr [rip + 43593] # 0x14000e230
1400037e7: 48 83 c3 08                 	add	rbx, 8
1400037eb: 48 ff c6                    	inc	rsi
1400037ee: 48 3b f7                    	cmp	rsi, rdi
1400037f1: 75 e6                       	jne	0x1400037d9 <.text+0x27d9>
1400037f3: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400037f8: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
1400037fd: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
140003802: 48 83 c4 20                 	add	rsp, 32
140003806: 5f                          	pop	rdi
140003807: c3                          	ret
140003808: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000380d: 57                          	push	rdi
14000380e: 48 83 ec 20                 	sub	rsp, 32
140003812: 48 8b fa                    	mov	rdi, rdx
140003815: 48 8b d9                    	mov	rbx, rcx
140003818: 48 3b ca                    	cmp	rcx, rdx
14000381b: 74 1b                       	je	0x140003838 <.text+0x2838>
14000381d: 48 8b 03                    	mov	rax, qword ptr [rbx]
140003820: 48 85 c0                    	test	rax, rax
140003823: 74 0a                       	je	0x14000382f <.text+0x282f>
140003825: ff 15 05 aa 00 00           	call	qword ptr [rip + 43525] # 0x14000e230
14000382b: 85 c0                       	test	eax, eax
14000382d: 75 0b                       	jne	0x14000383a <.text+0x283a>
14000382f: 48 83 c3 08                 	add	rbx, 8
140003833: 48 3b df                    	cmp	rbx, rdi
140003836: eb e3                       	jmp	0x14000381b <.text+0x281b>
140003838: 33 c0                       	xor	eax, eax
14000383a: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000383f: 48 83 c4 20                 	add	rsp, 32
140003843: 5f                          	pop	rdi
140003844: c3                          	ret
140003845: cc                          	int3
140003846: cc                          	int3
140003847: cc                          	int3
140003848: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000384d: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140003852: 57                          	push	rdi
140003853: 48 83 ec 20                 	sub	rsp, 32
140003857: 49 8b d9                    	mov	rbx, r9
14000385a: 49 8b f8                    	mov	rdi, r8
14000385d: 8b 0a                       	mov	ecx, dword ptr [rdx]
14000385f: e8 d0 33 00 00              	call	0x140006c34 <.text+0x5c34>
140003864: 90                          	nop
140003865: 48 8b cf                    	mov	rcx, rdi
140003868: e8 13 00 00 00              	call	0x140003880 <.text+0x2880>
14000386d: 90                          	nop
14000386e: 8b 0b                       	mov	ecx, dword ptr [rbx]
140003870: e8 13 34 00 00              	call	0x140006c88 <.text+0x5c88>
140003875: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000387a: 48 83 c4 20                 	add	rsp, 32
14000387e: 5f                          	pop	rdi
14000387f: c3                          	ret
140003880: 40 53                       	push	rbx
140003882: 48 83 ec 20                 	sub	rsp, 32
140003886: 48 8b d9                    	mov	rbx, rcx
140003889: 80 3d 98 44 01 00 00        	cmp	byte ptr [rip + 83096], 0 # 0x140017d28
140003890: 0f 85 9f 00 00 00           	jne	0x140003935 <.text+0x2935>
140003896: b8 01 00 00 00              	mov	eax, 1
14000389b: 87 05 77 44 01 00           	xchg	dword ptr [rip + 83063], eax # 0x140017d18
1400038a1: 48 8b 01                    	mov	rax, qword ptr [rcx]
1400038a4: 8b 08                       	mov	ecx, dword ptr [rax]
1400038a6: 85 c9                       	test	ecx, ecx
1400038a8: 75 34                       	jne	0x1400038de <.text+0x28de>
1400038aa: 48 8b 05 77 37 01 00        	mov	rax, qword ptr [rip + 79735] # 0x140017028
1400038b1: 8b c8                       	mov	ecx, eax
1400038b3: 83 e1 3f                    	and	ecx, 63
1400038b6: 48 8b 15 63 44 01 00        	mov	rdx, qword ptr [rip + 83043] # 0x140017d20
1400038bd: 48 3b d0                    	cmp	rdx, rax
1400038c0: 74 13                       	je	0x1400038d5 <.text+0x28d5>
1400038c2: 48 33 c2                    	xor	rax, rdx
1400038c5: 48 d3 c8                    	ror	rax, cl
1400038c8: 45 33 c0                    	xor	r8d, r8d
1400038cb: 33 d2                       	xor	edx, edx
1400038cd: 33 c9                       	xor	ecx, ecx
1400038cf: ff 15 5b a9 00 00           	call	qword ptr [rip + 43355] # 0x14000e230
1400038d5: 48 8d 0d 94 44 01 00        	lea	rcx, [rip + 83092]      # 0x140017d70
1400038dc: eb 0c                       	jmp	0x1400038ea <.text+0x28ea>
1400038de: 83 f9 01                    	cmp	ecx, 1
1400038e1: 75 0d                       	jne	0x1400038f0 <.text+0x28f0>
1400038e3: 48 8d 0d 9e 44 01 00        	lea	rcx, [rip + 83102]      # 0x140017d88
1400038ea: e8 5d 07 00 00              	call	0x14000404c <.text+0x304c>
1400038ef: 90                          	nop
1400038f0: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400038f3: 83 38 00                    	cmp	dword ptr [rax], 0
1400038f6: 75 13                       	jne	0x14000390b <.text+0x290b>
1400038f8: 48 8d 15 d1 a9 00 00        	lea	rdx, [rip + 43473]      # 0x14000e2d0
1400038ff: 48 8d 0d aa a9 00 00        	lea	rcx, [rip + 43434]      # 0x14000e2b0
140003906: e8 99 fe ff ff              	call	0x1400037a4 <.text+0x27a4>
14000390b: 48 8d 15 ce a9 00 00        	lea	rdx, [rip + 43470]      # 0x14000e2e0
140003912: 48 8d 0d bf a9 00 00        	lea	rcx, [rip + 43455]      # 0x14000e2d8
140003919: e8 86 fe ff ff              	call	0x1400037a4 <.text+0x27a4>
14000391e: 48 8b 43 08                 	mov	rax, qword ptr [rbx + 8]
140003922: 83 38 00                    	cmp	dword ptr [rax], 0
140003925: 75 0e                       	jne	0x140003935 <.text+0x2935>
140003927: c6 05 fa 43 01 00 01        	mov	byte ptr [rip + 82938], 1 # 0x140017d28
14000392e: 48 8b 43 10                 	mov	rax, qword ptr [rbx + 16]
140003932: c6 00 01                    	mov	byte ptr [rax], 1
140003935: 48 83 c4 20                 	add	rsp, 32
140003939: 5b                          	pop	rbx
14000393a: c3                          	ret
14000393b: e8 30 09 00 00              	call	0x140004270 <.text+0x3270>
140003940: 90                          	nop
140003941: cc                          	int3
140003942: cc                          	int3
140003943: cc                          	int3
140003944: 33 c0                       	xor	eax, eax
140003946: 81 f9 63 73 6d e0           	cmp	ecx, 3765269347
14000394c: 0f 94 c0                    	sete	al
14000394f: c3                          	ret
140003950: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003955: 44 89 44 24 18              	mov	dword ptr [rsp + 24], r8d
14000395a: 89 54 24 10                 	mov	dword ptr [rsp + 16], edx
14000395e: 55                          	push	rbp
14000395f: 48 8b ec                    	mov	rbp, rsp
140003962: 48 83 ec 50                 	sub	rsp, 80
140003966: 8b d9                       	mov	ebx, ecx
140003968: 45 85 c0                    	test	r8d, r8d
14000396b: 75 4a                       	jne	0x1400039b7 <.text+0x29b7>
14000396d: 33 c9                       	xor	ecx, ecx
14000396f: ff 15 f3 a6 00 00           	call	qword ptr [rip + 42739] # 0x14000e068
140003975: 48 85 c0                    	test	rax, rax
140003978: 74 3d                       	je	0x1400039b7 <.text+0x29b7>
14000397a: b9 4d 5a 00 00              	mov	ecx, 23117
14000397f: 66 39 08                    	cmp	word ptr [rax], cx
140003982: 75 33                       	jne	0x1400039b7 <.text+0x29b7>
140003984: 48 63 48 3c                 	movsxd	rcx, dword ptr [rax + 60]
140003988: 48 03 c8                    	add	rcx, rax
14000398b: 81 39 50 45 00 00           	cmp	dword ptr [rcx], 17744
140003991: 75 24                       	jne	0x1400039b7 <.text+0x29b7>
140003993: b8 0b 02 00 00              	mov	eax, 523
140003998: 66 39 41 18                 	cmp	word ptr [rcx + 24], ax
14000399c: 75 19                       	jne	0x1400039b7 <.text+0x29b7>
14000399e: 83 b9 84 00 00 00 0e        	cmp	dword ptr [rcx + 132], 14
1400039a5: 76 10                       	jbe	0x1400039b7 <.text+0x29b7>
1400039a7: 83 b9 f8 00 00 00 00        	cmp	dword ptr [rcx + 248], 0
1400039ae: 74 07                       	je	0x1400039b7 <.text+0x29b7>
1400039b0: 8b cb                       	mov	ecx, ebx
1400039b2: e8 a1 00 00 00              	call	0x140003a58 <.text+0x2a58>
1400039b7: 48 8d 45 18                 	lea	rax, [rbp + 24]
1400039bb: c6 45 28 00                 	mov	byte ptr [rbp + 40], 0
1400039bf: 48 89 45 e0                 	mov	qword ptr [rbp - 32], rax
1400039c3: 4c 8d 4d d4                 	lea	r9, [rbp - 44]
1400039c7: 48 8d 45 20                 	lea	rax, [rbp + 32]
1400039cb: 48 89 45 e8                 	mov	qword ptr [rbp - 24], rax
1400039cf: 4c 8d 45 e0                 	lea	r8, [rbp - 32]
1400039d3: 48 8d 45 28                 	lea	rax, [rbp + 40]
1400039d7: 48 89 45 f0                 	mov	qword ptr [rbp - 16], rax
1400039db: 48 8d 55 d8                 	lea	rdx, [rbp - 40]
1400039df: b8 02 00 00 00              	mov	eax, 2
1400039e4: 48 8d 4d d0                 	lea	rcx, [rbp - 48]
1400039e8: 89 45 d4                    	mov	dword ptr [rbp - 44], eax
1400039eb: 89 45 d8                    	mov	dword ptr [rbp - 40], eax
1400039ee: e8 55 fe ff ff              	call	0x140003848 <.text+0x2848>
1400039f3: 83 7d 20 00                 	cmp	dword ptr [rbp + 32], 0
1400039f7: 74 0b                       	je	0x140003a04 <.text+0x2a04>
1400039f9: 48 8b 5c 24 60              	mov	rbx, qword ptr [rsp + 96]
1400039fe: 48 83 c4 50                 	add	rsp, 80
140003a02: 5d                          	pop	rbp
140003a03: c3                          	ret
140003a04: 8b cb                       	mov	ecx, ebx
140003a06: e8 01 00 00 00              	call	0x140003a0c <.text+0x2a0c>
140003a0b: cc                          	int3
140003a0c: 40 53                       	push	rbx
140003a0e: 48 83 ec 20                 	sub	rsp, 32
140003a12: 8b d9                       	mov	ebx, ecx
140003a14: e8 8b 32 00 00              	call	0x140006ca4 <.text+0x5ca4>
140003a19: 83 f8 01                    	cmp	eax, 1
140003a1c: 74 28                       	je	0x140003a46 <.text+0x2a46>
140003a1e: 65 48 8b 04 25 60 00 00 00  	mov	rax, qword ptr gs:[96]
140003a27: 8b 90 bc 00 00 00           	mov	edx, dword ptr [rax + 188]
140003a2d: c1 ea 08                    	shr	edx, 8
140003a30: f6 c2 01                    	test	dl, 1
140003a33: 75 11                       	jne	0x140003a46 <.text+0x2a46>
140003a35: ff 15 cd a6 00 00           	call	qword ptr [rip + 42701] # 0x14000e108
140003a3b: 48 8b c8                    	mov	rcx, rax
140003a3e: 8b d3                       	mov	edx, ebx
140003a40: ff 15 d2 a6 00 00           	call	qword ptr [rip + 42706] # 0x14000e118
140003a46: 8b cb                       	mov	ecx, ebx
140003a48: e8 0b 00 00 00              	call	0x140003a58 <.text+0x2a58>
140003a4d: 8b cb                       	mov	ecx, ebx
140003a4f: ff 15 bb a6 00 00           	call	qword ptr [rip + 42683] # 0x14000e110
140003a55: cc                          	int3
140003a56: cc                          	int3
140003a57: cc                          	int3
140003a58: 40 53                       	push	rbx
140003a5a: 48 83 ec 20                 	sub	rsp, 32
140003a5e: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
140003a64: 4c 8d 44 24 38              	lea	r8, [rsp + 56]
140003a69: 8b d9                       	mov	ebx, ecx
140003a6b: 48 8d 15 96 b8 00 00        	lea	rdx, [rip + 47254]      # 0x14000f308
140003a72: 33 c9                       	xor	ecx, ecx
140003a74: ff 15 a6 a6 00 00           	call	qword ptr [rip + 42662] # 0x14000e120
140003a7a: 85 c0                       	test	eax, eax
140003a7c: 74 1f                       	je	0x140003a9d <.text+0x2a9d>
140003a7e: 48 8b 4c 24 38              	mov	rcx, qword ptr [rsp + 56]
140003a83: 48 8d 15 96 b8 00 00        	lea	rdx, [rip + 47254]      # 0x14000f320
140003a8a: ff 15 48 a6 00 00           	call	qword ptr [rip + 42568] # 0x14000e0d8
140003a90: 48 85 c0                    	test	rax, rax
140003a93: 74 08                       	je	0x140003a9d <.text+0x2a9d>
140003a95: 8b cb                       	mov	ecx, ebx
140003a97: ff 15 93 a7 00 00           	call	qword ptr [rip + 42899] # 0x14000e230
140003a9d: 48 8b 4c 24 38              	mov	rcx, qword ptr [rsp + 56]
140003aa2: 48 85 c9                    	test	rcx, rcx
140003aa5: 74 06                       	je	0x140003aad <.text+0x2aad>
140003aa7: ff 15 23 a6 00 00           	call	qword ptr [rip + 42531] # 0x14000e0d0
140003aad: 48 83 c4 20                 	add	rsp, 32
140003ab1: 5b                          	pop	rbx
140003ab2: c3                          	ret
140003ab3: cc                          	int3
140003ab4: 48 89 0d 65 42 01 00        	mov	qword ptr [rip + 82533], rcx # 0x140017d20
140003abb: c3                          	ret
140003abc: ba 02 00 00 00              	mov	edx, 2
140003ac1: 33 c9                       	xor	ecx, ecx
140003ac3: 44 8d 42 ff                 	lea	r8d, [rdx - 1]
140003ac7: e9 84 fe ff ff              	jmp	0x140003950 <.text+0x2950>
140003acc: 33 d2                       	xor	edx, edx
140003ace: 33 c9                       	xor	ecx, ecx
140003ad0: 44 8d 42 01                 	lea	r8d, [rdx + 1]
140003ad4: e9 77 fe ff ff              	jmp	0x140003950 <.text+0x2950>
140003ad9: cc                          	int3
140003ada: cc                          	int3
140003adb: cc                          	int3
140003adc: 45 33 c0                    	xor	r8d, r8d
140003adf: 41 8d 50 02                 	lea	edx, [r8 + 2]
140003ae3: e9 68 fe ff ff              	jmp	0x140003950 <.text+0x2950>
140003ae8: 48 83 ec 28                 	sub	rsp, 40
140003aec: 4c 8b 05 35 35 01 00        	mov	r8, qword ptr [rip + 79157] # 0x140017028
140003af3: 48 8b d1                    	mov	rdx, rcx
140003af6: 41 8b c0                    	mov	eax, r8d
140003af9: b9 40 00 00 00              	mov	ecx, 64
140003afe: 83 e0 3f                    	and	eax, 63
140003b01: 2b c8                       	sub	ecx, eax
140003b03: 4c 39 05 16 42 01 00        	cmp	qword ptr [rip + 82454], r8 # 0x140017d20
140003b0a: 75 12                       	jne	0x140003b1e <.text+0x2b1e>
140003b0c: 48 d3 ca                    	ror	rdx, cl
140003b0f: 49 33 d0                    	xor	rdx, r8
140003b12: 48 89 15 07 42 01 00        	mov	qword ptr [rip + 82439], rdx # 0x140017d20
140003b19: 48 83 c4 28                 	add	rsp, 40
140003b1d: c3                          	ret
140003b1e: e8 4d 07 00 00              	call	0x140004270 <.text+0x3270>
140003b23: cc                          	int3
140003b24: 45 33 c0                    	xor	r8d, r8d
140003b27: 33 d2                       	xor	edx, edx
140003b29: e9 22 fe ff ff              	jmp	0x140003950 <.text+0x2950>
140003b2e: cc                          	int3
140003b2f: cc                          	int3
140003b30: 48 83 ec 28                 	sub	rsp, 40
140003b34: 8d 81 00 c0 ff ff           	lea	eax, [rcx - 16384]
140003b3a: a9 ff 3f ff ff              	test	eax, 4294918143
140003b3f: 75 12                       	jne	0x140003b53 <.text+0x2b53>
140003b41: 81 f9 00 c0 00 00           	cmp	ecx, 49152
140003b47: 74 0a                       	je	0x140003b53 <.text+0x2b53>
140003b49: 87 0d b5 44 01 00           	xchg	dword ptr [rip + 83125], ecx # 0x140018004
140003b4f: 33 c0                       	xor	eax, eax
140003b51: eb 15                       	jmp	0x140003b68 <.text+0x2b68>
140003b53: e8 b8 12 00 00              	call	0x140004e10 <.text+0x3e10>
140003b58: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140003b5e: e8 8d 11 00 00              	call	0x140004cf0 <.text+0x3cf0>
140003b63: b8 16 00 00 00              	mov	eax, 22
140003b68: 48 83 c4 28                 	add	rsp, 40
140003b6c: c3                          	ret
140003b6d: cc                          	int3
140003b6e: cc                          	int3
140003b6f: cc                          	int3
140003b70: 48 83 ec 28                 	sub	rsp, 40
140003b74: ff 15 ae a5 00 00           	call	qword ptr [rip + 42414] # 0x14000e128
140003b7a: 48 89 05 cf 41 01 00        	mov	qword ptr [rip + 82383], rax # 0x140017d50
140003b81: ff 15 a9 a5 00 00           	call	qword ptr [rip + 42409] # 0x14000e130
140003b87: 48 89 05 ca 41 01 00        	mov	qword ptr [rip + 82378], rax # 0x140017d58
140003b8e: b0 01                       	mov	al, 1
140003b90: 48 83 c4 28                 	add	rsp, 40
140003b94: c3                          	ret
140003b95: cc                          	int3
140003b96: cc                          	int3
140003b97: cc                          	int3
140003b98: 48 8d 05 99 41 01 00        	lea	rax, [rip + 82329]      # 0x140017d38
140003b9f: c3                          	ret
140003ba0: 48 8d 05 99 41 01 00        	lea	rax, [rip + 82329]      # 0x140017d40
140003ba7: c3                          	ret
140003ba8: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003bad: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
140003bb2: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140003bb7: 57                          	push	rdi
140003bb8: 48 83 ec 30                 	sub	rsp, 48
140003bbc: 49 8b f9                    	mov	rdi, r9
140003bbf: 8b 0a                       	mov	ecx, dword ptr [rdx]
140003bc1: e8 6e 30 00 00              	call	0x140006c34 <.text+0x5c34>
140003bc6: 90                          	nop
140003bc7: 48 8d 1d 4a 48 01 00        	lea	rbx, [rip + 84042]      # 0x140018418
140003bce: 48 8d 35 cb 39 01 00        	lea	rsi, [rip + 80331]      # 0x1400175a0
140003bd5: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140003bda: 48 8d 05 3f 48 01 00        	lea	rax, [rip + 84031]      # 0x140018420
140003be1: 48 3b d8                    	cmp	rbx, rax
140003be4: 74 19                       	je	0x140003bff <.text+0x2bff>
140003be6: 48 39 33                    	cmp	qword ptr [rbx], rsi
140003be9: 74 0e                       	je	0x140003bf9 <.text+0x2bf9>
140003beb: 48 8b d6                    	mov	rdx, rsi
140003bee: 48 8b cb                    	mov	rcx, rbx
140003bf1: e8 3e 3f 00 00              	call	0x140007b34 <.text+0x6b34>
140003bf6: 48 89 03                    	mov	qword ptr [rbx], rax
140003bf9: 48 83 c3 08                 	add	rbx, 8
140003bfd: eb d6                       	jmp	0x140003bd5 <.text+0x2bd5>
140003bff: 8b 0f                       	mov	ecx, dword ptr [rdi]
140003c01: e8 82 30 00 00              	call	0x140006c88 <.text+0x5c88>
140003c06: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140003c0b: 48 8b 74 24 48              	mov	rsi, qword ptr [rsp + 72]
140003c10: 48 83 c4 30                 	add	rsp, 48
140003c14: 5f                          	pop	rdi
140003c15: c3                          	ret
140003c16: cc                          	int3
140003c17: cc                          	int3
140003c18: b8 01 00 00 00              	mov	eax, 1
140003c1d: 87 05 3d 41 01 00           	xchg	dword ptr [rip + 82237], eax # 0x140017d60
140003c23: c3                          	ret
140003c24: 4c 8b dc                    	mov	r11, rsp
140003c27: 48 83 ec 28                 	sub	rsp, 40
140003c2b: b8 04 00 00 00              	mov	eax, 4
140003c30: 4d 8d 4b 10                 	lea	r9, [r11 + 16]
140003c34: 4d 8d 43 08                 	lea	r8, [r11 + 8]
140003c38: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
140003c3c: 49 8d 53 18                 	lea	rdx, [r11 + 24]
140003c40: 89 44 24 40                 	mov	dword ptr [rsp + 64], eax
140003c44: 49 8d 4b 08                 	lea	rcx, [r11 + 8]
140003c48: e8 5b ff ff ff              	call	0x140003ba8 <.text+0x2ba8>
140003c4d: 48 83 c4 28                 	add	rsp, 40
140003c51: c3                          	ret
140003c52: cc                          	int3
140003c53: cc                          	int3
140003c54: 40 53                       	push	rbx
140003c56: 48 83 ec 20                 	sub	rsp, 32
140003c5a: 8b d9                       	mov	ebx, ecx
140003c5c: e8 d3 0b 00 00              	call	0x140004834 <.text+0x3834>
140003c61: 44 8b 80 a8 03 00 00        	mov	r8d, dword ptr [rax + 936]
140003c68: 41 8b d0                    	mov	edx, r8d
140003c6b: 80 e2 02                    	and	dl, 2
140003c6e: f6 da                       	neg	dl
140003c70: 1b c9                       	sbb	ecx, ecx
140003c72: 83 fb ff                    	cmp	ebx, -1
140003c75: 74 36                       	je	0x140003cad <.text+0x2cad>
140003c77: 85 db                       	test	ebx, ebx
140003c79: 74 39                       	je	0x140003cb4 <.text+0x2cb4>
140003c7b: 83 fb 01                    	cmp	ebx, 1
140003c7e: 74 20                       	je	0x140003ca0 <.text+0x2ca0>
140003c80: 83 fb 02                    	cmp	ebx, 2
140003c83: 74 15                       	je	0x140003c9a <.text+0x2c9a>
140003c85: e8 86 11 00 00              	call	0x140004e10 <.text+0x3e10>
140003c8a: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140003c90: e8 5b 10 00 00              	call	0x140004cf0 <.text+0x3cf0>
140003c95: 83 c8 ff                    	or	eax, -1
140003c98: eb 1d                       	jmp	0x140003cb7 <.text+0x2cb7>
140003c9a: 41 83 e0 fd                 	and	r8d, -3
140003c9e: eb 04                       	jmp	0x140003ca4 <.text+0x2ca4>
140003ca0: 41 83 c8 02                 	or	r8d, 2
140003ca4: 44 89 80 a8 03 00 00        	mov	dword ptr [rax + 936], r8d
140003cab: eb 07                       	jmp	0x140003cb4 <.text+0x2cb4>
140003cad: 83 0d fc 3a 01 00 ff        	or	dword ptr [rip + 80636], -1 # 0x1400177b0
140003cb4: 8d 41 02                    	lea	eax, [rcx + 2]
140003cb7: 48 83 c4 20                 	add	rsp, 32
140003cbb: 5b                          	pop	rbx
140003cbc: c3                          	ret
140003cbd: cc                          	int3
140003cbe: cc                          	int3
140003cbf: cc                          	int3
140003cc0: 8b 05 9e 40 01 00           	mov	eax, dword ptr [rip + 82078] # 0x140017d64
140003cc6: c3                          	ret
140003cc7: cc                          	int3
140003cc8: 48 83 ec 28                 	sub	rsp, 40
140003ccc: 83 f9 01                    	cmp	ecx, 1
140003ccf: 76 15                       	jbe	0x140003ce6 <.text+0x2ce6>
140003cd1: e8 3a 11 00 00              	call	0x140004e10 <.text+0x3e10>
140003cd6: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140003cdc: e8 0f 10 00 00              	call	0x140004cf0 <.text+0x3cf0>
140003ce1: 83 c8 ff                    	or	eax, -1
140003ce4: eb 08                       	jmp	0x140003cee <.text+0x2cee>
140003ce6: 87 0d 78 40 01 00           	xchg	dword ptr [rip + 82040], ecx # 0x140017d64
140003cec: 8b c1                       	mov	eax, ecx
140003cee: 48 83 c4 28                 	add	rsp, 40
140003cf2: c3                          	ret
140003cf3: cc                          	int3
140003cf4: 48 8d 05 6d 40 01 00        	lea	rax, [rip + 82029]      # 0x140017d68
140003cfb: c3                          	ret
140003cfc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003d01: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140003d06: 57                          	push	rdi
140003d07: 48 83 ec 20                 	sub	rsp, 32
140003d0b: 49 8b d9                    	mov	rbx, r9
140003d0e: 49 8b f8                    	mov	rdi, r8
140003d11: 8b 0a                       	mov	ecx, dword ptr [rdx]
140003d13: e8 1c 2f 00 00              	call	0x140006c34 <.text+0x5c34>
140003d18: 90                          	nop
140003d19: 48 8b cf                    	mov	rcx, rdi
140003d1c: e8 53 00 00 00              	call	0x140003d74 <.text+0x2d74>
140003d21: 8b f8                       	mov	edi, eax
140003d23: 8b 0b                       	mov	ecx, dword ptr [rbx]
140003d25: e8 5e 2f 00 00              	call	0x140006c88 <.text+0x5c88>
140003d2a: 8b c7                       	mov	eax, edi
140003d2c: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140003d31: 48 83 c4 20                 	add	rsp, 32
140003d35: 5f                          	pop	rdi
140003d36: c3                          	ret
140003d37: cc                          	int3
140003d38: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003d3d: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140003d42: 57                          	push	rdi
140003d43: 48 83 ec 20                 	sub	rsp, 32
140003d47: 49 8b d9                    	mov	rbx, r9
140003d4a: 49 8b f8                    	mov	rdi, r8
140003d4d: 8b 0a                       	mov	ecx, dword ptr [rdx]
140003d4f: e8 e0 2e 00 00              	call	0x140006c34 <.text+0x5c34>
140003d54: 90                          	nop
140003d55: 48 8b cf                    	mov	rcx, rdi
140003d58: e8 c7 01 00 00              	call	0x140003f24 <.text+0x2f24>
140003d5d: 8b f8                       	mov	edi, eax
140003d5f: 8b 0b                       	mov	ecx, dword ptr [rbx]
140003d61: e8 22 2f 00 00              	call	0x140006c88 <.text+0x5c88>
140003d66: 8b c7                       	mov	eax, edi
140003d68: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140003d6d: 48 83 c4 20                 	add	rsp, 32
140003d71: 5f                          	pop	rdi
140003d72: c3                          	ret
140003d73: cc                          	int3
140003d74: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
140003d79: 48 89 6c 24 18              	mov	qword ptr [rsp + 24], rbp
140003d7e: 48 89 74 24 20              	mov	qword ptr [rsp + 32], rsi
140003d83: 57                          	push	rdi
140003d84: 41 56                       	push	r14
140003d86: 41 57                       	push	r15
140003d88: 48 83 ec 20                 	sub	rsp, 32
140003d8c: 48 8b 01                    	mov	rax, qword ptr [rcx]
140003d8f: 33 ed                       	xor	ebp, ebp
140003d91: 4c 8b f9                    	mov	r15, rcx
140003d94: 48 8b 18                    	mov	rbx, qword ptr [rax]
140003d97: 48 85 db                    	test	rbx, rbx
140003d9a: 0f 84 68 01 00 00           	je	0x140003f08 <.text+0x2f08>
140003da0: 4c 8b 15 81 32 01 00        	mov	r10, qword ptr [rip + 78465] # 0x140017028
140003da7: 4c 8b 4b 08                 	mov	r9, qword ptr [rbx + 8]
140003dab: 49 8b f2                    	mov	rsi, r10
140003dae: 48 33 33                    	xor	rsi, qword ptr [rbx]
140003db1: 4d 33 ca                    	xor	r9, r10
140003db4: 48 8b 5b 10                 	mov	rbx, qword ptr [rbx + 16]
140003db8: 41 8b ca                    	mov	ecx, r10d
140003dbb: 83 e1 3f                    	and	ecx, 63
140003dbe: 49 33 da                    	xor	rbx, r10
140003dc1: 48 d3 cb                    	ror	rbx, cl
140003dc4: 48 d3 ce                    	ror	rsi, cl
140003dc7: 49 d3 c9                    	ror	r9, cl
140003dca: 4c 3b cb                    	cmp	r9, rbx
140003dcd: 0f 85 a7 00 00 00           	jne	0x140003e7a <.text+0x2e7a>
140003dd3: 48 2b de                    	sub	rbx, rsi
140003dd6: b8 00 02 00 00              	mov	eax, 512
140003ddb: 48 c1 fb 03                 	sar	rbx, 3
140003ddf: 48 3b d8                    	cmp	rbx, rax
140003de2: 48 8b fb                    	mov	rdi, rbx
140003de5: 48 0f 47 f8                 	cmova	rdi, rax
140003de9: 8d 45 20                    	lea	eax, [rbp + 32]
140003dec: 48 03 fb                    	add	rdi, rbx
140003def: 48 0f 44 f8                 	cmove	rdi, rax
140003df3: 48 3b fb                    	cmp	rdi, rbx
140003df6: 72 1e                       	jb	0x140003e16 <.text+0x2e16>
140003df8: 44 8d 45 08                 	lea	r8d, [rbp + 8]
140003dfc: 48 8b d7                    	mov	rdx, rdi
140003dff: 48 8b ce                    	mov	rcx, rsi
140003e02: e8 09 44 00 00              	call	0x140008210 <.text+0x7210>
140003e07: 33 c9                       	xor	ecx, ecx
140003e09: 4c 8b f0                    	mov	r14, rax
140003e0c: e8 97 10 00 00              	call	0x140004ea8 <.text+0x3ea8>
140003e11: 4d 85 f6                    	test	r14, r14
140003e14: 75 28                       	jne	0x140003e3e <.text+0x2e3e>
140003e16: 48 8d 7b 04                 	lea	rdi, [rbx + 4]
140003e1a: 41 b8 08 00 00 00           	mov	r8d, 8
140003e20: 48 8b d7                    	mov	rdx, rdi
140003e23: 48 8b ce                    	mov	rcx, rsi
140003e26: e8 e5 43 00 00              	call	0x140008210 <.text+0x7210>
140003e2b: 33 c9                       	xor	ecx, ecx
140003e2d: 4c 8b f0                    	mov	r14, rax
140003e30: e8 73 10 00 00              	call	0x140004ea8 <.text+0x3ea8>
140003e35: 4d 85 f6                    	test	r14, r14
140003e38: 0f 84 ca 00 00 00           	je	0x140003f08 <.text+0x2f08>
140003e3e: 4c 8b 15 e3 31 01 00        	mov	r10, qword ptr [rip + 78307] # 0x140017028
140003e45: 4d 8d 0c de                 	lea	r9, [r14 + 8*rbx]
140003e49: 49 8d 1c fe                 	lea	rbx, [r14 + 8*rdi]
140003e4d: 49 8b f6                    	mov	rsi, r14
140003e50: 48 8b cb                    	mov	rcx, rbx
140003e53: 49 2b c9                    	sub	rcx, r9
140003e56: 48 83 c1 07                 	add	rcx, 7
140003e5a: 48 c1 e9 03                 	shr	rcx, 3
140003e5e: 4c 3b cb                    	cmp	r9, rbx
140003e61: 48 0f 47 cd                 	cmova	rcx, rbp
140003e65: 48 85 c9                    	test	rcx, rcx
140003e68: 74 10                       	je	0x140003e7a <.text+0x2e7a>
140003e6a: 49 8b c2                    	mov	rax, r10
140003e6d: 49 8b f9                    	mov	rdi, r9
140003e70: f3 48 ab                    	rep		stosq	qword ptr es:[rdi], rax
140003e73: 4c 8b 15 ae 31 01 00        	mov	r10, qword ptr [rip + 78254] # 0x140017028
140003e7a: 41 b8 40 00 00 00           	mov	r8d, 64
140003e80: 49 8d 79 08                 	lea	rdi, [r9 + 8]
140003e84: 41 8b c8                    	mov	ecx, r8d
140003e87: 41 8b c2                    	mov	eax, r10d
140003e8a: 83 e0 3f                    	and	eax, 63
140003e8d: 2b c8                       	sub	ecx, eax
140003e8f: 49 8b 47 08                 	mov	rax, qword ptr [r15 + 8]
140003e93: 48 8b 10                    	mov	rdx, qword ptr [rax]
140003e96: 41 8b c0                    	mov	eax, r8d
140003e99: 48 d3 ca                    	ror	rdx, cl
140003e9c: 49 33 d2                    	xor	rdx, r10
140003e9f: 49 89 11                    	mov	qword ptr [r9], rdx
140003ea2: 48 8b 15 7f 31 01 00        	mov	rdx, qword ptr [rip + 78207] # 0x140017028
140003ea9: 8b ca                       	mov	ecx, edx
140003eab: 83 e1 3f                    	and	ecx, 63
140003eae: 2b c1                       	sub	eax, ecx
140003eb0: 8a c8                       	mov	cl, al
140003eb2: 49 8b 07                    	mov	rax, qword ptr [r15]
140003eb5: 48 d3 ce                    	ror	rsi, cl
140003eb8: 48 33 f2                    	xor	rsi, rdx
140003ebb: 48 8b 08                    	mov	rcx, qword ptr [rax]
140003ebe: 48 89 31                    	mov	qword ptr [rcx], rsi
140003ec1: 41 8b c8                    	mov	ecx, r8d
140003ec4: 48 8b 15 5d 31 01 00        	mov	rdx, qword ptr [rip + 78173] # 0x140017028
140003ecb: 8b c2                       	mov	eax, edx
140003ecd: 83 e0 3f                    	and	eax, 63
140003ed0: 2b c8                       	sub	ecx, eax
140003ed2: 49 8b 07                    	mov	rax, qword ptr [r15]
140003ed5: 48 d3 cf                    	ror	rdi, cl
140003ed8: 48 33 fa                    	xor	rdi, rdx
140003edb: 48 8b 10                    	mov	rdx, qword ptr [rax]
140003ede: 48 89 7a 08                 	mov	qword ptr [rdx + 8], rdi
140003ee2: 48 8b 15 3f 31 01 00        	mov	rdx, qword ptr [rip + 78143] # 0x140017028
140003ee9: 8b c2                       	mov	eax, edx
140003eeb: 83 e0 3f                    	and	eax, 63
140003eee: 44 2b c0                    	sub	r8d, eax
140003ef1: 49 8b 07                    	mov	rax, qword ptr [r15]
140003ef4: 41 8a c8                    	mov	cl, r8b
140003ef7: 48 d3 cb                    	ror	rbx, cl
140003efa: 48 33 da                    	xor	rbx, rdx
140003efd: 48 8b 08                    	mov	rcx, qword ptr [rax]
140003f00: 33 c0                       	xor	eax, eax
140003f02: 48 89 59 10                 	mov	qword ptr [rcx + 16], rbx
140003f06: eb 03                       	jmp	0x140003f0b <.text+0x2f0b>
140003f08: 83 c8 ff                    	or	eax, -1
140003f0b: 48 8b 5c 24 48              	mov	rbx, qword ptr [rsp + 72]
140003f10: 48 8b 6c 24 50              	mov	rbp, qword ptr [rsp + 80]
140003f15: 48 8b 74 24 58              	mov	rsi, qword ptr [rsp + 88]
140003f1a: 48 83 c4 20                 	add	rsp, 32
140003f1e: 41 5f                       	pop	r15
140003f20: 41 5e                       	pop	r14
140003f22: 5f                          	pop	rdi
140003f23: c3                          	ret
140003f24: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003f29: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140003f2e: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140003f33: 57                          	push	rdi
140003f34: 41 56                       	push	r14
140003f36: 41 57                       	push	r15
140003f38: 48 83 ec 20                 	sub	rsp, 32
140003f3c: 48 8b 01                    	mov	rax, qword ptr [rcx]
140003f3f: 48 8b f1                    	mov	rsi, rcx
140003f42: 48 8b 18                    	mov	rbx, qword ptr [rax]
140003f45: 48 85 db                    	test	rbx, rbx
140003f48: 75 08                       	jne	0x140003f52 <.text+0x2f52>
140003f4a: 83 c8 ff                    	or	eax, -1
140003f4d: e9 cf 00 00 00              	jmp	0x140004021 <.text+0x3021>
140003f52: 4c 8b 05 cf 30 01 00        	mov	r8, qword ptr [rip + 78031] # 0x140017028
140003f59: 41 8b c8                    	mov	ecx, r8d
140003f5c: 49 8b f8                    	mov	rdi, r8
140003f5f: 48 33 3b                    	xor	rdi, qword ptr [rbx]
140003f62: 83 e1 3f                    	and	ecx, 63
140003f65: 48 8b 5b 08                 	mov	rbx, qword ptr [rbx + 8]
140003f69: 48 d3 cf                    	ror	rdi, cl
140003f6c: 49 33 d8                    	xor	rbx, r8
140003f6f: 48 d3 cb                    	ror	rbx, cl
140003f72: 48 8d 47 ff                 	lea	rax, [rdi - 1]
140003f76: 48 83 f8 fd                 	cmp	rax, -3
140003f7a: 0f 87 9f 00 00 00           	ja	0x14000401f <.text+0x301f>
140003f80: 41 8b c8                    	mov	ecx, r8d
140003f83: 4d 8b f0                    	mov	r14, r8
140003f86: 83 e1 3f                    	and	ecx, 63
140003f89: 4c 8b ff                    	mov	r15, rdi
140003f8c: 48 8b eb                    	mov	rbp, rbx
140003f8f: 48 83 eb 08                 	sub	rbx, 8
140003f93: 48 3b df                    	cmp	rbx, rdi
140003f96: 72 55                       	jb	0x140003fed <.text+0x2fed>
140003f98: 48 8b 03                    	mov	rax, qword ptr [rbx]
140003f9b: 49 3b c6                    	cmp	rax, r14
140003f9e: 74 ef                       	je	0x140003f8f <.text+0x2f8f>
140003fa0: 49 33 c0                    	xor	rax, r8
140003fa3: 4c 89 33                    	mov	qword ptr [rbx], r14
140003fa6: 48 d3 c8                    	ror	rax, cl
140003fa9: ff 15 81 a2 00 00           	call	qword ptr [rip + 41601] # 0x14000e230
140003faf: 4c 8b 05 72 30 01 00        	mov	r8, qword ptr [rip + 77938] # 0x140017028
140003fb6: 48 8b 06                    	mov	rax, qword ptr [rsi]
140003fb9: 41 8b c8                    	mov	ecx, r8d
140003fbc: 83 e1 3f                    	and	ecx, 63
140003fbf: 48 8b 10                    	mov	rdx, qword ptr [rax]
140003fc2: 4c 8b 0a                    	mov	r9, qword ptr [rdx]
140003fc5: 48 8b 42 08                 	mov	rax, qword ptr [rdx + 8]
140003fc9: 4d 33 c8                    	xor	r9, r8
140003fcc: 49 33 c0                    	xor	rax, r8
140003fcf: 49 d3 c9                    	ror	r9, cl
140003fd2: 48 d3 c8                    	ror	rax, cl
140003fd5: 4d 3b cf                    	cmp	r9, r15
140003fd8: 75 05                       	jne	0x140003fdf <.text+0x2fdf>
140003fda: 48 3b c5                    	cmp	rax, rbp
140003fdd: 74 b0                       	je	0x140003f8f <.text+0x2f8f>
140003fdf: 4d 8b f9                    	mov	r15, r9
140003fe2: 49 8b f9                    	mov	rdi, r9
140003fe5: 48 8b e8                    	mov	rbp, rax
140003fe8: 48 8b d8                    	mov	rbx, rax
140003feb: eb a2                       	jmp	0x140003f8f <.text+0x2f8f>
140003fed: 48 83 ff ff                 	cmp	rdi, -1
140003ff1: 74 0f                       	je	0x140004002 <.text+0x3002>
140003ff3: 48 8b cf                    	mov	rcx, rdi
140003ff6: e8 ad 0e 00 00              	call	0x140004ea8 <.text+0x3ea8>
140003ffb: 4c 8b 05 26 30 01 00        	mov	r8, qword ptr [rip + 77862] # 0x140017028
140004002: 48 8b 06                    	mov	rax, qword ptr [rsi]
140004005: 48 8b 08                    	mov	rcx, qword ptr [rax]
140004008: 4c 89 01                    	mov	qword ptr [rcx], r8
14000400b: 48 8b 06                    	mov	rax, qword ptr [rsi]
14000400e: 48 8b 08                    	mov	rcx, qword ptr [rax]
140004011: 4c 89 41 08                 	mov	qword ptr [rcx + 8], r8
140004015: 48 8b 06                    	mov	rax, qword ptr [rsi]
140004018: 48 8b 08                    	mov	rcx, qword ptr [rax]
14000401b: 4c 89 41 10                 	mov	qword ptr [rcx + 16], r8
14000401f: 33 c0                       	xor	eax, eax
140004021: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140004026: 48 8b 6c 24 48              	mov	rbp, qword ptr [rsp + 72]
14000402b: 48 8b 74 24 50              	mov	rsi, qword ptr [rsp + 80]
140004030: 48 83 c4 20                 	add	rsp, 32
140004034: 41 5f                       	pop	r15
140004036: 41 5e                       	pop	r14
140004038: 5f                          	pop	rdi
140004039: c3                          	ret
14000403a: cc                          	int3
14000403b: cc                          	int3
14000403c: 48 8b d1                    	mov	rdx, rcx
14000403f: 48 8d 0d 2a 3d 01 00        	lea	rcx, [rip + 81194]      # 0x140017d70
140004046: e9 65 00 00 00              	jmp	0x1400040b0 <.text+0x30b0>
14000404b: cc                          	int3
14000404c: 4c 8b dc                    	mov	r11, rsp
14000404f: 49 89 4b 08                 	mov	qword ptr [r11 + 8], rcx
140004053: 48 83 ec 38                 	sub	rsp, 56
140004057: 49 8d 43 08                 	lea	rax, [r11 + 8]
14000405b: 49 89 43 e8                 	mov	qword ptr [r11 - 24], rax
14000405f: 4d 8d 4b 18                 	lea	r9, [r11 + 24]
140004063: b8 02 00 00 00              	mov	eax, 2
140004068: 4d 8d 43 e8                 	lea	r8, [r11 - 24]
14000406c: 49 8d 53 20                 	lea	rdx, [r11 + 32]
140004070: 89 44 24 50                 	mov	dword ptr [rsp + 80], eax
140004074: 49 8d 4b 10                 	lea	rcx, [r11 + 16]
140004078: 89 44 24 58                 	mov	dword ptr [rsp + 88], eax
14000407c: e8 b7 fc ff ff              	call	0x140003d38 <.text+0x2d38>
140004081: 48 83 c4 38                 	add	rsp, 56
140004085: c3                          	ret
140004086: cc                          	int3
140004087: cc                          	int3
140004088: 48 85 c9                    	test	rcx, rcx
14000408b: 75 04                       	jne	0x140004091 <.text+0x3091>
14000408d: 83 c8 ff                    	or	eax, -1
140004090: c3                          	ret
140004091: 48 8b 41 10                 	mov	rax, qword ptr [rcx + 16]
140004095: 48 39 01                    	cmp	qword ptr [rcx], rax
140004098: 75 12                       	jne	0x1400040ac <.text+0x30ac>
14000409a: 48 8b 05 87 2f 01 00        	mov	rax, qword ptr [rip + 77703] # 0x140017028
1400040a1: 48 89 01                    	mov	qword ptr [rcx], rax
1400040a4: 48 89 41 08                 	mov	qword ptr [rcx + 8], rax
1400040a8: 48 89 41 10                 	mov	qword ptr [rcx + 16], rax
1400040ac: 33 c0                       	xor	eax, eax
1400040ae: c3                          	ret
1400040af: cc                          	int3
1400040b0: 48 89 54 24 10              	mov	qword ptr [rsp + 16], rdx
1400040b5: 48 89 4c 24 08              	mov	qword ptr [rsp + 8], rcx
1400040ba: 55                          	push	rbp
1400040bb: 48 8b ec                    	mov	rbp, rsp
1400040be: 48 83 ec 40                 	sub	rsp, 64
1400040c2: 48 8d 45 10                 	lea	rax, [rbp + 16]
1400040c6: 48 89 45 e8                 	mov	qword ptr [rbp - 24], rax
1400040ca: 4c 8d 4d 28                 	lea	r9, [rbp + 40]
1400040ce: 48 8d 45 18                 	lea	rax, [rbp + 24]
1400040d2: 48 89 45 f0                 	mov	qword ptr [rbp - 16], rax
1400040d6: 4c 8d 45 e8                 	lea	r8, [rbp - 24]
1400040da: b8 02 00 00 00              	mov	eax, 2
1400040df: 48 8d 55 e0                 	lea	rdx, [rbp - 32]
1400040e3: 48 8d 4d 20                 	lea	rcx, [rbp + 32]
1400040e7: 89 45 28                    	mov	dword ptr [rbp + 40], eax
1400040ea: 89 45 e0                    	mov	dword ptr [rbp - 32], eax
1400040ed: e8 0a fc ff ff              	call	0x140003cfc <.text+0x2cfc>
1400040f2: 48 83 c4 40                 	add	rsp, 64
1400040f6: 5d                          	pop	rbp
1400040f7: c3                          	ret
1400040f8: 48 8d 05 a1 34 01 00        	lea	rax, [rip + 79009]      # 0x1400175a0
1400040ff: 48 89 05 12 43 01 00        	mov	qword ptr [rip + 82706], rax # 0x140018418
140004106: b0 01                       	mov	al, 1
140004108: c3                          	ret
140004109: cc                          	int3
14000410a: cc                          	int3
14000410b: cc                          	int3
14000410c: 48 83 ec 28                 	sub	rsp, 40
140004110: 48 8d 0d 59 3c 01 00        	lea	rcx, [rip + 80985]      # 0x140017d70
140004117: e8 6c ff ff ff              	call	0x140004088 <.text+0x3088>
14000411c: 48 8d 0d 65 3c 01 00        	lea	rcx, [rip + 80997]      # 0x140017d88
140004123: e8 60 ff ff ff              	call	0x140004088 <.text+0x3088>
140004128: b0 01                       	mov	al, 1
14000412a: 48 83 c4 28                 	add	rsp, 40
14000412e: c3                          	ret
14000412f: cc                          	int3
140004130: 48 83 ec 28                 	sub	rsp, 40
140004134: e8 db f5 ff ff              	call	0x140003714 <.text+0x2714>
140004139: b0 01                       	mov	al, 1
14000413b: 48 83 c4 28                 	add	rsp, 40
14000413f: c3                          	ret
140004140: 40 53                       	push	rbx
140004142: 48 83 ec 20                 	sub	rsp, 32
140004146: 48 8b 1d db 2e 01 00        	mov	rbx, qword ptr [rip + 77531] # 0x140017028
14000414d: 48 8b cb                    	mov	rcx, rbx
140004150: e8 e3 0a 00 00              	call	0x140004c38 <.text+0x3c38>
140004155: 48 8b cb                    	mov	rcx, rbx
140004158: e8 2f 42 00 00              	call	0x14000838c <.text+0x738c>
14000415d: 48 8b cb                    	mov	rcx, rbx
140004160: e8 0b 43 00 00              	call	0x140008470 <.text+0x7470>
140004165: 48 8b cb                    	mov	rcx, rbx
140004168: e8 9f ee ff ff              	call	0x14000300c <.text+0x200c>
14000416d: 48 8b cb                    	mov	rcx, rbx
140004170: e8 3f f9 ff ff              	call	0x140003ab4 <.text+0x2ab4>
140004175: b0 01                       	mov	al, 1
140004177: 48 83 c4 20                 	add	rsp, 32
14000417b: 5b                          	pop	rbx
14000417c: c3                          	ret
14000417d: cc                          	int3
14000417e: cc                          	int3
14000417f: cc                          	int3
140004180: 33 c9                       	xor	ecx, ecx
140004182: e9 49 db ff ff              	jmp	0x140001cd0 <.text+0xcd0>
140004187: cc                          	int3
140004188: 40 53                       	push	rbx
14000418a: 48 83 ec 20                 	sub	rsp, 32
14000418e: 48 8b 0d 23 3c 01 00        	mov	rcx, qword ptr [rip + 80931] # 0x140017db8
140004195: 83 c8 ff                    	or	eax, -1
140004198: f0                          	lock
140004199: 0f c1 01                    	xadd	dword ptr [rcx], eax
14000419c: 83 f8 01                    	cmp	eax, 1
14000419f: 75 1f                       	jne	0x1400041c0 <.text+0x31c0>
1400041a1: 48 8b 0d 10 3c 01 00        	mov	rcx, qword ptr [rip + 80912] # 0x140017db8
1400041a8: 48 8d 1d b1 2e 01 00        	lea	rbx, [rip + 77489]      # 0x140017060
1400041af: 48 3b cb                    	cmp	rcx, rbx
1400041b2: 74 0c                       	je	0x1400041c0 <.text+0x31c0>
1400041b4: e8 ef 0c 00 00              	call	0x140004ea8 <.text+0x3ea8>
1400041b9: 48 89 1d f8 3b 01 00        	mov	qword ptr [rip + 80888], rbx # 0x140017db8
1400041c0: b0 01                       	mov	al, 1
1400041c2: 48 83 c4 20                 	add	rsp, 32
1400041c6: 5b                          	pop	rbx
1400041c7: c3                          	ret
1400041c8: 48 83 ec 28                 	sub	rsp, 40
1400041cc: 48 8b 0d 45 44 01 00        	mov	rcx, qword ptr [rip + 83013] # 0x140018618
1400041d3: e8 d0 0c 00 00              	call	0x140004ea8 <.text+0x3ea8>
1400041d8: 48 8b 0d 41 44 01 00        	mov	rcx, qword ptr [rip + 83009] # 0x140018620
1400041df: 48 83 25 31 44 01 00 00     	and	qword ptr [rip + 82993], 0 # 0x140018618
1400041e7: e8 bc 0c 00 00              	call	0x140004ea8 <.text+0x3ea8>
1400041ec: 48 8b 0d 4d 3b 01 00        	mov	rcx, qword ptr [rip + 80717] # 0x140017d40
1400041f3: 48 83 25 25 44 01 00 00     	and	qword ptr [rip + 82981], 0 # 0x140018620
1400041fb: e8 a8 0c 00 00              	call	0x140004ea8 <.text+0x3ea8>
140004200: 48 8b 0d 41 3b 01 00        	mov	rcx, qword ptr [rip + 80705] # 0x140017d48
140004207: 48 83 25 31 3b 01 00 00     	and	qword ptr [rip + 80689], 0 # 0x140017d40
14000420f: e8 94 0c 00 00              	call	0x140004ea8 <.text+0x3ea8>
140004214: 48 83 25 2c 3b 01 00 00     	and	qword ptr [rip + 80684], 0 # 0x140017d48
14000421c: b0 01                       	mov	al, 1
14000421e: 48 83 c4 28                 	add	rsp, 40
140004222: c3                          	ret
140004223: cc                          	int3
140004224: 48 8d 15 05 b2 00 00        	lea	rdx, [rip + 45573]      # 0x14000f430
14000422b: 48 8d 0d fe b0 00 00        	lea	rcx, [rip + 45310]      # 0x14000f330
140004232: e9 99 40 00 00              	jmp	0x1400082d0 <.text+0x72d0>
140004237: cc                          	int3
140004238: 48 83 ec 28                 	sub	rsp, 40
14000423c: 84 c9                       	test	cl, cl
14000423e: 74 16                       	je	0x140004256 <.text+0x3256>
140004240: 48 83 3d c8 43 01 00 00     	cmp	qword ptr [rip + 82888], 0 # 0x140018610
140004248: 74 05                       	je	0x14000424f <.text+0x324f>
14000424a: e8 51 47 00 00              	call	0x1400089a0 <.text+0x79a0>
14000424f: b0 01                       	mov	al, 1
140004251: 48 83 c4 28                 	add	rsp, 40
140004255: c3                          	ret
140004256: 48 8d 15 d3 b1 00 00        	lea	rdx, [rip + 45523]      # 0x14000f430
14000425d: 48 8d 0d cc b0 00 00        	lea	rcx, [rip + 45260]      # 0x14000f330
140004264: 48 83 c4 28                 	add	rsp, 40
140004268: e9 e3 40 00 00              	jmp	0x140008350 <.text+0x7350>
14000426d: cc                          	int3
14000426e: cc                          	int3
14000426f: cc                          	int3
140004270: 48 83 ec 28                 	sub	rsp, 40
140004274: e8 bb 05 00 00              	call	0x140004834 <.text+0x3834>
140004279: 48 8b 40 18                 	mov	rax, qword ptr [rax + 24]
14000427d: 48 85 c0                    	test	rax, rax
140004280: 74 08                       	je	0x14000428a <.text+0x328a>
140004282: ff 15 a8 9f 00 00           	call	qword ptr [rip + 40872] # 0x14000e230
140004288: eb 00                       	jmp	0x14000428a <.text+0x328a>
14000428a: e8 75 00 00 00              	call	0x140004304 <.text+0x3304>
14000428f: 90                          	nop
140004290: c7 44 24 10 00 00 00 00     	mov	dword ptr [rsp + 16], 0
140004298: 8b 44 24 10                 	mov	eax, dword ptr [rsp + 16]
14000429c: e9 07 0c 00 00              	jmp	0x140004ea8 <.text+0x3ea8>
1400042a1: cc                          	int3
1400042a2: cc                          	int3
1400042a3: cc                          	int3
1400042a4: 40 53                       	push	rbx
1400042a6: 48 83 ec 20                 	sub	rsp, 32
1400042aa: 33 db                       	xor	ebx, ebx
1400042ac: 48 85 c9                    	test	rcx, rcx
1400042af: 74 0c                       	je	0x1400042bd <.text+0x32bd>
1400042b1: 48 85 d2                    	test	rdx, rdx
1400042b4: 74 07                       	je	0x1400042bd <.text+0x32bd>
1400042b6: 4d 85 c0                    	test	r8, r8
1400042b9: 75 1b                       	jne	0x1400042d6 <.text+0x32d6>
1400042bb: 88 19                       	mov	byte ptr [rcx], bl
1400042bd: e8 4e 0b 00 00              	call	0x140004e10 <.text+0x3e10>
1400042c2: bb 16 00 00 00              	mov	ebx, 22
1400042c7: 89 18                       	mov	dword ptr [rax], ebx
1400042c9: e8 22 0a 00 00              	call	0x140004cf0 <.text+0x3cf0>
1400042ce: 8b c3                       	mov	eax, ebx
1400042d0: 48 83 c4 20                 	add	rsp, 32
1400042d4: 5b                          	pop	rbx
1400042d5: c3                          	ret
1400042d6: 4c 8b c9                    	mov	r9, rcx
1400042d9: 4c 2b c1                    	sub	r8, rcx
1400042dc: 43 8a 04 08                 	mov	al, byte ptr [r8 + r9]
1400042e0: 41 88 01                    	mov	byte ptr [r9], al
1400042e3: 49 ff c1                    	inc	r9
1400042e6: 84 c0                       	test	al, al
1400042e8: 74 06                       	je	0x1400042f0 <.text+0x32f0>
1400042ea: 48 83 ea 01                 	sub	rdx, 1
1400042ee: 75 ec                       	jne	0x1400042dc <.text+0x32dc>
1400042f0: 48 85 d2                    	test	rdx, rdx
1400042f3: 75 d9                       	jne	0x1400042ce <.text+0x32ce>
1400042f5: 88 19                       	mov	byte ptr [rcx], bl
1400042f7: e8 14 0b 00 00              	call	0x140004e10 <.text+0x3e10>
1400042fc: bb 22 00 00 00              	mov	ebx, 34
140004301: eb c4                       	jmp	0x1400042c7 <.text+0x32c7>
140004303: cc                          	int3
140004304: 48 83 ec 28                 	sub	rsp, 40
140004308: e8 33 41 00 00              	call	0x140008440 <.text+0x7440>
14000430d: 48 85 c0                    	test	rax, rax
140004310: 74 0a                       	je	0x14000431c <.text+0x331c>
140004312: b9 16 00 00 00              	mov	ecx, 22
140004317: e8 74 41 00 00              	call	0x140008490 <.text+0x7490>
14000431c: f6 05 1d 2d 01 00 02        	test	byte ptr [rip + 77085], 2 # 0x140017040
140004323: 74 2a                       	je	0x14000434f <.text+0x334f>
140004325: b9 17 00 00 00              	mov	ecx, 23
14000432a: ff 15 30 9d 00 00           	call	qword ptr [rip + 40240] # 0x14000e060
140004330: 85 c0                       	test	eax, eax
140004332: 74 07                       	je	0x14000433b <.text+0x333b>
140004334: b9 07 00 00 00              	mov	ecx, 7
140004339: cd 29                       	int	41
14000433b: 41 b8 01 00 00 00           	mov	r8d, 1
140004341: ba 15 00 00 40              	mov	edx, 1073741845
140004346: 41 8d 48 02                 	lea	ecx, [r8 + 2]
14000434a: e8 8d 07 00 00              	call	0x140004adc <.text+0x3adc>
14000434f: b9 03 00 00 00              	mov	ecx, 3
140004354: e8 83 f7 ff ff              	call	0x140003adc <.text+0x2adc>
140004359: cc                          	int3
14000435a: cc                          	int3
14000435b: cc                          	int3
14000435c: e9 cf 0a 00 00              	jmp	0x140004e30 <.text+0x3e30>
140004361: cc                          	int3
140004362: cc                          	int3
140004363: cc                          	int3
140004364: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004369: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000436e: 57                          	push	rdi
14000436f: 48 83 ec 20                 	sub	rsp, 32
140004373: c6 41 18 00                 	mov	byte ptr [rcx + 24], 0
140004377: 48 8b f9                    	mov	rdi, rcx
14000437a: 48 8d 71 08                 	lea	rsi, [rcx + 8]
14000437e: 48 85 d2                    	test	rdx, rdx
140004381: 74 05                       	je	0x140004388 <.text+0x3388>
140004383: 0f 10 02                    	movups	xmm0, xmmword ptr [rdx]
140004386: eb 10                       	jmp	0x140004398 <.text+0x3398>
140004388: 83 3d d1 39 01 00 00        	cmp	dword ptr [rip + 80337], 0 # 0x140017d60
14000438f: 75 0d                       	jne	0x14000439e <.text+0x339e>
140004391: 0f 10 05 60 33 01 00        	movups	xmm0, xmmword ptr [rip + 78688] # 0x1400176f8
140004398: f3 0f 7f 06                 	movdqu	xmmword ptr [rsi], xmm0
14000439c: eb 4e                       	jmp	0x1400043ec <.text+0x33ec>
14000439e: e8 91 04 00 00              	call	0x140004834 <.text+0x3834>
1400043a3: 48 89 07                    	mov	qword ptr [rdi], rax
1400043a6: 48 8b d6                    	mov	rdx, rsi
1400043a9: 48 8b 88 90 00 00 00        	mov	rcx, qword ptr [rax + 144]
1400043b0: 48 89 0e                    	mov	qword ptr [rsi], rcx
1400043b3: 48 8b 88 88 00 00 00        	mov	rcx, qword ptr [rax + 136]
1400043ba: 48 89 4f 10                 	mov	qword ptr [rdi + 16], rcx
1400043be: 48 8b c8                    	mov	rcx, rax
1400043c1: e8 fe 48 00 00              	call	0x140008cc4 <.text+0x7cc4>
1400043c6: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
1400043c9: 48 8d 57 10                 	lea	rdx, [rdi + 16]
1400043cd: e8 26 49 00 00              	call	0x140008cf8 <.text+0x7cf8>
1400043d2: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
1400043d5: 8b 81 a8 03 00 00           	mov	eax, dword ptr [rcx + 936]
1400043db: a8 02                       	test	al, 2
1400043dd: 75 0d                       	jne	0x1400043ec <.text+0x33ec>
1400043df: 83 c8 02                    	or	eax, 2
1400043e2: 89 81 a8 03 00 00           	mov	dword ptr [rcx + 936], eax
1400043e8: c6 47 18 01                 	mov	byte ptr [rdi + 24], 1
1400043ec: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400043f1: 48 8b c7                    	mov	rax, rdi
1400043f4: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
1400043f9: 48 83 c4 20                 	add	rsp, 32
1400043fd: 5f                          	pop	rdi
1400043fe: c3                          	ret
1400043ff: cc                          	int3
140004400: cc                          	int3
140004401: cc                          	int3
140004402: cc                          	int3
140004403: cc                          	int3
140004404: cc                          	int3
140004405: cc                          	int3
140004406: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140004410: 48 2b d1                    	sub	rdx, rcx
140004413: 4d 85 c0                    	test	r8, r8
140004416: 74 6a                       	je	0x140004482 <.text+0x3482>
140004418: f7 c1 07 00 00 00           	test	ecx, 7
14000441e: 74 1d                       	je	0x14000443d <.text+0x343d>
140004420: 0f b6 01                    	movzx	eax, byte ptr [rcx]
140004423: 3a 04 0a                    	cmp	al, byte ptr [rdx + rcx]
140004426: 75 5d                       	jne	0x140004485 <.text+0x3485>
140004428: 48 ff c1                    	inc	rcx
14000442b: 49 ff c8                    	dec	r8
14000442e: 74 52                       	je	0x140004482 <.text+0x3482>
140004430: 84 c0                       	test	al, al
140004432: 74 4e                       	je	0x140004482 <.text+0x3482>
140004434: 48 f7 c1 07 00 00 00        	test	rcx, 7
14000443b: 75 e3                       	jne	0x140004420 <.text+0x3420>
14000443d: 49 bb 80 80 80 80 80 80 80 80       	movabs	r11, -9187201950435737472
140004447: 49 ba ff fe fe fe fe fe fe fe       	movabs	r10, -72340172838076673
140004451: 8d 04 0a                    	lea	eax, [rdx + rcx]
140004454: 25 ff 0f 00 00              	and	eax, 4095
140004459: 3d f8 0f 00 00              	cmp	eax, 4088
14000445e: 77 c0                       	ja	0x140004420 <.text+0x3420>
140004460: 48 8b 01                    	mov	rax, qword ptr [rcx]
140004463: 48 3b 04 0a                 	cmp	rax, qword ptr [rdx + rcx]
140004467: 75 b7                       	jne	0x140004420 <.text+0x3420>
140004469: 48 83 c1 08                 	add	rcx, 8
14000446d: 49 83 e8 08                 	sub	r8, 8
140004471: 76 0f                       	jbe	0x140004482 <.text+0x3482>
140004473: 4d 8d 0c 02                 	lea	r9, [r10 + rax]
140004477: 48 f7 d0                    	not	rax
14000447a: 49 23 c1                    	and	rax, r9
14000447d: 49 85 c3                    	test	r11, rax
140004480: 74 cf                       	je	0x140004451 <.text+0x3451>
140004482: 33 c0                       	xor	eax, eax
140004484: c3                          	ret
140004485: 48 1b c0                    	sbb	rax, rax
140004488: 48 83 c8 01                 	or	rax, 1
14000448c: c3                          	ret
14000448d: cc                          	int3
14000448e: cc                          	int3
14000448f: cc                          	int3
140004490: 4d 85 c0                    	test	r8, r8
140004493: 75 18                       	jne	0x1400044ad <.text+0x34ad>
140004495: 33 c0                       	xor	eax, eax
140004497: c3                          	ret
140004498: 0f b7 01                    	movzx	eax, word ptr [rcx]
14000449b: 66 85 c0                    	test	ax, ax
14000449e: 74 13                       	je	0x1400044b3 <.text+0x34b3>
1400044a0: 66 3b 02                    	cmp	ax, word ptr [rdx]
1400044a3: 75 0e                       	jne	0x1400044b3 <.text+0x34b3>
1400044a5: 48 83 c1 02                 	add	rcx, 2
1400044a9: 48 83 c2 02                 	add	rdx, 2
1400044ad: 49 83 e8 01                 	sub	r8, 1
1400044b1: 75 e5                       	jne	0x140004498 <.text+0x3498>
1400044b3: 0f b7 01                    	movzx	eax, word ptr [rcx]
1400044b6: 0f b7 0a                    	movzx	ecx, word ptr [rdx]
1400044b9: 2b c1                       	sub	eax, ecx
1400044bb: c3                          	ret
1400044bc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400044c1: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
1400044c6: 57                          	push	rdi
1400044c7: 48 83 ec 20                 	sub	rsp, 32
1400044cb: 49 8b d9                    	mov	rbx, r9
1400044ce: 49 8b f8                    	mov	rdi, r8
1400044d1: 8b 0a                       	mov	ecx, dword ptr [rdx]
1400044d3: e8 5c 27 00 00              	call	0x140006c34 <.text+0x5c34>
1400044d8: 90                          	nop
1400044d9: 48 8b 07                    	mov	rax, qword ptr [rdi]
1400044dc: 48 8b 08                    	mov	rcx, qword ptr [rax]
1400044df: 48 8b 81 88 00 00 00        	mov	rax, qword ptr [rcx + 136]
1400044e6: f0                          	lock
1400044e7: ff 00                       	inc	dword ptr [rax]
1400044e9: 8b 0b                       	mov	ecx, dword ptr [rbx]
1400044eb: e8 98 27 00 00              	call	0x140006c88 <.text+0x5c88>
1400044f0: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400044f5: 48 83 c4 20                 	add	rsp, 32
1400044f9: 5f                          	pop	rdi
1400044fa: c3                          	ret
1400044fb: cc                          	int3
1400044fc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004501: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140004506: 57                          	push	rdi
140004507: 48 83 ec 20                 	sub	rsp, 32
14000450b: 49 8b d9                    	mov	rbx, r9
14000450e: 49 8b f8                    	mov	rdi, r8
140004511: 8b 0a                       	mov	ecx, dword ptr [rdx]
140004513: e8 1c 27 00 00              	call	0x140006c34 <.text+0x5c34>
140004518: 90                          	nop
140004519: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
14000451c: 33 d2                       	xor	edx, edx
14000451e: 48 8b 09                    	mov	rcx, qword ptr [rcx]
140004521: e8 a6 02 00 00              	call	0x1400047cc <.text+0x37cc>
140004526: 90                          	nop
140004527: 8b 0b                       	mov	ecx, dword ptr [rbx]
140004529: e8 5a 27 00 00              	call	0x140006c88 <.text+0x5c88>
14000452e: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140004533: 48 83 c4 20                 	add	rsp, 32
140004537: 5f                          	pop	rdi
140004538: c3                          	ret
140004539: cc                          	int3
14000453a: cc                          	int3
14000453b: cc                          	int3
14000453c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004541: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140004546: 57                          	push	rdi
140004547: 48 83 ec 20                 	sub	rsp, 32
14000454b: 49 8b d9                    	mov	rbx, r9
14000454e: 49 8b f8                    	mov	rdi, r8
140004551: 8b 0a                       	mov	ecx, dword ptr [rdx]
140004553: e8 dc 26 00 00              	call	0x140006c34 <.text+0x5c34>
140004558: 90                          	nop
140004559: 48 8b 47 08                 	mov	rax, qword ptr [rdi + 8]
14000455d: 48 8b 10                    	mov	rdx, qword ptr [rax]
140004560: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
140004563: 48 8b 12                    	mov	rdx, qword ptr [rdx]
140004566: 48 8b 09                    	mov	rcx, qword ptr [rcx]
140004569: e8 5e 02 00 00              	call	0x1400047cc <.text+0x37cc>
14000456e: 90                          	nop
14000456f: 8b 0b                       	mov	ecx, dword ptr [rbx]
140004571: e8 12 27 00 00              	call	0x140006c88 <.text+0x5c88>
140004576: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000457b: 48 83 c4 20                 	add	rsp, 32
14000457f: 5f                          	pop	rdi
140004580: c3                          	ret
140004581: cc                          	int3
140004582: cc                          	int3
140004583: cc                          	int3
140004584: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004589: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
14000458e: 57                          	push	rdi
14000458f: 48 83 ec 20                 	sub	rsp, 32
140004593: 49 8b d9                    	mov	rbx, r9
140004596: 49 8b f8                    	mov	rdi, r8
140004599: 8b 0a                       	mov	ecx, dword ptr [rdx]
14000459b: e8 94 26 00 00              	call	0x140006c34 <.text+0x5c34>
1400045a0: 90                          	nop
1400045a1: 48 8b 07                    	mov	rax, qword ptr [rdi]
1400045a4: 48 8b 08                    	mov	rcx, qword ptr [rax]
1400045a7: 48 8b 89 88 00 00 00        	mov	rcx, qword ptr [rcx + 136]
1400045ae: 48 85 c9                    	test	rcx, rcx
1400045b1: 74 1e                       	je	0x1400045d1 <.text+0x35d1>
1400045b3: 83 c8 ff                    	or	eax, -1
1400045b6: f0                          	lock
1400045b7: 0f c1 01                    	xadd	dword ptr [rcx], eax
1400045ba: 83 f8 01                    	cmp	eax, 1
1400045bd: 75 12                       	jne	0x1400045d1 <.text+0x35d1>
1400045bf: 48 8d 05 9a 2a 01 00        	lea	rax, [rip + 76442]      # 0x140017060
1400045c6: 48 3b c8                    	cmp	rcx, rax
1400045c9: 74 06                       	je	0x1400045d1 <.text+0x35d1>
1400045cb: e8 d8 08 00 00              	call	0x140004ea8 <.text+0x3ea8>
1400045d0: 90                          	nop
1400045d1: 8b 0b                       	mov	ecx, dword ptr [rbx]
1400045d3: e8 b0 26 00 00              	call	0x140006c88 <.text+0x5c88>
1400045d8: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400045dd: 48 83 c4 20                 	add	rsp, 32
1400045e1: 5f                          	pop	rdi
1400045e2: c3                          	ret
1400045e3: cc                          	int3
1400045e4: 40 55                       	push	rbp
1400045e6: 48 8b ec                    	mov	rbp, rsp
1400045e9: 48 83 ec 50                 	sub	rsp, 80
1400045ed: 48 89 4d d8                 	mov	qword ptr [rbp - 40], rcx
1400045f1: 48 8d 45 d8                 	lea	rax, [rbp - 40]
1400045f5: 48 89 45 e8                 	mov	qword ptr [rbp - 24], rax
1400045f9: 4c 8d 4d 20                 	lea	r9, [rbp + 32]
1400045fd: ba 01 00 00 00              	mov	edx, 1
140004602: 4c 8d 45 e8                 	lea	r8, [rbp - 24]
140004606: b8 05 00 00 00              	mov	eax, 5
14000460b: 89 45 20                    	mov	dword ptr [rbp + 32], eax
14000460e: 89 45 28                    	mov	dword ptr [rbp + 40], eax
140004611: 48 8d 45 d8                 	lea	rax, [rbp - 40]
140004615: 48 89 45 f0                 	mov	qword ptr [rbp - 16], rax
140004619: 48 8d 45 e0                 	lea	rax, [rbp - 32]
14000461d: 48 89 45 f8                 	mov	qword ptr [rbp - 8], rax
140004621: b8 04 00 00 00              	mov	eax, 4
140004626: 89 45 d0                    	mov	dword ptr [rbp - 48], eax
140004629: 89 45 d4                    	mov	dword ptr [rbp - 44], eax
14000462c: 48 8d 05 e5 3d 01 00        	lea	rax, [rip + 81381]      # 0x140018418
140004633: 48 89 45 e0                 	mov	qword ptr [rbp - 32], rax
140004637: 89 51 28                    	mov	dword ptr [rcx + 40], edx
14000463a: 48 8d 0d ef ab 00 00        	lea	rcx, [rip + 44015]      # 0x14000f230
140004641: 48 8b 45 d8                 	mov	rax, qword ptr [rbp - 40]
140004645: 48 89 08                    	mov	qword ptr [rax], rcx
140004648: 48 8d 0d 11 2a 01 00        	lea	rcx, [rip + 76305]      # 0x140017060
14000464f: 48 8b 45 d8                 	mov	rax, qword ptr [rbp - 40]
140004653: 89 90 a8 03 00 00           	mov	dword ptr [rax + 936], edx
140004659: 48 8b 45 d8                 	mov	rax, qword ptr [rbp - 40]
14000465d: 48 89 88 88 00 00 00        	mov	qword ptr [rax + 136], rcx
140004664: 8d 4a 42                    	lea	ecx, [rdx + 66]
140004667: 48 8b 45 d8                 	mov	rax, qword ptr [rbp - 40]
14000466b: 48 8d 55 28                 	lea	rdx, [rbp + 40]
14000466f: 66 89 88 bc 00 00 00        	mov	word ptr [rax + 188], cx
140004676: 48 8b 45 d8                 	mov	rax, qword ptr [rbp - 40]
14000467a: 66 89 88 c2 01 00 00        	mov	word ptr [rax + 450], cx
140004681: 48 8d 4d 18                 	lea	rcx, [rbp + 24]
140004685: 48 8b 45 d8                 	mov	rax, qword ptr [rbp - 40]
140004689: 48 83 a0 a0 03 00 00 00     	and	qword ptr [rax + 928], 0
140004691: e8 26 fe ff ff              	call	0x1400044bc <.text+0x34bc>
140004696: 4c 8d 4d d0                 	lea	r9, [rbp - 48]
14000469a: 4c 8d 45 f0                 	lea	r8, [rbp - 16]
14000469e: 48 8d 55 d4                 	lea	rdx, [rbp - 44]
1400046a2: 48 8d 4d 18                 	lea	rcx, [rbp + 24]
1400046a6: e8 91 fe ff ff              	call	0x14000453c <.text+0x353c>
1400046ab: 48 83 c4 50                 	add	rsp, 80
1400046af: 5d                          	pop	rbp
1400046b0: c3                          	ret
1400046b1: cc                          	int3
1400046b2: cc                          	int3
1400046b3: cc                          	int3
1400046b4: 48 85 c9                    	test	rcx, rcx
1400046b7: 74 1a                       	je	0x1400046d3 <.text+0x36d3>
1400046b9: 53                          	push	rbx
1400046ba: 48 83 ec 20                 	sub	rsp, 32
1400046be: 48 8b d9                    	mov	rbx, rcx
1400046c1: e8 0e 00 00 00              	call	0x1400046d4 <.text+0x36d4>
1400046c6: 48 8b cb                    	mov	rcx, rbx
1400046c9: e8 da 07 00 00              	call	0x140004ea8 <.text+0x3ea8>
1400046ce: 48 83 c4 20                 	add	rsp, 32
1400046d2: 5b                          	pop	rbx
1400046d3: c3                          	ret
1400046d4: 40 55                       	push	rbp
1400046d6: 48 8b ec                    	mov	rbp, rsp
1400046d9: 48 83 ec 40                 	sub	rsp, 64
1400046dd: 48 8d 45 e8                 	lea	rax, [rbp - 24]
1400046e1: 48 89 4d e8                 	mov	qword ptr [rbp - 24], rcx
1400046e5: 48 89 45 f0                 	mov	qword ptr [rbp - 16], rax
1400046e9: 48 8d 15 40 ab 00 00        	lea	rdx, [rip + 43840]      # 0x14000f230
1400046f0: b8 05 00 00 00              	mov	eax, 5
1400046f5: 89 45 20                    	mov	dword ptr [rbp + 32], eax
1400046f8: 89 45 28                    	mov	dword ptr [rbp + 40], eax
1400046fb: 48 8d 45 e8                 	lea	rax, [rbp - 24]
1400046ff: 48 89 45 f8                 	mov	qword ptr [rbp - 8], rax
140004703: b8 04 00 00 00              	mov	eax, 4
140004708: 89 45 e0                    	mov	dword ptr [rbp - 32], eax
14000470b: 89 45 e4                    	mov	dword ptr [rbp - 28], eax
14000470e: 48 8b 01                    	mov	rax, qword ptr [rcx]
140004711: 48 3b c2                    	cmp	rax, rdx
140004714: 74 0c                       	je	0x140004722 <.text+0x3722>
140004716: 48 8b c8                    	mov	rcx, rax
140004719: e8 8a 07 00 00              	call	0x140004ea8 <.text+0x3ea8>
14000471e: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
140004722: 48 8b 49 70                 	mov	rcx, qword ptr [rcx + 112]
140004726: e8 7d 07 00 00              	call	0x140004ea8 <.text+0x3ea8>
14000472b: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
14000472f: 48 8b 49 58                 	mov	rcx, qword ptr [rcx + 88]
140004733: e8 70 07 00 00              	call	0x140004ea8 <.text+0x3ea8>
140004738: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
14000473c: 48 8b 49 60                 	mov	rcx, qword ptr [rcx + 96]
140004740: e8 63 07 00 00              	call	0x140004ea8 <.text+0x3ea8>
140004745: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
140004749: 48 8b 49 68                 	mov	rcx, qword ptr [rcx + 104]
14000474d: e8 56 07 00 00              	call	0x140004ea8 <.text+0x3ea8>
140004752: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
140004756: 48 8b 49 48                 	mov	rcx, qword ptr [rcx + 72]
14000475a: e8 49 07 00 00              	call	0x140004ea8 <.text+0x3ea8>
14000475f: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
140004763: 48 8b 49 50                 	mov	rcx, qword ptr [rcx + 80]
140004767: e8 3c 07 00 00              	call	0x140004ea8 <.text+0x3ea8>
14000476c: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
140004770: 48 8b 49 78                 	mov	rcx, qword ptr [rcx + 120]
140004774: e8 2f 07 00 00              	call	0x140004ea8 <.text+0x3ea8>
140004779: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
14000477d: 48 8b 89 80 00 00 00        	mov	rcx, qword ptr [rcx + 128]
140004784: e8 1f 07 00 00              	call	0x140004ea8 <.text+0x3ea8>
140004789: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
14000478d: 48 8b 89 c0 03 00 00        	mov	rcx, qword ptr [rcx + 960]
140004794: e8 0f 07 00 00              	call	0x140004ea8 <.text+0x3ea8>
140004799: 4c 8d 4d 20                 	lea	r9, [rbp + 32]
14000479d: 4c 8d 45 f0                 	lea	r8, [rbp - 16]
1400047a1: 48 8d 55 28                 	lea	rdx, [rbp + 40]
1400047a5: 48 8d 4d 18                 	lea	rcx, [rbp + 24]
1400047a9: e8 d6 fd ff ff              	call	0x140004584 <.text+0x3584>
1400047ae: 4c 8d 4d e0                 	lea	r9, [rbp - 32]
1400047b2: 4c 8d 45 f8                 	lea	r8, [rbp - 8]
1400047b6: 48 8d 55 e4                 	lea	rdx, [rbp - 28]
1400047ba: 48 8d 4d 18                 	lea	rcx, [rbp + 24]
1400047be: e8 39 fd ff ff              	call	0x1400044fc <.text+0x34fc>
1400047c3: 48 83 c4 40                 	add	rsp, 64
1400047c7: 5d                          	pop	rbp
1400047c8: c3                          	ret
1400047c9: cc                          	int3
1400047ca: cc                          	int3
1400047cb: cc                          	int3
1400047cc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400047d1: 57                          	push	rdi
1400047d2: 48 83 ec 20                 	sub	rsp, 32
1400047d6: 48 8b f9                    	mov	rdi, rcx
1400047d9: 48 8b da                    	mov	rbx, rdx
1400047dc: 48 8b 89 90 00 00 00        	mov	rcx, qword ptr [rcx + 144]
1400047e3: 48 85 c9                    	test	rcx, rcx
1400047e6: 74 2c                       	je	0x140004814 <.text+0x3814>
1400047e8: e8 2f 32 00 00              	call	0x140007a1c <.text+0x6a1c>
1400047ed: 48 8b 8f 90 00 00 00        	mov	rcx, qword ptr [rdi + 144]
1400047f4: 48 3b 0d 1d 3c 01 00        	cmp	rcx, qword ptr [rip + 80925] # 0x140018418
1400047fb: 74 17                       	je	0x140004814 <.text+0x3814>
1400047fd: 48 8d 05 9c 2d 01 00        	lea	rax, [rip + 77212]      # 0x1400175a0
140004804: 48 3b c8                    	cmp	rcx, rax
140004807: 74 0b                       	je	0x140004814 <.text+0x3814>
140004809: 83 79 10 00                 	cmp	dword ptr [rcx + 16], 0
14000480d: 75 05                       	jne	0x140004814 <.text+0x3814>
14000480f: e8 08 30 00 00              	call	0x14000781c <.text+0x681c>
140004814: 48 89 9f 90 00 00 00        	mov	qword ptr [rdi + 144], rbx
14000481b: 48 85 db                    	test	rbx, rbx
14000481e: 74 08                       	je	0x140004828 <.text+0x3828>
140004820: 48 8b cb                    	mov	rcx, rbx
140004823: e8 68 2f 00 00              	call	0x140007790 <.text+0x6790>
140004828: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000482d: 48 83 c4 20                 	add	rsp, 32
140004831: 5f                          	pop	rdi
140004832: c3                          	ret
140004833: cc                          	int3
140004834: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004839: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000483e: 57                          	push	rdi
14000483f: 48 83 ec 20                 	sub	rsp, 32
140004843: ff 15 37 98 00 00           	call	qword ptr [rip + 38967] # 0x14000e080
140004849: 8b 0d 01 28 01 00           	mov	ecx, dword ptr [rip + 75777] # 0x140017050
14000484f: 8b d8                       	mov	ebx, eax
140004851: 83 f9 ff                    	cmp	ecx, -1
140004854: 74 1f                       	je	0x140004875 <.text+0x3875>
140004856: e8 11 37 00 00              	call	0x140007f6c <.text+0x6f6c>
14000485b: 48 8b f8                    	mov	rdi, rax
14000485e: 48 85 c0                    	test	rax, rax
140004861: 74 0c                       	je	0x14000486f <.text+0x386f>
140004863: 48 83 f8 ff                 	cmp	rax, -1
140004867: 75 73                       	jne	0x1400048dc <.text+0x38dc>
140004869: 33 ff                       	xor	edi, edi
14000486b: 33 f6                       	xor	esi, esi
14000486d: eb 70                       	jmp	0x1400048df <.text+0x38df>
14000486f: 8b 0d db 27 01 00           	mov	ecx, dword ptr [rip + 75739] # 0x140017050
140004875: 48 83 ca ff                 	or	rdx, -1
140004879: e8 36 37 00 00              	call	0x140007fb4 <.text+0x6fb4>
14000487e: 85 c0                       	test	eax, eax
140004880: 74 e7                       	je	0x140004869 <.text+0x3869>
140004882: ba c8 03 00 00              	mov	edx, 968
140004887: b9 01 00 00 00              	mov	ecx, 1
14000488c: e8 9f 05 00 00              	call	0x140004e30 <.text+0x3e30>
140004891: 8b 0d b9 27 01 00           	mov	ecx, dword ptr [rip + 75705] # 0x140017050
140004897: 48 8b f8                    	mov	rdi, rax
14000489a: 48 85 c0                    	test	rax, rax
14000489d: 75 10                       	jne	0x1400048af <.text+0x38af>
14000489f: 33 d2                       	xor	edx, edx
1400048a1: e8 0e 37 00 00              	call	0x140007fb4 <.text+0x6fb4>
1400048a6: 33 c9                       	xor	ecx, ecx
1400048a8: e8 fb 05 00 00              	call	0x140004ea8 <.text+0x3ea8>
1400048ad: eb ba                       	jmp	0x140004869 <.text+0x3869>
1400048af: 48 8b d7                    	mov	rdx, rdi
1400048b2: e8 fd 36 00 00              	call	0x140007fb4 <.text+0x6fb4>
1400048b7: 85 c0                       	test	eax, eax
1400048b9: 75 12                       	jne	0x1400048cd <.text+0x38cd>
1400048bb: 8b 0d 8f 27 01 00           	mov	ecx, dword ptr [rip + 75663] # 0x140017050
1400048c1: 33 d2                       	xor	edx, edx
1400048c3: e8 ec 36 00 00              	call	0x140007fb4 <.text+0x6fb4>
1400048c8: 48 8b cf                    	mov	rcx, rdi
1400048cb: eb db                       	jmp	0x1400048a8 <.text+0x38a8>
1400048cd: 48 8b cf                    	mov	rcx, rdi
1400048d0: e8 0f fd ff ff              	call	0x1400045e4 <.text+0x35e4>
1400048d5: 33 c9                       	xor	ecx, ecx
1400048d7: e8 cc 05 00 00              	call	0x140004ea8 <.text+0x3ea8>
1400048dc: 48 8b f7                    	mov	rsi, rdi
1400048df: 8b cb                       	mov	ecx, ebx
1400048e1: ff 15 a1 97 00 00           	call	qword ptr [rip + 38817] # 0x14000e088
1400048e7: 48 f7 df                    	neg	rdi
1400048ea: 48 1b c0                    	sbb	rax, rax
1400048ed: 48 23 c6                    	and	rax, rsi
1400048f0: 74 10                       	je	0x140004902 <.text+0x3902>
1400048f2: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400048f7: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
1400048fc: 48 83 c4 20                 	add	rsp, 32
140004900: 5f                          	pop	rdi
140004901: c3                          	ret
140004902: e8 fd f9 ff ff              	call	0x140004304 <.text+0x3304>
140004907: cc                          	int3
140004908: 40 53                       	push	rbx
14000490a: 48 83 ec 20                 	sub	rsp, 32
14000490e: 8b 0d 3c 27 01 00           	mov	ecx, dword ptr [rip + 75580] # 0x140017050
140004914: 83 f9 ff                    	cmp	ecx, -1
140004917: 74 1b                       	je	0x140004934 <.text+0x3934>
140004919: e8 4e 36 00 00              	call	0x140007f6c <.text+0x6f6c>
14000491e: 48 8b d8                    	mov	rbx, rax
140004921: 48 85 c0                    	test	rax, rax
140004924: 74 08                       	je	0x14000492e <.text+0x392e>
140004926: 48 83 f8 ff                 	cmp	rax, -1
14000492a: 74 7d                       	je	0x1400049a9 <.text+0x39a9>
14000492c: eb 6d                       	jmp	0x14000499b <.text+0x399b>
14000492e: 8b 0d 1c 27 01 00           	mov	ecx, dword ptr [rip + 75548] # 0x140017050
140004934: 48 83 ca ff                 	or	rdx, -1
140004938: e8 77 36 00 00              	call	0x140007fb4 <.text+0x6fb4>
14000493d: 85 c0                       	test	eax, eax
14000493f: 74 68                       	je	0x1400049a9 <.text+0x39a9>
140004941: ba c8 03 00 00              	mov	edx, 968
140004946: b9 01 00 00 00              	mov	ecx, 1
14000494b: e8 e0 04 00 00              	call	0x140004e30 <.text+0x3e30>
140004950: 8b 0d fa 26 01 00           	mov	ecx, dword ptr [rip + 75514] # 0x140017050
140004956: 48 8b d8                    	mov	rbx, rax
140004959: 48 85 c0                    	test	rax, rax
14000495c: 75 10                       	jne	0x14000496e <.text+0x396e>
14000495e: 33 d2                       	xor	edx, edx
140004960: e8 4f 36 00 00              	call	0x140007fb4 <.text+0x6fb4>
140004965: 33 c9                       	xor	ecx, ecx
140004967: e8 3c 05 00 00              	call	0x140004ea8 <.text+0x3ea8>
14000496c: eb 3b                       	jmp	0x1400049a9 <.text+0x39a9>
14000496e: 48 8b d3                    	mov	rdx, rbx
140004971: e8 3e 36 00 00              	call	0x140007fb4 <.text+0x6fb4>
140004976: 85 c0                       	test	eax, eax
140004978: 75 12                       	jne	0x14000498c <.text+0x398c>
14000497a: 8b 0d d0 26 01 00           	mov	ecx, dword ptr [rip + 75472] # 0x140017050
140004980: 33 d2                       	xor	edx, edx
140004982: e8 2d 36 00 00              	call	0x140007fb4 <.text+0x6fb4>
140004987: 48 8b cb                    	mov	rcx, rbx
14000498a: eb db                       	jmp	0x140004967 <.text+0x3967>
14000498c: 48 8b cb                    	mov	rcx, rbx
14000498f: e8 50 fc ff ff              	call	0x1400045e4 <.text+0x35e4>
140004994: 33 c9                       	xor	ecx, ecx
140004996: e8 0d 05 00 00              	call	0x140004ea8 <.text+0x3ea8>
14000499b: 48 85 db                    	test	rbx, rbx
14000499e: 74 09                       	je	0x1400049a9 <.text+0x39a9>
1400049a0: 48 8b c3                    	mov	rax, rbx
1400049a3: 48 83 c4 20                 	add	rsp, 32
1400049a7: 5b                          	pop	rbx
1400049a8: c3                          	ret
1400049a9: e8 56 f9 ff ff              	call	0x140004304 <.text+0x3304>
1400049ae: cc                          	int3
1400049af: cc                          	int3
1400049b0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400049b5: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
1400049ba: 57                          	push	rdi
1400049bb: 48 83 ec 20                 	sub	rsp, 32
1400049bf: ff 15 bb 96 00 00           	call	qword ptr [rip + 38587] # 0x14000e080
1400049c5: 8b 0d 85 26 01 00           	mov	ecx, dword ptr [rip + 75397] # 0x140017050
1400049cb: 8b d8                       	mov	ebx, eax
1400049cd: 83 f9 ff                    	cmp	ecx, -1
1400049d0: 74 1f                       	je	0x1400049f1 <.text+0x39f1>
1400049d2: e8 95 35 00 00              	call	0x140007f6c <.text+0x6f6c>
1400049d7: 48 8b f8                    	mov	rdi, rax
1400049da: 48 85 c0                    	test	rax, rax
1400049dd: 74 0c                       	je	0x1400049eb <.text+0x39eb>
1400049df: 48 83 f8 ff                 	cmp	rax, -1
1400049e3: 75 73                       	jne	0x140004a58 <.text+0x3a58>
1400049e5: 33 ff                       	xor	edi, edi
1400049e7: 33 f6                       	xor	esi, esi
1400049e9: eb 70                       	jmp	0x140004a5b <.text+0x3a5b>
1400049eb: 8b 0d 5f 26 01 00           	mov	ecx, dword ptr [rip + 75359] # 0x140017050
1400049f1: 48 83 ca ff                 	or	rdx, -1
1400049f5: e8 ba 35 00 00              	call	0x140007fb4 <.text+0x6fb4>
1400049fa: 85 c0                       	test	eax, eax
1400049fc: 74 e7                       	je	0x1400049e5 <.text+0x39e5>
1400049fe: ba c8 03 00 00              	mov	edx, 968
140004a03: b9 01 00 00 00              	mov	ecx, 1
140004a08: e8 23 04 00 00              	call	0x140004e30 <.text+0x3e30>
140004a0d: 8b 0d 3d 26 01 00           	mov	ecx, dword ptr [rip + 75325] # 0x140017050
140004a13: 48 8b f8                    	mov	rdi, rax
140004a16: 48 85 c0                    	test	rax, rax
140004a19: 75 10                       	jne	0x140004a2b <.text+0x3a2b>
140004a1b: 33 d2                       	xor	edx, edx
140004a1d: e8 92 35 00 00              	call	0x140007fb4 <.text+0x6fb4>
140004a22: 33 c9                       	xor	ecx, ecx
140004a24: e8 7f 04 00 00              	call	0x140004ea8 <.text+0x3ea8>
140004a29: eb ba                       	jmp	0x1400049e5 <.text+0x39e5>
140004a2b: 48 8b d7                    	mov	rdx, rdi
140004a2e: e8 81 35 00 00              	call	0x140007fb4 <.text+0x6fb4>
140004a33: 85 c0                       	test	eax, eax
140004a35: 75 12                       	jne	0x140004a49 <.text+0x3a49>
140004a37: 8b 0d 13 26 01 00           	mov	ecx, dword ptr [rip + 75283] # 0x140017050
140004a3d: 33 d2                       	xor	edx, edx
140004a3f: e8 70 35 00 00              	call	0x140007fb4 <.text+0x6fb4>
140004a44: 48 8b cf                    	mov	rcx, rdi
140004a47: eb db                       	jmp	0x140004a24 <.text+0x3a24>
140004a49: 48 8b cf                    	mov	rcx, rdi
140004a4c: e8 93 fb ff ff              	call	0x1400045e4 <.text+0x35e4>
140004a51: 33 c9                       	xor	ecx, ecx
140004a53: e8 50 04 00 00              	call	0x140004ea8 <.text+0x3ea8>
140004a58: 48 8b f7                    	mov	rsi, rdi
140004a5b: 8b cb                       	mov	ecx, ebx
140004a5d: ff 15 25 96 00 00           	call	qword ptr [rip + 38437] # 0x14000e088
140004a63: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140004a68: 48 f7 df                    	neg	rdi
140004a6b: 48 1b c0                    	sbb	rax, rax
140004a6e: 48 23 c6                    	and	rax, rsi
140004a71: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
140004a76: 48 83 c4 20                 	add	rsp, 32
140004a7a: 5f                          	pop	rdi
140004a7b: c3                          	ret
140004a7c: 48 83 ec 28                 	sub	rsp, 40
140004a80: 48 8d 0d 2d fc ff ff        	lea	rcx, [rip - 979]        # 0x1400046b4 <.text+0x36b4>
140004a87: e8 50 34 00 00              	call	0x140007edc <.text+0x6edc>
140004a8c: 89 05 be 25 01 00           	mov	dword ptr [rip + 75198], eax # 0x140017050
140004a92: 83 f8 ff                    	cmp	eax, -1
140004a95: 75 04                       	jne	0x140004a9b <.text+0x3a9b>
140004a97: 32 c0                       	xor	al, al
140004a99: eb 15                       	jmp	0x140004ab0 <.text+0x3ab0>
140004a9b: e8 10 ff ff ff              	call	0x1400049b0 <.text+0x39b0>
140004aa0: 48 85 c0                    	test	rax, rax
140004aa3: 75 09                       	jne	0x140004aae <.text+0x3aae>
140004aa5: 33 c9                       	xor	ecx, ecx
140004aa7: e8 0c 00 00 00              	call	0x140004ab8 <.text+0x3ab8>
140004aac: eb e9                       	jmp	0x140004a97 <.text+0x3a97>
140004aae: b0 01                       	mov	al, 1
140004ab0: 48 83 c4 28                 	add	rsp, 40
140004ab4: c3                          	ret
140004ab5: cc                          	int3
140004ab6: cc                          	int3
140004ab7: cc                          	int3
140004ab8: 48 83 ec 28                 	sub	rsp, 40
140004abc: 8b 0d 8e 25 01 00           	mov	ecx, dword ptr [rip + 75150] # 0x140017050
140004ac2: 83 f9 ff                    	cmp	ecx, -1
140004ac5: 74 0c                       	je	0x140004ad3 <.text+0x3ad3>
140004ac7: e8 58 34 00 00              	call	0x140007f24 <.text+0x6f24>
140004acc: 83 0d 7d 25 01 00 ff        	or	dword ptr [rip + 75133], -1 # 0x140017050
140004ad3: b0 01                       	mov	al, 1
140004ad5: 48 83 c4 28                 	add	rsp, 40
140004ad9: c3                          	ret
140004ada: cc                          	int3
140004adb: cc                          	int3
140004adc: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
140004ae1: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140004ae6: 55                          	push	rbp
140004ae7: 57                          	push	rdi
140004ae8: 41 56                       	push	r14
140004aea: 48 8d ac 24 10 fb ff ff     	lea	rbp, [rsp - 1264]
140004af2: 48 81 ec f0 05 00 00        	sub	rsp, 1520
140004af9: 48 8b 05 28 25 01 00        	mov	rax, qword ptr [rip + 75048] # 0x140017028
140004b00: 48 33 c4                    	xor	rax, rsp
140004b03: 48 89 85 e0 04 00 00        	mov	qword ptr [rbp + 1248], rax
140004b0a: 41 8b f8                    	mov	edi, r8d
140004b0d: 8b f2                       	mov	esi, edx
140004b0f: 8b d9                       	mov	ebx, ecx
140004b11: 83 f9 ff                    	cmp	ecx, -1
140004b14: 74 05                       	je	0x140004b1b <.text+0x3b1b>
140004b16: e8 49 cb ff ff              	call	0x140001664 <.text+0x664>
140004b1b: 33 d2                       	xor	edx, edx
140004b1d: 48 8d 4c 24 70              	lea	rcx, [rsp + 112]
140004b22: 41 b8 98 00 00 00           	mov	r8d, 152
140004b28: e8 93 d2 ff ff              	call	0x140001dc0 <.text+0xdc0>
140004b2d: 33 d2                       	xor	edx, edx
140004b2f: 48 8d 4d 10                 	lea	rcx, [rbp + 16]
140004b33: 41 b8 d0 04 00 00           	mov	r8d, 1232
140004b39: e8 82 d2 ff ff              	call	0x140001dc0 <.text+0xdc0>
140004b3e: 48 8d 44 24 70              	lea	rax, [rsp + 112]
140004b43: 48 89 44 24 48              	mov	qword ptr [rsp + 72], rax
140004b48: 48 8d 4d 10                 	lea	rcx, [rbp + 16]
140004b4c: 48 8d 45 10                 	lea	rax, [rbp + 16]
140004b50: 48 89 44 24 50              	mov	qword ptr [rsp + 80], rax
140004b55: ff 15 cd 94 00 00           	call	qword ptr [rip + 38093] # 0x14000e028
140004b5b: 4c 8b b5 08 01 00 00        	mov	r14, qword ptr [rbp + 264]
140004b62: 48 8d 54 24 40              	lea	rdx, [rsp + 64]
140004b67: 49 8b ce                    	mov	rcx, r14
140004b6a: 45 33 c0                    	xor	r8d, r8d
140004b6d: ff 15 bd 94 00 00           	call	qword ptr [rip + 38077] # 0x14000e030
140004b73: 48 85 c0                    	test	rax, rax
140004b76: 74 36                       	je	0x140004bae <.text+0x3bae>
140004b78: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
140004b7e: 48 8d 4c 24 58              	lea	rcx, [rsp + 88]
140004b83: 48 8b 54 24 40              	mov	rdx, qword ptr [rsp + 64]
140004b88: 4c 8b c8                    	mov	r9, rax
140004b8b: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
140004b90: 4d 8b c6                    	mov	r8, r14
140004b93: 48 8d 4c 24 60              	lea	rcx, [rsp + 96]
140004b98: 48 89 4c 24 28              	mov	qword ptr [rsp + 40], rcx
140004b9d: 48 8d 4d 10                 	lea	rcx, [rbp + 16]
140004ba1: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
140004ba6: 33 c9                       	xor	ecx, ecx
140004ba8: ff 15 8a 94 00 00           	call	qword ptr [rip + 38026] # 0x14000e038
140004bae: 48 8b 85 08 05 00 00        	mov	rax, qword ptr [rbp + 1288]
140004bb5: 48 89 85 08 01 00 00        	mov	qword ptr [rbp + 264], rax
140004bbc: 48 8d 85 08 05 00 00        	lea	rax, [rbp + 1288]
140004bc3: 48 83 c0 08                 	add	rax, 8
140004bc7: 89 74 24 70                 	mov	dword ptr [rsp + 112], esi
140004bcb: 48 89 85 a8 00 00 00        	mov	qword ptr [rbp + 168], rax
140004bd2: 48 8b 85 08 05 00 00        	mov	rax, qword ptr [rbp + 1288]
140004bd9: 48 89 45 80                 	mov	qword ptr [rbp - 128], rax
140004bdd: 89 7c 24 74                 	mov	dword ptr [rsp + 116], edi
140004be1: ff 15 59 94 00 00           	call	qword ptr [rip + 37977] # 0x14000e040
140004be7: 33 c9                       	xor	ecx, ecx
140004be9: 8b f8                       	mov	edi, eax
140004beb: ff 15 5f 94 00 00           	call	qword ptr [rip + 37983] # 0x14000e050
140004bf1: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
140004bf6: ff 15 4c 94 00 00           	call	qword ptr [rip + 37964] # 0x14000e048
140004bfc: 85 c0                       	test	eax, eax
140004bfe: 75 10                       	jne	0x140004c10 <.text+0x3c10>
140004c00: 85 ff                       	test	edi, edi
140004c02: 75 0c                       	jne	0x140004c10 <.text+0x3c10>
140004c04: 83 fb ff                    	cmp	ebx, -1
140004c07: 74 07                       	je	0x140004c10 <.text+0x3c10>
140004c09: 8b cb                       	mov	ecx, ebx
140004c0b: e8 54 ca ff ff              	call	0x140001664 <.text+0x664>
140004c10: 48 8b 8d e0 04 00 00        	mov	rcx, qword ptr [rbp + 1248]
140004c17: 48 33 cc                    	xor	rcx, rsp
140004c1a: e8 f1 7e 00 00              	call	0x14000cb10 <.text+0xbb10>
140004c1f: 4c 8d 9c 24 f0 05 00 00     	lea	r11, [rsp + 1520]
140004c27: 49 8b 5b 28                 	mov	rbx, qword ptr [r11 + 40]
140004c2b: 49 8b 73 30                 	mov	rsi, qword ptr [r11 + 48]
140004c2f: 49 8b e3                    	mov	rsp, r11
140004c32: 41 5e                       	pop	r14
140004c34: 5f                          	pop	rdi
140004c35: 5d                          	pop	rbp
140004c36: c3                          	ret
140004c37: cc                          	int3
140004c38: 48 89 0d 61 31 01 00        	mov	qword ptr [rip + 78177], rcx # 0x140017da0
140004c3f: c3                          	ret
140004c40: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004c45: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140004c4a: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140004c4f: 57                          	push	rdi
140004c50: 48 83 ec 30                 	sub	rsp, 48
140004c54: 41 8b d9                    	mov	ebx, r9d
140004c57: 49 8b f8                    	mov	rdi, r8
140004c5a: 48 8b f2                    	mov	rsi, rdx
140004c5d: 48 8b e9                    	mov	rbp, rcx
140004c60: e8 4b fd ff ff              	call	0x1400049b0 <.text+0x39b0>
140004c65: 48 85 c0                    	test	rax, rax
140004c68: 74 3d                       	je	0x140004ca7 <.text+0x3ca7>
140004c6a: 48 8b 80 b8 03 00 00        	mov	rax, qword ptr [rax + 952]
140004c71: 48 85 c0                    	test	rax, rax
140004c74: 74 31                       	je	0x140004ca7 <.text+0x3ca7>
140004c76: 48 8b 54 24 60              	mov	rdx, qword ptr [rsp + 96]
140004c7b: 44 8b cb                    	mov	r9d, ebx
140004c7e: 48 89 54 24 20              	mov	qword ptr [rsp + 32], rdx
140004c83: 4c 8b c7                    	mov	r8, rdi
140004c86: 48 8b d6                    	mov	rdx, rsi
140004c89: 48 8b cd                    	mov	rcx, rbp
140004c8c: ff 15 9e 95 00 00           	call	qword ptr [rip + 38302] # 0x14000e230
140004c92: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140004c97: 48 8b 6c 24 48              	mov	rbp, qword ptr [rsp + 72]
140004c9c: 48 8b 74 24 50              	mov	rsi, qword ptr [rsp + 80]
140004ca1: 48 83 c4 30                 	add	rsp, 48
140004ca5: 5f                          	pop	rdi
140004ca6: c3                          	ret
140004ca7: 4c 8b 15 7a 23 01 00        	mov	r10, qword ptr [rip + 74618] # 0x140017028
140004cae: 44 8b cb                    	mov	r9d, ebx
140004cb1: 41 8b ca                    	mov	ecx, r10d
140004cb4: 4c 8b c7                    	mov	r8, rdi
140004cb7: 4c 33 15 e2 30 01 00        	xor	r10, qword ptr [rip + 78050] # 0x140017da0
140004cbe: 83 e1 3f                    	and	ecx, 63
140004cc1: 49 d3 ca                    	ror	r10, cl
140004cc4: 48 8b d6                    	mov	rdx, rsi
140004cc7: 4d 85 d2                    	test	r10, r10
140004cca: 74 0f                       	je	0x140004cdb <.text+0x3cdb>
140004ccc: 48 8b 4c 24 60              	mov	rcx, qword ptr [rsp + 96]
140004cd1: 49 8b c2                    	mov	rax, r10
140004cd4: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
140004cd9: eb ae                       	jmp	0x140004c89 <.text+0x3c89>
140004cdb: 48 8b 44 24 60              	mov	rax, qword ptr [rsp + 96]
140004ce0: 48 8b cd                    	mov	rcx, rbp
140004ce3: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140004ce8: e8 23 00 00 00              	call	0x140004d10 <.text+0x3d10>
140004ced: cc                          	int3
140004cee: cc                          	int3
140004cef: cc                          	int3
140004cf0: 48 83 ec 38                 	sub	rsp, 56
140004cf4: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
140004cfa: 45 33 c9                    	xor	r9d, r9d
140004cfd: 45 33 c0                    	xor	r8d, r8d
140004d00: 33 d2                       	xor	edx, edx
140004d02: 33 c9                       	xor	ecx, ecx
140004d04: e8 37 ff ff ff              	call	0x140004c40 <.text+0x3c40>
140004d09: 48 83 c4 38                 	add	rsp, 56
140004d0d: c3                          	ret
140004d0e: cc                          	int3
140004d0f: cc                          	int3
140004d10: 48 83 ec 28                 	sub	rsp, 40
140004d14: b9 17 00 00 00              	mov	ecx, 23
140004d19: ff 15 41 93 00 00           	call	qword ptr [rip + 37697] # 0x14000e060
140004d1f: 85 c0                       	test	eax, eax
140004d21: 74 07                       	je	0x140004d2a <.text+0x3d2a>
140004d23: b9 05 00 00 00              	mov	ecx, 5
140004d28: cd 29                       	int	41
140004d2a: 41 b8 01 00 00 00           	mov	r8d, 1
140004d30: ba 17 04 00 c0              	mov	edx, 3221226519
140004d35: 41 8d 48 01                 	lea	ecx, [r8 + 1]
140004d39: e8 9e fd ff ff              	call	0x140004adc <.text+0x3adc>
140004d3e: ff 15 c4 93 00 00           	call	qword ptr [rip + 37828] # 0x14000e108
140004d44: 48 8b c8                    	mov	rcx, rax
140004d47: ba 17 04 00 c0              	mov	edx, 3221226519
140004d4c: 48 83 c4 28                 	add	rsp, 40
140004d50: 48 ff 25 c1 93 00 00        	jmp	qword ptr [rip + 37825] # 0x14000e118
140004d57: cc                          	int3
140004d58: 33 c0                       	xor	eax, eax
140004d5a: 4c 8d 0d cf a6 00 00        	lea	r9, [rip + 42703]       # 0x14000f430
140004d61: 49 8b d1                    	mov	rdx, r9
140004d64: 44 8d 40 08                 	lea	r8d, [rax + 8]
140004d68: 3b 0a                       	cmp	ecx, dword ptr [rdx]
140004d6a: 74 2b                       	je	0x140004d97 <.text+0x3d97>
140004d6c: ff c0                       	inc	eax
140004d6e: 49 03 d0                    	add	rdx, r8
140004d71: 83 f8 2d                    	cmp	eax, 45
140004d74: 72 f2                       	jb	0x140004d68 <.text+0x3d68>
140004d76: 8d 41 ed                    	lea	eax, [rcx - 19]
140004d79: 83 f8 11                    	cmp	eax, 17
140004d7c: 77 06                       	ja	0x140004d84 <.text+0x3d84>
140004d7e: b8 0d 00 00 00              	mov	eax, 13
140004d83: c3                          	ret
140004d84: 81 c1 44 ff ff ff           	add	ecx, 4294967108
140004d8a: b8 16 00 00 00              	mov	eax, 22
140004d8f: 83 f9 0e                    	cmp	ecx, 14
140004d92: 41 0f 46 c0                 	cmovbe	eax, r8d
140004d96: c3                          	ret
140004d97: 41 8b 44 c1 04              	mov	eax, dword ptr [r9 + 8*rax + 4]
140004d9c: c3                          	ret
140004d9d: cc                          	int3
140004d9e: cc                          	int3
140004d9f: cc                          	int3
140004da0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004da5: 57                          	push	rdi
140004da6: 48 83 ec 20                 	sub	rsp, 32
140004daa: 8b f9                       	mov	edi, ecx
140004dac: e8 ff fb ff ff              	call	0x1400049b0 <.text+0x39b0>
140004db1: 48 85 c0                    	test	rax, rax
140004db4: 75 09                       	jne	0x140004dbf <.text+0x3dbf>
140004db6: 48 8d 05 9b 22 01 00        	lea	rax, [rip + 74395]      # 0x140017058
140004dbd: eb 04                       	jmp	0x140004dc3 <.text+0x3dc3>
140004dbf: 48 83 c0 24                 	add	rax, 36
140004dc3: 89 38                       	mov	dword ptr [rax], edi
140004dc5: e8 e6 fb ff ff              	call	0x1400049b0 <.text+0x39b0>
140004dca: 48 8d 1d 83 22 01 00        	lea	rbx, [rip + 74371]      # 0x140017054
140004dd1: 48 85 c0                    	test	rax, rax
140004dd4: 74 04                       	je	0x140004dda <.text+0x3dda>
140004dd6: 48 8d 58 20                 	lea	rbx, [rax + 32]
140004dda: 8b cf                       	mov	ecx, edi
140004ddc: e8 77 ff ff ff              	call	0x140004d58 <.text+0x3d58>
140004de1: 89 03                       	mov	dword ptr [rbx], eax
140004de3: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140004de8: 48 83 c4 20                 	add	rsp, 32
140004dec: 5f                          	pop	rdi
140004ded: c3                          	ret
140004dee: cc                          	int3
140004def: cc                          	int3
140004df0: 48 83 ec 28                 	sub	rsp, 40
140004df4: e8 b7 fb ff ff              	call	0x1400049b0 <.text+0x39b0>
140004df9: 48 85 c0                    	test	rax, rax
140004dfc: 75 09                       	jne	0x140004e07 <.text+0x3e07>
140004dfe: 48 8d 05 53 22 01 00        	lea	rax, [rip + 74323]      # 0x140017058
140004e05: eb 04                       	jmp	0x140004e0b <.text+0x3e0b>
140004e07: 48 83 c0 24                 	add	rax, 36
140004e0b: 48 83 c4 28                 	add	rsp, 40
140004e0f: c3                          	ret
140004e10: 48 83 ec 28                 	sub	rsp, 40
140004e14: e8 97 fb ff ff              	call	0x1400049b0 <.text+0x39b0>
140004e19: 48 85 c0                    	test	rax, rax
140004e1c: 75 09                       	jne	0x140004e27 <.text+0x3e27>
140004e1e: 48 8d 05 2f 22 01 00        	lea	rax, [rip + 74287]      # 0x140017054
140004e25: eb 04                       	jmp	0x140004e2b <.text+0x3e2b>
140004e27: 48 83 c0 20                 	add	rax, 32
140004e2b: 48 83 c4 28                 	add	rsp, 40
140004e2f: c3                          	ret
140004e30: 40 53                       	push	rbx
140004e32: 48 83 ec 20                 	sub	rsp, 32
140004e36: 4c 8b c2                    	mov	r8, rdx
140004e39: 48 8b d9                    	mov	rbx, rcx
140004e3c: 48 85 c9                    	test	rcx, rcx
140004e3f: 74 0e                       	je	0x140004e4f <.text+0x3e4f>
140004e41: 33 d2                       	xor	edx, edx
140004e43: 48 8d 42 e0                 	lea	rax, [rdx - 32]
140004e47: 48 f7 f3                    	div	rbx
140004e4a: 49 3b c0                    	cmp	rax, r8
140004e4d: 72 43                       	jb	0x140004e92 <.text+0x3e92>
140004e4f: 49 0f af d8                 	imul	rbx, r8
140004e53: b8 01 00 00 00              	mov	eax, 1
140004e58: 48 85 db                    	test	rbx, rbx
140004e5b: 48 0f 44 d8                 	cmove	rbx, rax
140004e5f: eb 15                       	jmp	0x140004e76 <.text+0x3e76>
140004e61: e8 5a ee ff ff              	call	0x140003cc0 <.text+0x2cc0>
140004e66: 85 c0                       	test	eax, eax
140004e68: 74 28                       	je	0x140004e92 <.text+0x3e92>
140004e6a: 48 8b cb                    	mov	rcx, rbx
140004e6d: e8 22 35 00 00              	call	0x140008394 <.text+0x7394>
140004e72: 85 c0                       	test	eax, eax
140004e74: 74 1c                       	je	0x140004e92 <.text+0x3e92>
140004e76: 48 8b 0d 5b 37 01 00        	mov	rcx, qword ptr [rip + 79707] # 0x1400185d8
140004e7d: 4c 8b c3                    	mov	r8, rbx
140004e80: ba 08 00 00 00              	mov	edx, 8
140004e85: ff 15 ad 92 00 00           	call	qword ptr [rip + 37549] # 0x14000e138
140004e8b: 48 85 c0                    	test	rax, rax
140004e8e: 74 d1                       	je	0x140004e61 <.text+0x3e61>
140004e90: eb 0d                       	jmp	0x140004e9f <.text+0x3e9f>
140004e92: e8 79 ff ff ff              	call	0x140004e10 <.text+0x3e10>
140004e97: c7 00 0c 00 00 00           	mov	dword ptr [rax], 12
140004e9d: 33 c0                       	xor	eax, eax
140004e9f: 48 83 c4 20                 	add	rsp, 32
140004ea3: 5b                          	pop	rbx
140004ea4: c3                          	ret
140004ea5: cc                          	int3
140004ea6: cc                          	int3
140004ea7: cc                          	int3
140004ea8: 48 85 c9                    	test	rcx, rcx
140004eab: 74 37                       	je	0x140004ee4 <.text+0x3ee4>
140004ead: 53                          	push	rbx
140004eae: 48 83 ec 20                 	sub	rsp, 32
140004eb2: 4c 8b c1                    	mov	r8, rcx
140004eb5: 33 d2                       	xor	edx, edx
140004eb7: 48 8b 0d 1a 37 01 00        	mov	rcx, qword ptr [rip + 79642] # 0x1400185d8
140004ebe: ff 15 7c 92 00 00           	call	qword ptr [rip + 37500] # 0x14000e140
140004ec4: 85 c0                       	test	eax, eax
140004ec6: 75 17                       	jne	0x140004edf <.text+0x3edf>
140004ec8: e8 43 ff ff ff              	call	0x140004e10 <.text+0x3e10>
140004ecd: 48 8b d8                    	mov	rbx, rax
140004ed0: ff 15 aa 91 00 00           	call	qword ptr [rip + 37290] # 0x14000e080
140004ed6: 8b c8                       	mov	ecx, eax
140004ed8: e8 7b fe ff ff              	call	0x140004d58 <.text+0x3d58>
140004edd: 89 03                       	mov	dword ptr [rbx], eax
140004edf: 48 83 c4 20                 	add	rsp, 32
140004ee3: 5b                          	pop	rbx
140004ee4: c3                          	ret
140004ee5: cc                          	int3
140004ee6: cc                          	int3
140004ee7: cc                          	int3
140004ee8: 48 3b ca                    	cmp	rcx, rdx
140004eeb: 73 04                       	jae	0x140004ef1 <.text+0x3ef1>
140004eed: 83 c8 ff                    	or	eax, -1
140004ef0: c3                          	ret
140004ef1: 33 c0                       	xor	eax, eax
140004ef3: 48 3b ca                    	cmp	rcx, rdx
140004ef6: 0f 97 c0                    	seta	al
140004ef9: c3                          	ret
140004efa: cc                          	int3
140004efb: cc                          	int3
140004efc: 48 8b c4                    	mov	rax, rsp
140004eff: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
140004f03: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
140004f07: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
140004f0b: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
140004f0f: 41 56                       	push	r14
140004f11: 48 83 ec 30                 	sub	rsp, 48
140004f15: 33 db                       	xor	ebx, ebx
140004f17: 41 8b e8                    	mov	ebp, r8d
140004f1a: 48 8b fa                    	mov	rdi, rdx
140004f1d: 48 8b f1                    	mov	rsi, rcx
140004f20: 48 85 c9                    	test	rcx, rcx
140004f23: 75 22                       	jne	0x140004f47 <.text+0x3f47>
140004f25: 38 5a 28                    	cmp	byte ptr [rdx + 40], bl
140004f28: 74 0c                       	je	0x140004f36 <.text+0x3f36>
140004f2a: 48 8b 4a 10                 	mov	rcx, qword ptr [rdx + 16]
140004f2e: e8 75 ff ff ff              	call	0x140004ea8 <.text+0x3ea8>
140004f33: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
140004f36: 48 89 5f 10                 	mov	qword ptr [rdi + 16], rbx
140004f3a: 48 89 5f 18                 	mov	qword ptr [rdi + 24], rbx
140004f3e: 48 89 5f 20                 	mov	qword ptr [rdi + 32], rbx
140004f42: e9 0e 01 00 00              	jmp	0x140005055 <.text+0x4055>
140004f47: 38 19                       	cmp	byte ptr [rcx], bl
140004f49: 75 55                       	jne	0x140004fa0 <.text+0x3fa0>
140004f4b: 48 39 5a 18                 	cmp	qword ptr [rdx + 24], rbx
140004f4f: 75 46                       	jne	0x140004f97 <.text+0x3f97>
140004f51: 38 5a 28                    	cmp	byte ptr [rdx + 40], bl
140004f54: 74 0c                       	je	0x140004f62 <.text+0x3f62>
140004f56: 48 8b 4a 10                 	mov	rcx, qword ptr [rdx + 16]
140004f5a: e8 49 ff ff ff              	call	0x140004ea8 <.text+0x3ea8>
140004f5f: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
140004f62: b9 02 00 00 00              	mov	ecx, 2
140004f67: e8 34 26 00 00              	call	0x1400075a0 <.text+0x65a0>
140004f6c: 48 89 47 10                 	mov	qword ptr [rdi + 16], rax
140004f70: 48 8b cb                    	mov	rcx, rbx
140004f73: 48 f7 d8                    	neg	rax
140004f76: 1b d2                       	sbb	edx, edx
140004f78: f7 d2                       	not	edx
140004f7a: 83 e2 0c                    	and	edx, 12
140004f7d: 0f 94 c1                    	sete	cl
140004f80: 85 d2                       	test	edx, edx
140004f82: 0f 94 c0                    	sete	al
140004f85: 88 47 28                    	mov	byte ptr [rdi + 40], al
140004f88: 48 89 4f 18                 	mov	qword ptr [rdi + 24], rcx
140004f8c: 85 d2                       	test	edx, edx
140004f8e: 74 07                       	je	0x140004f97 <.text+0x3f97>
140004f90: 8b da                       	mov	ebx, edx
140004f92: e9 be 00 00 00              	jmp	0x140005055 <.text+0x4055>
140004f97: 48 8b 47 10                 	mov	rax, qword ptr [rdi + 16]
140004f9b: 66 89 18                    	mov	word ptr [rax], bx
140004f9e: eb 9e                       	jmp	0x140004f3e <.text+0x3f3e>
140004fa0: 41 83 c9 ff                 	or	r9d, -1
140004fa4: 89 5c 24 28                 	mov	dword ptr [rsp + 40], ebx
140004fa8: 4c 8b c6                    	mov	r8, rsi
140004fab: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140004fb0: 8b cd                       	mov	ecx, ebp
140004fb2: 41 8d 51 0a                 	lea	edx, [r9 + 10]
140004fb6: e8 11 16 00 00              	call	0x1400065cc <.text+0x55cc>
140004fbb: 4c 63 f0                    	movsxd	r14, eax
140004fbe: 85 c0                       	test	eax, eax
140004fc0: 75 16                       	jne	0x140004fd8 <.text+0x3fd8>
140004fc2: ff 15 b8 90 00 00           	call	qword ptr [rip + 37048] # 0x14000e080
140004fc8: 8b c8                       	mov	ecx, eax
140004fca: e8 d1 fd ff ff              	call	0x140004da0 <.text+0x3da0>
140004fcf: e8 3c fe ff ff              	call	0x140004e10 <.text+0x3e10>
140004fd4: 8b 18                       	mov	ebx, dword ptr [rax]
140004fd6: eb 7d                       	jmp	0x140005055 <.text+0x4055>
140004fd8: 48 8b 4f 18                 	mov	rcx, qword ptr [rdi + 24]
140004fdc: 4c 3b f1                    	cmp	r14, rcx
140004fdf: 76 43                       	jbe	0x140005024 <.text+0x4024>
140004fe1: 38 5f 28                    	cmp	byte ptr [rdi + 40], bl
140004fe4: 74 0c                       	je	0x140004ff2 <.text+0x3ff2>
140004fe6: 48 8b 4f 10                 	mov	rcx, qword ptr [rdi + 16]
140004fea: e8 b9 fe ff ff              	call	0x140004ea8 <.text+0x3ea8>
140004fef: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
140004ff2: 4b 8d 0c 36                 	lea	rcx, [r14 + r14]
140004ff6: e8 a5 25 00 00              	call	0x1400075a0 <.text+0x65a0>
140004ffb: 48 89 47 10                 	mov	qword ptr [rdi + 16], rax
140004fff: 48 8b cb                    	mov	rcx, rbx
140005002: 48 f7 d8                    	neg	rax
140005005: 1b d2                       	sbb	edx, edx
140005007: f7 d2                       	not	edx
140005009: 83 e2 0c                    	and	edx, 12
14000500c: 49 0f 44 ce                 	cmove	rcx, r14
140005010: 85 d2                       	test	edx, edx
140005012: 0f 94 c0                    	sete	al
140005015: 88 47 28                    	mov	byte ptr [rdi + 40], al
140005018: 48 89 4f 18                 	mov	qword ptr [rdi + 24], rcx
14000501c: 85 d2                       	test	edx, edx
14000501e: 0f 85 6c ff ff ff           	jne	0x140004f90 <.text+0x3f90>
140005024: 48 8b 47 10                 	mov	rax, qword ptr [rdi + 16]
140005028: 41 83 c9 ff                 	or	r9d, -1
14000502c: 89 4c 24 28                 	mov	dword ptr [rsp + 40], ecx
140005030: 4c 8b c6                    	mov	r8, rsi
140005033: 8b cd                       	mov	ecx, ebp
140005035: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000503a: 41 8d 51 0a                 	lea	edx, [r9 + 10]
14000503e: e8 89 15 00 00              	call	0x1400065cc <.text+0x55cc>
140005043: 48 63 c8                    	movsxd	rcx, eax
140005046: 85 c0                       	test	eax, eax
140005048: 0f 84 74 ff ff ff           	je	0x140004fc2 <.text+0x3fc2>
14000504e: 48 ff c9                    	dec	rcx
140005051: 48 89 4f 20                 	mov	qword ptr [rdi + 32], rcx
140005055: 48 8b 6c 24 48              	mov	rbp, qword ptr [rsp + 72]
14000505a: 8b c3                       	mov	eax, ebx
14000505c: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140005061: 48 8b 74 24 50              	mov	rsi, qword ptr [rsp + 80]
140005066: 48 8b 7c 24 58              	mov	rdi, qword ptr [rsp + 88]
14000506b: 48 83 c4 30                 	add	rsp, 48
14000506f: 41 5e                       	pop	r14
140005071: c3                          	ret
140005072: cc                          	int3
140005073: cc                          	int3
140005074: 48 8b c4                    	mov	rax, rsp
140005077: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
14000507b: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
14000507f: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
140005083: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
140005087: 41 56                       	push	r14
140005089: 48 83 ec 40                 	sub	rsp, 64
14000508d: 33 db                       	xor	ebx, ebx
14000508f: 45 8b f0                    	mov	r14d, r8d
140005092: 48 8b fa                    	mov	rdi, rdx
140005095: 48 8b f1                    	mov	rsi, rcx
140005098: 48 85 c9                    	test	rcx, rcx
14000509b: 75 22                       	jne	0x1400050bf <.text+0x40bf>
14000509d: 38 5a 28                    	cmp	byte ptr [rdx + 40], bl
1400050a0: 74 0c                       	je	0x1400050ae <.text+0x40ae>
1400050a2: 48 8b 4a 10                 	mov	rcx, qword ptr [rdx + 16]
1400050a6: e8 fd fd ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400050ab: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
1400050ae: 48 89 5f 10                 	mov	qword ptr [rdi + 16], rbx
1400050b2: 48 89 5f 18                 	mov	qword ptr [rdi + 24], rbx
1400050b6: 48 89 5f 20                 	mov	qword ptr [rdi + 32], rbx
1400050ba: e9 22 01 00 00              	jmp	0x1400051e1 <.text+0x41e1>
1400050bf: 66 39 19                    	cmp	word ptr [rcx], bx
1400050c2: 75 54                       	jne	0x140005118 <.text+0x4118>
1400050c4: 48 39 5a 18                 	cmp	qword ptr [rdx + 24], rbx
1400050c8: 75 46                       	jne	0x140005110 <.text+0x4110>
1400050ca: 38 5a 28                    	cmp	byte ptr [rdx + 40], bl
1400050cd: 74 0c                       	je	0x1400050db <.text+0x40db>
1400050cf: 48 8b 4a 10                 	mov	rcx, qword ptr [rdx + 16]
1400050d3: e8 d0 fd ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400050d8: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
1400050db: b9 01 00 00 00              	mov	ecx, 1
1400050e0: e8 bb 24 00 00              	call	0x1400075a0 <.text+0x65a0>
1400050e5: 48 89 47 10                 	mov	qword ptr [rdi + 16], rax
1400050e9: 48 8b cb                    	mov	rcx, rbx
1400050ec: 48 f7 d8                    	neg	rax
1400050ef: 1b d2                       	sbb	edx, edx
1400050f1: f7 d2                       	not	edx
1400050f3: 83 e2 0c                    	and	edx, 12
1400050f6: 0f 94 c1                    	sete	cl
1400050f9: 85 d2                       	test	edx, edx
1400050fb: 0f 94 c0                    	sete	al
1400050fe: 88 47 28                    	mov	byte ptr [rdi + 40], al
140005101: 48 89 4f 18                 	mov	qword ptr [rdi + 24], rcx
140005105: 85 d2                       	test	edx, edx
140005107: 74 07                       	je	0x140005110 <.text+0x4110>
140005109: 8b da                       	mov	ebx, edx
14000510b: e9 d1 00 00 00              	jmp	0x1400051e1 <.text+0x41e1>
140005110: 48 8b 47 10                 	mov	rax, qword ptr [rdi + 16]
140005114: 88 18                       	mov	byte ptr [rax], bl
140005116: eb 9e                       	jmp	0x1400050b6 <.text+0x40b6>
140005118: 48 89 5c 24 38              	mov	qword ptr [rsp + 56], rbx
14000511d: 41 83 c9 ff                 	or	r9d, -1
140005121: 48 89 5c 24 30              	mov	qword ptr [rsp + 48], rbx
140005126: 4c 8b c6                    	mov	r8, rsi
140005129: 89 5c 24 28                 	mov	dword ptr [rsp + 40], ebx
14000512d: 33 d2                       	xor	edx, edx
14000512f: 41 8b ce                    	mov	ecx, r14d
140005132: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140005137: e8 ec 14 00 00              	call	0x140006628 <.text+0x5628>
14000513c: 48 63 e8                    	movsxd	rbp, eax
14000513f: 85 c0                       	test	eax, eax
140005141: 75 19                       	jne	0x14000515c <.text+0x415c>
140005143: ff 15 37 8f 00 00           	call	qword ptr [rip + 36663] # 0x14000e080
140005149: 8b c8                       	mov	ecx, eax
14000514b: e8 50 fc ff ff              	call	0x140004da0 <.text+0x3da0>
140005150: e8 bb fc ff ff              	call	0x140004e10 <.text+0x3e10>
140005155: 8b 18                       	mov	ebx, dword ptr [rax]
140005157: e9 85 00 00 00              	jmp	0x1400051e1 <.text+0x41e1>
14000515c: 48 8b 4f 18                 	mov	rcx, qword ptr [rdi + 24]
140005160: 48 3b e9                    	cmp	rbp, rcx
140005163: 76 42                       	jbe	0x1400051a7 <.text+0x41a7>
140005165: 38 5f 28                    	cmp	byte ptr [rdi + 40], bl
140005168: 74 0c                       	je	0x140005176 <.text+0x4176>
14000516a: 48 8b 4f 10                 	mov	rcx, qword ptr [rdi + 16]
14000516e: e8 35 fd ff ff              	call	0x140004ea8 <.text+0x3ea8>
140005173: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
140005176: 48 8b cd                    	mov	rcx, rbp
140005179: e8 22 24 00 00              	call	0x1400075a0 <.text+0x65a0>
14000517e: 48 89 47 10                 	mov	qword ptr [rdi + 16], rax
140005182: 48 8b cb                    	mov	rcx, rbx
140005185: 48 f7 d8                    	neg	rax
140005188: 1b d2                       	sbb	edx, edx
14000518a: f7 d2                       	not	edx
14000518c: 83 e2 0c                    	and	edx, 12
14000518f: 48 0f 44 cd                 	cmove	rcx, rbp
140005193: 85 d2                       	test	edx, edx
140005195: 0f 94 c0                    	sete	al
140005198: 88 47 28                    	mov	byte ptr [rdi + 40], al
14000519b: 48 89 4f 18                 	mov	qword ptr [rdi + 24], rcx
14000519f: 85 d2                       	test	edx, edx
1400051a1: 0f 85 62 ff ff ff           	jne	0x140005109 <.text+0x4109>
1400051a7: 48 8b 47 10                 	mov	rax, qword ptr [rdi + 16]
1400051ab: 41 83 c9 ff                 	or	r9d, -1
1400051af: 48 89 5c 24 38              	mov	qword ptr [rsp + 56], rbx
1400051b4: 4c 8b c6                    	mov	r8, rsi
1400051b7: 48 89 5c 24 30              	mov	qword ptr [rsp + 48], rbx
1400051bc: 33 d2                       	xor	edx, edx
1400051be: 89 4c 24 28                 	mov	dword ptr [rsp + 40], ecx
1400051c2: 41 8b ce                    	mov	ecx, r14d
1400051c5: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
1400051ca: e8 59 14 00 00              	call	0x140006628 <.text+0x5628>
1400051cf: 48 63 c8                    	movsxd	rcx, eax
1400051d2: 85 c0                       	test	eax, eax
1400051d4: 0f 84 69 ff ff ff           	je	0x140005143 <.text+0x4143>
1400051da: 48 ff c9                    	dec	rcx
1400051dd: 48 89 4f 20                 	mov	qword ptr [rdi + 32], rcx
1400051e1: 48 8b 6c 24 58              	mov	rbp, qword ptr [rsp + 88]
1400051e6: 8b c3                       	mov	eax, ebx
1400051e8: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
1400051ed: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
1400051f2: 48 8b 7c 24 68              	mov	rdi, qword ptr [rsp + 104]
1400051f7: 48 83 c4 40                 	add	rsp, 64
1400051fb: 41 5e                       	pop	r14
1400051fd: c3                          	ret
1400051fe: cc                          	int3
1400051ff: cc                          	int3
140005200: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140005205: 48 89 54 24 10              	mov	qword ptr [rsp + 16], rdx
14000520a: 55                          	push	rbp
14000520b: 56                          	push	rsi
14000520c: 57                          	push	rdi
14000520d: 41 54                       	push	r12
14000520f: 41 55                       	push	r13
140005211: 41 56                       	push	r14
140005213: 41 57                       	push	r15
140005215: 48 8b ec                    	mov	rbp, rsp
140005218: 48 83 ec 60                 	sub	rsp, 96
14000521c: 33 ff                       	xor	edi, edi
14000521e: 48 8b d9                    	mov	rbx, rcx
140005221: 48 85 d2                    	test	rdx, rdx
140005224: 75 16                       	jne	0x14000523c <.text+0x423c>
140005226: e8 e5 fb ff ff              	call	0x140004e10 <.text+0x3e10>
14000522b: 8d 5f 16                    	lea	ebx, [rdi + 22]
14000522e: 89 18                       	mov	dword ptr [rax], ebx
140005230: e8 bb fa ff ff              	call	0x140004cf0 <.text+0x3cf0>
140005235: 8b c3                       	mov	eax, ebx
140005237: e9 a0 01 00 00              	jmp	0x1400053dc <.text+0x43dc>
14000523c: 0f 57 c0                    	xorps	xmm0, xmm0
14000523f: 48 89 3a                    	mov	qword ptr [rdx], rdi
140005242: 48 8b 01                    	mov	rax, qword ptr [rcx]
140005245: f3 0f 7f 45 e0              	movdqu	xmmword ptr [rbp - 32], xmm0
14000524a: 48 89 7d f0                 	mov	qword ptr [rbp - 16], rdi
14000524e: 48 85 c0                    	test	rax, rax
140005251: 74 56                       	je	0x1400052a9 <.text+0x42a9>
140005253: 48 8d 55 50                 	lea	rdx, [rbp + 80]
140005257: 66 c7 45 50 2a 3f           	mov	word ptr [rbp + 80], 16170
14000525d: 48 8b c8                    	mov	rcx, rax
140005260: 40 88 7d 52                 	mov	byte ptr [rbp + 82], dil
140005264: e8 17 40 00 00              	call	0x140009280 <.text+0x8280>
140005269: 48 8b 0b                    	mov	rcx, qword ptr [rbx]
14000526c: 48 85 c0                    	test	rax, rax
14000526f: 75 10                       	jne	0x140005281 <.text+0x4281>
140005271: 4c 8d 4d e0                 	lea	r9, [rbp - 32]
140005275: 45 33 c0                    	xor	r8d, r8d
140005278: 33 d2                       	xor	edx, edx
14000527a: e8 8d 01 00 00              	call	0x14000540c <.text+0x440c>
14000527f: eb 0c                       	jmp	0x14000528d <.text+0x428d>
140005281: 4c 8d 45 e0                 	lea	r8, [rbp - 32]
140005285: 48 8b d0                    	mov	rdx, rax
140005288: e8 07 03 00 00              	call	0x140005594 <.text+0x4594>
14000528d: 8b f0                       	mov	esi, eax
14000528f: 85 c0                       	test	eax, eax
140005291: 75 09                       	jne	0x14000529c <.text+0x429c>
140005293: 48 83 c3 08                 	add	rbx, 8
140005297: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000529a: eb b2                       	jmp	0x14000524e <.text+0x424e>
14000529c: 4c 8b 65 e8                 	mov	r12, qword ptr [rbp - 24]
1400052a0: 4c 8b 7d e0                 	mov	r15, qword ptr [rbp - 32]
1400052a4: e9 f8 00 00 00              	jmp	0x1400053a1 <.text+0x43a1>
1400052a9: 4c 8b 7d e0                 	mov	r15, qword ptr [rbp - 32]
1400052ad: 4c 8b cf                    	mov	r9, rdi
1400052b0: 4c 8b 65 e8                 	mov	r12, qword ptr [rbp - 24]
1400052b4: 49 8b d7                    	mov	rdx, r15
1400052b7: 49 8b c4                    	mov	rax, r12
1400052ba: 48 89 7d 50                 	mov	qword ptr [rbp + 80], rdi
1400052be: 49 2b c7                    	sub	rax, r15
1400052c1: 4c 8b c7                    	mov	r8, rdi
1400052c4: 4c 8b f0                    	mov	r14, rax
1400052c7: 49 c1 fe 03                 	sar	r14, 3
1400052cb: 49 ff c6                    	inc	r14
1400052ce: 48 8d 48 07                 	lea	rcx, [rax + 7]
1400052d2: 48 c1 e9 03                 	shr	rcx, 3
1400052d6: 4d 3b fc                    	cmp	r15, r12
1400052d9: 48 0f 47 cf                 	cmova	rcx, rdi
1400052dd: 48 83 ce ff                 	or	rsi, -1
1400052e1: 48 85 c9                    	test	rcx, rcx
1400052e4: 74 25                       	je	0x14000530b <.text+0x430b>
1400052e6: 4c 8b 12                    	mov	r10, qword ptr [rdx]
1400052e9: 48 8b c6                    	mov	rax, rsi
1400052ec: 48 ff c0                    	inc	rax
1400052ef: 41 38 3c 02                 	cmp	byte ptr [r10 + rax], dil
1400052f3: 75 f7                       	jne	0x1400052ec <.text+0x42ec>
1400052f5: 49 ff c1                    	inc	r9
1400052f8: 48 83 c2 08                 	add	rdx, 8
1400052fc: 4c 03 c8                    	add	r9, rax
1400052ff: 49 ff c0                    	inc	r8
140005302: 4c 3b c1                    	cmp	r8, rcx
140005305: 75 df                       	jne	0x1400052e6 <.text+0x42e6>
140005307: 4c 89 4d 50                 	mov	qword ptr [rbp + 80], r9
14000530b: 41 b8 01 00 00 00           	mov	r8d, 1
140005311: 49 8b d1                    	mov	rdx, r9
140005314: 49 8b ce                    	mov	rcx, r14
140005317: e8 10 df ff ff              	call	0x14000322c <.text+0x222c>
14000531c: 48 8b d8                    	mov	rbx, rax
14000531f: 48 85 c0                    	test	rax, rax
140005322: 74 76                       	je	0x14000539a <.text+0x439a>
140005324: 4a 8d 14 f0                 	lea	rdx, [rax + 8*r14]
140005328: 4d 8b f7                    	mov	r14, r15
14000532b: 48 89 55 d8                 	mov	qword ptr [rbp - 40], rdx
14000532f: 48 8b c2                    	mov	rax, rdx
140005332: 48 89 55 58                 	mov	qword ptr [rbp + 88], rdx
140005336: 4d 3b fc                    	cmp	r15, r12
140005339: 74 56                       	je	0x140005391 <.text+0x4391>
14000533b: 48 8b cb                    	mov	rcx, rbx
14000533e: 49 2b cf                    	sub	rcx, r15
140005341: 48 89 4d d0                 	mov	qword ptr [rbp - 48], rcx
140005345: 4d 8b 06                    	mov	r8, qword ptr [r14]
140005348: 4c 8b ee                    	mov	r13, rsi
14000534b: 49 ff c5                    	inc	r13
14000534e: 43 38 3c 28                 	cmp	byte ptr [r8 + r13], dil
140005352: 75 f7                       	jne	0x14000534b <.text+0x434b>
140005354: 48 2b d0                    	sub	rdx, rax
140005357: 49 ff c5                    	inc	r13
14000535a: 48 03 55 50                 	add	rdx, qword ptr [rbp + 80]
14000535e: 4d 8b cd                    	mov	r9, r13
140005361: 48 8b c8                    	mov	rcx, rax
140005364: e8 97 3d 00 00              	call	0x140009100 <.text+0x8100>
140005369: 85 c0                       	test	eax, eax
14000536b: 0f 85 83 00 00 00           	jne	0x1400053f4 <.text+0x43f4>
140005371: 48 8b 45 58                 	mov	rax, qword ptr [rbp + 88]
140005375: 48 8b 4d d0                 	mov	rcx, qword ptr [rbp - 48]
140005379: 48 8b 55 d8                 	mov	rdx, qword ptr [rbp - 40]
14000537d: 4a 89 04 31                 	mov	qword ptr [rcx + r14], rax
140005381: 49 03 c5                    	add	rax, r13
140005384: 49 83 c6 08                 	add	r14, 8
140005388: 48 89 45 58                 	mov	qword ptr [rbp + 88], rax
14000538c: 4d 3b f4                    	cmp	r14, r12
14000538f: 75 b4                       	jne	0x140005345 <.text+0x4345>
140005391: 48 8b 45 48                 	mov	rax, qword ptr [rbp + 72]
140005395: 8b f7                       	mov	esi, edi
140005397: 48 89 18                    	mov	qword ptr [rax], rbx
14000539a: 33 c9                       	xor	ecx, ecx
14000539c: e8 07 fb ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400053a1: 49 8b dc                    	mov	rbx, r12
1400053a4: 4d 8b f7                    	mov	r14, r15
1400053a7: 49 2b df                    	sub	rbx, r15
1400053aa: 48 83 c3 07                 	add	rbx, 7
1400053ae: 48 c1 eb 03                 	shr	rbx, 3
1400053b2: 4d 3b fc                    	cmp	r15, r12
1400053b5: 48 0f 47 df                 	cmova	rbx, rdi
1400053b9: 48 85 db                    	test	rbx, rbx
1400053bc: 74 14                       	je	0x1400053d2 <.text+0x43d2>
1400053be: 49 8b 0e                    	mov	rcx, qword ptr [r14]
1400053c1: e8 e2 fa ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400053c6: 48 ff c7                    	inc	rdi
1400053c9: 4d 8d 76 08                 	lea	r14, [r14 + 8]
1400053cd: 48 3b fb                    	cmp	rdi, rbx
1400053d0: 75 ec                       	jne	0x1400053be <.text+0x43be>
1400053d2: 49 8b cf                    	mov	rcx, r15
1400053d5: e8 ce fa ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400053da: 8b c6                       	mov	eax, esi
1400053dc: 48 8b 9c 24 a0 00 00 00     	mov	rbx, qword ptr [rsp + 160]
1400053e4: 48 83 c4 60                 	add	rsp, 96
1400053e8: 41 5f                       	pop	r15
1400053ea: 41 5e                       	pop	r14
1400053ec: 41 5d                       	pop	r13
1400053ee: 41 5c                       	pop	r12
1400053f0: 5f                          	pop	rdi
1400053f1: 5e                          	pop	rsi
1400053f2: 5d                          	pop	rbp
1400053f3: c3                          	ret
1400053f4: 45 33 c9                    	xor	r9d, r9d
1400053f7: 48 89 7c 24 20              	mov	qword ptr [rsp + 32], rdi
1400053fc: 45 33 c0                    	xor	r8d, r8d
1400053ff: 33 d2                       	xor	edx, edx
140005401: 33 c9                       	xor	ecx, ecx
140005403: e8 08 f9 ff ff              	call	0x140004d10 <.text+0x3d10>
140005408: cc                          	int3
140005409: cc                          	int3
14000540a: cc                          	int3
14000540b: cc                          	int3
14000540c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140005411: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140005416: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
14000541b: 57                          	push	rdi
14000541c: 41 54                       	push	r12
14000541e: 41 55                       	push	r13
140005420: 41 56                       	push	r14
140005422: 41 57                       	push	r15
140005424: 48 83 ec 30                 	sub	rsp, 48
140005428: 48 83 cd ff                 	or	rbp, -1
14000542c: 49 8b f9                    	mov	rdi, r9
14000542f: 33 f6                       	xor	esi, esi
140005431: 4d 8b f0                    	mov	r14, r8
140005434: 4c 8b ea                    	mov	r13, rdx
140005437: 4c 8b e1                    	mov	r12, rcx
14000543a: 48 ff c5                    	inc	rbp
14000543d: 40 38 34 29                 	cmp	byte ptr [rcx + rbp], sil
140005441: 75 f7                       	jne	0x14000543a <.text+0x443a>
140005443: ba 01 00 00 00              	mov	edx, 1
140005448: 49 8b c6                    	mov	rax, r14
14000544b: 48 03 ea                    	add	rbp, rdx
14000544e: 48 f7 d0                    	not	rax
140005451: 48 3b e8                    	cmp	rbp, rax
140005454: 76 20                       	jbe	0x140005476 <.text+0x4476>
140005456: 8d 42 0b                    	lea	eax, [rdx + 11]
140005459: 48 8b 5c 24 60              	mov	rbx, qword ptr [rsp + 96]
14000545e: 48 8b 6c 24 68              	mov	rbp, qword ptr [rsp + 104]
140005463: 48 8b 74 24 70              	mov	rsi, qword ptr [rsp + 112]
140005468: 48 83 c4 30                 	add	rsp, 48
14000546c: 41 5f                       	pop	r15
14000546e: 41 5e                       	pop	r14
140005470: 41 5d                       	pop	r13
140005472: 41 5c                       	pop	r12
140005474: 5f                          	pop	rdi
140005475: c3                          	ret
140005476: 4d 8d 78 01                 	lea	r15, [r8 + 1]
14000547a: 4c 03 fd                    	add	r15, rbp
14000547d: 49 8b cf                    	mov	rcx, r15
140005480: e8 ab f9 ff ff              	call	0x140004e30 <.text+0x3e30>
140005485: 48 8b d8                    	mov	rbx, rax
140005488: 4d 85 f6                    	test	r14, r14
14000548b: 74 19                       	je	0x1400054a6 <.text+0x44a6>
14000548d: 4d 8b ce                    	mov	r9, r14
140005490: 4d 8b c5                    	mov	r8, r13
140005493: 49 8b d7                    	mov	rdx, r15
140005496: 48 8b c8                    	mov	rcx, rax
140005499: e8 62 3c 00 00              	call	0x140009100 <.text+0x8100>
14000549e: 85 c0                       	test	eax, eax
1400054a0: 0f 85 d8 00 00 00           	jne	0x14000557e <.text+0x457e>
1400054a6: 4d 2b fe                    	sub	r15, r14
1400054a9: 4a 8d 0c 33                 	lea	rcx, [rbx + r14]
1400054ad: 49 8b d7                    	mov	rdx, r15
1400054b0: 4c 8b cd                    	mov	r9, rbp
1400054b3: 4d 8b c4                    	mov	r8, r12
1400054b6: e8 45 3c 00 00              	call	0x140009100 <.text+0x8100>
1400054bb: 85 c0                       	test	eax, eax
1400054bd: 0f 85 bb 00 00 00           	jne	0x14000557e <.text+0x457e>
1400054c3: 48 8b 4f 08                 	mov	rcx, qword ptr [rdi + 8]
1400054c7: 44 8d 78 08                 	lea	r15d, [rax + 8]
1400054cb: 4c 8b 77 10                 	mov	r14, qword ptr [rdi + 16]
1400054cf: 49 3b ce                    	cmp	rcx, r14
1400054d2: 0f 85 9d 00 00 00           	jne	0x140005575 <.text+0x4575>
1400054d8: 48 39 37                    	cmp	qword ptr [rdi], rsi
1400054db: 75 2b                       	jne	0x140005508 <.text+0x4508>
1400054dd: 41 8b d7                    	mov	edx, r15d
1400054e0: 8d 48 04                    	lea	ecx, [rax + 4]
1400054e3: e8 48 f9 ff ff              	call	0x140004e30 <.text+0x3e30>
1400054e8: 33 c9                       	xor	ecx, ecx
1400054ea: 48 89 07                    	mov	qword ptr [rdi], rax
1400054ed: e8 b6 f9 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400054f2: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
1400054f5: 48 85 c9                    	test	rcx, rcx
1400054f8: 74 42                       	je	0x14000553c <.text+0x453c>
1400054fa: 48 8d 41 20                 	lea	rax, [rcx + 32]
1400054fe: 48 89 4f 08                 	mov	qword ptr [rdi + 8], rcx
140005502: 48 89 47 10                 	mov	qword ptr [rdi + 16], rax
140005506: eb 6d                       	jmp	0x140005575 <.text+0x4575>
140005508: 4c 2b 37                    	sub	r14, qword ptr [rdi]
14000550b: 48 b8 ff ff ff ff ff ff ff 7f       	movabs	rax, 9223372036854775807
140005515: 49 c1 fe 03                 	sar	r14, 3
140005519: 4c 3b f0                    	cmp	r14, rax
14000551c: 77 1e                       	ja	0x14000553c <.text+0x453c>
14000551e: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
140005521: 4b 8d 2c 36                 	lea	rbp, [r14 + r14]
140005525: 48 8b d5                    	mov	rdx, rbp
140005528: 4d 8b c7                    	mov	r8, r15
14000552b: e8 e0 2c 00 00              	call	0x140008210 <.text+0x7210>
140005530: 48 85 c0                    	test	rax, rax
140005533: 75 22                       	jne	0x140005557 <.text+0x4557>
140005535: 33 c9                       	xor	ecx, ecx
140005537: e8 6c f9 ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000553c: 48 8b cb                    	mov	rcx, rbx
14000553f: e8 64 f9 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140005544: be 0c 00 00 00              	mov	esi, 12
140005549: 33 c9                       	xor	ecx, ecx
14000554b: e8 58 f9 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140005550: 8b c6                       	mov	eax, esi
140005552: e9 02 ff ff ff              	jmp	0x140005459 <.text+0x4459>
140005557: 4a 8d 0c f0                 	lea	rcx, [rax + 8*r14]
14000555b: 48 89 07                    	mov	qword ptr [rdi], rax
14000555e: 48 89 4f 08                 	mov	qword ptr [rdi + 8], rcx
140005562: 48 8d 0c e8                 	lea	rcx, [rax + 8*rbp]
140005566: 48 89 4f 10                 	mov	qword ptr [rdi + 16], rcx
14000556a: 33 c9                       	xor	ecx, ecx
14000556c: e8 37 f9 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140005571: 48 8b 4f 08                 	mov	rcx, qword ptr [rdi + 8]
140005575: 48 89 19                    	mov	qword ptr [rcx], rbx
140005578: 4c 01 7f 08                 	add	qword ptr [rdi + 8], r15
14000557c: eb cb                       	jmp	0x140005549 <.text+0x4549>
14000557e: 45 33 c9                    	xor	r9d, r9d
140005581: 48 89 74 24 20              	mov	qword ptr [rsp + 32], rsi
140005586: 45 33 c0                    	xor	r8d, r8d
140005589: 33 d2                       	xor	edx, edx
14000558b: 33 c9                       	xor	ecx, ecx
14000558d: e8 7e f7 ff ff              	call	0x140004d10 <.text+0x3d10>
140005592: cc                          	int3
140005593: cc                          	int3
140005594: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140005599: 55                          	push	rbp
14000559a: 56                          	push	rsi
14000559b: 57                          	push	rdi
14000559c: 41 54                       	push	r12
14000559e: 41 55                       	push	r13
1400055a0: 41 56                       	push	r14
1400055a2: 41 57                       	push	r15
1400055a4: 48 8d ac 24 d0 fd ff ff     	lea	rbp, [rsp - 560]
1400055ac: 48 81 ec 30 03 00 00        	sub	rsp, 816
1400055b3: 48 8b 05 6e 1a 01 00        	mov	rax, qword ptr [rip + 72302] # 0x140017028
1400055ba: 48 33 c4                    	xor	rax, rsp
1400055bd: 48 89 85 20 02 00 00        	mov	qword ptr [rbp + 544], rax
1400055c4: 4d 8b e0                    	mov	r12, r8
1400055c7: 48 8b f1                    	mov	rsi, rcx
1400055ca: 48 bb 01 08 00 00 00 20 00 00       	movabs	rbx, 35184372090881
1400055d4: 48 3b d1                    	cmp	rdx, rcx
1400055d7: 74 22                       	je	0x1400055fb <.text+0x45fb>
1400055d9: 8a 02                       	mov	al, byte ptr [rdx]
1400055db: 2c 2f                       	sub	al, 47
1400055dd: 3c 2d                       	cmp	al, 45
1400055df: 77 0a                       	ja	0x1400055eb <.text+0x45eb>
1400055e1: 48 0f be c0                 	movsx	rax, al
1400055e5: 48 0f a3 c3                 	bt	rbx, rax
1400055e9: 72 10                       	jb	0x1400055fb <.text+0x45fb>
1400055eb: 48 8b ce                    	mov	rcx, rsi
1400055ee: e8 55 40 00 00              	call	0x140009648 <.text+0x8648>
1400055f3: 48 8b d0                    	mov	rdx, rax
1400055f6: 48 3b c6                    	cmp	rax, rsi
1400055f9: 75 de                       	jne	0x1400055d9 <.text+0x45d9>
1400055fb: 44 8a 02                    	mov	r8b, byte ptr [rdx]
1400055fe: 41 80 f8 3a                 	cmp	r8b, 58
140005602: 75 1e                       	jne	0x140005622 <.text+0x4622>
140005604: 48 8d 46 01                 	lea	rax, [rsi + 1]
140005608: 48 3b d0                    	cmp	rdx, rax
14000560b: 74 15                       	je	0x140005622 <.text+0x4622>
14000560d: 4d 8b cc                    	mov	r9, r12
140005610: 45 33 c0                    	xor	r8d, r8d
140005613: 33 d2                       	xor	edx, edx
140005615: 48 8b ce                    	mov	rcx, rsi
140005618: e8 ef fd ff ff              	call	0x14000540c <.text+0x440c>
14000561d: e9 56 02 00 00              	jmp	0x140005878 <.text+0x4878>
140005622: 41 80 e8 2f                 	sub	r8b, 47
140005626: 33 ff                       	xor	edi, edi
140005628: 41 80 f8 2d                 	cmp	r8b, 45
14000562c: 77 0c                       	ja	0x14000563a <.text+0x463a>
14000562e: 49 0f be c0                 	movsx	rax, r8b
140005632: 48 0f a3 c3                 	bt	rbx, rax
140005636: b0 01                       	mov	al, 1
140005638: 72 03                       	jb	0x14000563d <.text+0x463d>
14000563a: 40 8a c7                    	mov	al, dil
14000563d: 48 2b d6                    	sub	rdx, rsi
140005640: 48 89 7d a0                 	mov	qword ptr [rbp - 96], rdi
140005644: 48 ff c2                    	inc	rdx
140005647: 48 89 7d a8                 	mov	qword ptr [rbp - 88], rdi
14000564b: f6 d8                       	neg	al
14000564d: 48 89 7d b0                 	mov	qword ptr [rbp - 80], rdi
140005651: 48 8d 4c 24 30              	lea	rcx, [rsp + 48]
140005656: 48 89 7d b8                 	mov	qword ptr [rbp - 72], rdi
14000565a: 4d 1b ed                    	sbb	r13, r13
14000565d: 48 89 7d c0                 	mov	qword ptr [rbp - 64], rdi
140005661: 4c 23 ea                    	and	r13, rdx
140005664: 40 88 7d c8                 	mov	byte ptr [rbp - 56], dil
140005668: 33 d2                       	xor	edx, edx
14000566a: e8 f5 ec ff ff              	call	0x140004364 <.text+0x3364>
14000566f: 48 8b 44 24 38              	mov	rax, qword ptr [rsp + 56]
140005674: 41 bf e9 fd 00 00           	mov	r15d, 65001
14000567a: 44 39 78 0c                 	cmp	dword ptr [rax + 12], r15d
14000567e: 75 18                       	jne	0x140005698 <.text+0x4698>
140005680: 40 38 7c 24 48              	cmp	byte ptr [rsp + 72], dil
140005685: 74 0c                       	je	0x140005693 <.text+0x4693>
140005687: 48 8b 44 24 30              	mov	rax, qword ptr [rsp + 48]
14000568c: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140005693: 45 8b c7                    	mov	r8d, r15d
140005696: eb 3a                       	jmp	0x1400056d2 <.text+0x46d2>
140005698: e8 27 27 00 00              	call	0x140007dc4 <.text+0x6dc4>
14000569d: 85 c0                       	test	eax, eax
14000569f: 75 1b                       	jne	0x1400056bc <.text+0x46bc>
1400056a1: 40 38 7c 24 48              	cmp	byte ptr [rsp + 72], dil
1400056a6: 74 0c                       	je	0x1400056b4 <.text+0x46b4>
1400056a8: 48 8b 44 24 30              	mov	rax, qword ptr [rsp + 48]
1400056ad: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
1400056b4: 41 b8 01 00 00 00           	mov	r8d, 1
1400056ba: eb 16                       	jmp	0x1400056d2 <.text+0x46d2>
1400056bc: 40 38 7c 24 48              	cmp	byte ptr [rsp + 72], dil
1400056c1: 74 0c                       	je	0x1400056cf <.text+0x46cf>
1400056c3: 48 8b 44 24 30              	mov	rax, qword ptr [rsp + 48]
1400056c8: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
1400056cf: 44 8b c7                    	mov	r8d, edi
1400056d2: 48 8d 55 a0                 	lea	rdx, [rbp - 96]
1400056d6: 48 8b ce                    	mov	rcx, rsi
1400056d9: e8 1e f8 ff ff              	call	0x140004efc <.text+0x3efc>
1400056de: 48 8b 4d b0                 	mov	rcx, qword ptr [rbp - 80]
1400056e2: 4c 8d 45 d0                 	lea	r8, [rbp - 48]
1400056e6: 85 c0                       	test	eax, eax
1400056e8: 89 7c 24 28                 	mov	dword ptr [rsp + 40], edi
1400056ec: 48 89 7c 24 20              	mov	qword ptr [rsp + 32], rdi
1400056f1: 48 0f 45 cf                 	cmovne	rcx, rdi
1400056f5: 45 33 c9                    	xor	r9d, r9d
1400056f8: 33 d2                       	xor	edx, edx
1400056fa: ff 15 50 8a 00 00           	call	qword ptr [rip + 35408] # 0x14000e150
140005700: 48 8b d8                    	mov	rbx, rax
140005703: 48 83 f8 ff                 	cmp	rax, -1
140005707: 75 17                       	jne	0x140005720 <.text+0x4720>
140005709: 4d 8b cc                    	mov	r9, r12
14000570c: 45 33 c0                    	xor	r8d, r8d
14000570f: 33 d2                       	xor	edx, edx
140005711: 48 8b ce                    	mov	rcx, rsi
140005714: e8 f3 fc ff ff              	call	0x14000540c <.text+0x440c>
140005719: 8b f8                       	mov	edi, eax
14000571b: e9 47 01 00 00              	jmp	0x140005867 <.text+0x4867>
140005720: 4d 8b 74 24 08              	mov	r14, qword ptr [r12 + 8]
140005725: 4d 2b 34 24                 	sub	r14, qword ptr [r12]
140005729: 49 c1 fe 03                 	sar	r14, 3
14000572d: 33 d2                       	xor	edx, edx
14000572f: 48 89 7c 24 70              	mov	qword ptr [rsp + 112], rdi
140005734: 48 8d 4c 24 50              	lea	rcx, [rsp + 80]
140005739: 48 89 7c 24 78              	mov	qword ptr [rsp + 120], rdi
14000573e: 48 89 7d 80                 	mov	qword ptr [rbp - 128], rdi
140005742: 48 89 7d 88                 	mov	qword ptr [rbp - 120], rdi
140005746: 48 89 7d 90                 	mov	qword ptr [rbp - 112], rdi
14000574a: 40 88 7d 98                 	mov	byte ptr [rbp - 104], dil
14000574e: e8 11 ec ff ff              	call	0x140004364 <.text+0x3364>
140005753: 48 8b 44 24 58              	mov	rax, qword ptr [rsp + 88]
140005758: 44 39 78 0c                 	cmp	dword ptr [rax + 12], r15d
14000575c: 75 18                       	jne	0x140005776 <.text+0x4776>
14000575e: 40 38 7c 24 68              	cmp	byte ptr [rsp + 104], dil
140005763: 74 0c                       	je	0x140005771 <.text+0x4771>
140005765: 48 8b 44 24 50              	mov	rax, qword ptr [rsp + 80]
14000576a: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140005771: 45 8b c7                    	mov	r8d, r15d
140005774: eb 3a                       	jmp	0x1400057b0 <.text+0x47b0>
140005776: e8 49 26 00 00              	call	0x140007dc4 <.text+0x6dc4>
14000577b: 85 c0                       	test	eax, eax
14000577d: 75 1b                       	jne	0x14000579a <.text+0x479a>
14000577f: 40 38 7c 24 68              	cmp	byte ptr [rsp + 104], dil
140005784: 74 0c                       	je	0x140005792 <.text+0x4792>
140005786: 48 8b 44 24 50              	mov	rax, qword ptr [rsp + 80]
14000578b: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140005792: 41 b8 01 00 00 00           	mov	r8d, 1
140005798: eb 16                       	jmp	0x1400057b0 <.text+0x47b0>
14000579a: 40 38 7c 24 68              	cmp	byte ptr [rsp + 104], dil
14000579f: 74 0c                       	je	0x1400057ad <.text+0x47ad>
1400057a1: 48 8b 44 24 50              	mov	rax, qword ptr [rsp + 80]
1400057a6: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
1400057ad: 44 8b c7                    	mov	r8d, edi
1400057b0: 48 8d 54 24 70              	lea	rdx, [rsp + 112]
1400057b5: 48 8d 4d fc                 	lea	rcx, [rbp - 4]
1400057b9: e8 b6 f8 ff ff              	call	0x140005074 <.text+0x4074>
1400057be: 4c 8b 7d 80                 	mov	r15, qword ptr [rbp - 128]
1400057c2: 85 c0                       	test	eax, eax
1400057c4: 49 8b cf                    	mov	rcx, r15
1400057c7: 48 0f 45 cf                 	cmovne	rcx, rdi
1400057cb: 80 39 2e                    	cmp	byte ptr [rcx], 46
1400057ce: 75 11                       	jne	0x1400057e1 <.text+0x47e1>
1400057d0: 8a 41 01                    	mov	al, byte ptr [rcx + 1]
1400057d3: 84 c0                       	test	al, al
1400057d5: 74 20                       	je	0x1400057f7 <.text+0x47f7>
1400057d7: 3c 2e                       	cmp	al, 46
1400057d9: 75 06                       	jne	0x1400057e1 <.text+0x47e1>
1400057db: 40 38 79 02                 	cmp	byte ptr [rcx + 2], dil
1400057df: 74 16                       	je	0x1400057f7 <.text+0x47f7>
1400057e1: 4d 8b cc                    	mov	r9, r12
1400057e4: 4d 8b c5                    	mov	r8, r13
1400057e7: 48 8b d6                    	mov	rdx, rsi
1400057ea: e8 1d fc ff ff              	call	0x14000540c <.text+0x440c>
1400057ef: 8b f8                       	mov	edi, eax
1400057f1: 85 c0                       	test	eax, eax
1400057f3: 75 5b                       	jne	0x140005850 <.text+0x4850>
1400057f5: 33 ff                       	xor	edi, edi
1400057f7: 40 38 7d 98                 	cmp	byte ptr [rbp - 104], dil
1400057fb: 74 08                       	je	0x140005805 <.text+0x4805>
1400057fd: 49 8b cf                    	mov	rcx, r15
140005800: e8 a3 f6 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140005805: 48 8d 55 d0                 	lea	rdx, [rbp - 48]
140005809: 48 8b cb                    	mov	rcx, rbx
14000580c: ff 15 46 89 00 00           	call	qword ptr [rip + 35142] # 0x14000e158
140005812: 41 bf e9 fd 00 00           	mov	r15d, 65001
140005818: 85 c0                       	test	eax, eax
14000581a: 0f 85 0d ff ff ff           	jne	0x14000572d <.text+0x472d>
140005820: 49 8b 04 24                 	mov	rax, qword ptr [r12]
140005824: 49 8b 54 24 08              	mov	rdx, qword ptr [r12 + 8]
140005829: 48 2b d0                    	sub	rdx, rax
14000582c: 48 c1 fa 03                 	sar	rdx, 3
140005830: 4c 3b f2                    	cmp	r14, rdx
140005833: 74 29                       	je	0x14000585e <.text+0x485e>
140005835: 49 2b d6                    	sub	rdx, r14
140005838: 4a 8d 0c f0                 	lea	rcx, [rax + 8*r14]
14000583c: 4c 8d 0d a5 f6 ff ff        	lea	r9, [rip - 2395]        # 0x140004ee8 <.text+0x3ee8>
140005843: 41 b8 08 00 00 00           	mov	r8d, 8
140005849: e8 12 35 00 00              	call	0x140008d60 <.text+0x7d60>
14000584e: eb 0e                       	jmp	0x14000585e <.text+0x485e>
140005850: 80 7d 98 00                 	cmp	byte ptr [rbp - 104], 0
140005854: 74 08                       	je	0x14000585e <.text+0x485e>
140005856: 49 8b cf                    	mov	rcx, r15
140005859: e8 4a f6 ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000585e: 48 8b cb                    	mov	rcx, rbx
140005861: ff 15 e1 88 00 00           	call	qword ptr [rip + 35041] # 0x14000e148
140005867: 80 7d c8 00                 	cmp	byte ptr [rbp - 56], 0
14000586b: 74 09                       	je	0x140005876 <.text+0x4876>
14000586d: 48 8b 4d b0                 	mov	rcx, qword ptr [rbp - 80]
140005871: e8 32 f6 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140005876: 8b c7                       	mov	eax, edi
140005878: 48 8b 8d 20 02 00 00        	mov	rcx, qword ptr [rbp + 544]
14000587f: 48 33 cc                    	xor	rcx, rsp
140005882: e8 89 72 00 00              	call	0x14000cb10 <.text+0xbb10>
140005887: 48 8b 9c 24 88 03 00 00     	mov	rbx, qword ptr [rsp + 904]
14000588f: 48 81 c4 30 03 00 00        	add	rsp, 816
140005896: 41 5f                       	pop	r15
140005898: 41 5e                       	pop	r14
14000589a: 41 5d                       	pop	r13
14000589c: 41 5c                       	pop	r12
14000589e: 5f                          	pop	rdi
14000589f: 5e                          	pop	rsi
1400058a0: 5d                          	pop	rbp
1400058a1: c3                          	ret
1400058a2: cc                          	int3
1400058a3: cc                          	int3
1400058a4: e9 57 f9 ff ff              	jmp	0x140005200 <.text+0x4200>
1400058a9: cc                          	int3
1400058aa: cc                          	int3
1400058ab: cc                          	int3
1400058ac: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400058b1: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
1400058b6: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
1400058bb: 57                          	push	rdi
1400058bc: 48 83 ec 40                 	sub	rsp, 64
1400058c0: 33 db                       	xor	ebx, ebx
1400058c2: 41 8b e8                    	mov	ebp, r8d
1400058c5: 48 8b fa                    	mov	rdi, rdx
1400058c8: 48 8b f1                    	mov	rsi, rcx
1400058cb: 48 85 c9                    	test	rcx, rcx
1400058ce: 75 19                       	jne	0x1400058e9 <.text+0x48e9>
1400058d0: 38 5a 28                    	cmp	byte ptr [rdx + 40], bl
1400058d3: 74 03                       	je	0x1400058d8 <.text+0x48d8>
1400058d5: 88 5a 28                    	mov	byte ptr [rdx + 40], bl
1400058d8: 48 89 5a 10                 	mov	qword ptr [rdx + 16], rbx
1400058dc: 48 89 5a 18                 	mov	qword ptr [rdx + 24], rbx
1400058e0: 48 89 5a 20                 	mov	qword ptr [rdx + 32], rbx
1400058e4: e9 bd 00 00 00              	jmp	0x1400059a6 <.text+0x49a6>
1400058e9: 66 39 19                    	cmp	word ptr [rcx], bx
1400058ec: 75 30                       	jne	0x14000591e <.text+0x491e>
1400058ee: 48 39 5a 18                 	cmp	qword ptr [rdx + 24], rbx
1400058f2: 75 22                       	jne	0x140005916 <.text+0x4916>
1400058f4: 38 5a 28                    	cmp	byte ptr [rdx + 40], bl
1400058f7: 74 03                       	je	0x1400058fc <.text+0x48fc>
1400058f9: 88 5a 28                    	mov	byte ptr [rdx + 40], bl
1400058fc: e8 0f f5 ff ff              	call	0x140004e10 <.text+0x3e10>
140005901: b9 22 00 00 00              	mov	ecx, 34
140005906: 89 08                       	mov	dword ptr [rax], ecx
140005908: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
14000590b: 48 89 5f 18                 	mov	qword ptr [rdi + 24], rbx
14000590f: 8b d9                       	mov	ebx, ecx
140005911: e9 90 00 00 00              	jmp	0x1400059a6 <.text+0x49a6>
140005916: 48 8b 42 10                 	mov	rax, qword ptr [rdx + 16]
14000591a: 88 18                       	mov	byte ptr [rax], bl
14000591c: eb c2                       	jmp	0x1400058e0 <.text+0x48e0>
14000591e: 48 89 5c 24 38              	mov	qword ptr [rsp + 56], rbx
140005923: 41 83 c9 ff                 	or	r9d, -1
140005927: 48 89 5c 24 30              	mov	qword ptr [rsp + 48], rbx
14000592c: 4c 8b c6                    	mov	r8, rsi
14000592f: 89 5c 24 28                 	mov	dword ptr [rsp + 40], ebx
140005933: 33 d2                       	xor	edx, edx
140005935: 8b cd                       	mov	ecx, ebp
140005937: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000593c: e8 e7 0c 00 00              	call	0x140006628 <.text+0x5628>
140005941: 48 63 d0                    	movsxd	rdx, eax
140005944: 85 c0                       	test	eax, eax
140005946: 75 16                       	jne	0x14000595e <.text+0x495e>
140005948: ff 15 32 87 00 00           	call	qword ptr [rip + 34610] # 0x14000e080
14000594e: 8b c8                       	mov	ecx, eax
140005950: e8 4b f4 ff ff              	call	0x140004da0 <.text+0x3da0>
140005955: e8 b6 f4 ff ff              	call	0x140004e10 <.text+0x3e10>
14000595a: 8b 18                       	mov	ebx, dword ptr [rax]
14000595c: eb 48                       	jmp	0x1400059a6 <.text+0x49a6>
14000595e: 48 8b 4f 18                 	mov	rcx, qword ptr [rdi + 24]
140005962: 48 3b d1                    	cmp	rdx, rcx
140005965: 76 0a                       	jbe	0x140005971 <.text+0x4971>
140005967: 38 5f 28                    	cmp	byte ptr [rdi + 40], bl
14000596a: 74 90                       	je	0x1400058fc <.text+0x48fc>
14000596c: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
14000596f: eb 8b                       	jmp	0x1400058fc <.text+0x48fc>
140005971: 48 8b 47 10                 	mov	rax, qword ptr [rdi + 16]
140005975: 41 83 c9 ff                 	or	r9d, -1
140005979: 48 89 5c 24 38              	mov	qword ptr [rsp + 56], rbx
14000597e: 4c 8b c6                    	mov	r8, rsi
140005981: 48 89 5c 24 30              	mov	qword ptr [rsp + 48], rbx
140005986: 33 d2                       	xor	edx, edx
140005988: 89 4c 24 28                 	mov	dword ptr [rsp + 40], ecx
14000598c: 8b cd                       	mov	ecx, ebp
14000598e: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140005993: e8 90 0c 00 00              	call	0x140006628 <.text+0x5628>
140005998: 48 63 c8                    	movsxd	rcx, eax
14000599b: 85 c0                       	test	eax, eax
14000599d: 74 a9                       	je	0x140005948 <.text+0x4948>
14000599f: 48 ff c9                    	dec	rcx
1400059a2: 48 89 4f 20                 	mov	qword ptr [rdi + 32], rcx
1400059a6: 48 8b 6c 24 58              	mov	rbp, qword ptr [rsp + 88]
1400059ab: 8b c3                       	mov	eax, ebx
1400059ad: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
1400059b2: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
1400059b7: 48 83 c4 40                 	add	rsp, 64
1400059bb: 5f                          	pop	rdi
1400059bc: c3                          	ret
1400059bd: cc                          	int3
1400059be: cc                          	int3
1400059bf: cc                          	int3
1400059c0: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
1400059c5: 48 89 7c 24 18              	mov	qword ptr [rsp + 24], rdi
1400059ca: 55                          	push	rbp
1400059cb: 48 8d ac 24 70 fe ff ff     	lea	rbp, [rsp - 400]
1400059d3: 48 81 ec 90 02 00 00        	sub	rsp, 656
1400059da: 48 8b 05 47 16 01 00        	mov	rax, qword ptr [rip + 71239] # 0x140017028
1400059e1: 48 33 c4                    	xor	rax, rsp
1400059e4: 48 89 85 80 01 00 00        	mov	qword ptr [rbp + 384], rax
1400059eb: 41 8b f8                    	mov	edi, r8d
1400059ee: 48 8b da                    	mov	rbx, rdx
1400059f1: 41 b8 05 01 00 00           	mov	r8d, 261
1400059f7: 48 8d 54 24 70              	lea	rdx, [rsp + 112]
1400059fc: ff 15 fe 86 00 00           	call	qword ptr [rip + 34558] # 0x14000e100
140005a02: 85 c0                       	test	eax, eax
140005a04: 75 14                       	jne	0x140005a1a <.text+0x4a1a>
140005a06: ff 15 74 86 00 00           	call	qword ptr [rip + 34420] # 0x14000e080
140005a0c: 8b c8                       	mov	ecx, eax
140005a0e: e8 8d f3 ff ff              	call	0x140004da0 <.text+0x3da0>
140005a13: 33 c0                       	xor	eax, eax
140005a15: e9 a0 00 00 00              	jmp	0x140005aba <.text+0x4aba>
140005a1a: 48 83 64 24 60 00           	and	qword ptr [rsp + 96], 0
140005a20: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
140005a25: 48 8b c7                    	mov	rax, rdi
140005a28: 48 89 5c 24 40              	mov	qword ptr [rsp + 64], rbx
140005a2d: 33 d2                       	xor	edx, edx
140005a2f: 48 89 44 24 48              	mov	qword ptr [rsp + 72], rax
140005a34: 48 89 44 24 58              	mov	qword ptr [rsp + 88], rax
140005a39: 48 89 5c 24 50              	mov	qword ptr [rsp + 80], rbx
140005a3e: c6 44 24 68 00              	mov	byte ptr [rsp + 104], 0
140005a43: e8 1c e9 ff ff              	call	0x140004364 <.text+0x3364>
140005a48: 48 8b 44 24 28              	mov	rax, qword ptr [rsp + 40]
140005a4d: 41 b8 e9 fd 00 00           	mov	r8d, 65001
140005a53: 44 39 40 0c                 	cmp	dword ptr [rax + 12], r8d
140005a57: 75 15                       	jne	0x140005a6e <.text+0x4a6e>
140005a59: 80 7c 24 38 00              	cmp	byte ptr [rsp + 56], 0
140005a5e: 74 47                       	je	0x140005aa7 <.text+0x4aa7>
140005a60: 48 8b 44 24 20              	mov	rax, qword ptr [rsp + 32]
140005a65: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140005a6c: eb 39                       	jmp	0x140005aa7 <.text+0x4aa7>
140005a6e: e8 51 23 00 00              	call	0x140007dc4 <.text+0x6dc4>
140005a73: 85 c0                       	test	eax, eax
140005a75: 75 1a                       	jne	0x140005a91 <.text+0x4a91>
140005a77: 38 44 24 38                 	cmp	byte ptr [rsp + 56], al
140005a7b: 74 0c                       	je	0x140005a89 <.text+0x4a89>
140005a7d: 48 8b 44 24 20              	mov	rax, qword ptr [rsp + 32]
140005a82: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140005a89: 41 b8 01 00 00 00           	mov	r8d, 1
140005a8f: eb 16                       	jmp	0x140005aa7 <.text+0x4aa7>
140005a91: 80 7c 24 38 00              	cmp	byte ptr [rsp + 56], 0
140005a96: 74 0c                       	je	0x140005aa4 <.text+0x4aa4>
140005a98: 48 8b 44 24 20              	mov	rax, qword ptr [rsp + 32]
140005a9d: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140005aa4: 45 33 c0                    	xor	r8d, r8d
140005aa7: 48 8d 54 24 40              	lea	rdx, [rsp + 64]
140005aac: 48 8d 4c 24 70              	lea	rcx, [rsp + 112]
140005ab1: e8 f6 fd ff ff              	call	0x1400058ac <.text+0x48ac>
140005ab6: 8b 44 24 60                 	mov	eax, dword ptr [rsp + 96]
140005aba: 48 8b 8d 80 01 00 00        	mov	rcx, qword ptr [rbp + 384]
140005ac1: 48 33 cc                    	xor	rcx, rsp
140005ac4: e8 47 70 00 00              	call	0x14000cb10 <.text+0xbb10>
140005ac9: 4c 8d 9c 24 90 02 00 00     	lea	r11, [rsp + 656]
140005ad1: 49 8b 5b 18                 	mov	rbx, qword ptr [r11 + 24]
140005ad5: 49 8b 7b 20                 	mov	rdi, qword ptr [r11 + 32]
140005ad9: 49 8b e3                    	mov	rsp, r11
140005adc: 5d                          	pop	rbp
140005add: c3                          	ret
140005ade: cc                          	int3
140005adf: cc                          	int3
140005ae0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140005ae5: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140005aea: 57                          	push	rdi
140005aeb: 48 83 ec 20                 	sub	rsp, 32
140005aef: 49 8b f9                    	mov	rdi, r9
140005af2: 49 8b d8                    	mov	rbx, r8
140005af5: 8b 0a                       	mov	ecx, dword ptr [rdx]
140005af7: e8 38 11 00 00              	call	0x140006c34 <.text+0x5c34>
140005afc: 90                          	nop
140005afd: 48 8b 03                    	mov	rax, qword ptr [rbx]
140005b00: 48 8b 08                    	mov	rcx, qword ptr [rax]
140005b03: 48 8b 81 88 00 00 00        	mov	rax, qword ptr [rcx + 136]
140005b0a: 48 83 c0 18                 	add	rax, 24
140005b0e: 48 8b 0d 93 22 01 00        	mov	rcx, qword ptr [rip + 74387] # 0x140017da8
140005b15: 48 85 c9                    	test	rcx, rcx
140005b18: 74 6f                       	je	0x140005b89 <.text+0x4b89>
140005b1a: 48 85 c0                    	test	rax, rax
140005b1d: 74 5d                       	je	0x140005b7c <.text+0x4b7c>
140005b1f: 41 b8 02 00 00 00           	mov	r8d, 2
140005b25: 45 8b c8                    	mov	r9d, r8d
140005b28: 41 8d 50 7e                 	lea	edx, [r8 + 126]
140005b2c: 0f 10 00                    	movups	xmm0, xmmword ptr [rax]
140005b2f: 0f 11 01                    	movups	xmmword ptr [rcx], xmm0
140005b32: 0f 10 48 10                 	movups	xmm1, xmmword ptr [rax + 16]
140005b36: 0f 11 49 10                 	movups	xmmword ptr [rcx + 16], xmm1
140005b3a: 0f 10 40 20                 	movups	xmm0, xmmword ptr [rax + 32]
140005b3e: 0f 11 41 20                 	movups	xmmword ptr [rcx + 32], xmm0
140005b42: 0f 10 48 30                 	movups	xmm1, xmmword ptr [rax + 48]
140005b46: 0f 11 49 30                 	movups	xmmword ptr [rcx + 48], xmm1
140005b4a: 0f 10 40 40                 	movups	xmm0, xmmword ptr [rax + 64]
140005b4e: 0f 11 41 40                 	movups	xmmword ptr [rcx + 64], xmm0
140005b52: 0f 10 48 50                 	movups	xmm1, xmmword ptr [rax + 80]
140005b56: 0f 11 49 50                 	movups	xmmword ptr [rcx + 80], xmm1
140005b5a: 0f 10 40 60                 	movups	xmm0, xmmword ptr [rax + 96]
140005b5e: 0f 11 41 60                 	movups	xmmword ptr [rcx + 96], xmm0
140005b62: 48 03 ca                    	add	rcx, rdx
140005b65: 0f 10 48 70                 	movups	xmm1, xmmword ptr [rax + 112]
140005b69: 0f 11 49 f0                 	movups	xmmword ptr [rcx - 16], xmm1
140005b6d: 48 03 c2                    	add	rax, rdx
140005b70: 49 83 e9 01                 	sub	r9, 1
140005b74: 75 b6                       	jne	0x140005b2c <.text+0x4b2c>
140005b76: 8a 00                       	mov	al, byte ptr [rax]
140005b78: 88 01                       	mov	byte ptr [rcx], al
140005b7a: eb 27                       	jmp	0x140005ba3 <.text+0x4ba3>
140005b7c: 33 d2                       	xor	edx, edx
140005b7e: 41 b8 01 01 00 00           	mov	r8d, 257
140005b84: e8 37 c2 ff ff              	call	0x140001dc0 <.text+0xdc0>
140005b89: e8 82 f2 ff ff              	call	0x140004e10 <.text+0x3e10>
140005b8e: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140005b94: e8 57 f1 ff ff              	call	0x140004cf0 <.text+0x3cf0>
140005b99: 41 b8 02 00 00 00           	mov	r8d, 2
140005b9f: 41 8d 50 7e                 	lea	edx, [r8 + 126]
140005ba3: 48 8b 03                    	mov	rax, qword ptr [rbx]
140005ba6: 48 8b 08                    	mov	rcx, qword ptr [rax]
140005ba9: 48 8b 81 88 00 00 00        	mov	rax, qword ptr [rcx + 136]
140005bb0: 48 05 19 01 00 00           	add	rax, 281
140005bb6: 48 8b 0d f3 21 01 00        	mov	rcx, qword ptr [rip + 74227] # 0x140017db0
140005bbd: 48 85 c9                    	test	rcx, rcx
140005bc0: 74 5e                       	je	0x140005c20 <.text+0x4c20>
140005bc2: 48 85 c0                    	test	rax, rax
140005bc5: 74 4c                       	je	0x140005c13 <.text+0x4c13>
140005bc7: 0f 10 00                    	movups	xmm0, xmmword ptr [rax]
140005bca: 0f 11 01                    	movups	xmmword ptr [rcx], xmm0
140005bcd: 0f 10 48 10                 	movups	xmm1, xmmword ptr [rax + 16]
140005bd1: 0f 11 49 10                 	movups	xmmword ptr [rcx + 16], xmm1
140005bd5: 0f 10 40 20                 	movups	xmm0, xmmword ptr [rax + 32]
140005bd9: 0f 11 41 20                 	movups	xmmword ptr [rcx + 32], xmm0
140005bdd: 0f 10 48 30                 	movups	xmm1, xmmword ptr [rax + 48]
140005be1: 0f 11 49 30                 	movups	xmmword ptr [rcx + 48], xmm1
140005be5: 0f 10 40 40                 	movups	xmm0, xmmword ptr [rax + 64]
140005be9: 0f 11 41 40                 	movups	xmmword ptr [rcx + 64], xmm0
140005bed: 0f 10 48 50                 	movups	xmm1, xmmword ptr [rax + 80]
140005bf1: 0f 11 49 50                 	movups	xmmword ptr [rcx + 80], xmm1
140005bf5: 0f 10 40 60                 	movups	xmm0, xmmword ptr [rax + 96]
140005bf9: 0f 11 41 60                 	movups	xmmword ptr [rcx + 96], xmm0
140005bfd: 48 03 ca                    	add	rcx, rdx
140005c00: 0f 10 48 70                 	movups	xmm1, xmmword ptr [rax + 112]
140005c04: 0f 11 49 f0                 	movups	xmmword ptr [rcx - 16], xmm1
140005c08: 48 03 c2                    	add	rax, rdx
140005c0b: 49 83 e8 01                 	sub	r8, 1
140005c0f: 75 b6                       	jne	0x140005bc7 <.text+0x4bc7>
140005c11: eb 1d                       	jmp	0x140005c30 <.text+0x4c30>
140005c13: 33 d2                       	xor	edx, edx
140005c15: 41 b8 00 01 00 00           	mov	r8d, 256
140005c1b: e8 a0 c1 ff ff              	call	0x140001dc0 <.text+0xdc0>
140005c20: e8 eb f1 ff ff              	call	0x140004e10 <.text+0x3e10>
140005c25: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140005c2b: e8 c0 f0 ff ff              	call	0x140004cf0 <.text+0x3cf0>
140005c30: 48 8b 43 08                 	mov	rax, qword ptr [rbx + 8]
140005c34: 48 8b 08                    	mov	rcx, qword ptr [rax]
140005c37: 48 8b 11                    	mov	rdx, qword ptr [rcx]
140005c3a: 83 c8 ff                    	or	eax, -1
140005c3d: f0                          	lock
140005c3e: 0f c1 02                    	xadd	dword ptr [rdx], eax
140005c41: 83 f8 01                    	cmp	eax, 1
140005c44: 75 1b                       	jne	0x140005c61 <.text+0x4c61>
140005c46: 48 8b 43 08                 	mov	rax, qword ptr [rbx + 8]
140005c4a: 48 8b 08                    	mov	rcx, qword ptr [rax]
140005c4d: 48 8d 05 0c 14 01 00        	lea	rax, [rip + 70668]      # 0x140017060
140005c54: 48 39 01                    	cmp	qword ptr [rcx], rax
140005c57: 74 08                       	je	0x140005c61 <.text+0x4c61>
140005c59: 48 8b 09                    	mov	rcx, qword ptr [rcx]
140005c5c: e8 47 f2 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140005c61: 48 8b 03                    	mov	rax, qword ptr [rbx]
140005c64: 48 8b 10                    	mov	rdx, qword ptr [rax]
140005c67: 48 8b 43 08                 	mov	rax, qword ptr [rbx + 8]
140005c6b: 48 8b 08                    	mov	rcx, qword ptr [rax]
140005c6e: 48 8b 82 88 00 00 00        	mov	rax, qword ptr [rdx + 136]
140005c75: 48 89 01                    	mov	qword ptr [rcx], rax
140005c78: 48 8b 03                    	mov	rax, qword ptr [rbx]
140005c7b: 48 8b 08                    	mov	rcx, qword ptr [rax]
140005c7e: 48 8b 81 88 00 00 00        	mov	rax, qword ptr [rcx + 136]
140005c85: f0                          	lock
140005c86: ff 00                       	inc	dword ptr [rax]
140005c88: 8b 0f                       	mov	ecx, dword ptr [rdi]
140005c8a: e8 f9 0f 00 00              	call	0x140006c88 <.text+0x5c88>
140005c8f: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140005c94: 48 83 c4 20                 	add	rsp, 32
140005c98: 5f                          	pop	rdi
140005c99: c3                          	ret
140005c9a: cc                          	int3
140005c9b: cc                          	int3
140005c9c: 40 53                       	push	rbx
140005c9e: 48 83 ec 40                 	sub	rsp, 64
140005ca2: 8b d9                       	mov	ebx, ecx
140005ca4: 33 d2                       	xor	edx, edx
140005ca6: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
140005cab: e8 b4 e6 ff ff              	call	0x140004364 <.text+0x3364>
140005cb0: 83 25 09 21 01 00 00        	and	dword ptr [rip + 73993], 0 # 0x140017dc0
140005cb7: 83 fb fe                    	cmp	ebx, -2
140005cba: 75 12                       	jne	0x140005cce <.text+0x4cce>
140005cbc: c7 05 fa 20 01 00 01 00 00 00       	mov	dword ptr [rip + 73978], 1 # 0x140017dc0
140005cc6: ff 15 a4 84 00 00           	call	qword ptr [rip + 33956] # 0x14000e170
140005ccc: eb 15                       	jmp	0x140005ce3 <.text+0x4ce3>
140005cce: 83 fb fd                    	cmp	ebx, -3
140005cd1: 75 14                       	jne	0x140005ce7 <.text+0x4ce7>
140005cd3: c7 05 e3 20 01 00 01 00 00 00       	mov	dword ptr [rip + 73955], 1 # 0x140017dc0
140005cdd: ff 15 85 84 00 00           	call	qword ptr [rip + 33925] # 0x14000e168
140005ce3: 8b d8                       	mov	ebx, eax
140005ce5: eb 17                       	jmp	0x140005cfe <.text+0x4cfe>
140005ce7: 83 fb fc                    	cmp	ebx, -4
140005cea: 75 12                       	jne	0x140005cfe <.text+0x4cfe>
140005cec: 48 8b 44 24 28              	mov	rax, qword ptr [rsp + 40]
140005cf1: c7 05 c5 20 01 00 01 00 00 00       	mov	dword ptr [rip + 73925], 1 # 0x140017dc0
140005cfb: 8b 58 0c                    	mov	ebx, dword ptr [rax + 12]
140005cfe: 80 7c 24 38 00              	cmp	byte ptr [rsp + 56], 0
140005d03: 74 0c                       	je	0x140005d11 <.text+0x4d11>
140005d05: 48 8b 4c 24 20              	mov	rcx, qword ptr [rsp + 32]
140005d0a: 83 a1 a8 03 00 00 fd        	and	dword ptr [rcx + 936], -3
140005d11: 8b c3                       	mov	eax, ebx
140005d13: 48 83 c4 40                 	add	rsp, 64
140005d17: 5b                          	pop	rbx
140005d18: c3                          	ret
140005d19: cc                          	int3
140005d1a: cc                          	int3
140005d1b: cc                          	int3
140005d1c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140005d21: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140005d26: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140005d2b: 57                          	push	rdi
140005d2c: 48 83 ec 20                 	sub	rsp, 32
140005d30: 48 8d 59 18                 	lea	rbx, [rcx + 24]
140005d34: 48 8b f1                    	mov	rsi, rcx
140005d37: bd 01 01 00 00              	mov	ebp, 257
140005d3c: 48 8b cb                    	mov	rcx, rbx
140005d3f: 44 8b c5                    	mov	r8d, ebp
140005d42: 33 d2                       	xor	edx, edx
140005d44: e8 77 c0 ff ff              	call	0x140001dc0 <.text+0xdc0>
140005d49: 33 c0                       	xor	eax, eax
140005d4b: 48 8d 7e 0c                 	lea	rdi, [rsi + 12]
140005d4f: 48 89 46 04                 	mov	qword ptr [rsi + 4], rax
140005d53: b9 06 00 00 00              	mov	ecx, 6
140005d58: 48 89 86 20 02 00 00        	mov	qword ptr [rsi + 544], rax
140005d5f: 0f b7 c0                    	movzx	eax, ax
140005d62: 66 f3 ab                    	rep		stosw	word ptr es:[rdi], ax
140005d65: 48 8d 3d f4 12 01 00        	lea	rdi, [rip + 70388]      # 0x140017060
140005d6c: 48 2b fe                    	sub	rdi, rsi
140005d6f: 8a 04 1f                    	mov	al, byte ptr [rdi + rbx]
140005d72: 88 03                       	mov	byte ptr [rbx], al
140005d74: 48 ff c3                    	inc	rbx
140005d77: 48 83 ed 01                 	sub	rbp, 1
140005d7b: 75 f2                       	jne	0x140005d6f <.text+0x4d6f>
140005d7d: 48 8d 8e 19 01 00 00        	lea	rcx, [rsi + 281]
140005d84: ba 00 01 00 00              	mov	edx, 256
140005d89: 8a 04 39                    	mov	al, byte ptr [rcx + rdi]
140005d8c: 88 01                       	mov	byte ptr [rcx], al
140005d8e: 48 ff c1                    	inc	rcx
140005d91: 48 83 ea 01                 	sub	rdx, 1
140005d95: 75 f2                       	jne	0x140005d89 <.text+0x4d89>
140005d97: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140005d9c: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
140005da1: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
140005da6: 48 83 c4 20                 	add	rsp, 32
140005daa: 5f                          	pop	rdi
140005dab: c3                          	ret
140005dac: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
140005db1: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140005db6: 55                          	push	rbp
140005db7: 48 8d ac 24 80 f9 ff ff     	lea	rbp, [rsp - 1664]
140005dbf: 48 81 ec 80 07 00 00        	sub	rsp, 1920
140005dc6: 48 8b 05 5b 12 01 00        	mov	rax, qword ptr [rip + 70235] # 0x140017028
140005dcd: 48 33 c4                    	xor	rax, rsp
140005dd0: 48 89 85 70 06 00 00        	mov	qword ptr [rbp + 1648], rax
140005dd7: 48 8b d9                    	mov	rbx, rcx
140005dda: 8b 49 04                    	mov	ecx, dword ptr [rcx + 4]
140005ddd: 81 f9 e9 fd 00 00           	cmp	ecx, 65001
140005de3: 0f 84 3d 01 00 00           	je	0x140005f26 <.text+0x4f26>
140005de9: 48 8d 54 24 50              	lea	rdx, [rsp + 80]
140005dee: ff 15 84 83 00 00           	call	qword ptr [rip + 33668] # 0x14000e178
140005df4: 85 c0                       	test	eax, eax
140005df6: 0f 84 2a 01 00 00           	je	0x140005f26 <.text+0x4f26>
140005dfc: 33 c0                       	xor	eax, eax
140005dfe: 48 8d 4c 24 70              	lea	rcx, [rsp + 112]
140005e03: be 00 01 00 00              	mov	esi, 256
140005e08: 88 01                       	mov	byte ptr [rcx], al
140005e0a: ff c0                       	inc	eax
140005e0c: 48 ff c1                    	inc	rcx
140005e0f: 3b c6                       	cmp	eax, esi
140005e11: 72 f5                       	jb	0x140005e08 <.text+0x4e08>
140005e13: 8a 44 24 56                 	mov	al, byte ptr [rsp + 86]
140005e17: 48 8d 54 24 56              	lea	rdx, [rsp + 86]
140005e1c: c6 44 24 70 20              	mov	byte ptr [rsp + 112], 32
140005e21: eb 20                       	jmp	0x140005e43 <.text+0x4e43>
140005e23: 44 0f b6 42 01              	movzx	r8d, byte ptr [rdx + 1]
140005e28: 0f b6 c8                    	movzx	ecx, al
140005e2b: eb 0b                       	jmp	0x140005e38 <.text+0x4e38>
140005e2d: 3b ce                       	cmp	ecx, esi
140005e2f: 73 0c                       	jae	0x140005e3d <.text+0x4e3d>
140005e31: c6 44 0c 70 20              	mov	byte ptr [rsp + rcx + 112], 32
140005e36: ff c1                       	inc	ecx
140005e38: 41 3b c8                    	cmp	ecx, r8d
140005e3b: 76 f0                       	jbe	0x140005e2d <.text+0x4e2d>
140005e3d: 48 83 c2 02                 	add	rdx, 2
140005e41: 8a 02                       	mov	al, byte ptr [rdx]
140005e43: 84 c0                       	test	al, al
140005e45: 75 dc                       	jne	0x140005e23 <.text+0x4e23>
140005e47: 8b 43 04                    	mov	eax, dword ptr [rbx + 4]
140005e4a: 4c 8d 44 24 70              	lea	r8, [rsp + 112]
140005e4f: 83 64 24 30 00              	and	dword ptr [rsp + 48], 0
140005e54: 44 8b ce                    	mov	r9d, esi
140005e57: 89 44 24 28                 	mov	dword ptr [rsp + 40], eax
140005e5b: ba 01 00 00 00              	mov	edx, 1
140005e60: 48 8d 85 70 02 00 00        	lea	rax, [rbp + 624]
140005e67: 33 c9                       	xor	ecx, ecx
140005e69: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140005e6e: e8 8d 17 00 00              	call	0x140007600 <.text+0x6600>
140005e73: 83 64 24 40 00              	and	dword ptr [rsp + 64], 0
140005e78: 4c 8d 4c 24 70              	lea	r9, [rsp + 112]
140005e7d: 8b 43 04                    	mov	eax, dword ptr [rbx + 4]
140005e80: 44 8b c6                    	mov	r8d, esi
140005e83: 48 8b 93 20 02 00 00        	mov	rdx, qword ptr [rbx + 544]
140005e8a: 33 c9                       	xor	ecx, ecx
140005e8c: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
140005e90: 48 8d 45 70                 	lea	rax, [rbp + 112]
140005e94: 89 74 24 30                 	mov	dword ptr [rsp + 48], esi
140005e98: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
140005e9d: 89 74 24 20                 	mov	dword ptr [rsp + 32], esi
140005ea1: e8 56 3b 00 00              	call	0x1400099fc <.text+0x89fc>
140005ea6: 83 64 24 40 00              	and	dword ptr [rsp + 64], 0
140005eab: 4c 8d 4c 24 70              	lea	r9, [rsp + 112]
140005eb0: 8b 43 04                    	mov	eax, dword ptr [rbx + 4]
140005eb3: 41 b8 00 02 00 00           	mov	r8d, 512
140005eb9: 48 8b 93 20 02 00 00        	mov	rdx, qword ptr [rbx + 544]
140005ec0: 33 c9                       	xor	ecx, ecx
140005ec2: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
140005ec6: 48 8d 85 70 01 00 00        	lea	rax, [rbp + 368]
140005ecd: 89 74 24 30                 	mov	dword ptr [rsp + 48], esi
140005ed1: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
140005ed6: 89 74 24 20                 	mov	dword ptr [rsp + 32], esi
140005eda: e8 1d 3b 00 00              	call	0x1400099fc <.text+0x89fc>
140005edf: b8 01 00 00 00              	mov	eax, 1
140005ee4: 48 8d 95 70 02 00 00        	lea	rdx, [rbp + 624]
140005eeb: f6 02 01                    	test	byte ptr [rdx], 1
140005eee: 74 0b                       	je	0x140005efb <.text+0x4efb>
140005ef0: 80 4c 18 18 10              	or	byte ptr [rax + rbx + 24], 16
140005ef5: 8a 4c 05 6f                 	mov	cl, byte ptr [rbp + rax + 111]
140005ef9: eb 15                       	jmp	0x140005f10 <.text+0x4f10>
140005efb: f6 02 02                    	test	byte ptr [rdx], 2
140005efe: 74 0e                       	je	0x140005f0e <.text+0x4f0e>
140005f00: 80 4c 18 18 20              	or	byte ptr [rax + rbx + 24], 32
140005f05: 8a 8c 05 6f 01 00 00        	mov	cl, byte ptr [rbp + rax + 367]
140005f0c: eb 02                       	jmp	0x140005f10 <.text+0x4f10>
140005f0e: 32 c9                       	xor	cl, cl
140005f10: 88 8c 18 18 01 00 00        	mov	byte ptr [rax + rbx + 280], cl
140005f17: 48 83 c2 02                 	add	rdx, 2
140005f1b: 48 ff c0                    	inc	rax
140005f1e: 48 83 ee 01                 	sub	rsi, 1
140005f22: 75 c7                       	jne	0x140005eeb <.text+0x4eeb>
140005f24: eb 43                       	jmp	0x140005f69 <.text+0x4f69>
140005f26: 33 d2                       	xor	edx, edx
140005f28: be 00 01 00 00              	mov	esi, 256
140005f2d: 8d 4a 01                    	lea	ecx, [rdx + 1]
140005f30: 44 8d 42 9f                 	lea	r8d, [rdx - 97]
140005f34: 41 8d 40 20                 	lea	eax, [r8 + 32]
140005f38: 83 f8 19                    	cmp	eax, 25
140005f3b: 77 0a                       	ja	0x140005f47 <.text+0x4f47>
140005f3d: 80 4c 0b 18 10              	or	byte ptr [rbx + rcx + 24], 16
140005f42: 8d 42 20                    	lea	eax, [rdx + 32]
140005f45: eb 12                       	jmp	0x140005f59 <.text+0x4f59>
140005f47: 41 83 f8 19                 	cmp	r8d, 25
140005f4b: 77 0a                       	ja	0x140005f57 <.text+0x4f57>
140005f4d: 80 4c 0b 18 20              	or	byte ptr [rbx + rcx + 24], 32
140005f52: 8d 42 e0                    	lea	eax, [rdx - 32]
140005f55: eb 02                       	jmp	0x140005f59 <.text+0x4f59>
140005f57: 32 c0                       	xor	al, al
140005f59: 88 84 0b 18 01 00 00        	mov	byte ptr [rbx + rcx + 280], al
140005f60: ff c2                       	inc	edx
140005f62: 48 ff c1                    	inc	rcx
140005f65: 3b d6                       	cmp	edx, esi
140005f67: 72 c7                       	jb	0x140005f30 <.text+0x4f30>
140005f69: 48 8b 8d 70 06 00 00        	mov	rcx, qword ptr [rbp + 1648]
140005f70: 48 33 cc                    	xor	rcx, rsp
140005f73: e8 98 6b 00 00              	call	0x14000cb10 <.text+0xbb10>
140005f78: 4c 8d 9c 24 80 07 00 00     	lea	r11, [rsp + 1920]
140005f80: 49 8b 5b 18                 	mov	rbx, qword ptr [r11 + 24]
140005f84: 49 8b 73 20                 	mov	rsi, qword ptr [r11 + 32]
140005f88: 49 8b e3                    	mov	rsp, r11
140005f8b: 5d                          	pop	rbp
140005f8c: c3                          	ret
140005f8d: cc                          	int3
140005f8e: cc                          	int3
140005f8f: cc                          	int3
140005f90: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140005f95: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140005f9a: 4c 89 44 24 18              	mov	qword ptr [rsp + 24], r8
140005f9f: 55                          	push	rbp
140005fa0: 56                          	push	rsi
140005fa1: 57                          	push	rdi
140005fa2: 48 8b ec                    	mov	rbp, rsp
140005fa5: 48 83 ec 40                 	sub	rsp, 64
140005fa9: 40 8a f2                    	mov	sil, dl
140005fac: 8b d9                       	mov	ebx, ecx
140005fae: 49 8b d1                    	mov	rdx, r9
140005fb1: 49 8b c8                    	mov	rcx, r8
140005fb4: e8 97 01 00 00              	call	0x140006150 <.text+0x5150>
140005fb9: 8b cb                       	mov	ecx, ebx
140005fbb: e8 dc fc ff ff              	call	0x140005c9c <.text+0x4c9c>
140005fc0: 48 8b 4d 30                 	mov	rcx, qword ptr [rbp + 48]
140005fc4: 8b f8                       	mov	edi, eax
140005fc6: 4c 8b 81 88 00 00 00        	mov	r8, qword ptr [rcx + 136]
140005fcd: 41 3b 40 04                 	cmp	eax, dword ptr [r8 + 4]
140005fd1: 75 07                       	jne	0x140005fda <.text+0x4fda>
140005fd3: 33 c0                       	xor	eax, eax
140005fd5: e9 b8 00 00 00              	jmp	0x140006092 <.text+0x5092>
140005fda: b9 28 02 00 00              	mov	ecx, 552
140005fdf: e8 bc 15 00 00              	call	0x1400075a0 <.text+0x65a0>
140005fe4: 48 8b d8                    	mov	rbx, rax
140005fe7: 48 85 c0                    	test	rax, rax
140005fea: 0f 84 95 00 00 00           	je	0x140006085 <.text+0x5085>
140005ff0: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
140005ff4: ba 04 00 00 00              	mov	edx, 4
140005ff9: 48 8b cb                    	mov	rcx, rbx
140005ffc: 48 8b 80 88 00 00 00        	mov	rax, qword ptr [rax + 136]
140006003: 44 8d 42 7c                 	lea	r8d, [rdx + 124]
140006007: 0f 10 00                    	movups	xmm0, xmmword ptr [rax]
14000600a: 0f 11 01                    	movups	xmmword ptr [rcx], xmm0
14000600d: 0f 10 48 10                 	movups	xmm1, xmmword ptr [rax + 16]
140006011: 0f 11 49 10                 	movups	xmmword ptr [rcx + 16], xmm1
140006015: 0f 10 40 20                 	movups	xmm0, xmmword ptr [rax + 32]
140006019: 0f 11 41 20                 	movups	xmmword ptr [rcx + 32], xmm0
14000601d: 0f 10 48 30                 	movups	xmm1, xmmword ptr [rax + 48]
140006021: 0f 11 49 30                 	movups	xmmword ptr [rcx + 48], xmm1
140006025: 0f 10 40 40                 	movups	xmm0, xmmword ptr [rax + 64]
140006029: 0f 11 41 40                 	movups	xmmword ptr [rcx + 64], xmm0
14000602d: 0f 10 48 50                 	movups	xmm1, xmmword ptr [rax + 80]
140006031: 0f 11 49 50                 	movups	xmmword ptr [rcx + 80], xmm1
140006035: 0f 10 40 60                 	movups	xmm0, xmmword ptr [rax + 96]
140006039: 0f 11 41 60                 	movups	xmmword ptr [rcx + 96], xmm0
14000603d: 49 03 c8                    	add	rcx, r8
140006040: 0f 10 48 70                 	movups	xmm1, xmmword ptr [rax + 112]
140006044: 49 03 c0                    	add	rax, r8
140006047: 0f 11 49 f0                 	movups	xmmword ptr [rcx - 16], xmm1
14000604b: 48 83 ea 01                 	sub	rdx, 1
14000604f: 75 b6                       	jne	0x140006007 <.text+0x5007>
140006051: 0f 10 00                    	movups	xmm0, xmmword ptr [rax]
140006054: 0f 11 01                    	movups	xmmword ptr [rcx], xmm0
140006057: 0f 10 48 10                 	movups	xmm1, xmmword ptr [rax + 16]
14000605b: 0f 11 49 10                 	movups	xmmword ptr [rcx + 16], xmm1
14000605f: 48 8b 40 20                 	mov	rax, qword ptr [rax + 32]
140006063: 48 89 41 20                 	mov	qword ptr [rcx + 32], rax
140006067: 8b cf                       	mov	ecx, edi
140006069: 21 13                       	and	dword ptr [rbx], edx
14000606b: 48 8b d3                    	mov	rdx, rbx
14000606e: e8 11 02 00 00              	call	0x140006284 <.text+0x5284>
140006073: 8b f8                       	mov	edi, eax
140006075: 83 f8 ff                    	cmp	eax, -1
140006078: 75 25                       	jne	0x14000609f <.text+0x509f>
14000607a: e8 91 ed ff ff              	call	0x140004e10 <.text+0x3e10>
14000607f: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140006085: 83 cf ff                    	or	edi, -1
140006088: 48 8b cb                    	mov	rcx, rbx
14000608b: e8 18 ee ff ff              	call	0x140004ea8 <.text+0x3ea8>
140006090: 8b c7                       	mov	eax, edi
140006092: 48 8b 5c 24 60              	mov	rbx, qword ptr [rsp + 96]
140006097: 48 83 c4 40                 	add	rsp, 64
14000609b: 5f                          	pop	rdi
14000609c: 5e                          	pop	rsi
14000609d: 5d                          	pop	rbp
14000609e: c3                          	ret
14000609f: 40 84 f6                    	test	sil, sil
1400060a2: 75 05                       	jne	0x1400060a9 <.text+0x50a9>
1400060a4: e8 6f db ff ff              	call	0x140003c18 <.text+0x2c18>
1400060a9: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
1400060ad: 48 8b 88 88 00 00 00        	mov	rcx, qword ptr [rax + 136]
1400060b4: 83 c8 ff                    	or	eax, -1
1400060b7: f0                          	lock
1400060b8: 0f c1 01                    	xadd	dword ptr [rcx], eax
1400060bb: 83 f8 01                    	cmp	eax, 1
1400060be: 75 1c                       	jne	0x1400060dc <.text+0x50dc>
1400060c0: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
1400060c4: 48 8b 88 88 00 00 00        	mov	rcx, qword ptr [rax + 136]
1400060cb: 48 8d 05 8e 0f 01 00        	lea	rax, [rip + 69518]      # 0x140017060
1400060d2: 48 3b c8                    	cmp	rcx, rax
1400060d5: 74 05                       	je	0x1400060dc <.text+0x50dc>
1400060d7: e8 cc ed ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400060dc: c7 03 01 00 00 00           	mov	dword ptr [rbx], 1
1400060e2: 48 8b cb                    	mov	rcx, rbx
1400060e5: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
1400060e9: 33 db                       	xor	ebx, ebx
1400060eb: 48 89 88 88 00 00 00        	mov	qword ptr [rax + 136], rcx
1400060f2: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
1400060f6: 8b 88 a8 03 00 00           	mov	ecx, dword ptr [rax + 936]
1400060fc: 85 0d ae 16 01 00           	test	dword ptr [rip + 71342], ecx # 0x1400177b0
140006102: 75 84                       	jne	0x140006088 <.text+0x5088>
140006104: 48 8d 45 30                 	lea	rax, [rbp + 48]
140006108: 48 89 45 f0                 	mov	qword ptr [rbp - 16], rax
14000610c: 4c 8d 4d e4                 	lea	r9, [rbp - 28]
140006110: 48 8d 45 38                 	lea	rax, [rbp + 56]
140006114: 48 89 45 f8                 	mov	qword ptr [rbp - 8], rax
140006118: 4c 8d 45 f0                 	lea	r8, [rbp - 16]
14000611c: 8d 43 05                    	lea	eax, [rbx + 5]
14000611f: 48 8d 55 e8                 	lea	rdx, [rbp - 24]
140006123: 89 45 e4                    	mov	dword ptr [rbp - 28], eax
140006126: 48 8d 4d e0                 	lea	rcx, [rbp - 32]
14000612a: 89 45 e8                    	mov	dword ptr [rbp - 24], eax
14000612d: e8 ae f9 ff ff              	call	0x140005ae0 <.text+0x4ae0>
140006132: 40 84 f6                    	test	sil, sil
140006135: 0f 84 4d ff ff ff           	je	0x140006088 <.text+0x5088>
14000613b: 48 8b 45 38                 	mov	rax, qword ptr [rbp + 56]
14000613f: 48 8b 08                    	mov	rcx, qword ptr [rax]
140006142: 48 89 0d b7 15 01 00        	mov	qword ptr [rip + 71095], rcx # 0x140017700
140006149: e9 3a ff ff ff              	jmp	0x140006088 <.text+0x5088>
14000614e: cc                          	int3
14000614f: cc                          	int3
140006150: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
140006155: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
14000615a: 57                          	push	rdi
14000615b: 48 83 ec 20                 	sub	rsp, 32
14000615f: 48 8b f2                    	mov	rsi, rdx
140006162: 48 8b f9                    	mov	rdi, rcx
140006165: 8b 05 45 16 01 00           	mov	eax, dword ptr [rip + 71237] # 0x1400177b0
14000616b: 85 81 a8 03 00 00           	test	dword ptr [rcx + 936], eax
140006171: 74 13                       	je	0x140006186 <.text+0x5186>
140006173: 48 83 b9 90 00 00 00 00     	cmp	qword ptr [rcx + 144], 0
14000617b: 74 09                       	je	0x140006186 <.text+0x5186>
14000617d: 48 8b 99 88 00 00 00        	mov	rbx, qword ptr [rcx + 136]
140006184: eb 64                       	jmp	0x1400061ea <.text+0x51ea>
140006186: b9 05 00 00 00              	mov	ecx, 5
14000618b: e8 a4 0a 00 00              	call	0x140006c34 <.text+0x5c34>
140006190: 90                          	nop
140006191: 48 8b 9f 88 00 00 00        	mov	rbx, qword ptr [rdi + 136]
140006198: 48 89 5c 24 30              	mov	qword ptr [rsp + 48], rbx
14000619d: 48 3b 1e                    	cmp	rbx, qword ptr [rsi]
1400061a0: 74 3e                       	je	0x1400061e0 <.text+0x51e0>
1400061a2: 48 85 db                    	test	rbx, rbx
1400061a5: 74 22                       	je	0x1400061c9 <.text+0x51c9>
1400061a7: 83 c8 ff                    	or	eax, -1
1400061aa: f0                          	lock
1400061ab: 0f c1 03                    	xadd	dword ptr [rbx], eax
1400061ae: 83 f8 01                    	cmp	eax, 1
1400061b1: 75 16                       	jne	0x1400061c9 <.text+0x51c9>
1400061b3: 48 8d 05 a6 0e 01 00        	lea	rax, [rip + 69286]      # 0x140017060
1400061ba: 48 8b 4c 24 30              	mov	rcx, qword ptr [rsp + 48]
1400061bf: 48 3b c8                    	cmp	rcx, rax
1400061c2: 74 05                       	je	0x1400061c9 <.text+0x51c9>
1400061c4: e8 df ec ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400061c9: 48 8b 06                    	mov	rax, qword ptr [rsi]
1400061cc: 48 89 87 88 00 00 00        	mov	qword ptr [rdi + 136], rax
1400061d3: 48 89 44 24 30              	mov	qword ptr [rsp + 48], rax
1400061d8: f0                          	lock
1400061d9: ff 00                       	inc	dword ptr [rax]
1400061db: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400061e0: b9 05 00 00 00              	mov	ecx, 5
1400061e5: e8 9e 0a 00 00              	call	0x140006c88 <.text+0x5c88>
1400061ea: 48 85 db                    	test	rbx, rbx
1400061ed: 74 13                       	je	0x140006202 <.text+0x5202>
1400061ef: 48 8b c3                    	mov	rax, rbx
1400061f2: 48 8b 5c 24 38              	mov	rbx, qword ptr [rsp + 56]
1400061f7: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
1400061fc: 48 83 c4 20                 	add	rsp, 32
140006200: 5f                          	pop	rdi
140006201: c3                          	ret
140006202: e8 fd e0 ff ff              	call	0x140004304 <.text+0x3304>
140006207: 90                          	nop
140006208: 48 83 ec 28                 	sub	rsp, 40
14000620c: 80 3d b1 1b 01 00 00        	cmp	byte ptr [rip + 72625], 0 # 0x140017dc4
140006213: 75 4c                       	jne	0x140006261 <.text+0x5261>
140006215: 48 8d 0d 84 11 01 00        	lea	rcx, [rip + 70020]      # 0x1400173a0
14000621c: 48 89 0d 8d 1b 01 00        	mov	qword ptr [rip + 72589], rcx # 0x140017db0
140006223: 48 8d 05 36 0e 01 00        	lea	rax, [rip + 69174]      # 0x140017060
14000622a: 48 8d 0d 5f 10 01 00        	lea	rcx, [rip + 69727]      # 0x140017290
140006231: 48 89 05 80 1b 01 00        	mov	qword ptr [rip + 72576], rax # 0x140017db8
140006238: 48 89 0d 69 1b 01 00        	mov	qword ptr [rip + 72553], rcx # 0x140017da8
14000623f: e8 c4 e6 ff ff              	call	0x140004908 <.text+0x3908>
140006244: 4c 8d 0d 6d 1b 01 00        	lea	r9, [rip + 72557]       # 0x140017db8
14000624b: 4c 8b c0                    	mov	r8, rax
14000624e: b2 01                       	mov	dl, 1
140006250: b9 fd ff ff ff              	mov	ecx, 4294967293
140006255: e8 36 fd ff ff              	call	0x140005f90 <.text+0x4f90>
14000625a: c6 05 63 1b 01 00 01        	mov	byte ptr [rip + 72547], 1 # 0x140017dc4
140006261: b0 01                       	mov	al, 1
140006263: 48 83 c4 28                 	add	rsp, 40
140006267: c3                          	ret
140006268: 48 83 ec 28                 	sub	rsp, 40
14000626c: e8 c3 e5 ff ff              	call	0x140004834 <.text+0x3834>
140006271: 48 8b c8                    	mov	rcx, rax
140006274: 48 8d 15 3d 1b 01 00        	lea	rdx, [rip + 72509]      # 0x140017db8
14000627b: 48 83 c4 28                 	add	rsp, 40
14000627f: e9 cc fe ff ff              	jmp	0x140006150 <.text+0x5150>
140006284: 48 89 5c 24 18              	mov	qword ptr [rsp + 24], rbx
140006289: 55                          	push	rbp
14000628a: 56                          	push	rsi
14000628b: 57                          	push	rdi
14000628c: 41 54                       	push	r12
14000628e: 41 55                       	push	r13
140006290: 41 56                       	push	r14
140006292: 41 57                       	push	r15
140006294: 48 83 ec 40                 	sub	rsp, 64
140006298: 48 8b 05 89 0d 01 00        	mov	rax, qword ptr [rip + 69001] # 0x140017028
14000629f: 48 33 c4                    	xor	rax, rsp
1400062a2: 48 89 44 24 38              	mov	qword ptr [rsp + 56], rax
1400062a7: 48 8b f2                    	mov	rsi, rdx
1400062aa: e8 ed f9 ff ff              	call	0x140005c9c <.text+0x4c9c>
1400062af: 33 db                       	xor	ebx, ebx
1400062b1: 8b f8                       	mov	edi, eax
1400062b3: 85 c0                       	test	eax, eax
1400062b5: 0f 84 53 02 00 00           	je	0x14000650e <.text+0x550e>
1400062bb: 4c 8d 2d ee 11 01 00        	lea	r13, [rip + 70126]      # 0x1400174b0
1400062c2: 44 8b f3                    	mov	r14d, ebx
1400062c5: 49 8b c5                    	mov	rax, r13
1400062c8: 8d 6b 01                    	lea	ebp, [rbx + 1]
1400062cb: 39 38                       	cmp	dword ptr [rax], edi
1400062cd: 0f 84 4e 01 00 00           	je	0x140006421 <.text+0x5421>
1400062d3: 44 03 f5                    	add	r14d, ebp
1400062d6: 48 83 c0 30                 	add	rax, 48
1400062da: 41 83 fe 05                 	cmp	r14d, 5
1400062de: 72 eb                       	jb	0x1400062cb <.text+0x52cb>
1400062e0: 81 ff e8 fd 00 00           	cmp	edi, 65000
1400062e6: 0f 84 2d 01 00 00           	je	0x140006419 <.text+0x5419>
1400062ec: 0f b7 cf                    	movzx	ecx, di
1400062ef: ff 15 6b 7e 00 00           	call	qword ptr [rip + 32363] # 0x14000e160
1400062f5: 85 c0                       	test	eax, eax
1400062f7: 0f 84 1c 01 00 00           	je	0x140006419 <.text+0x5419>
1400062fd: b8 e9 fd 00 00              	mov	eax, 65001
140006302: 3b f8                       	cmp	edi, eax
140006304: 75 2e                       	jne	0x140006334 <.text+0x5334>
140006306: 48 89 46 04                 	mov	qword ptr [rsi + 4], rax
14000630a: 48 89 9e 20 02 00 00        	mov	qword ptr [rsi + 544], rbx
140006311: 89 5e 18                    	mov	dword ptr [rsi + 24], ebx
140006314: 66 89 5e 1c                 	mov	word ptr [rsi + 28], bx
140006318: 48 8d 7e 0c                 	lea	rdi, [rsi + 12]
14000631c: 0f b7 c3                    	movzx	eax, bx
14000631f: b9 06 00 00 00              	mov	ecx, 6
140006324: 66 f3 ab                    	rep		stosw	word ptr es:[rdi], ax
140006327: 48 8b ce                    	mov	rcx, rsi
14000632a: e8 7d fa ff ff              	call	0x140005dac <.text+0x4dac>
14000632f: e9 e2 01 00 00              	jmp	0x140006516 <.text+0x5516>
140006334: 48 8d 54 24 20              	lea	rdx, [rsp + 32]
140006339: 8b cf                       	mov	ecx, edi
14000633b: ff 15 37 7e 00 00           	call	qword ptr [rip + 32311] # 0x14000e178
140006341: 85 c0                       	test	eax, eax
140006343: 0f 84 c4 00 00 00           	je	0x14000640d <.text+0x540d>
140006349: 33 d2                       	xor	edx, edx
14000634b: 48 8d 4e 18                 	lea	rcx, [rsi + 24]
14000634f: 41 b8 01 01 00 00           	mov	r8d, 257
140006355: e8 66 ba ff ff              	call	0x140001dc0 <.text+0xdc0>
14000635a: 83 7c 24 20 02              	cmp	dword ptr [rsp + 32], 2
14000635f: 89 7e 04                    	mov	dword ptr [rsi + 4], edi
140006362: 48 89 9e 20 02 00 00        	mov	qword ptr [rsi + 544], rbx
140006369: 0f 85 94 00 00 00           	jne	0x140006403 <.text+0x5403>
14000636f: 48 8d 4c 24 26              	lea	rcx, [rsp + 38]
140006374: 38 5c 24 26                 	cmp	byte ptr [rsp + 38], bl
140006378: 74 2c                       	je	0x1400063a6 <.text+0x53a6>
14000637a: 38 59 01                    	cmp	byte ptr [rcx + 1], bl
14000637d: 74 27                       	je	0x1400063a6 <.text+0x53a6>
14000637f: 0f b6 41 01                 	movzx	eax, byte ptr [rcx + 1]
140006383: 0f b6 11                    	movzx	edx, byte ptr [rcx]
140006386: 3b d0                       	cmp	edx, eax
140006388: 77 14                       	ja	0x14000639e <.text+0x539e>
14000638a: 2b c2                       	sub	eax, edx
14000638c: 8d 7a 01                    	lea	edi, [rdx + 1]
14000638f: 8d 14 28                    	lea	edx, [rax + rbp]
140006392: 80 4c 37 18 04              	or	byte ptr [rdi + rsi + 24], 4
140006397: 03 fd                       	add	edi, ebp
140006399: 48 2b d5                    	sub	rdx, rbp
14000639c: 75 f4                       	jne	0x140006392 <.text+0x5392>
14000639e: 48 83 c1 02                 	add	rcx, 2
1400063a2: 38 19                       	cmp	byte ptr [rcx], bl
1400063a4: 75 d4                       	jne	0x14000637a <.text+0x537a>
1400063a6: 48 8d 46 1a                 	lea	rax, [rsi + 26]
1400063aa: b9 fe 00 00 00              	mov	ecx, 254
1400063af: 80 08 08                    	or	byte ptr [rax], 8
1400063b2: 48 03 c5                    	add	rax, rbp
1400063b5: 48 2b cd                    	sub	rcx, rbp
1400063b8: 75 f5                       	jne	0x1400063af <.text+0x53af>
1400063ba: 8b 4e 04                    	mov	ecx, dword ptr [rsi + 4]
1400063bd: 81 e9 a4 03 00 00           	sub	ecx, 932
1400063c3: 74 2e                       	je	0x1400063f3 <.text+0x53f3>
1400063c5: 83 e9 04                    	sub	ecx, 4
1400063c8: 74 20                       	je	0x1400063ea <.text+0x53ea>
1400063ca: 83 e9 0d                    	sub	ecx, 13
1400063cd: 74 12                       	je	0x1400063e1 <.text+0x53e1>
1400063cf: 3b cd                       	cmp	ecx, ebp
1400063d1: 74 05                       	je	0x1400063d8 <.text+0x53d8>
1400063d3: 48 8b c3                    	mov	rax, rbx
1400063d6: eb 22                       	jmp	0x1400063fa <.text+0x53fa>
1400063d8: 48 8b 05 d1 91 00 00        	mov	rax, qword ptr [rip + 37329] # 0x14000f5b0
1400063df: eb 19                       	jmp	0x1400063fa <.text+0x53fa>
1400063e1: 48 8b 05 c0 91 00 00        	mov	rax, qword ptr [rip + 37312] # 0x14000f5a8
1400063e8: eb 10                       	jmp	0x1400063fa <.text+0x53fa>
1400063ea: 48 8b 05 af 91 00 00        	mov	rax, qword ptr [rip + 37295] # 0x14000f5a0
1400063f1: eb 07                       	jmp	0x1400063fa <.text+0x53fa>
1400063f3: 48 8b 05 9e 91 00 00        	mov	rax, qword ptr [rip + 37278] # 0x14000f598
1400063fa: 48 89 86 20 02 00 00        	mov	qword ptr [rsi + 544], rax
140006401: eb 02                       	jmp	0x140006405 <.text+0x5405>
140006403: 8b eb                       	mov	ebp, ebx
140006405: 89 6e 08                    	mov	dword ptr [rsi + 8], ebp
140006408: e9 0b ff ff ff              	jmp	0x140006318 <.text+0x5318>
14000640d: 39 1d ad 19 01 00           	cmp	dword ptr [rip + 72109], ebx # 0x140017dc0
140006413: 0f 85 f5 00 00 00           	jne	0x14000650e <.text+0x550e>
140006419: 83 c8 ff                    	or	eax, -1
14000641c: e9 f7 00 00 00              	jmp	0x140006518 <.text+0x5518>
140006421: 33 d2                       	xor	edx, edx
140006423: 48 8d 4e 18                 	lea	rcx, [rsi + 24]
140006427: 41 b8 01 01 00 00           	mov	r8d, 257
14000642d: e8 8e b9 ff ff              	call	0x140001dc0 <.text+0xdc0>
140006432: 41 8b c6                    	mov	eax, r14d
140006435: 4d 8d 4d 10                 	lea	r9, [r13 + 16]
140006439: 4c 8d 3d 60 10 01 00        	lea	r15, [rip + 69728]      # 0x1400174a0
140006440: 41 be 04 00 00 00           	mov	r14d, 4
140006446: 4c 8d 1c 40                 	lea	r11, [rax + 2*rax]
14000644a: 49 c1 e3 04                 	shl	r11, 4
14000644e: 4d 03 cb                    	add	r9, r11
140006451: 49 8b d1                    	mov	rdx, r9
140006454: 41 38 19                    	cmp	byte ptr [r9], bl
140006457: 74 3e                       	je	0x140006497 <.text+0x5497>
140006459: 38 5a 01                    	cmp	byte ptr [rdx + 1], bl
14000645c: 74 39                       	je	0x140006497 <.text+0x5497>
14000645e: 44 0f b6 02                 	movzx	r8d, byte ptr [rdx]
140006462: 0f b6 42 01                 	movzx	eax, byte ptr [rdx + 1]
140006466: 44 3b c0                    	cmp	r8d, eax
140006469: 77 24                       	ja	0x14000648f <.text+0x548f>
14000646b: 45 8d 50 01                 	lea	r10d, [r8 + 1]
14000646f: 41 81 fa 01 01 00 00        	cmp	r10d, 257
140006476: 73 17                       	jae	0x14000648f <.text+0x548f>
140006478: 41 8a 07                    	mov	al, byte ptr [r15]
14000647b: 44 03 c5                    	add	r8d, ebp
14000647e: 41 08 44 32 18              	or	byte ptr [r10 + rsi + 24], al
140006483: 44 03 d5                    	add	r10d, ebp
140006486: 0f b6 42 01                 	movzx	eax, byte ptr [rdx + 1]
14000648a: 44 3b c0                    	cmp	r8d, eax
14000648d: 76 e0                       	jbe	0x14000646f <.text+0x546f>
14000648f: 48 83 c2 02                 	add	rdx, 2
140006493: 38 1a                       	cmp	byte ptr [rdx], bl
140006495: 75 c2                       	jne	0x140006459 <.text+0x5459>
140006497: 49 83 c1 08                 	add	r9, 8
14000649b: 4c 03 fd                    	add	r15, rbp
14000649e: 4c 2b f5                    	sub	r14, rbp
1400064a1: 75 ae                       	jne	0x140006451 <.text+0x5451>
1400064a3: 89 7e 04                    	mov	dword ptr [rsi + 4], edi
1400064a6: 89 6e 08                    	mov	dword ptr [rsi + 8], ebp
1400064a9: 81 ef a4 03 00 00           	sub	edi, 932
1400064af: 74 29                       	je	0x1400064da <.text+0x54da>
1400064b1: 83 ef 04                    	sub	edi, 4
1400064b4: 74 1b                       	je	0x1400064d1 <.text+0x54d1>
1400064b6: 83 ef 0d                    	sub	edi, 13
1400064b9: 74 0d                       	je	0x1400064c8 <.text+0x54c8>
1400064bb: 3b fd                       	cmp	edi, ebp
1400064bd: 75 22                       	jne	0x1400064e1 <.text+0x54e1>
1400064bf: 48 8b 1d ea 90 00 00        	mov	rbx, qword ptr [rip + 37098] # 0x14000f5b0
1400064c6: eb 19                       	jmp	0x1400064e1 <.text+0x54e1>
1400064c8: 48 8b 1d d9 90 00 00        	mov	rbx, qword ptr [rip + 37081] # 0x14000f5a8
1400064cf: eb 10                       	jmp	0x1400064e1 <.text+0x54e1>
1400064d1: 48 8b 1d c8 90 00 00        	mov	rbx, qword ptr [rip + 37064] # 0x14000f5a0
1400064d8: eb 07                       	jmp	0x1400064e1 <.text+0x54e1>
1400064da: 48 8b 1d b7 90 00 00        	mov	rbx, qword ptr [rip + 37047] # 0x14000f598
1400064e1: 4c 2b de                    	sub	r11, rsi
1400064e4: 48 89 9e 20 02 00 00        	mov	qword ptr [rsi + 544], rbx
1400064eb: 48 8d 56 0c                 	lea	rdx, [rsi + 12]
1400064ef: b9 06 00 00 00              	mov	ecx, 6
1400064f4: 4b 8d 3c 2b                 	lea	rdi, [r11 + r13]
1400064f8: 0f b7 44 17 f8              	movzx	eax, word ptr [rdi + rdx - 8]
1400064fd: 66 89 02                    	mov	word ptr [rdx], ax
140006500: 48 8d 52 02                 	lea	rdx, [rdx + 2]
140006504: 48 2b cd                    	sub	rcx, rbp
140006507: 75 ef                       	jne	0x1400064f8 <.text+0x54f8>
140006509: e9 19 fe ff ff              	jmp	0x140006327 <.text+0x5327>
14000650e: 48 8b ce                    	mov	rcx, rsi
140006511: e8 06 f8 ff ff              	call	0x140005d1c <.text+0x4d1c>
140006516: 33 c0                       	xor	eax, eax
140006518: 48 8b 4c 24 38              	mov	rcx, qword ptr [rsp + 56]
14000651d: 48 33 cc                    	xor	rcx, rsp
140006520: e8 eb 65 00 00              	call	0x14000cb10 <.text+0xbb10>
140006525: 48 8b 9c 24 90 00 00 00     	mov	rbx, qword ptr [rsp + 144]
14000652d: 48 83 c4 40                 	add	rsp, 64
140006531: 41 5f                       	pop	r15
140006533: 41 5e                       	pop	r14
140006535: 41 5d                       	pop	r13
140006537: 41 5c                       	pop	r12
140006539: 5f                          	pop	rdi
14000653a: 5e                          	pop	rsi
14000653b: 5d                          	pop	rbp
14000653c: c3                          	ret
14000653d: cc                          	int3
14000653e: cc                          	int3
14000653f: cc                          	int3
140006540: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140006545: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000654a: 57                          	push	rdi
14000654b: 48 83 ec 40                 	sub	rsp, 64
14000654f: 8b da                       	mov	ebx, edx
140006551: 41 8b f9                    	mov	edi, r9d
140006554: 48 8b d1                    	mov	rdx, rcx
140006557: 41 8b f0                    	mov	esi, r8d
14000655a: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
14000655f: e8 00 de ff ff              	call	0x140004364 <.text+0x3364>
140006564: 48 8b 44 24 30              	mov	rax, qword ptr [rsp + 48]
140006569: 0f b6 d3                    	movzx	edx, bl
14000656c: 40 84 7c 02 19              	test	byte ptr [rdx + rax + 25], dil
140006571: 75 1a                       	jne	0x14000658d <.text+0x558d>
140006573: 85 f6                       	test	esi, esi
140006575: 74 10                       	je	0x140006587 <.text+0x5587>
140006577: 48 8b 44 24 28              	mov	rax, qword ptr [rsp + 40]
14000657c: 48 8b 08                    	mov	rcx, qword ptr [rax]
14000657f: 0f b7 04 51                 	movzx	eax, word ptr [rcx + 2*rdx]
140006583: 23 c6                       	and	eax, esi
140006585: eb 02                       	jmp	0x140006589 <.text+0x5589>
140006587: 33 c0                       	xor	eax, eax
140006589: 85 c0                       	test	eax, eax
14000658b: 74 05                       	je	0x140006592 <.text+0x5592>
14000658d: b8 01 00 00 00              	mov	eax, 1
140006592: 80 7c 24 38 00              	cmp	byte ptr [rsp + 56], 0
140006597: 74 0c                       	je	0x1400065a5 <.text+0x55a5>
140006599: 48 8b 4c 24 20              	mov	rcx, qword ptr [rsp + 32]
14000659e: 83 a1 a8 03 00 00 fd        	and	dword ptr [rcx + 936], -3
1400065a5: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
1400065aa: 48 8b 74 24 58              	mov	rsi, qword ptr [rsp + 88]
1400065af: 48 83 c4 40                 	add	rsp, 64
1400065b3: 5f                          	pop	rdi
1400065b4: c3                          	ret
1400065b5: cc                          	int3
1400065b6: cc                          	int3
1400065b7: cc                          	int3
1400065b8: 8b d1                       	mov	edx, ecx
1400065ba: 41 b9 04 00 00 00           	mov	r9d, 4
1400065c0: 33 c9                       	xor	ecx, ecx
1400065c2: 45 33 c0                    	xor	r8d, r8d
1400065c5: e9 76 ff ff ff              	jmp	0x140006540 <.text+0x5540>
1400065ca: cc                          	int3
1400065cb: cc                          	int3
1400065cc: 81 f9 35 c4 00 00           	cmp	ecx, 50229
1400065d2: 77 20                       	ja	0x1400065f4 <.text+0x55f4>
1400065d4: 8d 81 d4 3b ff ff           	lea	eax, [rcx - 50220]
1400065da: 83 f8 09                    	cmp	eax, 9
1400065dd: 77 0c                       	ja	0x1400065eb <.text+0x55eb>
1400065df: 41 ba a7 02 00 00           	mov	r10d, 679
1400065e5: 41 0f a3 c2                 	bt	r10d, eax
1400065e9: 72 05                       	jb	0x1400065f0 <.text+0x55f0>
1400065eb: 83 f9 2a                    	cmp	ecx, 42
1400065ee: 75 2f                       	jne	0x14000661f <.text+0x561f>
1400065f0: 33 d2                       	xor	edx, edx
1400065f2: eb 2b                       	jmp	0x14000661f <.text+0x561f>
1400065f4: 81 f9 98 d6 00 00           	cmp	ecx, 54936
1400065fa: 74 20                       	je	0x14000661c <.text+0x561c>
1400065fc: 81 f9 a9 de 00 00           	cmp	ecx, 57001
140006602: 76 1b                       	jbe	0x14000661f <.text+0x561f>
140006604: 81 f9 b3 de 00 00           	cmp	ecx, 57011
14000660a: 76 e4                       	jbe	0x1400065f0 <.text+0x55f0>
14000660c: 81 f9 e8 fd 00 00           	cmp	ecx, 65000
140006612: 74 dc                       	je	0x1400065f0 <.text+0x55f0>
140006614: 81 f9 e9 fd 00 00           	cmp	ecx, 65001
14000661a: 75 03                       	jne	0x14000661f <.text+0x561f>
14000661c: 83 e2 08                    	and	edx, 8
14000661f: 48 ff 25 5a 7b 00 00        	jmp	qword ptr [rip + 31578] # 0x14000e180
140006626: cc                          	int3
140006627: cc                          	int3
140006628: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000662d: 57                          	push	rdi
14000662e: 8d 81 18 02 ff ff           	lea	eax, [rcx - 65000]
140006634: 45 8b d9                    	mov	r11d, r9d
140006637: 83 f8 01                    	cmp	eax, 1
14000663a: 49 8b d8                    	mov	rbx, r8
14000663d: 41 0f 96 c2                 	setbe	r10b
140006641: 33 ff                       	xor	edi, edi
140006643: 81 f9 35 c4 00 00           	cmp	ecx, 50229
140006649: 77 1c                       	ja	0x140006667 <.text+0x5667>
14000664b: 8d 81 d4 3b ff ff           	lea	eax, [rcx - 50220]
140006651: 83 f8 09                    	cmp	eax, 9
140006654: 77 0c                       	ja	0x140006662 <.text+0x5662>
140006656: 41 b8 a7 02 00 00           	mov	r8d, 679
14000665c: 41 0f a3 c0                 	bt	r8d, eax
140006660: 72 33                       	jb	0x140006695 <.text+0x5695>
140006662: 83 f9 2a                    	cmp	ecx, 42
140006665: eb 26                       	jmp	0x14000668d <.text+0x568d>
140006667: 81 f9 98 d6 00 00           	cmp	ecx, 54936
14000666d: 74 26                       	je	0x140006695 <.text+0x5695>
14000666f: 81 f9 a9 de 00 00           	cmp	ecx, 57001
140006675: 76 18                       	jbe	0x14000668f <.text+0x568f>
140006677: 81 f9 b3 de 00 00           	cmp	ecx, 57011
14000667d: 76 16                       	jbe	0x140006695 <.text+0x5695>
14000667f: 81 f9 e8 fd 00 00           	cmp	ecx, 65000
140006685: 74 0e                       	je	0x140006695 <.text+0x5695>
140006687: 81 f9 e9 fd 00 00           	cmp	ecx, 65001
14000668d: 74 06                       	je	0x140006695 <.text+0x5695>
14000668f: 0f ba f2 07                 	btr	edx, 7
140006693: eb 02                       	jmp	0x140006697 <.text+0x5697>
140006695: 8b d7                       	mov	edx, edi
140006697: 48 8b 44 24 48              	mov	rax, qword ptr [rsp + 72]
14000669c: 45 84 d2                    	test	r10b, r10b
14000669f: 4c 8b 4c 24 40              	mov	r9, qword ptr [rsp + 64]
1400066a4: 4c 8b c0                    	mov	r8, rax
1400066a7: 4c 0f 45 c7                 	cmovne	r8, rdi
1400066ab: 4c 0f 45 cf                 	cmovne	r9, rdi
1400066af: 74 07                       	je	0x1400066b8 <.text+0x56b8>
1400066b1: 48 85 c0                    	test	rax, rax
1400066b4: 74 02                       	je	0x1400066b8 <.text+0x56b8>
1400066b6: 89 38                       	mov	dword ptr [rax], edi
1400066b8: 4c 89 44 24 48              	mov	qword ptr [rsp + 72], r8
1400066bd: 4c 8b c3                    	mov	r8, rbx
1400066c0: 4c 89 4c 24 40              	mov	qword ptr [rsp + 64], r9
1400066c5: 45 8b cb                    	mov	r9d, r11d
1400066c8: 48 8b 5c 24 10              	mov	rbx, qword ptr [rsp + 16]
1400066cd: 5f                          	pop	rdi
1400066ce: 48 ff 25 b3 7a 00 00        	jmp	qword ptr [rip + 31411] # 0x14000e188
1400066d5: cc                          	int3
1400066d6: cc                          	int3
1400066d7: cc                          	int3
1400066d8: 48 8b c4                    	mov	rax, rsp
1400066db: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
1400066df: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
1400066e3: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
1400066e7: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
1400066eb: 41 56                       	push	r14
1400066ed: 48 83 ec 40                 	sub	rsp, 64
1400066f1: ff 15 99 7a 00 00           	call	qword ptr [rip + 31385] # 0x14000e190
1400066f7: 45 33 f6                    	xor	r14d, r14d
1400066fa: 48 8b d8                    	mov	rbx, rax
1400066fd: 48 85 c0                    	test	rax, rax
140006700: 0f 84 a4 00 00 00           	je	0x1400067aa <.text+0x57aa>
140006706: 48 8b f0                    	mov	rsi, rax
140006709: 66 44 39 30                 	cmp	word ptr [rax], r14w
14000670d: 74 1c                       	je	0x14000672b <.text+0x572b>
14000670f: 48 83 c8 ff                 	or	rax, -1
140006713: 48 ff c0                    	inc	rax
140006716: 66 44 39 34 46              	cmp	word ptr [rsi + 2*rax], r14w
14000671b: 75 f6                       	jne	0x140006713 <.text+0x5713>
14000671d: 48 8d 34 46                 	lea	rsi, [rsi + 2*rax]
140006721: 48 83 c6 02                 	add	rsi, 2
140006725: 66 44 39 36                 	cmp	word ptr [rsi], r14w
140006729: 75 e4                       	jne	0x14000670f <.text+0x570f>
14000672b: 4c 89 74 24 38              	mov	qword ptr [rsp + 56], r14
140006730: 48 2b f3                    	sub	rsi, rbx
140006733: 4c 89 74 24 30              	mov	qword ptr [rsp + 48], r14
140006738: 48 83 c6 02                 	add	rsi, 2
14000673c: 48 d1 fe                    	sar	rsi
14000673f: 4c 8b c3                    	mov	r8, rbx
140006742: 44 8b ce                    	mov	r9d, esi
140006745: 44 89 74 24 28              	mov	dword ptr [rsp + 40], r14d
14000674a: 33 d2                       	xor	edx, edx
14000674c: 4c 89 74 24 20              	mov	qword ptr [rsp + 32], r14
140006751: 33 c9                       	xor	ecx, ecx
140006753: e8 d0 fe ff ff              	call	0x140006628 <.text+0x5628>
140006758: 48 63 e8                    	movsxd	rbp, eax
14000675b: 85 c0                       	test	eax, eax
14000675d: 74 4b                       	je	0x1400067aa <.text+0x57aa>
14000675f: 48 8b cd                    	mov	rcx, rbp
140006762: e8 39 0e 00 00              	call	0x1400075a0 <.text+0x65a0>
140006767: 48 8b f8                    	mov	rdi, rax
14000676a: 48 85 c0                    	test	rax, rax
14000676d: 74 2e                       	je	0x14000679d <.text+0x579d>
14000676f: 4c 89 74 24 38              	mov	qword ptr [rsp + 56], r14
140006774: 44 8b ce                    	mov	r9d, esi
140006777: 4c 89 74 24 30              	mov	qword ptr [rsp + 48], r14
14000677c: 4c 8b c3                    	mov	r8, rbx
14000677f: 89 6c 24 28                 	mov	dword ptr [rsp + 40], ebp
140006783: 33 d2                       	xor	edx, edx
140006785: 33 c9                       	xor	ecx, ecx
140006787: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000678c: e8 97 fe ff ff              	call	0x140006628 <.text+0x5628>
140006791: 85 c0                       	test	eax, eax
140006793: 74 08                       	je	0x14000679d <.text+0x579d>
140006795: 48 8b f7                    	mov	rsi, rdi
140006798: 49 8b fe                    	mov	rdi, r14
14000679b: eb 03                       	jmp	0x1400067a0 <.text+0x57a0>
14000679d: 49 8b f6                    	mov	rsi, r14
1400067a0: 48 8b cf                    	mov	rcx, rdi
1400067a3: e8 00 e7 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400067a8: eb 03                       	jmp	0x1400067ad <.text+0x57ad>
1400067aa: 49 8b f6                    	mov	rsi, r14
1400067ad: 48 85 db                    	test	rbx, rbx
1400067b0: 74 09                       	je	0x1400067bb <.text+0x57bb>
1400067b2: 48 8b cb                    	mov	rcx, rbx
1400067b5: ff 15 dd 79 00 00           	call	qword ptr [rip + 31197] # 0x14000e198
1400067bb: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
1400067c0: 48 8b c6                    	mov	rax, rsi
1400067c3: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
1400067c8: 48 8b 6c 24 58              	mov	rbp, qword ptr [rsp + 88]
1400067cd: 48 8b 7c 24 68              	mov	rdi, qword ptr [rsp + 104]
1400067d2: 48 83 c4 40                 	add	rsp, 64
1400067d6: 41 5e                       	pop	r14
1400067d8: c3                          	ret
1400067d9: cc                          	int3
1400067da: cc                          	int3
1400067db: cc                          	int3
1400067dc: 48 89 5c 24 18              	mov	qword ptr [rsp + 24], rbx
1400067e1: 89 54 24 10                 	mov	dword ptr [rsp + 16], edx
1400067e5: 55                          	push	rbp
1400067e6: 56                          	push	rsi
1400067e7: 57                          	push	rdi
1400067e8: 41 54                       	push	r12
1400067ea: 41 55                       	push	r13
1400067ec: 41 56                       	push	r14
1400067ee: 41 57                       	push	r15
1400067f0: 48 83 ec 30                 	sub	rsp, 48
1400067f4: 33 f6                       	xor	esi, esi
1400067f6: 8b da                       	mov	ebx, edx
1400067f8: 4c 8b f9                    	mov	r15, rcx
1400067fb: 48 85 c9                    	test	rcx, rcx
1400067fe: 75 14                       	jne	0x140006814 <.text+0x5814>
140006800: e8 0b e6 ff ff              	call	0x140004e10 <.text+0x3e10>
140006805: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
14000680b: 48 83 c8 ff                 	or	rax, -1
14000680f: e9 bb 02 00 00              	jmp	0x140006acf <.text+0x5acf>
140006814: ba 3d 00 00 00              	mov	edx, 61
140006819: 49 8b ff                    	mov	rdi, r15
14000681c: e8 e7 66 00 00              	call	0x14000cf08 <.text+0xbf08>
140006821: 4c 8b e8                    	mov	r13, rax
140006824: 48 85 c0                    	test	rax, rax
140006827: 0f 84 81 02 00 00           	je	0x140006aae <.text+0x5aae>
14000682d: 49 3b c7                    	cmp	rax, r15
140006830: 0f 84 78 02 00 00           	je	0x140006aae <.text+0x5aae>
140006836: 4c 8b 35 bb 14 01 00        	mov	r14, qword ptr [rip + 70843] # 0x140017cf8
14000683d: 4c 3b 35 cc 14 01 00        	cmp	r14, qword ptr [rip + 70860] # 0x140017d10
140006844: 40 8a 68 01                 	mov	bpl, byte ptr [rax + 1]
140006848: 40 88 6c 24 70              	mov	byte ptr [rsp + 112], bpl
14000684d: 75 12                       	jne	0x140006861 <.text+0x5861>
14000684f: 49 8b ce                    	mov	rcx, r14
140006852: e8 a5 02 00 00              	call	0x140006afc <.text+0x5afc>
140006857: 4c 8b f0                    	mov	r14, rax
14000685a: 48 89 05 97 14 01 00        	mov	qword ptr [rip + 70807], rax # 0x140017cf8
140006861: 41 bc 01 00 00 00           	mov	r12d, 1
140006867: 4d 85 f6                    	test	r14, r14
14000686a: 0f 85 b5 00 00 00           	jne	0x140006925 <.text+0x5925>
140006870: 85 db                       	test	ebx, ebx
140006872: 74 3f                       	je	0x1400068b3 <.text+0x58b3>
140006874: 48 39 35 85 14 01 00        	cmp	qword ptr [rip + 70789], rsi # 0x140017d00
14000687b: 74 36                       	je	0x1400068b3 <.text+0x58b3>
14000687d: e8 56 ce ff ff              	call	0x1400036d8 <.text+0x26d8>
140006882: 48 85 c0                    	test	rax, rax
140006885: 0f 84 23 02 00 00           	je	0x140006aae <.text+0x5aae>
14000688b: 4c 8b 35 66 14 01 00        	mov	r14, qword ptr [rip + 70758] # 0x140017cf8
140006892: 4c 3b 35 77 14 01 00        	cmp	r14, qword ptr [rip + 70775] # 0x140017d10
140006899: 0f 85 81 00 00 00           	jne	0x140006920 <.text+0x5920>
14000689f: 49 8b ce                    	mov	rcx, r14
1400068a2: e8 55 02 00 00              	call	0x140006afc <.text+0x5afc>
1400068a7: 4c 8b f0                    	mov	r14, rax
1400068aa: 48 89 05 47 14 01 00        	mov	qword ptr [rip + 70727], rax # 0x140017cf8
1400068b1: eb 6d                       	jmp	0x140006920 <.text+0x5920>
1400068b3: 40 84 ed                    	test	bpl, bpl
1400068b6: 0f 84 01 02 00 00           	je	0x140006abd <.text+0x5abd>
1400068bc: ba 08 00 00 00              	mov	edx, 8
1400068c1: 49 8b cc                    	mov	rcx, r12
1400068c4: e8 67 e5 ff ff              	call	0x140004e30 <.text+0x3e30>
1400068c9: 33 c9                       	xor	ecx, ecx
1400068cb: 48 89 05 26 14 01 00        	mov	qword ptr [rip + 70694], rax # 0x140017cf8
1400068d2: e8 d1 e5 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400068d7: 4c 8b 35 1a 14 01 00        	mov	r14, qword ptr [rip + 70682] # 0x140017cf8
1400068de: 4d 85 f6                    	test	r14, r14
1400068e1: 75 09                       	jne	0x1400068ec <.text+0x58ec>
1400068e3: 48 83 cd ff                 	or	rbp, -1
1400068e7: e9 d3 01 00 00              	jmp	0x140006abf <.text+0x5abf>
1400068ec: 48 39 35 0d 14 01 00        	cmp	qword ptr [rip + 70669], rsi # 0x140017d00
1400068f3: 75 2b                       	jne	0x140006920 <.text+0x5920>
1400068f5: ba 08 00 00 00              	mov	edx, 8
1400068fa: 49 8b cc                    	mov	rcx, r12
1400068fd: e8 2e e5 ff ff              	call	0x140004e30 <.text+0x3e30>
140006902: 33 c9                       	xor	ecx, ecx
140006904: 48 89 05 f5 13 01 00        	mov	qword ptr [rip + 70645], rax # 0x140017d00
14000690b: e8 98 e5 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140006910: 48 39 35 e9 13 01 00        	cmp	qword ptr [rip + 70633], rsi # 0x140017d00
140006917: 74 ca                       	je	0x1400068e3 <.text+0x58e3>
140006919: 4c 8b 35 d8 13 01 00        	mov	r14, qword ptr [rip + 70616] # 0x140017cf8
140006920: 4d 85 f6                    	test	r14, r14
140006923: 74 be                       	je	0x1400068e3 <.text+0x58e3>
140006925: 49 8b 06                    	mov	rax, qword ptr [r14]
140006928: 4d 8b e5                    	mov	r12, r13
14000692b: 4d 2b e7                    	sub	r12, r15
14000692e: 49 8b de                    	mov	rbx, r14
140006931: 48 85 c0                    	test	rax, rax
140006934: 74 34                       	je	0x14000696a <.text+0x596a>
140006936: 4d 8b c4                    	mov	r8, r12
140006939: 48 8b d0                    	mov	rdx, rax
14000693c: 49 8b cf                    	mov	rcx, r15
14000693f: e8 68 31 00 00              	call	0x140009aac <.text+0x8aac>
140006944: 85 c0                       	test	eax, eax
140006946: 75 10                       	jne	0x140006958 <.text+0x5958>
140006948: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000694b: 41 80 3c 04 3d              	cmp	byte ptr [r12 + rax], 61
140006950: 74 0f                       	je	0x140006961 <.text+0x5961>
140006952: 41 38 34 04                 	cmp	byte ptr [r12 + rax], sil
140006956: 74 09                       	je	0x140006961 <.text+0x5961>
140006958: 48 83 c3 08                 	add	rbx, 8
14000695c: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000695f: eb d0                       	jmp	0x140006931 <.text+0x5931>
140006961: 49 2b de                    	sub	rbx, r14
140006964: 48 c1 fb 03                 	sar	rbx, 3
140006968: eb 0a                       	jmp	0x140006974 <.text+0x5974>
14000696a: 49 2b de                    	sub	rbx, r14
14000696d: 48 c1 fb 03                 	sar	rbx, 3
140006971: 48 f7 db                    	neg	rbx
140006974: 48 85 db                    	test	rbx, rbx
140006977: 78 57                       	js	0x1400069d0 <.text+0x59d0>
140006979: 49 39 36                    	cmp	qword ptr [r14], rsi
14000697c: 74 52                       	je	0x1400069d0 <.text+0x59d0>
14000697e: 49 8b 0c de                 	mov	rcx, qword ptr [r14 + 8*rbx]
140006982: e8 21 e5 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140006987: 40 84 ed                    	test	bpl, bpl
14000698a: 74 15                       	je	0x1400069a1 <.text+0x59a1>
14000698c: 4d 89 3c de                 	mov	qword ptr [r14 + 8*rbx], r15
140006990: e9 95 00 00 00              	jmp	0x140006a2a <.text+0x5a2a>
140006995: 49 8b 44 de 08              	mov	rax, qword ptr [r14 + 8*rbx + 8]
14000699a: 49 89 04 de                 	mov	qword ptr [r14 + 8*rbx], rax
14000699e: 48 ff c3                    	inc	rbx
1400069a1: 49 39 34 de                 	cmp	qword ptr [r14 + 8*rbx], rsi
1400069a5: 75 ee                       	jne	0x140006995 <.text+0x5995>
1400069a7: 41 b8 08 00 00 00           	mov	r8d, 8
1400069ad: 48 8b d3                    	mov	rdx, rbx
1400069b0: 49 8b ce                    	mov	rcx, r14
1400069b3: e8 58 18 00 00              	call	0x140008210 <.text+0x7210>
1400069b8: 33 c9                       	xor	ecx, ecx
1400069ba: 48 8b d8                    	mov	rbx, rax
1400069bd: e8 e6 e4 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400069c2: 48 85 db                    	test	rbx, rbx
1400069c5: 74 66                       	je	0x140006a2d <.text+0x5a2d>
1400069c7: 48 89 1d 2a 13 01 00        	mov	qword ptr [rip + 70442], rbx # 0x140017cf8
1400069ce: eb 5d                       	jmp	0x140006a2d <.text+0x5a2d>
1400069d0: 40 84 ed                    	test	bpl, bpl
1400069d3: 0f 84 e8 00 00 00           	je	0x140006ac1 <.text+0x5ac1>
1400069d9: 48 f7 db                    	neg	rbx
1400069dc: 48 8d 53 02                 	lea	rdx, [rbx + 2]
1400069e0: 48 3b d3                    	cmp	rdx, rbx
1400069e3: 73 09                       	jae	0x1400069ee <.text+0x59ee>
1400069e5: 48 83 cd ff                 	or	rbp, -1
1400069e9: e9 d5 00 00 00              	jmp	0x140006ac3 <.text+0x5ac3>
1400069ee: 48 b8 ff ff ff ff ff ff ff 1f       	movabs	rax, 2305843009213693951
1400069f8: 48 3b d0                    	cmp	rdx, rax
1400069fb: 73 e8                       	jae	0x1400069e5 <.text+0x59e5>
1400069fd: 41 b8 08 00 00 00           	mov	r8d, 8
140006a03: 49 8b ce                    	mov	rcx, r14
140006a06: e8 05 18 00 00              	call	0x140008210 <.text+0x7210>
140006a0b: 33 c9                       	xor	ecx, ecx
140006a0d: 4c 8b f0                    	mov	r14, rax
140006a10: e8 93 e4 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140006a15: 4d 85 f6                    	test	r14, r14
140006a18: 74 cb                       	je	0x1400069e5 <.text+0x59e5>
140006a1a: 4d 89 3c de                 	mov	qword ptr [r14 + 8*rbx], r15
140006a1e: 49 89 74 de 08              	mov	qword ptr [r14 + 8*rbx + 8], rsi
140006a23: 4c 89 35 ce 12 01 00        	mov	qword ptr [rip + 70350], r14 # 0x140017cf8
140006a2a: 48 8b fe                    	mov	rdi, rsi
140006a2d: 39 74 24 78                 	cmp	dword ptr [rsp + 120], esi
140006a31: 0f 84 8e 00 00 00           	je	0x140006ac5 <.text+0x5ac5>
140006a37: 48 83 cd ff                 	or	rbp, -1
140006a3b: 4c 8b f5                    	mov	r14, rbp
140006a3e: 49 ff c6                    	inc	r14
140006a41: 43 38 34 37                 	cmp	byte ptr [r15 + r14], sil
140006a45: 75 f7                       	jne	0x140006a3e <.text+0x5a3e>
140006a47: ba 01 00 00 00              	mov	edx, 1
140006a4c: 49 8d 4e 02                 	lea	rcx, [r14 + 2]
140006a50: e8 db e3 ff ff              	call	0x140004e30 <.text+0x3e30>
140006a55: 48 8b d8                    	mov	rbx, rax
140006a58: 48 85 c0                    	test	rax, rax
140006a5b: 74 47                       	je	0x140006aa4 <.text+0x5aa4>
140006a5d: 4d 8b c7                    	mov	r8, r15
140006a60: 49 8d 56 02                 	lea	rdx, [r14 + 2]
140006a64: 48 8b c8                    	mov	rcx, rax
140006a67: e8 38 d8 ff ff              	call	0x1400042a4 <.text+0x32a4>
140006a6c: 85 c0                       	test	eax, eax
140006a6e: 75 77                       	jne	0x140006ae7 <.text+0x5ae7>
140006a70: 48 8b c3                    	mov	rax, rbx
140006a73: 49 8d 4d 01                 	lea	rcx, [r13 + 1]
140006a77: 49 2b c7                    	sub	rax, r15
140006a7a: 48 03 c8                    	add	rcx, rax
140006a7d: f6 5c 24 70                 	neg	byte ptr [rsp + 112]
140006a81: 48 1b d2                    	sbb	rdx, rdx
140006a84: 48 23 d1                    	and	rdx, rcx
140006a87: 40 88 71 ff                 	mov	byte ptr [rcx - 1], sil
140006a8b: 48 8b cb                    	mov	rcx, rbx
140006a8e: e8 31 31 00 00              	call	0x140009bc4 <.text+0x8bc4>
140006a93: 85 c0                       	test	eax, eax
140006a95: 75 0d                       	jne	0x140006aa4 <.text+0x5aa4>
140006a97: e8 74 e3 ff ff              	call	0x140004e10 <.text+0x3e10>
140006a9c: 8b f5                       	mov	esi, ebp
140006a9e: c7 00 2a 00 00 00           	mov	dword ptr [rax], 42
140006aa4: 48 8b cb                    	mov	rcx, rbx
140006aa7: e8 fc e3 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140006aac: eb 17                       	jmp	0x140006ac5 <.text+0x5ac5>
140006aae: e8 5d e3 ff ff              	call	0x140004e10 <.text+0x3e10>
140006ab3: 48 83 ce ff                 	or	rsi, -1
140006ab7: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140006abd: 8b ee                       	mov	ebp, esi
140006abf: 8b f5                       	mov	esi, ebp
140006ac1: 8b ee                       	mov	ebp, esi
140006ac3: 8b f5                       	mov	esi, ebp
140006ac5: 48 8b cf                    	mov	rcx, rdi
140006ac8: e8 db e3 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140006acd: 8b c6                       	mov	eax, esi
140006acf: 48 8b 9c 24 80 00 00 00     	mov	rbx, qword ptr [rsp + 128]
140006ad7: 48 83 c4 30                 	add	rsp, 48
140006adb: 41 5f                       	pop	r15
140006add: 41 5e                       	pop	r14
140006adf: 41 5d                       	pop	r13
140006ae1: 41 5c                       	pop	r12
140006ae3: 5f                          	pop	rdi
140006ae4: 5e                          	pop	rsi
140006ae5: 5d                          	pop	rbp
140006ae6: c3                          	ret
140006ae7: 45 33 c9                    	xor	r9d, r9d
140006aea: 48 89 74 24 20              	mov	qword ptr [rsp + 32], rsi
140006aef: 45 33 c0                    	xor	r8d, r8d
140006af2: 33 d2                       	xor	edx, edx
140006af4: 33 c9                       	xor	ecx, ecx
140006af6: e8 15 e2 ff ff              	call	0x140004d10 <.text+0x3d10>
140006afb: cc                          	int3
140006afc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140006b01: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
140006b06: 48 89 7c 24 18              	mov	qword ptr [rsp + 24], rdi
140006b0b: 41 56                       	push	r14
140006b0d: 48 83 ec 30                 	sub	rsp, 48
140006b11: 48 8b f9                    	mov	rdi, rcx
140006b14: 48 85 c9                    	test	rcx, rcx
140006b17: 75 18                       	jne	0x140006b31 <.text+0x5b31>
140006b19: 33 c0                       	xor	eax, eax
140006b1b: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140006b20: 48 8b 74 24 48              	mov	rsi, qword ptr [rsp + 72]
140006b25: 48 8b 7c 24 50              	mov	rdi, qword ptr [rsp + 80]
140006b2a: 48 83 c4 30                 	add	rsp, 48
140006b2e: 41 5e                       	pop	r14
140006b30: c3                          	ret
140006b31: 33 c9                       	xor	ecx, ecx
140006b33: 48 8b c7                    	mov	rax, rdi
140006b36: 48 39 0f                    	cmp	qword ptr [rdi], rcx
140006b39: 74 0d                       	je	0x140006b48 <.text+0x5b48>
140006b3b: 48 ff c1                    	inc	rcx
140006b3e: 48 8d 40 08                 	lea	rax, [rax + 8]
140006b42: 48 83 38 00                 	cmp	qword ptr [rax], 0
140006b46: 75 f3                       	jne	0x140006b3b <.text+0x5b3b>
140006b48: 48 ff c1                    	inc	rcx
140006b4b: ba 08 00 00 00              	mov	edx, 8
140006b50: e8 db e2 ff ff              	call	0x140004e30 <.text+0x3e30>
140006b55: 48 8b d8                    	mov	rbx, rax
140006b58: 48 85 c0                    	test	rax, rax
140006b5b: 74 7e                       	je	0x140006bdb <.text+0x5bdb>
140006b5d: 48 8b 07                    	mov	rax, qword ptr [rdi]
140006b60: 48 85 c0                    	test	rax, rax
140006b63: 74 51                       	je	0x140006bb6 <.text+0x5bb6>
140006b65: 4c 8b f3                    	mov	r14, rbx
140006b68: 4c 2b f7                    	sub	r14, rdi
140006b6b: 48 83 ce ff                 	or	rsi, -1
140006b6f: 48 ff c6                    	inc	rsi
140006b72: 80 3c 30 00                 	cmp	byte ptr [rax + rsi], 0
140006b76: 75 f7                       	jne	0x140006b6f <.text+0x5b6f>
140006b78: ba 01 00 00 00              	mov	edx, 1
140006b7d: 48 8d 4e 01                 	lea	rcx, [rsi + 1]
140006b81: e8 aa e2 ff ff              	call	0x140004e30 <.text+0x3e30>
140006b86: 33 c9                       	xor	ecx, ecx
140006b88: 49 89 04 3e                 	mov	qword ptr [r14 + rdi], rax
140006b8c: e8 17 e3 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140006b91: 49 8b 0c 3e                 	mov	rcx, qword ptr [r14 + rdi]
140006b95: 48 85 c9                    	test	rcx, rcx
140006b98: 74 41                       	je	0x140006bdb <.text+0x5bdb>
140006b9a: 4c 8b 07                    	mov	r8, qword ptr [rdi]
140006b9d: 48 8d 56 01                 	lea	rdx, [rsi + 1]
140006ba1: e8 fe d6 ff ff              	call	0x1400042a4 <.text+0x32a4>
140006ba6: 85 c0                       	test	eax, eax
140006ba8: 75 1b                       	jne	0x140006bc5 <.text+0x5bc5>
140006baa: 48 83 c7 08                 	add	rdi, 8
140006bae: 48 8b 07                    	mov	rax, qword ptr [rdi]
140006bb1: 48 85 c0                    	test	rax, rax
140006bb4: 75 b5                       	jne	0x140006b6b <.text+0x5b6b>
140006bb6: 33 c9                       	xor	ecx, ecx
140006bb8: e8 eb e2 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140006bbd: 48 8b c3                    	mov	rax, rbx
140006bc0: e9 56 ff ff ff              	jmp	0x140006b1b <.text+0x5b1b>
140006bc5: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
140006bcb: 45 33 c9                    	xor	r9d, r9d
140006bce: 45 33 c0                    	xor	r8d, r8d
140006bd1: 33 d2                       	xor	edx, edx
140006bd3: 33 c9                       	xor	ecx, ecx
140006bd5: e8 36 e1 ff ff              	call	0x140004d10 <.text+0x3d10>
140006bda: cc                          	int3
140006bdb: e8 24 d7 ff ff              	call	0x140004304 <.text+0x3304>
140006be0: cc                          	int3
140006be1: cc                          	int3
140006be2: cc                          	int3
140006be3: cc                          	int3
140006be4: e9 f3 fb ff ff              	jmp	0x1400067dc <.text+0x57dc>
140006be9: cc                          	int3
140006bea: cc                          	int3
140006beb: cc                          	int3
140006bec: 40 53                       	push	rbx
140006bee: 48 83 ec 20                 	sub	rsp, 32
140006bf2: 33 db                       	xor	ebx, ebx
140006bf4: 48 8d 15 d5 11 01 00        	lea	rdx, [rip + 70101]      # 0x140017dd0
140006bfb: 45 33 c0                    	xor	r8d, r8d
140006bfe: 48 8d 0c 9b                 	lea	rcx, [rbx + 4*rbx]
140006c02: 48 8d 0c ca                 	lea	rcx, [rdx + 8*rcx]
140006c06: ba a0 0f 00 00              	mov	edx, 4000
140006c0b: e8 f8 13 00 00              	call	0x140008008 <.text+0x7008>
140006c10: 85 c0                       	test	eax, eax
140006c12: 74 11                       	je	0x140006c25 <.text+0x5c25>
140006c14: ff 05 e6 13 01 00           	inc	dword ptr [rip + 70630] # 0x140018000
140006c1a: ff c3                       	inc	ebx
140006c1c: 83 fb 0e                    	cmp	ebx, 14
140006c1f: 72 d3                       	jb	0x140006bf4 <.text+0x5bf4>
140006c21: b0 01                       	mov	al, 1
140006c23: eb 09                       	jmp	0x140006c2e <.text+0x5c2e>
140006c25: 33 c9                       	xor	ecx, ecx
140006c27: e8 24 00 00 00              	call	0x140006c50 <.text+0x5c50>
140006c2c: 32 c0                       	xor	al, al
140006c2e: 48 83 c4 20                 	add	rsp, 32
140006c32: 5b                          	pop	rbx
140006c33: c3                          	ret
140006c34: 48 63 c1                    	movsxd	rax, ecx
140006c37: 48 8d 0c 80                 	lea	rcx, [rax + 4*rax]
140006c3b: 48 8d 05 8e 11 01 00        	lea	rax, [rip + 70030]      # 0x140017dd0
140006c42: 48 8d 0c c8                 	lea	rcx, [rax + 8*rcx]
140006c46: 48 ff 25 43 74 00 00        	jmp	qword ptr [rip + 29763] # 0x14000e090
140006c4d: cc                          	int3
140006c4e: cc                          	int3
140006c4f: cc                          	int3
140006c50: 40 53                       	push	rbx
140006c52: 48 83 ec 20                 	sub	rsp, 32
140006c56: 8b 1d a4 13 01 00           	mov	ebx, dword ptr [rip + 70564] # 0x140018000
140006c5c: eb 1d                       	jmp	0x140006c7b <.text+0x5c7b>
140006c5e: 48 8d 05 6b 11 01 00        	lea	rax, [rip + 69995]      # 0x140017dd0
140006c65: ff cb                       	dec	ebx
140006c67: 48 8d 0c 9b                 	lea	rcx, [rbx + 4*rbx]
140006c6b: 48 8d 0c c8                 	lea	rcx, [rax + 8*rcx]
140006c6f: ff 15 2b 74 00 00           	call	qword ptr [rip + 29739] # 0x14000e0a0
140006c75: ff 0d 85 13 01 00           	dec	dword ptr [rip + 70533] # 0x140018000
140006c7b: 85 db                       	test	ebx, ebx
140006c7d: 75 df                       	jne	0x140006c5e <.text+0x5c5e>
140006c7f: b0 01                       	mov	al, 1
140006c81: 48 83 c4 20                 	add	rsp, 32
140006c85: 5b                          	pop	rbx
140006c86: c3                          	ret
140006c87: cc                          	int3
140006c88: 48 63 c1                    	movsxd	rax, ecx
140006c8b: 48 8d 0c 80                 	lea	rcx, [rax + 4*rax]
140006c8f: 48 8d 05 3a 11 01 00        	lea	rax, [rip + 69946]      # 0x140017dd0
140006c96: 48 8d 0c c8                 	lea	rcx, [rax + 8*rcx]
140006c9a: 48 ff 25 f7 73 00 00        	jmp	qword ptr [rip + 29687] # 0x14000e098
140006ca1: cc                          	int3
140006ca2: cc                          	int3
140006ca3: cc                          	int3
140006ca4: 40 53                       	push	rbx
140006ca6: 48 83 ec 20                 	sub	rsp, 32
140006caa: 33 db                       	xor	ebx, ebx
140006cac: 89 5c 24 30                 	mov	dword ptr [rsp + 48], ebx
140006cb0: 65 48 8b 04 25 60 00 00 00  	mov	rax, qword ptr gs:[96]
140006cb9: 48 8b 48 20                 	mov	rcx, qword ptr [rax + 32]
140006cbd: 39 59 08                    	cmp	dword ptr [rcx + 8], ebx
140006cc0: 7c 11                       	jl	0x140006cd3 <.text+0x5cd3>
140006cc2: 48 8d 4c 24 30              	lea	rcx, [rsp + 48]
140006cc7: e8 a8 10 00 00              	call	0x140007d74 <.text+0x6d74>
140006ccc: 83 7c 24 30 01              	cmp	dword ptr [rsp + 48], 1
140006cd1: 74 05                       	je	0x140006cd8 <.text+0x5cd8>
140006cd3: bb 01 00 00 00              	mov	ebx, 1
140006cd8: 8b c3                       	mov	eax, ebx
140006cda: 48 83 c4 20                 	add	rsp, 32
140006cde: 5b                          	pop	rbx
140006cdf: c3                          	ret
140006ce0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140006ce5: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140006cea: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140006cef: 57                          	push	rdi
140006cf0: 48 83 ec 20                 	sub	rsp, 32
140006cf4: ba 48 00 00 00              	mov	edx, 72
140006cf9: 8d 4a f8                    	lea	ecx, [rdx - 8]
140006cfc: e8 2f e1 ff ff              	call	0x140004e30 <.text+0x3e30>
140006d01: 33 f6                       	xor	esi, esi
140006d03: 48 8b d8                    	mov	rbx, rax
140006d06: 48 85 c0                    	test	rax, rax
140006d09: 74 5b                       	je	0x140006d66 <.text+0x5d66>
140006d0b: 48 8d a8 00 12 00 00        	lea	rbp, [rax + 4608]
140006d12: 48 3b c5                    	cmp	rax, rbp
140006d15: 74 4c                       	je	0x140006d63 <.text+0x5d63>
140006d17: 48 8d 78 30                 	lea	rdi, [rax + 48]
140006d1b: 48 8d 4f d0                 	lea	rcx, [rdi - 48]
140006d1f: 45 33 c0                    	xor	r8d, r8d
140006d22: ba a0 0f 00 00              	mov	edx, 4000
140006d27: e8 dc 12 00 00              	call	0x140008008 <.text+0x7008>
140006d2c: 48 83 4f f8 ff              	or	qword ptr [rdi - 8], -1
140006d31: 48 8d 4f 0e                 	lea	rcx, [rdi + 14]
140006d35: 80 67 0d f8                 	and	byte ptr [rdi + 13], -8
140006d39: 8b c6                       	mov	eax, esi
140006d3b: 48 89 37                    	mov	qword ptr [rdi], rsi
140006d3e: c7 47 08 00 00 0a 0a        	mov	dword ptr [rdi + 8], 168427520
140006d45: c6 47 0c 0a                 	mov	byte ptr [rdi + 12], 10
140006d49: 40 88 31                    	mov	byte ptr [rcx], sil
140006d4c: ff c0                       	inc	eax
140006d4e: 48 ff c1                    	inc	rcx
140006d51: 83 f8 05                    	cmp	eax, 5
140006d54: 72 f3                       	jb	0x140006d49 <.text+0x5d49>
140006d56: 48 83 c7 48                 	add	rdi, 72
140006d5a: 48 8d 47 d0                 	lea	rax, [rdi - 48]
140006d5e: 48 3b c5                    	cmp	rax, rbp
140006d61: 75 b8                       	jne	0x140006d1b <.text+0x5d1b>
140006d63: 48 8b f3                    	mov	rsi, rbx
140006d66: 33 c9                       	xor	ecx, ecx
140006d68: e8 3b e1 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140006d6d: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140006d72: 48 8b c6                    	mov	rax, rsi
140006d75: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
140006d7a: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
140006d7f: 48 83 c4 20                 	add	rsp, 32
140006d83: 5f                          	pop	rdi
140006d84: c3                          	ret
140006d85: cc                          	int3
140006d86: cc                          	int3
140006d87: cc                          	int3
140006d88: 48 85 c9                    	test	rcx, rcx
140006d8b: 74 4a                       	je	0x140006dd7 <.text+0x5dd7>
140006d8d: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140006d92: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
140006d97: 57                          	push	rdi
140006d98: 48 83 ec 20                 	sub	rsp, 32
140006d9c: 48 8d b1 00 12 00 00        	lea	rsi, [rcx + 4608]
140006da3: 48 8b d9                    	mov	rbx, rcx
140006da6: 48 8b f9                    	mov	rdi, rcx
140006da9: 48 3b ce                    	cmp	rcx, rsi
140006dac: 74 12                       	je	0x140006dc0 <.text+0x5dc0>
140006dae: 48 8b cf                    	mov	rcx, rdi
140006db1: ff 15 e9 72 00 00           	call	qword ptr [rip + 29417] # 0x14000e0a0
140006db7: 48 83 c7 48                 	add	rdi, 72
140006dbb: 48 3b fe                    	cmp	rdi, rsi
140006dbe: 75 ee                       	jne	0x140006dae <.text+0x5dae>
140006dc0: 48 8b cb                    	mov	rcx, rbx
140006dc3: e8 e0 e0 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140006dc8: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140006dcd: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
140006dd2: 48 83 c4 20                 	add	rsp, 32
140006dd6: 5f                          	pop	rdi
140006dd7: c3                          	ret
140006dd8: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140006ddd: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
140006de2: 48 89 7c 24 18              	mov	qword ptr [rsp + 24], rdi
140006de7: 41 57                       	push	r15
140006de9: 48 83 ec 30                 	sub	rsp, 48
140006ded: 8b f1                       	mov	esi, ecx
140006def: 81 f9 00 20 00 00           	cmp	ecx, 8192
140006df5: 72 29                       	jb	0x140006e20 <.text+0x5e20>
140006df7: e8 14 e0 ff ff              	call	0x140004e10 <.text+0x3e10>
140006dfc: bb 09 00 00 00              	mov	ebx, 9
140006e01: 89 18                       	mov	dword ptr [rax], ebx
140006e03: e8 e8 de ff ff              	call	0x140004cf0 <.text+0x3cf0>
140006e08: 8b c3                       	mov	eax, ebx
140006e0a: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140006e0f: 48 8b 74 24 48              	mov	rsi, qword ptr [rsp + 72]
140006e14: 48 8b 7c 24 50              	mov	rdi, qword ptr [rsp + 80]
140006e19: 48 83 c4 30                 	add	rsp, 48
140006e1d: 41 5f                       	pop	r15
140006e1f: c3                          	ret
140006e20: 33 ff                       	xor	edi, edi
140006e22: 8d 4f 07                    	lea	ecx, [rdi + 7]
140006e25: e8 0a fe ff ff              	call	0x140006c34 <.text+0x5c34>
140006e2a: 90                          	nop
140006e2b: 8b df                       	mov	ebx, edi
140006e2d: 8b 05 dd 15 01 00           	mov	eax, dword ptr [rip + 71133] # 0x140018410
140006e33: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140006e38: 3b f0                       	cmp	esi, eax
140006e3a: 7c 36                       	jl	0x140006e72 <.text+0x5e72>
140006e3c: 4c 8d 3d cd 11 01 00        	lea	r15, [rip + 70093]      # 0x140018010
140006e43: 49 39 3c df                 	cmp	qword ptr [r15 + 8*rbx], rdi
140006e47: 74 02                       	je	0x140006e4b <.text+0x5e4b>
140006e49: eb 22                       	jmp	0x140006e6d <.text+0x5e6d>
140006e4b: e8 90 fe ff ff              	call	0x140006ce0 <.text+0x5ce0>
140006e50: 49 89 04 df                 	mov	qword ptr [r15 + 8*rbx], rax
140006e54: 48 85 c0                    	test	rax, rax
140006e57: 75 05                       	jne	0x140006e5e <.text+0x5e5e>
140006e59: 8d 78 0c                    	lea	edi, [rax + 12]
140006e5c: eb 14                       	jmp	0x140006e72 <.text+0x5e72>
140006e5e: 8b 05 ac 15 01 00           	mov	eax, dword ptr [rip + 71084] # 0x140018410
140006e64: 83 c0 40                    	add	eax, 64
140006e67: 89 05 a3 15 01 00           	mov	dword ptr [rip + 71075], eax # 0x140018410
140006e6d: 48 ff c3                    	inc	rbx
140006e70: eb c1                       	jmp	0x140006e33 <.text+0x5e33>
140006e72: b9 07 00 00 00              	mov	ecx, 7
140006e77: e8 0c fe ff ff              	call	0x140006c88 <.text+0x5c88>
140006e7c: 8b c7                       	mov	eax, edi
140006e7e: eb 8a                       	jmp	0x140006e0a <.text+0x5e0a>
140006e80: 48 63 d1                    	movsxd	rdx, ecx
140006e83: 4c 8d 05 86 11 01 00        	lea	r8, [rip + 70022]       # 0x140018010
140006e8a: 48 8b c2                    	mov	rax, rdx
140006e8d: 83 e2 3f                    	and	edx, 63
140006e90: 48 c1 f8 06                 	sar	rax, 6
140006e94: 48 8d 0c d2                 	lea	rcx, [rdx + 8*rdx]
140006e98: 49 8b 04 c0                 	mov	rax, qword ptr [r8 + 8*rax]
140006e9c: 48 8d 0c c8                 	lea	rcx, [rax + 8*rcx]
140006ea0: 48 ff 25 e9 71 00 00        	jmp	qword ptr [rip + 29161] # 0x14000e090
140006ea7: cc                          	int3
140006ea8: 48 63 d1                    	movsxd	rdx, ecx
140006eab: 4c 8d 05 5e 11 01 00        	lea	r8, [rip + 69982]       # 0x140018010
140006eb2: 48 8b c2                    	mov	rax, rdx
140006eb5: 83 e2 3f                    	and	edx, 63
140006eb8: 48 c1 f8 06                 	sar	rax, 6
140006ebc: 48 8d 0c d2                 	lea	rcx, [rdx + 8*rdx]
140006ec0: 49 8b 04 c0                 	mov	rax, qword ptr [r8 + 8*rax]
140006ec4: 48 8d 0c c8                 	lea	rcx, [rax + 8*rcx]
140006ec8: 48 ff 25 c9 71 00 00        	jmp	qword ptr [rip + 29129] # 0x14000e098
140006ecf: cc                          	int3
140006ed0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140006ed5: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
140006eda: 48 89 7c 24 18              	mov	qword ptr [rsp + 24], rdi
140006edf: 41 56                       	push	r14
140006ee1: 48 83 ec 20                 	sub	rsp, 32
140006ee5: 48 63 d9                    	movsxd	rbx, ecx
140006ee8: 85 c9                       	test	ecx, ecx
140006eea: 78 72                       	js	0x140006f5e <.text+0x5f5e>
140006eec: 3b 1d 1e 15 01 00           	cmp	ebx, dword ptr [rip + 70942] # 0x140018410
140006ef2: 73 6a                       	jae	0x140006f5e <.text+0x5f5e>
140006ef4: 48 8b c3                    	mov	rax, rbx
140006ef7: 4c 8d 35 12 11 01 00        	lea	r14, [rip + 69906]      # 0x140018010
140006efe: 83 e0 3f                    	and	eax, 63
140006f01: 48 8b f3                    	mov	rsi, rbx
140006f04: 48 c1 fe 06                 	sar	rsi, 6
140006f08: 48 8d 3c c0                 	lea	rdi, [rax + 8*rax]
140006f0c: 49 8b 04 f6                 	mov	rax, qword ptr [r14 + 8*rsi]
140006f10: f6 44 f8 38 01              	test	byte ptr [rax + 8*rdi + 56], 1
140006f15: 74 47                       	je	0x140006f5e <.text+0x5f5e>
140006f17: 48 83 7c f8 28 ff           	cmp	qword ptr [rax + 8*rdi + 40], -1
140006f1d: 74 3f                       	je	0x140006f5e <.text+0x5f5e>
140006f1f: e8 b8 c0 ff ff              	call	0x140002fdc <.text+0x1fdc>
140006f24: 83 f8 01                    	cmp	eax, 1
140006f27: 75 27                       	jne	0x140006f50 <.text+0x5f50>
140006f29: 85 db                       	test	ebx, ebx
140006f2b: 74 16                       	je	0x140006f43 <.text+0x5f43>
140006f2d: 2b d8                       	sub	ebx, eax
140006f2f: 74 0b                       	je	0x140006f3c <.text+0x5f3c>
140006f31: 3b d8                       	cmp	ebx, eax
140006f33: 75 1b                       	jne	0x140006f50 <.text+0x5f50>
140006f35: b9 f4 ff ff ff              	mov	ecx, 4294967284
140006f3a: eb 0c                       	jmp	0x140006f48 <.text+0x5f48>
140006f3c: b9 f5 ff ff ff              	mov	ecx, 4294967285
140006f41: eb 05                       	jmp	0x140006f48 <.text+0x5f48>
140006f43: b9 f6 ff ff ff              	mov	ecx, 4294967286
140006f48: 33 d2                       	xor	edx, edx
140006f4a: ff 15 58 72 00 00           	call	qword ptr [rip + 29272] # 0x14000e1a8
140006f50: 49 8b 04 f6                 	mov	rax, qword ptr [r14 + 8*rsi]
140006f54: 48 83 4c f8 28 ff           	or	qword ptr [rax + 8*rdi + 40], -1
140006f5a: 33 c0                       	xor	eax, eax
140006f5c: eb 16                       	jmp	0x140006f74 <.text+0x5f74>
140006f5e: e8 ad de ff ff              	call	0x140004e10 <.text+0x3e10>
140006f63: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
140006f69: e8 82 de ff ff              	call	0x140004df0 <.text+0x3df0>
140006f6e: 83 20 00                    	and	dword ptr [rax], 0
140006f71: 83 c8 ff                    	or	eax, -1
140006f74: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140006f79: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
140006f7e: 48 8b 7c 24 40              	mov	rdi, qword ptr [rsp + 64]
140006f83: 48 83 c4 20                 	add	rsp, 32
140006f87: 41 5e                       	pop	r14
140006f89: c3                          	ret
140006f8a: cc                          	int3
140006f8b: cc                          	int3
140006f8c: 48 83 ec 28                 	sub	rsp, 40
140006f90: 83 f9 fe                    	cmp	ecx, -2
140006f93: 75 15                       	jne	0x140006faa <.text+0x5faa>
140006f95: e8 56 de ff ff              	call	0x140004df0 <.text+0x3df0>
140006f9a: 83 20 00                    	and	dword ptr [rax], 0
140006f9d: e8 6e de ff ff              	call	0x140004e10 <.text+0x3e10>
140006fa2: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
140006fa8: eb 4e                       	jmp	0x140006ff8 <.text+0x5ff8>
140006faa: 85 c9                       	test	ecx, ecx
140006fac: 78 32                       	js	0x140006fe0 <.text+0x5fe0>
140006fae: 3b 0d 5c 14 01 00           	cmp	ecx, dword ptr [rip + 70748] # 0x140018410
140006fb4: 73 2a                       	jae	0x140006fe0 <.text+0x5fe0>
140006fb6: 48 63 c9                    	movsxd	rcx, ecx
140006fb9: 4c 8d 05 50 10 01 00        	lea	r8, [rip + 69712]       # 0x140018010
140006fc0: 48 8b c1                    	mov	rax, rcx
140006fc3: 83 e1 3f                    	and	ecx, 63
140006fc6: 48 c1 f8 06                 	sar	rax, 6
140006fca: 48 8d 14 c9                 	lea	rdx, [rcx + 8*rcx]
140006fce: 49 8b 04 c0                 	mov	rax, qword ptr [r8 + 8*rax]
140006fd2: f6 44 d0 38 01              	test	byte ptr [rax + 8*rdx + 56], 1
140006fd7: 74 07                       	je	0x140006fe0 <.text+0x5fe0>
140006fd9: 48 8b 44 d0 28              	mov	rax, qword ptr [rax + 8*rdx + 40]
140006fde: eb 1c                       	jmp	0x140006ffc <.text+0x5ffc>
140006fe0: e8 0b de ff ff              	call	0x140004df0 <.text+0x3df0>
140006fe5: 83 20 00                    	and	dword ptr [rax], 0
140006fe8: e8 23 de ff ff              	call	0x140004e10 <.text+0x3e10>
140006fed: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
140006ff3: e8 f8 dc ff ff              	call	0x140004cf0 <.text+0x3cf0>
140006ff8: 48 83 c8 ff                 	or	rax, -1
140006ffc: 48 83 c4 28                 	add	rsp, 40
140007000: c3                          	ret
140007001: cc                          	int3
140007002: cc                          	int3
140007003: cc                          	int3
140007004: 8b 05 fa 0f 01 00           	mov	eax, dword ptr [rip + 69626] # 0x140018004
14000700a: b9 00 40 00 00              	mov	ecx, 16384
14000700f: 85 c0                       	test	eax, eax
140007011: 0f 44 c1                    	cmove	eax, ecx
140007014: 89 05 ea 0f 01 00           	mov	dword ptr [rip + 69610], eax # 0x140018004
14000701a: 33 c0                       	xor	eax, eax
14000701c: c3                          	ret
14000701d: cc                          	int3
14000701e: cc                          	int3
14000701f: cc                          	int3
140007020: 48 8b c4                    	mov	rax, rsp
140007023: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
140007027: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
14000702b: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
14000702f: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
140007033: 41 56                       	push	r14
140007035: 48 81 ec 90 00 00 00        	sub	rsp, 144
14000703c: 48 8d 48 88                 	lea	rcx, [rax - 120]
140007040: ff 15 12 70 00 00           	call	qword ptr [rip + 28690] # 0x14000e058
140007046: 45 33 f6                    	xor	r14d, r14d
140007049: 66 44 39 74 24 62           	cmp	word ptr [rsp + 98], r14w
14000704f: 0f 84 9a 00 00 00           	je	0x1400070ef <.text+0x60ef>
140007055: 48 8b 44 24 68              	mov	rax, qword ptr [rsp + 104]
14000705a: 48 85 c0                    	test	rax, rax
14000705d: 0f 84 8c 00 00 00           	je	0x1400070ef <.text+0x60ef>
140007063: 48 63 18                    	movsxd	rbx, dword ptr [rax]
140007066: 48 8d 70 04                 	lea	rsi, [rax + 4]
14000706a: bf 00 20 00 00              	mov	edi, 8192
14000706f: 48 03 de                    	add	rbx, rsi
140007072: 39 38                       	cmp	dword ptr [rax], edi
140007074: 0f 4c 38                    	cmovl	edi, dword ptr [rax]
140007077: 8b cf                       	mov	ecx, edi
140007079: e8 5a fd ff ff              	call	0x140006dd8 <.text+0x5dd8>
14000707e: 3b 3d 8c 13 01 00           	cmp	edi, dword ptr [rip + 70540] # 0x140018410
140007084: 0f 4f 3d 85 13 01 00        	cmovg	edi, dword ptr [rip + 70533] # 0x140018410
14000708b: 85 ff                       	test	edi, edi
14000708d: 74 60                       	je	0x1400070ef <.text+0x60ef>
14000708f: 41 8b ee                    	mov	ebp, r14d
140007092: 48 83 3b ff                 	cmp	qword ptr [rbx], -1
140007096: 74 47                       	je	0x1400070df <.text+0x60df>
140007098: 48 83 3b fe                 	cmp	qword ptr [rbx], -2
14000709c: 74 41                       	je	0x1400070df <.text+0x60df>
14000709e: f6 06 01                    	test	byte ptr [rsi], 1
1400070a1: 74 3c                       	je	0x1400070df <.text+0x60df>
1400070a3: f6 06 08                    	test	byte ptr [rsi], 8
1400070a6: 75 0d                       	jne	0x1400070b5 <.text+0x60b5>
1400070a8: 48 8b 0b                    	mov	rcx, qword ptr [rbx]
1400070ab: ff 15 ff 70 00 00           	call	qword ptr [rip + 28927] # 0x14000e1b0
1400070b1: 85 c0                       	test	eax, eax
1400070b3: 74 2a                       	je	0x1400070df <.text+0x60df>
1400070b5: 48 8b c5                    	mov	rax, rbp
1400070b8: 4c 8d 05 51 0f 01 00        	lea	r8, [rip + 69457]       # 0x140018010
1400070bf: 48 8b cd                    	mov	rcx, rbp
1400070c2: 48 c1 f9 06                 	sar	rcx, 6
1400070c6: 83 e0 3f                    	and	eax, 63
1400070c9: 49 8b 0c c8                 	mov	rcx, qword ptr [r8 + 8*rcx]
1400070cd: 48 8d 14 c0                 	lea	rdx, [rax + 8*rax]
1400070d1: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400070d4: 48 89 44 d1 28              	mov	qword ptr [rcx + 8*rdx + 40], rax
1400070d9: 8a 06                       	mov	al, byte ptr [rsi]
1400070db: 88 44 d1 38                 	mov	byte ptr [rcx + 8*rdx + 56], al
1400070df: 48 ff c5                    	inc	rbp
1400070e2: 48 ff c6                    	inc	rsi
1400070e5: 48 83 c3 08                 	add	rbx, 8
1400070e9: 48 83 ef 01                 	sub	rdi, 1
1400070ed: 75 a3                       	jne	0x140007092 <.text+0x6092>
1400070ef: 4c 8d 9c 24 90 00 00 00     	lea	r11, [rsp + 144]
1400070f7: 49 8b 5b 10                 	mov	rbx, qword ptr [r11 + 16]
1400070fb: 49 8b 6b 18                 	mov	rbp, qword ptr [r11 + 24]
1400070ff: 49 8b 73 20                 	mov	rsi, qword ptr [r11 + 32]
140007103: 49 8b 7b 28                 	mov	rdi, qword ptr [r11 + 40]
140007107: 49 8b e3                    	mov	rsp, r11
14000710a: 41 5e                       	pop	r14
14000710c: c3                          	ret
14000710d: cc                          	int3
14000710e: cc                          	int3
14000710f: cc                          	int3
140007110: 48 8b c4                    	mov	rax, rsp
140007113: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
140007117: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
14000711b: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
14000711f: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
140007123: 41 56                       	push	r14
140007125: 48 83 ec 20                 	sub	rsp, 32
140007129: 33 f6                       	xor	esi, esi
14000712b: 45 33 f6                    	xor	r14d, r14d
14000712e: 48 63 ce                    	movsxd	rcx, esi
140007131: 48 8d 3d d8 0e 01 00        	lea	rdi, [rip + 69336]      # 0x140018010
140007138: 48 8b c1                    	mov	rax, rcx
14000713b: 83 e1 3f                    	and	ecx, 63
14000713e: 48 c1 f8 06                 	sar	rax, 6
140007142: 48 8d 1c c9                 	lea	rbx, [rcx + 8*rcx]
140007146: 48 8b 3c c7                 	mov	rdi, qword ptr [rdi + 8*rax]
14000714a: 48 8b 44 df 28              	mov	rax, qword ptr [rdi + 8*rbx + 40]
14000714f: 48 83 c0 02                 	add	rax, 2
140007153: 48 83 f8 01                 	cmp	rax, 1
140007157: 76 0a                       	jbe	0x140007163 <.text+0x6163>
140007159: 80 4c df 38 80              	or	byte ptr [rdi + 8*rbx + 56], -128
14000715e: e9 8f 00 00 00              	jmp	0x1400071f2 <.text+0x61f2>
140007163: c6 44 df 38 81              	mov	byte ptr [rdi + 8*rbx + 56], -127
140007168: 8b ce                       	mov	ecx, esi
14000716a: 85 f6                       	test	esi, esi
14000716c: 74 16                       	je	0x140007184 <.text+0x6184>
14000716e: 83 e9 01                    	sub	ecx, 1
140007171: 74 0a                       	je	0x14000717d <.text+0x617d>
140007173: 83 f9 01                    	cmp	ecx, 1
140007176: b9 f4 ff ff ff              	mov	ecx, 4294967284
14000717b: eb 0c                       	jmp	0x140007189 <.text+0x6189>
14000717d: b9 f5 ff ff ff              	mov	ecx, 4294967285
140007182: eb 05                       	jmp	0x140007189 <.text+0x6189>
140007184: b9 f6 ff ff ff              	mov	ecx, 4294967286
140007189: ff 15 61 6f 00 00           	call	qword ptr [rip + 28513] # 0x14000e0f0
14000718f: 48 8b e8                    	mov	rbp, rax
140007192: 48 8d 48 01                 	lea	rcx, [rax + 1]
140007196: 48 83 f9 01                 	cmp	rcx, 1
14000719a: 76 0b                       	jbe	0x1400071a7 <.text+0x61a7>
14000719c: 48 8b c8                    	mov	rcx, rax
14000719f: ff 15 0b 70 00 00           	call	qword ptr [rip + 28683] # 0x14000e1b0
1400071a5: eb 02                       	jmp	0x1400071a9 <.text+0x61a9>
1400071a7: 33 c0                       	xor	eax, eax
1400071a9: 85 c0                       	test	eax, eax
1400071ab: 74 20                       	je	0x1400071cd <.text+0x61cd>
1400071ad: 0f b6 c8                    	movzx	ecx, al
1400071b0: 48 89 6c df 28              	mov	qword ptr [rdi + 8*rbx + 40], rbp
1400071b5: 83 f9 02                    	cmp	ecx, 2
1400071b8: 75 07                       	jne	0x1400071c1 <.text+0x61c1>
1400071ba: 80 4c df 38 40              	or	byte ptr [rdi + 8*rbx + 56], 64
1400071bf: eb 31                       	jmp	0x1400071f2 <.text+0x61f2>
1400071c1: 83 f9 03                    	cmp	ecx, 3
1400071c4: 75 2c                       	jne	0x1400071f2 <.text+0x61f2>
1400071c6: 80 4c df 38 08              	or	byte ptr [rdi + 8*rbx + 56], 8
1400071cb: eb 25                       	jmp	0x1400071f2 <.text+0x61f2>
1400071cd: 80 4c df 38 40              	or	byte ptr [rdi + 8*rbx + 56], 64
1400071d2: 48 c7 44 df 28 fe ff ff ff  	mov	qword ptr [rdi + 8*rbx + 40], -2
1400071db: 48 8b 05 2e 14 01 00        	mov	rax, qword ptr [rip + 70702] # 0x140018610
1400071e2: 48 85 c0                    	test	rax, rax
1400071e5: 74 0b                       	je	0x1400071f2 <.text+0x61f2>
1400071e7: 49 8b 04 06                 	mov	rax, qword ptr [r14 + rax]
1400071eb: c7 40 18 fe ff ff ff        	mov	dword ptr [rax + 24], 4294967294
1400071f2: ff c6                       	inc	esi
1400071f4: 49 83 c6 08                 	add	r14, 8
1400071f8: 83 fe 03                    	cmp	esi, 3
1400071fb: 0f 85 2d ff ff ff           	jne	0x14000712e <.text+0x612e>
140007201: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140007206: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
14000720b: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
140007210: 48 8b 7c 24 48              	mov	rdi, qword ptr [rsp + 72]
140007215: 48 83 c4 20                 	add	rsp, 32
140007219: 41 5e                       	pop	r14
14000721b: c3                          	ret
14000721c: 40 53                       	push	rbx
14000721e: 48 83 ec 20                 	sub	rsp, 32
140007222: b9 07 00 00 00              	mov	ecx, 7
140007227: e8 08 fa ff ff              	call	0x140006c34 <.text+0x5c34>
14000722c: 33 db                       	xor	ebx, ebx
14000722e: 33 c9                       	xor	ecx, ecx
140007230: e8 a3 fb ff ff              	call	0x140006dd8 <.text+0x5dd8>
140007235: 85 c0                       	test	eax, eax
140007237: 75 0c                       	jne	0x140007245 <.text+0x6245>
140007239: e8 e2 fd ff ff              	call	0x140007020 <.text+0x6020>
14000723e: e8 cd fe ff ff              	call	0x140007110 <.text+0x6110>
140007243: b3 01                       	mov	bl, 1
140007245: b9 07 00 00 00              	mov	ecx, 7
14000724a: e8 39 fa ff ff              	call	0x140006c88 <.text+0x5c88>
14000724f: 8a c3                       	mov	al, bl
140007251: 48 83 c4 20                 	add	rsp, 32
140007255: 5b                          	pop	rbx
140007256: c3                          	ret
140007257: cc                          	int3
140007258: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000725d: 57                          	push	rdi
14000725e: 48 83 ec 20                 	sub	rsp, 32
140007262: 33 db                       	xor	ebx, ebx
140007264: 48 8d 3d a5 0d 01 00        	lea	rdi, [rip + 69029]      # 0x140018010
14000726b: 48 8b 0c 3b                 	mov	rcx, qword ptr [rbx + rdi]
14000726f: 48 85 c9                    	test	rcx, rcx
140007272: 74 0a                       	je	0x14000727e <.text+0x627e>
140007274: e8 0f fb ff ff              	call	0x140006d88 <.text+0x5d88>
140007279: 48 83 24 3b 00              	and	qword ptr [rbx + rdi], 0
14000727e: 48 83 c3 08                 	add	rbx, 8
140007282: 48 81 fb 00 04 00 00        	cmp	rbx, 1024
140007289: 72 d9                       	jb	0x140007264 <.text+0x6264>
14000728b: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140007290: b0 01                       	mov	al, 1
140007292: 48 83 c4 20                 	add	rsp, 32
140007296: 5f                          	pop	rdi
140007297: c3                          	ret
140007298: 48 85 c9                    	test	rcx, rcx
14000729b: 0f 84 00 01 00 00           	je	0x1400073a1 <.text+0x63a1>
1400072a1: 53                          	push	rbx
1400072a2: 48 83 ec 20                 	sub	rsp, 32
1400072a6: 48 8b d9                    	mov	rbx, rcx
1400072a9: 48 8b 49 18                 	mov	rcx, qword ptr [rcx + 24]
1400072ad: 48 3b 0d 74 04 01 00        	cmp	rcx, qword ptr [rip + 66676] # 0x140017728
1400072b4: 74 05                       	je	0x1400072bb <.text+0x62bb>
1400072b6: e8 ed db ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400072bb: 48 8b 4b 20                 	mov	rcx, qword ptr [rbx + 32]
1400072bf: 48 3b 0d 6a 04 01 00        	cmp	rcx, qword ptr [rip + 66666] # 0x140017730
1400072c6: 74 05                       	je	0x1400072cd <.text+0x62cd>
1400072c8: e8 db db ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400072cd: 48 8b 4b 28                 	mov	rcx, qword ptr [rbx + 40]
1400072d1: 48 3b 0d 60 04 01 00        	cmp	rcx, qword ptr [rip + 66656] # 0x140017738
1400072d8: 74 05                       	je	0x1400072df <.text+0x62df>
1400072da: e8 c9 db ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400072df: 48 8b 4b 30                 	mov	rcx, qword ptr [rbx + 48]
1400072e3: 48 3b 0d 56 04 01 00        	cmp	rcx, qword ptr [rip + 66646] # 0x140017740
1400072ea: 74 05                       	je	0x1400072f1 <.text+0x62f1>
1400072ec: e8 b7 db ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400072f1: 48 8b 4b 38                 	mov	rcx, qword ptr [rbx + 56]
1400072f5: 48 3b 0d 4c 04 01 00        	cmp	rcx, qword ptr [rip + 66636] # 0x140017748
1400072fc: 74 05                       	je	0x140007303 <.text+0x6303>
1400072fe: e8 a5 db ff ff              	call	0x140004ea8 <.text+0x3ea8>
140007303: 48 8b 4b 40                 	mov	rcx, qword ptr [rbx + 64]
140007307: 48 3b 0d 42 04 01 00        	cmp	rcx, qword ptr [rip + 66626] # 0x140017750
14000730e: 74 05                       	je	0x140007315 <.text+0x6315>
140007310: e8 93 db ff ff              	call	0x140004ea8 <.text+0x3ea8>
140007315: 48 8b 4b 48                 	mov	rcx, qword ptr [rbx + 72]
140007319: 48 3b 0d 38 04 01 00        	cmp	rcx, qword ptr [rip + 66616] # 0x140017758
140007320: 74 05                       	je	0x140007327 <.text+0x6327>
140007322: e8 81 db ff ff              	call	0x140004ea8 <.text+0x3ea8>
140007327: 48 8b 4b 68                 	mov	rcx, qword ptr [rbx + 104]
14000732b: 48 3b 0d 46 04 01 00        	cmp	rcx, qword ptr [rip + 66630] # 0x140017778
140007332: 74 05                       	je	0x140007339 <.text+0x6339>
140007334: e8 6f db ff ff              	call	0x140004ea8 <.text+0x3ea8>
140007339: 48 8b 4b 70                 	mov	rcx, qword ptr [rbx + 112]
14000733d: 48 3b 0d 3c 04 01 00        	cmp	rcx, qword ptr [rip + 66620] # 0x140017780
140007344: 74 05                       	je	0x14000734b <.text+0x634b>
140007346: e8 5d db ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000734b: 48 8b 4b 78                 	mov	rcx, qword ptr [rbx + 120]
14000734f: 48 3b 0d 32 04 01 00        	cmp	rcx, qword ptr [rip + 66610] # 0x140017788
140007356: 74 05                       	je	0x14000735d <.text+0x635d>
140007358: e8 4b db ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000735d: 48 8b 8b 80 00 00 00        	mov	rcx, qword ptr [rbx + 128]
140007364: 48 3b 0d 25 04 01 00        	cmp	rcx, qword ptr [rip + 66597] # 0x140017790
14000736b: 74 05                       	je	0x140007372 <.text+0x6372>
14000736d: e8 36 db ff ff              	call	0x140004ea8 <.text+0x3ea8>
140007372: 48 8b 8b 88 00 00 00        	mov	rcx, qword ptr [rbx + 136]
140007379: 48 3b 0d 18 04 01 00        	cmp	rcx, qword ptr [rip + 66584] # 0x140017798
140007380: 74 05                       	je	0x140007387 <.text+0x6387>
140007382: e8 21 db ff ff              	call	0x140004ea8 <.text+0x3ea8>
140007387: 48 8b 8b 90 00 00 00        	mov	rcx, qword ptr [rbx + 144]
14000738e: 48 3b 0d 0b 04 01 00        	cmp	rcx, qword ptr [rip + 66571] # 0x1400177a0
140007395: 74 05                       	je	0x14000739c <.text+0x639c>
140007397: e8 0c db ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000739c: 48 83 c4 20                 	add	rsp, 32
1400073a0: 5b                          	pop	rbx
1400073a1: c3                          	ret
1400073a2: cc                          	int3
1400073a3: cc                          	int3
1400073a4: 48 85 c9                    	test	rcx, rcx
1400073a7: 74 66                       	je	0x14000740f <.text+0x640f>
1400073a9: 53                          	push	rbx
1400073aa: 48 83 ec 20                 	sub	rsp, 32
1400073ae: 48 8b d9                    	mov	rbx, rcx
1400073b1: 48 8b 09                    	mov	rcx, qword ptr [rcx]
1400073b4: 48 3b 0d 55 03 01 00        	cmp	rcx, qword ptr [rip + 66389] # 0x140017710
1400073bb: 74 05                       	je	0x1400073c2 <.text+0x63c2>
1400073bd: e8 e6 da ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400073c2: 48 8b 4b 08                 	mov	rcx, qword ptr [rbx + 8]
1400073c6: 48 3b 0d 4b 03 01 00        	cmp	rcx, qword ptr [rip + 66379] # 0x140017718
1400073cd: 74 05                       	je	0x1400073d4 <.text+0x63d4>
1400073cf: e8 d4 da ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400073d4: 48 8b 4b 10                 	mov	rcx, qword ptr [rbx + 16]
1400073d8: 48 3b 0d 41 03 01 00        	cmp	rcx, qword ptr [rip + 66369] # 0x140017720
1400073df: 74 05                       	je	0x1400073e6 <.text+0x63e6>
1400073e1: e8 c2 da ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400073e6: 48 8b 4b 58                 	mov	rcx, qword ptr [rbx + 88]
1400073ea: 48 3b 0d 77 03 01 00        	cmp	rcx, qword ptr [rip + 66423] # 0x140017768
1400073f1: 74 05                       	je	0x1400073f8 <.text+0x63f8>
1400073f3: e8 b0 da ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400073f8: 48 8b 4b 60                 	mov	rcx, qword ptr [rbx + 96]
1400073fc: 48 3b 0d 6d 03 01 00        	cmp	rcx, qword ptr [rip + 66413] # 0x140017770
140007403: 74 05                       	je	0x14000740a <.text+0x640a>
140007405: e8 9e da ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000740a: 48 83 c4 20                 	add	rsp, 32
14000740e: 5b                          	pop	rbx
14000740f: c3                          	ret
140007410: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007415: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000741a: 57                          	push	rdi
14000741b: 48 83 ec 20                 	sub	rsp, 32
14000741f: 33 ff                       	xor	edi, edi
140007421: 48 8d 04 d1                 	lea	rax, [rcx + 8*rdx]
140007425: 48 8b d9                    	mov	rbx, rcx
140007428: 48 8b f2                    	mov	rsi, rdx
14000742b: 48 b9 ff ff ff ff ff ff ff 1f       	movabs	rcx, 2305843009213693951
140007435: 48 23 f1                    	and	rsi, rcx
140007438: 48 3b d8                    	cmp	rbx, rax
14000743b: 48 0f 47 f7                 	cmova	rsi, rdi
14000743f: 48 85 f6                    	test	rsi, rsi
140007442: 74 14                       	je	0x140007458 <.text+0x6458>
140007444: 48 8b 0b                    	mov	rcx, qword ptr [rbx]
140007447: e8 5c da ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000744c: 48 ff c7                    	inc	rdi
14000744f: 48 8d 5b 08                 	lea	rbx, [rbx + 8]
140007453: 48 3b fe                    	cmp	rdi, rsi
140007456: 75 ec                       	jne	0x140007444 <.text+0x6444>
140007458: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000745d: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
140007462: 48 83 c4 20                 	add	rsp, 32
140007466: 5f                          	pop	rdi
140007467: c3                          	ret
140007468: 48 85 c9                    	test	rcx, rcx
14000746b: 0f 84 fe 00 00 00           	je	0x14000756f <.text+0x656f>
140007471: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007476: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
14000747b: 56                          	push	rsi
14000747c: 48 83 ec 20                 	sub	rsp, 32
140007480: bd 07 00 00 00              	mov	ebp, 7
140007485: 48 8b d9                    	mov	rbx, rcx
140007488: 8b d5                       	mov	edx, ebp
14000748a: e8 81 ff ff ff              	call	0x140007410 <.text+0x6410>
14000748f: 48 8d 4b 38                 	lea	rcx, [rbx + 56]
140007493: 8b d5                       	mov	edx, ebp
140007495: e8 76 ff ff ff              	call	0x140007410 <.text+0x6410>
14000749a: 8d 75 05                    	lea	esi, [rbp + 5]
14000749d: 8b d6                       	mov	edx, esi
14000749f: 48 8d 4b 70                 	lea	rcx, [rbx + 112]
1400074a3: e8 68 ff ff ff              	call	0x140007410 <.text+0x6410>
1400074a8: 48 8d 8b d0 00 00 00        	lea	rcx, [rbx + 208]
1400074af: 8b d6                       	mov	edx, esi
1400074b1: e8 5a ff ff ff              	call	0x140007410 <.text+0x6410>
1400074b6: 48 8d 8b 30 01 00 00        	lea	rcx, [rbx + 304]
1400074bd: 8d 55 fb                    	lea	edx, [rbp - 5]
1400074c0: e8 4b ff ff ff              	call	0x140007410 <.text+0x6410>
1400074c5: 48 8b 8b 40 01 00 00        	mov	rcx, qword ptr [rbx + 320]
1400074cc: e8 d7 d9 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400074d1: 48 8b 8b 48 01 00 00        	mov	rcx, qword ptr [rbx + 328]
1400074d8: e8 cb d9 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400074dd: 48 8b 8b 50 01 00 00        	mov	rcx, qword ptr [rbx + 336]
1400074e4: e8 bf d9 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400074e9: 48 8d 8b 60 01 00 00        	lea	rcx, [rbx + 352]
1400074f0: 8b d5                       	mov	edx, ebp
1400074f2: e8 19 ff ff ff              	call	0x140007410 <.text+0x6410>
1400074f7: 48 8d 8b 98 01 00 00        	lea	rcx, [rbx + 408]
1400074fe: 8b d5                       	mov	edx, ebp
140007500: e8 0b ff ff ff              	call	0x140007410 <.text+0x6410>
140007505: 48 8d 8b d0 01 00 00        	lea	rcx, [rbx + 464]
14000750c: 8b d6                       	mov	edx, esi
14000750e: e8 fd fe ff ff              	call	0x140007410 <.text+0x6410>
140007513: 48 8d 8b 30 02 00 00        	lea	rcx, [rbx + 560]
14000751a: 8b d6                       	mov	edx, esi
14000751c: e8 ef fe ff ff              	call	0x140007410 <.text+0x6410>
140007521: 48 8d 8b 90 02 00 00        	lea	rcx, [rbx + 656]
140007528: 8d 55 fb                    	lea	edx, [rbp - 5]
14000752b: e8 e0 fe ff ff              	call	0x140007410 <.text+0x6410>
140007530: 48 8b 8b a0 02 00 00        	mov	rcx, qword ptr [rbx + 672]
140007537: e8 6c d9 ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000753c: 48 8b 8b a8 02 00 00        	mov	rcx, qword ptr [rbx + 680]
140007543: e8 60 d9 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140007548: 48 8b 8b b0 02 00 00        	mov	rcx, qword ptr [rbx + 688]
14000754f: e8 54 d9 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140007554: 48 8b 8b b8 02 00 00        	mov	rcx, qword ptr [rbx + 696]
14000755b: e8 48 d9 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140007560: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140007565: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
14000756a: 48 83 c4 20                 	add	rsp, 32
14000756e: 5e                          	pop	rsi
14000756f: c3                          	ret
140007570: 48 83 ec 28                 	sub	rsp, 40
140007574: e8 bb d2 ff ff              	call	0x140004834 <.text+0x3834>
140007579: 48 8d 54 24 30              	lea	rdx, [rsp + 48]
14000757e: 48 8b 88 90 00 00 00        	mov	rcx, qword ptr [rax + 144]
140007585: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
14000758a: 48 8b c8                    	mov	rcx, rax
14000758d: e8 32 17 00 00              	call	0x140008cc4 <.text+0x7cc4>
140007592: 48 8b 44 24 30              	mov	rax, qword ptr [rsp + 48]
140007597: 48 8b 00                    	mov	rax, qword ptr [rax]
14000759a: 48 83 c4 28                 	add	rsp, 40
14000759e: c3                          	ret
14000759f: cc                          	int3
1400075a0: 40 53                       	push	rbx
1400075a2: 48 83 ec 20                 	sub	rsp, 32
1400075a6: 48 8b d9                    	mov	rbx, rcx
1400075a9: 48 83 f9 e0                 	cmp	rcx, -32
1400075ad: 77 3c                       	ja	0x1400075eb <.text+0x65eb>
1400075af: 48 85 c9                    	test	rcx, rcx
1400075b2: b8 01 00 00 00              	mov	eax, 1
1400075b7: 48 0f 44 d8                 	cmove	rbx, rax
1400075bb: eb 15                       	jmp	0x1400075d2 <.text+0x65d2>
1400075bd: e8 fe c6 ff ff              	call	0x140003cc0 <.text+0x2cc0>
1400075c2: 85 c0                       	test	eax, eax
1400075c4: 74 25                       	je	0x1400075eb <.text+0x65eb>
1400075c6: 48 8b cb                    	mov	rcx, rbx
1400075c9: e8 c6 0d 00 00              	call	0x140008394 <.text+0x7394>
1400075ce: 85 c0                       	test	eax, eax
1400075d0: 74 19                       	je	0x1400075eb <.text+0x65eb>
1400075d2: 48 8b 0d ff 0f 01 00        	mov	rcx, qword ptr [rip + 69631] # 0x1400185d8
1400075d9: 4c 8b c3                    	mov	r8, rbx
1400075dc: 33 d2                       	xor	edx, edx
1400075de: ff 15 54 6b 00 00           	call	qword ptr [rip + 27476] # 0x14000e138
1400075e4: 48 85 c0                    	test	rax, rax
1400075e7: 74 d4                       	je	0x1400075bd <.text+0x65bd>
1400075e9: eb 0d                       	jmp	0x1400075f8 <.text+0x65f8>
1400075eb: e8 20 d8 ff ff              	call	0x140004e10 <.text+0x3e10>
1400075f0: c7 00 0c 00 00 00           	mov	dword ptr [rax], 12
1400075f6: 33 c0                       	xor	eax, eax
1400075f8: 48 83 c4 20                 	add	rsp, 32
1400075fc: 5b                          	pop	rbx
1400075fd: c3                          	ret
1400075fe: cc                          	int3
1400075ff: cc                          	int3
140007600: 40 55                       	push	rbp
140007602: 41 54                       	push	r12
140007604: 41 55                       	push	r13
140007606: 41 56                       	push	r14
140007608: 41 57                       	push	r15
14000760a: 48 83 ec 60                 	sub	rsp, 96
14000760e: 48 8d 6c 24 30              	lea	rbp, [rsp + 48]
140007613: 48 89 5d 60                 	mov	qword ptr [rbp + 96], rbx
140007617: 48 89 75 68                 	mov	qword ptr [rbp + 104], rsi
14000761b: 48 89 7d 70                 	mov	qword ptr [rbp + 112], rdi
14000761f: 48 8b 05 02 fa 00 00        	mov	rax, qword ptr [rip + 64002] # 0x140017028
140007626: 48 33 c5                    	xor	rax, rbp
140007629: 48 89 45 20                 	mov	qword ptr [rbp + 32], rax
14000762d: 44 8b ea                    	mov	r13d, edx
140007630: 45 8b f9                    	mov	r15d, r9d
140007633: 48 8b d1                    	mov	rdx, rcx
140007636: 4d 8b e0                    	mov	r12, r8
140007639: 48 8d 4d 00                 	lea	rcx, [rbp]
14000763d: e8 22 cd ff ff              	call	0x140004364 <.text+0x3364>
140007642: 8b bd 88 00 00 00           	mov	edi, dword ptr [rbp + 136]
140007648: 85 ff                       	test	edi, edi
14000764a: 75 07                       	jne	0x140007653 <.text+0x6653>
14000764c: 48 8b 45 08                 	mov	rax, qword ptr [rbp + 8]
140007650: 8b 78 0c                    	mov	edi, dword ptr [rax + 12]
140007653: f7 9d 90 00 00 00           	neg	dword ptr [rbp + 144]
140007659: 45 8b cf                    	mov	r9d, r15d
14000765c: 4d 8b c4                    	mov	r8, r12
14000765f: 8b cf                       	mov	ecx, edi
140007661: 1b d2                       	sbb	edx, edx
140007663: 83 64 24 28 00              	and	dword ptr [rsp + 40], 0
140007668: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000766e: 83 e2 08                    	and	edx, 8
140007671: ff c2                       	inc	edx
140007673: e8 54 ef ff ff              	call	0x1400065cc <.text+0x55cc>
140007678: 4c 63 f0                    	movsxd	r14, eax
14000767b: 85 c0                       	test	eax, eax
14000767d: 75 07                       	jne	0x140007686 <.text+0x6686>
14000767f: 33 ff                       	xor	edi, edi
140007681: e9 ce 00 00 00              	jmp	0x140007754 <.text+0x6754>
140007686: 49 8b f6                    	mov	rsi, r14
140007689: 48 03 f6                    	add	rsi, rsi
14000768c: 48 8d 46 10                 	lea	rax, [rsi + 16]
140007690: 48 3b f0                    	cmp	rsi, rax
140007693: 48 1b c9                    	sbb	rcx, rcx
140007696: 48 23 c8                    	and	rcx, rax
140007699: 74 53                       	je	0x1400076ee <.text+0x66ee>
14000769b: 48 81 f9 00 04 00 00        	cmp	rcx, 1024
1400076a2: 77 31                       	ja	0x1400076d5 <.text+0x66d5>
1400076a4: 48 8d 41 0f                 	lea	rax, [rcx + 15]
1400076a8: 48 3b c1                    	cmp	rax, rcx
1400076ab: 77 0a                       	ja	0x1400076b7 <.text+0x66b7>
1400076ad: 48 b8 f0 ff ff ff ff ff ff 0f       	movabs	rax, 1152921504606846960
1400076b7: 48 83 e0 f0                 	and	rax, -16
1400076bb: e8 20 57 00 00              	call	0x14000cde0 <.text+0xbde0>
1400076c0: 48 2b e0                    	sub	rsp, rax
1400076c3: 48 8d 5c 24 30              	lea	rbx, [rsp + 48]
1400076c8: 48 85 db                    	test	rbx, rbx
1400076cb: 74 6f                       	je	0x14000773c <.text+0x673c>
1400076cd: c7 03 cc cc 00 00           	mov	dword ptr [rbx], 52428
1400076d3: eb 13                       	jmp	0x1400076e8 <.text+0x66e8>
1400076d5: e8 c6 fe ff ff              	call	0x1400075a0 <.text+0x65a0>
1400076da: 48 8b d8                    	mov	rbx, rax
1400076dd: 48 85 c0                    	test	rax, rax
1400076e0: 74 0e                       	je	0x1400076f0 <.text+0x66f0>
1400076e2: c7 00 dd dd 00 00           	mov	dword ptr [rax], 56797
1400076e8: 48 83 c3 10                 	add	rbx, 16
1400076ec: eb 02                       	jmp	0x1400076f0 <.text+0x66f0>
1400076ee: 33 db                       	xor	ebx, ebx
1400076f0: 48 85 db                    	test	rbx, rbx
1400076f3: 74 47                       	je	0x14000773c <.text+0x673c>
1400076f5: 4c 8b c6                    	mov	r8, rsi
1400076f8: 33 d2                       	xor	edx, edx
1400076fa: 48 8b cb                    	mov	rcx, rbx
1400076fd: e8 be a6 ff ff              	call	0x140001dc0 <.text+0xdc0>
140007702: 45 8b cf                    	mov	r9d, r15d
140007705: 44 89 74 24 28              	mov	dword ptr [rsp + 40], r14d
14000770a: 4d 8b c4                    	mov	r8, r12
14000770d: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140007712: ba 01 00 00 00              	mov	edx, 1
140007717: 8b cf                       	mov	ecx, edi
140007719: e8 ae ee ff ff              	call	0x1400065cc <.text+0x55cc>
14000771e: 85 c0                       	test	eax, eax
140007720: 74 1a                       	je	0x14000773c <.text+0x673c>
140007722: 4c 8b 8d 80 00 00 00        	mov	r9, qword ptr [rbp + 128]
140007729: 44 8b c0                    	mov	r8d, eax
14000772c: 48 8b d3                    	mov	rdx, rbx
14000772f: 41 8b cd                    	mov	ecx, r13d
140007732: ff 15 80 6a 00 00           	call	qword ptr [rip + 27264] # 0x14000e1b8
140007738: 8b f8                       	mov	edi, eax
14000773a: eb 02                       	jmp	0x14000773e <.text+0x673e>
14000773c: 33 ff                       	xor	edi, edi
14000773e: 48 85 db                    	test	rbx, rbx
140007741: 74 11                       	je	0x140007754 <.text+0x6754>
140007743: 48 8d 4b f0                 	lea	rcx, [rbx - 16]
140007747: 81 39 dd dd 00 00           	cmp	dword ptr [rcx], 56797
14000774d: 75 05                       	jne	0x140007754 <.text+0x6754>
14000774f: e8 54 d7 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140007754: 80 7d 18 00                 	cmp	byte ptr [rbp + 24], 0
140007758: 74 0b                       	je	0x140007765 <.text+0x6765>
14000775a: 48 8b 45 00                 	mov	rax, qword ptr [rbp]
14000775e: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140007765: 8b c7                       	mov	eax, edi
140007767: 48 8b 4d 20                 	mov	rcx, qword ptr [rbp + 32]
14000776b: 48 33 cd                    	xor	rcx, rbp
14000776e: e8 9d 53 00 00              	call	0x14000cb10 <.text+0xbb10>
140007773: 48 8b 5d 60                 	mov	rbx, qword ptr [rbp + 96]
140007777: 48 8b 75 68                 	mov	rsi, qword ptr [rbp + 104]
14000777b: 48 8b 7d 70                 	mov	rdi, qword ptr [rbp + 112]
14000777f: 48 8d 65 30                 	lea	rsp, [rbp + 48]
140007783: 41 5f                       	pop	r15
140007785: 41 5e                       	pop	r14
140007787: 41 5d                       	pop	r13
140007789: 41 5c                       	pop	r12
14000778b: 5d                          	pop	rbp
14000778c: c3                          	ret
14000778d: cc                          	int3
14000778e: cc                          	int3
14000778f: cc                          	int3
140007790: f0                          	lock
140007791: ff 41 10                    	inc	dword ptr [rcx + 16]
140007794: 48 8b 81 e0 00 00 00        	mov	rax, qword ptr [rcx + 224]
14000779b: 48 85 c0                    	test	rax, rax
14000779e: 74 03                       	je	0x1400077a3 <.text+0x67a3>
1400077a0: f0                          	lock
1400077a1: ff 00                       	inc	dword ptr [rax]
1400077a3: 48 8b 81 f0 00 00 00        	mov	rax, qword ptr [rcx + 240]
1400077aa: 48 85 c0                    	test	rax, rax
1400077ad: 74 03                       	je	0x1400077b2 <.text+0x67b2>
1400077af: f0                          	lock
1400077b0: ff 00                       	inc	dword ptr [rax]
1400077b2: 48 8b 81 e8 00 00 00        	mov	rax, qword ptr [rcx + 232]
1400077b9: 48 85 c0                    	test	rax, rax
1400077bc: 74 03                       	je	0x1400077c1 <.text+0x67c1>
1400077be: f0                          	lock
1400077bf: ff 00                       	inc	dword ptr [rax]
1400077c1: 48 8b 81 00 01 00 00        	mov	rax, qword ptr [rcx + 256]
1400077c8: 48 85 c0                    	test	rax, rax
1400077cb: 74 03                       	je	0x1400077d0 <.text+0x67d0>
1400077cd: f0                          	lock
1400077ce: ff 00                       	inc	dword ptr [rax]
1400077d0: 48 8d 41 38                 	lea	rax, [rcx + 56]
1400077d4: 41 b8 06 00 00 00           	mov	r8d, 6
1400077da: 48 8d 15 27 ff 00 00        	lea	rdx, [rip + 65319]      # 0x140017708
1400077e1: 48 39 50 f0                 	cmp	qword ptr [rax - 16], rdx
1400077e5: 74 0b                       	je	0x1400077f2 <.text+0x67f2>
1400077e7: 48 8b 10                    	mov	rdx, qword ptr [rax]
1400077ea: 48 85 d2                    	test	rdx, rdx
1400077ed: 74 03                       	je	0x1400077f2 <.text+0x67f2>
1400077ef: f0                          	lock
1400077f0: ff 02                       	inc	dword ptr [rdx]
1400077f2: 48 83 78 e8 00              	cmp	qword ptr [rax - 24], 0
1400077f7: 74 0c                       	je	0x140007805 <.text+0x6805>
1400077f9: 48 8b 50 f8                 	mov	rdx, qword ptr [rax - 8]
1400077fd: 48 85 d2                    	test	rdx, rdx
140007800: 74 03                       	je	0x140007805 <.text+0x6805>
140007802: f0                          	lock
140007803: ff 02                       	inc	dword ptr [rdx]
140007805: 48 83 c0 20                 	add	rax, 32
140007809: 49 83 e8 01                 	sub	r8, 1
14000780d: 75 cb                       	jne	0x1400077da <.text+0x67da>
14000780f: 48 8b 89 20 01 00 00        	mov	rcx, qword ptr [rcx + 288]
140007816: e9 79 01 00 00              	jmp	0x140007994 <.text+0x6994>
14000781b: cc                          	int3
14000781c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007821: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140007826: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
14000782b: 57                          	push	rdi
14000782c: 48 83 ec 20                 	sub	rsp, 32
140007830: 48 8b 81 f8 00 00 00        	mov	rax, qword ptr [rcx + 248]
140007837: 48 8b d9                    	mov	rbx, rcx
14000783a: 48 85 c0                    	test	rax, rax
14000783d: 74 79                       	je	0x1400078b8 <.text+0x68b8>
14000783f: 48 8d 0d ca fe 00 00        	lea	rcx, [rip + 65226]      # 0x140017710
140007846: 48 3b c1                    	cmp	rax, rcx
140007849: 74 6d                       	je	0x1400078b8 <.text+0x68b8>
14000784b: 48 8b 83 e0 00 00 00        	mov	rax, qword ptr [rbx + 224]
140007852: 48 85 c0                    	test	rax, rax
140007855: 74 61                       	je	0x1400078b8 <.text+0x68b8>
140007857: 83 38 00                    	cmp	dword ptr [rax], 0
14000785a: 75 5c                       	jne	0x1400078b8 <.text+0x68b8>
14000785c: 48 8b 8b f0 00 00 00        	mov	rcx, qword ptr [rbx + 240]
140007863: 48 85 c9                    	test	rcx, rcx
140007866: 74 16                       	je	0x14000787e <.text+0x687e>
140007868: 83 39 00                    	cmp	dword ptr [rcx], 0
14000786b: 75 11                       	jne	0x14000787e <.text+0x687e>
14000786d: e8 36 d6 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140007872: 48 8b 8b f8 00 00 00        	mov	rcx, qword ptr [rbx + 248]
140007879: e8 1a fa ff ff              	call	0x140007298 <.text+0x6298>
14000787e: 48 8b 8b e8 00 00 00        	mov	rcx, qword ptr [rbx + 232]
140007885: 48 85 c9                    	test	rcx, rcx
140007888: 74 16                       	je	0x1400078a0 <.text+0x68a0>
14000788a: 83 39 00                    	cmp	dword ptr [rcx], 0
14000788d: 75 11                       	jne	0x1400078a0 <.text+0x68a0>
14000788f: e8 14 d6 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140007894: 48 8b 8b f8 00 00 00        	mov	rcx, qword ptr [rbx + 248]
14000789b: e8 04 fb ff ff              	call	0x1400073a4 <.text+0x63a4>
1400078a0: 48 8b 8b e0 00 00 00        	mov	rcx, qword ptr [rbx + 224]
1400078a7: e8 fc d5 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400078ac: 48 8b 8b f8 00 00 00        	mov	rcx, qword ptr [rbx + 248]
1400078b3: e8 f0 d5 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400078b8: 48 8b 83 00 01 00 00        	mov	rax, qword ptr [rbx + 256]
1400078bf: 48 85 c0                    	test	rax, rax
1400078c2: 74 47                       	je	0x14000790b <.text+0x690b>
1400078c4: 83 38 00                    	cmp	dword ptr [rax], 0
1400078c7: 75 42                       	jne	0x14000790b <.text+0x690b>
1400078c9: 48 8b 8b 08 01 00 00        	mov	rcx, qword ptr [rbx + 264]
1400078d0: 48 81 e9 fe 00 00 00        	sub	rcx, 254
1400078d7: e8 cc d5 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400078dc: 48 8b 8b 10 01 00 00        	mov	rcx, qword ptr [rbx + 272]
1400078e3: bf 80 00 00 00              	mov	edi, 128
1400078e8: 48 2b cf                    	sub	rcx, rdi
1400078eb: e8 b8 d5 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400078f0: 48 8b 8b 18 01 00 00        	mov	rcx, qword ptr [rbx + 280]
1400078f7: 48 2b cf                    	sub	rcx, rdi
1400078fa: e8 a9 d5 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400078ff: 48 8b 8b 00 01 00 00        	mov	rcx, qword ptr [rbx + 256]
140007906: e8 9d d5 ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000790b: 48 8b 8b 20 01 00 00        	mov	rcx, qword ptr [rbx + 288]
140007912: e8 a5 00 00 00              	call	0x1400079bc <.text+0x69bc>
140007917: 48 8d b3 28 01 00 00        	lea	rsi, [rbx + 296]
14000791e: bd 06 00 00 00              	mov	ebp, 6
140007923: 48 8d 7b 38                 	lea	rdi, [rbx + 56]
140007927: 48 8d 05 da fd 00 00        	lea	rax, [rip + 64986]      # 0x140017708
14000792e: 48 39 47 f0                 	cmp	qword ptr [rdi - 16], rax
140007932: 74 1a                       	je	0x14000794e <.text+0x694e>
140007934: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
140007937: 48 85 c9                    	test	rcx, rcx
14000793a: 74 12                       	je	0x14000794e <.text+0x694e>
14000793c: 83 39 00                    	cmp	dword ptr [rcx], 0
14000793f: 75 0d                       	jne	0x14000794e <.text+0x694e>
140007941: e8 62 d5 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140007946: 48 8b 0e                    	mov	rcx, qword ptr [rsi]
140007949: e8 5a d5 ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000794e: 48 83 7f e8 00              	cmp	qword ptr [rdi - 24], 0
140007953: 74 13                       	je	0x140007968 <.text+0x6968>
140007955: 48 8b 4f f8                 	mov	rcx, qword ptr [rdi - 8]
140007959: 48 85 c9                    	test	rcx, rcx
14000795c: 74 0a                       	je	0x140007968 <.text+0x6968>
14000795e: 83 39 00                    	cmp	dword ptr [rcx], 0
140007961: 75 05                       	jne	0x140007968 <.text+0x6968>
140007963: e8 40 d5 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140007968: 48 83 c6 08                 	add	rsi, 8
14000796c: 48 83 c7 20                 	add	rdi, 32
140007970: 48 83 ed 01                 	sub	rbp, 1
140007974: 75 b1                       	jne	0x140007927 <.text+0x6927>
140007976: 48 8b cb                    	mov	rcx, rbx
140007979: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000797e: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
140007983: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
140007988: 48 83 c4 20                 	add	rsp, 32
14000798c: 5f                          	pop	rdi
14000798d: e9 16 d5 ff ff              	jmp	0x140004ea8 <.text+0x3ea8>
140007992: cc                          	int3
140007993: cc                          	int3
140007994: 48 85 c9                    	test	rcx, rcx
140007997: 74 1c                       	je	0x1400079b5 <.text+0x69b5>
140007999: 48 8d 05 60 7c 00 00        	lea	rax, [rip + 31840]      # 0x14000f600
1400079a0: 48 3b c8                    	cmp	rcx, rax
1400079a3: 74 10                       	je	0x1400079b5 <.text+0x69b5>
1400079a5: b8 01 00 00 00              	mov	eax, 1
1400079aa: f0                          	lock
1400079ab: 0f c1 81 5c 01 00 00        	xadd	dword ptr [rcx + 348], eax
1400079b2: ff c0                       	inc	eax
1400079b4: c3                          	ret
1400079b5: b8 ff ff ff 7f              	mov	eax, 2147483647
1400079ba: c3                          	ret
1400079bb: cc                          	int3
1400079bc: 48 85 c9                    	test	rcx, rcx
1400079bf: 74 30                       	je	0x1400079f1 <.text+0x69f1>
1400079c1: 53                          	push	rbx
1400079c2: 48 83 ec 20                 	sub	rsp, 32
1400079c6: 48 8d 05 33 7c 00 00        	lea	rax, [rip + 31795]      # 0x14000f600
1400079cd: 48 8b d9                    	mov	rbx, rcx
1400079d0: 48 3b c8                    	cmp	rcx, rax
1400079d3: 74 17                       	je	0x1400079ec <.text+0x69ec>
1400079d5: 8b 81 5c 01 00 00           	mov	eax, dword ptr [rcx + 348]
1400079db: 85 c0                       	test	eax, eax
1400079dd: 75 0d                       	jne	0x1400079ec <.text+0x69ec>
1400079df: e8 84 fa ff ff              	call	0x140007468 <.text+0x6468>
1400079e4: 48 8b cb                    	mov	rcx, rbx
1400079e7: e8 bc d4 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400079ec: 48 83 c4 20                 	add	rsp, 32
1400079f0: 5b                          	pop	rbx
1400079f1: c3                          	ret
1400079f2: cc                          	int3
1400079f3: cc                          	int3
1400079f4: 48 85 c9                    	test	rcx, rcx
1400079f7: 74 1a                       	je	0x140007a13 <.text+0x6a13>
1400079f9: 48 8d 05 00 7c 00 00        	lea	rax, [rip + 31744]      # 0x14000f600
140007a00: 48 3b c8                    	cmp	rcx, rax
140007a03: 74 0e                       	je	0x140007a13 <.text+0x6a13>
140007a05: 83 c8 ff                    	or	eax, -1
140007a08: f0                          	lock
140007a09: 0f c1 81 5c 01 00 00        	xadd	dword ptr [rcx + 348], eax
140007a10: ff c8                       	dec	eax
140007a12: c3                          	ret
140007a13: b8 ff ff ff 7f              	mov	eax, 2147483647
140007a18: c3                          	ret
140007a19: cc                          	int3
140007a1a: cc                          	int3
140007a1b: cc                          	int3
140007a1c: 48 83 ec 28                 	sub	rsp, 40
140007a20: 48 85 c9                    	test	rcx, rcx
140007a23: 0f 84 96 00 00 00           	je	0x140007abf <.text+0x6abf>
140007a29: 41 83 c9 ff                 	or	r9d, -1
140007a2d: f0                          	lock
140007a2e: 44 01 49 10                 	add	dword ptr [rcx + 16], r9d
140007a32: 48 8b 81 e0 00 00 00        	mov	rax, qword ptr [rcx + 224]
140007a39: 48 85 c0                    	test	rax, rax
140007a3c: 74 04                       	je	0x140007a42 <.text+0x6a42>
140007a3e: f0                          	lock
140007a3f: 44 01 08                    	add	dword ptr [rax], r9d
140007a42: 48 8b 81 f0 00 00 00        	mov	rax, qword ptr [rcx + 240]
140007a49: 48 85 c0                    	test	rax, rax
140007a4c: 74 04                       	je	0x140007a52 <.text+0x6a52>
140007a4e: f0                          	lock
140007a4f: 44 01 08                    	add	dword ptr [rax], r9d
140007a52: 48 8b 81 e8 00 00 00        	mov	rax, qword ptr [rcx + 232]
140007a59: 48 85 c0                    	test	rax, rax
140007a5c: 74 04                       	je	0x140007a62 <.text+0x6a62>
140007a5e: f0                          	lock
140007a5f: 44 01 08                    	add	dword ptr [rax], r9d
140007a62: 48 8b 81 00 01 00 00        	mov	rax, qword ptr [rcx + 256]
140007a69: 48 85 c0                    	test	rax, rax
140007a6c: 74 04                       	je	0x140007a72 <.text+0x6a72>
140007a6e: f0                          	lock
140007a6f: 44 01 08                    	add	dword ptr [rax], r9d
140007a72: 48 8d 41 38                 	lea	rax, [rcx + 56]
140007a76: 41 b8 06 00 00 00           	mov	r8d, 6
140007a7c: 48 8d 15 85 fc 00 00        	lea	rdx, [rip + 64645]      # 0x140017708
140007a83: 48 39 50 f0                 	cmp	qword ptr [rax - 16], rdx
140007a87: 74 0c                       	je	0x140007a95 <.text+0x6a95>
140007a89: 48 8b 10                    	mov	rdx, qword ptr [rax]
140007a8c: 48 85 d2                    	test	rdx, rdx
140007a8f: 74 04                       	je	0x140007a95 <.text+0x6a95>
140007a91: f0                          	lock
140007a92: 44 01 0a                    	add	dword ptr [rdx], r9d
140007a95: 48 83 78 e8 00              	cmp	qword ptr [rax - 24], 0
140007a9a: 74 0d                       	je	0x140007aa9 <.text+0x6aa9>
140007a9c: 48 8b 50 f8                 	mov	rdx, qword ptr [rax - 8]
140007aa0: 48 85 d2                    	test	rdx, rdx
140007aa3: 74 04                       	je	0x140007aa9 <.text+0x6aa9>
140007aa5: f0                          	lock
140007aa6: 44 01 0a                    	add	dword ptr [rdx], r9d
140007aa9: 48 83 c0 20                 	add	rax, 32
140007aad: 49 83 e8 01                 	sub	r8, 1
140007ab1: 75 c9                       	jne	0x140007a7c <.text+0x6a7c>
140007ab3: 48 8b 89 20 01 00 00        	mov	rcx, qword ptr [rcx + 288]
140007aba: e8 35 ff ff ff              	call	0x1400079f4 <.text+0x69f4>
140007abf: 48 83 c4 28                 	add	rsp, 40
140007ac3: c3                          	ret
140007ac4: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007ac9: 57                          	push	rdi
140007aca: 48 83 ec 20                 	sub	rsp, 32
140007ace: e8 61 cd ff ff              	call	0x140004834 <.text+0x3834>
140007ad3: 48 8d b8 90 00 00 00        	lea	rdi, [rax + 144]
140007ada: 8b 88 a8 03 00 00           	mov	ecx, dword ptr [rax + 936]
140007ae0: 8b 05 ca fc 00 00           	mov	eax, dword ptr [rip + 64714] # 0x1400177b0
140007ae6: 85 c8                       	test	eax, ecx
140007ae8: 74 08                       	je	0x140007af2 <.text+0x6af2>
140007aea: 48 8b 1f                    	mov	rbx, qword ptr [rdi]
140007aed: 48 85 db                    	test	rbx, rbx
140007af0: 75 2c                       	jne	0x140007b1e <.text+0x6b1e>
140007af2: b9 04 00 00 00              	mov	ecx, 4
140007af7: e8 38 f1 ff ff              	call	0x140006c34 <.text+0x5c34>
140007afc: 90                          	nop
140007afd: 48 8b 15 14 09 01 00        	mov	rdx, qword ptr [rip + 67860] # 0x140018418
140007b04: 48 8b cf                    	mov	rcx, rdi
140007b07: e8 28 00 00 00              	call	0x140007b34 <.text+0x6b34>
140007b0c: 48 8b d8                    	mov	rbx, rax
140007b0f: b9 04 00 00 00              	mov	ecx, 4
140007b14: e8 6f f1 ff ff              	call	0x140006c88 <.text+0x5c88>
140007b19: 48 85 db                    	test	rbx, rbx
140007b1c: 74 0e                       	je	0x140007b2c <.text+0x6b2c>
140007b1e: 48 8b c3                    	mov	rax, rbx
140007b21: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140007b26: 48 83 c4 20                 	add	rsp, 32
140007b2a: 5f                          	pop	rdi
140007b2b: c3                          	ret
140007b2c: e8 d3 c7 ff ff              	call	0x140004304 <.text+0x3304>
140007b31: 90                          	nop
140007b32: cc                          	int3
140007b33: cc                          	int3
140007b34: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007b39: 57                          	push	rdi
140007b3a: 48 83 ec 20                 	sub	rsp, 32
140007b3e: 48 8b fa                    	mov	rdi, rdx
140007b41: 48 85 d2                    	test	rdx, rdx
140007b44: 74 46                       	je	0x140007b8c <.text+0x6b8c>
140007b46: 48 85 c9                    	test	rcx, rcx
140007b49: 74 41                       	je	0x140007b8c <.text+0x6b8c>
140007b4b: 48 8b 19                    	mov	rbx, qword ptr [rcx]
140007b4e: 48 3b da                    	cmp	rbx, rdx
140007b51: 75 05                       	jne	0x140007b58 <.text+0x6b58>
140007b53: 48 8b c7                    	mov	rax, rdi
140007b56: eb 36                       	jmp	0x140007b8e <.text+0x6b8e>
140007b58: 48 89 39                    	mov	qword ptr [rcx], rdi
140007b5b: 48 8b cf                    	mov	rcx, rdi
140007b5e: e8 2d fc ff ff              	call	0x140007790 <.text+0x6790>
140007b63: 48 85 db                    	test	rbx, rbx
140007b66: 74 eb                       	je	0x140007b53 <.text+0x6b53>
140007b68: 48 8b cb                    	mov	rcx, rbx
140007b6b: e8 ac fe ff ff              	call	0x140007a1c <.text+0x6a1c>
140007b70: 83 7b 10 00                 	cmp	dword ptr [rbx + 16], 0
140007b74: 75 dd                       	jne	0x140007b53 <.text+0x6b53>
140007b76: 48 8d 05 23 fa 00 00        	lea	rax, [rip + 64035]      # 0x1400175a0
140007b7d: 48 3b d8                    	cmp	rbx, rax
140007b80: 74 d1                       	je	0x140007b53 <.text+0x6b53>
140007b82: 48 8b cb                    	mov	rcx, rbx
140007b85: e8 92 fc ff ff              	call	0x14000781c <.text+0x681c>
140007b8a: eb c7                       	jmp	0x140007b53 <.text+0x6b53>
140007b8c: 33 c0                       	xor	eax, eax
140007b8e: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140007b93: 48 83 c4 20                 	add	rsp, 32
140007b97: 5f                          	pop	rdi
140007b98: c3                          	ret
140007b99: cc                          	int3
140007b9a: cc                          	int3
140007b9b: cc                          	int3
140007b9c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007ba1: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140007ba6: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140007bab: 57                          	push	rdi
140007bac: 41 54                       	push	r12
140007bae: 41 55                       	push	r13
140007bb0: 41 56                       	push	r14
140007bb2: 41 57                       	push	r15
140007bb4: 48 83 ec 20                 	sub	rsp, 32
140007bb8: 44 8b f9                    	mov	r15d, ecx
140007bbb: 4c 8d 35 3e 84 ff ff        	lea	r14, [rip - 31682]      # 0x140000000
140007bc2: 4d 8b e1                    	mov	r12, r9
140007bc5: 49 8b e8                    	mov	rbp, r8
140007bc8: 4c 8b ea                    	mov	r13, rdx
140007bcb: 4b 8b 8c fe c0 84 01 00     	mov	rcx, qword ptr [r14 + 8*r15 + 99520]
140007bd3: 4c 8b 15 4e f4 00 00        	mov	r10, qword ptr [rip + 62542] # 0x140017028
140007bda: 48 83 cf ff                 	or	rdi, -1
140007bde: 41 8b c2                    	mov	eax, r10d
140007be1: 49 8b d2                    	mov	rdx, r10
140007be4: 48 33 d1                    	xor	rdx, rcx
140007be7: 83 e0 3f                    	and	eax, 63
140007bea: 8a c8                       	mov	cl, al
140007bec: 48 d3 ca                    	ror	rdx, cl
140007bef: 48 3b d7                    	cmp	rdx, rdi
140007bf2: 0f 84 5b 01 00 00           	je	0x140007d53 <.text+0x6d53>
140007bf8: 48 85 d2                    	test	rdx, rdx
140007bfb: 74 08                       	je	0x140007c05 <.text+0x6c05>
140007bfd: 48 8b c2                    	mov	rax, rdx
140007c00: e9 50 01 00 00              	jmp	0x140007d55 <.text+0x6d55>
140007c05: 4d 3b c4                    	cmp	r8, r12
140007c08: 0f 84 d9 00 00 00           	je	0x140007ce7 <.text+0x6ce7>
140007c0e: 8b 75 00                    	mov	esi, dword ptr [rbp]
140007c11: 49 8b 9c f6 20 84 01 00     	mov	rbx, qword ptr [r14 + 8*rsi + 99360]
140007c19: 48 85 db                    	test	rbx, rbx
140007c1c: 74 0e                       	je	0x140007c2c <.text+0x6c2c>
140007c1e: 48 3b df                    	cmp	rbx, rdi
140007c21: 0f 84 ac 00 00 00           	je	0x140007cd3 <.text+0x6cd3>
140007c27: e9 a2 00 00 00              	jmp	0x140007cce <.text+0x6cce>
140007c2c: 4d 8b b4 f6 90 02 01 00     	mov	r14, qword ptr [r14 + 8*rsi + 66192]
140007c34: 33 d2                       	xor	edx, edx
140007c36: 49 8b ce                    	mov	rcx, r14
140007c39: 41 b8 00 08 00 00           	mov	r8d, 2048
140007c3f: ff 15 9b 64 00 00           	call	qword ptr [rip + 25755] # 0x14000e0e0
140007c45: 48 8b d8                    	mov	rbx, rax
140007c48: 48 85 c0                    	test	rax, rax
140007c4b: 75 4f                       	jne	0x140007c9c <.text+0x6c9c>
140007c4d: ff 15 2d 64 00 00           	call	qword ptr [rip + 25645] # 0x14000e080
140007c53: 83 f8 57                    	cmp	eax, 87
140007c56: 75 42                       	jne	0x140007c9a <.text+0x6c9a>
140007c58: 8d 58 b0                    	lea	ebx, [rax - 80]
140007c5b: 49 8b ce                    	mov	rcx, r14
140007c5e: 44 8b c3                    	mov	r8d, ebx
140007c61: 48 8d 15 30 75 00 00        	lea	rdx, [rip + 30000]      # 0x14000f198
140007c68: e8 23 c8 ff ff              	call	0x140004490 <.text+0x3490>
140007c6d: 85 c0                       	test	eax, eax
140007c6f: 74 29                       	je	0x140007c9a <.text+0x6c9a>
140007c71: 44 8b c3                    	mov	r8d, ebx
140007c74: 48 8d 15 0d 8b 00 00        	lea	rdx, [rip + 35597]      # 0x140010788
140007c7b: 49 8b ce                    	mov	rcx, r14
140007c7e: e8 0d c8 ff ff              	call	0x140004490 <.text+0x3490>
140007c83: 85 c0                       	test	eax, eax
140007c85: 74 13                       	je	0x140007c9a <.text+0x6c9a>
140007c87: 45 33 c0                    	xor	r8d, r8d
140007c8a: 33 d2                       	xor	edx, edx
140007c8c: 49 8b ce                    	mov	rcx, r14
140007c8f: ff 15 4b 64 00 00           	call	qword ptr [rip + 25675] # 0x14000e0e0
140007c95: 48 8b d8                    	mov	rbx, rax
140007c98: eb 02                       	jmp	0x140007c9c <.text+0x6c9c>
140007c9a: 33 db                       	xor	ebx, ebx
140007c9c: 4c 8d 35 5d 83 ff ff        	lea	r14, [rip - 31907]      # 0x140000000
140007ca3: 48 85 db                    	test	rbx, rbx
140007ca6: 75 0d                       	jne	0x140007cb5 <.text+0x6cb5>
140007ca8: 48 8b c7                    	mov	rax, rdi
140007cab: 49 87 84 f6 20 84 01 00     	xchg	qword ptr [r14 + 8*rsi + 99360], rax
140007cb3: eb 1e                       	jmp	0x140007cd3 <.text+0x6cd3>
140007cb5: 48 8b c3                    	mov	rax, rbx
140007cb8: 49 87 84 f6 20 84 01 00     	xchg	qword ptr [r14 + 8*rsi + 99360], rax
140007cc0: 48 85 c0                    	test	rax, rax
140007cc3: 74 09                       	je	0x140007cce <.text+0x6cce>
140007cc5: 48 8b cb                    	mov	rcx, rbx
140007cc8: ff 15 02 64 00 00           	call	qword ptr [rip + 25602] # 0x14000e0d0
140007cce: 48 85 db                    	test	rbx, rbx
140007cd1: 75 55                       	jne	0x140007d28 <.text+0x6d28>
140007cd3: 48 83 c5 04                 	add	rbp, 4
140007cd7: 49 3b ec                    	cmp	rbp, r12
140007cda: 0f 85 2e ff ff ff           	jne	0x140007c0e <.text+0x6c0e>
140007ce0: 4c 8b 15 41 f3 00 00        	mov	r10, qword ptr [rip + 62273] # 0x140017028
140007ce7: 33 db                       	xor	ebx, ebx
140007ce9: 48 85 db                    	test	rbx, rbx
140007cec: 74 4a                       	je	0x140007d38 <.text+0x6d38>
140007cee: 49 8b d5                    	mov	rdx, r13
140007cf1: 48 8b cb                    	mov	rcx, rbx
140007cf4: ff 15 de 63 00 00           	call	qword ptr [rip + 25566] # 0x14000e0d8
140007cfa: 48 85 c0                    	test	rax, rax
140007cfd: 74 32                       	je	0x140007d31 <.text+0x6d31>
140007cff: 4c 8b 05 22 f3 00 00        	mov	r8, qword ptr [rip + 62242] # 0x140017028
140007d06: ba 40 00 00 00              	mov	edx, 64
140007d0b: 41 8b c8                    	mov	ecx, r8d
140007d0e: 83 e1 3f                    	and	ecx, 63
140007d11: 2b d1                       	sub	edx, ecx
140007d13: 8a ca                       	mov	cl, dl
140007d15: 48 8b d0                    	mov	rdx, rax
140007d18: 48 d3 ca                    	ror	rdx, cl
140007d1b: 49 33 d0                    	xor	rdx, r8
140007d1e: 4b 87 94 fe c0 84 01 00     	xchg	qword ptr [r14 + 8*r15 + 99520], rdx
140007d26: eb 2d                       	jmp	0x140007d55 <.text+0x6d55>
140007d28: 4c 8b 15 f9 f2 00 00        	mov	r10, qword ptr [rip + 62201] # 0x140017028
140007d2f: eb b8                       	jmp	0x140007ce9 <.text+0x6ce9>
140007d31: 4c 8b 15 f0 f2 00 00        	mov	r10, qword ptr [rip + 62192] # 0x140017028
140007d38: 41 8b c2                    	mov	eax, r10d
140007d3b: b9 40 00 00 00              	mov	ecx, 64
140007d40: 83 e0 3f                    	and	eax, 63
140007d43: 2b c8                       	sub	ecx, eax
140007d45: 48 d3 cf                    	ror	rdi, cl
140007d48: 49 33 fa                    	xor	rdi, r10
140007d4b: 4b 87 bc fe c0 84 01 00     	xchg	qword ptr [r14 + 8*r15 + 99520], rdi
140007d53: 33 c0                       	xor	eax, eax
140007d55: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
140007d5a: 48 8b 6c 24 58              	mov	rbp, qword ptr [rsp + 88]
140007d5f: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
140007d64: 48 83 c4 20                 	add	rsp, 32
140007d68: 41 5f                       	pop	r15
140007d6a: 41 5e                       	pop	r14
140007d6c: 41 5d                       	pop	r13
140007d6e: 41 5c                       	pop	r12
140007d70: 5f                          	pop	rdi
140007d71: c3                          	ret
140007d72: cc                          	int3
140007d73: cc                          	int3
140007d74: 40 53                       	push	rbx
140007d76: 48 83 ec 20                 	sub	rsp, 32
140007d7a: 48 8b d9                    	mov	rbx, rcx
140007d7d: 4c 8d 0d a4 8a 00 00        	lea	r9, [rip + 35492]       # 0x140010828
140007d84: b9 1c 00 00 00              	mov	ecx, 28
140007d89: 4c 8d 05 94 8a 00 00        	lea	r8, [rip + 35476]       # 0x140010824
140007d90: 48 8d 15 91 8a 00 00        	lea	rdx, [rip + 35473]      # 0x140010828
140007d97: e8 00 fe ff ff              	call	0x140007b9c <.text+0x6b9c>
140007d9c: 48 85 c0                    	test	rax, rax
140007d9f: 74 16                       	je	0x140007db7 <.text+0x6db7>
140007da1: 48 8b d3                    	mov	rdx, rbx
140007da4: 48 c7 c1 fa ff ff ff        	mov	rcx, -6
140007dab: 48 83 c4 20                 	add	rsp, 32
140007daf: 5b                          	pop	rbx
140007db0: 48 ff 25 79 64 00 00        	jmp	qword ptr [rip + 25721] # 0x14000e230
140007db7: b8 25 02 00 c0              	mov	eax, 3221226021
140007dbc: 48 83 c4 20                 	add	rsp, 32
140007dc0: 5b                          	pop	rbx
140007dc1: c3                          	ret
140007dc2: cc                          	int3
140007dc3: cc                          	int3
140007dc4: 48 83 ec 28                 	sub	rsp, 40
140007dc8: 4c 8d 0d cd 89 00 00        	lea	r9, [rip + 35277]       # 0x14001079c
140007dcf: 33 c9                       	xor	ecx, ecx
140007dd1: 4c 8d 05 c0 89 00 00        	lea	r8, [rip + 35264]       # 0x140010798
140007dd8: 48 8d 15 c1 89 00 00        	lea	rdx, [rip + 35265]      # 0x1400107a0
140007ddf: e8 b8 fd ff ff              	call	0x140007b9c <.text+0x6b9c>
140007de4: 48 85 c0                    	test	rax, rax
140007de7: 74 0b                       	je	0x140007df4 <.text+0x6df4>
140007de9: 48 83 c4 28                 	add	rsp, 40
140007ded: 48 ff 25 3c 64 00 00        	jmp	qword ptr [rip + 25660] # 0x14000e230
140007df4: b8 01 00 00 00              	mov	eax, 1
140007df9: 48 83 c4 28                 	add	rsp, 40
140007dfd: c3                          	ret
140007dfe: cc                          	int3
140007dff: cc                          	int3
140007e00: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007e05: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140007e0a: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140007e0f: 57                          	push	rdi
140007e10: 48 83 ec 50                 	sub	rsp, 80
140007e14: 41 8b d9                    	mov	ebx, r9d
140007e17: 49 8b f8                    	mov	rdi, r8
140007e1a: 8b f2                       	mov	esi, edx
140007e1c: 4c 8d 0d 95 89 00 00        	lea	r9, [rip + 35221]       # 0x1400107b8
140007e23: 48 8b e9                    	mov	rbp, rcx
140007e26: 4c 8d 05 83 89 00 00        	lea	r8, [rip + 35203]       # 0x1400107b0
140007e2d: 48 8d 15 84 89 00 00        	lea	rdx, [rip + 35204]      # 0x1400107b8
140007e34: b9 01 00 00 00              	mov	ecx, 1
140007e39: e8 5e fd ff ff              	call	0x140007b9c <.text+0x6b9c>
140007e3e: 48 85 c0                    	test	rax, rax
140007e41: 74 52                       	je	0x140007e95 <.text+0x6e95>
140007e43: 4c 8b 84 24 a0 00 00 00     	mov	r8, qword ptr [rsp + 160]
140007e4b: 44 8b cb                    	mov	r9d, ebx
140007e4e: 48 8b 8c 24 98 00 00 00     	mov	rcx, qword ptr [rsp + 152]
140007e56: 8b d6                       	mov	edx, esi
140007e58: 4c 89 44 24 40              	mov	qword ptr [rsp + 64], r8
140007e5d: 4c 8b c7                    	mov	r8, rdi
140007e60: 48 89 4c 24 38              	mov	qword ptr [rsp + 56], rcx
140007e65: 48 8b 8c 24 90 00 00 00     	mov	rcx, qword ptr [rsp + 144]
140007e6d: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
140007e72: 8b 8c 24 88 00 00 00        	mov	ecx, dword ptr [rsp + 136]
140007e79: 89 4c 24 28                 	mov	dword ptr [rsp + 40], ecx
140007e7d: 48 8b 8c 24 80 00 00 00     	mov	rcx, qword ptr [rsp + 128]
140007e85: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
140007e8a: 48 8b cd                    	mov	rcx, rbp
140007e8d: ff 15 9d 63 00 00           	call	qword ptr [rip + 25501] # 0x14000e230
140007e93: eb 32                       	jmp	0x140007ec7 <.text+0x6ec7>
140007e95: 33 d2                       	xor	edx, edx
140007e97: 48 8b cd                    	mov	rcx, rbp
140007e9a: e8 a9 02 00 00              	call	0x140008148 <.text+0x7148>
140007e9f: 8b c8                       	mov	ecx, eax
140007ea1: 44 8b cb                    	mov	r9d, ebx
140007ea4: 8b 84 24 88 00 00 00        	mov	eax, dword ptr [rsp + 136]
140007eab: 4c 8b c7                    	mov	r8, rdi
140007eae: 89 44 24 28                 	mov	dword ptr [rsp + 40], eax
140007eb2: 8b d6                       	mov	edx, esi
140007eb4: 48 8b 84 24 80 00 00 00     	mov	rax, qword ptr [rsp + 128]
140007ebc: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140007ec1: ff 15 f9 62 00 00           	call	qword ptr [rip + 25337] # 0x14000e1c0
140007ec7: 48 8b 5c 24 60              	mov	rbx, qword ptr [rsp + 96]
140007ecc: 48 8b 6c 24 68              	mov	rbp, qword ptr [rsp + 104]
140007ed1: 48 8b 74 24 70              	mov	rsi, qword ptr [rsp + 112]
140007ed6: 48 83 c4 50                 	add	rsp, 80
140007eda: 5f                          	pop	rdi
140007edb: c3                          	ret
140007edc: 40 53                       	push	rbx
140007ede: 48 83 ec 20                 	sub	rsp, 32
140007ee2: 48 8b d9                    	mov	rbx, rcx
140007ee5: 4c 8d 0d e4 88 00 00        	lea	r9, [rip + 35044]       # 0x1400107d0
140007eec: b9 03 00 00 00              	mov	ecx, 3
140007ef1: 4c 8d 05 d0 88 00 00        	lea	r8, [rip + 35024]       # 0x1400107c8
140007ef8: 48 8d 15 b1 72 00 00        	lea	rdx, [rip + 29361]      # 0x14000f1b0
140007eff: e8 98 fc ff ff              	call	0x140007b9c <.text+0x6b9c>
140007f04: 48 85 c0                    	test	rax, rax
140007f07: 74 0f                       	je	0x140007f18 <.text+0x6f18>
140007f09: 48 8b cb                    	mov	rcx, rbx
140007f0c: 48 83 c4 20                 	add	rsp, 32
140007f10: 5b                          	pop	rbx
140007f11: 48 ff 25 18 63 00 00        	jmp	qword ptr [rip + 25368] # 0x14000e230
140007f18: 48 83 c4 20                 	add	rsp, 32
140007f1c: 5b                          	pop	rbx
140007f1d: 48 ff 25 8c 61 00 00        	jmp	qword ptr [rip + 24972] # 0x14000e0b0
140007f24: 40 53                       	push	rbx
140007f26: 48 83 ec 20                 	sub	rsp, 32
140007f2a: 8b d9                       	mov	ebx, ecx
140007f2c: 4c 8d 0d a5 88 00 00        	lea	r9, [rip + 34981]       # 0x1400107d8
140007f33: b9 04 00 00 00              	mov	ecx, 4
140007f38: 4c 8d 05 91 88 00 00        	lea	r8, [rip + 34961]       # 0x1400107d0
140007f3f: 48 8d 15 82 72 00 00        	lea	rdx, [rip + 29314]      # 0x14000f1c8
140007f46: e8 51 fc ff ff              	call	0x140007b9c <.text+0x6b9c>
140007f4b: 8b cb                       	mov	ecx, ebx
140007f4d: 48 85 c0                    	test	rax, rax
140007f50: 74 0c                       	je	0x140007f5e <.text+0x6f5e>
140007f52: 48 83 c4 20                 	add	rsp, 32
140007f56: 5b                          	pop	rbx
140007f57: 48 ff 25 d2 62 00 00        	jmp	qword ptr [rip + 25298] # 0x14000e230
140007f5e: 48 83 c4 20                 	add	rsp, 32
140007f62: 5b                          	pop	rbx
140007f63: 48 ff 25 5e 61 00 00        	jmp	qword ptr [rip + 24926] # 0x14000e0c8
140007f6a: cc                          	int3
140007f6b: cc                          	int3
140007f6c: 40 53                       	push	rbx
140007f6e: 48 83 ec 20                 	sub	rsp, 32
140007f72: 8b d9                       	mov	ebx, ecx
140007f74: 4c 8d 0d 65 88 00 00        	lea	r9, [rip + 34917]       # 0x1400107e0
140007f7b: b9 05 00 00 00              	mov	ecx, 5
140007f80: 4c 8d 05 51 88 00 00        	lea	r8, [rip + 34897]       # 0x1400107d8
140007f87: 48 8d 15 4a 72 00 00        	lea	rdx, [rip + 29258]      # 0x14000f1d8
140007f8e: e8 09 fc ff ff              	call	0x140007b9c <.text+0x6b9c>
140007f93: 8b cb                       	mov	ecx, ebx
140007f95: 48 85 c0                    	test	rax, rax
140007f98: 74 0c                       	je	0x140007fa6 <.text+0x6fa6>
140007f9a: 48 83 c4 20                 	add	rsp, 32
140007f9e: 5b                          	pop	rbx
140007f9f: 48 ff 25 8a 62 00 00        	jmp	qword ptr [rip + 25226] # 0x14000e230
140007fa6: 48 83 c4 20                 	add	rsp, 32
140007faa: 5b                          	pop	rbx
140007fab: 48 ff 25 06 61 00 00        	jmp	qword ptr [rip + 24838] # 0x14000e0b8
140007fb2: cc                          	int3
140007fb3: cc                          	int3
140007fb4: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007fb9: 57                          	push	rdi
140007fba: 48 83 ec 20                 	sub	rsp, 32
140007fbe: 48 8b da                    	mov	rbx, rdx
140007fc1: 4c 8d 0d 20 88 00 00        	lea	r9, [rip + 34848]       # 0x1400107e8
140007fc8: 8b f9                       	mov	edi, ecx
140007fca: 48 8d 15 1f 72 00 00        	lea	rdx, [rip + 29215]      # 0x14000f1f0
140007fd1: b9 06 00 00 00              	mov	ecx, 6
140007fd6: 4c 8d 05 03 88 00 00        	lea	r8, [rip + 34819]       # 0x1400107e0
140007fdd: e8 ba fb ff ff              	call	0x140007b9c <.text+0x6b9c>
140007fe2: 48 8b d3                    	mov	rdx, rbx
140007fe5: 8b cf                       	mov	ecx, edi
140007fe7: 48 85 c0                    	test	rax, rax
140007fea: 74 08                       	je	0x140007ff4 <.text+0x6ff4>
140007fec: ff 15 3e 62 00 00           	call	qword ptr [rip + 25150] # 0x14000e230
140007ff2: eb 06                       	jmp	0x140007ffa <.text+0x6ffa>
140007ff4: ff 15 c6 60 00 00           	call	qword ptr [rip + 24774] # 0x14000e0c0
140007ffa: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140007fff: 48 83 c4 20                 	add	rsp, 32
140008003: 5f                          	pop	rdi
140008004: c3                          	ret
140008005: cc                          	int3
140008006: cc                          	int3
140008007: cc                          	int3
140008008: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000800d: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
140008012: 57                          	push	rdi
140008013: 48 83 ec 20                 	sub	rsp, 32
140008017: 41 8b f0                    	mov	esi, r8d
14000801a: 4c 8d 0d cf 87 00 00        	lea	r9, [rip + 34767]       # 0x1400107f0
140008021: 8b da                       	mov	ebx, edx
140008023: 4c 8d 05 be 87 00 00        	lea	r8, [rip + 34750]       # 0x1400107e8
14000802a: 48 8b f9                    	mov	rdi, rcx
14000802d: 48 8d 15 d4 71 00 00        	lea	rdx, [rip + 29140]      # 0x14000f208
140008034: b9 12 00 00 00              	mov	ecx, 18
140008039: e8 5e fb ff ff              	call	0x140007b9c <.text+0x6b9c>
14000803e: 8b d3                       	mov	edx, ebx
140008040: 48 8b cf                    	mov	rcx, rdi
140008043: 48 85 c0                    	test	rax, rax
140008046: 74 0b                       	je	0x140008053 <.text+0x7053>
140008048: 44 8b c6                    	mov	r8d, esi
14000804b: ff 15 df 61 00 00           	call	qword ptr [rip + 25055] # 0x14000e230
140008051: eb 06                       	jmp	0x140008059 <.text+0x7059>
140008053: ff 15 4f 60 00 00           	call	qword ptr [rip + 24655] # 0x14000e0a8
140008059: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000805e: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
140008063: 48 83 c4 20                 	add	rsp, 32
140008067: 5f                          	pop	rdi
140008068: c3                          	ret
140008069: cc                          	int3
14000806a: cc                          	int3
14000806b: cc                          	int3
14000806c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140008071: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140008076: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
14000807b: 57                          	push	rdi
14000807c: 48 83 ec 50                 	sub	rsp, 80
140008080: 41 8b d9                    	mov	ebx, r9d
140008083: 49 8b f8                    	mov	rdi, r8
140008086: 8b f2                       	mov	esi, edx
140008088: 4c 8d 0d 69 87 00 00        	lea	r9, [rip + 34665]       # 0x1400107f8
14000808f: 48 8b e9                    	mov	rbp, rcx
140008092: 4c 8d 05 57 87 00 00        	lea	r8, [rip + 34647]       # 0x1400107f0
140008099: 48 8d 15 58 87 00 00        	lea	rdx, [rip + 34648]      # 0x1400107f8
1400080a0: b9 14 00 00 00              	mov	ecx, 20
1400080a5: e8 f2 fa ff ff              	call	0x140007b9c <.text+0x6b9c>
1400080aa: 48 85 c0                    	test	rax, rax
1400080ad: 74 52                       	je	0x140008101 <.text+0x7101>
1400080af: 4c 8b 84 24 a0 00 00 00     	mov	r8, qword ptr [rsp + 160]
1400080b7: 44 8b cb                    	mov	r9d, ebx
1400080ba: 48 8b 8c 24 98 00 00 00     	mov	rcx, qword ptr [rsp + 152]
1400080c2: 8b d6                       	mov	edx, esi
1400080c4: 4c 89 44 24 40              	mov	qword ptr [rsp + 64], r8
1400080c9: 4c 8b c7                    	mov	r8, rdi
1400080cc: 48 89 4c 24 38              	mov	qword ptr [rsp + 56], rcx
1400080d1: 48 8b 8c 24 90 00 00 00     	mov	rcx, qword ptr [rsp + 144]
1400080d9: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
1400080de: 8b 8c 24 88 00 00 00        	mov	ecx, dword ptr [rsp + 136]
1400080e5: 89 4c 24 28                 	mov	dword ptr [rsp + 40], ecx
1400080e9: 48 8b 8c 24 80 00 00 00     	mov	rcx, qword ptr [rsp + 128]
1400080f1: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
1400080f6: 48 8b cd                    	mov	rcx, rbp
1400080f9: ff 15 31 61 00 00           	call	qword ptr [rip + 24881] # 0x14000e230
1400080ff: eb 32                       	jmp	0x140008133 <.text+0x7133>
140008101: 33 d2                       	xor	edx, edx
140008103: 48 8b cd                    	mov	rcx, rbp
140008106: e8 3d 00 00 00              	call	0x140008148 <.text+0x7148>
14000810b: 8b c8                       	mov	ecx, eax
14000810d: 44 8b cb                    	mov	r9d, ebx
140008110: 8b 84 24 88 00 00 00        	mov	eax, dword ptr [rsp + 136]
140008117: 4c 8b c7                    	mov	r8, rdi
14000811a: 89 44 24 28                 	mov	dword ptr [rsp + 40], eax
14000811e: 8b d6                       	mov	edx, esi
140008120: 48 8b 84 24 80 00 00 00     	mov	rax, qword ptr [rsp + 128]
140008128: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000812d: ff 15 95 60 00 00           	call	qword ptr [rip + 24725] # 0x14000e1c8
140008133: 48 8b 5c 24 60              	mov	rbx, qword ptr [rsp + 96]
140008138: 48 8b 6c 24 68              	mov	rbp, qword ptr [rsp + 104]
14000813d: 48 8b 74 24 70              	mov	rsi, qword ptr [rsp + 112]
140008142: 48 83 c4 50                 	add	rsp, 80
140008146: 5f                          	pop	rdi
140008147: c3                          	ret
140008148: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000814d: 57                          	push	rdi
14000814e: 48 83 ec 20                 	sub	rsp, 32
140008152: 8b fa                       	mov	edi, edx
140008154: 4c 8d 0d b5 86 00 00        	lea	r9, [rip + 34485]       # 0x140010810
14000815b: 48 8b d9                    	mov	rbx, rcx
14000815e: 48 8d 15 ab 86 00 00        	lea	rdx, [rip + 34475]      # 0x140010810
140008165: b9 16 00 00 00              	mov	ecx, 22
14000816a: 4c 8d 05 97 86 00 00        	lea	r8, [rip + 34455]       # 0x140010808
140008171: e8 26 fa ff ff              	call	0x140007b9c <.text+0x6b9c>
140008176: 48 8b cb                    	mov	rcx, rbx
140008179: 48 85 c0                    	test	rax, rax
14000817c: 74 0a                       	je	0x140008188 <.text+0x7188>
14000817e: 8b d7                       	mov	edx, edi
140008180: ff 15 aa 60 00 00           	call	qword ptr [rip + 24746] # 0x14000e230
140008186: eb 05                       	jmp	0x14000818d <.text+0x718d>
140008188: e8 1b 1c 00 00              	call	0x140009da8 <.text+0x8da8>
14000818d: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008192: 48 83 c4 20                 	add	rsp, 32
140008196: 5f                          	pop	rdi
140008197: c3                          	ret
140008198: 48 89 7c 24 08              	mov	qword ptr [rsp + 8], rdi
14000819d: 48 8d 3d 1c 03 01 00        	lea	rdi, [rip + 66332]      # 0x1400184c0
1400081a4: 48 8d 05 25 04 01 00        	lea	rax, [rip + 66597]      # 0x1400185d0
1400081ab: 48 3b c7                    	cmp	rax, rdi
1400081ae: 48 8b 05 73 ee 00 00        	mov	rax, qword ptr [rip + 61043] # 0x140017028
1400081b5: 48 1b c9                    	sbb	rcx, rcx
1400081b8: 48 f7 d1                    	not	rcx
1400081bb: 83 e1 22                    	and	ecx, 34
1400081be: f3 48 ab                    	rep		stosq	qword ptr es:[rdi], rax
1400081c1: 48 8b 7c 24 08              	mov	rdi, qword ptr [rsp + 8]
1400081c6: b0 01                       	mov	al, 1
1400081c8: c3                          	ret
1400081c9: cc                          	int3
1400081ca: cc                          	int3
1400081cb: cc                          	int3
1400081cc: 40 53                       	push	rbx
1400081ce: 48 83 ec 20                 	sub	rsp, 32
1400081d2: 84 c9                       	test	cl, cl
1400081d4: 75 2f                       	jne	0x140008205 <.text+0x7205>
1400081d6: 48 8d 1d 43 02 01 00        	lea	rbx, [rip + 66115]      # 0x140018420
1400081dd: 48 8b 0b                    	mov	rcx, qword ptr [rbx]
1400081e0: 48 85 c9                    	test	rcx, rcx
1400081e3: 74 10                       	je	0x1400081f5 <.text+0x71f5>
1400081e5: 48 83 f9 ff                 	cmp	rcx, -1
1400081e9: 74 06                       	je	0x1400081f1 <.text+0x71f1>
1400081eb: ff 15 df 5e 00 00           	call	qword ptr [rip + 24287] # 0x14000e0d0
1400081f1: 48 83 23 00                 	and	qword ptr [rbx], 0
1400081f5: 48 83 c3 08                 	add	rbx, 8
1400081f9: 48 8d 05 c0 02 01 00        	lea	rax, [rip + 66240]      # 0x1400184c0
140008200: 48 3b d8                    	cmp	rbx, rax
140008203: 75 d8                       	jne	0x1400081dd <.text+0x71dd>
140008205: b0 01                       	mov	al, 1
140008207: 48 83 c4 20                 	add	rsp, 32
14000820b: 5b                          	pop	rbx
14000820c: c3                          	ret
14000820d: cc                          	int3
14000820e: cc                          	int3
14000820f: cc                          	int3
140008210: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140008215: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
14000821a: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
14000821f: 57                          	push	rdi
140008220: 48 83 ec 20                 	sub	rsp, 32
140008224: 49 8b e8                    	mov	rbp, r8
140008227: 48 8b da                    	mov	rbx, rdx
14000822a: 48 8b f1                    	mov	rsi, rcx
14000822d: 48 85 d2                    	test	rdx, rdx
140008230: 74 1d                       	je	0x14000824f <.text+0x724f>
140008232: 33 d2                       	xor	edx, edx
140008234: 48 8d 42 e0                 	lea	rax, [rdx - 32]
140008238: 48 f7 f3                    	div	rbx
14000823b: 49 3b c0                    	cmp	rax, r8
14000823e: 73 0f                       	jae	0x14000824f <.text+0x724f>
140008240: e8 cb cb ff ff              	call	0x140004e10 <.text+0x3e10>
140008245: c7 00 0c 00 00 00           	mov	dword ptr [rax], 12
14000824b: 33 c0                       	xor	eax, eax
14000824d: eb 41                       	jmp	0x140008290 <.text+0x7290>
14000824f: 48 85 f6                    	test	rsi, rsi
140008252: 74 0a                       	je	0x14000825e <.text+0x725e>
140008254: e8 ff 1b 00 00              	call	0x140009e58 <.text+0x8e58>
140008259: 48 8b f8                    	mov	rdi, rax
14000825c: eb 02                       	jmp	0x140008260 <.text+0x7260>
14000825e: 33 ff                       	xor	edi, edi
140008260: 48 0f af dd                 	imul	rbx, rbp
140008264: 48 8b ce                    	mov	rcx, rsi
140008267: 48 8b d3                    	mov	rdx, rbx
14000826a: e8 25 1c 00 00              	call	0x140009e94 <.text+0x8e94>
14000826f: 48 8b f0                    	mov	rsi, rax
140008272: 48 85 c0                    	test	rax, rax
140008275: 74 16                       	je	0x14000828d <.text+0x728d>
140008277: 48 3b fb                    	cmp	rdi, rbx
14000827a: 73 11                       	jae	0x14000828d <.text+0x728d>
14000827c: 48 2b df                    	sub	rbx, rdi
14000827f: 48 8d 0c 38                 	lea	rcx, [rax + rdi]
140008283: 4c 8b c3                    	mov	r8, rbx
140008286: 33 d2                       	xor	edx, edx
140008288: e8 33 9b ff ff              	call	0x140001dc0 <.text+0xdc0>
14000828d: 48 8b c6                    	mov	rax, rsi
140008290: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008295: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
14000829a: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
14000829f: 48 83 c4 20                 	add	rsp, 32
1400082a3: 5f                          	pop	rdi
1400082a4: c3                          	ret
1400082a5: cc                          	int3
1400082a6: cc                          	int3
1400082a7: cc                          	int3
1400082a8: 48 83 ec 28                 	sub	rsp, 40
1400082ac: ff 15 1e 5f 00 00           	call	qword ptr [rip + 24350] # 0x14000e1d0
1400082b2: 48 85 c0                    	test	rax, rax
1400082b5: 48 89 05 1c 03 01 00        	mov	qword ptr [rip + 66332], rax # 0x1400185d8
1400082bc: 0f 95 c0                    	setne	al
1400082bf: 48 83 c4 28                 	add	rsp, 40
1400082c3: c3                          	ret
1400082c4: 48 83 25 0c 03 01 00 00     	and	qword ptr [rip + 66316], 0 # 0x1400185d8
1400082cc: b0 01                       	mov	al, 1
1400082ce: c3                          	ret
1400082cf: cc                          	int3
1400082d0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400082d5: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
1400082da: 57                          	push	rdi
1400082db: 48 83 ec 20                 	sub	rsp, 32
1400082df: 48 8b f2                    	mov	rsi, rdx
1400082e2: 48 8b f9                    	mov	rdi, rcx
1400082e5: 48 3b ca                    	cmp	rcx, rdx
1400082e8: 74 54                       	je	0x14000833e <.text+0x733e>
1400082ea: 48 8b d9                    	mov	rbx, rcx
1400082ed: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400082f0: 48 85 c0                    	test	rax, rax
1400082f3: 74 0a                       	je	0x1400082ff <.text+0x72ff>
1400082f5: ff 15 35 5f 00 00           	call	qword ptr [rip + 24373] # 0x14000e230
1400082fb: 84 c0                       	test	al, al
1400082fd: 74 09                       	je	0x140008308 <.text+0x7308>
1400082ff: 48 83 c3 10                 	add	rbx, 16
140008303: 48 3b de                    	cmp	rbx, rsi
140008306: 75 e5                       	jne	0x1400082ed <.text+0x72ed>
140008308: 48 3b de                    	cmp	rbx, rsi
14000830b: 74 31                       	je	0x14000833e <.text+0x733e>
14000830d: 48 3b df                    	cmp	rbx, rdi
140008310: 74 28                       	je	0x14000833a <.text+0x733a>
140008312: 48 83 c3 f8                 	add	rbx, -8
140008316: 48 83 7b f8 00              	cmp	qword ptr [rbx - 8], 0
14000831b: 74 10                       	je	0x14000832d <.text+0x732d>
14000831d: 48 8b 03                    	mov	rax, qword ptr [rbx]
140008320: 48 85 c0                    	test	rax, rax
140008323: 74 08                       	je	0x14000832d <.text+0x732d>
140008325: 33 c9                       	xor	ecx, ecx
140008327: ff 15 03 5f 00 00           	call	qword ptr [rip + 24323] # 0x14000e230
14000832d: 48 83 eb 10                 	sub	rbx, 16
140008331: 48 8d 43 08                 	lea	rax, [rbx + 8]
140008335: 48 3b c7                    	cmp	rax, rdi
140008338: 75 dc                       	jne	0x140008316 <.text+0x7316>
14000833a: 32 c0                       	xor	al, al
14000833c: eb 02                       	jmp	0x140008340 <.text+0x7340>
14000833e: b0 01                       	mov	al, 1
140008340: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008345: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
14000834a: 48 83 c4 20                 	add	rsp, 32
14000834e: 5f                          	pop	rdi
14000834f: c3                          	ret
140008350: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140008355: 57                          	push	rdi
140008356: 48 83 ec 20                 	sub	rsp, 32
14000835a: 48 8b da                    	mov	rbx, rdx
14000835d: 48 8b f9                    	mov	rdi, rcx
140008360: 48 3b ca                    	cmp	rcx, rdx
140008363: 74 1a                       	je	0x14000837f <.text+0x737f>
140008365: 48 8b 43 f8                 	mov	rax, qword ptr [rbx - 8]
140008369: 48 85 c0                    	test	rax, rax
14000836c: 74 08                       	je	0x140008376 <.text+0x7376>
14000836e: 33 c9                       	xor	ecx, ecx
140008370: ff 15 ba 5e 00 00           	call	qword ptr [rip + 24250] # 0x14000e230
140008376: 48 83 eb 10                 	sub	rbx, 16
14000837a: 48 3b df                    	cmp	rbx, rdi
14000837d: 75 e6                       	jne	0x140008365 <.text+0x7365>
14000837f: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008384: b0 01                       	mov	al, 1
140008386: 48 83 c4 20                 	add	rsp, 32
14000838a: 5f                          	pop	rdi
14000838b: c3                          	ret
14000838c: 48 89 0d 4d 02 01 00        	mov	qword ptr [rip + 66125], rcx # 0x1400185e0
140008393: c3                          	ret
140008394: 40 53                       	push	rbx
140008396: 48 83 ec 20                 	sub	rsp, 32
14000839a: 48 8b d9                    	mov	rbx, rcx
14000839d: e8 22 00 00 00              	call	0x1400083c4 <.text+0x73c4>
1400083a2: 48 85 c0                    	test	rax, rax
1400083a5: 74 14                       	je	0x1400083bb <.text+0x73bb>
1400083a7: 48 8b cb                    	mov	rcx, rbx
1400083aa: ff 15 80 5e 00 00           	call	qword ptr [rip + 24192] # 0x14000e230
1400083b0: 85 c0                       	test	eax, eax
1400083b2: 74 07                       	je	0x1400083bb <.text+0x73bb>
1400083b4: b8 01 00 00 00              	mov	eax, 1
1400083b9: eb 02                       	jmp	0x1400083bd <.text+0x73bd>
1400083bb: 33 c0                       	xor	eax, eax
1400083bd: 48 83 c4 20                 	add	rsp, 32
1400083c1: 5b                          	pop	rbx
1400083c2: c3                          	ret
1400083c3: cc                          	int3
1400083c4: 40 53                       	push	rbx
1400083c6: 48 83 ec 20                 	sub	rsp, 32
1400083ca: 33 c9                       	xor	ecx, ecx
1400083cc: e8 63 e8 ff ff              	call	0x140006c34 <.text+0x5c34>
1400083d1: 90                          	nop
1400083d2: 48 8b 1d 4f ec 00 00        	mov	rbx, qword ptr [rip + 60495] # 0x140017028
1400083d9: 8b cb                       	mov	ecx, ebx
1400083db: 83 e1 3f                    	and	ecx, 63
1400083de: 48 33 1d fb 01 01 00        	xor	rbx, qword ptr [rip + 66043] # 0x1400185e0
1400083e5: 48 d3 cb                    	ror	rbx, cl
1400083e8: 33 c9                       	xor	ecx, ecx
1400083ea: e8 99 e8 ff ff              	call	0x140006c88 <.text+0x5c88>
1400083ef: 48 8b c3                    	mov	rax, rbx
1400083f2: 48 83 c4 20                 	add	rsp, 32
1400083f6: 5b                          	pop	rbx
1400083f7: c3                          	ret
1400083f8: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400083fd: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140008402: 57                          	push	rdi
140008403: 48 83 ec 20                 	sub	rsp, 32
140008407: 49 8b f9                    	mov	rdi, r9
14000840a: 8b 0a                       	mov	ecx, dword ptr [rdx]
14000840c: e8 23 e8 ff ff              	call	0x140006c34 <.text+0x5c34>
140008411: 90                          	nop
140008412: 48 8b 1d 0f ec 00 00        	mov	rbx, qword ptr [rip + 60431] # 0x140017028
140008419: 8b cb                       	mov	ecx, ebx
14000841b: 83 e1 3f                    	and	ecx, 63
14000841e: 48 33 1d d3 01 01 00        	xor	rbx, qword ptr [rip + 66003] # 0x1400185f8
140008425: 48 d3 cb                    	ror	rbx, cl
140008428: 8b 0f                       	mov	ecx, dword ptr [rdi]
14000842a: e8 59 e8 ff ff              	call	0x140006c88 <.text+0x5c88>
14000842f: 48 8b c3                    	mov	rax, rbx
140008432: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008437: 48 83 c4 20                 	add	rsp, 32
14000843b: 5f                          	pop	rdi
14000843c: c3                          	ret
14000843d: cc                          	int3
14000843e: cc                          	int3
14000843f: cc                          	int3
140008440: 4c 8b dc                    	mov	r11, rsp
140008443: 48 83 ec 28                 	sub	rsp, 40
140008447: b8 03 00 00 00              	mov	eax, 3
14000844c: 4d 8d 4b 10                 	lea	r9, [r11 + 16]
140008450: 4d 8d 43 08                 	lea	r8, [r11 + 8]
140008454: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
140008458: 49 8d 53 18                 	lea	rdx, [r11 + 24]
14000845c: 89 44 24 40                 	mov	dword ptr [rsp + 64], eax
140008460: 49 8d 4b 08                 	lea	rcx, [r11 + 8]
140008464: e8 8f ff ff ff              	call	0x1400083f8 <.text+0x73f8>
140008469: 48 83 c4 28                 	add	rsp, 40
14000846d: c3                          	ret
14000846e: cc                          	int3
14000846f: cc                          	int3
140008470: 48 89 0d 71 01 01 00        	mov	qword ptr [rip + 65905], rcx # 0x1400185e8
140008477: 48 89 0d 72 01 01 00        	mov	qword ptr [rip + 65906], rcx # 0x1400185f0
14000847e: 48 89 0d 73 01 01 00        	mov	qword ptr [rip + 65907], rcx # 0x1400185f8
140008485: 48 89 0d 74 01 01 00        	mov	qword ptr [rip + 65908], rcx # 0x140018600
14000848c: c3                          	ret
14000848d: cc                          	int3
14000848e: cc                          	int3
14000848f: cc                          	int3
140008490: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140008495: 56                          	push	rsi
140008496: 57                          	push	rdi
140008497: 41 54                       	push	r12
140008499: 41 55                       	push	r13
14000849b: 41 56                       	push	r14
14000849d: 48 83 ec 40                 	sub	rsp, 64
1400084a1: 8b d9                       	mov	ebx, ecx
1400084a3: 45 33 ed                    	xor	r13d, r13d
1400084a6: 44 21 6c 24 78              	and	dword ptr [rsp + 120], r13d
1400084ab: 41 b6 01                    	mov	r14b, 1
1400084ae: 44 88 74 24 70              	mov	byte ptr [rsp + 112], r14b
1400084b3: 83 f9 02                    	cmp	ecx, 2
1400084b6: 74 21                       	je	0x1400084d9 <.text+0x74d9>
1400084b8: 83 f9 04                    	cmp	ecx, 4
1400084bb: 74 4c                       	je	0x140008509 <.text+0x7509>
1400084bd: 83 f9 06                    	cmp	ecx, 6
1400084c0: 74 17                       	je	0x1400084d9 <.text+0x74d9>
1400084c2: 83 f9 08                    	cmp	ecx, 8
1400084c5: 74 42                       	je	0x140008509 <.text+0x7509>
1400084c7: 83 f9 0b                    	cmp	ecx, 11
1400084ca: 74 3d                       	je	0x140008509 <.text+0x7509>
1400084cc: 83 f9 0f                    	cmp	ecx, 15
1400084cf: 74 08                       	je	0x1400084d9 <.text+0x74d9>
1400084d1: 8d 41 eb                    	lea	eax, [rcx - 21]
1400084d4: 83 f8 01                    	cmp	eax, 1
1400084d7: 77 7d                       	ja	0x140008556 <.text+0x7556>
1400084d9: 83 e9 02                    	sub	ecx, 2
1400084dc: 0f 84 af 00 00 00           	je	0x140008591 <.text+0x7591>
1400084e2: 83 e9 04                    	sub	ecx, 4
1400084e5: 0f 84 8b 00 00 00           	je	0x140008576 <.text+0x7576>
1400084eb: 83 e9 09                    	sub	ecx, 9
1400084ee: 0f 84 94 00 00 00           	je	0x140008588 <.text+0x7588>
1400084f4: 83 e9 06                    	sub	ecx, 6
1400084f7: 0f 84 82 00 00 00           	je	0x14000857f <.text+0x757f>
1400084fd: 83 f9 01                    	cmp	ecx, 1
140008500: 74 74                       	je	0x140008576 <.text+0x7576>
140008502: 33 ff                       	xor	edi, edi
140008504: e9 8f 00 00 00              	jmp	0x140008598 <.text+0x7598>
140008509: e8 a2 c4 ff ff              	call	0x1400049b0 <.text+0x39b0>
14000850e: 4c 8b e8                    	mov	r13, rax
140008511: 48 85 c0                    	test	rax, rax
140008514: 75 18                       	jne	0x14000852e <.text+0x752e>
140008516: 83 c8 ff                    	or	eax, -1
140008519: 48 8b 9c 24 88 00 00 00     	mov	rbx, qword ptr [rsp + 136]
140008521: 48 83 c4 40                 	add	rsp, 64
140008525: 41 5e                       	pop	r14
140008527: 41 5d                       	pop	r13
140008529: 41 5c                       	pop	r12
14000852b: 5f                          	pop	rdi
14000852c: 5e                          	pop	rsi
14000852d: c3                          	ret
14000852e: 48 8b 00                    	mov	rax, qword ptr [rax]
140008531: 48 8b 0d b8 6d 00 00        	mov	rcx, qword ptr [rip + 28088] # 0x14000f2f0
140008538: 48 c1 e1 04                 	shl	rcx, 4
14000853c: 48 03 c8                    	add	rcx, rax
14000853f: eb 09                       	jmp	0x14000854a <.text+0x754a>
140008541: 39 58 04                    	cmp	dword ptr [rax + 4], ebx
140008544: 74 0b                       	je	0x140008551 <.text+0x7551>
140008546: 48 83 c0 10                 	add	rax, 16
14000854a: 48 3b c1                    	cmp	rax, rcx
14000854d: 75 f2                       	jne	0x140008541 <.text+0x7541>
14000854f: 33 c0                       	xor	eax, eax
140008551: 48 85 c0                    	test	rax, rax
140008554: 75 12                       	jne	0x140008568 <.text+0x7568>
140008556: e8 b5 c8 ff ff              	call	0x140004e10 <.text+0x3e10>
14000855b: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140008561: e8 8a c7 ff ff              	call	0x140004cf0 <.text+0x3cf0>
140008566: eb ae                       	jmp	0x140008516 <.text+0x7516>
140008568: 48 8d 78 08                 	lea	rdi, [rax + 8]
14000856c: 45 32 f6                    	xor	r14b, r14b
14000856f: 44 88 74 24 70              	mov	byte ptr [rsp + 112], r14b
140008574: eb 22                       	jmp	0x140008598 <.text+0x7598>
140008576: 48 8d 3d 7b 00 01 00        	lea	rdi, [rip + 65659]      # 0x1400185f8
14000857d: eb 19                       	jmp	0x140008598 <.text+0x7598>
14000857f: 48 8d 3d 6a 00 01 00        	lea	rdi, [rip + 65642]      # 0x1400185f0
140008586: eb 10                       	jmp	0x140008598 <.text+0x7598>
140008588: 48 8d 3d 71 00 01 00        	lea	rdi, [rip + 65649]      # 0x140018600
14000858f: eb 07                       	jmp	0x140008598 <.text+0x7598>
140008591: 48 8d 3d 50 00 01 00        	lea	rdi, [rip + 65616]      # 0x1400185e8
140008598: 48 83 a4 24 80 00 00 00 00  	and	qword ptr [rsp + 128], 0
1400085a1: 45 84 f6                    	test	r14b, r14b
1400085a4: 74 0b                       	je	0x1400085b1 <.text+0x75b1>
1400085a6: b9 03 00 00 00              	mov	ecx, 3
1400085ab: e8 84 e6 ff ff              	call	0x140006c34 <.text+0x5c34>
1400085b0: 90                          	nop
1400085b1: 48 8b 37                    	mov	rsi, qword ptr [rdi]
1400085b4: 45 84 f6                    	test	r14b, r14b
1400085b7: 74 12                       	je	0x1400085cb <.text+0x75cb>
1400085b9: 48 8b 05 68 ea 00 00        	mov	rax, qword ptr [rip + 60008] # 0x140017028
1400085c0: 8b c8                       	mov	ecx, eax
1400085c2: 83 e1 3f                    	and	ecx, 63
1400085c5: 48 33 f0                    	xor	rsi, rax
1400085c8: 48 d3 ce                    	ror	rsi, cl
1400085cb: 48 83 fe 01                 	cmp	rsi, 1
1400085cf: 0f 84 94 00 00 00           	je	0x140008669 <.text+0x7669>
1400085d5: 48 85 f6                    	test	rsi, rsi
1400085d8: 0f 84 03 01 00 00           	je	0x1400086e1 <.text+0x76e1>
1400085de: 41 bc 10 09 00 00           	mov	r12d, 2320
1400085e4: 83 fb 0b                    	cmp	ebx, 11
1400085e7: 77 3d                       	ja	0x140008626 <.text+0x7626>
1400085e9: 41 0f a3 dc                 	bt	r12d, ebx
1400085ed: 73 37                       	jae	0x140008626 <.text+0x7626>
1400085ef: 49 8b 45 08                 	mov	rax, qword ptr [r13 + 8]
1400085f3: 48 89 84 24 80 00 00 00     	mov	qword ptr [rsp + 128], rax
1400085fb: 48 89 44 24 30              	mov	qword ptr [rsp + 48], rax
140008600: 49 83 65 08 00              	and	qword ptr [r13 + 8], 0
140008605: 83 fb 08                    	cmp	ebx, 8
140008608: 75 53                       	jne	0x14000865d <.text+0x765d>
14000860a: e8 25 c2 ff ff              	call	0x140004834 <.text+0x3834>
14000860f: 8b 40 10                    	mov	eax, dword ptr [rax + 16]
140008612: 89 44 24 78                 	mov	dword ptr [rsp + 120], eax
140008616: 89 44 24 20                 	mov	dword ptr [rsp + 32], eax
14000861a: e8 15 c2 ff ff              	call	0x140004834 <.text+0x3834>
14000861f: c7 40 10 8c 00 00 00        	mov	dword ptr [rax + 16], 140
140008626: 83 fb 08                    	cmp	ebx, 8
140008629: 75 32                       	jne	0x14000865d <.text+0x765d>
14000862b: 48 8b 05 c6 6c 00 00        	mov	rax, qword ptr [rip + 27846] # 0x14000f2f8
140008632: 48 c1 e0 04                 	shl	rax, 4
140008636: 49 03 45 00                 	add	rax, qword ptr [r13]
14000863a: 48 8b 0d bf 6c 00 00        	mov	rcx, qword ptr [rip + 27839] # 0x14000f300
140008641: 48 c1 e1 04                 	shl	rcx, 4
140008645: 48 03 c8                    	add	rcx, rax
140008648: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
14000864d: 48 3b c1                    	cmp	rax, rcx
140008650: 74 1d                       	je	0x14000866f <.text+0x766f>
140008652: 48 83 60 08 00              	and	qword ptr [rax + 8], 0
140008657: 48 83 c0 10                 	add	rax, 16
14000865b: eb eb                       	jmp	0x140008648 <.text+0x7648>
14000865d: 48 8b 05 c4 e9 00 00        	mov	rax, qword ptr [rip + 59844] # 0x140017028
140008664: 48 89 07                    	mov	qword ptr [rdi], rax
140008667: eb 06                       	jmp	0x14000866f <.text+0x766f>
140008669: 41 bc 10 09 00 00           	mov	r12d, 2320
14000866f: 45 84 f6                    	test	r14b, r14b
140008672: 74 0a                       	je	0x14000867e <.text+0x767e>
140008674: b9 03 00 00 00              	mov	ecx, 3
140008679: e8 0a e6 ff ff              	call	0x140006c88 <.text+0x5c88>
14000867e: 48 83 fe 01                 	cmp	rsi, 1
140008682: 75 07                       	jne	0x14000868b <.text+0x768b>
140008684: 33 c0                       	xor	eax, eax
140008686: e9 8e fe ff ff              	jmp	0x140008519 <.text+0x7519>
14000868b: 83 fb 08                    	cmp	ebx, 8
14000868e: 75 19                       	jne	0x1400086a9 <.text+0x76a9>
140008690: e8 9f c1 ff ff              	call	0x140004834 <.text+0x3834>
140008695: 8b 50 10                    	mov	edx, dword ptr [rax + 16]
140008698: 8b cb                       	mov	ecx, ebx
14000869a: 48 8b c6                    	mov	rax, rsi
14000869d: 4c 8b 05 8c 5b 00 00        	mov	r8, qword ptr [rip + 23436] # 0x14000e230
1400086a4: 41 ff d0                    	call	r8
1400086a7: eb 0e                       	jmp	0x1400086b7 <.text+0x76b7>
1400086a9: 8b cb                       	mov	ecx, ebx
1400086ab: 48 8b c6                    	mov	rax, rsi
1400086ae: 48 8b 15 7b 5b 00 00        	mov	rdx, qword ptr [rip + 23419] # 0x14000e230
1400086b5: ff d2                       	call	rdx
1400086b7: 83 fb 0b                    	cmp	ebx, 11
1400086ba: 77 c8                       	ja	0x140008684 <.text+0x7684>
1400086bc: 41 0f a3 dc                 	bt	r12d, ebx
1400086c0: 73 c2                       	jae	0x140008684 <.text+0x7684>
1400086c2: 48 8b 84 24 80 00 00 00     	mov	rax, qword ptr [rsp + 128]
1400086ca: 49 89 45 08                 	mov	qword ptr [r13 + 8], rax
1400086ce: 83 fb 08                    	cmp	ebx, 8
1400086d1: 75 b1                       	jne	0x140008684 <.text+0x7684>
1400086d3: e8 5c c1 ff ff              	call	0x140004834 <.text+0x3834>
1400086d8: 8b 4c 24 78                 	mov	ecx, dword ptr [rsp + 120]
1400086dc: 89 48 10                    	mov	dword ptr [rax + 16], ecx
1400086df: eb a3                       	jmp	0x140008684 <.text+0x7684>
1400086e1: 45 84 f6                    	test	r14b, r14b
1400086e4: 74 08                       	je	0x1400086ee <.text+0x76ee>
1400086e6: 8d 4e 03                    	lea	ecx, [rsi + 3]
1400086e9: e8 9a e5 ff ff              	call	0x140006c88 <.text+0x5c88>
1400086ee: b9 03 00 00 00              	mov	ecx, 3
1400086f3: e8 e4 b3 ff ff              	call	0x140003adc <.text+0x2adc>
1400086f8: 90                          	nop
1400086f9: cc                          	int3
1400086fa: cc                          	int3
1400086fb: cc                          	int3
1400086fc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140008701: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140008706: 57                          	push	rdi
140008707: 48 83 ec 20                 	sub	rsp, 32
14000870b: 49 8b f9                    	mov	rdi, r9
14000870e: 49 8b d8                    	mov	rbx, r8
140008711: 48 8b 0a                    	mov	rcx, qword ptr [rdx]
140008714: e8 0b 04 00 00              	call	0x140008b24 <.text+0x7b24>
140008719: 90                          	nop
14000871a: 48 8b 53 08                 	mov	rdx, qword ptr [rbx + 8]
14000871e: 48 8b 03                    	mov	rax, qword ptr [rbx]
140008721: 48 8b 00                    	mov	rax, qword ptr [rax]
140008724: 48 85 c0                    	test	rax, rax
140008727: 74 5a                       	je	0x140008783 <.text+0x7783>
140008729: 8b 48 14                    	mov	ecx, dword ptr [rax + 20]
14000872c: 8b c1                       	mov	eax, ecx
14000872e: c1 e8 0d                    	shr	eax, 13
140008731: a8 01                       	test	al, 1
140008733: 74 4e                       	je	0x140008783 <.text+0x7783>
140008735: 8b c1                       	mov	eax, ecx
140008737: 24 03                       	and	al, 3
140008739: 3c 02                       	cmp	al, 2
14000873b: 75 05                       	jne	0x140008742 <.text+0x7742>
14000873d: f6 c1 c0                    	test	cl, -64
140008740: 75 0a                       	jne	0x14000874c <.text+0x774c>
140008742: 0f ba e1 0b                 	bt	ecx, 11
140008746: 72 04                       	jb	0x14000874c <.text+0x774c>
140008748: ff 02                       	inc	dword ptr [rdx]
14000874a: eb 37                       	jmp	0x140008783 <.text+0x7783>
14000874c: 48 8b 43 10                 	mov	rax, qword ptr [rbx + 16]
140008750: 80 38 00                    	cmp	byte ptr [rax], 0
140008753: 75 0f                       	jne	0x140008764 <.text+0x7764>
140008755: 48 8b 03                    	mov	rax, qword ptr [rbx]
140008758: 48 8b 08                    	mov	rcx, qword ptr [rax]
14000875b: 8b 41 14                    	mov	eax, dword ptr [rcx + 20]
14000875e: d1 e8                       	shr	eax
140008760: a8 01                       	test	al, 1
140008762: 74 1f                       	je	0x140008783 <.text+0x7783>
140008764: 48 8b 03                    	mov	rax, qword ptr [rbx]
140008767: 48 8b 08                    	mov	rcx, qword ptr [rax]
14000876a: e8 e5 01 00 00              	call	0x140008954 <.text+0x7954>
14000876f: 83 f8 ff                    	cmp	eax, -1
140008772: 74 08                       	je	0x14000877c <.text+0x777c>
140008774: 48 8b 43 08                 	mov	rax, qword ptr [rbx + 8]
140008778: ff 00                       	inc	dword ptr [rax]
14000877a: eb 07                       	jmp	0x140008783 <.text+0x7783>
14000877c: 48 8b 43 18                 	mov	rax, qword ptr [rbx + 24]
140008780: 83 08 ff                    	or	dword ptr [rax], -1
140008783: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
140008786: e8 a5 03 00 00              	call	0x140008b30 <.text+0x7b30>
14000878b: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008790: 48 83 c4 20                 	add	rsp, 32
140008794: 5f                          	pop	rdi
140008795: c3                          	ret
140008796: cc                          	int3
140008797: cc                          	int3
140008798: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000879d: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
1400087a2: 56                          	push	rsi
1400087a3: 57                          	push	rdi
1400087a4: 41 56                       	push	r14
1400087a6: 48 83 ec 60                 	sub	rsp, 96
1400087aa: 49 8b f1                    	mov	rsi, r9
1400087ad: 49 8b f8                    	mov	rdi, r8
1400087b0: 8b 0a                       	mov	ecx, dword ptr [rdx]
1400087b2: e8 7d e4 ff ff              	call	0x140006c34 <.text+0x5c34>
1400087b7: 90                          	nop
1400087b8: 48 8b 1d 51 fe 00 00        	mov	rbx, qword ptr [rip + 65105] # 0x140018610
1400087bf: 48 63 05 42 fe 00 00        	movsxd	rax, dword ptr [rip + 65090] # 0x140018608
1400087c6: 4c 8d 34 c3                 	lea	r14, [rbx + 8*rax]
1400087ca: 48 89 5c 24 38              	mov	qword ptr [rsp + 56], rbx
1400087cf: 49 3b de                    	cmp	rbx, r14
1400087d2: 0f 84 88 00 00 00           	je	0x140008860 <.text+0x7860>
1400087d8: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400087db: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
1400087e0: 48 8b 17                    	mov	rdx, qword ptr [rdi]
1400087e3: 48 85 c0                    	test	rax, rax
1400087e6: 74 21                       	je	0x140008809 <.text+0x7809>
1400087e8: 8b 48 14                    	mov	ecx, dword ptr [rax + 20]
1400087eb: 8b c1                       	mov	eax, ecx
1400087ed: c1 e8 0d                    	shr	eax, 13
1400087f0: a8 01                       	test	al, 1
1400087f2: 74 15                       	je	0x140008809 <.text+0x7809>
1400087f4: 8b c1                       	mov	eax, ecx
1400087f6: 24 03                       	and	al, 3
1400087f8: 3c 02                       	cmp	al, 2
1400087fa: 75 05                       	jne	0x140008801 <.text+0x7801>
1400087fc: f6 c1 c0                    	test	cl, -64
1400087ff: 75 0e                       	jne	0x14000880f <.text+0x780f>
140008801: 0f ba e1 0b                 	bt	ecx, 11
140008805: 72 08                       	jb	0x14000880f <.text+0x780f>
140008807: ff 02                       	inc	dword ptr [rdx]
140008809: 48 83 c3 08                 	add	rbx, 8
14000880d: eb bb                       	jmp	0x1400087ca <.text+0x77ca>
14000880f: 48 8b 57 10                 	mov	rdx, qword ptr [rdi + 16]
140008813: 48 8b 4f 08                 	mov	rcx, qword ptr [rdi + 8]
140008817: 48 8b 07                    	mov	rax, qword ptr [rdi]
14000881a: 4c 8d 44 24 20              	lea	r8, [rsp + 32]
14000881f: 4c 89 44 24 40              	mov	qword ptr [rsp + 64], r8
140008824: 48 89 44 24 48              	mov	qword ptr [rsp + 72], rax
140008829: 48 89 4c 24 50              	mov	qword ptr [rsp + 80], rcx
14000882e: 48 89 54 24 58              	mov	qword ptr [rsp + 88], rdx
140008833: 48 8b 44 24 20              	mov	rax, qword ptr [rsp + 32]
140008838: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
14000883d: 48 89 44 24 30              	mov	qword ptr [rsp + 48], rax
140008842: 4c 8d 4c 24 28              	lea	r9, [rsp + 40]
140008847: 4c 8d 44 24 40              	lea	r8, [rsp + 64]
14000884c: 48 8d 54 24 30              	lea	rdx, [rsp + 48]
140008851: 48 8d 8c 24 88 00 00 00     	lea	rcx, [rsp + 136]
140008859: e8 9e fe ff ff              	call	0x1400086fc <.text+0x76fc>
14000885e: eb a9                       	jmp	0x140008809 <.text+0x7809>
140008860: 8b 0e                       	mov	ecx, dword ptr [rsi]
140008862: e8 21 e4 ff ff              	call	0x140006c88 <.text+0x5c88>
140008867: 48 8b 9c 24 80 00 00 00     	mov	rbx, qword ptr [rsp + 128]
14000886f: 48 83 c4 60                 	add	rsp, 96
140008873: 41 5e                       	pop	r14
140008875: 5f                          	pop	rdi
140008876: 5e                          	pop	rsi
140008877: c3                          	ret
140008878: 88 4c 24 08                 	mov	byte ptr [rsp + 8], cl
14000887c: 55                          	push	rbp
14000887d: 48 8b ec                    	mov	rbp, rsp
140008880: 48 83 ec 40                 	sub	rsp, 64
140008884: 83 65 28 00                 	and	dword ptr [rbp + 40], 0
140008888: 48 8d 45 28                 	lea	rax, [rbp + 40]
14000888c: 83 65 20 00                 	and	dword ptr [rbp + 32], 0
140008890: 4c 8d 4d e0                 	lea	r9, [rbp - 32]
140008894: 48 89 45 e8                 	mov	qword ptr [rbp - 24], rax
140008898: 4c 8d 45 e8                 	lea	r8, [rbp - 24]
14000889c: 48 8d 45 10                 	lea	rax, [rbp + 16]
1400088a0: 48 89 45 f0                 	mov	qword ptr [rbp - 16], rax
1400088a4: 48 8d 55 e4                 	lea	rdx, [rbp - 28]
1400088a8: 48 8d 45 20                 	lea	rax, [rbp + 32]
1400088ac: 48 89 45 f8                 	mov	qword ptr [rbp - 8], rax
1400088b0: 48 8d 4d 18                 	lea	rcx, [rbp + 24]
1400088b4: b8 08 00 00 00              	mov	eax, 8
1400088b9: 89 45 e0                    	mov	dword ptr [rbp - 32], eax
1400088bc: 89 45 e4                    	mov	dword ptr [rbp - 28], eax
1400088bf: e8 d4 fe ff ff              	call	0x140008798 <.text+0x7798>
1400088c4: 80 7d 10 00                 	cmp	byte ptr [rbp + 16], 0
1400088c8: 8b 45 20                    	mov	eax, dword ptr [rbp + 32]
1400088cb: 0f 45 45 28                 	cmovne	eax, dword ptr [rbp + 40]
1400088cf: 48 83 c4 40                 	add	rsp, 64
1400088d3: 5d                          	pop	rbp
1400088d4: c3                          	ret
1400088d5: cc                          	int3
1400088d6: cc                          	int3
1400088d7: cc                          	int3
1400088d8: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400088dd: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
1400088e2: 57                          	push	rdi
1400088e3: 48 83 ec 20                 	sub	rsp, 32
1400088e7: 48 8b d9                    	mov	rbx, rcx
1400088ea: 8b 49 14                    	mov	ecx, dword ptr [rcx + 20]
1400088ed: 8b c1                       	mov	eax, ecx
1400088ef: 24 03                       	and	al, 3
1400088f1: 3c 02                       	cmp	al, 2
1400088f3: 75 4b                       	jne	0x140008940 <.text+0x7940>
1400088f5: f6 c1 c0                    	test	cl, -64
1400088f8: 74 46                       	je	0x140008940 <.text+0x7940>
1400088fa: 8b 3b                       	mov	edi, dword ptr [rbx]
1400088fc: 2b 7b 08                    	sub	edi, dword ptr [rbx + 8]
1400088ff: 83 63 10 00                 	and	dword ptr [rbx + 16], 0
140008903: 48 8b 73 08                 	mov	rsi, qword ptr [rbx + 8]
140008907: 48 89 33                    	mov	qword ptr [rbx], rsi
14000890a: 85 ff                       	test	edi, edi
14000890c: 7e 32                       	jle	0x140008940 <.text+0x7940>
14000890e: 48 8b cb                    	mov	rcx, rbx
140008911: e8 16 04 00 00              	call	0x140008d2c <.text+0x7d2c>
140008916: 8b c8                       	mov	ecx, eax
140008918: 44 8b c7                    	mov	r8d, edi
14000891b: 48 8b d6                    	mov	rdx, rsi
14000891e: e8 89 1f 00 00              	call	0x14000a8ac <.text+0x98ac>
140008923: 3b f8                       	cmp	edi, eax
140008925: 74 0a                       	je	0x140008931 <.text+0x7931>
140008927: f0                          	lock
140008928: 83 4b 14 10                 	or	dword ptr [rbx + 20], 16
14000892c: 83 c8 ff                    	or	eax, -1
14000892f: eb 11                       	jmp	0x140008942 <.text+0x7942>
140008931: 8b 43 14                    	mov	eax, dword ptr [rbx + 20]
140008934: c1 e8 02                    	shr	eax, 2
140008937: a8 01                       	test	al, 1
140008939: 74 05                       	je	0x140008940 <.text+0x7940>
14000893b: f0                          	lock
14000893c: 83 63 14 fd                 	and	dword ptr [rbx + 20], -3
140008940: 33 c0                       	xor	eax, eax
140008942: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008947: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
14000894c: 48 83 c4 20                 	add	rsp, 32
140008950: 5f                          	pop	rdi
140008951: c3                          	ret
140008952: cc                          	int3
140008953: cc                          	int3
140008954: 40 53                       	push	rbx
140008956: 48 83 ec 20                 	sub	rsp, 32
14000895a: 48 8b d9                    	mov	rbx, rcx
14000895d: 48 85 c9                    	test	rcx, rcx
140008960: 75 0a                       	jne	0x14000896c <.text+0x796c>
140008962: 48 83 c4 20                 	add	rsp, 32
140008966: 5b                          	pop	rbx
140008967: e9 0c ff ff ff              	jmp	0x140008878 <.text+0x7878>
14000896c: e8 67 ff ff ff              	call	0x1400088d8 <.text+0x78d8>
140008971: 85 c0                       	test	eax, eax
140008973: 75 21                       	jne	0x140008996 <.text+0x7996>
140008975: 8b 43 14                    	mov	eax, dword ptr [rbx + 20]
140008978: c1 e8 0b                    	shr	eax, 11
14000897b: a8 01                       	test	al, 1
14000897d: 74 13                       	je	0x140008992 <.text+0x7992>
14000897f: 48 8b cb                    	mov	rcx, rbx
140008982: e8 a5 03 00 00              	call	0x140008d2c <.text+0x7d2c>
140008987: 8b c8                       	mov	ecx, eax
140008989: e8 0e 16 00 00              	call	0x140009f9c <.text+0x8f9c>
14000898e: 85 c0                       	test	eax, eax
140008990: 75 04                       	jne	0x140008996 <.text+0x7996>
140008992: 33 c0                       	xor	eax, eax
140008994: eb 03                       	jmp	0x140008999 <.text+0x7999>
140008996: 83 c8 ff                    	or	eax, -1
140008999: 48 83 c4 20                 	add	rsp, 32
14000899d: 5b                          	pop	rbx
14000899e: c3                          	ret
14000899f: cc                          	int3
1400089a0: b1 01                       	mov	cl, 1
1400089a2: e9 d1 fe ff ff              	jmp	0x140008878 <.text+0x7878>
1400089a7: cc                          	int3
1400089a8: 48 8b c4                    	mov	rax, rsp
1400089ab: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
1400089af: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
1400089b3: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
1400089b7: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
1400089bb: 41 56                       	push	r14
1400089bd: 48 83 ec 20                 	sub	rsp, 32
1400089c1: 8b 05 41 fc 00 00           	mov	eax, dword ptr [rip + 64577] # 0x140018608
1400089c7: 33 db                       	xor	ebx, ebx
1400089c9: bf 03 00 00 00              	mov	edi, 3
1400089ce: 85 c0                       	test	eax, eax
1400089d0: 75 07                       	jne	0x1400089d9 <.text+0x79d9>
1400089d2: b8 00 02 00 00              	mov	eax, 512
1400089d7: eb 05                       	jmp	0x1400089de <.text+0x79de>
1400089d9: 3b c7                       	cmp	eax, edi
1400089db: 0f 4c c7                    	cmovl	eax, edi
1400089de: 48 63 c8                    	movsxd	rcx, eax
1400089e1: ba 08 00 00 00              	mov	edx, 8
1400089e6: 89 05 1c fc 00 00           	mov	dword ptr [rip + 64540], eax # 0x140018608
1400089ec: e8 3f c4 ff ff              	call	0x140004e30 <.text+0x3e30>
1400089f1: 33 c9                       	xor	ecx, ecx
1400089f3: 48 89 05 16 fc 00 00        	mov	qword ptr [rip + 64534], rax # 0x140018610
1400089fa: e8 a9 c4 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400089ff: 48 39 1d 0a fc 00 00        	cmp	qword ptr [rip + 64522], rbx # 0x140018610
140008a06: 75 2f                       	jne	0x140008a37 <.text+0x7a37>
140008a08: ba 08 00 00 00              	mov	edx, 8
140008a0d: 89 3d f5 fb 00 00           	mov	dword ptr [rip + 64501], edi # 0x140018608
140008a13: 48 8b cf                    	mov	rcx, rdi
140008a16: e8 15 c4 ff ff              	call	0x140004e30 <.text+0x3e30>
140008a1b: 33 c9                       	xor	ecx, ecx
140008a1d: 48 89 05 ec fb 00 00        	mov	qword ptr [rip + 64492], rax # 0x140018610
140008a24: e8 7f c4 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140008a29: 48 39 1d e0 fb 00 00        	cmp	qword ptr [rip + 64480], rbx # 0x140018610
140008a30: 75 05                       	jne	0x140008a37 <.text+0x7a37>
140008a32: 83 c8 ff                    	or	eax, -1
140008a35: eb 75                       	jmp	0x140008aac <.text+0x7aac>
140008a37: 48 8b eb                    	mov	rbp, rbx
140008a3a: 48 8d 35 97 ed 00 00        	lea	rsi, [rip + 60823]      # 0x1400177d8
140008a41: 4c 8d 35 78 ed 00 00        	lea	r14, [rip + 60792]      # 0x1400177c0
140008a48: 49 8d 4e 30                 	lea	rcx, [r14 + 48]
140008a4c: 45 33 c0                    	xor	r8d, r8d
140008a4f: ba a0 0f 00 00              	mov	edx, 4000
140008a54: e8 af f5 ff ff              	call	0x140008008 <.text+0x7008>
140008a59: 48 8b 05 b0 fb 00 00        	mov	rax, qword ptr [rip + 64432] # 0x140018610
140008a60: 4c 8d 05 a9 f5 00 00        	lea	r8, [rip + 62889]       # 0x140018010
140008a67: 48 8b d5                    	mov	rdx, rbp
140008a6a: 48 c1 fa 06                 	sar	rdx, 6
140008a6e: 4c 89 34 03                 	mov	qword ptr [rbx + rax], r14
140008a72: 48 8b c5                    	mov	rax, rbp
140008a75: 83 e0 3f                    	and	eax, 63
140008a78: 48 8d 0c c0                 	lea	rcx, [rax + 8*rax]
140008a7c: 49 8b 04 d0                 	mov	rax, qword ptr [r8 + 8*rdx]
140008a80: 48 8b 4c c8 28              	mov	rcx, qword ptr [rax + 8*rcx + 40]
140008a85: 48 83 c1 02                 	add	rcx, 2
140008a89: 48 83 f9 02                 	cmp	rcx, 2
140008a8d: 77 06                       	ja	0x140008a95 <.text+0x7a95>
140008a8f: c7 06 fe ff ff ff           	mov	dword ptr [rsi], 4294967294
140008a95: 48 ff c5                    	inc	rbp
140008a98: 49 83 c6 58                 	add	r14, 88
140008a9c: 48 83 c3 08                 	add	rbx, 8
140008aa0: 48 83 c6 58                 	add	rsi, 88
140008aa4: 48 83 ef 01                 	sub	rdi, 1
140008aa8: 75 9e                       	jne	0x140008a48 <.text+0x7a48>
140008aaa: 33 c0                       	xor	eax, eax
140008aac: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008ab1: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
140008ab6: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
140008abb: 48 8b 7c 24 48              	mov	rdi, qword ptr [rsp + 72]
140008ac0: 48 83 c4 20                 	add	rsp, 32
140008ac4: 41 5e                       	pop	r14
140008ac6: c3                          	ret
140008ac7: cc                          	int3
140008ac8: 40 53                       	push	rbx
140008aca: 48 83 ec 20                 	sub	rsp, 32
140008ace: e8 cd fe ff ff              	call	0x1400089a0 <.text+0x79a0>
140008ad3: e8 a4 21 00 00              	call	0x14000ac7c <.text+0x9c7c>
140008ad8: 33 db                       	xor	ebx, ebx
140008ada: 48 8b 0d 2f fb 00 00        	mov	rcx, qword ptr [rip + 64303] # 0x140018610
140008ae1: 48 8b 0c 0b                 	mov	rcx, qword ptr [rbx + rcx]
140008ae5: e8 46 22 00 00              	call	0x14000ad30 <.text+0x9d30>
140008aea: 48 8b 05 1f fb 00 00        	mov	rax, qword ptr [rip + 64287] # 0x140018610
140008af1: 48 8b 0c 03                 	mov	rcx, qword ptr [rbx + rax]
140008af5: 48 83 c1 30                 	add	rcx, 48
140008af9: ff 15 a1 55 00 00           	call	qword ptr [rip + 21921] # 0x14000e0a0
140008aff: 48 83 c3 08                 	add	rbx, 8
140008b03: 48 83 fb 18                 	cmp	rbx, 24
140008b07: 75 d1                       	jne	0x140008ada <.text+0x7ada>
140008b09: 48 8b 0d 00 fb 00 00        	mov	rcx, qword ptr [rip + 64256] # 0x140018610
140008b10: e8 93 c3 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140008b15: 48 83 25 f3 fa 00 00 00     	and	qword ptr [rip + 64243], 0 # 0x140018610
140008b1d: 48 83 c4 20                 	add	rsp, 32
140008b21: 5b                          	pop	rbx
140008b22: c3                          	ret
140008b23: cc                          	int3
140008b24: 48 83 c1 30                 	add	rcx, 48
140008b28: 48 ff 25 61 55 00 00        	jmp	qword ptr [rip + 21857] # 0x14000e090
140008b2f: cc                          	int3
140008b30: 48 83 c1 30                 	add	rcx, 48
140008b34: 48 ff 25 5d 55 00 00        	jmp	qword ptr [rip + 21853] # 0x14000e098
140008b3b: cc                          	int3
140008b3c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140008b41: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140008b46: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140008b4b: 57                          	push	rdi
140008b4c: 48 83 ec 50                 	sub	rsp, 80
140008b50: 33 ed                       	xor	ebp, ebp
140008b52: 49 8b f0                    	mov	rsi, r8
140008b55: 48 8b fa                    	mov	rdi, rdx
140008b58: 48 8b d9                    	mov	rbx, rcx
140008b5b: 48 85 d2                    	test	rdx, rdx
140008b5e: 0f 84 38 01 00 00           	je	0x140008c9c <.text+0x7c9c>
140008b64: 4d 85 c0                    	test	r8, r8
140008b67: 0f 84 2f 01 00 00           	je	0x140008c9c <.text+0x7c9c>
140008b6d: 40 38 2a                    	cmp	byte ptr [rdx], bpl
140008b70: 75 11                       	jne	0x140008b83 <.text+0x7b83>
140008b72: 48 85 c9                    	test	rcx, rcx
140008b75: 0f 84 28 01 00 00           	je	0x140008ca3 <.text+0x7ca3>
140008b7b: 66 89 29                    	mov	word ptr [rcx], bp
140008b7e: e9 20 01 00 00              	jmp	0x140008ca3 <.text+0x7ca3>
140008b83: 49 8b d1                    	mov	rdx, r9
140008b86: 48 8d 4c 24 30              	lea	rcx, [rsp + 48]
140008b8b: e8 d4 b7 ff ff              	call	0x140004364 <.text+0x3364>
140008b90: 48 8b 44 24 38              	mov	rax, qword ptr [rsp + 56]
140008b95: 81 78 0c e9 fd 00 00        	cmp	dword ptr [rax + 12], 65001
140008b9c: 75 22                       	jne	0x140008bc0 <.text+0x7bc0>
140008b9e: 4c 8d 0d 83 fa 00 00        	lea	r9, [rip + 64131]       # 0x140018628
140008ba5: 4c 8b c6                    	mov	r8, rsi
140008ba8: 48 8b d7                    	mov	rdx, rdi
140008bab: 48 8b cb                    	mov	rcx, rbx
140008bae: e8 69 22 00 00              	call	0x14000ae1c <.text+0x9e1c>
140008bb3: 48 8b c8                    	mov	rcx, rax
140008bb6: 83 c8 ff                    	or	eax, -1
140008bb9: 85 c9                       	test	ecx, ecx
140008bbb: 0f 48 c8                    	cmovs	ecx, eax
140008bbe: eb 19                       	jmp	0x140008bd9 <.text+0x7bd9>
140008bc0: 48 39 a8 38 01 00 00        	cmp	qword ptr [rax + 312], rbp
140008bc7: 75 2a                       	jne	0x140008bf3 <.text+0x7bf3>
140008bc9: 48 85 db                    	test	rbx, rbx
140008bcc: 74 06                       	je	0x140008bd4 <.text+0x7bd4>
140008bce: 0f b6 07                    	movzx	eax, byte ptr [rdi]
140008bd1: 66 89 03                    	mov	word ptr [rbx], ax
140008bd4: b9 01 00 00 00              	mov	ecx, 1
140008bd9: 40 38 6c 24 48              	cmp	byte ptr [rsp + 72], bpl
140008bde: 74 0c                       	je	0x140008bec <.text+0x7bec>
140008be0: 48 8b 44 24 30              	mov	rax, qword ptr [rsp + 48]
140008be5: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140008bec: 8b c1                       	mov	eax, ecx
140008bee: e9 b2 00 00 00              	jmp	0x140008ca5 <.text+0x7ca5>
140008bf3: 0f b6 0f                    	movzx	ecx, byte ptr [rdi]
140008bf6: 48 8d 54 24 38              	lea	rdx, [rsp + 56]
140008bfb: e8 d0 21 00 00              	call	0x14000add0 <.text+0x9dd0>
140008c00: 85 c0                       	test	eax, eax
140008c02: 74 52                       	je	0x140008c56 <.text+0x7c56>
140008c04: 48 8b 4c 24 38              	mov	rcx, qword ptr [rsp + 56]
140008c09: 44 8b 49 08                 	mov	r9d, dword ptr [rcx + 8]
140008c0d: 41 83 f9 01                 	cmp	r9d, 1
140008c11: 7e 2f                       	jle	0x140008c42 <.text+0x7c42>
140008c13: 41 3b f1                    	cmp	esi, r9d
140008c16: 7c 2a                       	jl	0x140008c42 <.text+0x7c42>
140008c18: 8b 49 0c                    	mov	ecx, dword ptr [rcx + 12]
140008c1b: 8b c5                       	mov	eax, ebp
140008c1d: 48 85 db                    	test	rbx, rbx
140008c20: 4c 8b c7                    	mov	r8, rdi
140008c23: ba 09 00 00 00              	mov	edx, 9
140008c28: 0f 95 c0                    	setne	al
140008c2b: 89 44 24 28                 	mov	dword ptr [rsp + 40], eax
140008c2f: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140008c34: e8 93 d9 ff ff              	call	0x1400065cc <.text+0x55cc>
140008c39: 48 8b 4c 24 38              	mov	rcx, qword ptr [rsp + 56]
140008c3e: 85 c0                       	test	eax, eax
140008c40: 75 0f                       	jne	0x140008c51 <.text+0x7c51>
140008c42: 48 63 41 08                 	movsxd	rax, dword ptr [rcx + 8]
140008c46: 48 3b f0                    	cmp	rsi, rax
140008c49: 72 3e                       	jb	0x140008c89 <.text+0x7c89>
140008c4b: 40 38 6f 01                 	cmp	byte ptr [rdi + 1], bpl
140008c4f: 74 38                       	je	0x140008c89 <.text+0x7c89>
140008c51: 8b 49 08                    	mov	ecx, dword ptr [rcx + 8]
140008c54: eb 83                       	jmp	0x140008bd9 <.text+0x7bd9>
140008c56: 8b c5                       	mov	eax, ebp
140008c58: 41 b9 01 00 00 00           	mov	r9d, 1
140008c5e: 48 85 db                    	test	rbx, rbx
140008c61: 4c 8b c7                    	mov	r8, rdi
140008c64: 0f 95 c0                    	setne	al
140008c67: 89 44 24 28                 	mov	dword ptr [rsp + 40], eax
140008c6b: 41 8d 51 08                 	lea	edx, [r9 + 8]
140008c6f: 48 8b 44 24 38              	mov	rax, qword ptr [rsp + 56]
140008c74: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140008c79: 8b 48 0c                    	mov	ecx, dword ptr [rax + 12]
140008c7c: e8 4b d9 ff ff              	call	0x1400065cc <.text+0x55cc>
140008c81: 85 c0                       	test	eax, eax
140008c83: 0f 85 4b ff ff ff           	jne	0x140008bd4 <.text+0x7bd4>
140008c89: e8 82 c1 ff ff              	call	0x140004e10 <.text+0x3e10>
140008c8e: 83 c9 ff                    	or	ecx, -1
140008c91: c7 00 2a 00 00 00           	mov	dword ptr [rax], 42
140008c97: e9 3d ff ff ff              	jmp	0x140008bd9 <.text+0x7bd9>
140008c9c: 48 89 2d 85 f9 00 00        	mov	qword ptr [rip + 63877], rbp # 0x140018628
140008ca3: 33 c0                       	xor	eax, eax
140008ca5: 48 8b 5c 24 60              	mov	rbx, qword ptr [rsp + 96]
140008caa: 48 8b 6c 24 68              	mov	rbp, qword ptr [rsp + 104]
140008caf: 48 8b 74 24 70              	mov	rsi, qword ptr [rsp + 112]
140008cb4: 48 83 c4 50                 	add	rsp, 80
140008cb8: 5f                          	pop	rdi
140008cb9: c3                          	ret
140008cba: cc                          	int3
140008cbb: cc                          	int3
140008cbc: 45 33 c9                    	xor	r9d, r9d
140008cbf: e9 78 fe ff ff              	jmp	0x140008b3c <.text+0x7b3c>
140008cc4: 40 53                       	push	rbx
140008cc6: 48 83 ec 20                 	sub	rsp, 32
140008cca: 48 8b 05 47 f7 00 00        	mov	rax, qword ptr [rip + 63303] # 0x140018418
140008cd1: 48 8b da                    	mov	rbx, rdx
140008cd4: 48 39 02                    	cmp	qword ptr [rdx], rax
140008cd7: 74 16                       	je	0x140008cef <.text+0x7cef>
140008cd9: 8b 81 a8 03 00 00           	mov	eax, dword ptr [rcx + 936]
140008cdf: 85 05 cb ea 00 00           	test	dword ptr [rip + 60107], eax # 0x1400177b0
140008ce5: 75 08                       	jne	0x140008cef <.text+0x7cef>
140008ce7: e8 d8 ed ff ff              	call	0x140007ac4 <.text+0x6ac4>
140008cec: 48 89 03                    	mov	qword ptr [rbx], rax
140008cef: 48 83 c4 20                 	add	rsp, 32
140008cf3: 5b                          	pop	rbx
140008cf4: c3                          	ret
140008cf5: cc                          	int3
140008cf6: cc                          	int3
140008cf7: cc                          	int3
140008cf8: 40 53                       	push	rbx
140008cfa: 48 83 ec 20                 	sub	rsp, 32
140008cfe: 48 8b 05 b3 f0 00 00        	mov	rax, qword ptr [rip + 61619] # 0x140017db8
140008d05: 48 8b da                    	mov	rbx, rdx
140008d08: 48 39 02                    	cmp	qword ptr [rdx], rax
140008d0b: 74 16                       	je	0x140008d23 <.text+0x7d23>
140008d0d: 8b 81 a8 03 00 00           	mov	eax, dword ptr [rcx + 936]
140008d13: 85 05 97 ea 00 00           	test	dword ptr [rip + 60055], eax # 0x1400177b0
140008d19: 75 08                       	jne	0x140008d23 <.text+0x7d23>
140008d1b: e8 48 d5 ff ff              	call	0x140006268 <.text+0x5268>
140008d20: 48 89 03                    	mov	qword ptr [rbx], rax
140008d23: 48 83 c4 20                 	add	rsp, 32
140008d27: 5b                          	pop	rbx
140008d28: c3                          	ret
140008d29: cc                          	int3
140008d2a: cc                          	int3
140008d2b: cc                          	int3
140008d2c: 48 83 ec 28                 	sub	rsp, 40
140008d30: 48 85 c9                    	test	rcx, rcx
140008d33: 75 15                       	jne	0x140008d4a <.text+0x7d4a>
140008d35: e8 d6 c0 ff ff              	call	0x140004e10 <.text+0x3e10>
140008d3a: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140008d40: e8 ab bf ff ff              	call	0x140004cf0 <.text+0x3cf0>
140008d45: 83 c8 ff                    	or	eax, -1
140008d48: eb 03                       	jmp	0x140008d4d <.text+0x7d4d>
140008d4a: 8b 41 18                    	mov	eax, dword ptr [rcx + 24]
140008d4d: 48 83 c4 28                 	add	rsp, 40
140008d51: c3                          	ret
140008d52: cc                          	int3
140008d53: cc                          	int3
140008d54: cc                          	int3
140008d55: cc                          	int3
140008d56: cc                          	int3
140008d57: cc                          	int3
140008d58: cc                          	int3
140008d59: cc                          	int3
140008d5a: cc                          	int3
140008d5b: cc                          	int3
140008d5c: cc                          	int3
140008d5d: cc                          	int3
140008d5e: cc                          	int3
140008d5f: cc                          	int3
140008d60: 41 54                       	push	r12
140008d62: 41 55                       	push	r13
140008d64: 41 56                       	push	r14
140008d66: 48 81 ec 50 04 00 00        	sub	rsp, 1104
140008d6d: 48 8b 05 b4 e2 00 00        	mov	rax, qword ptr [rip + 58036] # 0x140017028
140008d74: 48 33 c4                    	xor	rax, rsp
140008d77: 48 89 84 24 10 04 00 00     	mov	qword ptr [rsp + 1040], rax
140008d7f: 4d 8b e1                    	mov	r12, r9
140008d82: 4d 8b f0                    	mov	r14, r8
140008d85: 4c 8b e9                    	mov	r13, rcx
140008d88: 48 85 c9                    	test	rcx, rcx
140008d8b: 75 1a                       	jne	0x140008da7 <.text+0x7da7>
140008d8d: 48 85 d2                    	test	rdx, rdx
140008d90: 74 15                       	je	0x140008da7 <.text+0x7da7>
140008d92: e8 79 c0 ff ff              	call	0x140004e10 <.text+0x3e10>
140008d97: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140008d9d: e8 4e bf ff ff              	call	0x140004cf0 <.text+0x3cf0>
140008da2: e9 38 03 00 00              	jmp	0x1400090df <.text+0x80df>
140008da7: 4d 85 f6                    	test	r14, r14
140008daa: 74 e6                       	je	0x140008d92 <.text+0x7d92>
140008dac: 4d 85 e4                    	test	r12, r12
140008daf: 74 e1                       	je	0x140008d92 <.text+0x7d92>
140008db1: 48 83 fa 02                 	cmp	rdx, 2
140008db5: 0f 82 24 03 00 00           	jb	0x1400090df <.text+0x80df>
140008dbb: 48 89 9c 24 48 04 00 00     	mov	qword ptr [rsp + 1096], rbx
140008dc3: 48 89 ac 24 40 04 00 00     	mov	qword ptr [rsp + 1088], rbp
140008dcb: 48 89 b4 24 38 04 00 00     	mov	qword ptr [rsp + 1080], rsi
140008dd3: 48 89 bc 24 30 04 00 00     	mov	qword ptr [rsp + 1072], rdi
140008ddb: 4c 89 bc 24 28 04 00 00     	mov	qword ptr [rsp + 1064], r15
140008de3: 4c 8d 7a ff                 	lea	r15, [rdx - 1]
140008de7: 4d 0f af fe                 	imul	r15, r14
140008deb: 4c 03 f9                    	add	r15, rcx
140008dee: 33 c9                       	xor	ecx, ecx
140008df0: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
140008df5: 66 66 66 0f 1f 84 00 00 00 00 00    	nop	word ptr [rax + rax]
140008e00: 33 d2                       	xor	edx, edx
140008e02: 49 8b c7                    	mov	rax, r15
140008e05: 49 2b c5                    	sub	rax, r13
140008e08: 49 f7 f6                    	div	r14
140008e0b: 48 8d 58 01                 	lea	rbx, [rax + 1]
140008e0f: 48 83 fb 08                 	cmp	rbx, 8
140008e13: 0f 87 8b 00 00 00           	ja	0x140008ea4 <.text+0x7ea4>
140008e19: 4d 3b fd                    	cmp	r15, r13
140008e1c: 76 65                       	jbe	0x140008e83 <.text+0x7e83>
140008e1e: 4b 8d 34 2e                 	lea	rsi, [r14 + r13]
140008e22: 49 8b dd                    	mov	rbx, r13
140008e25: 48 8b fe                    	mov	rdi, rsi
140008e28: 49 3b f7                    	cmp	rsi, r15
140008e2b: 77 20                       	ja	0x140008e4d <.text+0x7e4d>
140008e2d: 0f 1f 00                    	nop	dword ptr [rax]
140008e30: 48 8b d3                    	mov	rdx, rbx
140008e33: 48 8b cf                    	mov	rcx, rdi
140008e36: 49 8b c4                    	mov	rax, r12
140008e39: ff 15 f1 53 00 00           	call	qword ptr [rip + 21489] # 0x14000e230
140008e3f: 85 c0                       	test	eax, eax
140008e41: 48 0f 4f df                 	cmovg	rbx, rdi
140008e45: 49 03 fe                    	add	rdi, r14
140008e48: 49 3b ff                    	cmp	rdi, r15
140008e4b: 76 e3                       	jbe	0x140008e30 <.text+0x7e30>
140008e4d: 4d 8b c6                    	mov	r8, r14
140008e50: 49 8b d7                    	mov	rdx, r15
140008e53: 49 3b df                    	cmp	rbx, r15
140008e56: 74 1e                       	je	0x140008e76 <.text+0x7e76>
140008e58: 49 2b df                    	sub	rbx, r15
140008e5b: 0f 1f 44 00 00              	nop	dword ptr [rax + rax]
140008e60: 0f b6 02                    	movzx	eax, byte ptr [rdx]
140008e63: 0f b6 0c 13                 	movzx	ecx, byte ptr [rbx + rdx]
140008e67: 88 04 13                    	mov	byte ptr [rbx + rdx], al
140008e6a: 88 0a                       	mov	byte ptr [rdx], cl
140008e6c: 48 8d 52 01                 	lea	rdx, [rdx + 1]
140008e70: 49 83 e8 01                 	sub	r8, 1
140008e74: 75 ea                       	jne	0x140008e60 <.text+0x7e60>
140008e76: 4d 2b fe                    	sub	r15, r14
140008e79: 4d 3b fd                    	cmp	r15, r13
140008e7c: 77 a4                       	ja	0x140008e22 <.text+0x7e22>
140008e7e: 48 8b 4c 24 20              	mov	rcx, qword ptr [rsp + 32]
140008e83: 48 83 e9 01                 	sub	rcx, 1
140008e87: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
140008e8c: 0f 88 25 02 00 00           	js	0x1400090b7 <.text+0x80b7>
140008e92: 4c 8b 6c cc 30              	mov	r13, qword ptr [rsp + 8*rcx + 48]
140008e97: 4c 8b bc cc 20 02 00 00     	mov	r15, qword ptr [rsp + 8*rcx + 544]
140008e9f: e9 5c ff ff ff              	jmp	0x140008e00 <.text+0x7e00>
140008ea4: 48 d1 eb                    	shr	rbx
140008ea7: 49 8b cd                    	mov	rcx, r13
140008eaa: 49 0f af de                 	imul	rbx, r14
140008eae: 49 8b c4                    	mov	rax, r12
140008eb1: 4a 8d 34 2b                 	lea	rsi, [rbx + r13]
140008eb5: 48 8b d6                    	mov	rdx, rsi
140008eb8: ff 15 72 53 00 00           	call	qword ptr [rip + 21362] # 0x14000e230
140008ebe: 85 c0                       	test	eax, eax
140008ec0: 7e 29                       	jle	0x140008eeb <.text+0x7eeb>
140008ec2: 4d 8b ce                    	mov	r9, r14
140008ec5: 4c 8b c6                    	mov	r8, rsi
140008ec8: 4c 3b ee                    	cmp	r13, rsi
140008ecb: 74 1e                       	je	0x140008eeb <.text+0x7eeb>
140008ecd: 0f 1f 00                    	nop	dword ptr [rax]
140008ed0: 41 0f b6 00                 	movzx	eax, byte ptr [r8]
140008ed4: 49 8b d0                    	mov	rdx, r8
140008ed7: 48 2b d3                    	sub	rdx, rbx
140008eda: 0f b6 0a                    	movzx	ecx, byte ptr [rdx]
140008edd: 88 02                       	mov	byte ptr [rdx], al
140008edf: 41 88 08                    	mov	byte ptr [r8], cl
140008ee2: 49 ff c0                    	inc	r8
140008ee5: 49 83 e9 01                 	sub	r9, 1
140008ee9: 75 e5                       	jne	0x140008ed0 <.text+0x7ed0>
140008eeb: 49 8b d7                    	mov	rdx, r15
140008eee: 49 8b cd                    	mov	rcx, r13
140008ef1: 49 8b c4                    	mov	rax, r12
140008ef4: ff 15 36 53 00 00           	call	qword ptr [rip + 21302] # 0x14000e230
140008efa: 85 c0                       	test	eax, eax
140008efc: 7e 2a                       	jle	0x140008f28 <.text+0x7f28>
140008efe: 4d 8b c6                    	mov	r8, r14
140008f01: 49 8b d7                    	mov	rdx, r15
140008f04: 4d 3b ef                    	cmp	r13, r15
140008f07: 74 1f                       	je	0x140008f28 <.text+0x7f28>
140008f09: 4d 8b cd                    	mov	r9, r13
140008f0c: 4d 2b cf                    	sub	r9, r15
140008f0f: 90                          	nop
140008f10: 0f b6 02                    	movzx	eax, byte ptr [rdx]
140008f13: 41 0f b6 0c 11              	movzx	ecx, byte ptr [r9 + rdx]
140008f18: 41 88 04 11                 	mov	byte ptr [r9 + rdx], al
140008f1c: 88 0a                       	mov	byte ptr [rdx], cl
140008f1e: 48 8d 52 01                 	lea	rdx, [rdx + 1]
140008f22: 49 83 e8 01                 	sub	r8, 1
140008f26: 75 e8                       	jne	0x140008f10 <.text+0x7f10>
140008f28: 49 8b d7                    	mov	rdx, r15
140008f2b: 48 8b ce                    	mov	rcx, rsi
140008f2e: 49 8b c4                    	mov	rax, r12
140008f31: ff 15 f9 52 00 00           	call	qword ptr [rip + 21241] # 0x14000e230
140008f37: 85 c0                       	test	eax, eax
140008f39: 7e 2d                       	jle	0x140008f68 <.text+0x7f68>
140008f3b: 4d 8b c6                    	mov	r8, r14
140008f3e: 49 8b d7                    	mov	rdx, r15
140008f41: 49 3b f7                    	cmp	rsi, r15
140008f44: 74 22                       	je	0x140008f68 <.text+0x7f68>
140008f46: 4c 8b ce                    	mov	r9, rsi
140008f49: 4d 2b cf                    	sub	r9, r15
140008f4c: 0f 1f 40 00                 	nop	dword ptr [rax]
140008f50: 0f b6 02                    	movzx	eax, byte ptr [rdx]
140008f53: 41 0f b6 0c 11              	movzx	ecx, byte ptr [r9 + rdx]
140008f58: 41 88 04 11                 	mov	byte ptr [r9 + rdx], al
140008f5c: 88 0a                       	mov	byte ptr [rdx], cl
140008f5e: 48 8d 52 01                 	lea	rdx, [rdx + 1]
140008f62: 49 83 e8 01                 	sub	r8, 1
140008f66: 75 e8                       	jne	0x140008f50 <.text+0x7f50>
140008f68: 49 8b dd                    	mov	rbx, r13
140008f6b: 49 8b ff                    	mov	rdi, r15
140008f6e: 66 90                       	nop
140008f70: 48 3b f3                    	cmp	rsi, rbx
140008f73: 76 1d                       	jbe	0x140008f92 <.text+0x7f92>
140008f75: 49 03 de                    	add	rbx, r14
140008f78: 48 3b de                    	cmp	rbx, rsi
140008f7b: 73 15                       	jae	0x140008f92 <.text+0x7f92>
140008f7d: 48 8b d6                    	mov	rdx, rsi
140008f80: 48 8b cb                    	mov	rcx, rbx
140008f83: 49 8b c4                    	mov	rax, r12
140008f86: ff 15 a4 52 00 00           	call	qword ptr [rip + 21156] # 0x14000e230
140008f8c: 85 c0                       	test	eax, eax
140008f8e: 7e e5                       	jle	0x140008f75 <.text+0x7f75>
140008f90: eb 1e                       	jmp	0x140008fb0 <.text+0x7fb0>
140008f92: 49 03 de                    	add	rbx, r14
140008f95: 49 3b df                    	cmp	rbx, r15
140008f98: 77 16                       	ja	0x140008fb0 <.text+0x7fb0>
140008f9a: 48 8b d6                    	mov	rdx, rsi
140008f9d: 48 8b cb                    	mov	rcx, rbx
140008fa0: 49 8b c4                    	mov	rax, r12
140008fa3: ff 15 87 52 00 00           	call	qword ptr [rip + 21127] # 0x14000e230
140008fa9: 85 c0                       	test	eax, eax
140008fab: 7e e5                       	jle	0x140008f92 <.text+0x7f92>
140008fad: 0f 1f 00                    	nop	dword ptr [rax]
140008fb0: 48 8b ef                    	mov	rbp, rdi
140008fb3: 49 2b fe                    	sub	rdi, r14
140008fb6: 48 3b fe                    	cmp	rdi, rsi
140008fb9: 76 13                       	jbe	0x140008fce <.text+0x7fce>
140008fbb: 48 8b d6                    	mov	rdx, rsi
140008fbe: 48 8b cf                    	mov	rcx, rdi
140008fc1: 49 8b c4                    	mov	rax, r12
140008fc4: ff 15 66 52 00 00           	call	qword ptr [rip + 21094] # 0x14000e230
140008fca: 85 c0                       	test	eax, eax
140008fcc: 7f e2                       	jg	0x140008fb0 <.text+0x7fb0>
140008fce: 48 3b fb                    	cmp	rdi, rbx
140008fd1: 72 38                       	jb	0x14000900b <.text+0x800b>
140008fd3: 4d 8b c6                    	mov	r8, r14
140008fd6: 48 8b d7                    	mov	rdx, rdi
140008fd9: 74 1e                       	je	0x140008ff9 <.text+0x7ff9>
140008fdb: 4c 8b cb                    	mov	r9, rbx
140008fde: 4c 2b cf                    	sub	r9, rdi
140008fe1: 0f b6 02                    	movzx	eax, byte ptr [rdx]
140008fe4: 41 0f b6 0c 11              	movzx	ecx, byte ptr [r9 + rdx]
140008fe9: 41 88 04 11                 	mov	byte ptr [r9 + rdx], al
140008fed: 88 0a                       	mov	byte ptr [rdx], cl
140008fef: 48 8d 52 01                 	lea	rdx, [rdx + 1]
140008ff3: 49 83 e8 01                 	sub	r8, 1
140008ff7: 75 e8                       	jne	0x140008fe1 <.text+0x7fe1>
140008ff9: 48 3b f7                    	cmp	rsi, rdi
140008ffc: 48 8b c3                    	mov	rax, rbx
140008fff: 48 0f 45 c6                 	cmovne	rax, rsi
140009003: 48 8b f0                    	mov	rsi, rax
140009006: e9 65 ff ff ff              	jmp	0x140008f70 <.text+0x7f70>
14000900b: 48 3b f5                    	cmp	rsi, rbp
14000900e: 73 20                       	jae	0x140009030 <.text+0x8030>
140009010: 49 2b ee                    	sub	rbp, r14
140009013: 48 3b ee                    	cmp	rbp, rsi
140009016: 76 18                       	jbe	0x140009030 <.text+0x8030>
140009018: 48 8b d6                    	mov	rdx, rsi
14000901b: 48 8b cd                    	mov	rcx, rbp
14000901e: 49 8b c4                    	mov	rax, r12
140009021: ff 15 09 52 00 00           	call	qword ptr [rip + 21001] # 0x14000e230
140009027: 85 c0                       	test	eax, eax
140009029: 74 e5                       	je	0x140009010 <.text+0x8010>
14000902b: eb 1e                       	jmp	0x14000904b <.text+0x804b>
14000902d: 0f 1f 00                    	nop	dword ptr [rax]
140009030: 49 2b ee                    	sub	rbp, r14
140009033: 49 3b ed                    	cmp	rbp, r13
140009036: 76 13                       	jbe	0x14000904b <.text+0x804b>
140009038: 48 8b d6                    	mov	rdx, rsi
14000903b: 48 8b cd                    	mov	rcx, rbp
14000903e: 49 8b c4                    	mov	rax, r12
140009041: ff 15 e9 51 00 00           	call	qword ptr [rip + 20969] # 0x14000e230
140009047: 85 c0                       	test	eax, eax
140009049: 74 e5                       	je	0x140009030 <.text+0x8030>
14000904b: 49 8b cf                    	mov	rcx, r15
14000904e: 48 8b c5                    	mov	rax, rbp
140009051: 48 2b cb                    	sub	rcx, rbx
140009054: 49 2b c5                    	sub	rax, r13
140009057: 48 3b c1                    	cmp	rax, rcx
14000905a: 48 8b 4c 24 20              	mov	rcx, qword ptr [rsp + 32]
14000905f: 7c 2b                       	jl	0x14000908c <.text+0x808c>
140009061: 4c 3b ed                    	cmp	r13, rbp
140009064: 73 15                       	jae	0x14000907b <.text+0x807b>
140009066: 4c 89 6c cc 30              	mov	qword ptr [rsp + 8*rcx + 48], r13
14000906b: 48 89 ac cc 20 02 00 00     	mov	qword ptr [rsp + 8*rcx + 544], rbp
140009073: 48 ff c1                    	inc	rcx
140009076: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
14000907b: 49 3b df                    	cmp	rbx, r15
14000907e: 0f 83 ff fd ff ff           	jae	0x140008e83 <.text+0x7e83>
140009084: 4c 8b eb                    	mov	r13, rbx
140009087: e9 74 fd ff ff              	jmp	0x140008e00 <.text+0x7e00>
14000908c: 49 3b df                    	cmp	rbx, r15
14000908f: 73 15                       	jae	0x1400090a6 <.text+0x80a6>
140009091: 48 89 5c cc 30              	mov	qword ptr [rsp + 8*rcx + 48], rbx
140009096: 4c 89 bc cc 20 02 00 00     	mov	qword ptr [rsp + 8*rcx + 544], r15
14000909e: 48 ff c1                    	inc	rcx
1400090a1: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
1400090a6: 4c 3b ed                    	cmp	r13, rbp
1400090a9: 0f 83 d4 fd ff ff           	jae	0x140008e83 <.text+0x7e83>
1400090af: 4c 8b fd                    	mov	r15, rbp
1400090b2: e9 49 fd ff ff              	jmp	0x140008e00 <.text+0x7e00>
1400090b7: 48 8b bc 24 30 04 00 00     	mov	rdi, qword ptr [rsp + 1072]
1400090bf: 48 8b b4 24 38 04 00 00     	mov	rsi, qword ptr [rsp + 1080]
1400090c7: 48 8b ac 24 40 04 00 00     	mov	rbp, qword ptr [rsp + 1088]
1400090cf: 48 8b 9c 24 48 04 00 00     	mov	rbx, qword ptr [rsp + 1096]
1400090d7: 4c 8b bc 24 28 04 00 00     	mov	r15, qword ptr [rsp + 1064]
1400090df: 48 8b 8c 24 10 04 00 00     	mov	rcx, qword ptr [rsp + 1040]
1400090e7: 48 33 cc                    	xor	rcx, rsp
1400090ea: e8 21 3a 00 00              	call	0x14000cb10 <.text+0xbb10>
1400090ef: 48 81 c4 50 04 00 00        	add	rsp, 1104
1400090f6: 41 5e                       	pop	r14
1400090f8: 41 5d                       	pop	r13
1400090fa: 41 5c                       	pop	r12
1400090fc: c3                          	ret
1400090fd: cc                          	int3
1400090fe: cc                          	int3
1400090ff: cc                          	int3
140009100: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140009105: 57                          	push	rdi
140009106: 48 83 ec 20                 	sub	rsp, 32
14000910a: 45 33 d2                    	xor	r10d, r10d
14000910d: 49 8b d8                    	mov	rbx, r8
140009110: 4c 8b da                    	mov	r11, rdx
140009113: 4d 85 c9                    	test	r9, r9
140009116: 75 2c                       	jne	0x140009144 <.text+0x8144>
140009118: 48 85 c9                    	test	rcx, rcx
14000911b: 75 2c                       	jne	0x140009149 <.text+0x8149>
14000911d: 48 85 d2                    	test	rdx, rdx
140009120: 74 14                       	je	0x140009136 <.text+0x8136>
140009122: e8 e9 bc ff ff              	call	0x140004e10 <.text+0x3e10>
140009127: bb 16 00 00 00              	mov	ebx, 22
14000912c: 89 18                       	mov	dword ptr [rax], ebx
14000912e: e8 bd bb ff ff              	call	0x140004cf0 <.text+0x3cf0>
140009133: 44 8b d3                    	mov	r10d, ebx
140009136: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000913b: 41 8b c2                    	mov	eax, r10d
14000913e: 48 83 c4 20                 	add	rsp, 32
140009142: 5f                          	pop	rdi
140009143: c3                          	ret
140009144: 48 85 c9                    	test	rcx, rcx
140009147: 74 d9                       	je	0x140009122 <.text+0x8122>
140009149: 4d 85 db                    	test	r11, r11
14000914c: 74 d4                       	je	0x140009122 <.text+0x8122>
14000914e: 4d 85 c9                    	test	r9, r9
140009151: 75 05                       	jne	0x140009158 <.text+0x8158>
140009153: 44 88 11                    	mov	byte ptr [rcx], r10b
140009156: eb de                       	jmp	0x140009136 <.text+0x8136>
140009158: 48 85 db                    	test	rbx, rbx
14000915b: 75 05                       	jne	0x140009162 <.text+0x8162>
14000915d: 44 88 11                    	mov	byte ptr [rcx], r10b
140009160: eb c0                       	jmp	0x140009122 <.text+0x8122>
140009162: 48 2b d9                    	sub	rbx, rcx
140009165: 48 8b d1                    	mov	rdx, rcx
140009168: 4d 8b c3                    	mov	r8, r11
14000916b: 49 8b f9                    	mov	rdi, r9
14000916e: 49 83 f9 ff                 	cmp	r9, -1
140009172: 75 14                       	jne	0x140009188 <.text+0x8188>
140009174: 8a 04 13                    	mov	al, byte ptr [rbx + rdx]
140009177: 88 02                       	mov	byte ptr [rdx], al
140009179: 48 ff c2                    	inc	rdx
14000917c: 84 c0                       	test	al, al
14000917e: 74 28                       	je	0x1400091a8 <.text+0x81a8>
140009180: 49 83 e8 01                 	sub	r8, 1
140009184: 75 ee                       	jne	0x140009174 <.text+0x8174>
140009186: eb 20                       	jmp	0x1400091a8 <.text+0x81a8>
140009188: 8a 04 13                    	mov	al, byte ptr [rbx + rdx]
14000918b: 88 02                       	mov	byte ptr [rdx], al
14000918d: 48 ff c2                    	inc	rdx
140009190: 84 c0                       	test	al, al
140009192: 74 0c                       	je	0x1400091a0 <.text+0x81a0>
140009194: 49 83 e8 01                 	sub	r8, 1
140009198: 74 06                       	je	0x1400091a0 <.text+0x81a0>
14000919a: 48 83 ef 01                 	sub	rdi, 1
14000919e: 75 e8                       	jne	0x140009188 <.text+0x8188>
1400091a0: 48 85 ff                    	test	rdi, rdi
1400091a3: 75 03                       	jne	0x1400091a8 <.text+0x81a8>
1400091a5: 44 88 12                    	mov	byte ptr [rdx], r10b
1400091a8: 4d 85 c0                    	test	r8, r8
1400091ab: 75 89                       	jne	0x140009136 <.text+0x8136>
1400091ad: 49 83 f9 ff                 	cmp	r9, -1
1400091b1: 75 0e                       	jne	0x1400091c1 <.text+0x81c1>
1400091b3: 46 88 54 19 ff              	mov	byte ptr [rcx + r11 - 1], r10b
1400091b8: 45 8d 50 50                 	lea	r10d, [r8 + 80]
1400091bc: e9 75 ff ff ff              	jmp	0x140009136 <.text+0x8136>
1400091c1: 44 88 11                    	mov	byte ptr [rcx], r10b
1400091c4: e8 47 bc ff ff              	call	0x140004e10 <.text+0x3e10>
1400091c9: bb 22 00 00 00              	mov	ebx, 34
1400091ce: e9 59 ff ff ff              	jmp	0x14000912c <.text+0x812c>
1400091d3: cc                          	int3
1400091d4: 48 83 ec 58                 	sub	rsp, 88
1400091d8: 48 8b 05 49 de 00 00        	mov	rax, qword ptr [rip + 56905] # 0x140017028
1400091df: 48 33 c4                    	xor	rax, rsp
1400091e2: 48 89 44 24 40              	mov	qword ptr [rsp + 64], rax
1400091e7: 33 c0                       	xor	eax, eax
1400091e9: 4c 8b ca                    	mov	r9, rdx
1400091ec: 48 83 f8 20                 	cmp	rax, 32
1400091f0: 4c 8b c1                    	mov	r8, rcx
1400091f3: 73 77                       	jae	0x14000926c <.text+0x826c>
1400091f5: c6 44 04 20 00              	mov	byte ptr [rsp + rax + 32], 0
1400091fa: 48 ff c0                    	inc	rax
1400091fd: 48 83 f8 20                 	cmp	rax, 32
140009201: 7c f0                       	jl	0x1400091f3 <.text+0x81f3>
140009203: 8a 02                       	mov	al, byte ptr [rdx]
140009205: eb 1f                       	jmp	0x140009226 <.text+0x8226>
140009207: 0f b6 d0                    	movzx	edx, al
14000920a: 48 c1 ea 03                 	shr	rdx, 3
14000920e: 0f b6 c0                    	movzx	eax, al
140009211: 83 e0 07                    	and	eax, 7
140009214: 0f b6 4c 14 20              	movzx	ecx, byte ptr [rsp + rdx + 32]
140009219: 0f ab c1                    	bts	ecx, eax
14000921c: 49 ff c1                    	inc	r9
14000921f: 88 4c 14 20                 	mov	byte ptr [rsp + rdx + 32], cl
140009223: 41 8a 01                    	mov	al, byte ptr [r9]
140009226: 84 c0                       	test	al, al
140009228: 75 dd                       	jne	0x140009207 <.text+0x8207>
14000922a: eb 1f                       	jmp	0x14000924b <.text+0x824b>
14000922c: 41 0f b6 c1                 	movzx	eax, r9b
140009230: ba 01 00 00 00              	mov	edx, 1
140009235: 41 0f b6 c9                 	movzx	ecx, r9b
140009239: 83 e1 07                    	and	ecx, 7
14000923c: 48 c1 e8 03                 	shr	rax, 3
140009240: d3 e2                       	shl	edx, cl
140009242: 84 54 04 20                 	test	byte ptr [rsp + rax + 32], dl
140009246: 75 1f                       	jne	0x140009267 <.text+0x8267>
140009248: 49 ff c0                    	inc	r8
14000924b: 45 8a 08                    	mov	r9b, byte ptr [r8]
14000924e: 45 84 c9                    	test	r9b, r9b
140009251: 75 d9                       	jne	0x14000922c <.text+0x822c>
140009253: 33 c0                       	xor	eax, eax
140009255: 48 8b 4c 24 40              	mov	rcx, qword ptr [rsp + 64]
14000925a: 48 33 cc                    	xor	rcx, rsp
14000925d: e8 ae 38 00 00              	call	0x14000cb10 <.text+0xbb10>
140009262: 48 83 c4 58                 	add	rsp, 88
140009266: c3                          	ret
140009267: 49 8b c0                    	mov	rax, r8
14000926a: eb e9                       	jmp	0x140009255 <.text+0x8255>
14000926c: e8 c7 39 00 00              	call	0x14000cc38 <.text+0xbc38>
140009271: cc                          	int3
140009272: cc                          	int3
140009273: cc                          	int3
140009274: cc                          	int3
140009275: cc                          	int3
140009276: cc                          	int3
140009277: cc                          	int3
140009278: cc                          	int3
140009279: cc                          	int3
14000927a: cc                          	int3
14000927b: cc                          	int3
14000927c: cc                          	int3
14000927d: cc                          	int3
14000927e: cc                          	int3
14000927f: cc                          	int3
140009280: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140009285: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000928a: 57                          	push	rdi
14000928b: 4c 8b d2                    	mov	r10, rdx
14000928e: 48 8d 35 6b 6d ff ff        	lea	rsi, [rip - 37525]      # 0x140000000
140009295: 41 83 e2 0f                 	and	r10d, 15
140009299: 48 8b fa                    	mov	rdi, rdx
14000929c: 49 2b fa                    	sub	rdi, r10
14000929f: 48 8b da                    	mov	rbx, rdx
1400092a2: 4c 8b c1                    	mov	r8, rcx
1400092a5: 0f 57 db                    	xorps	xmm3, xmm3
1400092a8: 49 8d 42 ff                 	lea	rax, [r10 - 1]
1400092ac: f3 0f 6f 0f                 	movdqu	xmm1, xmmword ptr [rdi]
1400092b0: 48 83 f8 0e                 	cmp	rax, 14
1400092b4: 77 73                       	ja	0x140009329 <.text+0x8329>
1400092b6: 8b 84 86 8c 95 00 00        	mov	eax, dword ptr [rsi + 4*rax + 38284]
1400092bd: 48 03 c6                    	add	rax, rsi
1400092c0: ff e0                       	jmp	rax
1400092c2: 66 0f 73 d9 01              	psrldq	xmm1, 1                 # xmm1 = xmm1[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
1400092c7: eb 60                       	jmp	0x140009329 <.text+0x8329>
1400092c9: 66 0f 73 d9 02              	psrldq	xmm1, 2                 # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
1400092ce: eb 59                       	jmp	0x140009329 <.text+0x8329>
1400092d0: 66 0f 73 d9 03              	psrldq	xmm1, 3                 # xmm1 = xmm1[3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero
1400092d5: eb 52                       	jmp	0x140009329 <.text+0x8329>
1400092d7: 66 0f 73 d9 04              	psrldq	xmm1, 4                 # xmm1 = xmm1[4,5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero
1400092dc: eb 4b                       	jmp	0x140009329 <.text+0x8329>
1400092de: 66 0f 73 d9 05              	psrldq	xmm1, 5                 # xmm1 = xmm1[5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero
1400092e3: eb 44                       	jmp	0x140009329 <.text+0x8329>
1400092e5: 66 0f 73 d9 06              	psrldq	xmm1, 6                 # xmm1 = xmm1[6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero
1400092ea: eb 3d                       	jmp	0x140009329 <.text+0x8329>
1400092ec: 66 0f 73 d9 07              	psrldq	xmm1, 7                 # xmm1 = xmm1[7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero
1400092f1: eb 36                       	jmp	0x140009329 <.text+0x8329>
1400092f3: 66 0f 73 d9 08              	psrldq	xmm1, 8                 # xmm1 = xmm1[8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero
1400092f8: eb 2f                       	jmp	0x140009329 <.text+0x8329>
1400092fa: 66 0f 73 d9 09              	psrldq	xmm1, 9                 # xmm1 = xmm1[9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero
1400092ff: eb 28                       	jmp	0x140009329 <.text+0x8329>
140009301: 66 0f 73 d9 0a              	psrldq	xmm1, 10                # xmm1 = xmm1[10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
140009306: eb 21                       	jmp	0x140009329 <.text+0x8329>
140009308: 66 0f 73 d9 0b              	psrldq	xmm1, 11                # xmm1 = xmm1[11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
14000930d: eb 1a                       	jmp	0x140009329 <.text+0x8329>
14000930f: 66 0f 73 d9 0c              	psrldq	xmm1, 12                # xmm1 = xmm1[12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
140009314: eb 13                       	jmp	0x140009329 <.text+0x8329>
140009316: 66 0f 73 d9 0d              	psrldq	xmm1, 13                # xmm1 = xmm1[13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
14000931b: eb 0c                       	jmp	0x140009329 <.text+0x8329>
14000931d: 66 0f 73 d9 0e              	psrldq	xmm1, 14                # xmm1 = xmm1[14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
140009322: eb 05                       	jmp	0x140009329 <.text+0x8329>
140009324: 66 0f 73 d9 0f              	psrldq	xmm1, 15                # xmm1 = xmm1[15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
140009329: 0f 57 c0                    	xorps	xmm0, xmm0
14000932c: 41 b9 0f 00 00 00           	mov	r9d, 15
140009332: 66 0f 74 c1                 	pcmpeqb	xmm0, xmm1
140009336: 66 0f d7 c0                 	pmovmskb	eax, xmm0
14000933a: 85 c0                       	test	eax, eax
14000933c: 0f 84 33 01 00 00           	je	0x140009475 <.text+0x8475>
140009342: 0f bc d0                    	bsf	edx, eax
140009345: 4d 85 d2                    	test	r10, r10
140009348: 75 06                       	jne	0x140009350 <.text+0x8350>
14000934a: 45 8d 59 f2                 	lea	r11d, [r9 - 14]
14000934e: eb 14                       	jmp	0x140009364 <.text+0x8364>
140009350: 45 33 db                    	xor	r11d, r11d
140009353: 8b c2                       	mov	eax, edx
140009355: b9 10 00 00 00              	mov	ecx, 16
14000935a: 49 2b ca                    	sub	rcx, r10
14000935d: 48 3b c1                    	cmp	rax, rcx
140009360: 41 0f 92 c3                 	setb	r11b
140009364: 41 8b c1                    	mov	eax, r9d
140009367: 2b c2                       	sub	eax, edx
140009369: 41 3b c1                    	cmp	eax, r9d
14000936c: 0f 87 cf 00 00 00           	ja	0x140009441 <.text+0x8441>
140009372: 8b 8c 86 c8 95 00 00        	mov	ecx, dword ptr [rsi + 4*rax + 38344]
140009379: 48 03 ce                    	add	rcx, rsi
14000937c: ff e1                       	jmp	rcx
14000937e: 66 0f 73 f9 01              	pslldq	xmm1, 1                 # xmm1 = zero,xmm1[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14]
140009383: 66 0f 73 d9 01              	psrldq	xmm1, 1                 # xmm1 = xmm1[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
140009388: e9 b4 00 00 00              	jmp	0x140009441 <.text+0x8441>
14000938d: 66 0f 73 f9 02              	pslldq	xmm1, 2                 # xmm1 = zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
140009392: 66 0f 73 d9 02              	psrldq	xmm1, 2                 # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
140009397: e9 a5 00 00 00              	jmp	0x140009441 <.text+0x8441>
14000939c: 66 0f 73 f9 03              	pslldq	xmm1, 3                 # xmm1 = zero,zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9,10,11,12]
1400093a1: 66 0f 73 d9 03              	psrldq	xmm1, 3                 # xmm1 = xmm1[3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero
1400093a6: e9 96 00 00 00              	jmp	0x140009441 <.text+0x8441>
1400093ab: 66 0f 73 f9 04              	pslldq	xmm1, 4                 # xmm1 = zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9,10,11]
1400093b0: 66 0f 73 d9 04              	psrldq	xmm1, 4                 # xmm1 = xmm1[4,5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero
1400093b5: e9 87 00 00 00              	jmp	0x140009441 <.text+0x8441>
1400093ba: 66 0f 73 f9 05              	pslldq	xmm1, 5                 # xmm1 = zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9,10]
1400093bf: 66 0f 73 d9 05              	psrldq	xmm1, 5                 # xmm1 = xmm1[5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero
1400093c4: eb 7b                       	jmp	0x140009441 <.text+0x8441>
1400093c6: 66 0f 73 f9 06              	pslldq	xmm1, 6                 # xmm1 = zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9]
1400093cb: 66 0f 73 d9 06              	psrldq	xmm1, 6                 # xmm1 = xmm1[6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero
1400093d0: eb 6f                       	jmp	0x140009441 <.text+0x8441>
1400093d2: 66 0f 73 f9 07              	pslldq	xmm1, 7                 # xmm1 = zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7,8]
1400093d7: 66 0f 73 d9 07              	psrldq	xmm1, 7                 # xmm1 = xmm1[7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero
1400093dc: eb 63                       	jmp	0x140009441 <.text+0x8441>
1400093de: 66 0f 73 f9 08              	pslldq	xmm1, 8                 # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7]
1400093e3: 66 0f 73 d9 08              	psrldq	xmm1, 8                 # xmm1 = xmm1[8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero
1400093e8: eb 57                       	jmp	0x140009441 <.text+0x8441>
1400093ea: 66 0f 73 f9 09              	pslldq	xmm1, 9                 # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6]
1400093ef: 66 0f 73 d9 09              	psrldq	xmm1, 9                 # xmm1 = xmm1[9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero
1400093f4: eb 4b                       	jmp	0x140009441 <.text+0x8441>
1400093f6: 66 0f 73 f9 0a              	pslldq	xmm1, 10                # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5]
1400093fb: 66 0f 73 d9 0a              	psrldq	xmm1, 10                # xmm1 = xmm1[10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
140009400: eb 3f                       	jmp	0x140009441 <.text+0x8441>
140009402: 66 0f 73 f9 0b              	pslldq	xmm1, 11                # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4]
140009407: 66 0f 73 d9 0b              	psrldq	xmm1, 11                # xmm1 = xmm1[11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
14000940c: eb 33                       	jmp	0x140009441 <.text+0x8441>
14000940e: 66 0f 73 f9 0c              	pslldq	xmm1, 12                # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3]
140009413: 66 0f 73 d9 0c              	psrldq	xmm1, 12                # xmm1 = xmm1[12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
140009418: eb 27                       	jmp	0x140009441 <.text+0x8441>
14000941a: 66 0f 73 f9 0d              	pslldq	xmm1, 13                # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2]
14000941f: 66 0f 73 d9 0d              	psrldq	xmm1, 13                # xmm1 = xmm1[13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
140009424: eb 1b                       	jmp	0x140009441 <.text+0x8441>
140009426: 66 0f 73 f9 0e              	pslldq	xmm1, 14                # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1]
14000942b: 66 0f 73 d9 0e              	psrldq	xmm1, 14                # xmm1 = xmm1[14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
140009430: eb 0f                       	jmp	0x140009441 <.text+0x8441>
140009432: 66 0f 73 f9 0f              	pslldq	xmm1, 15                # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0]
140009437: 66 0f 73 d9 0f              	psrldq	xmm1, 15                # xmm1 = xmm1[15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
14000943c: eb 03                       	jmp	0x140009441 <.text+0x8441>
14000943e: 0f 57 c9                    	xorps	xmm1, xmm1
140009441: 45 85 db                    	test	r11d, r11d
140009444: 0f 85 e6 00 00 00           	jne	0x140009530 <.text+0x8530>
14000944a: f3 0f 6f 57 10              	movdqu	xmm2, xmmword ptr [rdi + 16]
14000944f: 66 0f 6f c2                 	movdqa	xmm0, xmm2
140009453: 66 0f 74 c3                 	pcmpeqb	xmm0, xmm3
140009457: 66 0f d7 c0                 	pmovmskb	eax, xmm0
14000945b: 85 c0                       	test	eax, eax
14000945d: 75 35                       	jne	0x140009494 <.text+0x8494>
14000945f: 48 8b d3                    	mov	rdx, rbx
140009462: 49 8b c8                    	mov	rcx, r8
140009465: 48 8b 5c 24 10              	mov	rbx, qword ptr [rsp + 16]
14000946a: 48 8b 74 24 18              	mov	rsi, qword ptr [rsp + 24]
14000946f: 5f                          	pop	rdi
140009470: e9 5f fd ff ff              	jmp	0x1400091d4 <.text+0x81d4>
140009475: 4d 85 d2                    	test	r10, r10
140009478: 75 d0                       	jne	0x14000944a <.text+0x844a>
14000947a: 44 38 57 01                 	cmp	byte ptr [rdi + 1], r10b
14000947e: 0f 84 ac 00 00 00           	je	0x140009530 <.text+0x8530>
140009484: 48 8b 5c 24 10              	mov	rbx, qword ptr [rsp + 16]
140009489: 48 8b 74 24 18              	mov	rsi, qword ptr [rsp + 24]
14000948e: 5f                          	pop	rdi
14000948f: e9 40 fd ff ff              	jmp	0x1400091d4 <.text+0x81d4>
140009494: 0f bc c8                    	bsf	ecx, eax
140009497: 8b c1                       	mov	eax, ecx
140009499: 49 2b c2                    	sub	rax, r10
14000949c: 48 83 c0 10                 	add	rax, 16
1400094a0: 48 83 f8 10                 	cmp	rax, 16
1400094a4: 77 b9                       	ja	0x14000945f <.text+0x845f>
1400094a6: 44 2b c9                    	sub	r9d, ecx
1400094a9: 41 83 f9 0f                 	cmp	r9d, 15
1400094ad: 77 79                       	ja	0x140009528 <.text+0x8528>
1400094af: 42 8b 8c 8e 08 96 00 00     	mov	ecx, dword ptr [rsi + 4*r9 + 38408]
1400094b7: 48 03 ce                    	add	rcx, rsi
1400094ba: ff e1                       	jmp	rcx
1400094bc: 66 0f 73 fa 01              	pslldq	xmm2, 1                 # xmm2 = zero,xmm2[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14]
1400094c1: eb 65                       	jmp	0x140009528 <.text+0x8528>
1400094c3: 66 0f 73 fa 02              	pslldq	xmm2, 2                 # xmm2 = zero,zero,xmm2[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
1400094c8: eb 5e                       	jmp	0x140009528 <.text+0x8528>
1400094ca: 66 0f 73 fa 03              	pslldq	xmm2, 3                 # xmm2 = zero,zero,zero,xmm2[0,1,2,3,4,5,6,7,8,9,10,11,12]
1400094cf: eb 57                       	jmp	0x140009528 <.text+0x8528>
1400094d1: 66 0f 73 fa 04              	pslldq	xmm2, 4                 # xmm2 = zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7,8,9,10,11]
1400094d6: eb 50                       	jmp	0x140009528 <.text+0x8528>
1400094d8: 66 0f 73 fa 05              	pslldq	xmm2, 5                 # xmm2 = zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7,8,9,10]
1400094dd: eb 49                       	jmp	0x140009528 <.text+0x8528>
1400094df: 66 0f 73 fa 06              	pslldq	xmm2, 6                 # xmm2 = zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7,8,9]
1400094e4: eb 42                       	jmp	0x140009528 <.text+0x8528>
1400094e6: 66 0f 73 fa 07              	pslldq	xmm2, 7                 # xmm2 = zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7,8]
1400094eb: eb 3b                       	jmp	0x140009528 <.text+0x8528>
1400094ed: 66 0f 73 fa 08              	pslldq	xmm2, 8                 # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7]
1400094f2: eb 34                       	jmp	0x140009528 <.text+0x8528>
1400094f4: 66 0f 73 fa 09              	pslldq	xmm2, 9                 # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6]
1400094f9: eb 2d                       	jmp	0x140009528 <.text+0x8528>
1400094fb: 66 0f 73 fa 0a              	pslldq	xmm2, 10                # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5]
140009500: eb 26                       	jmp	0x140009528 <.text+0x8528>
140009502: 66 0f 73 fa 0b              	pslldq	xmm2, 11                # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4]
140009507: eb 1f                       	jmp	0x140009528 <.text+0x8528>
140009509: 66 0f 73 fa 0c              	pslldq	xmm2, 12                # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3]
14000950e: eb 18                       	jmp	0x140009528 <.text+0x8528>
140009510: 66 0f 73 fa 0d              	pslldq	xmm2, 13                # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2]
140009515: eb 11                       	jmp	0x140009528 <.text+0x8528>
140009517: 66 0f 73 fa 0e              	pslldq	xmm2, 14                # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1]
14000951c: eb 0a                       	jmp	0x140009528 <.text+0x8528>
14000951e: 66 0f 73 fa 0f              	pslldq	xmm2, 15                # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0]
140009523: eb 03                       	jmp	0x140009528 <.text+0x8528>
140009525: 0f 57 d2                    	xorps	xmm2, xmm2
140009528: 66 0f eb d1                 	por	xmm2, xmm1
14000952c: 66 0f 6f ca                 	movdqa	xmm1, xmm2
140009530: 41 0f b6 00                 	movzx	eax, byte ptr [r8]
140009534: 84 c0                       	test	al, al
140009536: 74 34                       	je	0x14000956c <.text+0x856c>
140009538: 0f 1f 84 00 00 00 00 00     	nop	dword ptr [rax + rax]
140009540: 0f be c0                    	movsx	eax, al
140009543: 66 0f 6e c0                 	movd	xmm0, eax
140009547: 66 0f 60 c0                 	punpcklbw	xmm0, xmm0      # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
14000954b: 66 0f 60 c0                 	punpcklbw	xmm0, xmm0      # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
14000954f: 66 0f 70 c0 00              	pshufd	xmm0, xmm0, 0           # xmm0 = xmm0[0,0,0,0]
140009554: 66 0f 74 c1                 	pcmpeqb	xmm0, xmm1
140009558: 66 0f d7 c0                 	pmovmskb	eax, xmm0
14000955c: 85 c0                       	test	eax, eax
14000955e: 75 1a                       	jne	0x14000957a <.text+0x857a>
140009560: 41 0f b6 40 01              	movzx	eax, byte ptr [r8 + 1]
140009565: 49 ff c0                    	inc	r8
140009568: 84 c0                       	test	al, al
14000956a: 75 d4                       	jne	0x140009540 <.text+0x8540>
14000956c: 33 c0                       	xor	eax, eax
14000956e: 48 8b 5c 24 10              	mov	rbx, qword ptr [rsp + 16]
140009573: 48 8b 74 24 18              	mov	rsi, qword ptr [rsp + 24]
140009578: 5f                          	pop	rdi
140009579: c3                          	ret
14000957a: 48 8b 5c 24 10              	mov	rbx, qword ptr [rsp + 16]
14000957f: 49 8b c0                    	mov	rax, r8
140009582: 48 8b 74 24 18              	mov	rsi, qword ptr [rsp + 24]
140009587: 5f                          	pop	rdi
140009588: c3                          	ret
140009589: 0f 1f 00                    	nop	dword ptr [rax]
14000958c: c2 92 00                    	ret	146
14000958f: 00 c9                       	add	cl, cl
140009591: 92                          	xchg	eax, edx
140009592: 00 00                       	add	byte ptr [rax], al
140009594: d0 92 00 00 d7 92           	rcl	byte ptr [rdx - 1831403520]
14000959a: 00 00                       	add	byte ptr [rax], al
14000959c: de 92 00 00 e5 92           	ficom	word ptr [rdx - 1830486016]
1400095a2: 00 00                       	add	byte ptr [rax], al
1400095a4: ec                          	in	al, dx
1400095a5: 92                          	xchg	eax, edx
1400095a6: 00 00                       	add	byte ptr [rax], al
1400095a8: f3                          	xrelease
1400095a9: 92                          	xchg	eax, edx
1400095aa: 00 00                       	add	byte ptr [rax], al
1400095ac: fa                          	cli
1400095ad: 92                          	xchg	eax, edx
1400095ae: 00 00                       	add	byte ptr [rax], al
1400095b0: 01 93 00 00 08 93           	add	dword ptr [rbx - 1828192256], edx
1400095b6: 00 00                       	add	byte ptr [rax], al
1400095b8: 0f 93 00                    	setae	byte ptr [rax]
1400095bb: 00 16                       	add	byte ptr [rsi], dl
1400095bd: 93                          	xchg	eax, ebx
1400095be: 00 00                       	add	byte ptr [rax], al
1400095c0: 1d 93 00 00 24              	sbb	eax, 603979923
1400095c5: 93                          	xchg	eax, ebx
1400095c6: 00 00                       	add	byte ptr [rax], al
1400095c8: 7e 93                       	jle	0x14000955d <.text+0x855d>
1400095ca: 00 00                       	add	byte ptr [rax], al
1400095cc: 8d 93 00 00 9c 93           	lea	edx, [rbx - 1818492928]
1400095d2: 00 00                       	add	byte ptr [rax], al
1400095d4: ab                          	stosd	dword ptr es:[rdi], eax
1400095d5: 93                          	xchg	eax, ebx
1400095d6: 00 00                       	add	byte ptr [rax], al
1400095d8: ba 93 00 00 c6              	mov	edx, 3321888915
1400095dd: 93                          	xchg	eax, ebx
1400095de: 00 00                       	add	byte ptr [rax], al
1400095e0: d2 93 00 00 de 93           	rcl	byte ptr [rbx - 1814167552], cl
1400095e6: 00 00                       	add	byte ptr [rax], al
1400095e8: ea                          	<unknown>
1400095e9: 93                          	xchg	eax, ebx
1400095ea: 00 00                       	add	byte ptr [rax], al
1400095ec: f6 93 00 00 02 94           	not	byte ptr [rbx - 1811808256]
1400095f2: 00 00                       	add	byte ptr [rax], al
1400095f4: 0e                          	<unknown>
1400095f5: 94                          	xchg	eax, esp
1400095f6: 00 00                       	add	byte ptr [rax], al
1400095f8: 1a 94 00 00 26 94 00        	sbb	dl, byte ptr [rax + rax + 9709056]
1400095ff: 00 32                       	add	byte ptr [rdx], dh
140009601: 94                          	xchg	eax, esp
140009602: 00 00                       	add	byte ptr [rax], al
140009604: 3e 94                       	xchg	eax, esp
140009606: 00 00                       	add	byte ptr [rax], al
140009608: bc 94 00 00 c3              	mov	esp, 3271557268
14000960d: 94                          	xchg	eax, esp
14000960e: 00 00                       	add	byte ptr [rax], al
140009610: ca 94 00                    	retf	148
140009613: 00 d1                       	add	cl, dl
140009615: 94                          	xchg	eax, esp
140009616: 00 00                       	add	byte ptr [rax], al
140009618: d8 94 00 00 df 94 00        	fcom	dword ptr [rax + rax + 9756416]
14000961f: 00 e6                       	add	dh, ah
140009621: 94                          	xchg	eax, esp
140009622: 00 00                       	add	byte ptr [rax], al
140009624: ed                          	in	eax, dx
140009625: 94                          	xchg	eax, esp
140009626: 00 00                       	add	byte ptr [rax], al
140009628: f4                          	hlt
140009629: 94                          	xchg	eax, esp
14000962a: 00 00                       	add	byte ptr [rax], al
14000962c: fb                          	sti
14000962d: 94                          	xchg	eax, esp
14000962e: 00 00                       	add	byte ptr [rax], al
140009630: 02 95 00 00 09 95           	add	dl, byte ptr [rbp - 1794572288]
140009636: 00 00                       	add	byte ptr [rax], al
140009638: 10 95 00 00 17 95           	adc	byte ptr [rbp - 1793654784], dl
14000963e: 00 00                       	add	byte ptr [rax], al
140009640: 1e                          	<unknown>
140009641: 95                          	xchg	eax, ebp
140009642: 00 00                       	add	byte ptr [rax], al
140009644: 25 95 00 00 45              	and	eax, 1157628053
140009649: 33 c0                       	xor	eax, eax
14000964b: e9 00 00 00 00              	jmp	0x140009650 <.text+0x8650>
140009650: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140009655: 57                          	push	rdi
140009656: 48 83 ec 40                 	sub	rsp, 64
14000965a: 48 8b da                    	mov	rbx, rdx
14000965d: 48 8b f9                    	mov	rdi, rcx
140009660: 48 85 c9                    	test	rcx, rcx
140009663: 75 14                       	jne	0x140009679 <.text+0x8679>
140009665: e8 a6 b7 ff ff              	call	0x140004e10 <.text+0x3e10>
14000966a: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140009670: e8 7b b6 ff ff              	call	0x140004cf0 <.text+0x3cf0>
140009675: 33 c0                       	xor	eax, eax
140009677: eb 60                       	jmp	0x1400096d9 <.text+0x86d9>
140009679: 48 85 db                    	test	rbx, rbx
14000967c: 74 e7                       	je	0x140009665 <.text+0x8665>
14000967e: 48 3b fb                    	cmp	rdi, rbx
140009681: 73 f2                       	jae	0x140009675 <.text+0x8675>
140009683: 49 8b d0                    	mov	rdx, r8
140009686: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
14000968b: e8 d4 ac ff ff              	call	0x140004364 <.text+0x3364>
140009690: 48 8b 4c 24 30              	mov	rcx, qword ptr [rsp + 48]
140009695: 48 8d 53 ff                 	lea	rdx, [rbx - 1]
140009699: 83 79 08 00                 	cmp	dword ptr [rcx + 8], 0
14000969d: 74 24                       	je	0x1400096c3 <.text+0x86c3>
14000969f: 48 ff ca                    	dec	rdx
1400096a2: 48 3b fa                    	cmp	rdi, rdx
1400096a5: 77 0a                       	ja	0x1400096b1 <.text+0x86b1>
1400096a7: 0f b6 02                    	movzx	eax, byte ptr [rdx]
1400096aa: f6 44 08 19 04              	test	byte ptr [rax + rcx + 25], 4
1400096af: 75 ee                       	jne	0x14000969f <.text+0x869f>
1400096b1: 48 8b cb                    	mov	rcx, rbx
1400096b4: 48 2b ca                    	sub	rcx, rdx
1400096b7: 48 8b d3                    	mov	rdx, rbx
1400096ba: 83 e1 01                    	and	ecx, 1
1400096bd: 48 2b d1                    	sub	rdx, rcx
1400096c0: 48 ff ca                    	dec	rdx
1400096c3: 80 7c 24 38 00              	cmp	byte ptr [rsp + 56], 0
1400096c8: 74 0c                       	je	0x1400096d6 <.text+0x86d6>
1400096ca: 48 8b 4c 24 20              	mov	rcx, qword ptr [rsp + 32]
1400096cf: 83 a1 a8 03 00 00 fd        	and	dword ptr [rcx + 936], -3
1400096d6: 48 8b c2                    	mov	rax, rdx
1400096d9: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
1400096de: 48 83 c4 40                 	add	rsp, 64
1400096e2: 5f                          	pop	rdi
1400096e3: c3                          	ret
1400096e4: 40 55                       	push	rbp
1400096e6: 41 54                       	push	r12
1400096e8: 41 55                       	push	r13
1400096ea: 41 56                       	push	r14
1400096ec: 41 57                       	push	r15
1400096ee: 48 83 ec 60                 	sub	rsp, 96
1400096f2: 48 8d 6c 24 50              	lea	rbp, [rsp + 80]
1400096f7: 48 89 5d 40                 	mov	qword ptr [rbp + 64], rbx
1400096fb: 48 89 75 48                 	mov	qword ptr [rbp + 72], rsi
1400096ff: 48 89 7d 50                 	mov	qword ptr [rbp + 80], rdi
140009703: 48 8b 05 1e d9 00 00        	mov	rax, qword ptr [rip + 55582] # 0x140017028
14000970a: 48 33 c5                    	xor	rax, rbp
14000970d: 48 89 45 08                 	mov	qword ptr [rbp + 8], rax
140009711: 48 63 5d 60                 	movsxd	rbx, dword ptr [rbp + 96]
140009715: 4d 8b f9                    	mov	r15, r9
140009718: 48 89 55 00                 	mov	qword ptr [rbp], rdx
14000971c: 45 8b e8                    	mov	r13d, r8d
14000971f: 48 8b f9                    	mov	rdi, rcx
140009722: 85 db                       	test	ebx, ebx
140009724: 7e 14                       	jle	0x14000973a <.text+0x873a>
140009726: 48 8b d3                    	mov	rdx, rbx
140009729: 49 8b c9                    	mov	rcx, r9
14000972c: e8 9f 18 00 00              	call	0x14000afd0 <.text+0x9fd0>
140009731: 3b c3                       	cmp	eax, ebx
140009733: 8d 58 01                    	lea	ebx, [rax + 1]
140009736: 7c 02                       	jl	0x14000973a <.text+0x873a>
140009738: 8b d8                       	mov	ebx, eax
14000973a: 44 8b 75 78                 	mov	r14d, dword ptr [rbp + 120]
14000973e: 45 85 f6                    	test	r14d, r14d
140009741: 75 07                       	jne	0x14000974a <.text+0x874a>
140009743: 48 8b 07                    	mov	rax, qword ptr [rdi]
140009746: 44 8b 70 0c                 	mov	r14d, dword ptr [rax + 12]
14000974a: f7 9d 80 00 00 00           	neg	dword ptr [rbp + 128]
140009750: 44 8b cb                    	mov	r9d, ebx
140009753: 4d 8b c7                    	mov	r8, r15
140009756: 41 8b ce                    	mov	ecx, r14d
140009759: 1b d2                       	sbb	edx, edx
14000975b: 83 64 24 28 00              	and	dword ptr [rsp + 40], 0
140009760: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
140009766: 83 e2 08                    	and	edx, 8
140009769: ff c2                       	inc	edx
14000976b: e8 5c ce ff ff              	call	0x1400065cc <.text+0x55cc>
140009770: 4c 63 e0                    	movsxd	r12, eax
140009773: 85 c0                       	test	eax, eax
140009775: 0f 84 36 02 00 00           	je	0x1400099b1 <.text+0x89b1>
14000977b: 49 8b c4                    	mov	rax, r12
14000977e: 49 b8 f0 ff ff ff ff ff ff 0f       	movabs	r8, 1152921504606846960
140009788: 48 03 c0                    	add	rax, rax
14000978b: 48 8d 48 10                 	lea	rcx, [rax + 16]
14000978f: 48 3b c1                    	cmp	rax, rcx
140009792: 48 1b d2                    	sbb	rdx, rdx
140009795: 48 23 d1                    	and	rdx, rcx
140009798: 74 53                       	je	0x1400097ed <.text+0x87ed>
14000979a: 48 81 fa 00 04 00 00        	cmp	rdx, 1024
1400097a1: 77 2e                       	ja	0x1400097d1 <.text+0x87d1>
1400097a3: 48 8d 42 0f                 	lea	rax, [rdx + 15]
1400097a7: 48 3b c2                    	cmp	rax, rdx
1400097aa: 77 03                       	ja	0x1400097af <.text+0x87af>
1400097ac: 49 8b c0                    	mov	rax, r8
1400097af: 48 83 e0 f0                 	and	rax, -16
1400097b3: e8 28 36 00 00              	call	0x14000cde0 <.text+0xbde0>
1400097b8: 48 2b e0                    	sub	rsp, rax
1400097bb: 48 8d 74 24 50              	lea	rsi, [rsp + 80]
1400097c0: 48 85 f6                    	test	rsi, rsi
1400097c3: 0f 84 ce 01 00 00           	je	0x140009997 <.text+0x8997>
1400097c9: c7 06 cc cc 00 00           	mov	dword ptr [rsi], 52428
1400097cf: eb 16                       	jmp	0x1400097e7 <.text+0x87e7>
1400097d1: 48 8b ca                    	mov	rcx, rdx
1400097d4: e8 c7 dd ff ff              	call	0x1400075a0 <.text+0x65a0>
1400097d9: 48 8b f0                    	mov	rsi, rax
1400097dc: 48 85 c0                    	test	rax, rax
1400097df: 74 0e                       	je	0x1400097ef <.text+0x87ef>
1400097e1: c7 00 dd dd 00 00           	mov	dword ptr [rax], 56797
1400097e7: 48 83 c6 10                 	add	rsi, 16
1400097eb: eb 02                       	jmp	0x1400097ef <.text+0x87ef>
1400097ed: 33 f6                       	xor	esi, esi
1400097ef: 48 85 f6                    	test	rsi, rsi
1400097f2: 0f 84 9f 01 00 00           	je	0x140009997 <.text+0x8997>
1400097f8: 44 89 64 24 28              	mov	dword ptr [rsp + 40], r12d
1400097fd: 44 8b cb                    	mov	r9d, ebx
140009800: 4d 8b c7                    	mov	r8, r15
140009803: 48 89 74 24 20              	mov	qword ptr [rsp + 32], rsi
140009808: ba 01 00 00 00              	mov	edx, 1
14000980d: 41 8b ce                    	mov	ecx, r14d
140009810: e8 b7 cd ff ff              	call	0x1400065cc <.text+0x55cc>
140009815: 85 c0                       	test	eax, eax
140009817: 0f 84 7a 01 00 00           	je	0x140009997 <.text+0x8997>
14000981d: 48 83 64 24 40 00           	and	qword ptr [rsp + 64], 0
140009823: 45 8b cc                    	mov	r9d, r12d
140009826: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
14000982c: 4c 8b c6                    	mov	r8, rsi
14000982f: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
140009835: 41 8b d5                    	mov	edx, r13d
140009838: 4c 8b 7d 00                 	mov	r15, qword ptr [rbp]
14000983c: 83 64 24 28 00              	and	dword ptr [rsp + 40], 0
140009841: 49 8b cf                    	mov	rcx, r15
140009844: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000984a: e8 1d e8 ff ff              	call	0x14000806c <.text+0x706c>
14000984f: 48 63 f8                    	movsxd	rdi, eax
140009852: 85 c0                       	test	eax, eax
140009854: 0f 84 3d 01 00 00           	je	0x140009997 <.text+0x8997>
14000985a: ba 00 04 00 00              	mov	edx, 1024
14000985f: 44 85 ea                    	test	edx, r13d
140009862: 74 52                       	je	0x1400098b6 <.text+0x88b6>
140009864: 8b 45 70                    	mov	eax, dword ptr [rbp + 112]
140009867: 85 c0                       	test	eax, eax
140009869: 0f 84 2a 01 00 00           	je	0x140009999 <.text+0x8999>
14000986f: 3b f8                       	cmp	edi, eax
140009871: 0f 8f 20 01 00 00           	jg	0x140009997 <.text+0x8997>
140009877: 48 83 64 24 40 00           	and	qword ptr [rsp + 64], 0
14000987d: 45 8b cc                    	mov	r9d, r12d
140009880: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
140009886: 4c 8b c6                    	mov	r8, rsi
140009889: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
14000988f: 41 8b d5                    	mov	edx, r13d
140009892: 89 44 24 28                 	mov	dword ptr [rsp + 40], eax
140009896: 49 8b cf                    	mov	rcx, r15
140009899: 48 8b 45 68                 	mov	rax, qword ptr [rbp + 104]
14000989d: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
1400098a2: e8 c5 e7 ff ff              	call	0x14000806c <.text+0x706c>
1400098a7: 8b f8                       	mov	edi, eax
1400098a9: 85 c0                       	test	eax, eax
1400098ab: 0f 85 e8 00 00 00           	jne	0x140009999 <.text+0x8999>
1400098b1: e9 e1 00 00 00              	jmp	0x140009997 <.text+0x8997>
1400098b6: 48 8b cf                    	mov	rcx, rdi
1400098b9: 48 03 c9                    	add	rcx, rcx
1400098bc: 48 8d 41 10                 	lea	rax, [rcx + 16]
1400098c0: 48 3b c8                    	cmp	rcx, rax
1400098c3: 48 1b c9                    	sbb	rcx, rcx
1400098c6: 48 23 c8                    	and	rcx, rax
1400098c9: 74 53                       	je	0x14000991e <.text+0x891e>
1400098cb: 48 3b ca                    	cmp	rcx, rdx
1400098ce: 77 35                       	ja	0x140009905 <.text+0x8905>
1400098d0: 48 8d 41 0f                 	lea	rax, [rcx + 15]
1400098d4: 48 3b c1                    	cmp	rax, rcx
1400098d7: 77 0a                       	ja	0x1400098e3 <.text+0x88e3>
1400098d9: 48 b8 f0 ff ff ff ff ff ff 0f       	movabs	rax, 1152921504606846960
1400098e3: 48 83 e0 f0                 	and	rax, -16
1400098e7: e8 f4 34 00 00              	call	0x14000cde0 <.text+0xbde0>
1400098ec: 48 2b e0                    	sub	rsp, rax
1400098ef: 48 8d 5c 24 50              	lea	rbx, [rsp + 80]
1400098f4: 48 85 db                    	test	rbx, rbx
1400098f7: 0f 84 9a 00 00 00           	je	0x140009997 <.text+0x8997>
1400098fd: c7 03 cc cc 00 00           	mov	dword ptr [rbx], 52428
140009903: eb 13                       	jmp	0x140009918 <.text+0x8918>
140009905: e8 96 dc ff ff              	call	0x1400075a0 <.text+0x65a0>
14000990a: 48 8b d8                    	mov	rbx, rax
14000990d: 48 85 c0                    	test	rax, rax
140009910: 74 0e                       	je	0x140009920 <.text+0x8920>
140009912: c7 00 dd dd 00 00           	mov	dword ptr [rax], 56797
140009918: 48 83 c3 10                 	add	rbx, 16
14000991c: eb 02                       	jmp	0x140009920 <.text+0x8920>
14000991e: 33 db                       	xor	ebx, ebx
140009920: 48 85 db                    	test	rbx, rbx
140009923: 74 72                       	je	0x140009997 <.text+0x8997>
140009925: 48 83 64 24 40 00           	and	qword ptr [rsp + 64], 0
14000992b: 45 8b cc                    	mov	r9d, r12d
14000992e: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
140009934: 4c 8b c6                    	mov	r8, rsi
140009937: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
14000993d: 41 8b d5                    	mov	edx, r13d
140009940: 89 7c 24 28                 	mov	dword ptr [rsp + 40], edi
140009944: 49 8b cf                    	mov	rcx, r15
140009947: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000994c: e8 1b e7 ff ff              	call	0x14000806c <.text+0x706c>
140009951: 85 c0                       	test	eax, eax
140009953: 74 31                       	je	0x140009986 <.text+0x8986>
140009955: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
14000995b: 33 d2                       	xor	edx, edx
14000995d: 48 21 54 24 30              	and	qword ptr [rsp + 48], rdx
140009962: 44 8b cf                    	mov	r9d, edi
140009965: 8b 45 70                    	mov	eax, dword ptr [rbp + 112]
140009968: 4c 8b c3                    	mov	r8, rbx
14000996b: 41 8b ce                    	mov	ecx, r14d
14000996e: 85 c0                       	test	eax, eax
140009970: 75 65                       	jne	0x1400099d7 <.text+0x89d7>
140009972: 21 54 24 28                 	and	dword ptr [rsp + 40], edx
140009976: 48 21 54 24 20              	and	qword ptr [rsp + 32], rdx
14000997b: e8 a8 cc ff ff              	call	0x140006628 <.text+0x5628>
140009980: 8b f8                       	mov	edi, eax
140009982: 85 c0                       	test	eax, eax
140009984: 75 60                       	jne	0x1400099e6 <.text+0x89e6>
140009986: 48 8d 4b f0                 	lea	rcx, [rbx - 16]
14000998a: 81 39 dd dd 00 00           	cmp	dword ptr [rcx], 56797
140009990: 75 05                       	jne	0x140009997 <.text+0x8997>
140009992: e8 11 b5 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140009997: 33 ff                       	xor	edi, edi
140009999: 48 85 f6                    	test	rsi, rsi
14000999c: 74 11                       	je	0x1400099af <.text+0x89af>
14000999e: 48 8d 4e f0                 	lea	rcx, [rsi - 16]
1400099a2: 81 39 dd dd 00 00           	cmp	dword ptr [rcx], 56797
1400099a8: 75 05                       	jne	0x1400099af <.text+0x89af>
1400099aa: e8 f9 b4 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400099af: 8b c7                       	mov	eax, edi
1400099b1: 48 8b 4d 08                 	mov	rcx, qword ptr [rbp + 8]
1400099b5: 48 33 cd                    	xor	rcx, rbp
1400099b8: e8 53 31 00 00              	call	0x14000cb10 <.text+0xbb10>
1400099bd: 48 8b 5d 40                 	mov	rbx, qword ptr [rbp + 64]
1400099c1: 48 8b 75 48                 	mov	rsi, qword ptr [rbp + 72]
1400099c5: 48 8b 7d 50                 	mov	rdi, qword ptr [rbp + 80]
1400099c9: 48 8d 65 10                 	lea	rsp, [rbp + 16]
1400099cd: 41 5f                       	pop	r15
1400099cf: 41 5e                       	pop	r14
1400099d1: 41 5d                       	pop	r13
1400099d3: 41 5c                       	pop	r12
1400099d5: 5d                          	pop	rbp
1400099d6: c3                          	ret
1400099d7: 89 44 24 28                 	mov	dword ptr [rsp + 40], eax
1400099db: 48 8b 45 68                 	mov	rax, qword ptr [rbp + 104]
1400099df: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
1400099e4: eb 95                       	jmp	0x14000997b <.text+0x897b>
1400099e6: 48 8d 4b f0                 	lea	rcx, [rbx - 16]
1400099ea: 81 39 dd dd 00 00           	cmp	dword ptr [rcx], 56797
1400099f0: 75 a7                       	jne	0x140009999 <.text+0x8999>
1400099f2: e8 b1 b4 ff ff              	call	0x140004ea8 <.text+0x3ea8>
1400099f7: eb a0                       	jmp	0x140009999 <.text+0x8999>
1400099f9: cc                          	int3
1400099fa: cc                          	int3
1400099fb: cc                          	int3
1400099fc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140009a01: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
140009a06: 57                          	push	rdi
140009a07: 48 83 ec 70                 	sub	rsp, 112
140009a0b: 48 8b f2                    	mov	rsi, rdx
140009a0e: 49 8b d9                    	mov	rbx, r9
140009a11: 48 8b d1                    	mov	rdx, rcx
140009a14: 41 8b f8                    	mov	edi, r8d
140009a17: 48 8d 4c 24 50              	lea	rcx, [rsp + 80]
140009a1c: e8 43 a9 ff ff              	call	0x140004364 <.text+0x3364>
140009a21: 8b 84 24 c0 00 00 00        	mov	eax, dword ptr [rsp + 192]
140009a28: 48 8d 4c 24 58              	lea	rcx, [rsp + 88]
140009a2d: 89 44 24 40                 	mov	dword ptr [rsp + 64], eax
140009a31: 4c 8b cb                    	mov	r9, rbx
140009a34: 8b 84 24 b8 00 00 00        	mov	eax, dword ptr [rsp + 184]
140009a3b: 44 8b c7                    	mov	r8d, edi
140009a3e: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
140009a42: 48 8b d6                    	mov	rdx, rsi
140009a45: 8b 84 24 b0 00 00 00        	mov	eax, dword ptr [rsp + 176]
140009a4c: 89 44 24 30                 	mov	dword ptr [rsp + 48], eax
140009a50: 48 8b 84 24 a8 00 00 00     	mov	rax, qword ptr [rsp + 168]
140009a58: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
140009a5d: 8b 84 24 a0 00 00 00        	mov	eax, dword ptr [rsp + 160]
140009a64: 89 44 24 20                 	mov	dword ptr [rsp + 32], eax
140009a68: e8 77 fc ff ff              	call	0x1400096e4 <.text+0x86e4>
140009a6d: 80 7c 24 68 00              	cmp	byte ptr [rsp + 104], 0
140009a72: 74 0c                       	je	0x140009a80 <.text+0x8a80>
140009a74: 48 8b 4c 24 50              	mov	rcx, qword ptr [rsp + 80]
140009a79: 83 a1 a8 03 00 00 fd        	and	dword ptr [rcx + 936], -3
140009a80: 4c 8d 5c 24 70              	lea	r11, [rsp + 112]
140009a85: 49 8b 5b 10                 	mov	rbx, qword ptr [r11 + 16]
140009a89: 49 8b 73 18                 	mov	rsi, qword ptr [r11 + 24]
140009a8d: 49 8b e3                    	mov	rsp, r11
140009a90: 5f                          	pop	rdi
140009a91: c3                          	ret
140009a92: cc                          	int3
140009a93: cc                          	int3
140009a94: 48 83 ec 28                 	sub	rsp, 40
140009a98: e8 6b c7 ff ff              	call	0x140006208 <.text+0x5208>
140009a9d: 33 c9                       	xor	ecx, ecx
140009a9f: 84 c0                       	test	al, al
140009aa1: 0f 94 c1                    	sete	cl
140009aa4: 8b c1                       	mov	eax, ecx
140009aa6: 48 83 c4 28                 	add	rsp, 40
140009aaa: c3                          	ret
140009aab: cc                          	int3
140009aac: 83 3d ad e2 00 00 00        	cmp	dword ptr [rip + 58029], 0 # 0x140017d60
140009ab3: 0f 84 7b 15 00 00           	je	0x14000b034 <.text+0xa034>
140009ab9: 45 33 c9                    	xor	r9d, r9d
140009abc: e9 03 00 00 00              	jmp	0x140009ac4 <.text+0x8ac4>
140009ac1: cc                          	int3
140009ac2: cc                          	int3
140009ac3: cc                          	int3
140009ac4: 48 8b c4                    	mov	rax, rsp
140009ac7: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
140009acb: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
140009acf: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
140009ad3: 57                          	push	rdi
140009ad4: 48 83 ec 60                 	sub	rsp, 96
140009ad8: 48 8b f2                    	mov	rsi, rdx
140009adb: 48 8b e9                    	mov	rbp, rcx
140009ade: 49 8b d1                    	mov	rdx, r9
140009ae1: 48 8d 48 d8                 	lea	rcx, [rax - 40]
140009ae5: 49 8b f8                    	mov	rdi, r8
140009ae8: e8 77 a8 ff ff              	call	0x140004364 <.text+0x3364>
140009aed: 48 85 ff                    	test	rdi, rdi
140009af0: 75 07                       	jne	0x140009af9 <.text+0x8af9>
140009af2: 33 db                       	xor	ebx, ebx
140009af4: e9 a0 00 00 00              	jmp	0x140009b99 <.text+0x8b99>
140009af9: 48 85 ed                    	test	rbp, rbp
140009afc: 74 05                       	je	0x140009b03 <.text+0x8b03>
140009afe: 48 85 f6                    	test	rsi, rsi
140009b01: 75 17                       	jne	0x140009b1a <.text+0x8b1a>
140009b03: e8 08 b3 ff ff              	call	0x140004e10 <.text+0x3e10>
140009b08: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140009b0e: e8 dd b1 ff ff              	call	0x140004cf0 <.text+0x3cf0>
140009b13: bb ff ff ff 7f              	mov	ebx, 2147483647
140009b18: eb 7f                       	jmp	0x140009b99 <.text+0x8b99>
140009b1a: bb ff ff ff 7f              	mov	ebx, 2147483647
140009b1f: 48 3b fb                    	cmp	rdi, rbx
140009b22: 76 12                       	jbe	0x140009b36 <.text+0x8b36>
140009b24: e8 e7 b2 ff ff              	call	0x140004e10 <.text+0x3e10>
140009b29: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140009b2f: e8 bc b1 ff ff              	call	0x140004cf0 <.text+0x3cf0>
140009b34: eb 63                       	jmp	0x140009b99 <.text+0x8b99>
140009b36: 48 8b 44 24 48              	mov	rax, qword ptr [rsp + 72]
140009b3b: 48 8b 90 30 01 00 00        	mov	rdx, qword ptr [rax + 304]
140009b42: 48 85 d2                    	test	rdx, rdx
140009b45: 75 17                       	jne	0x140009b5e <.text+0x8b5e>
140009b47: 4c 8d 4c 24 48              	lea	r9, [rsp + 72]
140009b4c: 4c 8b c7                    	mov	r8, rdi
140009b4f: 48 8b d6                    	mov	rdx, rsi
140009b52: 48 8b cd                    	mov	rcx, rbp
140009b55: e8 2a 15 00 00              	call	0x14000b084 <.text+0xa084>
140009b5a: 8b d8                       	mov	ebx, eax
140009b5c: eb 3b                       	jmp	0x140009b99 <.text+0x8b99>
140009b5e: 8b 40 14                    	mov	eax, dword ptr [rax + 20]
140009b61: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
140009b66: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
140009b6a: 4c 8b cd                    	mov	r9, rbp
140009b6d: 89 7c 24 30                 	mov	dword ptr [rsp + 48], edi
140009b71: 41 b8 01 10 00 00           	mov	r8d, 4097
140009b77: 48 89 74 24 28              	mov	qword ptr [rsp + 40], rsi
140009b7c: 89 7c 24 20                 	mov	dword ptr [rsp + 32], edi
140009b80: e8 0f 19 00 00              	call	0x14000b494 <.text+0xa494>
140009b85: 85 c0                       	test	eax, eax
140009b87: 75 0d                       	jne	0x140009b96 <.text+0x8b96>
140009b89: e8 82 b2 ff ff              	call	0x140004e10 <.text+0x3e10>
140009b8e: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140009b94: eb 03                       	jmp	0x140009b99 <.text+0x8b99>
140009b96: 8d 58 fe                    	lea	ebx, [rax - 2]
140009b99: 80 7c 24 58 00              	cmp	byte ptr [rsp + 88], 0
140009b9e: 74 0c                       	je	0x140009bac <.text+0x8bac>
140009ba0: 48 8b 44 24 40              	mov	rax, qword ptr [rsp + 64]
140009ba5: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140009bac: 4c 8d 5c 24 60              	lea	r11, [rsp + 96]
140009bb1: 8b c3                       	mov	eax, ebx
140009bb3: 49 8b 5b 10                 	mov	rbx, qword ptr [r11 + 16]
140009bb7: 49 8b 6b 18                 	mov	rbp, qword ptr [r11 + 24]
140009bbb: 49 8b 73 20                 	mov	rsi, qword ptr [r11 + 32]
140009bbf: 49 8b e3                    	mov	rsp, r11
140009bc2: 5f                          	pop	rdi
140009bc3: c3                          	ret
140009bc4: 48 8b c4                    	mov	rax, rsp
140009bc7: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
140009bcb: 48 89 70 10                 	mov	qword ptr [rax + 16], rsi
140009bcf: 48 89 78 18                 	mov	qword ptr [rax + 24], rdi
140009bd3: 55                          	push	rbp
140009bd4: 41 56                       	push	r14
140009bd6: 41 57                       	push	r15
140009bd8: 48 8d 68 a1                 	lea	rbp, [rax - 95]
140009bdc: 48 81 ec a0 00 00 00        	sub	rsp, 160
140009be3: 45 33 ff                    	xor	r15d, r15d
140009be6: 4c 8b f2                    	mov	r14, rdx
140009be9: 48 8b f1                    	mov	rsi, rcx
140009bec: 4c 89 7d 17                 	mov	qword ptr [rbp + 23], r15
140009bf0: 33 d2                       	xor	edx, edx
140009bf2: 4c 89 7d 1f                 	mov	qword ptr [rbp + 31], r15
140009bf6: 48 8d 4d c7                 	lea	rcx, [rbp - 57]
140009bfa: 4c 89 7d 27                 	mov	qword ptr [rbp + 39], r15
140009bfe: 4c 89 7d 2f                 	mov	qword ptr [rbp + 47], r15
140009c02: 41 8b ff                    	mov	edi, r15d
140009c05: 4c 89 7d 37                 	mov	qword ptr [rbp + 55], r15
140009c09: 44 88 7d 3f                 	mov	byte ptr [rbp + 63], r15b
140009c0d: 4c 89 7d e7                 	mov	qword ptr [rbp - 25], r15
140009c11: 4c 89 7d ef                 	mov	qword ptr [rbp - 17], r15
140009c15: 4c 89 7d f7                 	mov	qword ptr [rbp - 9], r15
140009c19: 4c 89 7d ff                 	mov	qword ptr [rbp - 1], r15
140009c1d: 4c 89 7d 07                 	mov	qword ptr [rbp + 7], r15
140009c21: 44 88 7d 0f                 	mov	byte ptr [rbp + 15], r15b
140009c25: e8 3a a7 ff ff              	call	0x140004364 <.text+0x3364>
140009c2a: 48 8b 45 cf                 	mov	rax, qword ptr [rbp - 49]
140009c2e: bb e9 fd 00 00              	mov	ebx, 65001
140009c33: 39 58 0c                    	cmp	dword ptr [rax + 12], ebx
140009c36: 75 16                       	jne	0x140009c4e <.text+0x8c4e>
140009c38: 44 38 7d df                 	cmp	byte ptr [rbp - 33], r15b
140009c3c: 74 0b                       	je	0x140009c49 <.text+0x8c49>
140009c3e: 48 8b 45 c7                 	mov	rax, qword ptr [rbp - 57]
140009c42: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140009c49: 44 8b c3                    	mov	r8d, ebx
140009c4c: eb 36                       	jmp	0x140009c84 <.text+0x8c84>
140009c4e: e8 71 e1 ff ff              	call	0x140007dc4 <.text+0x6dc4>
140009c53: 85 c0                       	test	eax, eax
140009c55: 75 19                       	jne	0x140009c70 <.text+0x8c70>
140009c57: 44 38 7d df                 	cmp	byte ptr [rbp - 33], r15b
140009c5b: 74 0b                       	je	0x140009c68 <.text+0x8c68>
140009c5d: 48 8b 45 c7                 	mov	rax, qword ptr [rbp - 57]
140009c61: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140009c68: 41 b8 01 00 00 00           	mov	r8d, 1
140009c6e: eb 14                       	jmp	0x140009c84 <.text+0x8c84>
140009c70: 44 38 7d df                 	cmp	byte ptr [rbp - 33], r15b
140009c74: 74 0b                       	je	0x140009c81 <.text+0x8c81>
140009c76: 48 8b 45 c7                 	mov	rax, qword ptr [rbp - 57]
140009c7a: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140009c81: 45 8b c7                    	mov	r8d, r15d
140009c84: 48 8d 55 17                 	lea	rdx, [rbp + 23]
140009c88: 48 8b ce                    	mov	rcx, rsi
140009c8b: e8 6c b2 ff ff              	call	0x140004efc <.text+0x3efc>
140009c90: 85 c0                       	test	eax, eax
140009c92: 0f 85 84 00 00 00           	jne	0x140009d1c <.text+0x8d1c>
140009c98: 33 d2                       	xor	edx, edx
140009c9a: 48 8d 4d c7                 	lea	rcx, [rbp - 57]
140009c9e: e8 c1 a6 ff ff              	call	0x140004364 <.text+0x3364>
140009ca3: 48 8b 45 cf                 	mov	rax, qword ptr [rbp - 49]
140009ca7: 39 58 0c                    	cmp	dword ptr [rax + 12], ebx
140009caa: 75 13                       	jne	0x140009cbf <.text+0x8cbf>
140009cac: 44 38 7d df                 	cmp	byte ptr [rbp - 33], r15b
140009cb0: 74 42                       	je	0x140009cf4 <.text+0x8cf4>
140009cb2: 48 8b 45 c7                 	mov	rax, qword ptr [rbp - 57]
140009cb6: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140009cbd: eb 35                       	jmp	0x140009cf4 <.text+0x8cf4>
140009cbf: e8 00 e1 ff ff              	call	0x140007dc4 <.text+0x6dc4>
140009cc4: 85 c0                       	test	eax, eax
140009cc6: 75 18                       	jne	0x140009ce0 <.text+0x8ce0>
140009cc8: 44 38 7d df                 	cmp	byte ptr [rbp - 33], r15b
140009ccc: 74 0b                       	je	0x140009cd9 <.text+0x8cd9>
140009cce: 48 8b 45 c7                 	mov	rax, qword ptr [rbp - 57]
140009cd2: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140009cd9: bb 01 00 00 00              	mov	ebx, 1
140009cde: eb 14                       	jmp	0x140009cf4 <.text+0x8cf4>
140009ce0: 44 38 7d df                 	cmp	byte ptr [rbp - 33], r15b
140009ce4: 74 0b                       	je	0x140009cf1 <.text+0x8cf1>
140009ce6: 48 8b 45 c7                 	mov	rax, qword ptr [rbp - 57]
140009cea: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140009cf1: 41 8b df                    	mov	ebx, r15d
140009cf4: 44 8b c3                    	mov	r8d, ebx
140009cf7: 48 8d 55 e7                 	lea	rdx, [rbp - 25]
140009cfb: 49 8b ce                    	mov	rcx, r14
140009cfe: e8 f9 b1 ff ff              	call	0x140004efc <.text+0x3efc>
140009d03: 48 8b 7d f7                 	mov	rdi, qword ptr [rbp - 9]
140009d07: 85 c0                       	test	eax, eax
140009d09: 75 11                       	jne	0x140009d1c <.text+0x8d1c>
140009d0b: 48 8b 4d 27                 	mov	rcx, qword ptr [rbp + 39]
140009d0f: 48 8b d7                    	mov	rdx, rdi
140009d12: ff 15 88 44 00 00           	call	qword ptr [rip + 17544] # 0x14000e1a0
140009d18: 8b d8                       	mov	ebx, eax
140009d1a: eb 03                       	jmp	0x140009d1f <.text+0x8d1f>
140009d1c: 41 8b df                    	mov	ebx, r15d
140009d1f: 44 38 7d 0f                 	cmp	byte ptr [rbp + 15], r15b
140009d23: 74 08                       	je	0x140009d2d <.text+0x8d2d>
140009d25: 48 8b cf                    	mov	rcx, rdi
140009d28: e8 7b b1 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140009d2d: 44 38 7d 3f                 	cmp	byte ptr [rbp + 63], r15b
140009d31: 74 09                       	je	0x140009d3c <.text+0x8d3c>
140009d33: 48 8b 4d 27                 	mov	rcx, qword ptr [rbp + 39]
140009d37: e8 6c b1 ff ff              	call	0x140004ea8 <.text+0x3ea8>
140009d3c: 4c 8d 9c 24 a0 00 00 00     	lea	r11, [rsp + 160]
140009d44: 8b c3                       	mov	eax, ebx
140009d46: 49 8b 5b 20                 	mov	rbx, qword ptr [r11 + 32]
140009d4a: 49 8b 73 28                 	mov	rsi, qword ptr [r11 + 40]
140009d4e: 49 8b 7b 30                 	mov	rdi, qword ptr [r11 + 48]
140009d52: 49 8b e3                    	mov	rsp, r11
140009d55: 41 5f                       	pop	r15
140009d57: 41 5e                       	pop	r14
140009d59: 5d                          	pop	rbp
140009d5a: c3                          	ret
140009d5b: cc                          	int3
140009d5c: 4c 8b da                    	mov	r11, rdx
140009d5f: 4c 8b d1                    	mov	r10, rcx
140009d62: 4d 85 c0                    	test	r8, r8
140009d65: 75 03                       	jne	0x140009d6a <.text+0x8d6a>
140009d67: 33 c0                       	xor	eax, eax
140009d69: c3                          	ret
140009d6a: 41 0f b7 0a                 	movzx	ecx, word ptr [r10]
140009d6e: 4d 8d 52 02                 	lea	r10, [r10 + 2]
140009d72: 41 0f b7 13                 	movzx	edx, word ptr [r11]
140009d76: 4d 8d 5b 02                 	lea	r11, [r11 + 2]
140009d7a: 8d 41 bf                    	lea	eax, [rcx - 65]
140009d7d: 83 f8 19                    	cmp	eax, 25
140009d80: 44 8d 49 20                 	lea	r9d, [rcx + 32]
140009d84: 8d 42 bf                    	lea	eax, [rdx - 65]
140009d87: 44 0f 47 c9                 	cmova	r9d, ecx
140009d8b: 83 f8 19                    	cmp	eax, 25
140009d8e: 8d 4a 20                    	lea	ecx, [rdx + 32]
140009d91: 41 8b c1                    	mov	eax, r9d
140009d94: 0f 47 ca                    	cmova	ecx, edx
140009d97: 2b c1                       	sub	eax, ecx
140009d99: 75 0b                       	jne	0x140009da6 <.text+0x8da6>
140009d9b: 45 85 c9                    	test	r9d, r9d
140009d9e: 74 06                       	je	0x140009da6 <.text+0x8da6>
140009da0: 49 83 e8 01                 	sub	r8, 1
140009da4: 75 c4                       	jne	0x140009d6a <.text+0x8d6a>
140009da6: c3                          	ret
140009da7: cc                          	int3
140009da8: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140009dad: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140009db2: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140009db7: 57                          	push	rdi
140009db8: 41 56                       	push	r14
140009dba: 41 57                       	push	r15
140009dbc: 48 83 ec 20                 	sub	rsp, 32
140009dc0: 4c 8b f1                    	mov	r14, rcx
140009dc3: 48 85 c9                    	test	rcx, rcx
140009dc6: 74 74                       	je	0x140009e3c <.text+0x8e3c>
140009dc8: 33 db                       	xor	ebx, ebx
140009dca: 4c 8d 3d 2f 62 ff ff        	lea	r15, [rip - 40401]      # 0x140000000
140009dd1: bf e3 00 00 00              	mov	edi, 227
140009dd6: 8d 04 1f                    	lea	eax, [rdi + rbx]
140009dd9: 41 b8 55 00 00 00           	mov	r8d, 85
140009ddf: 99                          	cdq
140009de0: 49 8b ce                    	mov	rcx, r14
140009de3: 2b c2                       	sub	eax, edx
140009de5: d1 f8                       	sar	eax
140009de7: 48 63 e8                    	movsxd	rbp, eax
140009dea: 48 8b d5                    	mov	rdx, rbp
140009ded: 48 8b f5                    	mov	rsi, rbp
140009df0: 48 03 d2                    	add	rdx, rdx
140009df3: 49 8b 94 d7 b0 22 01 00     	mov	rdx, qword ptr [r15 + 8*rdx + 74416]
140009dfb: e8 5c ff ff ff              	call	0x140009d5c <.text+0x8d5c>
140009e00: 85 c0                       	test	eax, eax
140009e02: 74 13                       	je	0x140009e17 <.text+0x8e17>
140009e04: 79 05                       	jns	0x140009e0b <.text+0x8e0b>
140009e06: 8d 7d ff                    	lea	edi, [rbp - 1]
140009e09: eb 03                       	jmp	0x140009e0e <.text+0x8e0e>
140009e0b: 8d 5d 01                    	lea	ebx, [rbp + 1]
140009e0e: 3b df                       	cmp	ebx, edi
140009e10: 7e c4                       	jle	0x140009dd6 <.text+0x8dd6>
140009e12: 83 c8 ff                    	or	eax, -1
140009e15: eb 0b                       	jmp	0x140009e22 <.text+0x8e22>
140009e17: 48 03 f6                    	add	rsi, rsi
140009e1a: 41 8b 84 f7 b8 22 01 00     	mov	eax, dword ptr [r15 + 8*rsi + 74424]
140009e22: 85 c0                       	test	eax, eax
140009e24: 78 16                       	js	0x140009e3c <.text+0x8e3c>
140009e26: 3d e4 00 00 00              	cmp	eax, 228
140009e2b: 73 0f                       	jae	0x140009e3c <.text+0x8e3c>
140009e2d: 48 98                       	cdqe
140009e2f: 48 03 c0                    	add	rax, rax
140009e32: 41 8b 84 c7 50 08 01 00     	mov	eax, dword ptr [r15 + 8*rax + 67664]
140009e3a: eb 02                       	jmp	0x140009e3e <.text+0x8e3e>
140009e3c: 33 c0                       	xor	eax, eax
140009e3e: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140009e43: 48 8b 6c 24 48              	mov	rbp, qword ptr [rsp + 72]
140009e48: 48 8b 74 24 50              	mov	rsi, qword ptr [rsp + 80]
140009e4d: 48 83 c4 20                 	add	rsp, 32
140009e51: 41 5f                       	pop	r15
140009e53: 41 5e                       	pop	r14
140009e55: 5f                          	pop	rdi
140009e56: c3                          	ret
140009e57: cc                          	int3
140009e58: 48 83 ec 28                 	sub	rsp, 40
140009e5c: 48 85 c9                    	test	rcx, rcx
140009e5f: 75 19                       	jne	0x140009e7a <.text+0x8e7a>
140009e61: e8 aa af ff ff              	call	0x140004e10 <.text+0x3e10>
140009e66: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140009e6c: e8 7f ae ff ff              	call	0x140004cf0 <.text+0x3cf0>
140009e71: 48 83 c8 ff                 	or	rax, -1
140009e75: 48 83 c4 28                 	add	rsp, 40
140009e79: c3                          	ret
140009e7a: 4c 8b c1                    	mov	r8, rcx
140009e7d: 33 d2                       	xor	edx, edx
140009e7f: 48 8b 0d 52 e7 00 00        	mov	rcx, qword ptr [rip + 59218] # 0x1400185d8
140009e86: 48 83 c4 28                 	add	rsp, 40
140009e8a: 48 ff 25 47 43 00 00        	jmp	qword ptr [rip + 17223] # 0x14000e1d8
140009e91: cc                          	int3
140009e92: cc                          	int3
140009e93: cc                          	int3
140009e94: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140009e99: 57                          	push	rdi
140009e9a: 48 83 ec 20                 	sub	rsp, 32
140009e9e: 48 8b da                    	mov	rbx, rdx
140009ea1: 48 8b f9                    	mov	rdi, rcx
140009ea4: 48 85 c9                    	test	rcx, rcx
140009ea7: 75 0a                       	jne	0x140009eb3 <.text+0x8eb3>
140009ea9: 48 8b ca                    	mov	rcx, rdx
140009eac: e8 ef d6 ff ff              	call	0x1400075a0 <.text+0x65a0>
140009eb1: eb 1f                       	jmp	0x140009ed2 <.text+0x8ed2>
140009eb3: 48 85 db                    	test	rbx, rbx
140009eb6: 75 07                       	jne	0x140009ebf <.text+0x8ebf>
140009eb8: e8 eb af ff ff              	call	0x140004ea8 <.text+0x3ea8>
140009ebd: eb 11                       	jmp	0x140009ed0 <.text+0x8ed0>
140009ebf: 48 83 fb e0                 	cmp	rbx, -32
140009ec3: 76 2d                       	jbe	0x140009ef2 <.text+0x8ef2>
140009ec5: e8 46 af ff ff              	call	0x140004e10 <.text+0x3e10>
140009eca: c7 00 0c 00 00 00           	mov	dword ptr [rax], 12
140009ed0: 33 c0                       	xor	eax, eax
140009ed2: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140009ed7: 48 83 c4 20                 	add	rsp, 32
140009edb: 5f                          	pop	rdi
140009edc: c3                          	ret
140009edd: e8 de 9d ff ff              	call	0x140003cc0 <.text+0x2cc0>
140009ee2: 85 c0                       	test	eax, eax
140009ee4: 74 df                       	je	0x140009ec5 <.text+0x8ec5>
140009ee6: 48 8b cb                    	mov	rcx, rbx
140009ee9: e8 a6 e4 ff ff              	call	0x140008394 <.text+0x7394>
140009eee: 85 c0                       	test	eax, eax
140009ef0: 74 d3                       	je	0x140009ec5 <.text+0x8ec5>
140009ef2: 48 8b 0d df e6 00 00        	mov	rcx, qword ptr [rip + 59103] # 0x1400185d8
140009ef9: 4c 8b cb                    	mov	r9, rbx
140009efc: 4c 8b c7                    	mov	r8, rdi
140009eff: 33 d2                       	xor	edx, edx
140009f01: ff 15 d9 42 00 00           	call	qword ptr [rip + 17113] # 0x14000e1e0
140009f07: 48 85 c0                    	test	rax, rax
140009f0a: 74 d1                       	je	0x140009edd <.text+0x8edd>
140009f0c: eb c4                       	jmp	0x140009ed2 <.text+0x8ed2>
140009f0e: cc                          	int3
140009f0f: cc                          	int3
140009f10: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140009f15: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140009f1a: 57                          	push	rdi
140009f1b: 48 83 ec 20                 	sub	rsp, 32
140009f1f: 49 8b f9                    	mov	rdi, r9
140009f22: 49 8b d8                    	mov	rbx, r8
140009f25: 8b 0a                       	mov	ecx, dword ptr [rdx]
140009f27: e8 54 cf ff ff              	call	0x140006e80 <.text+0x5e80>
140009f2c: 90                          	nop
140009f2d: 48 8b 03                    	mov	rax, qword ptr [rbx]
140009f30: 48 63 08                    	movsxd	rcx, dword ptr [rax]
140009f33: 48 8b d1                    	mov	rdx, rcx
140009f36: 48 8b c1                    	mov	rax, rcx
140009f39: 48 c1 f8 06                 	sar	rax, 6
140009f3d: 4c 8d 05 cc e0 00 00        	lea	r8, [rip + 57548]       # 0x140018010
140009f44: 83 e2 3f                    	and	edx, 63
140009f47: 48 8d 14 d2                 	lea	rdx, [rdx + 8*rdx]
140009f4b: 49 8b 04 c0                 	mov	rax, qword ptr [r8 + 8*rax]
140009f4f: f6 44 d0 38 01              	test	byte ptr [rax + 8*rdx + 56], 1
140009f54: 74 24                       	je	0x140009f7a <.text+0x8f7a>
140009f56: e8 31 d0 ff ff              	call	0x140006f8c <.text+0x5f8c>
140009f5b: 48 8b c8                    	mov	rcx, rax
140009f5e: ff 15 84 42 00 00           	call	qword ptr [rip + 17028] # 0x14000e1e8
140009f64: 33 db                       	xor	ebx, ebx
140009f66: 85 c0                       	test	eax, eax
140009f68: 75 1e                       	jne	0x140009f88 <.text+0x8f88>
140009f6a: e8 81 ae ff ff              	call	0x140004df0 <.text+0x3df0>
140009f6f: 48 8b d8                    	mov	rbx, rax
140009f72: ff 15 08 41 00 00           	call	qword ptr [rip + 16648] # 0x14000e080
140009f78: 89 03                       	mov	dword ptr [rbx], eax
140009f7a: e8 91 ae ff ff              	call	0x140004e10 <.text+0x3e10>
140009f7f: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
140009f85: 83 cb ff                    	or	ebx, -1
140009f88: 8b 0f                       	mov	ecx, dword ptr [rdi]
140009f8a: e8 19 cf ff ff              	call	0x140006ea8 <.text+0x5ea8>
140009f8f: 8b c3                       	mov	eax, ebx
140009f91: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140009f96: 48 83 c4 20                 	add	rsp, 32
140009f9a: 5f                          	pop	rdi
140009f9b: c3                          	ret
140009f9c: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
140009fa0: 48 83 ec 38                 	sub	rsp, 56
140009fa4: 48 63 d1                    	movsxd	rdx, ecx
140009fa7: 83 fa fe                    	cmp	edx, -2
140009faa: 75 0d                       	jne	0x140009fb9 <.text+0x8fb9>
140009fac: e8 5f ae ff ff              	call	0x140004e10 <.text+0x3e10>
140009fb1: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
140009fb7: eb 6c                       	jmp	0x14000a025 <.text+0x9025>
140009fb9: 85 c9                       	test	ecx, ecx
140009fbb: 78 58                       	js	0x14000a015 <.text+0x9015>
140009fbd: 3b 15 4d e4 00 00           	cmp	edx, dword ptr [rip + 58445] # 0x140018410
140009fc3: 73 50                       	jae	0x14000a015 <.text+0x9015>
140009fc5: 48 8b ca                    	mov	rcx, rdx
140009fc8: 4c 8d 05 41 e0 00 00        	lea	r8, [rip + 57409]       # 0x140018010
140009fcf: 83 e1 3f                    	and	ecx, 63
140009fd2: 48 8b c2                    	mov	rax, rdx
140009fd5: 48 c1 f8 06                 	sar	rax, 6
140009fd9: 48 8d 0c c9                 	lea	rcx, [rcx + 8*rcx]
140009fdd: 49 8b 04 c0                 	mov	rax, qword ptr [r8 + 8*rax]
140009fe1: f6 44 c8 38 01              	test	byte ptr [rax + 8*rcx + 56], 1
140009fe6: 74 2d                       	je	0x14000a015 <.text+0x9015>
140009fe8: 48 8d 44 24 40              	lea	rax, [rsp + 64]
140009fed: 89 54 24 50                 	mov	dword ptr [rsp + 80], edx
140009ff1: 89 54 24 58                 	mov	dword ptr [rsp + 88], edx
140009ff5: 4c 8d 4c 24 50              	lea	r9, [rsp + 80]
140009ffa: 48 8d 54 24 58              	lea	rdx, [rsp + 88]
140009fff: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000a004: 4c 8d 44 24 20              	lea	r8, [rsp + 32]
14000a009: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
14000a00e: e8 fd fe ff ff              	call	0x140009f10 <.text+0x8f10>
14000a013: eb 13                       	jmp	0x14000a028 <.text+0x9028>
14000a015: e8 f6 ad ff ff              	call	0x140004e10 <.text+0x3e10>
14000a01a: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000a020: e8 cb ac ff ff              	call	0x140004cf0 <.text+0x3cf0>
14000a025: 83 c8 ff                    	or	eax, -1
14000a028: 48 83 c4 38                 	add	rsp, 56
14000a02c: c3                          	ret
14000a02d: cc                          	int3
14000a02e: cc                          	int3
14000a02f: cc                          	int3
14000a030: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000a035: 55                          	push	rbp
14000a036: 56                          	push	rsi
14000a037: 57                          	push	rdi
14000a038: 41 54                       	push	r12
14000a03a: 41 55                       	push	r13
14000a03c: 41 56                       	push	r14
14000a03e: 41 57                       	push	r15
14000a040: 48 8d 6c 24 d9              	lea	rbp, [rsp - 39]
14000a045: 48 81 ec 00 01 00 00        	sub	rsp, 256
14000a04c: 48 8b 05 d5 cf 00 00        	mov	rax, qword ptr [rip + 53205] # 0x140017028
14000a053: 48 33 c4                    	xor	rax, rsp
14000a056: 48 89 45 17                 	mov	qword ptr [rbp + 23], rax
14000a05a: 48 63 f2                    	movsxd	rsi, edx
14000a05d: 4d 8b f8                    	mov	r15, r8
14000a060: 48 8b c6                    	mov	rax, rsi
14000a063: 48 89 4d f7                 	mov	qword ptr [rbp - 9], rcx
14000a067: 48 89 45 ef                 	mov	qword ptr [rbp - 17], rax
14000a06b: 48 8d 0d 8e 5f ff ff        	lea	rcx, [rip - 41074]      # 0x140000000
14000a072: 83 e0 3f                    	and	eax, 63
14000a075: 45 8b e9                    	mov	r13d, r9d
14000a078: 4d 03 e8                    	add	r13, r8
14000a07b: 4c 89 45 df                 	mov	qword ptr [rbp - 33], r8
14000a07f: 4c 8b e6                    	mov	r12, rsi
14000a082: 4c 89 6d af                 	mov	qword ptr [rbp - 81], r13
14000a086: 49 c1 fc 06                 	sar	r12, 6
14000a08a: 4c 8d 34 c0                 	lea	r14, [rax + 8*rax]
14000a08e: 4a 8b 84 e1 10 80 01 00     	mov	rax, qword ptr [rcx + 8*r12 + 98320]
14000a096: 4a 8b 44 f0 28              	mov	rax, qword ptr [rax + 8*r14 + 40]
14000a09b: 48 89 45 b7                 	mov	qword ptr [rbp - 73], rax
14000a09f: ff 15 4b 41 00 00           	call	qword ptr [rip + 16715] # 0x14000e1f0
14000a0a5: 33 d2                       	xor	edx, edx
14000a0a7: 48 8d 4c 24 50              	lea	rcx, [rsp + 80]
14000a0ac: 89 45 a7                    	mov	dword ptr [rbp - 89], eax
14000a0af: e8 b0 a2 ff ff              	call	0x140004364 <.text+0x3364>
14000a0b4: 48 8b 4c 24 58              	mov	rcx, qword ptr [rsp + 88]
14000a0b9: 45 33 db                    	xor	r11d, r11d
14000a0bc: 44 89 5d 97                 	mov	dword ptr [rbp - 105], r11d
14000a0c0: 41 8b db                    	mov	ebx, r11d
14000a0c3: 89 5d 9b                    	mov	dword ptr [rbp - 101], ebx
14000a0c6: 49 8b ff                    	mov	rdi, r15
14000a0c9: 8b 51 0c                    	mov	edx, dword ptr [rcx + 12]
14000a0cc: 41 8b cb                    	mov	ecx, r11d
14000a0cf: 89 4c 24 40                 	mov	dword ptr [rsp + 64], ecx
14000a0d3: 89 55 ab                    	mov	dword ptr [rbp - 85], edx
14000a0d6: 4d 3b fd                    	cmp	r15, r13
14000a0d9: 0f 83 e2 03 00 00           	jae	0x14000a4c1 <.text+0x94c1>
14000a0df: 48 8b c6                    	mov	rax, rsi
14000a0e2: 49 8b f7                    	mov	rsi, r15
14000a0e5: 48 c1 f8 06                 	sar	rax, 6
14000a0e9: 48 89 45 e7                 	mov	qword ptr [rbp - 25], rax
14000a0ed: 8a 0f                       	mov	cl, byte ptr [rdi]
14000a0ef: 41 bf 01 00 00 00           	mov	r15d, 1
14000a0f5: 88 4c 24 44                 	mov	byte ptr [rsp + 68], cl
14000a0f9: 44 89 5c 24 48              	mov	dword ptr [rsp + 72], r11d
14000a0fe: 81 fa e9 fd 00 00           	cmp	edx, 65001
14000a104: 0f 85 70 01 00 00           	jne	0x14000a27a <.text+0x927a>
14000a10a: 4c 8d 3d ef 5e ff ff        	lea	r15, [rip - 41233]      # 0x140000000
14000a111: 41 8b d3                    	mov	edx, r11d
14000a114: 4d 8b 8c c7 10 80 01 00     	mov	r9, qword ptr [r15 + 8*rax + 98320]
14000a11c: 49 8b f3                    	mov	rsi, r11
14000a11f: 4b 8d 04 f1                 	lea	rax, [r9 + 8*r14]
14000a123: 44 38 5c 30 3e              	cmp	byte ptr [rax + rsi + 62], r11b
14000a128: 74 0b                       	je	0x14000a135 <.text+0x9135>
14000a12a: ff c2                       	inc	edx
14000a12c: 48 ff c6                    	inc	rsi
14000a12f: 48 83 fe 05                 	cmp	rsi, 5
14000a133: 7c ee                       	jl	0x14000a123 <.text+0x9123>
14000a135: 48 85 f6                    	test	rsi, rsi
14000a138: 0f 8e e0 00 00 00           	jle	0x14000a21e <.text+0x921e>
14000a13e: 4b 8b 84 e7 10 80 01 00     	mov	rax, qword ptr [r15 + 8*r12 + 98320]
14000a146: 4c 8b 45 af                 	mov	r8, qword ptr [rbp - 81]
14000a14a: 4c 2b c7                    	sub	r8, rdi
14000a14d: 42 0f b6 4c f0 3e           	movzx	ecx, byte ptr [rax + 8*r14 + 62]
14000a153: 46 0f be bc 39 d0 78 01 00  	movsx	r15d, byte ptr [rcx + r15 + 96464]
14000a15c: 41 ff c7                    	inc	r15d
14000a15f: 45 8b ef                    	mov	r13d, r15d
14000a162: 44 2b ea                    	sub	r13d, edx
14000a165: 4d 63 d5                    	movsxd	r10, r13d
14000a168: 4d 3b d0                    	cmp	r10, r8
14000a16b: 0f 8f 78 02 00 00           	jg	0x14000a3e9 <.text+0x93e9>
14000a171: 48 8d 45 ff                 	lea	rax, [rbp - 1]
14000a175: 49 8b d3                    	mov	rdx, r11
14000a178: 4c 2b c8                    	sub	r9, rax
14000a17b: 4f 8d 04 f1                 	lea	r8, [r9 + 8*r14]
14000a17f: 48 8d 4d ff                 	lea	rcx, [rbp - 1]
14000a183: 48 03 ca                    	add	rcx, rdx
14000a186: 48 ff c2                    	inc	rdx
14000a189: 42 8a 44 01 3e              	mov	al, byte ptr [rcx + r8 + 62]
14000a18e: 88 01                       	mov	byte ptr [rcx], al
14000a190: 48 3b d6                    	cmp	rdx, rsi
14000a193: 7c ea                       	jl	0x14000a17f <.text+0x917f>
14000a195: 45 85 ed                    	test	r13d, r13d
14000a198: 7e 15                       	jle	0x14000a1af <.text+0x91af>
14000a19a: 48 8d 4d ff                 	lea	rcx, [rbp - 1]
14000a19e: 4d 8b c2                    	mov	r8, r10
14000a1a1: 48 03 ce                    	add	rcx, rsi
14000a1a4: 48 8b d7                    	mov	rdx, rdi
14000a1a7: e8 24 85 ff ff              	call	0x1400026d0 <.text+0x16d0>
14000a1ac: 45 33 db                    	xor	r11d, r11d
14000a1af: 49 8b d3                    	mov	rdx, r11
14000a1b2: 4c 8d 05 47 5e ff ff        	lea	r8, [rip - 41401]       # 0x140000000
14000a1b9: 4b 8b 8c e0 10 80 01 00     	mov	rcx, qword ptr [r8 + 8*r12 + 98320]
14000a1c1: 48 03 ca                    	add	rcx, rdx
14000a1c4: 48 ff c2                    	inc	rdx
14000a1c7: 46 88 5c f1 3e              	mov	byte ptr [rcx + 8*r14 + 62], r11b
14000a1cc: 48 3b d6                    	cmp	rdx, rsi
14000a1cf: 7c e8                       	jl	0x14000a1b9 <.text+0x91b9>
14000a1d1: 48 8d 45 ff                 	lea	rax, [rbp - 1]
14000a1d5: 4c 89 5d bf                 	mov	qword ptr [rbp - 65], r11
14000a1d9: 48 89 45 c7                 	mov	qword ptr [rbp - 57], rax
14000a1dd: 4c 8d 4d bf                 	lea	r9, [rbp - 65]
14000a1e1: 41 8b c3                    	mov	eax, r11d
14000a1e4: 48 8d 55 c7                 	lea	rdx, [rbp - 57]
14000a1e8: 41 83 ff 04                 	cmp	r15d, 4
14000a1ec: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
14000a1f1: 0f 94 c0                    	sete	al
14000a1f4: ff c0                       	inc	eax
14000a1f6: 44 8b c0                    	mov	r8d, eax
14000a1f9: 44 8b f8                    	mov	r15d, eax
14000a1fc: e8 57 0c 00 00              	call	0x14000ae58 <.text+0x9e58>
14000a201: 48 83 f8 ff                 	cmp	rax, -1
14000a205: 0f 84 d7 00 00 00           	je	0x14000a2e2 <.text+0x92e2>
14000a20b: 41 8d 45 ff                 	lea	eax, [r13 - 1]
14000a20f: 4c 8b 6d af                 	mov	r13, qword ptr [rbp - 81]
14000a213: 48 63 f0                    	movsxd	rsi, eax
14000a216: 48 03 f7                    	add	rsi, rdi
14000a219: e9 e6 00 00 00              	jmp	0x14000a304 <.text+0x9304>
14000a21e: 0f b6 07                    	movzx	eax, byte ptr [rdi]
14000a221: 49 8b d5                    	mov	rdx, r13
14000a224: 48 2b d7                    	sub	rdx, rdi
14000a227: 4a 0f be b4 38 d0 78 01 00  	movsx	rsi, byte ptr [rax + r15 + 96464]
14000a230: 8d 4e 01                    	lea	ecx, [rsi + 1]
14000a233: 48 63 c1                    	movsxd	rax, ecx
14000a236: 48 3b c2                    	cmp	rax, rdx
14000a239: 0f 8f e4 01 00 00           	jg	0x14000a423 <.text+0x9423>
14000a23f: 83 f9 04                    	cmp	ecx, 4
14000a242: 4c 89 5d cf                 	mov	qword ptr [rbp - 49], r11
14000a246: 41 8b c3                    	mov	eax, r11d
14000a249: 48 89 7d d7                 	mov	qword ptr [rbp - 41], rdi
14000a24d: 0f 94 c0                    	sete	al
14000a250: 4c 8d 4d cf                 	lea	r9, [rbp - 49]
14000a254: ff c0                       	inc	eax
14000a256: 48 8d 55 d7                 	lea	rdx, [rbp - 41]
14000a25a: 44 8b c0                    	mov	r8d, eax
14000a25d: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
14000a262: 8b d8                       	mov	ebx, eax
14000a264: e8 ef 0b 00 00              	call	0x14000ae58 <.text+0x9e58>
14000a269: 48 83 f8 ff                 	cmp	rax, -1
14000a26d: 74 73                       	je	0x14000a2e2 <.text+0x92e2>
14000a26f: 48 03 f7                    	add	rsi, rdi
14000a272: 44 8b fb                    	mov	r15d, ebx
14000a275: e9 8a 00 00 00              	jmp	0x14000a304 <.text+0x9304>
14000a27a: 48 8d 05 7f 5d ff ff        	lea	rax, [rip - 41601]      # 0x140000000
14000a281: 4a 8b 94 e0 10 80 01 00     	mov	rdx, qword ptr [rax + 8*r12 + 98320]
14000a289: 42 8a 4c f2 3d              	mov	cl, byte ptr [rdx + 8*r14 + 61]
14000a28e: f6 c1 04                    	test	cl, 4
14000a291: 74 1b                       	je	0x14000a2ae <.text+0x92ae>
14000a293: 42 8a 44 f2 3e              	mov	al, byte ptr [rdx + 8*r14 + 62]
14000a298: 80 e1 fb                    	and	cl, -5
14000a29b: 88 45 07                    	mov	byte ptr [rbp + 7], al
14000a29e: 8a 07                       	mov	al, byte ptr [rdi]
14000a2a0: 42 88 4c f2 3d              	mov	byte ptr [rdx + 8*r14 + 61], cl
14000a2a5: 48 8d 55 07                 	lea	rdx, [rbp + 7]
14000a2a9: 88 45 08                    	mov	byte ptr [rbp + 8], al
14000a2ac: eb 1f                       	jmp	0x14000a2cd <.text+0x92cd>
14000a2ae: e8 bd d2 ff ff              	call	0x140007570 <.text+0x6570>
14000a2b3: 0f b6 0f                    	movzx	ecx, byte ptr [rdi]
14000a2b6: 33 d2                       	xor	edx, edx
14000a2b8: 66 39 14 48                 	cmp	word ptr [rax + 2*rcx], dx
14000a2bc: 7d 2d                       	jge	0x14000a2eb <.text+0x92eb>
14000a2be: 48 ff c6                    	inc	rsi
14000a2c1: 49 3b f5                    	cmp	rsi, r13
14000a2c4: 0f 83 b2 01 00 00           	jae	0x14000a47c <.text+0x947c>
14000a2ca: 48 8b d7                    	mov	rdx, rdi
14000a2cd: 41 b8 02 00 00 00           	mov	r8d, 2
14000a2d3: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
14000a2d8: e8 df e9 ff ff              	call	0x140008cbc <.text+0x7cbc>
14000a2dd: 83 f8 ff                    	cmp	eax, -1
14000a2e0: 75 22                       	jne	0x14000a304 <.text+0x9304>
14000a2e2: 80 7d 8f 00                 	cmp	byte ptr [rbp - 113], 0
14000a2e6: e9 8b 01 00 00              	jmp	0x14000a476 <.text+0x9476>
14000a2eb: 4d 8b c7                    	mov	r8, r15
14000a2ee: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
14000a2f3: 48 8b d7                    	mov	rdx, rdi
14000a2f6: e8 c1 e9 ff ff              	call	0x140008cbc <.text+0x7cbc>
14000a2fb: 83 f8 ff                    	cmp	eax, -1
14000a2fe: 0f 84 af 01 00 00           	je	0x14000a4b3 <.text+0x94b3>
14000a304: 8b 4d a7                    	mov	ecx, dword ptr [rbp - 89]
14000a307: 48 8d 45 0f                 	lea	rax, [rbp + 15]
14000a30b: 33 db                       	xor	ebx, ebx
14000a30d: 4c 8d 44 24 48              	lea	r8, [rsp + 72]
14000a312: 48 89 5c 24 38              	mov	qword ptr [rsp + 56], rbx
14000a317: 48 8d 7e 01                 	lea	rdi, [rsi + 1]
14000a31b: 48 89 5c 24 30              	mov	qword ptr [rsp + 48], rbx
14000a320: 45 8b cf                    	mov	r9d, r15d
14000a323: c7 44 24 28 05 00 00 00     	mov	dword ptr [rsp + 40], 5
14000a32b: 33 d2                       	xor	edx, edx
14000a32d: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000a332: e8 f1 c2 ff ff              	call	0x140006628 <.text+0x5628>
14000a337: 8b f0                       	mov	esi, eax
14000a339: 85 c0                       	test	eax, eax
14000a33b: 0f 84 d2 01 00 00           	je	0x14000a513 <.text+0x9513>
14000a341: 48 8b 4d b7                 	mov	rcx, qword ptr [rbp - 73]
14000a345: 4c 8d 4c 24 4c              	lea	r9, [rsp + 76]
14000a34a: 44 8b c0                    	mov	r8d, eax
14000a34d: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000a352: 48 8d 55 0f                 	lea	rdx, [rbp + 15]
14000a356: ff 15 9c 3d 00 00           	call	qword ptr [rip + 15772] # 0x14000e0f8
14000a35c: 45 33 db                    	xor	r11d, r11d
14000a35f: 85 c0                       	test	eax, eax
14000a361: 0f 84 a3 01 00 00           	je	0x14000a50a <.text+0x950a>
14000a367: 44 8b 7c 24 40              	mov	r15d, dword ptr [rsp + 64]
14000a36c: 8b df                       	mov	ebx, edi
14000a36e: 2b 5d df                    	sub	ebx, dword ptr [rbp - 33]
14000a371: 41 03 df                    	add	ebx, r15d
14000a374: 89 5d 9b                    	mov	dword ptr [rbp - 101], ebx
14000a377: 39 74 24 4c                 	cmp	dword ptr [rsp + 76], esi
14000a37b: 0f 82 f1 00 00 00           	jb	0x14000a472 <.text+0x9472>
14000a381: 80 7c 24 44 0a              	cmp	byte ptr [rsp + 68], 10
14000a386: 75 49                       	jne	0x14000a3d1 <.text+0x93d1>
14000a388: 48 8b 4d b7                 	mov	rcx, qword ptr [rbp - 73]
14000a38c: 41 8d 43 0d                 	lea	eax, [r11 + 13]
14000a390: 4c 8d 4c 24 4c              	lea	r9, [rsp + 76]
14000a395: 66 89 44 24 44              	mov	word ptr [rsp + 68], ax
14000a39a: 45 8d 43 01                 	lea	r8d, [r11 + 1]
14000a39e: 4c 89 5c 24 20              	mov	qword ptr [rsp + 32], r11
14000a3a3: 48 8d 54 24 44              	lea	rdx, [rsp + 68]
14000a3a8: ff 15 4a 3d 00 00           	call	qword ptr [rip + 15690] # 0x14000e0f8
14000a3ae: 45 33 db                    	xor	r11d, r11d
14000a3b1: 85 c0                       	test	eax, eax
14000a3b3: 0f 84 f1 00 00 00           	je	0x14000a4aa <.text+0x94aa>
14000a3b9: 83 7c 24 4c 01              	cmp	dword ptr [rsp + 76], 1
14000a3be: 0f 82 ae 00 00 00           	jb	0x14000a472 <.text+0x9472>
14000a3c4: 41 ff c7                    	inc	r15d
14000a3c7: ff c3                       	inc	ebx
14000a3c9: 44 89 7c 24 40              	mov	dword ptr [rsp + 64], r15d
14000a3ce: 89 5d 9b                    	mov	dword ptr [rbp - 101], ebx
14000a3d1: 48 8b f7                    	mov	rsi, rdi
14000a3d4: 49 3b fd                    	cmp	rdi, r13
14000a3d7: 0f 83 e0 00 00 00           	jae	0x14000a4bd <.text+0x94bd>
14000a3dd: 48 8b 45 e7                 	mov	rax, qword ptr [rbp - 25]
14000a3e1: 8b 55 ab                    	mov	edx, dword ptr [rbp - 85]
14000a3e4: e9 04 fd ff ff              	jmp	0x14000a0ed <.text+0x90ed>
14000a3e9: 41 8b d3                    	mov	edx, r11d
14000a3ec: 4d 85 c0                    	test	r8, r8
14000a3ef: 7e 2d                       	jle	0x14000a41e <.text+0x941e>
14000a3f1: 48 2b fe                    	sub	rdi, rsi
14000a3f4: 48 8d 1d 05 5c ff ff        	lea	rbx, [rip - 41979]      # 0x140000000
14000a3fb: 8a 04 37                    	mov	al, byte ptr [rdi + rsi]
14000a3fe: ff c2                       	inc	edx
14000a400: 4a 8b 8c e3 10 80 01 00     	mov	rcx, qword ptr [rbx + 8*r12 + 98320]
14000a408: 48 03 ce                    	add	rcx, rsi
14000a40b: 48 ff c6                    	inc	rsi
14000a40e: 42 88 44 f1 3e              	mov	byte ptr [rcx + 8*r14 + 62], al
14000a413: 48 63 c2                    	movsxd	rax, edx
14000a416: 49 3b c0                    	cmp	rax, r8
14000a419: 7c e0                       	jl	0x14000a3fb <.text+0x93fb>
14000a41b: 8b 5d 9b                    	mov	ebx, dword ptr [rbp - 101]
14000a41e: 41 03 d8                    	add	ebx, r8d
14000a421: eb 4c                       	jmp	0x14000a46f <.text+0x946f>
14000a423: 45 8b cb                    	mov	r9d, r11d
14000a426: 48 85 d2                    	test	rdx, rdx
14000a429: 7e 42                       	jle	0x14000a46d <.text+0x946d>
14000a42b: 4c 8b 6d ef                 	mov	r13, qword ptr [rbp - 17]
14000a42f: 4d 8b c3                    	mov	r8, r11
14000a432: 4d 8b d5                    	mov	r10, r13
14000a435: 41 83 e5 3f                 	and	r13d, 63
14000a439: 49 c1 fa 06                 	sar	r10, 6
14000a43d: 4e 8d 1c ed 00 00 00 00     	lea	r11, [8*r13]
14000a445: 4d 03 dd                    	add	r11, r13
14000a448: 41 8a 04 38                 	mov	al, byte ptr [r8 + rdi]
14000a44c: 41 ff c1                    	inc	r9d
14000a44f: 4b 8b 8c d7 10 80 01 00     	mov	rcx, qword ptr [r15 + 8*r10 + 98320]
14000a457: 49 03 c8                    	add	rcx, r8
14000a45a: 49 ff c0                    	inc	r8
14000a45d: 42 88 44 d9 3e              	mov	byte ptr [rcx + 8*r11 + 62], al
14000a462: 49 63 c1                    	movsxd	rax, r9d
14000a465: 48 3b c2                    	cmp	rax, rdx
14000a468: 7c de                       	jl	0x14000a448 <.text+0x9448>
14000a46a: 45 33 db                    	xor	r11d, r11d
14000a46d: 03 da                       	add	ebx, edx
14000a46f: 89 5d 9b                    	mov	dword ptr [rbp - 101], ebx
14000a472: 44 38 5d 8f                 	cmp	byte ptr [rbp - 113], r11b
14000a476: 8b 4c 24 40                 	mov	ecx, dword ptr [rsp + 64]
14000a47a: eb 49                       	jmp	0x14000a4c5 <.text+0x94c5>
14000a47c: 8a 07                       	mov	al, byte ptr [rdi]
14000a47e: 4c 8d 05 7b 5b ff ff        	lea	r8, [rip - 42117]       # 0x140000000
14000a485: 4b 8b 8c e0 10 80 01 00     	mov	rcx, qword ptr [r8 + 8*r12 + 98320]
14000a48d: ff c3                       	inc	ebx
14000a48f: 89 5d 9b                    	mov	dword ptr [rbp - 101], ebx
14000a492: 42 88 44 f1 3e              	mov	byte ptr [rcx + 8*r14 + 62], al
14000a497: 4b 8b 84 e0 10 80 01 00     	mov	rax, qword ptr [r8 + 8*r12 + 98320]
14000a49f: 42 80 4c f0 3d 04           	or	byte ptr [rax + 8*r14 + 61], 4
14000a4a5: 38 55 8f                    	cmp	byte ptr [rbp - 113], dl
14000a4a8: eb cc                       	jmp	0x14000a476 <.text+0x9476>
14000a4aa: ff 15 d0 3b 00 00           	call	qword ptr [rip + 15312] # 0x14000e080
14000a4b0: 89 45 97                    	mov	dword ptr [rbp - 105], eax
14000a4b3: 8b 4c 24 40                 	mov	ecx, dword ptr [rsp + 64]
14000a4b7: 80 7d 8f 00                 	cmp	byte ptr [rbp - 113], 0
14000a4bb: eb 08                       	jmp	0x14000a4c5 <.text+0x94c5>
14000a4bd: 8b 4c 24 40                 	mov	ecx, dword ptr [rsp + 64]
14000a4c1: 44 38 5d 8f                 	cmp	byte ptr [rbp - 113], r11b
14000a4c5: 74 0c                       	je	0x14000a4d3 <.text+0x94d3>
14000a4c7: 48 8b 44 24 50              	mov	rax, qword ptr [rsp + 80]
14000a4cc: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
14000a4d3: 48 8b 45 f7                 	mov	rax, qword ptr [rbp - 9]
14000a4d7: f2 0f 10 45 97              	movsd	xmm0, qword ptr [rbp - 105] # xmm0 = mem[0],zero
14000a4dc: f2 0f 11 00                 	movsd	qword ptr [rax], xmm0
14000a4e0: 89 48 08                    	mov	dword ptr [rax + 8], ecx
14000a4e3: 48 8b 4d 17                 	mov	rcx, qword ptr [rbp + 23]
14000a4e7: 48 33 cc                    	xor	rcx, rsp
14000a4ea: e8 21 26 00 00              	call	0x14000cb10 <.text+0xbb10>
14000a4ef: 48 8b 9c 24 40 01 00 00     	mov	rbx, qword ptr [rsp + 320]
14000a4f7: 48 81 c4 00 01 00 00        	add	rsp, 256
14000a4fe: 41 5f                       	pop	r15
14000a500: 41 5e                       	pop	r14
14000a502: 41 5d                       	pop	r13
14000a504: 41 5c                       	pop	r12
14000a506: 5f                          	pop	rdi
14000a507: 5e                          	pop	rsi
14000a508: 5d                          	pop	rbp
14000a509: c3                          	ret
14000a50a: ff 15 70 3b 00 00           	call	qword ptr [rip + 15216] # 0x14000e080
14000a510: 89 45 97                    	mov	dword ptr [rbp - 105], eax
14000a513: 8b 4c 24 40                 	mov	ecx, dword ptr [rsp + 64]
14000a517: 38 5d 8f                    	cmp	byte ptr [rbp - 113], bl
14000a51a: eb a9                       	jmp	0x14000a4c5 <.text+0x94c5>
14000a51c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000a521: 48 89 6c 24 18              	mov	qword ptr [rsp + 24], rbp
14000a526: 56                          	push	rsi
14000a527: 57                          	push	rdi
14000a528: 41 56                       	push	r14
14000a52a: b8 50 14 00 00              	mov	eax, 5200
14000a52f: e8 ac 28 00 00              	call	0x14000cde0 <.text+0xbde0>
14000a534: 48 2b e0                    	sub	rsp, rax
14000a537: 48 8b 05 ea ca 00 00        	mov	rax, qword ptr [rip + 51946] # 0x140017028
14000a53e: 48 33 c4                    	xor	rax, rsp
14000a541: 48 89 84 24 40 14 00 00     	mov	qword ptr [rsp + 5184], rax
14000a549: 4c 63 d2                    	movsxd	r10, edx
14000a54c: 48 8b f9                    	mov	rdi, rcx
14000a54f: 49 8b c2                    	mov	rax, r10
14000a552: 41 8b e9                    	mov	ebp, r9d
14000a555: 48 c1 f8 06                 	sar	rax, 6
14000a559: 48 8d 0d b0 da 00 00        	lea	rcx, [rip + 55984]      # 0x140018010
14000a560: 41 83 e2 3f                 	and	r10d, 63
14000a564: 49 03 e8                    	add	rbp, r8
14000a567: 49 8b f0                    	mov	rsi, r8
14000a56a: 48 8b 04 c1                 	mov	rax, qword ptr [rcx + 8*rax]
14000a56e: 4b 8d 14 d2                 	lea	rdx, [r10 + 8*r10]
14000a572: 4c 8b 74 d0 28              	mov	r14, qword ptr [rax + 8*rdx + 40]
14000a577: 33 c0                       	xor	eax, eax
14000a579: 48 89 07                    	mov	qword ptr [rdi], rax
14000a57c: 89 47 08                    	mov	dword ptr [rdi + 8], eax
14000a57f: 4c 3b c5                    	cmp	r8, rbp
14000a582: 73 6f                       	jae	0x14000a5f3 <.text+0x95f3>
14000a584: 48 8d 5c 24 40              	lea	rbx, [rsp + 64]
14000a589: 48 3b f5                    	cmp	rsi, rbp
14000a58c: 73 24                       	jae	0x14000a5b2 <.text+0x95b2>
14000a58e: 8a 06                       	mov	al, byte ptr [rsi]
14000a590: 48 ff c6                    	inc	rsi
14000a593: 3c 0a                       	cmp	al, 10
14000a595: 75 09                       	jne	0x14000a5a0 <.text+0x95a0>
14000a597: ff 47 08                    	inc	dword ptr [rdi + 8]
14000a59a: c6 03 0d                    	mov	byte ptr [rbx], 13
14000a59d: 48 ff c3                    	inc	rbx
14000a5a0: 88 03                       	mov	byte ptr [rbx], al
14000a5a2: 48 ff c3                    	inc	rbx
14000a5a5: 48 8d 84 24 3f 14 00 00     	lea	rax, [rsp + 5183]
14000a5ad: 48 3b d8                    	cmp	rbx, rax
14000a5b0: 72 d7                       	jb	0x14000a589 <.text+0x9589>
14000a5b2: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000a5b8: 48 8d 44 24 40              	lea	rax, [rsp + 64]
14000a5bd: 2b d8                       	sub	ebx, eax
14000a5bf: 4c 8d 4c 24 30              	lea	r9, [rsp + 48]
14000a5c4: 44 8b c3                    	mov	r8d, ebx
14000a5c7: 48 8d 54 24 40              	lea	rdx, [rsp + 64]
14000a5cc: 49 8b ce                    	mov	rcx, r14
14000a5cf: ff 15 23 3b 00 00           	call	qword ptr [rip + 15139] # 0x14000e0f8
14000a5d5: 85 c0                       	test	eax, eax
14000a5d7: 74 12                       	je	0x14000a5eb <.text+0x95eb>
14000a5d9: 8b 44 24 30                 	mov	eax, dword ptr [rsp + 48]
14000a5dd: 01 47 04                    	add	dword ptr [rdi + 4], eax
14000a5e0: 3b c3                       	cmp	eax, ebx
14000a5e2: 72 0f                       	jb	0x14000a5f3 <.text+0x95f3>
14000a5e4: 48 3b f5                    	cmp	rsi, rbp
14000a5e7: 72 9b                       	jb	0x14000a584 <.text+0x9584>
14000a5e9: eb 08                       	jmp	0x14000a5f3 <.text+0x95f3>
14000a5eb: ff 15 8f 3a 00 00           	call	qword ptr [rip + 14991] # 0x14000e080
14000a5f1: 89 07                       	mov	dword ptr [rdi], eax
14000a5f3: 48 8b c7                    	mov	rax, rdi
14000a5f6: 48 8b 8c 24 40 14 00 00     	mov	rcx, qword ptr [rsp + 5184]
14000a5fe: 48 33 cc                    	xor	rcx, rsp
14000a601: e8 0a 25 00 00              	call	0x14000cb10 <.text+0xbb10>
14000a606: 4c 8d 9c 24 50 14 00 00     	lea	r11, [rsp + 5200]
14000a60e: 49 8b 5b 20                 	mov	rbx, qword ptr [r11 + 32]
14000a612: 49 8b 6b 30                 	mov	rbp, qword ptr [r11 + 48]
14000a616: 49 8b e3                    	mov	rsp, r11
14000a619: 41 5e                       	pop	r14
14000a61b: 5f                          	pop	rdi
14000a61c: 5e                          	pop	rsi
14000a61d: c3                          	ret
14000a61e: cc                          	int3
14000a61f: cc                          	int3
14000a620: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000a625: 48 89 6c 24 18              	mov	qword ptr [rsp + 24], rbp
14000a62a: 56                          	push	rsi
14000a62b: 57                          	push	rdi
14000a62c: 41 56                       	push	r14
14000a62e: b8 50 14 00 00              	mov	eax, 5200
14000a633: e8 a8 27 00 00              	call	0x14000cde0 <.text+0xbde0>
14000a638: 48 2b e0                    	sub	rsp, rax
14000a63b: 48 8b 05 e6 c9 00 00        	mov	rax, qword ptr [rip + 51686] # 0x140017028
14000a642: 48 33 c4                    	xor	rax, rsp
14000a645: 48 89 84 24 40 14 00 00     	mov	qword ptr [rsp + 5184], rax
14000a64d: 4c 63 d2                    	movsxd	r10, edx
14000a650: 48 8b f9                    	mov	rdi, rcx
14000a653: 49 8b c2                    	mov	rax, r10
14000a656: 41 8b e9                    	mov	ebp, r9d
14000a659: 48 c1 f8 06                 	sar	rax, 6
14000a65d: 48 8d 0d ac d9 00 00        	lea	rcx, [rip + 55724]      # 0x140018010
14000a664: 41 83 e2 3f                 	and	r10d, 63
14000a668: 49 03 e8                    	add	rbp, r8
14000a66b: 49 8b f0                    	mov	rsi, r8
14000a66e: 48 8b 04 c1                 	mov	rax, qword ptr [rcx + 8*rax]
14000a672: 4b 8d 14 d2                 	lea	rdx, [r10 + 8*r10]
14000a676: 4c 8b 74 d0 28              	mov	r14, qword ptr [rax + 8*rdx + 40]
14000a67b: 33 c0                       	xor	eax, eax
14000a67d: 48 89 07                    	mov	qword ptr [rdi], rax
14000a680: 89 47 08                    	mov	dword ptr [rdi + 8], eax
14000a683: 4c 3b c5                    	cmp	r8, rbp
14000a686: 0f 83 82 00 00 00           	jae	0x14000a70e <.text+0x970e>
14000a68c: 48 8d 5c 24 40              	lea	rbx, [rsp + 64]
14000a691: 48 3b f5                    	cmp	rsi, rbp
14000a694: 73 31                       	jae	0x14000a6c7 <.text+0x96c7>
14000a696: 0f b7 06                    	movzx	eax, word ptr [rsi]
14000a699: 48 83 c6 02                 	add	rsi, 2
14000a69d: 66 83 f8 0a                 	cmp	ax, 10
14000a6a1: 75 10                       	jne	0x14000a6b3 <.text+0x96b3>
14000a6a3: 83 47 08 02                 	add	dword ptr [rdi + 8], 2
14000a6a7: b9 0d 00 00 00              	mov	ecx, 13
14000a6ac: 66 89 0b                    	mov	word ptr [rbx], cx
14000a6af: 48 83 c3 02                 	add	rbx, 2
14000a6b3: 66 89 03                    	mov	word ptr [rbx], ax
14000a6b6: 48 83 c3 02                 	add	rbx, 2
14000a6ba: 48 8d 84 24 3e 14 00 00     	lea	rax, [rsp + 5182]
14000a6c2: 48 3b d8                    	cmp	rbx, rax
14000a6c5: 72 ca                       	jb	0x14000a691 <.text+0x9691>
14000a6c7: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000a6cd: 48 8d 44 24 40              	lea	rax, [rsp + 64]
14000a6d2: 48 2b d8                    	sub	rbx, rax
14000a6d5: 4c 8d 4c 24 30              	lea	r9, [rsp + 48]
14000a6da: 48 d1 fb                    	sar	rbx
14000a6dd: 48 8d 54 24 40              	lea	rdx, [rsp + 64]
14000a6e2: 03 db                       	add	ebx, ebx
14000a6e4: 49 8b ce                    	mov	rcx, r14
14000a6e7: 44 8b c3                    	mov	r8d, ebx
14000a6ea: ff 15 08 3a 00 00           	call	qword ptr [rip + 14856] # 0x14000e0f8
14000a6f0: 85 c0                       	test	eax, eax
14000a6f2: 74 12                       	je	0x14000a706 <.text+0x9706>
14000a6f4: 8b 44 24 30                 	mov	eax, dword ptr [rsp + 48]
14000a6f8: 01 47 04                    	add	dword ptr [rdi + 4], eax
14000a6fb: 3b c3                       	cmp	eax, ebx
14000a6fd: 72 0f                       	jb	0x14000a70e <.text+0x970e>
14000a6ff: 48 3b f5                    	cmp	rsi, rbp
14000a702: 72 88                       	jb	0x14000a68c <.text+0x968c>
14000a704: eb 08                       	jmp	0x14000a70e <.text+0x970e>
14000a706: ff 15 74 39 00 00           	call	qword ptr [rip + 14708] # 0x14000e080
14000a70c: 89 07                       	mov	dword ptr [rdi], eax
14000a70e: 48 8b c7                    	mov	rax, rdi
14000a711: 48 8b 8c 24 40 14 00 00     	mov	rcx, qword ptr [rsp + 5184]
14000a719: 48 33 cc                    	xor	rcx, rsp
14000a71c: e8 ef 23 00 00              	call	0x14000cb10 <.text+0xbb10>
14000a721: 4c 8d 9c 24 50 14 00 00     	lea	r11, [rsp + 5200]
14000a729: 49 8b 5b 20                 	mov	rbx, qword ptr [r11 + 32]
14000a72d: 49 8b 6b 30                 	mov	rbp, qword ptr [r11 + 48]
14000a731: 49 8b e3                    	mov	rsp, r11
14000a734: 41 5e                       	pop	r14
14000a736: 5f                          	pop	rdi
14000a737: 5e                          	pop	rsi
14000a738: c3                          	ret
14000a739: cc                          	int3
14000a73a: cc                          	int3
14000a73b: cc                          	int3
14000a73c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000a741: 48 89 6c 24 18              	mov	qword ptr [rsp + 24], rbp
14000a746: 56                          	push	rsi
14000a747: 57                          	push	rdi
14000a748: 41 54                       	push	r12
14000a74a: 41 56                       	push	r14
14000a74c: 41 57                       	push	r15
14000a74e: b8 70 14 00 00              	mov	eax, 5232
14000a753: e8 88 26 00 00              	call	0x14000cde0 <.text+0xbde0>
14000a758: 48 2b e0                    	sub	rsp, rax
14000a75b: 48 8b 05 c6 c8 00 00        	mov	rax, qword ptr [rip + 51398] # 0x140017028
14000a762: 48 33 c4                    	xor	rax, rsp
14000a765: 48 89 84 24 60 14 00 00     	mov	qword ptr [rsp + 5216], rax
14000a76d: 4c 63 d2                    	movsxd	r10, edx
14000a770: 48 8b d9                    	mov	rbx, rcx
14000a773: 49 8b c2                    	mov	rax, r10
14000a776: 45 8b f1                    	mov	r14d, r9d
14000a779: 48 c1 f8 06                 	sar	rax, 6
14000a77d: 48 8d 0d 8c d8 00 00        	lea	rcx, [rip + 55436]      # 0x140018010
14000a784: 41 83 e2 3f                 	and	r10d, 63
14000a788: 4d 03 f0                    	add	r14, r8
14000a78b: 4d 8b f8                    	mov	r15, r8
14000a78e: 49 8b f8                    	mov	rdi, r8
14000a791: 48 8b 04 c1                 	mov	rax, qword ptr [rcx + 8*rax]
14000a795: 4b 8d 14 d2                 	lea	rdx, [r10 + 8*r10]
14000a799: 4c 8b 64 d0 28              	mov	r12, qword ptr [rax + 8*rdx + 40]
14000a79e: 33 c0                       	xor	eax, eax
14000a7a0: 48 89 03                    	mov	qword ptr [rbx], rax
14000a7a3: 4d 3b c6                    	cmp	r8, r14
14000a7a6: 89 43 08                    	mov	dword ptr [rbx + 8], eax
14000a7a9: 0f 83 ce 00 00 00           	jae	0x14000a87d <.text+0x987d>
14000a7af: 48 8d 44 24 50              	lea	rax, [rsp + 80]
14000a7b4: 49 3b fe                    	cmp	rdi, r14
14000a7b7: 73 2d                       	jae	0x14000a7e6 <.text+0x97e6>
14000a7b9: 0f b7 0f                    	movzx	ecx, word ptr [rdi]
14000a7bc: 48 83 c7 02                 	add	rdi, 2
14000a7c0: 66 83 f9 0a                 	cmp	cx, 10
14000a7c4: 75 0c                       	jne	0x14000a7d2 <.text+0x97d2>
14000a7c6: ba 0d 00 00 00              	mov	edx, 13
14000a7cb: 66 89 10                    	mov	word ptr [rax], dx
14000a7ce: 48 83 c0 02                 	add	rax, 2
14000a7d2: 66 89 08                    	mov	word ptr [rax], cx
14000a7d5: 48 83 c0 02                 	add	rax, 2
14000a7d9: 48 8d 8c 24 f8 06 00 00     	lea	rcx, [rsp + 1784]
14000a7e1: 48 3b c1                    	cmp	rax, rcx
14000a7e4: 72 ce                       	jb	0x14000a7b4 <.text+0x97b4>
14000a7e6: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
14000a7ec: 48 8d 4c 24 50              	lea	rcx, [rsp + 80]
14000a7f1: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
14000a7f7: 4c 8d 44 24 50              	lea	r8, [rsp + 80]
14000a7fc: 48 2b c1                    	sub	rax, rcx
14000a7ff: c7 44 24 28 55 0d 00 00     	mov	dword ptr [rsp + 40], 3413
14000a807: 48 8d 8c 24 00 07 00 00     	lea	rcx, [rsp + 1792]
14000a80f: 48 d1 f8                    	sar	rax
14000a812: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
14000a817: 44 8b c8                    	mov	r9d, eax
14000a81a: b9 e9 fd 00 00              	mov	ecx, 65001
14000a81f: 33 d2                       	xor	edx, edx
14000a821: e8 02 be ff ff              	call	0x140006628 <.text+0x5628>
14000a826: 8b e8                       	mov	ebp, eax
14000a828: 85 c0                       	test	eax, eax
14000a82a: 74 49                       	je	0x14000a875 <.text+0x9875>
14000a82c: 33 f6                       	xor	esi, esi
14000a82e: 85 c0                       	test	eax, eax
14000a830: 74 33                       	je	0x14000a865 <.text+0x9865>
14000a832: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000a838: 48 8d 94 24 00 07 00 00     	lea	rdx, [rsp + 1792]
14000a840: 8b ce                       	mov	ecx, esi
14000a842: 4c 8d 4c 24 40              	lea	r9, [rsp + 64]
14000a847: 44 8b c5                    	mov	r8d, ebp
14000a84a: 48 03 d1                    	add	rdx, rcx
14000a84d: 49 8b cc                    	mov	rcx, r12
14000a850: 44 2b c6                    	sub	r8d, esi
14000a853: ff 15 9f 38 00 00           	call	qword ptr [rip + 14495] # 0x14000e0f8
14000a859: 85 c0                       	test	eax, eax
14000a85b: 74 18                       	je	0x14000a875 <.text+0x9875>
14000a85d: 03 74 24 40                 	add	esi, dword ptr [rsp + 64]
14000a861: 3b f5                       	cmp	esi, ebp
14000a863: 72 cd                       	jb	0x14000a832 <.text+0x9832>
14000a865: 8b c7                       	mov	eax, edi
14000a867: 41 2b c7                    	sub	eax, r15d
14000a86a: 89 43 04                    	mov	dword ptr [rbx + 4], eax
14000a86d: 49 3b fe                    	cmp	rdi, r14
14000a870: e9 34 ff ff ff              	jmp	0x14000a7a9 <.text+0x97a9>
14000a875: ff 15 05 38 00 00           	call	qword ptr [rip + 14341] # 0x14000e080
14000a87b: 89 03                       	mov	dword ptr [rbx], eax
14000a87d: 48 8b c3                    	mov	rax, rbx
14000a880: 48 8b 8c 24 60 14 00 00     	mov	rcx, qword ptr [rsp + 5216]
14000a888: 48 33 cc                    	xor	rcx, rsp
14000a88b: e8 80 22 00 00              	call	0x14000cb10 <.text+0xbb10>
14000a890: 4c 8d 9c 24 70 14 00 00     	lea	r11, [rsp + 5232]
14000a898: 49 8b 5b 30                 	mov	rbx, qword ptr [r11 + 48]
14000a89c: 49 8b 6b 40                 	mov	rbp, qword ptr [r11 + 64]
14000a8a0: 49 8b e3                    	mov	rsp, r11
14000a8a3: 41 5f                       	pop	r15
14000a8a5: 41 5e                       	pop	r14
14000a8a7: 41 5c                       	pop	r12
14000a8a9: 5f                          	pop	rdi
14000a8aa: 5e                          	pop	rsi
14000a8ab: c3                          	ret
14000a8ac: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
14000a8b1: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
14000a8b6: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
14000a8ba: 57                          	push	rdi
14000a8bb: 41 54                       	push	r12
14000a8bd: 41 55                       	push	r13
14000a8bf: 41 56                       	push	r14
14000a8c1: 41 57                       	push	r15
14000a8c3: 48 83 ec 20                 	sub	rsp, 32
14000a8c7: 45 8b f0                    	mov	r14d, r8d
14000a8ca: 4c 8b fa                    	mov	r15, rdx
14000a8cd: 48 63 d9                    	movsxd	rbx, ecx
14000a8d0: 83 fb fe                    	cmp	ebx, -2
14000a8d3: 75 18                       	jne	0x14000a8ed <.text+0x98ed>
14000a8d5: e8 16 a5 ff ff              	call	0x140004df0 <.text+0x3df0>
14000a8da: 83 20 00                    	and	dword ptr [rax], 0
14000a8dd: e8 2e a5 ff ff              	call	0x140004e10 <.text+0x3e10>
14000a8e2: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000a8e8: e9 8f 00 00 00              	jmp	0x14000a97c <.text+0x997c>
14000a8ed: 85 c9                       	test	ecx, ecx
14000a8ef: 78 73                       	js	0x14000a964 <.text+0x9964>
14000a8f1: 3b 1d 19 db 00 00           	cmp	ebx, dword ptr [rip + 56089] # 0x140018410
14000a8f7: 73 6b                       	jae	0x14000a964 <.text+0x9964>
14000a8f9: 48 8b c3                    	mov	rax, rbx
14000a8fc: 48 8b f3                    	mov	rsi, rbx
14000a8ff: 48 c1 fe 06                 	sar	rsi, 6
14000a903: 4c 8d 2d 06 d7 00 00        	lea	r13, [rip + 55046]      # 0x140018010
14000a90a: 83 e0 3f                    	and	eax, 63
14000a90d: 4c 8d 24 c0                 	lea	r12, [rax + 8*rax]
14000a911: 49 8b 44 f5 00              	mov	rax, qword ptr [r13 + 8*rsi]
14000a916: 42 f6 44 e0 38 01           	test	byte ptr [rax + 8*r12 + 56], 1
14000a91c: 74 46                       	je	0x14000a964 <.text+0x9964>
14000a91e: 8b cb                       	mov	ecx, ebx
14000a920: e8 5b c5 ff ff              	call	0x140006e80 <.text+0x5e80>
14000a925: 83 cf ff                    	or	edi, -1
14000a928: 49 8b 44 f5 00              	mov	rax, qword ptr [r13 + 8*rsi]
14000a92d: 42 f6 44 e0 38 01           	test	byte ptr [rax + 8*r12 + 56], 1
14000a933: 75 15                       	jne	0x14000a94a <.text+0x994a>
14000a935: e8 d6 a4 ff ff              	call	0x140004e10 <.text+0x3e10>
14000a93a: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000a940: e8 ab a4 ff ff              	call	0x140004df0 <.text+0x3df0>
14000a945: 83 20 00                    	and	dword ptr [rax], 0
14000a948: eb 0f                       	jmp	0x14000a959 <.text+0x9959>
14000a94a: 45 8b c6                    	mov	r8d, r14d
14000a94d: 49 8b d7                    	mov	rdx, r15
14000a950: 8b cb                       	mov	ecx, ebx
14000a952: e8 41 00 00 00              	call	0x14000a998 <.text+0x9998>
14000a957: 8b f8                       	mov	edi, eax
14000a959: 8b cb                       	mov	ecx, ebx
14000a95b: e8 48 c5 ff ff              	call	0x140006ea8 <.text+0x5ea8>
14000a960: 8b c7                       	mov	eax, edi
14000a962: eb 1b                       	jmp	0x14000a97f <.text+0x997f>
14000a964: e8 87 a4 ff ff              	call	0x140004df0 <.text+0x3df0>
14000a969: 83 20 00                    	and	dword ptr [rax], 0
14000a96c: e8 9f a4 ff ff              	call	0x140004e10 <.text+0x3e10>
14000a971: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000a977: e8 74 a3 ff ff              	call	0x140004cf0 <.text+0x3cf0>
14000a97c: 83 c8 ff                    	or	eax, -1
14000a97f: 48 8b 5c 24 58              	mov	rbx, qword ptr [rsp + 88]
14000a984: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
14000a989: 48 83 c4 20                 	add	rsp, 32
14000a98d: 41 5f                       	pop	r15
14000a98f: 41 5e                       	pop	r14
14000a991: 41 5d                       	pop	r13
14000a993: 41 5c                       	pop	r12
14000a995: 5f                          	pop	rdi
14000a996: c3                          	ret
14000a997: cc                          	int3
14000a998: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000a99d: 55                          	push	rbp
14000a99e: 56                          	push	rsi
14000a99f: 57                          	push	rdi
14000a9a0: 41 54                       	push	r12
14000a9a2: 41 55                       	push	r13
14000a9a4: 41 56                       	push	r14
14000a9a6: 41 57                       	push	r15
14000a9a8: 48 8b ec                    	mov	rbp, rsp
14000a9ab: 48 83 ec 60                 	sub	rsp, 96
14000a9af: 33 db                       	xor	ebx, ebx
14000a9b1: 45 8b f0                    	mov	r14d, r8d
14000a9b4: 4c 63 e1                    	movsxd	r12, ecx
14000a9b7: 48 8b fa                    	mov	rdi, rdx
14000a9ba: 45 85 c0                    	test	r8d, r8d
14000a9bd: 0f 84 9e 02 00 00           	je	0x14000ac61 <.text+0x9c61>
14000a9c3: 48 85 d2                    	test	rdx, rdx
14000a9c6: 75 1f                       	jne	0x14000a9e7 <.text+0x99e7>
14000a9c8: e8 23 a4 ff ff              	call	0x140004df0 <.text+0x3df0>
14000a9cd: 89 18                       	mov	dword ptr [rax], ebx
14000a9cf: e8 3c a4 ff ff              	call	0x140004e10 <.text+0x3e10>
14000a9d4: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
14000a9da: e8 11 a3 ff ff              	call	0x140004cf0 <.text+0x3cf0>
14000a9df: 83 c8 ff                    	or	eax, -1
14000a9e2: e9 7c 02 00 00              	jmp	0x14000ac63 <.text+0x9c63>
14000a9e7: 49 8b c4                    	mov	rax, r12
14000a9ea: 48 8d 0d 1f d6 00 00        	lea	rcx, [rip + 54815]      # 0x140018010
14000a9f1: 83 e0 3f                    	and	eax, 63
14000a9f4: 4d 8b ec                    	mov	r13, r12
14000a9f7: 49 c1 fd 06                 	sar	r13, 6
14000a9fb: 4c 8d 3c c0                 	lea	r15, [rax + 8*rax]
14000a9ff: 4a 8b 0c e9                 	mov	rcx, qword ptr [rcx + 8*r13]
14000aa03: 42 0f be 74 f9 39           	movsx	esi, byte ptr [rcx + 8*r15 + 57]
14000aa09: 8d 46 ff                    	lea	eax, [rsi - 1]
14000aa0c: 3c 01                       	cmp	al, 1
14000aa0e: 77 09                       	ja	0x14000aa19 <.text+0x9a19>
14000aa10: 41 8b c6                    	mov	eax, r14d
14000aa13: f7 d0                       	not	eax
14000aa15: a8 01                       	test	al, 1
14000aa17: 74 af                       	je	0x14000a9c8 <.text+0x99c8>
14000aa19: 42 f6 44 f9 38 20           	test	byte ptr [rcx + 8*r15 + 56], 32
14000aa1f: 74 0e                       	je	0x14000aa2f <.text+0x9a2f>
14000aa21: 33 d2                       	xor	edx, edx
14000aa23: 41 8b cc                    	mov	ecx, r12d
14000aa26: 44 8d 42 02                 	lea	r8d, [rdx + 2]
14000aa2a: e8 8d 0b 00 00              	call	0x14000b5bc <.text+0xa5bc>
14000aa2f: 41 8b cc                    	mov	ecx, r12d
14000aa32: 48 89 5d e0                 	mov	qword ptr [rbp - 32], rbx
14000aa36: e8 35 03 00 00              	call	0x14000ad70 <.text+0x9d70>
14000aa3b: 85 c0                       	test	eax, eax
14000aa3d: 0f 84 0b 01 00 00           	je	0x14000ab4e <.text+0x9b4e>
14000aa43: 48 8d 05 c6 d5 00 00        	lea	rax, [rip + 54726]      # 0x140018010
14000aa4a: 4a 8b 04 e8                 	mov	rax, qword ptr [rax + 8*r13]
14000aa4e: 42 38 5c f8 38              	cmp	byte ptr [rax + 8*r15 + 56], bl
14000aa53: 0f 8d f5 00 00 00           	jge	0x14000ab4e <.text+0x9b4e>
14000aa59: e8 d6 9d ff ff              	call	0x140004834 <.text+0x3834>
14000aa5e: 48 8b 88 90 00 00 00        	mov	rcx, qword ptr [rax + 144]
14000aa65: 48 39 99 38 01 00 00        	cmp	qword ptr [rcx + 312], rbx
14000aa6c: 75 16                       	jne	0x14000aa84 <.text+0x9a84>
14000aa6e: 48 8d 05 9b d5 00 00        	lea	rax, [rip + 54683]      # 0x140018010
14000aa75: 4a 8b 04 e8                 	mov	rax, qword ptr [rax + 8*r13]
14000aa79: 42 38 5c f8 39              	cmp	byte ptr [rax + 8*r15 + 57], bl
14000aa7e: 0f 84 ca 00 00 00           	je	0x14000ab4e <.text+0x9b4e>
14000aa84: 48 8d 05 85 d5 00 00        	lea	rax, [rip + 54661]      # 0x140018010
14000aa8b: 4a 8b 0c e8                 	mov	rcx, qword ptr [rax + 8*r13]
14000aa8f: 48 8d 55 f0                 	lea	rdx, [rbp - 16]
14000aa93: 4a 8b 4c f9 28              	mov	rcx, qword ptr [rcx + 8*r15 + 40]
14000aa98: ff 15 5a 37 00 00           	call	qword ptr [rip + 14170] # 0x14000e1f8
14000aa9e: 85 c0                       	test	eax, eax
14000aaa0: 0f 84 a8 00 00 00           	je	0x14000ab4e <.text+0x9b4e>
14000aaa6: 40 84 f6                    	test	sil, sil
14000aaa9: 0f 84 81 00 00 00           	je	0x14000ab30 <.text+0x9b30>
14000aaaf: 40 fe ce                    	dec	sil
14000aab2: 40 80 fe 01                 	cmp	sil, 1
14000aab6: 0f 87 2e 01 00 00           	ja	0x14000abea <.text+0x9bea>
14000aabc: 4e 8d 24 37                 	lea	r12, [rdi + r14]
14000aac0: 48 89 5d d0                 	mov	qword ptr [rbp - 48], rbx
14000aac4: 4c 8b f7                    	mov	r14, rdi
14000aac7: 49 3b fc                    	cmp	rdi, r12
14000aaca: 0f 83 10 01 00 00           	jae	0x14000abe0 <.text+0x9be0>
14000aad0: 8b 75 d4                    	mov	esi, dword ptr [rbp - 44]
14000aad3: 41 0f b7 06                 	movzx	eax, word ptr [r14]
14000aad7: 0f b7 c8                    	movzx	ecx, ax
14000aada: 66 89 45 f0                 	mov	word ptr [rbp - 16], ax
14000aade: e8 e1 0a 00 00              	call	0x14000b5c4 <.text+0xa5c4>
14000aae3: 0f b7 4d f0                 	movzx	ecx, word ptr [rbp - 16]
14000aae7: 66 3b c1                    	cmp	ax, cx
14000aaea: 75 36                       	jne	0x14000ab22 <.text+0x9b22>
14000aaec: 83 c6 02                    	add	esi, 2
14000aaef: 89 75 d4                    	mov	dword ptr [rbp - 44], esi
14000aaf2: 66 83 f9 0a                 	cmp	cx, 10
14000aaf6: 75 1b                       	jne	0x14000ab13 <.text+0x9b13>
14000aaf8: b9 0d 00 00 00              	mov	ecx, 13
14000aafd: e8 c2 0a 00 00              	call	0x14000b5c4 <.text+0xa5c4>
14000ab02: b9 0d 00 00 00              	mov	ecx, 13
14000ab07: 66 3b c1                    	cmp	ax, cx
14000ab0a: 75 16                       	jne	0x14000ab22 <.text+0x9b22>
14000ab0c: ff c6                       	inc	esi
14000ab0e: 89 75 d4                    	mov	dword ptr [rbp - 44], esi
14000ab11: ff c3                       	inc	ebx
14000ab13: 49 83 c6 02                 	add	r14, 2
14000ab17: 4d 3b f4                    	cmp	r14, r12
14000ab1a: 0f 83 c0 00 00 00           	jae	0x14000abe0 <.text+0x9be0>
14000ab20: eb b1                       	jmp	0x14000aad3 <.text+0x9ad3>
14000ab22: ff 15 58 35 00 00           	call	qword ptr [rip + 13656] # 0x14000e080
14000ab28: 89 45 d0                    	mov	dword ptr [rbp - 48], eax
14000ab2b: e9 b0 00 00 00              	jmp	0x14000abe0 <.text+0x9be0>
14000ab30: 45 8b ce                    	mov	r9d, r14d
14000ab33: 48 8d 4d d0                 	lea	rcx, [rbp - 48]
14000ab37: 4c 8b c7                    	mov	r8, rdi
14000ab3a: 41 8b d4                    	mov	edx, r12d
14000ab3d: e8 ee f4 ff ff              	call	0x14000a030 <.text+0x9030>
14000ab42: f2 0f 10 00                 	movsd	xmm0, qword ptr [rax]   # xmm0 = mem[0],zero
14000ab46: 8b 58 08                    	mov	ebx, dword ptr [rax + 8]
14000ab49: e9 97 00 00 00              	jmp	0x14000abe5 <.text+0x9be5>
14000ab4e: 48 8d 05 bb d4 00 00        	lea	rax, [rip + 54459]      # 0x140018010
14000ab55: 4a 8b 0c e8                 	mov	rcx, qword ptr [rax + 8*r13]
14000ab59: 42 38 5c f9 38              	cmp	byte ptr [rcx + 8*r15 + 56], bl
14000ab5e: 7d 4d                       	jge	0x14000abad <.text+0x9bad>
14000ab60: 8b ce                       	mov	ecx, esi
14000ab62: 40 84 f6                    	test	sil, sil
14000ab65: 74 32                       	je	0x14000ab99 <.text+0x9b99>
14000ab67: 83 e9 01                    	sub	ecx, 1
14000ab6a: 74 19                       	je	0x14000ab85 <.text+0x9b85>
14000ab6c: 83 f9 01                    	cmp	ecx, 1
14000ab6f: 75 79                       	jne	0x14000abea <.text+0x9bea>
14000ab71: 45 8b ce                    	mov	r9d, r14d
14000ab74: 48 8d 4d d0                 	lea	rcx, [rbp - 48]
14000ab78: 4c 8b c7                    	mov	r8, rdi
14000ab7b: 41 8b d4                    	mov	edx, r12d
14000ab7e: e8 9d fa ff ff              	call	0x14000a620 <.text+0x9620>
14000ab83: eb bd                       	jmp	0x14000ab42 <.text+0x9b42>
14000ab85: 45 8b ce                    	mov	r9d, r14d
14000ab88: 48 8d 4d d0                 	lea	rcx, [rbp - 48]
14000ab8c: 4c 8b c7                    	mov	r8, rdi
14000ab8f: 41 8b d4                    	mov	edx, r12d
14000ab92: e8 a5 fb ff ff              	call	0x14000a73c <.text+0x973c>
14000ab97: eb a9                       	jmp	0x14000ab42 <.text+0x9b42>
14000ab99: 45 8b ce                    	mov	r9d, r14d
14000ab9c: 48 8d 4d d0                 	lea	rcx, [rbp - 48]
14000aba0: 4c 8b c7                    	mov	r8, rdi
14000aba3: 41 8b d4                    	mov	edx, r12d
14000aba6: e8 71 f9 ff ff              	call	0x14000a51c <.text+0x951c>
14000abab: eb 95                       	jmp	0x14000ab42 <.text+0x9b42>
14000abad: 4a 8b 4c f9 28              	mov	rcx, qword ptr [rcx + 8*r15 + 40]
14000abb2: 4c 8d 4d d4                 	lea	r9, [rbp - 44]
14000abb6: 33 c0                       	xor	eax, eax
14000abb8: 45 8b c6                    	mov	r8d, r14d
14000abbb: 48 21 44 24 20              	and	qword ptr [rsp + 32], rax
14000abc0: 48 8b d7                    	mov	rdx, rdi
14000abc3: 48 89 45 d0                 	mov	qword ptr [rbp - 48], rax
14000abc7: 89 45 d8                    	mov	dword ptr [rbp - 40], eax
14000abca: ff 15 28 35 00 00           	call	qword ptr [rip + 13608] # 0x14000e0f8
14000abd0: 85 c0                       	test	eax, eax
14000abd2: 75 09                       	jne	0x14000abdd <.text+0x9bdd>
14000abd4: ff 15 a6 34 00 00           	call	qword ptr [rip + 13478] # 0x14000e080
14000abda: 89 45 d0                    	mov	dword ptr [rbp - 48], eax
14000abdd: 8b 5d d8                    	mov	ebx, dword ptr [rbp - 40]
14000abe0: f2 0f 10 45 d0              	movsd	xmm0, qword ptr [rbp - 48] # xmm0 = mem[0],zero
14000abe5: f2 0f 11 45 e0              	movsd	qword ptr [rbp - 32], xmm0
14000abea: 48 8b 45 e0                 	mov	rax, qword ptr [rbp - 32]
14000abee: 48 c1 e8 20                 	shr	rax, 32
14000abf2: 85 c0                       	test	eax, eax
14000abf4: 75 64                       	jne	0x14000ac5a <.text+0x9c5a>
14000abf6: 8b 45 e0                    	mov	eax, dword ptr [rbp - 32]
14000abf9: 85 c0                       	test	eax, eax
14000abfb: 74 2d                       	je	0x14000ac2a <.text+0x9c2a>
14000abfd: 83 f8 05                    	cmp	eax, 5
14000ac00: 75 1b                       	jne	0x14000ac1d <.text+0x9c1d>
14000ac02: e8 09 a2 ff ff              	call	0x140004e10 <.text+0x3e10>
14000ac07: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000ac0d: e8 de a1 ff ff              	call	0x140004df0 <.text+0x3df0>
14000ac12: c7 00 05 00 00 00           	mov	dword ptr [rax], 5
14000ac18: e9 c2 fd ff ff              	jmp	0x14000a9df <.text+0x99df>
14000ac1d: 8b 4d e0                    	mov	ecx, dword ptr [rbp - 32]
14000ac20: e8 7b a1 ff ff              	call	0x140004da0 <.text+0x3da0>
14000ac25: e9 b5 fd ff ff              	jmp	0x14000a9df <.text+0x99df>
14000ac2a: 48 8d 05 df d3 00 00        	lea	rax, [rip + 54239]      # 0x140018010
14000ac31: 4a 8b 04 e8                 	mov	rax, qword ptr [rax + 8*r13]
14000ac35: 42 f6 44 f8 38 40           	test	byte ptr [rax + 8*r15 + 56], 64
14000ac3b: 74 05                       	je	0x14000ac42 <.text+0x9c42>
14000ac3d: 80 3f 1a                    	cmp	byte ptr [rdi], 26
14000ac40: 74 1f                       	je	0x14000ac61 <.text+0x9c61>
14000ac42: e8 c9 a1 ff ff              	call	0x140004e10 <.text+0x3e10>
14000ac47: c7 00 1c 00 00 00           	mov	dword ptr [rax], 28
14000ac4d: e8 9e a1 ff ff              	call	0x140004df0 <.text+0x3df0>
14000ac52: 83 20 00                    	and	dword ptr [rax], 0
14000ac55: e9 85 fd ff ff              	jmp	0x14000a9df <.text+0x99df>
14000ac5a: 8b 45 e4                    	mov	eax, dword ptr [rbp - 28]
14000ac5d: 2b c3                       	sub	eax, ebx
14000ac5f: eb 02                       	jmp	0x14000ac63 <.text+0x9c63>
14000ac61: 33 c0                       	xor	eax, eax
14000ac63: 48 8b 9c 24 b8 00 00 00     	mov	rbx, qword ptr [rsp + 184]
14000ac6b: 48 83 c4 60                 	add	rsp, 96
14000ac6f: 41 5f                       	pop	r15
14000ac71: 41 5e                       	pop	r14
14000ac73: 41 5d                       	pop	r13
14000ac75: 41 5c                       	pop	r12
14000ac77: 5f                          	pop	rdi
14000ac78: 5e                          	pop	rsi
14000ac79: 5d                          	pop	rbp
14000ac7a: c3                          	ret
14000ac7b: cc                          	int3
14000ac7c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000ac81: 57                          	push	rdi
14000ac82: 48 83 ec 30                 	sub	rsp, 48
14000ac86: 83 64 24 20 00              	and	dword ptr [rsp + 32], 0
14000ac8b: b9 08 00 00 00              	mov	ecx, 8
14000ac90: e8 9f bf ff ff              	call	0x140006c34 <.text+0x5c34>
14000ac95: 90                          	nop
14000ac96: bb 03 00 00 00              	mov	ebx, 3
14000ac9b: 89 5c 24 24                 	mov	dword ptr [rsp + 36], ebx
14000ac9f: 3b 1d 63 d9 00 00           	cmp	ebx, dword ptr [rip + 55651] # 0x140018608
14000aca5: 74 6d                       	je	0x14000ad14 <.text+0x9d14>
14000aca7: 48 63 fb                    	movsxd	rdi, ebx
14000acaa: 48 8b 05 5f d9 00 00        	mov	rax, qword ptr [rip + 55647] # 0x140018610
14000acb1: 48 8b 0c f8                 	mov	rcx, qword ptr [rax + 8*rdi]
14000acb5: 48 85 c9                    	test	rcx, rcx
14000acb8: 75 02                       	jne	0x14000acbc <.text+0x9cbc>
14000acba: eb 54                       	jmp	0x14000ad10 <.text+0x9d10>
14000acbc: 8b 41 14                    	mov	eax, dword ptr [rcx + 20]
14000acbf: c1 e8 0d                    	shr	eax, 13
14000acc2: a8 01                       	test	al, 1
14000acc4: 74 19                       	je	0x14000acdf <.text+0x9cdf>
14000acc6: 48 8b 0d 43 d9 00 00        	mov	rcx, qword ptr [rip + 55619] # 0x140018610
14000accd: 48 8b 0c f9                 	mov	rcx, qword ptr [rcx + 8*rdi]
14000acd1: e8 ae 09 00 00              	call	0x14000b684 <.text+0xa684>
14000acd6: 83 f8 ff                    	cmp	eax, -1
14000acd9: 74 04                       	je	0x14000acdf <.text+0x9cdf>
14000acdb: ff 44 24 20                 	inc	dword ptr [rsp + 32]
14000acdf: 48 8b 05 2a d9 00 00        	mov	rax, qword ptr [rip + 55594] # 0x140018610
14000ace6: 48 8b 0c f8                 	mov	rcx, qword ptr [rax + 8*rdi]
14000acea: 48 83 c1 30                 	add	rcx, 48
14000acee: ff 15 ac 33 00 00           	call	qword ptr [rip + 13228] # 0x14000e0a0
14000acf4: 48 8b 0d 15 d9 00 00        	mov	rcx, qword ptr [rip + 55573] # 0x140018610
14000acfb: 48 8b 0c f9                 	mov	rcx, qword ptr [rcx + 8*rdi]
14000acff: e8 a4 a1 ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000ad04: 48 8b 05 05 d9 00 00        	mov	rax, qword ptr [rip + 55557] # 0x140018610
14000ad0b: 48 83 24 f8 00              	and	qword ptr [rax + 8*rdi], 0
14000ad10: ff c3                       	inc	ebx
14000ad12: eb 87                       	jmp	0x14000ac9b <.text+0x9c9b>
14000ad14: b9 08 00 00 00              	mov	ecx, 8
14000ad19: e8 6a bf ff ff              	call	0x140006c88 <.text+0x5c88>
14000ad1e: 8b 44 24 20                 	mov	eax, dword ptr [rsp + 32]
14000ad22: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
14000ad27: 48 83 c4 30                 	add	rsp, 48
14000ad2b: 5f                          	pop	rdi
14000ad2c: c3                          	ret
14000ad2d: cc                          	int3
14000ad2e: cc                          	int3
14000ad2f: cc                          	int3
14000ad30: 40 53                       	push	rbx
14000ad32: 48 83 ec 20                 	sub	rsp, 32
14000ad36: 8b 41 14                    	mov	eax, dword ptr [rcx + 20]
14000ad39: 48 8b d9                    	mov	rbx, rcx
14000ad3c: c1 e8 0d                    	shr	eax, 13
14000ad3f: a8 01                       	test	al, 1
14000ad41: 74 27                       	je	0x14000ad6a <.text+0x9d6a>
14000ad43: 8b 41 14                    	mov	eax, dword ptr [rcx + 20]
14000ad46: c1 e8 06                    	shr	eax, 6
14000ad49: a8 01                       	test	al, 1
14000ad4b: 74 1d                       	je	0x14000ad6a <.text+0x9d6a>
14000ad4d: 48 8b 49 08                 	mov	rcx, qword ptr [rcx + 8]
14000ad51: e8 52 a1 ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000ad56: f0                          	lock
14000ad57: 81 63 14 bf fe ff ff        	and	dword ptr [rbx + 20], 4294966975
14000ad5e: 33 c0                       	xor	eax, eax
14000ad60: 48 89 43 08                 	mov	qword ptr [rbx + 8], rax
14000ad64: 48 89 03                    	mov	qword ptr [rbx], rax
14000ad67: 89 43 10                    	mov	dword ptr [rbx + 16], eax
14000ad6a: 48 83 c4 20                 	add	rsp, 32
14000ad6e: 5b                          	pop	rbx
14000ad6f: c3                          	ret
14000ad70: 48 83 ec 28                 	sub	rsp, 40
14000ad74: 83 f9 fe                    	cmp	ecx, -2
14000ad77: 75 0d                       	jne	0x14000ad86 <.text+0x9d86>
14000ad79: e8 92 a0 ff ff              	call	0x140004e10 <.text+0x3e10>
14000ad7e: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000ad84: eb 42                       	jmp	0x14000adc8 <.text+0x9dc8>
14000ad86: 85 c9                       	test	ecx, ecx
14000ad88: 78 2e                       	js	0x14000adb8 <.text+0x9db8>
14000ad8a: 3b 0d 80 d6 00 00           	cmp	ecx, dword ptr [rip + 54912] # 0x140018410
14000ad90: 73 26                       	jae	0x14000adb8 <.text+0x9db8>
14000ad92: 48 63 c9                    	movsxd	rcx, ecx
14000ad95: 48 8d 15 74 d2 00 00        	lea	rdx, [rip + 53876]      # 0x140018010
14000ad9c: 48 8b c1                    	mov	rax, rcx
14000ad9f: 83 e1 3f                    	and	ecx, 63
14000ada2: 48 c1 f8 06                 	sar	rax, 6
14000ada6: 48 8d 0c c9                 	lea	rcx, [rcx + 8*rcx]
14000adaa: 48 8b 04 c2                 	mov	rax, qword ptr [rdx + 8*rax]
14000adae: 0f b6 44 c8 38              	movzx	eax, byte ptr [rax + 8*rcx + 56]
14000adb3: 83 e0 40                    	and	eax, 64
14000adb6: eb 12                       	jmp	0x14000adca <.text+0x9dca>
14000adb8: e8 53 a0 ff ff              	call	0x140004e10 <.text+0x3e10>
14000adbd: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000adc3: e8 28 9f ff ff              	call	0x140004cf0 <.text+0x3cf0>
14000adc8: 33 c0                       	xor	eax, eax
14000adca: 48 83 c4 28                 	add	rsp, 40
14000adce: c3                          	ret
14000adcf: cc                          	int3
14000add0: 40 53                       	push	rbx
14000add2: 48 83 ec 40                 	sub	rsp, 64
14000add6: 48 63 d9                    	movsxd	rbx, ecx
14000add9: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
14000adde: e8 81 95 ff ff              	call	0x140004364 <.text+0x3364>
14000ade3: 8d 43 01                    	lea	eax, [rbx + 1]
14000ade6: 3d 00 01 00 00              	cmp	eax, 256
14000adeb: 77 13                       	ja	0x14000ae00 <.text+0x9e00>
14000aded: 48 8b 44 24 28              	mov	rax, qword ptr [rsp + 40]
14000adf2: 48 8b 08                    	mov	rcx, qword ptr [rax]
14000adf5: 0f b7 04 59                 	movzx	eax, word ptr [rcx + 2*rbx]
14000adf9: 25 00 80 00 00              	and	eax, 32768
14000adfe: eb 02                       	jmp	0x14000ae02 <.text+0x9e02>
14000ae00: 33 c0                       	xor	eax, eax
14000ae02: 80 7c 24 38 00              	cmp	byte ptr [rsp + 56], 0
14000ae07: 74 0c                       	je	0x14000ae15 <.text+0x9e15>
14000ae09: 48 8b 4c 24 20              	mov	rcx, qword ptr [rsp + 32]
14000ae0e: 83 a1 a8 03 00 00 fd        	and	dword ptr [rcx + 936], -3
14000ae15: 48 83 c4 40                 	add	rsp, 64
14000ae19: 5b                          	pop	rbx
14000ae1a: c3                          	ret
14000ae1b: cc                          	int3
14000ae1c: 40 53                       	push	rbx
14000ae1e: 48 83 ec 30                 	sub	rsp, 48
14000ae22: 48 8b d9                    	mov	rbx, rcx
14000ae25: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
14000ae2a: e8 b9 08 00 00              	call	0x14000b6e8 <.text+0xa6e8>
14000ae2f: 48 83 f8 04                 	cmp	rax, 4
14000ae33: 77 1a                       	ja	0x14000ae4f <.text+0x9e4f>
14000ae35: 8b 54 24 20                 	mov	edx, dword ptr [rsp + 32]
14000ae39: b9 fd ff 00 00              	mov	ecx, 65533
14000ae3e: 81 fa ff ff 00 00           	cmp	edx, 65535
14000ae44: 0f 47 d1                    	cmova	edx, ecx
14000ae47: 48 85 db                    	test	rbx, rbx
14000ae4a: 74 03                       	je	0x14000ae4f <.text+0x9e4f>
14000ae4c: 66 89 13                    	mov	word ptr [rbx], dx
14000ae4f: 48 83 c4 30                 	add	rsp, 48
14000ae53: 5b                          	pop	rbx
14000ae54: c3                          	ret
14000ae55: cc                          	int3
14000ae56: cc                          	int3
14000ae57: cc                          	int3
14000ae58: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
14000ae5d: 48 89 6c 24 18              	mov	qword ptr [rsp + 24], rbp
14000ae62: 57                          	push	rdi
14000ae63: 41 54                       	push	r12
14000ae65: 41 55                       	push	r13
14000ae67: 41 56                       	push	r14
14000ae69: 41 57                       	push	r15
14000ae6b: 48 83 ec 20                 	sub	rsp, 32
14000ae6f: 48 8b 3a                    	mov	rdi, qword ptr [rdx]
14000ae72: 45 33 ed                    	xor	r13d, r13d
14000ae75: 4d 8b e1                    	mov	r12, r9
14000ae78: 49 8b e8                    	mov	rbp, r8
14000ae7b: 4c 8b f2                    	mov	r14, rdx
14000ae7e: 4c 8b f9                    	mov	r15, rcx
14000ae81: 48 85 c9                    	test	rcx, rcx
14000ae84: 0f 84 ee 00 00 00           	je	0x14000af78 <.text+0x9f78>
14000ae8a: 48 8b d9                    	mov	rbx, rcx
14000ae8d: 4d 85 c0                    	test	r8, r8
14000ae90: 0f 84 a1 00 00 00           	je	0x14000af37 <.text+0x9f37>
14000ae96: 44 38 2f                    	cmp	byte ptr [rdi], r13b
14000ae99: 75 08                       	jne	0x14000aea3 <.text+0x9ea3>
14000ae9b: 41 b8 01 00 00 00           	mov	r8d, 1
14000aea1: eb 1d                       	jmp	0x14000aec0 <.text+0x9ec0>
14000aea3: 44 38 6f 01                 	cmp	byte ptr [rdi + 1], r13b
14000aea7: 75 08                       	jne	0x14000aeb1 <.text+0x9eb1>
14000aea9: 41 b8 02 00 00 00           	mov	r8d, 2
14000aeaf: eb 0f                       	jmp	0x14000aec0 <.text+0x9ec0>
14000aeb1: 8a 47 02                    	mov	al, byte ptr [rdi + 2]
14000aeb4: f6 d8                       	neg	al
14000aeb6: 4d 1b c0                    	sbb	r8, r8
14000aeb9: 49 f7 d8                    	neg	r8
14000aebc: 49 83 c0 03                 	add	r8, 3
14000aec0: 4d 8b cc                    	mov	r9, r12
14000aec3: 48 8d 4c 24 50              	lea	rcx, [rsp + 80]
14000aec8: 48 8b d7                    	mov	rdx, rdi
14000aecb: e8 18 08 00 00              	call	0x14000b6e8 <.text+0xa6e8>
14000aed0: 48 8b d0                    	mov	rdx, rax
14000aed3: 48 83 f8 ff                 	cmp	rax, -1
14000aed7: 74 75                       	je	0x14000af4e <.text+0x9f4e>
14000aed9: 48 85 c0                    	test	rax, rax
14000aedc: 74 67                       	je	0x14000af45 <.text+0x9f45>
14000aede: 8b 4c 24 50                 	mov	ecx, dword ptr [rsp + 80]
14000aee2: 81 f9 ff ff 00 00           	cmp	ecx, 65535
14000aee8: 76 39                       	jbe	0x14000af23 <.text+0x9f23>
14000aeea: 48 83 fd 01                 	cmp	rbp, 1
14000aeee: 76 47                       	jbe	0x14000af37 <.text+0x9f37>
14000aef0: 81 c1 00 00 ff ff           	add	ecx, 4294901760
14000aef6: 41 b8 00 d8 00 00           	mov	r8d, 55296
14000aefc: 8b c1                       	mov	eax, ecx
14000aefe: 89 4c 24 50                 	mov	dword ptr [rsp + 80], ecx
14000af02: c1 e8 0a                    	shr	eax, 10
14000af05: 48 ff cd                    	dec	rbp
14000af08: 66 41 0b c0                 	or	ax, r8w
14000af0c: 66 89 03                    	mov	word ptr [rbx], ax
14000af0f: b8 ff 03 00 00              	mov	eax, 1023
14000af14: 66 23 c8                    	and	cx, ax
14000af17: 48 83 c3 02                 	add	rbx, 2
14000af1b: b8 00 dc 00 00              	mov	eax, 56320
14000af20: 66 0b c8                    	or	cx, ax
14000af23: 66 89 0b                    	mov	word ptr [rbx], cx
14000af26: 48 03 fa                    	add	rdi, rdx
14000af29: 48 83 c3 02                 	add	rbx, 2
14000af2d: 48 83 ed 01                 	sub	rbp, 1
14000af31: 0f 85 5f ff ff ff           	jne	0x14000ae96 <.text+0x9e96>
14000af37: 49 2b df                    	sub	rbx, r15
14000af3a: 49 89 3e                    	mov	qword ptr [r14], rdi
14000af3d: 48 d1 fb                    	sar	rbx
14000af40: 48 8b c3                    	mov	rax, rbx
14000af43: eb 1b                       	jmp	0x14000af60 <.text+0x9f60>
14000af45: 49 8b fd                    	mov	rdi, r13
14000af48: 66 44 89 2b                 	mov	word ptr [rbx], r13w
14000af4c: eb e9                       	jmp	0x14000af37 <.text+0x9f37>
14000af4e: 49 89 3e                    	mov	qword ptr [r14], rdi
14000af51: e8 ba 9e ff ff              	call	0x140004e10 <.text+0x3e10>
14000af56: c7 00 2a 00 00 00           	mov	dword ptr [rax], 42
14000af5c: 48 83 c8 ff                 	or	rax, -1
14000af60: 48 8b 5c 24 58              	mov	rbx, qword ptr [rsp + 88]
14000af65: 48 8b 6c 24 60              	mov	rbp, qword ptr [rsp + 96]
14000af6a: 48 83 c4 20                 	add	rsp, 32
14000af6e: 41 5f                       	pop	r15
14000af70: 41 5e                       	pop	r14
14000af72: 41 5d                       	pop	r13
14000af74: 41 5c                       	pop	r12
14000af76: 5f                          	pop	rdi
14000af77: c3                          	ret
14000af78: 49 8b dd                    	mov	rbx, r13
14000af7b: 44 38 2f                    	cmp	byte ptr [rdi], r13b
14000af7e: 75 08                       	jne	0x14000af88 <.text+0x9f88>
14000af80: 41 b8 01 00 00 00           	mov	r8d, 1
14000af86: eb 1d                       	jmp	0x14000afa5 <.text+0x9fa5>
14000af88: 44 38 6f 01                 	cmp	byte ptr [rdi + 1], r13b
14000af8c: 75 08                       	jne	0x14000af96 <.text+0x9f96>
14000af8e: 41 b8 02 00 00 00           	mov	r8d, 2
14000af94: eb 0f                       	jmp	0x14000afa5 <.text+0x9fa5>
14000af96: 8a 47 02                    	mov	al, byte ptr [rdi + 2]
14000af99: f6 d8                       	neg	al
14000af9b: 4d 1b c0                    	sbb	r8, r8
14000af9e: 49 f7 d8                    	neg	r8
14000afa1: 49 83 c0 03                 	add	r8, 3
14000afa5: 4d 8b cc                    	mov	r9, r12
14000afa8: 48 8b d7                    	mov	rdx, rdi
14000afab: 33 c9                       	xor	ecx, ecx
14000afad: e8 36 07 00 00              	call	0x14000b6e8 <.text+0xa6e8>
14000afb2: 48 83 f8 ff                 	cmp	rax, -1
14000afb6: 74 99                       	je	0x14000af51 <.text+0x9f51>
14000afb8: 48 85 c0                    	test	rax, rax
14000afbb: 74 83                       	je	0x14000af40 <.text+0x9f40>
14000afbd: 48 83 f8 04                 	cmp	rax, 4
14000afc1: 75 03                       	jne	0x14000afc6 <.text+0x9fc6>
14000afc3: 48 ff c3                    	inc	rbx
14000afc6: 48 03 f8                    	add	rdi, rax
14000afc9: 48 ff c3                    	inc	rbx
14000afcc: eb ad                       	jmp	0x14000af7b <.text+0x9f7b>
14000afce: cc                          	int3
14000afcf: cc                          	int3
14000afd0: 33 c0                       	xor	eax, eax
14000afd2: 38 01                       	cmp	byte ptr [rcx], al
14000afd4: 74 0e                       	je	0x14000afe4 <.text+0x9fe4>
14000afd6: 48 3b c2                    	cmp	rax, rdx
14000afd9: 74 09                       	je	0x14000afe4 <.text+0x9fe4>
14000afdb: 48 ff c0                    	inc	rax
14000afde: 80 3c 08 00                 	cmp	byte ptr [rax + rcx], 0
14000afe2: 75 f2                       	jne	0x14000afd6 <.text+0x9fd6>
14000afe4: c3                          	ret
14000afe5: cc                          	int3
14000afe6: cc                          	int3
14000afe7: cc                          	int3
14000afe8: 4c 8b da                    	mov	r11, rdx
14000afeb: 4c 8b d1                    	mov	r10, rcx
14000afee: 4d 85 c0                    	test	r8, r8
14000aff1: 75 03                       	jne	0x14000aff6 <.text+0x9ff6>
14000aff3: 33 c0                       	xor	eax, eax
14000aff5: c3                          	ret
14000aff6: 41 0f b6 0a                 	movzx	ecx, byte ptr [r10]
14000affa: 41 0f b6 13                 	movzx	edx, byte ptr [r11]
14000affe: 8d 41 bf                    	lea	eax, [rcx - 65]
14000b001: 83 f8 19                    	cmp	eax, 25
14000b004: 44 8d 49 20                 	lea	r9d, [rcx + 32]
14000b008: 8d 42 bf                    	lea	eax, [rdx - 65]
14000b00b: 44 0f 47 c9                 	cmova	r9d, ecx
14000b00f: 49 ff c2                    	inc	r10
14000b012: 49 ff c3                    	inc	r11
14000b015: 8d 4a 20                    	lea	ecx, [rdx + 32]
14000b018: 83 f8 19                    	cmp	eax, 25
14000b01b: 41 8b c1                    	mov	eax, r9d
14000b01e: 0f 47 ca                    	cmova	ecx, edx
14000b021: 2b c1                       	sub	eax, ecx
14000b023: 75 0b                       	jne	0x14000b030 <.text+0xa030>
14000b025: 45 85 c9                    	test	r9d, r9d
14000b028: 74 06                       	je	0x14000b030 <.text+0xa030>
14000b02a: 49 83 e8 01                 	sub	r8, 1
14000b02e: 75 c6                       	jne	0x14000aff6 <.text+0x9ff6>
14000b030: c3                          	ret
14000b031: cc                          	int3
14000b032: cc                          	int3
14000b033: cc                          	int3
14000b034: 48 83 ec 28                 	sub	rsp, 40
14000b038: 83 3d 21 cd 00 00 00        	cmp	dword ptr [rip + 52513], 0 # 0x140017d60
14000b03f: 75 36                       	jne	0x14000b077 <.text+0xa077>
14000b041: 48 85 c9                    	test	rcx, rcx
14000b044: 75 1a                       	jne	0x14000b060 <.text+0xa060>
14000b046: e8 c5 9d ff ff              	call	0x140004e10 <.text+0x3e10>
14000b04b: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
14000b051: e8 9a 9c ff ff              	call	0x140004cf0 <.text+0x3cf0>
14000b056: b8 ff ff ff 7f              	mov	eax, 2147483647
14000b05b: 48 83 c4 28                 	add	rsp, 40
14000b05f: c3                          	ret
14000b060: 48 85 d2                    	test	rdx, rdx
14000b063: 74 e1                       	je	0x14000b046 <.text+0xa046>
14000b065: 49 81 f8 ff ff ff 7f        	cmp	r8, 2147483647
14000b06c: 77 d8                       	ja	0x14000b046 <.text+0xa046>
14000b06e: 48 83 c4 28                 	add	rsp, 40
14000b072: e9 71 ff ff ff              	jmp	0x14000afe8 <.text+0x9fe8>
14000b077: 45 33 c9                    	xor	r9d, r9d
14000b07a: 48 83 c4 28                 	add	rsp, 40
14000b07e: e9 01 00 00 00              	jmp	0x14000b084 <.text+0xa084>
14000b083: cc                          	int3
14000b084: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000b089: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000b08e: 57                          	push	rdi
14000b08f: 48 83 ec 40                 	sub	rsp, 64
14000b093: 49 8b d8                    	mov	rbx, r8
14000b096: 48 8b fa                    	mov	rdi, rdx
14000b099: 48 8b f1                    	mov	rsi, rcx
14000b09c: 48 85 c9                    	test	rcx, rcx
14000b09f: 75 17                       	jne	0x14000b0b8 <.text+0xa0b8>
14000b0a1: e8 6a 9d ff ff              	call	0x140004e10 <.text+0x3e10>
14000b0a6: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
14000b0ac: e8 3f 9c ff ff              	call	0x140004cf0 <.text+0x3cf0>
14000b0b1: b8 ff ff ff 7f              	mov	eax, 2147483647
14000b0b6: eb 69                       	jmp	0x14000b121 <.text+0xa121>
14000b0b8: 48 85 d2                    	test	rdx, rdx
14000b0bb: 74 e4                       	je	0x14000b0a1 <.text+0xa0a1>
14000b0bd: 48 81 fb ff ff ff 7f        	cmp	rbx, 2147483647
14000b0c4: 77 db                       	ja	0x14000b0a1 <.text+0xa0a1>
14000b0c6: 48 85 db                    	test	rbx, rbx
14000b0c9: 75 04                       	jne	0x14000b0cf <.text+0xa0cf>
14000b0cb: 33 c0                       	xor	eax, eax
14000b0cd: eb 52                       	jmp	0x14000b121 <.text+0xa121>
14000b0cf: 49 8b d1                    	mov	rdx, r9
14000b0d2: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
14000b0d7: e8 88 92 ff ff              	call	0x140004364 <.text+0x3364>
14000b0dc: 48 8b 44 24 28              	mov	rax, qword ptr [rsp + 40]
14000b0e1: 4c 8b 80 10 01 00 00        	mov	r8, qword ptr [rax + 272]
14000b0e8: 0f b6 06                    	movzx	eax, byte ptr [rsi]
14000b0eb: 48 ff c6                    	inc	rsi
14000b0ee: 42 0f b6 14 00              	movzx	edx, byte ptr [rax + r8]
14000b0f3: 0f b6 07                    	movzx	eax, byte ptr [rdi]
14000b0f6: 48 ff c7                    	inc	rdi
14000b0f9: 42 0f b6 0c 00              	movzx	ecx, byte ptr [rax + r8]
14000b0fe: 8b c2                       	mov	eax, edx
14000b100: 2b c1                       	sub	eax, ecx
14000b102: 75 0a                       	jne	0x14000b10e <.text+0xa10e>
14000b104: 85 d2                       	test	edx, edx
14000b106: 74 06                       	je	0x14000b10e <.text+0xa10e>
14000b108: 48 83 eb 01                 	sub	rbx, 1
14000b10c: 75 da                       	jne	0x14000b0e8 <.text+0xa0e8>
14000b10e: 80 7c 24 38 00              	cmp	byte ptr [rsp + 56], 0
14000b113: 74 0c                       	je	0x14000b121 <.text+0xa121>
14000b115: 48 8b 4c 24 20              	mov	rcx, qword ptr [rsp + 32]
14000b11a: 83 a1 a8 03 00 00 fd        	and	dword ptr [rcx + 936], -3
14000b121: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
14000b126: 48 8b 74 24 58              	mov	rsi, qword ptr [rsp + 88]
14000b12b: 48 83 c4 40                 	add	rsp, 64
14000b12f: 5f                          	pop	rdi
14000b130: c3                          	ret
14000b131: cc                          	int3
14000b132: cc                          	int3
14000b133: cc                          	int3
14000b134: 40 55                       	push	rbp
14000b136: 53                          	push	rbx
14000b137: 56                          	push	rsi
14000b138: 57                          	push	rdi
14000b139: 41 54                       	push	r12
14000b13b: 41 55                       	push	r13
14000b13d: 41 56                       	push	r14
14000b13f: 41 57                       	push	r15
14000b141: 48 81 ec 88 00 00 00        	sub	rsp, 136
14000b148: 48 8d 6c 24 50              	lea	rbp, [rsp + 80]
14000b14d: 48 8b 05 d4 be 00 00        	mov	rax, qword ptr [rip + 48852] # 0x140017028
14000b154: 48 33 c5                    	xor	rax, rbp
14000b157: 48 89 45 28                 	mov	qword ptr [rbp + 40], rax
14000b15b: 48 63 9d a0 00 00 00        	movsxd	rbx, dword ptr [rbp + 160]
14000b162: 45 33 e4                    	xor	r12d, r12d
14000b165: 4c 8b ad a8 00 00 00        	mov	r13, qword ptr [rbp + 168]
14000b16c: 4d 8b f9                    	mov	r15, r9
14000b16f: 44 89 45 00                 	mov	dword ptr [rbp], r8d
14000b173: 48 8b f9                    	mov	rdi, rcx
14000b176: 48 89 55 08                 	mov	qword ptr [rbp + 8], rdx
14000b17a: 85 db                       	test	ebx, ebx
14000b17c: 7e 10                       	jle	0x14000b18e <.text+0xa18e>
14000b17e: 48 8b d3                    	mov	rdx, rbx
14000b181: 49 8b c9                    	mov	rcx, r9
14000b184: e8 47 fe ff ff              	call	0x14000afd0 <.text+0x9fd0>
14000b189: 48 8b d8                    	mov	rbx, rax
14000b18c: eb 09                       	jmp	0x14000b197 <.text+0xa197>
14000b18e: 83 fb ff                    	cmp	ebx, -1
14000b191: 0f 8c db 02 00 00           	jl	0x14000b472 <.text+0xa472>
14000b197: 48 63 b5 b0 00 00 00        	movsxd	rsi, dword ptr [rbp + 176]
14000b19e: 85 f6                       	test	esi, esi
14000b1a0: 7e 10                       	jle	0x14000b1b2 <.text+0xa1b2>
14000b1a2: 48 8b d6                    	mov	rdx, rsi
14000b1a5: 49 8b cd                    	mov	rcx, r13
14000b1a8: e8 23 fe ff ff              	call	0x14000afd0 <.text+0x9fd0>
14000b1ad: 48 8b f0                    	mov	rsi, rax
14000b1b0: eb 09                       	jmp	0x14000b1bb <.text+0xa1bb>
14000b1b2: 83 fe ff                    	cmp	esi, -1
14000b1b5: 0f 8c b7 02 00 00           	jl	0x14000b472 <.text+0xa472>
14000b1bb: 44 8b b5 b8 00 00 00        	mov	r14d, dword ptr [rbp + 184]
14000b1c2: 45 85 f6                    	test	r14d, r14d
14000b1c5: 75 07                       	jne	0x14000b1ce <.text+0xa1ce>
14000b1c7: 48 8b 07                    	mov	rax, qword ptr [rdi]
14000b1ca: 44 8b 70 0c                 	mov	r14d, dword ptr [rax + 12]
14000b1ce: 85 db                       	test	ebx, ebx
14000b1d0: 74 08                       	je	0x14000b1da <.text+0xa1da>
14000b1d2: 85 f6                       	test	esi, esi
14000b1d4: 0f 85 a6 00 00 00           	jne	0x14000b280 <.text+0xa280>
14000b1da: 3b de                       	cmp	ebx, esi
14000b1dc: 0f 84 89 02 00 00           	je	0x14000b46b <.text+0xa46b>
14000b1e2: 83 fe 01                    	cmp	esi, 1
14000b1e5: 0f 8f 8b 00 00 00           	jg	0x14000b276 <.text+0xa276>
14000b1eb: 83 fb 01                    	cmp	ebx, 1
14000b1ee: 7f 48                       	jg	0x14000b238 <.text+0xa238>
14000b1f0: 48 8d 55 10                 	lea	rdx, [rbp + 16]
14000b1f4: 41 8b ce                    	mov	ecx, r14d
14000b1f7: ff 15 7b 2f 00 00           	call	qword ptr [rip + 12155] # 0x14000e178
14000b1fd: 85 c0                       	test	eax, eax
14000b1ff: 0f 84 6d 02 00 00           	je	0x14000b472 <.text+0xa472>
14000b205: 85 db                       	test	ebx, ebx
14000b207: 7e 39                       	jle	0x14000b242 <.text+0xa242>
14000b209: 83 7d 10 02                 	cmp	dword ptr [rbp + 16], 2
14000b20d: 72 29                       	jb	0x14000b238 <.text+0xa238>
14000b20f: 48 8d 45 16                 	lea	rax, [rbp + 22]
14000b213: 44 38 65 16                 	cmp	byte ptr [rbp + 22], r12b
14000b217: 74 1f                       	je	0x14000b238 <.text+0xa238>
14000b219: 44 38 60 01                 	cmp	byte ptr [rax + 1], r12b
14000b21d: 74 19                       	je	0x14000b238 <.text+0xa238>
14000b21f: 41 8a 0f                    	mov	cl, byte ptr [r15]
14000b222: 3a 08                       	cmp	cl, byte ptr [rax]
14000b224: 72 09                       	jb	0x14000b22f <.text+0xa22f>
14000b226: 3a 48 01                    	cmp	cl, byte ptr [rax + 1]
14000b229: 0f 86 3c 02 00 00           	jbe	0x14000b46b <.text+0xa46b>
14000b22f: 48 83 c0 02                 	add	rax, 2
14000b233: 44 38 20                    	cmp	byte ptr [rax], r12b
14000b236: 75 e1                       	jne	0x14000b219 <.text+0xa219>
14000b238: b8 03 00 00 00              	mov	eax, 3
14000b23d: e9 32 02 00 00              	jmp	0x14000b474 <.text+0xa474>
14000b242: 85 f6                       	test	esi, esi
14000b244: 7e 3a                       	jle	0x14000b280 <.text+0xa280>
14000b246: 83 7d 10 02                 	cmp	dword ptr [rbp + 16], 2
14000b24a: 72 2a                       	jb	0x14000b276 <.text+0xa276>
14000b24c: 48 8d 45 16                 	lea	rax, [rbp + 22]
14000b250: 44 38 65 16                 	cmp	byte ptr [rbp + 22], r12b
14000b254: 74 20                       	je	0x14000b276 <.text+0xa276>
14000b256: 44 38 60 01                 	cmp	byte ptr [rax + 1], r12b
14000b25a: 74 1a                       	je	0x14000b276 <.text+0xa276>
14000b25c: 41 8a 4d 00                 	mov	cl, byte ptr [r13]
14000b260: 3a 08                       	cmp	cl, byte ptr [rax]
14000b262: 72 09                       	jb	0x14000b26d <.text+0xa26d>
14000b264: 3a 48 01                    	cmp	cl, byte ptr [rax + 1]
14000b267: 0f 86 fe 01 00 00           	jbe	0x14000b46b <.text+0xa46b>
14000b26d: 48 83 c0 02                 	add	rax, 2
14000b271: 44 38 20                    	cmp	byte ptr [rax], r12b
14000b274: 75 e0                       	jne	0x14000b256 <.text+0xa256>
14000b276: b8 01 00 00 00              	mov	eax, 1
14000b27b: e9 f4 01 00 00              	jmp	0x14000b474 <.text+0xa474>
14000b280: 44 89 64 24 28              	mov	dword ptr [rsp + 40], r12d
14000b285: 44 8b cb                    	mov	r9d, ebx
14000b288: 4d 8b c7                    	mov	r8, r15
14000b28b: 4c 89 64 24 20              	mov	qword ptr [rsp + 32], r12
14000b290: ba 09 00 00 00              	mov	edx, 9
14000b295: 41 8b ce                    	mov	ecx, r14d
14000b298: e8 2f b3 ff ff              	call	0x1400065cc <.text+0x55cc>
14000b29d: 4c 63 e0                    	movsxd	r12, eax
14000b2a0: 85 c0                       	test	eax, eax
14000b2a2: 0f 84 ca 01 00 00           	je	0x14000b472 <.text+0xa472>
14000b2a8: 49 8b cc                    	mov	rcx, r12
14000b2ab: 49 b8 f0 ff ff ff ff ff ff 0f       	movabs	r8, 1152921504606846960
14000b2b5: 48 03 c9                    	add	rcx, rcx
14000b2b8: 48 8d 51 10                 	lea	rdx, [rcx + 16]
14000b2bc: 48 3b ca                    	cmp	rcx, rdx
14000b2bf: 48 1b c9                    	sbb	rcx, rcx
14000b2c2: 48 23 ca                    	and	rcx, rdx
14000b2c5: 74 50                       	je	0x14000b317 <.text+0xa317>
14000b2c7: 48 81 f9 00 04 00 00        	cmp	rcx, 1024
14000b2ce: 77 2e                       	ja	0x14000b2fe <.text+0xa2fe>
14000b2d0: 48 8d 41 0f                 	lea	rax, [rcx + 15]
14000b2d4: 48 3b c1                    	cmp	rax, rcx
14000b2d7: 77 03                       	ja	0x14000b2dc <.text+0xa2dc>
14000b2d9: 49 8b c0                    	mov	rax, r8
14000b2dc: 48 83 e0 f0                 	and	rax, -16
14000b2e0: e8 fb 1a 00 00              	call	0x14000cde0 <.text+0xbde0>
14000b2e5: 48 2b e0                    	sub	rsp, rax
14000b2e8: 48 8d 7c 24 50              	lea	rdi, [rsp + 80]
14000b2ed: 48 85 ff                    	test	rdi, rdi
14000b2f0: 0f 84 59 01 00 00           	je	0x14000b44f <.text+0xa44f>
14000b2f6: c7 07 cc cc 00 00           	mov	dword ptr [rdi], 52428
14000b2fc: eb 13                       	jmp	0x14000b311 <.text+0xa311>
14000b2fe: e8 9d c2 ff ff              	call	0x1400075a0 <.text+0x65a0>
14000b303: 48 8b f8                    	mov	rdi, rax
14000b306: 48 85 c0                    	test	rax, rax
14000b309: 74 0e                       	je	0x14000b319 <.text+0xa319>
14000b30b: c7 00 dd dd 00 00           	mov	dword ptr [rax], 56797
14000b311: 48 83 c7 10                 	add	rdi, 16
14000b315: eb 02                       	jmp	0x14000b319 <.text+0xa319>
14000b317: 33 ff                       	xor	edi, edi
14000b319: 48 85 ff                    	test	rdi, rdi
14000b31c: 0f 84 2d 01 00 00           	je	0x14000b44f <.text+0xa44f>
14000b322: 44 89 64 24 28              	mov	dword ptr [rsp + 40], r12d
14000b327: 44 8b cb                    	mov	r9d, ebx
14000b32a: 4d 8b c7                    	mov	r8, r15
14000b32d: 48 89 7c 24 20              	mov	qword ptr [rsp + 32], rdi
14000b332: ba 01 00 00 00              	mov	edx, 1
14000b337: 41 8b ce                    	mov	ecx, r14d
14000b33a: e8 8d b2 ff ff              	call	0x1400065cc <.text+0x55cc>
14000b33f: 85 c0                       	test	eax, eax
14000b341: 0f 84 08 01 00 00           	je	0x14000b44f <.text+0xa44f>
14000b347: 83 64 24 28 00              	and	dword ptr [rsp + 40], 0
14000b34c: 44 8b ce                    	mov	r9d, esi
14000b34f: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000b355: 4d 8b c5                    	mov	r8, r13
14000b358: ba 09 00 00 00              	mov	edx, 9
14000b35d: 41 8b ce                    	mov	ecx, r14d
14000b360: e8 67 b2 ff ff              	call	0x1400065cc <.text+0x55cc>
14000b365: 4c 63 f8                    	movsxd	r15, eax
14000b368: 85 c0                       	test	eax, eax
14000b36a: 0f 84 df 00 00 00           	je	0x14000b44f <.text+0xa44f>
14000b370: 49 8b d7                    	mov	rdx, r15
14000b373: 48 03 d2                    	add	rdx, rdx
14000b376: 48 8d 4a 10                 	lea	rcx, [rdx + 16]
14000b37a: 48 3b d1                    	cmp	rdx, rcx
14000b37d: 48 1b d2                    	sbb	rdx, rdx
14000b380: 48 23 d1                    	and	rdx, rcx
14000b383: 74 56                       	je	0x14000b3db <.text+0xa3db>
14000b385: 48 81 fa 00 04 00 00        	cmp	rdx, 1024
14000b38c: 77 31                       	ja	0x14000b3bf <.text+0xa3bf>
14000b38e: 48 8d 42 0f                 	lea	rax, [rdx + 15]
14000b392: 48 3b c2                    	cmp	rax, rdx
14000b395: 77 0a                       	ja	0x14000b3a1 <.text+0xa3a1>
14000b397: 48 b8 f0 ff ff ff ff ff ff 0f       	movabs	rax, 1152921504606846960
14000b3a1: 48 83 e0 f0                 	and	rax, -16
14000b3a5: e8 36 1a 00 00              	call	0x14000cde0 <.text+0xbde0>
14000b3aa: 48 2b e0                    	sub	rsp, rax
14000b3ad: 48 8d 5c 24 50              	lea	rbx, [rsp + 80]
14000b3b2: 48 85 db                    	test	rbx, rbx
14000b3b5: 74 7e                       	je	0x14000b435 <.text+0xa435>
14000b3b7: c7 03 cc cc 00 00           	mov	dword ptr [rbx], 52428
14000b3bd: eb 16                       	jmp	0x14000b3d5 <.text+0xa3d5>
14000b3bf: 48 8b ca                    	mov	rcx, rdx
14000b3c2: e8 d9 c1 ff ff              	call	0x1400075a0 <.text+0x65a0>
14000b3c7: 48 8b d8                    	mov	rbx, rax
14000b3ca: 48 85 c0                    	test	rax, rax
14000b3cd: 74 0e                       	je	0x14000b3dd <.text+0xa3dd>
14000b3cf: c7 00 dd dd 00 00           	mov	dword ptr [rax], 56797
14000b3d5: 48 83 c3 10                 	add	rbx, 16
14000b3d9: eb 02                       	jmp	0x14000b3dd <.text+0xa3dd>
14000b3db: 33 db                       	xor	ebx, ebx
14000b3dd: 48 85 db                    	test	rbx, rbx
14000b3e0: 74 53                       	je	0x14000b435 <.text+0xa435>
14000b3e2: 44 89 7c 24 28              	mov	dword ptr [rsp + 40], r15d
14000b3e7: 44 8b ce                    	mov	r9d, esi
14000b3ea: 4d 8b c5                    	mov	r8, r13
14000b3ed: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000b3f2: ba 01 00 00 00              	mov	edx, 1
14000b3f7: 41 8b ce                    	mov	ecx, r14d
14000b3fa: e8 cd b1 ff ff              	call	0x1400065cc <.text+0x55cc>
14000b3ff: 85 c0                       	test	eax, eax
14000b401: 74 32                       	je	0x14000b435 <.text+0xa435>
14000b403: 48 83 64 24 40 00           	and	qword ptr [rsp + 64], 0
14000b409: 45 8b cc                    	mov	r9d, r12d
14000b40c: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
14000b412: 4c 8b c7                    	mov	r8, rdi
14000b415: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
14000b41b: 8b 55 00                    	mov	edx, dword ptr [rbp]
14000b41e: 48 8b 4d 08                 	mov	rcx, qword ptr [rbp + 8]
14000b422: 44 89 7c 24 28              	mov	dword ptr [rsp + 40], r15d
14000b427: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000b42c: e8 cf c9 ff ff              	call	0x140007e00 <.text+0x6e00>
14000b431: 8b f0                       	mov	esi, eax
14000b433: eb 02                       	jmp	0x14000b437 <.text+0xa437>
14000b435: 33 f6                       	xor	esi, esi
14000b437: 48 85 db                    	test	rbx, rbx
14000b43a: 74 15                       	je	0x14000b451 <.text+0xa451>
14000b43c: 48 8d 4b f0                 	lea	rcx, [rbx - 16]
14000b440: 81 39 dd dd 00 00           	cmp	dword ptr [rcx], 56797
14000b446: 75 09                       	jne	0x14000b451 <.text+0xa451>
14000b448: e8 5b 9a ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000b44d: eb 02                       	jmp	0x14000b451 <.text+0xa451>
14000b44f: 33 f6                       	xor	esi, esi
14000b451: 48 85 ff                    	test	rdi, rdi
14000b454: 74 11                       	je	0x14000b467 <.text+0xa467>
14000b456: 48 8d 4f f0                 	lea	rcx, [rdi - 16]
14000b45a: 81 39 dd dd 00 00           	cmp	dword ptr [rcx], 56797
14000b460: 75 05                       	jne	0x14000b467 <.text+0xa467>
14000b462: e8 41 9a ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000b467: 8b c6                       	mov	eax, esi
14000b469: eb 09                       	jmp	0x14000b474 <.text+0xa474>
14000b46b: b8 02 00 00 00              	mov	eax, 2
14000b470: eb 02                       	jmp	0x14000b474 <.text+0xa474>
14000b472: 33 c0                       	xor	eax, eax
14000b474: 48 8b 4d 28                 	mov	rcx, qword ptr [rbp + 40]
14000b478: 48 33 cd                    	xor	rcx, rbp
14000b47b: e8 90 16 00 00              	call	0x14000cb10 <.text+0xbb10>
14000b480: 48 8d 65 38                 	lea	rsp, [rbp + 56]
14000b484: 41 5f                       	pop	r15
14000b486: 41 5e                       	pop	r14
14000b488: 41 5d                       	pop	r13
14000b48a: 41 5c                       	pop	r12
14000b48c: 5f                          	pop	rdi
14000b48d: 5e                          	pop	rsi
14000b48e: 5b                          	pop	rbx
14000b48f: 5d                          	pop	rbp
14000b490: c3                          	ret
14000b491: cc                          	int3
14000b492: cc                          	int3
14000b493: cc                          	int3
14000b494: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000b499: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000b49e: 57                          	push	rdi
14000b49f: 48 83 ec 60                 	sub	rsp, 96
14000b4a3: 48 8b f2                    	mov	rsi, rdx
14000b4a6: 49 8b d9                    	mov	rbx, r9
14000b4a9: 48 8b d1                    	mov	rdx, rcx
14000b4ac: 41 8b f8                    	mov	edi, r8d
14000b4af: 48 8d 4c 24 40              	lea	rcx, [rsp + 64]
14000b4b4: e8 ab 8e ff ff              	call	0x140004364 <.text+0x3364>
14000b4b9: 8b 84 24 a8 00 00 00        	mov	eax, dword ptr [rsp + 168]
14000b4c0: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
14000b4c5: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
14000b4c9: 4c 8b cb                    	mov	r9, rbx
14000b4cc: 8b 84 24 a0 00 00 00        	mov	eax, dword ptr [rsp + 160]
14000b4d3: 44 8b c7                    	mov	r8d, edi
14000b4d6: 89 44 24 30                 	mov	dword ptr [rsp + 48], eax
14000b4da: 48 8b d6                    	mov	rdx, rsi
14000b4dd: 48 8b 84 24 98 00 00 00     	mov	rax, qword ptr [rsp + 152]
14000b4e5: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
14000b4ea: 8b 84 24 90 00 00 00        	mov	eax, dword ptr [rsp + 144]
14000b4f1: 89 44 24 20                 	mov	dword ptr [rsp + 32], eax
14000b4f5: e8 3a fc ff ff              	call	0x14000b134 <.text+0xa134>
14000b4fa: 80 7c 24 58 00              	cmp	byte ptr [rsp + 88], 0
14000b4ff: 74 0c                       	je	0x14000b50d <.text+0xa50d>
14000b501: 48 8b 4c 24 40              	mov	rcx, qword ptr [rsp + 64]
14000b506: 83 a1 a8 03 00 00 fd        	and	dword ptr [rcx + 936], -3
14000b50d: 48 8b 5c 24 70              	mov	rbx, qword ptr [rsp + 112]
14000b512: 48 8b 74 24 78              	mov	rsi, qword ptr [rsp + 120]
14000b517: 48 83 c4 60                 	add	rsp, 96
14000b51b: 5f                          	pop	rdi
14000b51c: c3                          	ret
14000b51d: cc                          	int3
14000b51e: cc                          	int3
14000b51f: cc                          	int3
14000b520: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000b525: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000b52a: 57                          	push	rdi
14000b52b: 48 83 ec 20                 	sub	rsp, 32
14000b52f: 48 63 d9                    	movsxd	rbx, ecx
14000b532: 41 8b f8                    	mov	edi, r8d
14000b535: 8b cb                       	mov	ecx, ebx
14000b537: 48 8b f2                    	mov	rsi, rdx
14000b53a: e8 4d ba ff ff              	call	0x140006f8c <.text+0x5f8c>
14000b53f: 48 83 f8 ff                 	cmp	rax, -1
14000b543: 75 11                       	jne	0x14000b556 <.text+0xa556>
14000b545: e8 c6 98 ff ff              	call	0x140004e10 <.text+0x3e10>
14000b54a: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000b550: 48 83 c8 ff                 	or	rax, -1
14000b554: eb 53                       	jmp	0x14000b5a9 <.text+0xa5a9>
14000b556: 44 8b cf                    	mov	r9d, edi
14000b559: 4c 8d 44 24 48              	lea	r8, [rsp + 72]
14000b55e: 48 8b d6                    	mov	rdx, rsi
14000b561: 48 8b c8                    	mov	rcx, rax
14000b564: ff 15 96 2c 00 00           	call	qword ptr [rip + 11414] # 0x14000e200
14000b56a: 85 c0                       	test	eax, eax
14000b56c: 75 0f                       	jne	0x14000b57d <.text+0xa57d>
14000b56e: ff 15 0c 2b 00 00           	call	qword ptr [rip + 11020] # 0x14000e080
14000b574: 8b c8                       	mov	ecx, eax
14000b576: e8 25 98 ff ff              	call	0x140004da0 <.text+0x3da0>
14000b57b: eb d3                       	jmp	0x14000b550 <.text+0xa550>
14000b57d: 48 8b 44 24 48              	mov	rax, qword ptr [rsp + 72]
14000b582: 48 83 f8 ff                 	cmp	rax, -1
14000b586: 74 c8                       	je	0x14000b550 <.text+0xa550>
14000b588: 48 8b d3                    	mov	rdx, rbx
14000b58b: 4c 8d 05 7e ca 00 00        	lea	r8, [rip + 51838]       # 0x140018010
14000b592: 83 e2 3f                    	and	edx, 63
14000b595: 48 8b cb                    	mov	rcx, rbx
14000b598: 48 c1 f9 06                 	sar	rcx, 6
14000b59c: 48 8d 14 d2                 	lea	rdx, [rdx + 8*rdx]
14000b5a0: 49 8b 0c c8                 	mov	rcx, qword ptr [r8 + 8*rcx]
14000b5a4: 80 64 d1 38 fd              	and	byte ptr [rcx + 8*rdx + 56], -3
14000b5a9: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000b5ae: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
14000b5b3: 48 83 c4 20                 	add	rsp, 32
14000b5b7: 5f                          	pop	rdi
14000b5b8: c3                          	ret
14000b5b9: cc                          	int3
14000b5ba: cc                          	int3
14000b5bb: cc                          	int3
14000b5bc: e9 5f ff ff ff              	jmp	0x14000b520 <.text+0xa520>
14000b5c1: cc                          	int3
14000b5c2: cc                          	int3
14000b5c3: cc                          	int3
14000b5c4: 66 89 4c 24 08              	mov	word ptr [rsp + 8], cx
14000b5c9: 48 83 ec 28                 	sub	rsp, 40
14000b5cd: e8 9a 08 00 00              	call	0x14000be6c <.text+0xae6c>
14000b5d2: 85 c0                       	test	eax, eax
14000b5d4: 74 1f                       	je	0x14000b5f5 <.text+0xa5f5>
14000b5d6: 4c 8d 44 24 38              	lea	r8, [rsp + 56]
14000b5db: ba 01 00 00 00              	mov	edx, 1
14000b5e0: 48 8d 4c 24 30              	lea	rcx, [rsp + 48]
14000b5e5: e8 f2 08 00 00              	call	0x14000bedc <.text+0xaedc>
14000b5ea: 85 c0                       	test	eax, eax
14000b5ec: 74 07                       	je	0x14000b5f5 <.text+0xa5f5>
14000b5ee: 0f b7 44 24 30              	movzx	eax, word ptr [rsp + 48]
14000b5f3: eb 05                       	jmp	0x14000b5fa <.text+0xa5fa>
14000b5f5: b8 ff ff 00 00              	mov	eax, 65535
14000b5fa: 48 83 c4 28                 	add	rsp, 40
14000b5fe: c3                          	ret
14000b5ff: cc                          	int3
14000b600: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000b605: 57                          	push	rdi
14000b606: 48 83 ec 20                 	sub	rsp, 32
14000b60a: 48 8b d9                    	mov	rbx, rcx
14000b60d: 48 85 c9                    	test	rcx, rcx
14000b610: 75 15                       	jne	0x14000b627 <.text+0xa627>
14000b612: e8 f9 97 ff ff              	call	0x140004e10 <.text+0x3e10>
14000b617: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
14000b61d: e8 ce 96 ff ff              	call	0x140004cf0 <.text+0x3cf0>
14000b622: 83 c8 ff                    	or	eax, -1
14000b625: eb 51                       	jmp	0x14000b678 <.text+0xa678>
14000b627: 8b 41 14                    	mov	eax, dword ptr [rcx + 20]
14000b62a: 83 cf ff                    	or	edi, -1
14000b62d: c1 e8 0d                    	shr	eax, 13
14000b630: a8 01                       	test	al, 1
14000b632: 74 3a                       	je	0x14000b66e <.text+0xa66e>
14000b634: e8 9f d2 ff ff              	call	0x1400088d8 <.text+0x78d8>
14000b639: 48 8b cb                    	mov	rcx, rbx
14000b63c: 8b f8                       	mov	edi, eax
14000b63e: e8 ed f6 ff ff              	call	0x14000ad30 <.text+0x9d30>
14000b643: 48 8b cb                    	mov	rcx, rbx
14000b646: e8 e1 d6 ff ff              	call	0x140008d2c <.text+0x7d2c>
14000b64b: 8b c8                       	mov	ecx, eax
14000b64d: e8 be 09 00 00              	call	0x14000c010 <.text+0xb010>
14000b652: 85 c0                       	test	eax, eax
14000b654: 79 05                       	jns	0x14000b65b <.text+0xa65b>
14000b656: 83 cf ff                    	or	edi, -1
14000b659: eb 13                       	jmp	0x14000b66e <.text+0xa66e>
14000b65b: 48 8b 4b 28                 	mov	rcx, qword ptr [rbx + 40]
14000b65f: 48 85 c9                    	test	rcx, rcx
14000b662: 74 0a                       	je	0x14000b66e <.text+0xa66e>
14000b664: e8 3f 98 ff ff              	call	0x140004ea8 <.text+0x3ea8>
14000b669: 48 83 63 28 00              	and	qword ptr [rbx + 40], 0
14000b66e: 48 8b cb                    	mov	rcx, rbx
14000b671: e8 fe 0a 00 00              	call	0x14000c174 <.text+0xb174>
14000b676: 8b c7                       	mov	eax, edi
14000b678: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000b67d: 48 83 c4 20                 	add	rsp, 32
14000b681: 5f                          	pop	rdi
14000b682: c3                          	ret
14000b683: cc                          	int3
14000b684: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
14000b689: 48 89 4c 24 08              	mov	qword ptr [rsp + 8], rcx
14000b68e: 57                          	push	rdi
14000b68f: 48 83 ec 20                 	sub	rsp, 32
14000b693: 48 8b d9                    	mov	rbx, rcx
14000b696: 48 85 c9                    	test	rcx, rcx
14000b699: 75 1e                       	jne	0x14000b6b9 <.text+0xa6b9>
14000b69b: e8 70 97 ff ff              	call	0x140004e10 <.text+0x3e10>
14000b6a0: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
14000b6a6: e8 45 96 ff ff              	call	0x140004cf0 <.text+0x3cf0>
14000b6ab: 83 c8 ff                    	or	eax, -1
14000b6ae: 48 8b 5c 24 38              	mov	rbx, qword ptr [rsp + 56]
14000b6b3: 48 83 c4 20                 	add	rsp, 32
14000b6b7: 5f                          	pop	rdi
14000b6b8: c3                          	ret
14000b6b9: 8b 41 14                    	mov	eax, dword ptr [rcx + 20]
14000b6bc: c1 e8 0c                    	shr	eax, 12
14000b6bf: a8 01                       	test	al, 1
14000b6c1: 74 07                       	je	0x14000b6ca <.text+0xa6ca>
14000b6c3: e8 ac 0a 00 00              	call	0x14000c174 <.text+0xb174>
14000b6c8: eb e1                       	jmp	0x14000b6ab <.text+0xa6ab>
14000b6ca: e8 55 d4 ff ff              	call	0x140008b24 <.text+0x7b24>
14000b6cf: 90                          	nop
14000b6d0: 48 8b cb                    	mov	rcx, rbx
14000b6d3: e8 28 ff ff ff              	call	0x14000b600 <.text+0xa600>
14000b6d8: 8b f8                       	mov	edi, eax
14000b6da: 48 8b cb                    	mov	rcx, rbx
14000b6dd: e8 4e d4 ff ff              	call	0x140008b30 <.text+0x7b30>
14000b6e2: 8b c7                       	mov	eax, edi
14000b6e4: eb c8                       	jmp	0x14000b6ae <.text+0xa6ae>
14000b6e6: cc                          	int3
14000b6e7: cc                          	int3
14000b6e8: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
14000b6ed: 55                          	push	rbp
14000b6ee: 56                          	push	rsi
14000b6ef: 57                          	push	rdi
14000b6f0: 41 56                       	push	r14
14000b6f2: 41 57                       	push	r15
14000b6f4: 48 83 ec 40                 	sub	rsp, 64
14000b6f8: 48 8b 05 29 b9 00 00        	mov	rax, qword ptr [rip + 47401] # 0x140017028
14000b6ff: 48 33 c4                    	xor	rax, rsp
14000b702: 48 89 44 24 30              	mov	qword ptr [rsp + 48], rax
14000b707: 45 33 d2                    	xor	r10d, r10d
14000b70a: 4c 8d 1d 1f cf 00 00        	lea	r11, [rip + 53023]      # 0x140018630
14000b711: 4d 85 c9                    	test	r9, r9
14000b714: 48 8d 3d e7 33 00 00        	lea	rdi, [rip + 13287]      # 0x14000eb02
14000b71b: 48 8b c2                    	mov	rax, rdx
14000b71e: 4c 8b fa                    	mov	r15, rdx
14000b721: 4d 0f 45 d9                 	cmovne	r11, r9
14000b725: 48 85 d2                    	test	rdx, rdx
14000b728: 41 8d 6a 01                 	lea	ebp, [r10 + 1]
14000b72c: 48 0f 45 fa                 	cmovne	rdi, rdx
14000b730: 44 8b f5                    	mov	r14d, ebp
14000b733: 4d 0f 45 f0                 	cmovne	r14, r8
14000b737: 48 f7 d8                    	neg	rax
14000b73a: 48 1b f6                    	sbb	rsi, rsi
14000b73d: 48 23 f1                    	and	rsi, rcx
14000b740: 4d 85 f6                    	test	r14, r14
14000b743: 75 0c                       	jne	0x14000b751 <.text+0xa751>
14000b745: 48 c7 c0 fe ff ff ff        	mov	rax, -2
14000b74c: e9 4e 01 00 00              	jmp	0x14000b89f <.text+0xa89f>
14000b751: 66 45 39 53 06              	cmp	word ptr [r11 + 6], r10w
14000b756: 75 68                       	jne	0x14000b7c0 <.text+0xa7c0>
14000b758: 44 0f b6 0f                 	movzx	r9d, byte ptr [rdi]
14000b75c: 48 ff c7                    	inc	rdi
14000b75f: 45 84 c9                    	test	r9b, r9b
14000b762: 78 17                       	js	0x14000b77b <.text+0xa77b>
14000b764: 48 85 f6                    	test	rsi, rsi
14000b767: 74 03                       	je	0x14000b76c <.text+0xa76c>
14000b769: 44 89 0e                    	mov	dword ptr [rsi], r9d
14000b76c: 45 84 c9                    	test	r9b, r9b
14000b76f: 41 0f 95 c2                 	setne	r10b
14000b773: 49 8b c2                    	mov	rax, r10
14000b776: e9 24 01 00 00              	jmp	0x14000b89f <.text+0xa89f>
14000b77b: 41 8a c1                    	mov	al, r9b
14000b77e: 24 e0                       	and	al, -32
14000b780: 3c c0                       	cmp	al, -64
14000b782: 75 05                       	jne	0x14000b789 <.text+0xa789>
14000b784: 41 b0 02                    	mov	r8b, 2
14000b787: eb 1e                       	jmp	0x14000b7a7 <.text+0xa7a7>
14000b789: 41 8a c1                    	mov	al, r9b
14000b78c: 24 f0                       	and	al, -16
14000b78e: 3c e0                       	cmp	al, -32
14000b790: 75 05                       	jne	0x14000b797 <.text+0xa797>
14000b792: 41 b0 03                    	mov	r8b, 3
14000b795: eb 10                       	jmp	0x14000b7a7 <.text+0xa7a7>
14000b797: 41 8a c1                    	mov	al, r9b
14000b79a: 24 f8                       	and	al, -8
14000b79c: 3c f0                       	cmp	al, -16
14000b79e: 0f 85 e9 00 00 00           	jne	0x14000b88d <.text+0xa88d>
14000b7a4: 41 b0 04                    	mov	r8b, 4
14000b7a7: 41 0f b6 c0                 	movzx	eax, r8b
14000b7ab: b9 07 00 00 00              	mov	ecx, 7
14000b7b0: 2b c8                       	sub	ecx, eax
14000b7b2: 8b d5                       	mov	edx, ebp
14000b7b4: d3 e2                       	shl	edx, cl
14000b7b6: 41 8a d8                    	mov	bl, r8b
14000b7b9: 2b d5                       	sub	edx, ebp
14000b7bb: 41 23 d1                    	and	edx, r9d
14000b7be: eb 29                       	jmp	0x14000b7e9 <.text+0xa7e9>
14000b7c0: 45 8a 43 04                 	mov	r8b, byte ptr [r11 + 4]
14000b7c4: 41 8b 13                    	mov	edx, dword ptr [r11]
14000b7c7: 41 8a 5b 06                 	mov	bl, byte ptr [r11 + 6]
14000b7cb: 41 8d 40 fe                 	lea	eax, [r8 - 2]
14000b7cf: 3c 02                       	cmp	al, 2
14000b7d1: 0f 87 b6 00 00 00           	ja	0x14000b88d <.text+0xa88d>
14000b7d7: 40 3a dd                    	cmp	bl, bpl
14000b7da: 0f 82 ad 00 00 00           	jb	0x14000b88d <.text+0xa88d>
14000b7e0: 41 3a d8                    	cmp	bl, r8b
14000b7e3: 0f 83 a4 00 00 00           	jae	0x14000b88d <.text+0xa88d>
14000b7e9: 0f b6 eb                    	movzx	ebp, bl
14000b7ec: 49 3b ee                    	cmp	rbp, r14
14000b7ef: 44 8b cd                    	mov	r9d, ebp
14000b7f2: 4d 0f 43 ce                 	cmovae	r9, r14
14000b7f6: eb 1e                       	jmp	0x14000b816 <.text+0xa816>
14000b7f8: 0f b6 0f                    	movzx	ecx, byte ptr [rdi]
14000b7fb: 48 ff c7                    	inc	rdi
14000b7fe: 8a c1                       	mov	al, cl
14000b800: 24 c0                       	and	al, -64
14000b802: 3c 80                       	cmp	al, -128
14000b804: 0f 85 83 00 00 00           	jne	0x14000b88d <.text+0xa88d>
14000b80a: 8b c2                       	mov	eax, edx
14000b80c: 83 e1 3f                    	and	ecx, 63
14000b80f: c1 e0 06                    	shl	eax, 6
14000b812: 8b d1                       	mov	edx, ecx
14000b814: 0b d0                       	or	edx, eax
14000b816: 48 8b c7                    	mov	rax, rdi
14000b819: 49 2b c7                    	sub	rax, r15
14000b81c: 49 3b c1                    	cmp	rax, r9
14000b81f: 72 d7                       	jb	0x14000b7f8 <.text+0xa7f8>
14000b821: 4c 3b cd                    	cmp	r9, rbp
14000b824: 73 1c                       	jae	0x14000b842 <.text+0xa842>
14000b826: 41 0f b6 c0                 	movzx	eax, r8b
14000b82a: 41 2a d9                    	sub	bl, r9b
14000b82d: 66 41 89 43 04              	mov	word ptr [r11 + 4], ax
14000b832: 0f b6 c3                    	movzx	eax, bl
14000b835: 66 41 89 43 06              	mov	word ptr [r11 + 6], ax
14000b83a: 41 89 13                    	mov	dword ptr [r11], edx
14000b83d: e9 03 ff ff ff              	jmp	0x14000b745 <.text+0xa745>
14000b842: 8d 82 00 28 ff ff           	lea	eax, [rdx - 55296]
14000b848: 3d ff 07 00 00              	cmp	eax, 2047
14000b84d: 76 3e                       	jbe	0x14000b88d <.text+0xa88d>
14000b84f: 81 fa 00 00 11 00           	cmp	edx, 1114112
14000b855: 73 36                       	jae	0x14000b88d <.text+0xa88d>
14000b857: 41 0f b6 c0                 	movzx	eax, r8b
14000b85b: c7 44 24 20 80 00 00 00     	mov	dword ptr [rsp + 32], 128
14000b863: c7 44 24 24 00 08 00 00     	mov	dword ptr [rsp + 36], 2048
14000b86b: c7 44 24 28 00 00 01 00     	mov	dword ptr [rsp + 40], 65536
14000b873: 3b 54 84 18                 	cmp	edx, dword ptr [rsp + 4*rax + 24]
14000b877: 72 14                       	jb	0x14000b88d <.text+0xa88d>
14000b879: 48 85 f6                    	test	rsi, rsi
14000b87c: 74 02                       	je	0x14000b880 <.text+0xa880>
14000b87e: 89 16                       	mov	dword ptr [rsi], edx
14000b880: f7 da                       	neg	edx
14000b882: 4d 89 13                    	mov	qword ptr [r11], r10
14000b885: 48 1b c0                    	sbb	rax, rax
14000b888: 48 23 c5                    	and	rax, rbp
14000b88b: eb 12                       	jmp	0x14000b89f <.text+0xa89f>
14000b88d: 4d 89 13                    	mov	qword ptr [r11], r10
14000b890: e8 7b 95 ff ff              	call	0x140004e10 <.text+0x3e10>
14000b895: c7 00 2a 00 00 00           	mov	dword ptr [rax], 42
14000b89b: 48 83 c8 ff                 	or	rax, -1
14000b89f: 48 8b 4c 24 30              	mov	rcx, qword ptr [rsp + 48]
14000b8a4: 48 33 cc                    	xor	rcx, rsp
14000b8a7: e8 64 12 00 00              	call	0x14000cb10 <.text+0xbb10>
14000b8ac: 48 8b 5c 24 78              	mov	rbx, qword ptr [rsp + 120]
14000b8b1: 48 83 c4 40                 	add	rsp, 64
14000b8b5: 41 5f                       	pop	r15
14000b8b7: 41 5e                       	pop	r14
14000b8b9: 5f                          	pop	rdi
14000b8ba: 5e                          	pop	rsi
14000b8bb: 5d                          	pop	rbp
14000b8bc: c3                          	ret
14000b8bd: cc                          	int3
14000b8be: cc                          	int3
14000b8bf: cc                          	int3
14000b8c0: 48 83 ec 58                 	sub	rsp, 88
14000b8c4: 66 0f 7f 74 24 20           	movdqa	xmmword ptr [rsp + 32], xmm6
14000b8ca: 83 3d 6b cd 00 00 00        	cmp	dword ptr [rip + 52587], 0 # 0x14001863c
14000b8d1: 0f 85 e9 02 00 00           	jne	0x14000bbc0 <.text+0xabc0>
14000b8d7: 66 0f 28 d8                 	movapd	xmm3, xmm0
14000b8db: 66 0f 28 e0                 	movapd	xmm4, xmm0
14000b8df: 66 0f 73 d3 34              	psrlq	xmm3, 52
14000b8e4: 66 48 0f 7e c0              	movq	rax, xmm0
14000b8e9: 66 0f fb 1d 9f 82 00 00     	psubq	xmm3, xmmword ptr [rip + 33439] # 0x140013b90
14000b8f1: 66 0f 28 e8                 	movapd	xmm5, xmm0
14000b8f5: 66 0f 54 2d 63 82 00 00     	andpd	xmm5, xmmword ptr [rip + 33379] # 0x140013b60
14000b8fd: 66 0f 2f 2d 5b 82 00 00     	comisd	xmm5, qword ptr [rip + 33371] # 0x140013b60
14000b905: 0f 84 85 02 00 00           	je	0x14000bb90 <.text+0xab90>
14000b90b: 66 0f 28 d0                 	movapd	xmm2, xmm0
14000b90f: f3 0f e6 f3                 	cvtdq2pd	xmm6, xmm3
14000b913: 66 0f 57 ed                 	xorpd	xmm5, xmm5
14000b917: 66 0f 2f c5                 	comisd	xmm0, xmm5
14000b91b: 0f 86 2f 02 00 00           	jbe	0x14000bb50 <.text+0xab50>
14000b921: 66 0f db 15 87 82 00 00     	pand	xmm2, xmmword ptr [rip + 33415] # 0x140013bb0
14000b929: f2 0f 5c 25 0f 83 00 00     	subsd	xmm4, qword ptr [rip + 33551] # 0x140013c40
14000b931: 66 0f 2f 35 97 83 00 00     	comisd	xmm6, qword ptr [rip + 33687] # 0x140013cd0
14000b939: 0f 84 d8 01 00 00           	je	0x14000bb17 <.text+0xab17>
14000b93f: 66 0f 54 25 e9 83 00 00     	andpd	xmm4, xmmword ptr [rip + 33769] # 0x140013d30
14000b947: 4c 8b c8                    	mov	r9, rax
14000b94a: 48 23 05 6f 82 00 00        	and	rax, qword ptr [rip + 33391] # 0x140013bc0
14000b951: 4c 23 0d 78 82 00 00        	and	r9, qword ptr [rip + 33400] # 0x140013bd0
14000b958: 49 d1 e1                    	shl	r9
14000b95b: 49 03 c1                    	add	rax, r9
14000b95e: 66 48 0f 6e c8              	movq	xmm1, rax
14000b963: 66 0f 2f 25 85 83 00 00     	comisd	xmm4, qword ptr [rip + 33669] # 0x140013cf0
14000b96b: 0f 82 df 00 00 00           	jb	0x14000ba50 <.text+0xaa50>
14000b971: 48 c1 e8 2c                 	shr	rax, 44
14000b975: 66 0f eb 15 d3 82 00 00     	por	xmm2, xmmword ptr [rip + 33491] # 0x140013c50
14000b97d: 66 0f eb 0d cb 82 00 00     	por	xmm1, xmmword ptr [rip + 33483] # 0x140013c50
14000b985: 4c 8d 0d 44 94 00 00        	lea	r9, [rip + 37956]       # 0x140014dd0
14000b98c: f2 0f 5c ca                 	subsd	xmm1, xmm2
14000b990: f2 41 0f 59 0c c1           	mulsd	xmm1, qword ptr [r9 + 8*rax]
14000b996: 66 0f 28 d1                 	movapd	xmm2, xmm1
14000b99a: 66 0f 28 c1                 	movapd	xmm0, xmm1
14000b99e: 4c 8d 0d 0b 84 00 00        	lea	r9, [rip + 33803]       # 0x140013db0
14000b9a5: f2 0f 10 1d 13 83 00 00     	movsd	xmm3, qword ptr [rip + 33555] # xmm3 = mem[0],zero
                                                                        # 0x140013cc0
14000b9ad: f2 0f 10 0d db 82 00 00     	movsd	xmm1, qword ptr [rip + 33499] # xmm1 = mem[0],zero
                                                                        # 0x140013c90
14000b9b5: f2 0f 59 da                 	mulsd	xmm3, xmm2
14000b9b9: f2 0f 59 ca                 	mulsd	xmm1, xmm2
14000b9bd: f2 0f 59 c2                 	mulsd	xmm0, xmm2
14000b9c1: 66 0f 28 e0                 	movapd	xmm4, xmm0
14000b9c5: f2 0f 58 1d e3 82 00 00     	addsd	xmm3, qword ptr [rip + 33507] # 0x140013cb0
14000b9cd: f2 0f 58 0d ab 82 00 00     	addsd	xmm1, qword ptr [rip + 33451] # 0x140013c80
14000b9d5: f2 0f 59 e0                 	mulsd	xmm4, xmm0
14000b9d9: f2 0f 59 da                 	mulsd	xmm3, xmm2
14000b9dd: f2 0f 59 c8                 	mulsd	xmm1, xmm0
14000b9e1: f2 0f 58 1d b7 82 00 00     	addsd	xmm3, qword ptr [rip + 33463] # 0x140013ca0
14000b9e9: f2 0f 58 ca                 	addsd	xmm1, xmm2
14000b9ed: f2 0f 59 dc                 	mulsd	xmm3, xmm4
14000b9f1: f2 0f 58 cb                 	addsd	xmm1, xmm3
14000b9f5: f2 0f 10 2d 23 82 00 00     	movsd	xmm5, qword ptr [rip + 33315] # xmm5 = mem[0],zero
                                                                        # 0x140013c20
14000b9fd: f2 0f 59 0d db 81 00 00     	mulsd	xmm1, qword ptr [rip + 33243] # 0x140013be0
14000ba05: f2 0f 59 ee                 	mulsd	xmm5, xmm6
14000ba09: f2 0f 5c e9                 	subsd	xmm5, xmm1
14000ba0d: f2 41 0f 10 04 c1           	movsd	xmm0, qword ptr [r9 + 8*rax] # xmm0 = mem[0],zero
14000ba13: 48 8d 15 a6 8b 00 00        	lea	rdx, [rip + 35750]      # 0x1400145c0
14000ba1a: f2 0f 10 14 c2              	movsd	xmm2, qword ptr [rdx + 8*rax] # xmm2 = mem[0],zero
14000ba1f: f2 0f 10 25 e9 81 00 00     	movsd	xmm4, qword ptr [rip + 33257] # xmm4 = mem[0],zero
                                                                        # 0x140013c10
14000ba27: f2 0f 59 e6                 	mulsd	xmm4, xmm6
14000ba2b: f2 0f 58 c4                 	addsd	xmm0, xmm4
14000ba2f: f2 0f 58 d5                 	addsd	xmm2, xmm5
14000ba33: f2 0f 58 c2                 	addsd	xmm0, xmm2
14000ba37: 66 0f 6f 74 24 20           	movdqa	xmm6, xmmword ptr [rsp + 32]
14000ba3d: 48 83 c4 58                 	add	rsp, 88
14000ba41: c3                          	ret
14000ba42: 66 66 66 66 66 66 0f 1f 84 00 00 00 00 00   	nop	word ptr [rax + rax]
14000ba50: f2 0f 10 15 d8 81 00 00     	movsd	xmm2, qword ptr [rip + 33240] # xmm2 = mem[0],zero
                                                                        # 0x140013c30
14000ba58: f2 0f 5c 05 e0 81 00 00     	subsd	xmm0, qword ptr [rip + 33248] # 0x140013c40
14000ba60: f2 0f 58 d0                 	addsd	xmm2, xmm0
14000ba64: 66 0f 28 c8                 	movapd	xmm1, xmm0
14000ba68: f2 0f 5e ca                 	divsd	xmm1, xmm2
14000ba6c: f2 0f 10 25 dc 82 00 00     	movsd	xmm4, qword ptr [rip + 33500] # xmm4 = mem[0],zero
                                                                        # 0x140013d50
14000ba74: f2 0f 10 2d f4 82 00 00     	movsd	xmm5, qword ptr [rip + 33524] # xmm5 = mem[0],zero
                                                                        # 0x140013d70
14000ba7c: 66 0f 28 f0                 	movapd	xmm6, xmm0
14000ba80: f2 0f 59 f1                 	mulsd	xmm6, xmm1
14000ba84: f2 0f 58 c9                 	addsd	xmm1, xmm1
14000ba88: 66 0f 28 d1                 	movapd	xmm2, xmm1
14000ba8c: f2 0f 59 d1                 	mulsd	xmm2, xmm1
14000ba90: f2 0f 59 e2                 	mulsd	xmm4, xmm2
14000ba94: f2 0f 59 ea                 	mulsd	xmm5, xmm2
14000ba98: f2 0f 58 25 a0 82 00 00     	addsd	xmm4, qword ptr [rip + 33440] # 0x140013d40
14000baa0: f2 0f 58 2d b8 82 00 00     	addsd	xmm5, qword ptr [rip + 33464] # 0x140013d60
14000baa8: f2 0f 59 d1                 	mulsd	xmm2, xmm1
14000baac: f2 0f 59 e2                 	mulsd	xmm4, xmm2
14000bab0: f2 0f 59 d2                 	mulsd	xmm2, xmm2
14000bab4: f2 0f 59 d1                 	mulsd	xmm2, xmm1
14000bab8: f2 0f 59 ea                 	mulsd	xmm5, xmm2
14000babc: f2 0f 10 15 3c 81 00 00     	movsd	xmm2, qword ptr [rip + 33084] # xmm2 = mem[0],zero
                                                                        # 0x140013c00
14000bac4: f2 0f 58 e5                 	addsd	xmm4, xmm5
14000bac8: f2 0f 5c e6                 	subsd	xmm4, xmm6
14000bacc: f2 0f 10 35 1c 81 00 00     	movsd	xmm6, qword ptr [rip + 33052] # xmm6 = mem[0],zero
                                                                        # 0x140013bf0
14000bad4: 66 0f 28 d8                 	movapd	xmm3, xmm0
14000bad8: 66 0f db 1d a0 82 00 00     	pand	xmm3, xmmword ptr [rip + 33440] # 0x140013d80
14000bae0: f2 0f 5c c3                 	subsd	xmm0, xmm3
14000bae4: f2 0f 58 e0                 	addsd	xmm4, xmm0
14000bae8: 66 0f 28 c3                 	movapd	xmm0, xmm3
14000baec: 66 0f 28 cc                 	movapd	xmm1, xmm4
14000baf0: f2 0f 59 e2                 	mulsd	xmm4, xmm2
14000baf4: f2 0f 59 c2                 	mulsd	xmm0, xmm2
14000baf8: f2 0f 59 ce                 	mulsd	xmm1, xmm6
14000bafc: f2 0f 59 de                 	mulsd	xmm3, xmm6
14000bb00: f2 0f 58 c4                 	addsd	xmm0, xmm4
14000bb04: f2 0f 58 c1                 	addsd	xmm0, xmm1
14000bb08: f2 0f 58 c3                 	addsd	xmm0, xmm3
14000bb0c: 66 0f 6f 74 24 20           	movdqa	xmm6, xmmword ptr [rsp + 32]
14000bb12: 48 83 c4 58                 	add	rsp, 88
14000bb16: c3                          	ret
14000bb17: 66 0f eb 15 21 81 00 00     	por	xmm2, xmmword ptr [rip + 33057] # 0x140013c40
14000bb1f: f2 0f 5c 15 19 81 00 00     	subsd	xmm2, qword ptr [rip + 33049] # 0x140013c40
14000bb27: f2 0f 10 ea                 	movsd	xmm5, xmm2              # xmm5 = xmm2[0],xmm5[1]
14000bb2b: 66 0f db 15 7d 80 00 00     	pand	xmm2, xmmword ptr [rip + 32893] # 0x140013bb0
14000bb33: 66 48 0f 7e d0              	movq	rax, xmm2
14000bb38: 66 0f 73 d5 34              	psrlq	xmm5, 52
14000bb3d: 66 0f fa 2d 9b 81 00 00     	psubd	xmm5, xmmword ptr [rip + 33179] # 0x140013ce0
14000bb45: f3 0f e6 f5                 	cvtdq2pd	xmm6, xmm5
14000bb49: e9 f1 fd ff ff              	jmp	0x14000b93f <.text+0xa93f>
14000bb4e: 66 90                       	nop
14000bb50: 75 1e                       	jne	0x14000bb70 <.text+0xab70>
14000bb52: f2 0f 10 0d f6 7f 00 00     	movsd	xmm1, qword ptr [rip + 32758] # xmm1 = mem[0],zero
                                                                        # 0x140013b50
14000bb5a: 44 8b 05 2f 82 00 00        	mov	r8d, dword ptr [rip + 33327] # 0x140013d90
14000bb61: e8 ea 08 00 00              	call	0x14000c450 <.text+0xb450>
14000bb66: eb 48                       	jmp	0x14000bbb0 <.text+0xabb0>
14000bb68: 0f 1f 84 00 00 00 00 00     	nop	dword ptr [rax + rax]
14000bb70: f2 0f 10 0d f8 7f 00 00     	movsd	xmm1, qword ptr [rip + 32760] # xmm1 = mem[0],zero
                                                                        # 0x140013b70
14000bb78: 44 8b 05 15 82 00 00        	mov	r8d, dword ptr [rip + 33301] # 0x140013d94
14000bb7f: e8 cc 08 00 00              	call	0x14000c450 <.text+0xb450>
14000bb84: eb 2a                       	jmp	0x14000bbb0 <.text+0xabb0>
14000bb86: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
14000bb90: 48 3b 05 c9 7f 00 00        	cmp	rax, qword ptr [rip + 32713] # 0x140013b60
14000bb97: 74 17                       	je	0x14000bbb0 <.text+0xabb0>
14000bb99: 48 3b 05 b0 7f 00 00        	cmp	rax, qword ptr [rip + 32688] # 0x140013b50
14000bba0: 74 ce                       	je	0x14000bb70 <.text+0xab70>
14000bba2: 48 0b 05 d7 7f 00 00        	or	rax, qword ptr [rip + 32727] # 0x140013b80
14000bba9: 66 48 0f 6e c0              	movq	xmm0, rax
14000bbae: 66 90                       	nop
14000bbb0: 66 0f 6f 74 24 20           	movdqa	xmm6, xmmword ptr [rsp + 32]
14000bbb6: 48 83 c4 58                 	add	rsp, 88
14000bbba: c3                          	ret
14000bbbb: 0f 1f 44 00 00              	nop	dword ptr [rax + rax]
14000bbc0: 48 33 c0                    	xor	rax, rax
14000bbc3: c5 e1 73 d0 34              	vpsrlq	xmm3, xmm0, 52
14000bbc8: c4 e1 f9 7e c0              	vmovq	rax, xmm0
14000bbcd: c5 e1 fb 1d bb 7f 00 00     	vpsubq	xmm3, xmm3, xmmword ptr [rip + 32699] # 0x140013b90
14000bbd5: c5 fa e6 f3                 	vcvtdq2pd	xmm6, xmm3
14000bbd9: c5 f9 db 2d 7f 7f 00 00     	vpand	xmm5, xmm0, xmmword ptr [rip + 32639] # 0x140013b60
14000bbe1: c5 f9 2f 2d 77 7f 00 00     	vcomisd	xmm5, qword ptr [rip + 32631] # 0x140013b60
14000bbe9: 0f 84 41 02 00 00           	je	0x14000be30 <.text+0xae30>
14000bbef: c5 d1 ef ed                 	vpxor	xmm5, xmm5, xmm5
14000bbf3: c5 f9 2f c5                 	vcomisd	xmm0, xmm5
14000bbf7: 0f 86 e3 01 00 00           	jbe	0x14000bde0 <.text+0xade0>
14000bbfd: c5 f9 db 15 ab 7f 00 00     	vpand	xmm2, xmm0, xmmword ptr [rip + 32683] # 0x140013bb0
14000bc05: c5 fb 5c 25 33 80 00 00     	vsubsd	xmm4, xmm0, qword ptr [rip + 32819] # 0x140013c40
14000bc0d: c5 f9 2f 35 bb 80 00 00     	vcomisd	xmm6, qword ptr [rip + 32955] # 0x140013cd0
14000bc15: 0f 84 8e 01 00 00           	je	0x14000bda9 <.text+0xada9>
14000bc1b: c5 f9 db 0d 9d 7f 00 00     	vpand	xmm1, xmm0, xmmword ptr [rip + 32669] # 0x140013bc0
14000bc23: c5 f9 db 1d a5 7f 00 00     	vpand	xmm3, xmm0, xmmword ptr [rip + 32677] # 0x140013bd0
14000bc2b: c5 e1 73 f3 01              	vpsllq	xmm3, xmm3, 1
14000bc30: c5 e1 d4 c9                 	vpaddq	xmm1, xmm3, xmm1
14000bc34: c4 e1 f9 7e c8              	vmovq	rax, xmm1
14000bc39: c5 d9 db 25 ef 80 00 00     	vpand	xmm4, xmm4, xmmword ptr [rip + 33007] # 0x140013d30
14000bc41: c5 f9 2f 25 a7 80 00 00     	vcomisd	xmm4, qword ptr [rip + 32935] # 0x140013cf0
14000bc49: 0f 82 b1 00 00 00           	jb	0x14000bd00 <.text+0xad00>
14000bc4f: 48 c1 e8 2c                 	shr	rax, 44
14000bc53: c5 e9 eb 15 f5 7f 00 00     	vpor	xmm2, xmm2, xmmword ptr [rip + 32757] # 0x140013c50
14000bc5b: c5 f1 eb 0d ed 7f 00 00     	vpor	xmm1, xmm1, xmmword ptr [rip + 32749] # 0x140013c50
14000bc63: 4c 8d 0d 66 91 00 00        	lea	r9, [rip + 37222]       # 0x140014dd0
14000bc6a: c5 f3 5c ca                 	vsubsd	xmm1, xmm1, xmm2
14000bc6e: c4 c1 73 59 0c c1           	vmulsd	xmm1, xmm1, qword ptr [r9 + 8*rax]
14000bc74: 4c 8d 0d 35 81 00 00        	lea	r9, [rip + 33077]       # 0x140013db0
14000bc7b: c5 f3 59 c1                 	vmulsd	xmm0, xmm1, xmm1
14000bc7f: c5 fb 10 1d 39 80 00 00     	vmovsd	xmm3, qword ptr [rip + 32825] # xmm3 = mem[0],zero
                                                                        # 0x140013cc0
14000bc87: c5 fb 10 2d 01 80 00 00     	vmovsd	xmm5, qword ptr [rip + 32769] # xmm5 = mem[0],zero
                                                                        # 0x140013c90
14000bc8f: c4 e2 f1 a9 1d 18 80 00 00  	vfmadd213sd	xmm3, xmm1, qword ptr [rip + 32792] # xmm3 = (xmm1 * xmm3) + mem0x140013cb0
14000bc98: c4 e2 f1 a9 2d af 7f 00 00  	vfmadd213sd	xmm5, xmm1, qword ptr [rip + 32687] # xmm5 = (xmm1 * xmm5) + mem0x140013c50
14000bca1: f2 0f 10 e0                 	movsd	xmm4, xmm0              # xmm4 = xmm0[0],xmm4[1]
14000bca5: c4 e2 f1 a9 1d f2 7f 00 00  	vfmadd213sd	xmm3, xmm1, qword ptr [rip + 32754] # xmm3 = (xmm1 * xmm3) + mem0x140013ca0
14000bcae: c5 fb 59 e0                 	vmulsd	xmm4, xmm0, xmm0
14000bcb2: c4 e2 d1 b9 c8              	vfmadd231sd	xmm1, xmm5, xmm0 # xmm1 = (xmm5 * xmm0) + xmm1
14000bcb7: c4 e2 e1 b9 cc              	vfmadd231sd	xmm1, xmm3, xmm4 # xmm1 = (xmm3 * xmm4) + xmm1
14000bcbc: c5 f3 59 0d 1c 7f 00 00     	vmulsd	xmm1, xmm1, qword ptr [rip + 32540] # 0x140013be0
14000bcc4: c5 fb 10 2d 54 7f 00 00     	vmovsd	xmm5, qword ptr [rip + 32596] # xmm5 = mem[0],zero
                                                                        # 0x140013c20
14000bccc: c4 e2 c9 ab e9              	vfmsub213sd	xmm5, xmm6, xmm1 # xmm5 = (xmm6 * xmm5) - xmm1
14000bcd1: f2 41 0f 10 04 c1           	movsd	xmm0, qword ptr [r9 + 8*rax] # xmm0 = mem[0],zero
14000bcd7: 48 8d 15 e2 88 00 00        	lea	rdx, [rip + 35042]      # 0x1400145c0
14000bcde: f2 0f 10 14 c2              	movsd	xmm2, qword ptr [rdx + 8*rax] # xmm2 = mem[0],zero
14000bce3: c5 eb 58 d5                 	vaddsd	xmm2, xmm2, xmm5
14000bce7: c4 e2 c9 b9 05 20 7f 00 00  	vfmadd231sd	xmm0, xmm6, qword ptr [rip + 32544] # xmm0 = (xmm6 * mem) + xmm00x140013c10
14000bcf0: c5 fb 58 c2                 	vaddsd	xmm0, xmm0, xmm2
14000bcf4: c5 f9 6f 74 24 20           	vmovdqa	xmm6, xmmword ptr [rsp + 32]
14000bcfa: 48 83 c4 58                 	add	rsp, 88
14000bcfe: c3                          	ret
14000bcff: 90                          	nop
14000bd00: c5 fb 10 15 28 7f 00 00     	vmovsd	xmm2, qword ptr [rip + 32552] # xmm2 = mem[0],zero
                                                                        # 0x140013c30
14000bd08: c5 fb 5c 05 30 7f 00 00     	vsubsd	xmm0, xmm0, qword ptr [rip + 32560] # 0x140013c40
14000bd10: c5 eb 58 d0                 	vaddsd	xmm2, xmm2, xmm0
14000bd14: c5 fb 5e ca                 	vdivsd	xmm1, xmm0, xmm2
14000bd18: c5 fb 10 25 30 80 00 00     	vmovsd	xmm4, qword ptr [rip + 32816] # xmm4 = mem[0],zero
                                                                        # 0x140013d50
14000bd20: c5 fb 10 2d 48 80 00 00     	vmovsd	xmm5, qword ptr [rip + 32840] # xmm5 = mem[0],zero
                                                                        # 0x140013d70
14000bd28: c5 fb 59 f1                 	vmulsd	xmm6, xmm0, xmm1
14000bd2c: c5 f3 58 c9                 	vaddsd	xmm1, xmm1, xmm1
14000bd30: c5 f3 59 d1                 	vmulsd	xmm2, xmm1, xmm1
14000bd34: c4 e2 e9 a9 25 03 80 00 00  	vfmadd213sd	xmm4, xmm2, qword ptr [rip + 32771] # xmm4 = (xmm2 * xmm4) + mem0x140013d40
14000bd3d: c4 e2 e9 a9 2d 1a 80 00 00  	vfmadd213sd	xmm5, xmm2, qword ptr [rip + 32794] # xmm5 = (xmm2 * xmm5) + mem0x140013d60
14000bd46: c5 eb 59 d1                 	vmulsd	xmm2, xmm2, xmm1
14000bd4a: c5 db 59 e2                 	vmulsd	xmm4, xmm4, xmm2
14000bd4e: c5 eb 59 d2                 	vmulsd	xmm2, xmm2, xmm2
14000bd52: c5 eb 59 d1                 	vmulsd	xmm2, xmm2, xmm1
14000bd56: c5 d3 59 ea                 	vmulsd	xmm5, xmm5, xmm2
14000bd5a: c5 db 58 e5                 	vaddsd	xmm4, xmm4, xmm5
14000bd5e: c5 db 5c e6                 	vsubsd	xmm4, xmm4, xmm6
14000bd62: c5 f9 db 1d 16 80 00 00     	vpand	xmm3, xmm0, xmmword ptr [rip + 32790] # 0x140013d80
14000bd6a: c5 fb 5c c3                 	vsubsd	xmm0, xmm0, xmm3
14000bd6e: c5 db 58 e0                 	vaddsd	xmm4, xmm4, xmm0
14000bd72: c5 db 59 0d 76 7e 00 00     	vmulsd	xmm1, xmm4, qword ptr [rip + 32374] # 0x140013bf0
14000bd7a: c5 db 59 25 7e 7e 00 00     	vmulsd	xmm4, xmm4, qword ptr [rip + 32382] # 0x140013c00
14000bd82: c5 e3 59 05 76 7e 00 00     	vmulsd	xmm0, xmm3, qword ptr [rip + 32374] # 0x140013c00
14000bd8a: c5 e3 59 1d 5e 7e 00 00     	vmulsd	xmm3, xmm3, qword ptr [rip + 32350] # 0x140013bf0
14000bd92: c5 fb 58 c4                 	vaddsd	xmm0, xmm0, xmm4
14000bd96: c5 fb 58 c1                 	vaddsd	xmm0, xmm0, xmm1
14000bd9a: c5 fb 58 c3                 	vaddsd	xmm0, xmm0, xmm3
14000bd9e: c5 f9 6f 74 24 20           	vmovdqa	xmm6, xmmword ptr [rsp + 32]
14000bda4: 48 83 c4 58                 	add	rsp, 88
14000bda8: c3                          	ret
14000bda9: c5 e9 eb 15 8f 7e 00 00     	vpor	xmm2, xmm2, xmmword ptr [rip + 32399] # 0x140013c40
14000bdb1: c5 eb 5c 15 87 7e 00 00     	vsubsd	xmm2, xmm2, qword ptr [rip + 32391] # 0x140013c40
14000bdb9: c5 d1 73 d2 34              	vpsrlq	xmm5, xmm2, 52
14000bdbe: c5 e9 db 15 ea 7d 00 00     	vpand	xmm2, xmm2, xmmword ptr [rip + 32234] # 0x140013bb0
14000bdc6: c5 f9 28 c2                 	vmovapd	xmm0, xmm2
14000bdca: c5 d1 fa 2d 0e 7f 00 00     	vpsubd	xmm5, xmm5, xmmword ptr [rip + 32526] # 0x140013ce0
14000bdd2: c5 fa e6 f5                 	vcvtdq2pd	xmm6, xmm5
14000bdd6: e9 40 fe ff ff              	jmp	0x14000bc1b <.text+0xac1b>
14000bddb: 0f 1f 44 00 00              	nop	dword ptr [rax + rax]
14000bde0: 75 2e                       	jne	0x14000be10 <.text+0xae10>
14000bde2: c5 fb 10 0d 66 7d 00 00     	vmovsd	xmm1, qword ptr [rip + 32102] # xmm1 = mem[0],zero
                                                                        # 0x140013b50
14000bdea: 44 8b 05 9f 7f 00 00        	mov	r8d, dword ptr [rip + 32671] # 0x140013d90
14000bdf1: e8 5a 06 00 00              	call	0x14000c450 <.text+0xb450>
14000bdf6: c5 f9 6f 74 24 20           	vmovdqa	xmm6, xmmword ptr [rsp + 32]
14000bdfc: 48 83 c4 58                 	add	rsp, 88
14000be00: c3                          	ret
14000be01: 66 66 66 66 66 66 66 0f 1f 84 00 00 00 00 00	nop	word ptr [rax + rax]
14000be10: c5 fb 10 0d 58 7d 00 00     	vmovsd	xmm1, qword ptr [rip + 32088] # xmm1 = mem[0],zero
                                                                        # 0x140013b70
14000be18: 44 8b 05 75 7f 00 00        	mov	r8d, dword ptr [rip + 32629] # 0x140013d94
14000be1f: e8 2c 06 00 00              	call	0x14000c450 <.text+0xb450>
14000be24: c5 f9 6f 74 24 20           	vmovdqa	xmm6, xmmword ptr [rsp + 32]
14000be2a: 48 83 c4 58                 	add	rsp, 88
14000be2e: c3                          	ret
14000be2f: 90                          	nop
14000be30: 48 3b 05 29 7d 00 00        	cmp	rax, qword ptr [rip + 32041] # 0x140013b60
14000be37: 74 27                       	je	0x14000be60 <.text+0xae60>
14000be39: 48 3b 05 10 7d 00 00        	cmp	rax, qword ptr [rip + 32016] # 0x140013b50
14000be40: 74 ce                       	je	0x14000be10 <.text+0xae10>
14000be42: 48 0b 05 37 7d 00 00        	or	rax, qword ptr [rip + 32055] # 0x140013b80
14000be49: 66 48 0f 6e c8              	movq	xmm1, rax
14000be4e: 44 8b 05 43 7f 00 00        	mov	r8d, dword ptr [rip + 32579] # 0x140013d98
14000be55: e8 f6 05 00 00              	call	0x14000c450 <.text+0xb450>
14000be5a: eb 04                       	jmp	0x14000be60 <.text+0xae60>
14000be5c: 0f 1f 40 00                 	nop	dword ptr [rax]
14000be60: c5 f9 6f 74 24 20           	vmovdqa	xmm6, xmmword ptr [rsp + 32]
14000be66: 48 83 c4 58                 	add	rsp, 88
14000be6a: c3                          	ret
14000be6b: cc                          	int3
14000be6c: 40 53                       	push	rbx
14000be6e: 48 83 ec 40                 	sub	rsp, 64
14000be72: 48 8b 05 57 bb 00 00        	mov	rax, qword ptr [rip + 47959] # 0x1400179d0
14000be79: 33 db                       	xor	ebx, ebx
14000be7b: 48 83 f8 fe                 	cmp	rax, -2
14000be7f: 75 2e                       	jne	0x14000beaf <.text+0xaeaf>
14000be81: 48 89 5c 24 30              	mov	qword ptr [rsp + 48], rbx
14000be86: 44 8d 43 03                 	lea	r8d, [rbx + 3]
14000be8a: 89 5c 24 28                 	mov	dword ptr [rsp + 40], ebx
14000be8e: 48 8d 0d 0b 7f 00 00        	lea	rcx, [rip + 32523]      # 0x140013da0
14000be95: 45 33 c9                    	xor	r9d, r9d
14000be98: 44 89 44 24 20              	mov	dword ptr [rsp + 32], r8d
14000be9d: ba 00 00 00 40              	mov	edx, 1073741824
14000bea2: ff 15 60 23 00 00           	call	qword ptr [rip + 9056]  # 0x14000e208
14000bea8: 48 89 05 21 bb 00 00        	mov	qword ptr [rip + 47905], rax # 0x1400179d0
14000beaf: 48 83 f8 ff                 	cmp	rax, -1
14000beb3: 0f 95 c3                    	setne	bl
14000beb6: 8b c3                       	mov	eax, ebx
14000beb8: 48 83 c4 40                 	add	rsp, 64
14000bebc: 5b                          	pop	rbx
14000bebd: c3                          	ret
14000bebe: cc                          	int3
14000bebf: cc                          	int3
14000bec0: 48 83 ec 28                 	sub	rsp, 40
14000bec4: 48 8b 0d 05 bb 00 00        	mov	rcx, qword ptr [rip + 47877] # 0x1400179d0
14000becb: 48 83 f9 fd                 	cmp	rcx, -3
14000becf: 77 06                       	ja	0x14000bed7 <.text+0xaed7>
14000bed1: ff 15 39 23 00 00           	call	qword ptr [rip + 9017]  # 0x14000e210
14000bed7: 48 83 c4 28                 	add	rsp, 40
14000bedb: c3                          	ret
14000bedc: 48 8b c4                    	mov	rax, rsp
14000bedf: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
14000bee3: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
14000bee7: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
14000beeb: 57                          	push	rdi
14000beec: 48 83 ec 40                 	sub	rsp, 64
14000bef0: 48 83 60 d8 00              	and	qword ptr [rax - 40], 0
14000bef5: 49 8b f8                    	mov	rdi, r8
14000bef8: 4d 8b c8                    	mov	r9, r8
14000befb: 8b f2                       	mov	esi, edx
14000befd: 44 8b c2                    	mov	r8d, edx
14000bf00: 48 8b e9                    	mov	rbp, rcx
14000bf03: 48 8b d1                    	mov	rdx, rcx
14000bf06: 48 8b 0d c3 ba 00 00        	mov	rcx, qword ptr [rip + 47811] # 0x1400179d0
14000bf0d: ff 15 5d 21 00 00           	call	qword ptr [rip + 8541]  # 0x14000e070
14000bf13: 8b d8                       	mov	ebx, eax
14000bf15: 85 c0                       	test	eax, eax
14000bf17: 75 6a                       	jne	0x14000bf83 <.text+0xaf83>
14000bf19: ff 15 61 21 00 00           	call	qword ptr [rip + 8545]  # 0x14000e080
14000bf1f: 83 f8 06                    	cmp	eax, 6
14000bf22: 75 5f                       	jne	0x14000bf83 <.text+0xaf83>
14000bf24: 48 8b 0d a5 ba 00 00        	mov	rcx, qword ptr [rip + 47781] # 0x1400179d0
14000bf2b: 48 83 f9 fd                 	cmp	rcx, -3
14000bf2f: 77 06                       	ja	0x14000bf37 <.text+0xaf37>
14000bf31: ff 15 d9 22 00 00           	call	qword ptr [rip + 8921]  # 0x14000e210
14000bf37: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
14000bf3d: 48 8d 0d 5c 7e 00 00        	lea	rcx, [rip + 32348]      # 0x140013da0
14000bf44: 83 64 24 28 00              	and	dword ptr [rsp + 40], 0
14000bf49: 41 b8 03 00 00 00           	mov	r8d, 3
14000bf4f: 45 33 c9                    	xor	r9d, r9d
14000bf52: 44 89 44 24 20              	mov	dword ptr [rsp + 32], r8d
14000bf57: ba 00 00 00 40              	mov	edx, 1073741824
14000bf5c: ff 15 a6 22 00 00           	call	qword ptr [rip + 8870]  # 0x14000e208
14000bf62: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000bf68: 4c 8b cf                    	mov	r9, rdi
14000bf6b: 48 8b c8                    	mov	rcx, rax
14000bf6e: 48 89 05 5b ba 00 00        	mov	qword ptr [rip + 47707], rax # 0x1400179d0
14000bf75: 44 8b c6                    	mov	r8d, esi
14000bf78: 48 8b d5                    	mov	rdx, rbp
14000bf7b: ff 15 ef 20 00 00           	call	qword ptr [rip + 8431]  # 0x14000e070
14000bf81: 8b d8                       	mov	ebx, eax
14000bf83: 48 8b 6c 24 58              	mov	rbp, qword ptr [rsp + 88]
14000bf88: 8b c3                       	mov	eax, ebx
14000bf8a: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
14000bf8f: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
14000bf94: 48 83 c4 40                 	add	rsp, 64
14000bf98: 5f                          	pop	rdi
14000bf99: c3                          	ret
14000bf9a: cc                          	int3
14000bf9b: cc                          	int3
14000bf9c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000bfa1: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
14000bfa6: 57                          	push	rdi
14000bfa7: 48 83 ec 20                 	sub	rsp, 32
14000bfab: 49 8b f9                    	mov	rdi, r9
14000bfae: 49 8b d8                    	mov	rbx, r8
14000bfb1: 8b 0a                       	mov	ecx, dword ptr [rdx]
14000bfb3: e8 c8 ae ff ff              	call	0x140006e80 <.text+0x5e80>
14000bfb8: 90                          	nop
14000bfb9: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000bfbc: 48 63 08                    	movsxd	rcx, dword ptr [rax]
14000bfbf: 48 8b d1                    	mov	rdx, rcx
14000bfc2: 48 8b c1                    	mov	rax, rcx
14000bfc5: 48 c1 f8 06                 	sar	rax, 6
14000bfc9: 4c 8d 05 40 c0 00 00        	lea	r8, [rip + 49216]       # 0x140018010
14000bfd0: 83 e2 3f                    	and	edx, 63
14000bfd3: 48 8d 14 d2                 	lea	rdx, [rdx + 8*rdx]
14000bfd7: 49 8b 04 c0                 	mov	rax, qword ptr [r8 + 8*rax]
14000bfdb: f6 44 d0 38 01              	test	byte ptr [rax + 8*rdx + 56], 1
14000bfe0: 74 09                       	je	0x14000bfeb <.text+0xafeb>
14000bfe2: e8 cd 00 00 00              	call	0x14000c0b4 <.text+0xb0b4>
14000bfe7: 8b d8                       	mov	ebx, eax
14000bfe9: eb 0e                       	jmp	0x14000bff9 <.text+0xaff9>
14000bfeb: e8 20 8e ff ff              	call	0x140004e10 <.text+0x3e10>
14000bff0: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000bff6: 83 cb ff                    	or	ebx, -1
14000bff9: 8b 0f                       	mov	ecx, dword ptr [rdi]
14000bffb: e8 a8 ae ff ff              	call	0x140006ea8 <.text+0x5ea8>
14000c000: 8b c3                       	mov	eax, ebx
14000c002: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000c007: 48 83 c4 20                 	add	rsp, 32
14000c00b: 5f                          	pop	rdi
14000c00c: c3                          	ret
14000c00d: cc                          	int3
14000c00e: cc                          	int3
14000c00f: cc                          	int3
14000c010: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
14000c014: 48 83 ec 38                 	sub	rsp, 56
14000c018: 48 63 d1                    	movsxd	rdx, ecx
14000c01b: 83 fa fe                    	cmp	edx, -2
14000c01e: 75 15                       	jne	0x14000c035 <.text+0xb035>
14000c020: e8 cb 8d ff ff              	call	0x140004df0 <.text+0x3df0>
14000c025: 83 20 00                    	and	dword ptr [rax], 0
14000c028: e8 e3 8d ff ff              	call	0x140004e10 <.text+0x3e10>
14000c02d: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000c033: eb 74                       	jmp	0x14000c0a9 <.text+0xb0a9>
14000c035: 85 c9                       	test	ecx, ecx
14000c037: 78 58                       	js	0x14000c091 <.text+0xb091>
14000c039: 3b 15 d1 c3 00 00           	cmp	edx, dword ptr [rip + 50129] # 0x140018410
14000c03f: 73 50                       	jae	0x14000c091 <.text+0xb091>
14000c041: 48 8b ca                    	mov	rcx, rdx
14000c044: 4c 8d 05 c5 bf 00 00        	lea	r8, [rip + 49093]       # 0x140018010
14000c04b: 83 e1 3f                    	and	ecx, 63
14000c04e: 48 8b c2                    	mov	rax, rdx
14000c051: 48 c1 f8 06                 	sar	rax, 6
14000c055: 48 8d 0c c9                 	lea	rcx, [rcx + 8*rcx]
14000c059: 49 8b 04 c0                 	mov	rax, qword ptr [r8 + 8*rax]
14000c05d: f6 44 c8 38 01              	test	byte ptr [rax + 8*rcx + 56], 1
14000c062: 74 2d                       	je	0x14000c091 <.text+0xb091>
14000c064: 48 8d 44 24 40              	lea	rax, [rsp + 64]
14000c069: 89 54 24 50                 	mov	dword ptr [rsp + 80], edx
14000c06d: 89 54 24 58                 	mov	dword ptr [rsp + 88], edx
14000c071: 4c 8d 4c 24 50              	lea	r9, [rsp + 80]
14000c076: 48 8d 54 24 58              	lea	rdx, [rsp + 88]
14000c07b: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000c080: 4c 8d 44 24 20              	lea	r8, [rsp + 32]
14000c085: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
14000c08a: e8 0d ff ff ff              	call	0x14000bf9c <.text+0xaf9c>
14000c08f: eb 1b                       	jmp	0x14000c0ac <.text+0xb0ac>
14000c091: e8 5a 8d ff ff              	call	0x140004df0 <.text+0x3df0>
14000c096: 83 20 00                    	and	dword ptr [rax], 0
14000c099: e8 72 8d ff ff              	call	0x140004e10 <.text+0x3e10>
14000c09e: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000c0a4: e8 47 8c ff ff              	call	0x140004cf0 <.text+0x3cf0>
14000c0a9: 83 c8 ff                    	or	eax, -1
14000c0ac: 48 83 c4 38                 	add	rsp, 56
14000c0b0: c3                          	ret
14000c0b1: cc                          	int3
14000c0b2: cc                          	int3
14000c0b3: cc                          	int3
14000c0b4: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000c0b9: 57                          	push	rdi
14000c0ba: 48 83 ec 20                 	sub	rsp, 32
14000c0be: 48 63 f9                    	movsxd	rdi, ecx
14000c0c1: 8b cf                       	mov	ecx, edi
14000c0c3: e8 c4 ae ff ff              	call	0x140006f8c <.text+0x5f8c>
14000c0c8: 48 83 f8 ff                 	cmp	rax, -1
14000c0cc: 75 04                       	jne	0x14000c0d2 <.text+0xb0d2>
14000c0ce: 33 db                       	xor	ebx, ebx
14000c0d0: eb 5a                       	jmp	0x14000c12c <.text+0xb12c>
14000c0d2: 48 8b 05 37 bf 00 00        	mov	rax, qword ptr [rip + 48951] # 0x140018010
14000c0d9: b9 02 00 00 00              	mov	ecx, 2
14000c0de: 83 ff 01                    	cmp	edi, 1
14000c0e1: 75 09                       	jne	0x14000c0ec <.text+0xb0ec>
14000c0e3: 40 84 b8 c8 00 00 00        	test	byte ptr [rax + 200], dil
14000c0ea: 75 0d                       	jne	0x14000c0f9 <.text+0xb0f9>
14000c0ec: 3b f9                       	cmp	edi, ecx
14000c0ee: 75 20                       	jne	0x14000c110 <.text+0xb110>
14000c0f0: f6 80 80 00 00 00 01        	test	byte ptr [rax + 128], 1
14000c0f7: 74 17                       	je	0x14000c110 <.text+0xb110>
14000c0f9: e8 8e ae ff ff              	call	0x140006f8c <.text+0x5f8c>
14000c0fe: b9 01 00 00 00              	mov	ecx, 1
14000c103: 48 8b d8                    	mov	rbx, rax
14000c106: e8 81 ae ff ff              	call	0x140006f8c <.text+0x5f8c>
14000c10b: 48 3b c3                    	cmp	rax, rbx
14000c10e: 74 be                       	je	0x14000c0ce <.text+0xb0ce>
14000c110: 8b cf                       	mov	ecx, edi
14000c112: e8 75 ae ff ff              	call	0x140006f8c <.text+0x5f8c>
14000c117: 48 8b c8                    	mov	rcx, rax
14000c11a: ff 15 f0 20 00 00           	call	qword ptr [rip + 8432]  # 0x14000e210
14000c120: 85 c0                       	test	eax, eax
14000c122: 75 aa                       	jne	0x14000c0ce <.text+0xb0ce>
14000c124: ff 15 56 1f 00 00           	call	qword ptr [rip + 8022]  # 0x14000e080
14000c12a: 8b d8                       	mov	ebx, eax
14000c12c: 8b cf                       	mov	ecx, edi
14000c12e: e8 9d ad ff ff              	call	0x140006ed0 <.text+0x5ed0>
14000c133: 48 8b d7                    	mov	rdx, rdi
14000c136: 4c 8d 05 d3 be 00 00        	lea	r8, [rip + 48851]       # 0x140018010
14000c13d: 83 e2 3f                    	and	edx, 63
14000c140: 48 8b cf                    	mov	rcx, rdi
14000c143: 48 c1 f9 06                 	sar	rcx, 6
14000c147: 48 8d 14 d2                 	lea	rdx, [rdx + 8*rdx]
14000c14b: 49 8b 0c c8                 	mov	rcx, qword ptr [r8 + 8*rcx]
14000c14f: c6 44 d1 38 00              	mov	byte ptr [rcx + 8*rdx + 56], 0
14000c154: 85 db                       	test	ebx, ebx
14000c156: 74 0c                       	je	0x14000c164 <.text+0xb164>
14000c158: 8b cb                       	mov	ecx, ebx
14000c15a: e8 41 8c ff ff              	call	0x140004da0 <.text+0x3da0>
14000c15f: 83 c8 ff                    	or	eax, -1
14000c162: eb 02                       	jmp	0x14000c166 <.text+0xb166>
14000c164: 33 c0                       	xor	eax, eax
14000c166: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000c16b: 48 83 c4 20                 	add	rsp, 32
14000c16f: 5f                          	pop	rdi
14000c170: c3                          	ret
14000c171: cc                          	int3
14000c172: cc                          	int3
14000c173: cc                          	int3
14000c174: 83 49 18 ff                 	or	dword ptr [rcx + 24], -1
14000c178: 33 c0                       	xor	eax, eax
14000c17a: 48 89 01                    	mov	qword ptr [rcx], rax
14000c17d: 48 89 41 08                 	mov	qword ptr [rcx + 8], rax
14000c181: 89 41 10                    	mov	dword ptr [rcx + 16], eax
14000c184: 48 89 41 1c                 	mov	qword ptr [rcx + 28], rax
14000c188: 48 89 41 28                 	mov	qword ptr [rcx + 40], rax
14000c18c: 87 41 14                    	xchg	dword ptr [rcx + 20], eax
14000c18f: c3                          	ret
14000c190: 48 8b c4                    	mov	rax, rsp
14000c193: 53                          	push	rbx
14000c194: 48 83 ec 50                 	sub	rsp, 80
14000c198: f2 0f 10 84 24 80 00 00 00  	movsd	xmm0, qword ptr [rsp + 128] # xmm0 = mem[0],zero
14000c1a1: 8b d9                       	mov	ebx, ecx
14000c1a3: f2 0f 10 8c 24 88 00 00 00  	movsd	xmm1, qword ptr [rsp + 136] # xmm1 = mem[0],zero
14000c1ac: ba c0 ff 00 00              	mov	edx, 65472
14000c1b1: 89 48 c8                    	mov	dword ptr [rax - 56], ecx
14000c1b4: 48 8b 8c 24 90 00 00 00     	mov	rcx, qword ptr [rsp + 144]
14000c1bc: f2 0f 11 40 e0              	movsd	qword ptr [rax - 32], xmm0
14000c1c1: f2 0f 11 48 e8              	movsd	qword ptr [rax - 24], xmm1
14000c1c6: f2 0f 11 58 d8              	movsd	qword ptr [rax - 40], xmm3
14000c1cb: 4c 89 40 d0                 	mov	qword ptr [rax - 48], r8
14000c1cf: e8 24 07 00 00              	call	0x14000c8f8 <.text+0xb8f8>
14000c1d4: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
14000c1d9: e8 36 6e ff ff              	call	0x140003014 <.text+0x2014>
14000c1de: 85 c0                       	test	eax, eax
14000c1e0: 75 07                       	jne	0x14000c1e9 <.text+0xb1e9>
14000c1e2: 8b cb                       	mov	ecx, ebx
14000c1e4: e8 bf 06 00 00              	call	0x14000c8a8 <.text+0xb8a8>
14000c1e9: f2 0f 10 44 24 40           	movsd	xmm0, qword ptr [rsp + 64] # xmm0 = mem[0],zero
14000c1ef: 48 83 c4 50                 	add	rsp, 80
14000c1f3: 5b                          	pop	rbx
14000c1f4: c3                          	ret
14000c1f5: cc                          	int3
14000c1f6: cc                          	int3
14000c1f7: cc                          	int3
14000c1f8: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000c1fd: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000c202: 57                          	push	rdi
14000c203: 48 83 ec 20                 	sub	rsp, 32
14000c207: 8b d9                       	mov	ebx, ecx
14000c209: 48 8b f2                    	mov	rsi, rdx
14000c20c: 83 e3 1f                    	and	ebx, 31
14000c20f: 8b f9                       	mov	edi, ecx
14000c211: f6 c1 08                    	test	cl, 8
14000c214: 74 14                       	je	0x14000c22a <.text+0xb22a>
14000c216: 40 84 f6                    	test	sil, sil
14000c219: 79 0f                       	jns	0x14000c22a <.text+0xb22a>
14000c21b: b9 01 00 00 00              	mov	ecx, 1
14000c220: e8 4f 07 00 00              	call	0x14000c974 <.text+0xb974>
14000c225: 83 e3 f7                    	and	ebx, -9
14000c228: eb 57                       	jmp	0x14000c281 <.text+0xb281>
14000c22a: b9 04 00 00 00              	mov	ecx, 4
14000c22f: 40 84 f9                    	test	cl, dil
14000c232: 74 11                       	je	0x14000c245 <.text+0xb245>
14000c234: 48 0f ba e6 09              	bt	rsi, 9
14000c239: 73 0a                       	jae	0x14000c245 <.text+0xb245>
14000c23b: e8 34 07 00 00              	call	0x14000c974 <.text+0xb974>
14000c240: 83 e3 fb                    	and	ebx, -5
14000c243: eb 3c                       	jmp	0x14000c281 <.text+0xb281>
14000c245: 40 f6 c7 01                 	test	dil, 1
14000c249: 74 16                       	je	0x14000c261 <.text+0xb261>
14000c24b: 48 0f ba e6 0a              	bt	rsi, 10
14000c250: 73 0f                       	jae	0x14000c261 <.text+0xb261>
14000c252: b9 08 00 00 00              	mov	ecx, 8
14000c257: e8 18 07 00 00              	call	0x14000c974 <.text+0xb974>
14000c25c: 83 e3 fe                    	and	ebx, -2
14000c25f: eb 20                       	jmp	0x14000c281 <.text+0xb281>
14000c261: 40 f6 c7 02                 	test	dil, 2
14000c265: 74 1a                       	je	0x14000c281 <.text+0xb281>
14000c267: 48 0f ba e6 0b              	bt	rsi, 11
14000c26c: 73 13                       	jae	0x14000c281 <.text+0xb281>
14000c26e: 40 f6 c7 10                 	test	dil, 16
14000c272: 74 0a                       	je	0x14000c27e <.text+0xb27e>
14000c274: b9 10 00 00 00              	mov	ecx, 16
14000c279: e8 f6 06 00 00              	call	0x14000c974 <.text+0xb974>
14000c27e: 83 e3 fd                    	and	ebx, -3
14000c281: 40 f6 c7 10                 	test	dil, 16
14000c285: 74 14                       	je	0x14000c29b <.text+0xb29b>
14000c287: 48 0f ba e6 0c              	bt	rsi, 12
14000c28c: 73 0d                       	jae	0x14000c29b <.text+0xb29b>
14000c28e: b9 20 00 00 00              	mov	ecx, 32
14000c293: e8 dc 06 00 00              	call	0x14000c974 <.text+0xb974>
14000c298: 83 e3 ef                    	and	ebx, -17
14000c29b: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
14000c2a0: 33 c0                       	xor	eax, eax
14000c2a2: 85 db                       	test	ebx, ebx
14000c2a4: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000c2a9: 0f 94 c0                    	sete	al
14000c2ac: 48 83 c4 20                 	add	rsp, 32
14000c2b0: 5f                          	pop	rdi
14000c2b1: c3                          	ret
14000c2b2: cc                          	int3
14000c2b3: cc                          	int3
14000c2b4: 48 8b c4                    	mov	rax, rsp
14000c2b7: 55                          	push	rbp
14000c2b8: 53                          	push	rbx
14000c2b9: 56                          	push	rsi
14000c2ba: 57                          	push	rdi
14000c2bb: 41 56                       	push	r14
14000c2bd: 48 8d 68 c9                 	lea	rbp, [rax - 55]
14000c2c1: 48 81 ec f0 00 00 00        	sub	rsp, 240
14000c2c8: 0f 29 70 c8                 	movaps	xmmword ptr [rax - 56], xmm6
14000c2cc: 48 8b 05 55 ad 00 00        	mov	rax, qword ptr [rip + 44373] # 0x140017028
14000c2d3: 48 33 c4                    	xor	rax, rsp
14000c2d6: 48 89 45 ef                 	mov	qword ptr [rbp - 17], rax
14000c2da: 8b f2                       	mov	esi, edx
14000c2dc: 4c 8b f1                    	mov	r14, rcx
14000c2df: ba c0 ff 00 00              	mov	edx, 65472
14000c2e4: b9 80 1f 00 00              	mov	ecx, 8064
14000c2e9: 41 8b f9                    	mov	edi, r9d
14000c2ec: 49 8b d8                    	mov	rbx, r8
14000c2ef: e8 04 06 00 00              	call	0x14000c8f8 <.text+0xb8f8>
14000c2f4: 8b 4d 5f                    	mov	ecx, dword ptr [rbp + 95]
14000c2f7: 48 89 44 24 40              	mov	qword ptr [rsp + 64], rax
14000c2fc: 48 89 5c 24 50              	mov	qword ptr [rsp + 80], rbx
14000c301: f2 0f 10 44 24 50           	movsd	xmm0, qword ptr [rsp + 80] # xmm0 = mem[0],zero
14000c307: 48 8b 54 24 40              	mov	rdx, qword ptr [rsp + 64]
14000c30c: f2 0f 11 44 24 48           	movsd	qword ptr [rsp + 72], xmm0
14000c312: e8 e1 fe ff ff              	call	0x14000c1f8 <.text+0xb1f8>
14000c317: f2 0f 10 75 77              	movsd	xmm6, qword ptr [rbp + 119] # xmm6 = mem[0],zero
14000c31c: 85 c0                       	test	eax, eax
14000c31e: 75 40                       	jne	0x14000c360 <.text+0xb360>
14000c320: 83 7d 7f 02                 	cmp	dword ptr [rbp + 127], 2
14000c324: 75 11                       	jne	0x14000c337 <.text+0xb337>
14000c326: 8b 45 bf                    	mov	eax, dword ptr [rbp - 65]
14000c329: 83 e0 e3                    	and	eax, -29
14000c32c: f2 0f 11 75 af              	movsd	qword ptr [rbp - 81], xmm6
14000c331: 83 c8 03                    	or	eax, 3
14000c334: 89 45 bf                    	mov	dword ptr [rbp - 65], eax
14000c337: 44 8b 45 5f                 	mov	r8d, dword ptr [rbp + 95]
14000c33b: 48 8d 44 24 48              	lea	rax, [rsp + 72]
14000c340: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
14000c345: 48 8d 54 24 40              	lea	rdx, [rsp + 64]
14000c34a: 48 8d 45 6f                 	lea	rax, [rbp + 111]
14000c34e: 44 8b ce                    	mov	r9d, esi
14000c351: 48 8d 4c 24 60              	lea	rcx, [rsp + 96]
14000c356: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000c35b: e8 10 02 00 00              	call	0x14000c570 <.text+0xb570>
14000c360: e8 87 6c ff ff              	call	0x140002fec <.text+0x1fec>
14000c365: 84 c0                       	test	al, al
14000c367: 74 34                       	je	0x14000c39d <.text+0xb39d>
14000c369: 85 ff                       	test	edi, edi
14000c36b: 74 30                       	je	0x14000c39d <.text+0xb39d>
14000c36d: 48 8b 44 24 40              	mov	rax, qword ptr [rsp + 64]
14000c372: 4d 8b c6                    	mov	r8, r14
14000c375: f2 0f 10 44 24 48           	movsd	xmm0, qword ptr [rsp + 72] # xmm0 = mem[0],zero
14000c37b: 8b cf                       	mov	ecx, edi
14000c37d: f2 0f 10 5d 6f              	movsd	xmm3, qword ptr [rbp + 111] # xmm3 = mem[0],zero
14000c382: 8b 55 67                    	mov	edx, dword ptr [rbp + 103]
14000c385: 48 89 44 24 30              	mov	qword ptr [rsp + 48], rax
14000c38a: f2 0f 11 44 24 28           	movsd	qword ptr [rsp + 40], xmm0
14000c390: f2 0f 11 74 24 20           	movsd	qword ptr [rsp + 32], xmm6
14000c396: e8 f5 fd ff ff              	call	0x14000c190 <.text+0xb190>
14000c39b: eb 1c                       	jmp	0x14000c3b9 <.text+0xb3b9>
14000c39d: 8b cf                       	mov	ecx, edi
14000c39f: e8 04 05 00 00              	call	0x14000c8a8 <.text+0xb8a8>
14000c3a4: 48 8b 4c 24 40              	mov	rcx, qword ptr [rsp + 64]
14000c3a9: ba c0 ff 00 00              	mov	edx, 65472
14000c3ae: e8 45 05 00 00              	call	0x14000c8f8 <.text+0xb8f8>
14000c3b3: f2 0f 10 44 24 48           	movsd	xmm0, qword ptr [rsp + 72] # xmm0 = mem[0],zero
14000c3b9: 48 8b 4d ef                 	mov	rcx, qword ptr [rbp - 17]
14000c3bd: 48 33 cc                    	xor	rcx, rsp
14000c3c0: e8 4b 07 00 00              	call	0x14000cb10 <.text+0xbb10>
14000c3c5: 0f 28 b4 24 e0 00 00 00     	movaps	xmm6, xmmword ptr [rsp + 224]
14000c3cd: 48 81 c4 f0 00 00 00        	add	rsp, 240
14000c3d4: 41 5e                       	pop	r14
14000c3d6: 5f                          	pop	rdi
14000c3d7: 5e                          	pop	rsi
14000c3d8: 5b                          	pop	rbx
14000c3d9: 5d                          	pop	rbp
14000c3da: c3                          	ret
14000c3db: cc                          	int3
14000c3dc: cc                          	int3
14000c3dd: cc                          	int3
14000c3de: cc                          	int3
14000c3df: cc                          	int3
14000c3e0: 40 53                       	push	rbx
14000c3e2: 48 83 ec 10                 	sub	rsp, 16
14000c3e6: 45 33 c0                    	xor	r8d, r8d
14000c3e9: 33 c9                       	xor	ecx, ecx
14000c3eb: 44 89 05 46 c2 00 00        	mov	dword ptr [rip + 49734], r8d # 0x140018638
14000c3f2: 45 8d 48 01                 	lea	r9d, [r8 + 1]
14000c3f6: 41 8b c1                    	mov	eax, r9d
14000c3f9: 0f a2                       	cpuid
14000c3fb: 89 04 24                    	mov	dword ptr [rsp], eax
14000c3fe: b8 00 10 00 18              	mov	eax, 402657280
14000c403: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
14000c407: 23 c8                       	and	ecx, eax
14000c409: 89 5c 24 04                 	mov	dword ptr [rsp + 4], ebx
14000c40d: 89 54 24 0c                 	mov	dword ptr [rsp + 12], edx
14000c411: 3b c8                       	cmp	ecx, eax
14000c413: 75 2c                       	jne	0x14000c441 <.text+0xb441>
14000c415: 33 c9                       	xor	ecx, ecx
14000c417: 0f 01 d0                    	xgetbv
14000c41a: 48 c1 e2 20                 	shl	rdx, 32
14000c41e: 48 0b d0                    	or	rdx, rax
14000c421: 48 89 54 24 20              	mov	qword ptr [rsp + 32], rdx
14000c426: 48 8b 44 24 20              	mov	rax, qword ptr [rsp + 32]
14000c42b: 44 8b 05 06 c2 00 00        	mov	r8d, dword ptr [rip + 49670] # 0x140018638
14000c432: 24 06                       	and	al, 6
14000c434: 3c 06                       	cmp	al, 6
14000c436: 45 0f 44 c1                 	cmove	r8d, r9d
14000c43a: 44 89 05 f7 c1 00 00        	mov	dword ptr [rip + 49655], r8d # 0x140018638
14000c441: 44 89 05 f4 c1 00 00        	mov	dword ptr [rip + 49652], r8d # 0x14001863c
14000c448: 33 c0                       	xor	eax, eax
14000c44a: 48 83 c4 10                 	add	rsp, 16
14000c44e: 5b                          	pop	rbx
14000c44f: c3                          	ret
14000c450: 48 83 ec 38                 	sub	rsp, 56
14000c454: 48 8d 05 85 91 00 00        	lea	rax, [rip + 37253]      # 0x1400155e0
14000c45b: 41 b9 1b 00 00 00           	mov	r9d, 27
14000c461: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000c466: e8 05 00 00 00              	call	0x14000c470 <.text+0xb470>
14000c46b: 48 83 c4 38                 	add	rsp, 56
14000c46f: c3                          	ret
14000c470: 48 8b c4                    	mov	rax, rsp
14000c473: 48 83 ec 68                 	sub	rsp, 104
14000c477: 0f 29 70 e8                 	movaps	xmmword ptr [rax - 24], xmm6
14000c47b: 0f 28 f1                    	movaps	xmm6, xmm1
14000c47e: 41 8b d1                    	mov	edx, r9d
14000c481: 0f 28 d8                    	movaps	xmm3, xmm0
14000c484: 41 83 e8 01                 	sub	r8d, 1
14000c488: 74 2a                       	je	0x14000c4b4 <.text+0xb4b4>
14000c48a: 41 83 f8 01                 	cmp	r8d, 1
14000c48e: 75 69                       	jne	0x14000c4f9 <.text+0xb4f9>
14000c490: 44 89 40 d8                 	mov	dword ptr [rax - 40], r8d
14000c494: 0f 57 d2                    	xorps	xmm2, xmm2
14000c497: f2 0f 11 50 d0              	movsd	qword ptr [rax - 48], xmm2
14000c49c: 45 8b c8                    	mov	r9d, r8d
14000c49f: f2 0f 11 40 c8              	movsd	qword ptr [rax - 56], xmm0
14000c4a4: c7 40 c0 21 00 00 00        	mov	dword ptr [rax - 64], 33
14000c4ab: c7 40 b8 08 00 00 00        	mov	dword ptr [rax - 72], 8
14000c4b2: eb 2d                       	jmp	0x14000c4e1 <.text+0xb4e1>
14000c4b4: c7 44 24 40 01 00 00 00     	mov	dword ptr [rsp + 64], 1
14000c4bc: 0f 57 c0                    	xorps	xmm0, xmm0
14000c4bf: f2 0f 11 44 24 38           	movsd	qword ptr [rsp + 56], xmm0
14000c4c5: 41 b9 02 00 00 00           	mov	r9d, 2
14000c4cb: f2 0f 11 5c 24 30           	movsd	qword ptr [rsp + 48], xmm3
14000c4d1: c7 44 24 28 22 00 00 00     	mov	dword ptr [rsp + 40], 34
14000c4d9: c7 44 24 20 04 00 00 00     	mov	dword ptr [rsp + 32], 4
14000c4e1: 48 8b 8c 24 90 00 00 00     	mov	rcx, qword ptr [rsp + 144]
14000c4e9: f2 0f 11 74 24 78           	movsd	qword ptr [rsp + 120], xmm6
14000c4ef: 4c 8b 44 24 78              	mov	r8, qword ptr [rsp + 120]
14000c4f4: e8 bb fd ff ff              	call	0x14000c2b4 <.text+0xb2b4>
14000c4f9: 0f 28 c6                    	movaps	xmm0, xmm6
14000c4fc: 0f 28 74 24 50              	movaps	xmm6, xmmword ptr [rsp + 80]
14000c501: 48 83 c4 68                 	add	rsp, 104
14000c505: c3                          	ret
14000c506: cc                          	int3
14000c507: cc                          	int3
14000c508: cc                          	int3
14000c509: cc                          	int3
14000c50a: cc                          	int3
14000c50b: cc                          	int3
14000c50c: cc                          	int3
14000c50d: cc                          	int3
14000c50e: cc                          	int3
14000c50f: cc                          	int3
14000c510: cc                          	int3
14000c511: cc                          	int3
14000c512: cc                          	int3
14000c513: cc                          	int3
14000c514: cc                          	int3
14000c515: cc                          	int3
14000c516: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
14000c520: 48 83 ec 08                 	sub	rsp, 8
14000c524: 0f ae 1c 24                 	stmxcsr	dword ptr [rsp]
14000c528: 8b 04 24                    	mov	eax, dword ptr [rsp]
14000c52b: 48 83 c4 08                 	add	rsp, 8
14000c52f: c3                          	ret
14000c530: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
14000c534: 0f ae 54 24 08              	ldmxcsr	dword ptr [rsp + 8]
14000c539: c3                          	ret
14000c53a: 0f ae 5c 24 08              	stmxcsr	dword ptr [rsp + 8]
14000c53f: b9 c0 ff ff ff              	mov	ecx, 4294967232
14000c544: 21 4c 24 08                 	and	dword ptr [rsp + 8], ecx
14000c548: 0f ae 54 24 08              	ldmxcsr	dword ptr [rsp + 8]
14000c54d: c3                          	ret
14000c54e: 66 0f 2e 05 9a 90 00 00     	ucomisd	xmm0, qword ptr [rip + 37018] # 0x1400155f0
14000c556: 73 14                       	jae	0x14000c56c <.text+0xb56c>
14000c558: 66 0f 2e 05 98 90 00 00     	ucomisd	xmm0, qword ptr [rip + 37016] # 0x1400155f8
14000c560: 76 0a                       	jbe	0x14000c56c <.text+0xb56c>
14000c562: f2 48 0f 2d c8              	cvtsd2si	rcx, xmm0
14000c567: f2 48 0f 2a c1              	cvtsi2sd	xmm0, rcx
14000c56c: c3                          	ret
14000c56d: cc                          	int3
14000c56e: cc                          	int3
14000c56f: cc                          	int3
14000c570: 48 83 ec 48                 	sub	rsp, 72
14000c574: 83 64 24 30 00              	and	dword ptr [rsp + 48], 0
14000c579: 48 8b 44 24 78              	mov	rax, qword ptr [rsp + 120]
14000c57e: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
14000c583: 48 8b 44 24 70              	mov	rax, qword ptr [rsp + 112]
14000c588: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000c58d: e8 06 00 00 00              	call	0x14000c598 <.text+0xb598>
14000c592: 48 83 c4 48                 	add	rsp, 72
14000c596: c3                          	ret
14000c597: cc                          	int3
14000c598: 48 8b c4                    	mov	rax, rsp
14000c59b: 48 89 58 10                 	mov	qword ptr [rax + 16], rbx
14000c59f: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
14000c5a3: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
14000c5a7: 48 89 48 08                 	mov	qword ptr [rax + 8], rcx
14000c5ab: 55                          	push	rbp
14000c5ac: 48 8b ec                    	mov	rbp, rsp
14000c5af: 48 83 ec 20                 	sub	rsp, 32
14000c5b3: 48 8b da                    	mov	rbx, rdx
14000c5b6: 41 8b f1                    	mov	esi, r9d
14000c5b9: 33 d2                       	xor	edx, edx
14000c5bb: bf 0d 00 00 c0              	mov	edi, 3221225485
14000c5c0: 89 51 04                    	mov	dword ptr [rcx + 4], edx
14000c5c3: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c5c7: 89 50 08                    	mov	dword ptr [rax + 8], edx
14000c5ca: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c5ce: 89 50 0c                    	mov	dword ptr [rax + 12], edx
14000c5d1: 41 f6 c0 10                 	test	r8b, 16
14000c5d5: 74 0d                       	je	0x14000c5e4 <.text+0xb5e4>
14000c5d7: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c5db: bf 8f 00 00 c0              	mov	edi, 3221225615
14000c5e0: 83 48 04 01                 	or	dword ptr [rax + 4], 1
14000c5e4: 41 f6 c0 02                 	test	r8b, 2
14000c5e8: 74 0d                       	je	0x14000c5f7 <.text+0xb5f7>
14000c5ea: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c5ee: bf 93 00 00 c0              	mov	edi, 3221225619
14000c5f3: 83 48 04 02                 	or	dword ptr [rax + 4], 2
14000c5f7: 41 f6 c0 01                 	test	r8b, 1
14000c5fb: 74 0d                       	je	0x14000c60a <.text+0xb60a>
14000c5fd: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c601: bf 91 00 00 c0              	mov	edi, 3221225617
14000c606: 83 48 04 04                 	or	dword ptr [rax + 4], 4
14000c60a: 41 f6 c0 04                 	test	r8b, 4
14000c60e: 74 0d                       	je	0x14000c61d <.text+0xb61d>
14000c610: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c614: bf 8e 00 00 c0              	mov	edi, 3221225614
14000c619: 83 48 04 08                 	or	dword ptr [rax + 4], 8
14000c61d: 41 f6 c0 08                 	test	r8b, 8
14000c621: 74 0d                       	je	0x14000c630 <.text+0xb630>
14000c623: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c627: bf 90 00 00 c0              	mov	edi, 3221225616
14000c62c: 83 48 04 10                 	or	dword ptr [rax + 4], 16
14000c630: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c634: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000c637: 48 c1 e8 07                 	shr	rax, 7
14000c63b: c1 e0 04                    	shl	eax, 4
14000c63e: f7 d0                       	not	eax
14000c640: 33 41 08                    	xor	eax, dword ptr [rcx + 8]
14000c643: 83 e0 10                    	and	eax, 16
14000c646: 31 41 08                    	xor	dword ptr [rcx + 8], eax
14000c649: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c64d: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000c650: 48 c1 e8 09                 	shr	rax, 9
14000c654: c1 e0 03                    	shl	eax, 3
14000c657: f7 d0                       	not	eax
14000c659: 33 41 08                    	xor	eax, dword ptr [rcx + 8]
14000c65c: 83 e0 08                    	and	eax, 8
14000c65f: 31 41 08                    	xor	dword ptr [rcx + 8], eax
14000c662: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c666: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000c669: 48 c1 e8 0a                 	shr	rax, 10
14000c66d: c1 e0 02                    	shl	eax, 2
14000c670: f7 d0                       	not	eax
14000c672: 33 41 08                    	xor	eax, dword ptr [rcx + 8]
14000c675: 83 e0 04                    	and	eax, 4
14000c678: 31 41 08                    	xor	dword ptr [rcx + 8], eax
14000c67b: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c67f: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000c682: 48 c1 e8 0b                 	shr	rax, 11
14000c686: 03 c0                       	add	eax, eax
14000c688: f7 d0                       	not	eax
14000c68a: 33 41 08                    	xor	eax, dword ptr [rcx + 8]
14000c68d: 83 e0 02                    	and	eax, 2
14000c690: 31 41 08                    	xor	dword ptr [rcx + 8], eax
14000c693: 8b 03                       	mov	eax, dword ptr [rbx]
14000c695: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c699: 48 c1 e8 0c                 	shr	rax, 12
14000c69d: f7 d0                       	not	eax
14000c69f: 33 41 08                    	xor	eax, dword ptr [rcx + 8]
14000c6a2: 83 e0 01                    	and	eax, 1
14000c6a5: 31 41 08                    	xor	dword ptr [rcx + 8], eax
14000c6a8: e8 e7 02 00 00              	call	0x14000c994 <.text+0xb994>
14000c6ad: 48 8b d0                    	mov	rdx, rax
14000c6b0: a8 01                       	test	al, 1
14000c6b2: 74 08                       	je	0x14000c6bc <.text+0xb6bc>
14000c6b4: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c6b8: 83 49 0c 10                 	or	dword ptr [rcx + 12], 16
14000c6bc: f6 c2 04                    	test	dl, 4
14000c6bf: 74 08                       	je	0x14000c6c9 <.text+0xb6c9>
14000c6c1: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c6c5: 83 49 0c 08                 	or	dword ptr [rcx + 12], 8
14000c6c9: f6 c2 08                    	test	dl, 8
14000c6cc: 74 08                       	je	0x14000c6d6 <.text+0xb6d6>
14000c6ce: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c6d2: 83 48 0c 04                 	or	dword ptr [rax + 12], 4
14000c6d6: f6 c2 10                    	test	dl, 16
14000c6d9: 74 08                       	je	0x14000c6e3 <.text+0xb6e3>
14000c6db: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c6df: 83 48 0c 02                 	or	dword ptr [rax + 12], 2
14000c6e3: f6 c2 20                    	test	dl, 32
14000c6e6: 74 08                       	je	0x14000c6f0 <.text+0xb6f0>
14000c6e8: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c6ec: 83 48 0c 01                 	or	dword ptr [rax + 12], 1
14000c6f0: 8b 03                       	mov	eax, dword ptr [rbx]
14000c6f2: b9 00 60 00 00              	mov	ecx, 24576
14000c6f7: 48 23 c1                    	and	rax, rcx
14000c6fa: 74 3e                       	je	0x14000c73a <.text+0xb73a>
14000c6fc: 48 3d 00 20 00 00           	cmp	rax, 8192
14000c702: 74 26                       	je	0x14000c72a <.text+0xb72a>
14000c704: 48 3d 00 40 00 00           	cmp	rax, 16384
14000c70a: 74 0e                       	je	0x14000c71a <.text+0xb71a>
14000c70c: 48 3b c1                    	cmp	rax, rcx
14000c70f: 75 30                       	jne	0x14000c741 <.text+0xb741>
14000c711: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c715: 83 08 03                    	or	dword ptr [rax], 3
14000c718: eb 27                       	jmp	0x14000c741 <.text+0xb741>
14000c71a: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c71e: 83 20 fe                    	and	dword ptr [rax], -2
14000c721: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c725: 83 08 02                    	or	dword ptr [rax], 2
14000c728: eb 17                       	jmp	0x14000c741 <.text+0xb741>
14000c72a: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c72e: 83 20 fd                    	and	dword ptr [rax], -3
14000c731: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c735: 83 08 01                    	or	dword ptr [rax], 1
14000c738: eb 07                       	jmp	0x14000c741 <.text+0xb741>
14000c73a: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c73e: 83 20 fc                    	and	dword ptr [rax], -4
14000c741: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c745: 81 e6 ff 0f 00 00           	and	esi, 4095
14000c74b: c1 e6 05                    	shl	esi, 5
14000c74e: 81 20 1f 00 fe ff           	and	dword ptr [rax], 4294836255
14000c754: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c758: 09 30                       	or	dword ptr [rax], esi
14000c75a: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c75e: 48 8b 75 38                 	mov	rsi, qword ptr [rbp + 56]
14000c762: 83 48 20 01                 	or	dword ptr [rax + 32], 1
14000c766: 83 7d 40 00                 	cmp	dword ptr [rbp + 64], 0
14000c76a: 74 33                       	je	0x14000c79f <.text+0xb79f>
14000c76c: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c770: ba e1 ff ff ff              	mov	edx, 4294967265
14000c775: 21 50 20                    	and	dword ptr [rax + 32], edx
14000c778: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
14000c77c: 8b 08                       	mov	ecx, dword ptr [rax]
14000c77e: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c782: 89 48 10                    	mov	dword ptr [rax + 16], ecx
14000c785: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c789: 83 48 60 01                 	or	dword ptr [rax + 96], 1
14000c78d: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c791: 21 50 60                    	and	dword ptr [rax + 96], edx
14000c794: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c798: 8b 0e                       	mov	ecx, dword ptr [rsi]
14000c79a: 89 48 50                    	mov	dword ptr [rax + 80], ecx
14000c79d: eb 48                       	jmp	0x14000c7e7 <.text+0xb7e7>
14000c79f: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c7a3: 41 b8 e3 ff ff ff           	mov	r8d, 4294967267
14000c7a9: 8b 41 20                    	mov	eax, dword ptr [rcx + 32]
14000c7ac: 41 23 c0                    	and	eax, r8d
14000c7af: 83 c8 02                    	or	eax, 2
14000c7b2: 89 41 20                    	mov	dword ptr [rcx + 32], eax
14000c7b5: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
14000c7b9: 48 8b 08                    	mov	rcx, qword ptr [rax]
14000c7bc: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c7c0: 48 89 48 10                 	mov	qword ptr [rax + 16], rcx
14000c7c4: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c7c8: 83 48 60 01                 	or	dword ptr [rax + 96], 1
14000c7cc: 48 8b 55 10                 	mov	rdx, qword ptr [rbp + 16]
14000c7d0: 8b 42 60                    	mov	eax, dword ptr [rdx + 96]
14000c7d3: 41 23 c0                    	and	eax, r8d
14000c7d6: 83 c8 02                    	or	eax, 2
14000c7d9: 89 42 60                    	mov	dword ptr [rdx + 96], eax
14000c7dc: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c7e0: 48 8b 16                    	mov	rdx, qword ptr [rsi]
14000c7e3: 48 89 50 50                 	mov	qword ptr [rax + 80], rdx
14000c7e7: e8 ec 00 00 00              	call	0x14000c8d8 <.text+0xb8d8>
14000c7ec: 33 d2                       	xor	edx, edx
14000c7ee: 4c 8d 4d 10                 	lea	r9, [rbp + 16]
14000c7f2: 8b cf                       	mov	ecx, edi
14000c7f4: 44 8d 42 01                 	lea	r8d, [rdx + 1]
14000c7f8: ff 15 ea 18 00 00           	call	qword ptr [rip + 6378]  # 0x14000e0e8
14000c7fe: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c802: 8b 41 08                    	mov	eax, dword ptr [rcx + 8]
14000c805: a8 10                       	test	al, 16
14000c807: 74 08                       	je	0x14000c811 <.text+0xb811>
14000c809: 48 0f ba 33 07              	btr	qword ptr [rbx], 7
14000c80e: 8b 41 08                    	mov	eax, dword ptr [rcx + 8]
14000c811: a8 08                       	test	al, 8
14000c813: 74 08                       	je	0x14000c81d <.text+0xb81d>
14000c815: 48 0f ba 33 09              	btr	qword ptr [rbx], 9
14000c81a: 8b 41 08                    	mov	eax, dword ptr [rcx + 8]
14000c81d: a8 04                       	test	al, 4
14000c81f: 74 08                       	je	0x14000c829 <.text+0xb829>
14000c821: 48 0f ba 33 0a              	btr	qword ptr [rbx], 10
14000c826: 8b 41 08                    	mov	eax, dword ptr [rcx + 8]
14000c829: a8 02                       	test	al, 2
14000c82b: 74 08                       	je	0x14000c835 <.text+0xb835>
14000c82d: 48 0f ba 33 0b              	btr	qword ptr [rbx], 11
14000c832: 8b 41 08                    	mov	eax, dword ptr [rcx + 8]
14000c835: a8 01                       	test	al, 1
14000c837: 74 05                       	je	0x14000c83e <.text+0xb83e>
14000c839: 48 0f ba 33 0c              	btr	qword ptr [rbx], 12
14000c83e: 8b 01                       	mov	eax, dword ptr [rcx]
14000c840: 83 e0 03                    	and	eax, 3
14000c843: 74 30                       	je	0x14000c875 <.text+0xb875>
14000c845: 83 e8 01                    	sub	eax, 1
14000c848: 74 1f                       	je	0x14000c869 <.text+0xb869>
14000c84a: 83 e8 01                    	sub	eax, 1
14000c84d: 74 0e                       	je	0x14000c85d <.text+0xb85d>
14000c84f: 83 f8 01                    	cmp	eax, 1
14000c852: 75 28                       	jne	0x14000c87c <.text+0xb87c>
14000c854: 48 81 0b 00 60 00 00        	or	qword ptr [rbx], 24576
14000c85b: eb 1f                       	jmp	0x14000c87c <.text+0xb87c>
14000c85d: 48 0f ba 33 0d              	btr	qword ptr [rbx], 13
14000c862: 48 0f ba 2b 0e              	bts	qword ptr [rbx], 14
14000c867: eb 13                       	jmp	0x14000c87c <.text+0xb87c>
14000c869: 48 0f ba 33 0e              	btr	qword ptr [rbx], 14
14000c86e: 48 0f ba 2b 0d              	bts	qword ptr [rbx], 13
14000c873: eb 07                       	jmp	0x14000c87c <.text+0xb87c>
14000c875: 48 81 23 ff 9f ff ff        	and	qword ptr [rbx], -24577
14000c87c: 83 7d 40 00                 	cmp	dword ptr [rbp + 64], 0
14000c880: 74 07                       	je	0x14000c889 <.text+0xb889>
14000c882: 8b 41 50                    	mov	eax, dword ptr [rcx + 80]
14000c885: 89 06                       	mov	dword ptr [rsi], eax
14000c887: eb 07                       	jmp	0x14000c890 <.text+0xb890>
14000c889: 48 8b 41 50                 	mov	rax, qword ptr [rcx + 80]
14000c88d: 48 89 06                    	mov	qword ptr [rsi], rax
14000c890: 48 8b 5c 24 38              	mov	rbx, qword ptr [rsp + 56]
14000c895: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
14000c89a: 48 8b 7c 24 48              	mov	rdi, qword ptr [rsp + 72]
14000c89f: 48 83 c4 20                 	add	rsp, 32
14000c8a3: 5d                          	pop	rbp
14000c8a4: c3                          	ret
14000c8a5: cc                          	int3
14000c8a6: cc                          	int3
14000c8a7: cc                          	int3
14000c8a8: 48 83 ec 28                 	sub	rsp, 40
14000c8ac: 83 f9 01                    	cmp	ecx, 1
14000c8af: 74 15                       	je	0x14000c8c6 <.text+0xb8c6>
14000c8b1: 8d 41 fe                    	lea	eax, [rcx - 2]
14000c8b4: 83 f8 01                    	cmp	eax, 1
14000c8b7: 77 18                       	ja	0x14000c8d1 <.text+0xb8d1>
14000c8b9: e8 52 85 ff ff              	call	0x140004e10 <.text+0x3e10>
14000c8be: c7 00 22 00 00 00           	mov	dword ptr [rax], 34
14000c8c4: eb 0b                       	jmp	0x14000c8d1 <.text+0xb8d1>
14000c8c6: e8 45 85 ff ff              	call	0x140004e10 <.text+0x3e10>
14000c8cb: c7 00 21 00 00 00           	mov	dword ptr [rax], 33
14000c8d1: 48 83 c4 28                 	add	rsp, 40
14000c8d5: c3                          	ret
14000c8d6: cc                          	int3
14000c8d7: cc                          	int3
14000c8d8: 40 53                       	push	rbx
14000c8da: 48 83 ec 20                 	sub	rsp, 32
14000c8de: e8 3d fc ff ff              	call	0x14000c520 <.text+0xb520>
14000c8e3: 8b d8                       	mov	ebx, eax
14000c8e5: 83 e3 3f                    	and	ebx, 63
14000c8e8: e8 4d fc ff ff              	call	0x14000c53a <.text+0xb53a>
14000c8ed: 8b c3                       	mov	eax, ebx
14000c8ef: 48 83 c4 20                 	add	rsp, 32
14000c8f3: 5b                          	pop	rbx
14000c8f4: c3                          	ret
14000c8f5: cc                          	int3
14000c8f6: cc                          	int3
14000c8f7: cc                          	int3
14000c8f8: 48 89 5c 24 18              	mov	qword ptr [rsp + 24], rbx
14000c8fd: 48 89 74 24 20              	mov	qword ptr [rsp + 32], rsi
14000c902: 57                          	push	rdi
14000c903: 48 83 ec 20                 	sub	rsp, 32
14000c907: 48 8b da                    	mov	rbx, rdx
14000c90a: 48 8b f9                    	mov	rdi, rcx
14000c90d: e8 0e fc ff ff              	call	0x14000c520 <.text+0xb520>
14000c912: 8b f0                       	mov	esi, eax
14000c914: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
14000c918: 8b cb                       	mov	ecx, ebx
14000c91a: f7 d1                       	not	ecx
14000c91c: 81 c9 7f 80 ff ff           	or	ecx, 4294934655
14000c922: 23 c8                       	and	ecx, eax
14000c924: 23 fb                       	and	edi, ebx
14000c926: 0b cf                       	or	ecx, edi
14000c928: 89 4c 24 30                 	mov	dword ptr [rsp + 48], ecx
14000c92c: 80 3d ad b0 00 00 00        	cmp	byte ptr [rip + 45229], 0 # 0x1400179e0
14000c933: 74 25                       	je	0x14000c95a <.text+0xb95a>
14000c935: f6 c1 40                    	test	cl, 64
14000c938: 74 20                       	je	0x14000c95a <.text+0xb95a>
14000c93a: e8 f1 fb ff ff              	call	0x14000c530 <.text+0xb530>
14000c93f: eb 21                       	jmp	0x14000c962 <.text+0xb962>
14000c941: c6 05 98 b0 00 00 00        	mov	byte ptr [rip + 45208], 0 # 0x1400179e0
14000c948: 8b 4c 24 30                 	mov	ecx, dword ptr [rsp + 48]
14000c94c: 83 e1 bf                    	and	ecx, -65
14000c94f: e8 dc fb ff ff              	call	0x14000c530 <.text+0xb530>
14000c954: 8b 74 24 38                 	mov	esi, dword ptr [rsp + 56]
14000c958: eb 08                       	jmp	0x14000c962 <.text+0xb962>
14000c95a: 83 e1 bf                    	and	ecx, -65
14000c95d: e8 ce fb ff ff              	call	0x14000c530 <.text+0xb530>
14000c962: 8b c6                       	mov	eax, esi
14000c964: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
14000c969: 48 8b 74 24 48              	mov	rsi, qword ptr [rsp + 72]
14000c96e: 48 83 c4 20                 	add	rsp, 32
14000c972: 5f                          	pop	rdi
14000c973: c3                          	ret
14000c974: 40 53                       	push	rbx
14000c976: 48 83 ec 20                 	sub	rsp, 32
14000c97a: 48 8b d9                    	mov	rbx, rcx
14000c97d: e8 9e fb ff ff              	call	0x14000c520 <.text+0xb520>
14000c982: 83 e3 3f                    	and	ebx, 63
14000c985: 0b c3                       	or	eax, ebx
14000c987: 8b c8                       	mov	ecx, eax
14000c989: 48 83 c4 20                 	add	rsp, 32
14000c98d: 5b                          	pop	rbx
14000c98e: e9 9d fb ff ff              	jmp	0x14000c530 <.text+0xb530>
14000c993: cc                          	int3
14000c994: 48 83 ec 28                 	sub	rsp, 40
14000c998: e8 83 fb ff ff              	call	0x14000c520 <.text+0xb520>
14000c99d: 83 e0 3f                    	and	eax, 63
14000c9a0: 48 83 c4 28                 	add	rsp, 40
14000c9a4: c3                          	ret
14000c9a5: cc                          	int3
14000c9a6: cc                          	int3
14000c9a7: cc                          	int3
14000c9a8: cc                          	int3
14000c9a9: cc                          	int3
14000c9aa: cc                          	int3
14000c9ab: cc                          	int3
14000c9ac: cc                          	int3
14000c9ad: cc                          	int3
14000c9ae: cc                          	int3
14000c9af: cc                          	int3
14000c9b0: 4c 63 41 3c                 	movsxd	r8, dword ptr [rcx + 60]
14000c9b4: 45 33 c9                    	xor	r9d, r9d
14000c9b7: 4c 03 c1                    	add	r8, rcx
14000c9ba: 4c 8b d2                    	mov	r10, rdx
14000c9bd: 41 0f b7 40 14              	movzx	eax, word ptr [r8 + 20]
14000c9c2: 45 0f b7 58 06              	movzx	r11d, word ptr [r8 + 6]
14000c9c7: 48 83 c0 18                 	add	rax, 24
14000c9cb: 49 03 c0                    	add	rax, r8
14000c9ce: 45 85 db                    	test	r11d, r11d
14000c9d1: 74 1e                       	je	0x14000c9f1 <.text+0xb9f1>
14000c9d3: 8b 50 0c                    	mov	edx, dword ptr [rax + 12]
14000c9d6: 4c 3b d2                    	cmp	r10, rdx
14000c9d9: 72 0a                       	jb	0x14000c9e5 <.text+0xb9e5>
14000c9db: 8b 48 08                    	mov	ecx, dword ptr [rax + 8]
14000c9de: 03 ca                       	add	ecx, edx
14000c9e0: 4c 3b d1                    	cmp	r10, rcx
14000c9e3: 72 0e                       	jb	0x14000c9f3 <.text+0xb9f3>
14000c9e5: 41 ff c1                    	inc	r9d
14000c9e8: 48 83 c0 28                 	add	rax, 40
14000c9ec: 45 3b cb                    	cmp	r9d, r11d
14000c9ef: 72 e2                       	jb	0x14000c9d3 <.text+0xb9d3>
14000c9f1: 33 c0                       	xor	eax, eax
14000c9f3: c3                          	ret
14000c9f4: cc                          	int3
14000c9f5: cc                          	int3
14000c9f6: cc                          	int3
14000c9f7: cc                          	int3
14000c9f8: cc                          	int3
14000c9f9: cc                          	int3
14000c9fa: cc                          	int3
14000c9fb: cc                          	int3
14000c9fc: cc                          	int3
14000c9fd: cc                          	int3
14000c9fe: cc                          	int3
14000c9ff: cc                          	int3
14000ca00: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000ca05: 57                          	push	rdi
14000ca06: 48 83 ec 20                 	sub	rsp, 32
14000ca0a: 48 8b d9                    	mov	rbx, rcx
14000ca0d: 48 8d 3d ec 35 ff ff        	lea	rdi, [rip - 51732]      # 0x140000000
14000ca14: 48 8b cf                    	mov	rcx, rdi
14000ca17: e8 34 00 00 00              	call	0x14000ca50 <.text+0xba50>
14000ca1c: 85 c0                       	test	eax, eax
14000ca1e: 74 22                       	je	0x14000ca42 <.text+0xba42>
14000ca20: 48 2b df                    	sub	rbx, rdi
14000ca23: 48 8b d3                    	mov	rdx, rbx
14000ca26: 48 8b cf                    	mov	rcx, rdi
14000ca29: e8 82 ff ff ff              	call	0x14000c9b0 <.text+0xb9b0>
14000ca2e: 48 85 c0                    	test	rax, rax
14000ca31: 74 0f                       	je	0x14000ca42 <.text+0xba42>
14000ca33: 8b 40 24                    	mov	eax, dword ptr [rax + 36]
14000ca36: c1 e8 1f                    	shr	eax, 31
14000ca39: f7 d0                       	not	eax
14000ca3b: 83 e0 01                    	and	eax, 1
14000ca3e: eb 02                       	jmp	0x14000ca42 <.text+0xba42>
14000ca40: 33 c0                       	xor	eax, eax
14000ca42: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000ca47: 48 83 c4 20                 	add	rsp, 32
14000ca4b: 5f                          	pop	rdi
14000ca4c: c3                          	ret
14000ca4d: cc                          	int3
14000ca4e: cc                          	int3
14000ca4f: cc                          	int3
14000ca50: b8 4d 5a 00 00              	mov	eax, 23117
14000ca55: 66 39 01                    	cmp	word ptr [rcx], ax
14000ca58: 75 1e                       	jne	0x14000ca78 <.text+0xba78>
14000ca5a: 48 63 51 3c                 	movsxd	rdx, dword ptr [rcx + 60]
14000ca5e: 48 03 d1                    	add	rdx, rcx
14000ca61: 81 3a 50 45 00 00           	cmp	dword ptr [rdx], 17744
14000ca67: 75 0f                       	jne	0x14000ca78 <.text+0xba78>
14000ca69: 33 c0                       	xor	eax, eax
14000ca6b: b9 0b 02 00 00              	mov	ecx, 523
14000ca70: 66 39 4a 18                 	cmp	word ptr [rdx + 24], cx
14000ca74: 0f 94 c0                    	sete	al
14000ca77: c3                          	ret
14000ca78: 33 c0                       	xor	eax, eax
14000ca7a: c3                          	ret
14000ca7b: cc                          	int3
14000ca7c: 48 83 ec 28                 	sub	rsp, 40
14000ca80: 4d 8b 41 38                 	mov	r8, qword ptr [r9 + 56]
14000ca84: 48 8b ca                    	mov	rcx, rdx
14000ca87: 49 8b d1                    	mov	rdx, r9
14000ca8a: e8 0d 00 00 00              	call	0x14000ca9c <.text+0xba9c>
14000ca8f: b8 01 00 00 00              	mov	eax, 1
14000ca94: 48 83 c4 28                 	add	rsp, 40
14000ca98: c3                          	ret
14000ca99: cc                          	int3
14000ca9a: cc                          	int3
14000ca9b: cc                          	int3
14000ca9c: 40 53                       	push	rbx
14000ca9e: 45 8b 18                    	mov	r11d, dword ptr [r8]
14000caa1: 48 8b da                    	mov	rbx, rdx
14000caa4: 41 83 e3 f8                 	and	r11d, -8
14000caa8: 4c 8b c9                    	mov	r9, rcx
14000caab: 41 f6 00 04                 	test	byte ptr [r8], 4
14000caaf: 4c 8b d1                    	mov	r10, rcx
14000cab2: 74 13                       	je	0x14000cac7 <.text+0xbac7>
14000cab4: 41 8b 40 08                 	mov	eax, dword ptr [r8 + 8]
14000cab8: 4d 63 50 04                 	movsxd	r10, dword ptr [r8 + 4]
14000cabc: f7 d8                       	neg	eax
14000cabe: 4c 03 d1                    	add	r10, rcx
14000cac1: 48 63 c8                    	movsxd	rcx, eax
14000cac4: 4c 23 d1                    	and	r10, rcx
14000cac7: 49 63 c3                    	movsxd	rax, r11d
14000caca: 4a 8b 14 10                 	mov	rdx, qword ptr [rax + r10]
14000cace: 48 8b 43 10                 	mov	rax, qword ptr [rbx + 16]
14000cad2: 8b 48 08                    	mov	ecx, dword ptr [rax + 8]
14000cad5: 48 8b 43 08                 	mov	rax, qword ptr [rbx + 8]
14000cad9: f6 44 01 03 0f              	test	byte ptr [rcx + rax + 3], 15
14000cade: 74 0b                       	je	0x14000caeb <.text+0xbaeb>
14000cae0: 0f b6 44 01 03              	movzx	eax, byte ptr [rcx + rax + 3]
14000cae5: 83 e0 f0                    	and	eax, -16
14000cae8: 4c 03 c8                    	add	r9, rax
14000caeb: 4c 33 ca                    	xor	r9, rdx
14000caee: 49 8b c9                    	mov	rcx, r9
14000caf1: 5b                          	pop	rbx
14000caf2: e9 19 00 00 00              	jmp	0x14000cb10 <.text+0xbb10>
14000caf7: cc                          	int3
14000caf8: cc                          	int3
14000caf9: cc                          	int3
14000cafa: cc                          	int3
14000cafb: cc                          	int3
14000cafc: cc                          	int3
14000cafd: cc                          	int3
14000cafe: cc                          	int3
14000caff: cc                          	int3
14000cb00: cc                          	int3
14000cb01: cc                          	int3
14000cb02: cc                          	int3
14000cb03: cc                          	int3
14000cb04: cc                          	int3
14000cb05: cc                          	int3
14000cb06: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
14000cb10: 48 3b 0d 11 a5 00 00        	cmp	rcx, qword ptr [rip + 42257] # 0x140017028
14000cb17: 75 10                       	jne	0x14000cb29 <.text+0xbb29>
14000cb19: 48 c1 c1 10                 	rol	rcx, 16
14000cb1d: 66 f7 c1 ff ff              	test	cx, 65535
14000cb22: 75 01                       	jne	0x14000cb25 <.text+0xbb25>
14000cb24: c3                          	ret
14000cb25: 48 c1 c9 10                 	ror	rcx, 16
14000cb29: e9 36 00 00 00              	jmp	0x14000cb64 <.text+0xbb64>
14000cb2e: cc                          	int3
14000cb2f: cc                          	int3
14000cb30: 40 53                       	push	rbx
14000cb32: 48 83 ec 20                 	sub	rsp, 32
14000cb36: 48 8b d9                    	mov	rbx, rcx
14000cb39: 33 c9                       	xor	ecx, ecx
14000cb3b: ff 15 0f 15 00 00           	call	qword ptr [rip + 5391]  # 0x14000e050
14000cb41: 48 8b cb                    	mov	rcx, rbx
14000cb44: ff 15 fe 14 00 00           	call	qword ptr [rip + 5374]  # 0x14000e048
14000cb4a: ff 15 b8 15 00 00           	call	qword ptr [rip + 5560]  # 0x14000e108
14000cb50: 48 8b c8                    	mov	rcx, rax
14000cb53: ba 09 04 00 c0              	mov	edx, 3221226505
14000cb58: 48 83 c4 20                 	add	rsp, 32
14000cb5c: 5b                          	pop	rbx
14000cb5d: 48 ff 25 b4 15 00 00        	jmp	qword ptr [rip + 5556]  # 0x14000e118
14000cb64: 48 89 4c 24 08              	mov	qword ptr [rsp + 8], rcx
14000cb69: 48 83 ec 38                 	sub	rsp, 56
14000cb6d: b9 17 00 00 00              	mov	ecx, 23
14000cb72: ff 15 e8 14 00 00           	call	qword ptr [rip + 5352]  # 0x14000e060
14000cb78: 85 c0                       	test	eax, eax
14000cb7a: 74 07                       	je	0x14000cb83 <.text+0xbb83>
14000cb7c: b9 02 00 00 00              	mov	ecx, 2
14000cb81: cd 29                       	int	41
14000cb83: 48 8d 0d 56 bb 00 00        	lea	rcx, [rip + 47958]      # 0x1400186e0
14000cb8a: e8 c9 01 00 00              	call	0x14000cd58 <.text+0xbd58>
14000cb8f: 48 8b 44 24 38              	mov	rax, qword ptr [rsp + 56]
14000cb94: 48 89 05 3d bc 00 00        	mov	qword ptr [rip + 48189], rax # 0x1400187d8
14000cb9b: 48 8d 44 24 38              	lea	rax, [rsp + 56]
14000cba0: 48 83 c0 08                 	add	rax, 8
14000cba4: 48 89 05 cd bb 00 00        	mov	qword ptr [rip + 48077], rax # 0x140018778
14000cbab: 48 8b 05 26 bc 00 00        	mov	rax, qword ptr [rip + 48166] # 0x1400187d8
14000cbb2: 48 89 05 97 ba 00 00        	mov	qword ptr [rip + 47767], rax # 0x140018650
14000cbb9: 48 8b 44 24 40              	mov	rax, qword ptr [rsp + 64]
14000cbbe: 48 89 05 9b bb 00 00        	mov	qword ptr [rip + 48027], rax # 0x140018760
14000cbc5: c7 05 71 ba 00 00 09 04 00 c0       	mov	dword ptr [rip + 47729], 3221226505 # 0x140018640
14000cbcf: c7 05 6b ba 00 00 01 00 00 00       	mov	dword ptr [rip + 47723], 1 # 0x140018644
14000cbd9: c7 05 75 ba 00 00 01 00 00 00       	mov	dword ptr [rip + 47733], 1 # 0x140018658
14000cbe3: b8 08 00 00 00              	mov	eax, 8
14000cbe8: 48 6b c0 00                 	imul	rax, rax, 0
14000cbec: 48 8d 0d 6d ba 00 00        	lea	rcx, [rip + 47725]      # 0x140018660
14000cbf3: 48 c7 04 01 02 00 00 00     	mov	qword ptr [rcx + rax], 2
14000cbfb: b8 08 00 00 00              	mov	eax, 8
14000cc00: 48 6b c0 00                 	imul	rax, rax, 0
14000cc04: 48 8b 0d 1d a4 00 00        	mov	rcx, qword ptr [rip + 42013] # 0x140017028
14000cc0b: 48 89 4c 04 20              	mov	qword ptr [rsp + rax + 32], rcx
14000cc10: b8 08 00 00 00              	mov	eax, 8
14000cc15: 48 6b c0 01                 	imul	rax, rax, 1
14000cc19: 48 8b 0d 00 a4 00 00        	mov	rcx, qword ptr [rip + 41984] # 0x140017020
14000cc20: 48 89 4c 04 20              	mov	qword ptr [rsp + rax + 32], rcx
14000cc25: 48 8d 0d d4 89 00 00        	lea	rcx, [rip + 35284]      # 0x140015600
14000cc2c: e8 ff fe ff ff              	call	0x14000cb30 <.text+0xbb30>
14000cc31: 48 83 c4 38                 	add	rsp, 56
14000cc35: c3                          	ret
14000cc36: cc                          	int3
14000cc37: cc                          	int3
14000cc38: 48 83 ec 28                 	sub	rsp, 40
14000cc3c: b9 08 00 00 00              	mov	ecx, 8
14000cc41: e8 06 00 00 00              	call	0x14000cc4c <.text+0xbc4c>
14000cc46: 48 83 c4 28                 	add	rsp, 40
14000cc4a: c3                          	ret
14000cc4b: cc                          	int3
14000cc4c: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
14000cc50: 48 83 ec 28                 	sub	rsp, 40
14000cc54: b9 17 00 00 00              	mov	ecx, 23
14000cc59: ff 15 01 14 00 00           	call	qword ptr [rip + 5121]  # 0x14000e060
14000cc5f: 85 c0                       	test	eax, eax
14000cc61: 74 08                       	je	0x14000cc6b <.text+0xbc6b>
14000cc63: 8b 44 24 30                 	mov	eax, dword ptr [rsp + 48]
14000cc67: 8b c8                       	mov	ecx, eax
14000cc69: cd 29                       	int	41
14000cc6b: 48 8d 0d 6e ba 00 00        	lea	rcx, [rip + 47726]      # 0x1400186e0
14000cc72: e8 71 00 00 00              	call	0x14000cce8 <.text+0xbce8>
14000cc77: 48 8b 44 24 28              	mov	rax, qword ptr [rsp + 40]
14000cc7c: 48 89 05 55 bb 00 00        	mov	qword ptr [rip + 47957], rax # 0x1400187d8
14000cc83: 48 8d 44 24 28              	lea	rax, [rsp + 40]
14000cc88: 48 83 c0 08                 	add	rax, 8
14000cc8c: 48 89 05 e5 ba 00 00        	mov	qword ptr [rip + 47845], rax # 0x140018778
14000cc93: 48 8b 05 3e bb 00 00        	mov	rax, qword ptr [rip + 47934] # 0x1400187d8
14000cc9a: 48 89 05 af b9 00 00        	mov	qword ptr [rip + 47535], rax # 0x140018650
14000cca1: c7 05 95 b9 00 00 09 04 00 c0       	mov	dword ptr [rip + 47509], 3221226505 # 0x140018640
14000ccab: c7 05 8f b9 00 00 01 00 00 00       	mov	dword ptr [rip + 47503], 1 # 0x140018644
14000ccb5: c7 05 99 b9 00 00 01 00 00 00       	mov	dword ptr [rip + 47513], 1 # 0x140018658
14000ccbf: b8 08 00 00 00              	mov	eax, 8
14000ccc4: 48 6b c0 00                 	imul	rax, rax, 0
14000ccc8: 48 8d 0d 91 b9 00 00        	lea	rcx, [rip + 47505]      # 0x140018660
14000cccf: 8b 54 24 30                 	mov	edx, dword ptr [rsp + 48]
14000ccd3: 48 89 14 01                 	mov	qword ptr [rcx + rax], rdx
14000ccd7: 48 8d 0d 22 89 00 00        	lea	rcx, [rip + 35106]      # 0x140015600
14000ccde: e8 4d fe ff ff              	call	0x14000cb30 <.text+0xbb30>
14000cce3: 48 83 c4 28                 	add	rsp, 40
14000cce7: c3                          	ret
14000cce8: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000cced: 57                          	push	rdi
14000ccee: 48 83 ec 40                 	sub	rsp, 64
14000ccf2: 48 8b d9                    	mov	rbx, rcx
14000ccf5: ff 15 2d 13 00 00           	call	qword ptr [rip + 4909]  # 0x14000e028
14000ccfb: 48 8b bb f8 00 00 00        	mov	rdi, qword ptr [rbx + 248]
14000cd02: 48 8d 54 24 50              	lea	rdx, [rsp + 80]
14000cd07: 48 8b cf                    	mov	rcx, rdi
14000cd0a: 45 33 c0                    	xor	r8d, r8d
14000cd0d: ff 15 1d 13 00 00           	call	qword ptr [rip + 4893]  # 0x14000e030
14000cd13: 48 85 c0                    	test	rax, rax
14000cd16: 74 32                       	je	0x14000cd4a <.text+0xbd4a>
14000cd18: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
14000cd1e: 48 8d 4c 24 58              	lea	rcx, [rsp + 88]
14000cd23: 48 8b 54 24 50              	mov	rdx, qword ptr [rsp + 80]
14000cd28: 4c 8b c8                    	mov	r9, rax
14000cd2b: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
14000cd30: 4c 8b c7                    	mov	r8, rdi
14000cd33: 48 8d 4c 24 60              	lea	rcx, [rsp + 96]
14000cd38: 48 89 4c 24 28              	mov	qword ptr [rsp + 40], rcx
14000cd3d: 33 c9                       	xor	ecx, ecx
14000cd3f: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000cd44: ff 15 ee 12 00 00           	call	qword ptr [rip + 4846]  # 0x14000e038
14000cd4a: 48 8b 5c 24 68              	mov	rbx, qword ptr [rsp + 104]
14000cd4f: 48 83 c4 40                 	add	rsp, 64
14000cd53: 5f                          	pop	rdi
14000cd54: c3                          	ret
14000cd55: cc                          	int3
14000cd56: cc                          	int3
14000cd57: cc                          	int3
14000cd58: 40 53                       	push	rbx
14000cd5a: 56                          	push	rsi
14000cd5b: 57                          	push	rdi
14000cd5c: 48 83 ec 40                 	sub	rsp, 64
14000cd60: 48 8b d9                    	mov	rbx, rcx
14000cd63: ff 15 bf 12 00 00           	call	qword ptr [rip + 4799]  # 0x14000e028
14000cd69: 48 8b b3 f8 00 00 00        	mov	rsi, qword ptr [rbx + 248]
14000cd70: 33 ff                       	xor	edi, edi
14000cd72: 45 33 c0                    	xor	r8d, r8d
14000cd75: 48 8d 54 24 60              	lea	rdx, [rsp + 96]
14000cd7a: 48 8b ce                    	mov	rcx, rsi
14000cd7d: ff 15 ad 12 00 00           	call	qword ptr [rip + 4781]  # 0x14000e030
14000cd83: 48 85 c0                    	test	rax, rax
14000cd86: 74 39                       	je	0x14000cdc1 <.text+0xbdc1>
14000cd88: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
14000cd8e: 48 8d 4c 24 68              	lea	rcx, [rsp + 104]
14000cd93: 48 8b 54 24 60              	mov	rdx, qword ptr [rsp + 96]
14000cd98: 4c 8b c8                    	mov	r9, rax
14000cd9b: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
14000cda0: 4c 8b c6                    	mov	r8, rsi
14000cda3: 48 8d 4c 24 70              	lea	rcx, [rsp + 112]
14000cda8: 48 89 4c 24 28              	mov	qword ptr [rsp + 40], rcx
14000cdad: 33 c9                       	xor	ecx, ecx
14000cdaf: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000cdb4: ff 15 7e 12 00 00           	call	qword ptr [rip + 4734]  # 0x14000e038
14000cdba: ff c7                       	inc	edi
14000cdbc: 83 ff 02                    	cmp	edi, 2
14000cdbf: 7c b1                       	jl	0x14000cd72 <.text+0xbd72>
14000cdc1: 48 83 c4 40                 	add	rsp, 64
14000cdc5: 5f                          	pop	rdi
14000cdc6: 5e                          	pop	rsi
14000cdc7: 5b                          	pop	rbx
14000cdc8: c3                          	ret
14000cdc9: cc                          	int3
14000cdca: cc                          	int3
14000cdcb: cc                          	int3
14000cdcc: cc                          	int3
14000cdcd: cc                          	int3
14000cdce: cc                          	int3
14000cdcf: cc                          	int3
14000cdd0: cc                          	int3
14000cdd1: cc                          	int3
14000cdd2: cc                          	int3
14000cdd3: cc                          	int3
14000cdd4: cc                          	int3
14000cdd5: cc                          	int3
14000cdd6: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
14000cde0: 48 83 ec 10                 	sub	rsp, 16
14000cde4: 4c 89 14 24                 	mov	qword ptr [rsp], r10
14000cde8: 4c 89 5c 24 08              	mov	qword ptr [rsp + 8], r11
14000cded: 4d 33 db                    	xor	r11, r11
14000cdf0: 4c 8d 54 24 18              	lea	r10, [rsp + 24]
14000cdf5: 4c 2b d0                    	sub	r10, rax
14000cdf8: 4d 0f 42 d3                 	cmovb	r10, r11
14000cdfc: 65 4c 8b 1c 25 10 00 00 00  	mov	r11, qword ptr gs:[16]
14000ce05: 4d 3b d3                    	cmp	r10, r11
14000ce08: 73 16                       	jae	0x14000ce20 <.text+0xbe20>
14000ce0a: 66 41 81 e2 00 f0           	and	r10w, 61440
14000ce10: 4d 8d 9b 00 f0 ff ff        	lea	r11, [r11 - 4096]
14000ce17: 41 c6 03 00                 	mov	byte ptr [r11], 0
14000ce1b: 4d 3b d3                    	cmp	r10, r11
14000ce1e: 75 f0                       	jne	0x14000ce10 <.text+0xbe10>
14000ce20: 4c 8b 14 24                 	mov	r10, qword ptr [rsp]
14000ce24: 4c 8b 5c 24 08              	mov	r11, qword ptr [rsp + 8]
14000ce29: 48 83 c4 10                 	add	rsp, 16
14000ce2d: c3                          	ret
14000ce2e: cc                          	int3
14000ce2f: cc                          	int3
14000ce30: cc                          	int3
14000ce31: cc                          	int3
14000ce32: cc                          	int3
14000ce33: cc                          	int3
14000ce34: cc                          	int3
14000ce35: cc                          	int3
14000ce36: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
14000ce40: 48 2b d1                    	sub	rdx, rcx
14000ce43: 49 83 f8 08                 	cmp	r8, 8
14000ce47: 72 22                       	jb	0x14000ce6b <.text+0xbe6b>
14000ce49: f6 c1 07                    	test	cl, 7
14000ce4c: 74 14                       	je	0x14000ce62 <.text+0xbe62>
14000ce4e: 66 90                       	nop
14000ce50: 8a 01                       	mov	al, byte ptr [rcx]
14000ce52: 3a 04 11                    	cmp	al, byte ptr [rcx + rdx]
14000ce55: 75 2c                       	jne	0x14000ce83 <.text+0xbe83>
14000ce57: 48 ff c1                    	inc	rcx
14000ce5a: 49 ff c8                    	dec	r8
14000ce5d: f6 c1 07                    	test	cl, 7
14000ce60: 75 ee                       	jne	0x14000ce50 <.text+0xbe50>
14000ce62: 4d 8b c8                    	mov	r9, r8
14000ce65: 49 c1 e9 03                 	shr	r9, 3
14000ce69: 75 1f                       	jne	0x14000ce8a <.text+0xbe8a>
14000ce6b: 4d 85 c0                    	test	r8, r8
14000ce6e: 74 0f                       	je	0x14000ce7f <.text+0xbe7f>
14000ce70: 8a 01                       	mov	al, byte ptr [rcx]
14000ce72: 3a 04 11                    	cmp	al, byte ptr [rcx + rdx]
14000ce75: 75 0c                       	jne	0x14000ce83 <.text+0xbe83>
14000ce77: 48 ff c1                    	inc	rcx
14000ce7a: 49 ff c8                    	dec	r8
14000ce7d: 75 f1                       	jne	0x14000ce70 <.text+0xbe70>
14000ce7f: 48 33 c0                    	xor	rax, rax
14000ce82: c3                          	ret
14000ce83: 1b c0                       	sbb	eax, eax
14000ce85: 83 d8 ff                    	sbb	eax, -1
14000ce88: c3                          	ret
14000ce89: 90                          	nop
14000ce8a: 49 c1 e9 02                 	shr	r9, 2
14000ce8e: 74 37                       	je	0x14000cec7 <.text+0xbec7>
14000ce90: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000ce93: 48 3b 04 11                 	cmp	rax, qword ptr [rcx + rdx]
14000ce97: 75 5b                       	jne	0x14000cef4 <.text+0xbef4>
14000ce99: 48 8b 41 08                 	mov	rax, qword ptr [rcx + 8]
14000ce9d: 48 3b 44 11 08              	cmp	rax, qword ptr [rcx + rdx + 8]
14000cea2: 75 4c                       	jne	0x14000cef0 <.text+0xbef0>
14000cea4: 48 8b 41 10                 	mov	rax, qword ptr [rcx + 16]
14000cea8: 48 3b 44 11 10              	cmp	rax, qword ptr [rcx + rdx + 16]
14000cead: 75 3d                       	jne	0x14000ceec <.text+0xbeec>
14000ceaf: 48 8b 41 18                 	mov	rax, qword ptr [rcx + 24]
14000ceb3: 48 3b 44 11 18              	cmp	rax, qword ptr [rcx + rdx + 24]
14000ceb8: 75 2e                       	jne	0x14000cee8 <.text+0xbee8>
14000ceba: 48 83 c1 20                 	add	rcx, 32
14000cebe: 49 ff c9                    	dec	r9
14000cec1: 75 cd                       	jne	0x14000ce90 <.text+0xbe90>
14000cec3: 49 83 e0 1f                 	and	r8, 31
14000cec7: 4d 8b c8                    	mov	r9, r8
14000ceca: 49 c1 e9 03                 	shr	r9, 3
14000cece: 74 9b                       	je	0x14000ce6b <.text+0xbe6b>
14000ced0: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000ced3: 48 3b 04 11                 	cmp	rax, qword ptr [rcx + rdx]
14000ced7: 75 1b                       	jne	0x14000cef4 <.text+0xbef4>
14000ced9: 48 83 c1 08                 	add	rcx, 8
14000cedd: 49 ff c9                    	dec	r9
14000cee0: 75 ee                       	jne	0x14000ced0 <.text+0xbed0>
14000cee2: 49 83 e0 07                 	and	r8, 7
14000cee6: eb 83                       	jmp	0x14000ce6b <.text+0xbe6b>
14000cee8: 48 83 c1 08                 	add	rcx, 8
14000ceec: 48 83 c1 08                 	add	rcx, 8
14000cef0: 48 83 c1 08                 	add	rcx, 8
14000cef4: 48 8b 0c 0a                 	mov	rcx, qword ptr [rdx + rcx]
14000cef8: 48 0f c8                    	bswap	rax
14000cefb: 48 0f c9                    	bswap	rcx
14000cefe: 48 3b c1                    	cmp	rax, rcx
14000cf01: 1b c0                       	sbb	eax, eax
14000cf03: 83 d8 ff                    	sbb	eax, -1
14000cf06: c3                          	ret
14000cf07: cc                          	int3
14000cf08: 0f b6 c2                    	movzx	eax, dl
14000cf0b: 4c 8b c1                    	mov	r8, rcx
14000cf0e: 44 8b d0                    	mov	r10d, eax
14000cf11: 49 83 e0 f0                 	and	r8, -16
14000cf15: 41 c1 e2 08                 	shl	r10d, 8
14000cf19: 83 e1 0f                    	and	ecx, 15
14000cf1c: 44 0b d0                    	or	r10d, eax
14000cf1f: 45 33 c9                    	xor	r9d, r9d
14000cf22: 83 c8 ff                    	or	eax, -1
14000cf25: d3 e0                       	shl	eax, cl
14000cf27: 66 41 0f 6e c2              	movd	xmm0, r10d
14000cf2c: f2 0f 70 c8 00              	pshuflw	xmm1, xmm0, 0           # xmm1 = xmm0[0,0,0,0,4,5,6,7]
14000cf31: 0f 57 c0                    	xorps	xmm0, xmm0
14000cf34: 66 41 0f 74 00              	pcmpeqb	xmm0, xmmword ptr [r8]
14000cf39: 66 0f 70 d1 00              	pshufd	xmm2, xmm1, 0           # xmm2 = xmm1[0,0,0,0]
14000cf3e: 66 0f 6f ca                 	movdqa	xmm1, xmm2
14000cf42: 66 41 0f 74 08              	pcmpeqb	xmm1, xmmword ptr [r8]
14000cf47: 66 0f eb c8                 	por	xmm1, xmm0
14000cf4b: 66 0f d7 d1                 	pmovmskb	edx, xmm1
14000cf4f: 23 d0                       	and	edx, eax
14000cf51: 75 21                       	jne	0x14000cf74 <.text+0xbf74>
14000cf53: 49 83 c0 10                 	add	r8, 16
14000cf57: 66 0f 6f ca                 	movdqa	xmm1, xmm2
14000cf5b: 0f 57 c0                    	xorps	xmm0, xmm0
14000cf5e: 66 41 0f 74 08              	pcmpeqb	xmm1, xmmword ptr [r8]
14000cf63: 66 41 0f 74 00              	pcmpeqb	xmm0, xmmword ptr [r8]
14000cf68: 66 0f eb c8                 	por	xmm1, xmm0
14000cf6c: 66 0f d7 d1                 	pmovmskb	edx, xmm1
14000cf70: 85 d2                       	test	edx, edx
14000cf72: 74 df                       	je	0x14000cf53 <.text+0xbf53>
14000cf74: 0f bc d2                    	bsf	edx, edx
14000cf77: 49 03 d0                    	add	rdx, r8
14000cf7a: 44 38 12                    	cmp	byte ptr [rdx], r10b
14000cf7d: 4c 0f 44 ca                 	cmove	r9, rdx
14000cf81: 49 8b c1                    	mov	rax, r9
14000cf84: c3                          	ret
14000cf85: cc                          	int3
14000cf86: cc                          	int3
14000cf87: cc                          	int3
14000cf88: cc                          	int3
14000cf89: cc                          	int3
14000cf8a: cc                          	int3
14000cf8b: cc                          	int3
14000cf8c: cc                          	int3
14000cf8d: cc                          	int3
14000cf8e: cc                          	int3
14000cf8f: cc                          	int3
14000cf90: cc                          	int3
14000cf91: cc                          	int3
14000cf92: cc                          	int3
14000cf93: cc                          	int3
14000cf94: cc                          	int3
14000cf95: cc                          	int3
14000cf96: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
14000cfa0: ff e0                       	jmp	rax
14000cfa2: cc                          	int3
14000cfa3: cc                          	int3
14000cfa4: cc                          	int3
14000cfa5: cc                          	int3
14000cfa6: cc                          	int3
14000cfa7: cc                          	int3
14000cfa8: cc                          	int3
14000cfa9: cc                          	int3
14000cfaa: cc                          	int3
14000cfab: cc                          	int3
14000cfac: cc                          	int3
14000cfad: cc                          	int3
14000cfae: cc                          	int3
14000cfaf: cc                          	int3
14000cfb0: cc                          	int3
14000cfb1: cc                          	int3
14000cfb2: cc                          	int3
14000cfb3: cc                          	int3
14000cfb4: cc                          	int3
14000cfb5: cc                          	int3
14000cfb6: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
14000cfc0: ff 25 6a 12 00 00           	jmp	qword ptr [rip + 4714]  # 0x14000e230
14000cfc6: cc                          	int3
14000cfc7: cc                          	int3
14000cfc8: cc                          	int3
14000cfc9: cc                          	int3
14000cfca: cc                          	int3
14000cfcb: cc                          	int3
14000cfcc: cc                          	int3
14000cfcd: cc                          	int3
14000cfce: cc                          	int3
14000cfcf: cc                          	int3
14000cfd0: 40 55                       	push	rbp
14000cfd2: 48 83 ec 20                 	sub	rsp, 32
14000cfd6: 48 8b ea                    	mov	rbp, rdx
14000cfd9: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000cfdc: 48 8b d1                    	mov	rdx, rcx
14000cfdf: 8b 08                       	mov	ecx, dword ptr [rax]
14000cfe1: e8 72 5e ff ff              	call	0x140002e58 <.text+0x1e58>
14000cfe6: 90                          	nop
14000cfe7: 48 83 c4 20                 	add	rsp, 32
14000cfeb: 5d                          	pop	rbp
14000cfec: c3                          	ret
14000cfed: cc                          	int3
14000cfee: 40 55                       	push	rbp
14000cff0: 48 8b ea                    	mov	rbp, rdx
14000cff3: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000cff6: 33 c9                       	xor	ecx, ecx
14000cff8: 81 38 05 00 00 c0           	cmp	dword ptr [rax], 3221225477
14000cffe: 0f 94 c1                    	sete	cl
14000d001: 8b c1                       	mov	eax, ecx
14000d003: 5d                          	pop	rbp
14000d004: c3                          	ret
14000d005: cc                          	int3
14000d006: 40 53                       	push	rbx
14000d008: 55                          	push	rbp
14000d009: 48 83 ec 28                 	sub	rsp, 40
14000d00d: 48 8b ea                    	mov	rbp, rdx
14000d010: 48 89 4d 38                 	mov	qword ptr [rbp + 56], rcx
14000d014: 48 89 4d 30                 	mov	qword ptr [rbp + 48], rcx
14000d018: 80 7d 58 00                 	cmp	byte ptr [rbp + 88], 0
14000d01c: 74 6c                       	je	0x14000d08a <.text+0xc08a>
14000d01e: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
14000d022: 48 8b 08                    	mov	rcx, qword ptr [rax]
14000d025: 48 89 4d 28                 	mov	qword ptr [rbp + 40], rcx
14000d029: 48 8b 45 28                 	mov	rax, qword ptr [rbp + 40]
14000d02d: 81 38 63 73 6d e0           	cmp	dword ptr [rax], 3765269347
14000d033: 75 55                       	jne	0x14000d08a <.text+0xc08a>
14000d035: 48 8b 45 28                 	mov	rax, qword ptr [rbp + 40]
14000d039: 83 78 18 04                 	cmp	dword ptr [rax + 24], 4
14000d03d: 75 4b                       	jne	0x14000d08a <.text+0xc08a>
14000d03f: 48 8b 45 28                 	mov	rax, qword ptr [rbp + 40]
14000d043: 81 78 20 20 05 93 19        	cmp	dword ptr [rax + 32], 429065504
14000d04a: 74 1a                       	je	0x14000d066 <.text+0xc066>
14000d04c: 48 8b 45 28                 	mov	rax, qword ptr [rbp + 40]
14000d050: 81 78 20 21 05 93 19        	cmp	dword ptr [rax + 32], 429065505
14000d057: 74 0d                       	je	0x14000d066 <.text+0xc066>
14000d059: 48 8b 45 28                 	mov	rax, qword ptr [rbp + 40]
14000d05d: 81 78 20 22 05 93 19        	cmp	dword ptr [rax + 32], 429065506
14000d064: 75 24                       	jne	0x14000d08a <.text+0xc08a>
14000d066: e8 81 51 ff ff              	call	0x1400021ec <.text+0x11ec>
14000d06b: 48 8b 4d 28                 	mov	rcx, qword ptr [rbp + 40]
14000d06f: 48 89 48 20                 	mov	qword ptr [rax + 32], rcx
14000d073: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
14000d077: 48 8b 58 08                 	mov	rbx, qword ptr [rax + 8]
14000d07b: e8 6c 51 ff ff              	call	0x1400021ec <.text+0x11ec>
14000d080: 48 89 58 28                 	mov	qword ptr [rax + 40], rbx
14000d084: e8 e7 71 ff ff              	call	0x140004270 <.text+0x3270>
14000d089: 90                          	nop
14000d08a: c7 45 20 00 00 00 00        	mov	dword ptr [rbp + 32], 0
14000d091: 8b 45 20                    	mov	eax, dword ptr [rbp + 32]
14000d094: 48 83 c4 28                 	add	rsp, 40
14000d098: 5d                          	pop	rbp
14000d099: 5b                          	pop	rbx
14000d09a: c3                          	ret
14000d09b: cc                          	int3
14000d09c: 40 55                       	push	rbp
14000d09e: 48 83 ec 20                 	sub	rsp, 32
14000d0a2: 48 8b ea                    	mov	rbp, rdx
14000d0a5: 48 8b 45 48                 	mov	rax, qword ptr [rbp + 72]
14000d0a9: 8b 08                       	mov	ecx, dword ptr [rax]
14000d0ab: 48 83 c4 20                 	add	rsp, 32
14000d0af: 5d                          	pop	rbp
14000d0b0: e9 d3 9b ff ff              	jmp	0x140006c88 <.text+0x5c88>
14000d0b5: cc                          	int3
14000d0b6: 40 55                       	push	rbp
14000d0b8: 48 83 ec 20                 	sub	rsp, 32
14000d0bc: 48 8b ea                    	mov	rbp, rdx
14000d0bf: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000d0c2: 8b 08                       	mov	ecx, dword ptr [rax]
14000d0c4: e8 7b 68 ff ff              	call	0x140003944 <.text+0x2944>
14000d0c9: 90                          	nop
14000d0ca: 48 83 c4 20                 	add	rsp, 32
14000d0ce: 5d                          	pop	rbp
14000d0cf: c3                          	ret
14000d0d0: cc                          	int3
14000d0d1: 40 55                       	push	rbp
14000d0d3: 48 83 ec 20                 	sub	rsp, 32
14000d0d7: 48 8b ea                    	mov	rbp, rdx
14000d0da: 48 8b 45 58                 	mov	rax, qword ptr [rbp + 88]
14000d0de: 8b 08                       	mov	ecx, dword ptr [rax]
14000d0e0: 48 83 c4 20                 	add	rsp, 32
14000d0e4: 5d                          	pop	rbp
14000d0e5: e9 9e 9b ff ff              	jmp	0x140006c88 <.text+0x5c88>
14000d0ea: cc                          	int3
14000d0eb: 40 55                       	push	rbp
14000d0ed: 48 83 ec 20                 	sub	rsp, 32
14000d0f1: 48 8b ea                    	mov	rbp, rdx
14000d0f4: b9 05 00 00 00              	mov	ecx, 5
14000d0f9: 48 83 c4 20                 	add	rsp, 32
14000d0fd: 5d                          	pop	rbp
14000d0fe: e9 85 9b ff ff              	jmp	0x140006c88 <.text+0x5c88>
14000d103: cc                          	int3
14000d104: 40 55                       	push	rbp
14000d106: 48 83 ec 20                 	sub	rsp, 32
14000d10a: 48 8b ea                    	mov	rbp, rdx
14000d10d: b9 07 00 00 00              	mov	ecx, 7
14000d112: 48 83 c4 20                 	add	rsp, 32
14000d116: 5d                          	pop	rbp
14000d117: e9 6c 9b ff ff              	jmp	0x140006c88 <.text+0x5c88>
14000d11c: cc                          	int3
14000d11d: 40 55                       	push	rbp
14000d11f: 48 83 ec 20                 	sub	rsp, 32
14000d123: 48 8b ea                    	mov	rbp, rdx
14000d126: b9 04 00 00 00              	mov	ecx, 4
14000d12b: 48 83 c4 20                 	add	rsp, 32
14000d12f: 5d                          	pop	rbp
14000d130: e9 53 9b ff ff              	jmp	0x140006c88 <.text+0x5c88>
14000d135: cc                          	int3
14000d136: 40 55                       	push	rbp
14000d138: 48 83 ec 20                 	sub	rsp, 32
14000d13c: 48 8b ea                    	mov	rbp, rdx
14000d13f: 33 c9                       	xor	ecx, ecx
14000d141: 48 83 c4 20                 	add	rsp, 32
14000d145: 5d                          	pop	rbp
14000d146: e9 3d 9b ff ff              	jmp	0x140006c88 <.text+0x5c88>
14000d14b: cc                          	int3
14000d14c: 40 55                       	push	rbp
14000d14e: 48 83 ec 20                 	sub	rsp, 32
14000d152: 48 8b ea                    	mov	rbp, rdx
14000d155: 80 7d 70 00                 	cmp	byte ptr [rbp + 112], 0
14000d159: 74 0b                       	je	0x14000d166 <.text+0xc166>
14000d15b: b9 03 00 00 00              	mov	ecx, 3
14000d160: e8 23 9b ff ff              	call	0x140006c88 <.text+0x5c88>
14000d165: 90                          	nop
14000d166: 48 83 c4 20                 	add	rsp, 32
14000d16a: 5d                          	pop	rbp
14000d16b: c3                          	ret
14000d16c: cc                          	int3
14000d16d: 40 55                       	push	rbp
14000d16f: 48 83 ec 20                 	sub	rsp, 32
14000d173: 48 8b ea                    	mov	rbp, rdx
14000d176: 48 8b 4d 48                 	mov	rcx, qword ptr [rbp + 72]
14000d17a: 48 8b 09                    	mov	rcx, qword ptr [rcx]
14000d17d: 48 83 c4 20                 	add	rsp, 32
14000d181: 5d                          	pop	rbp
14000d182: e9 a9 b9 ff ff              	jmp	0x140008b30 <.text+0x7b30>
14000d187: cc                          	int3
14000d188: 40 55                       	push	rbp
14000d18a: 48 83 ec 20                 	sub	rsp, 32
14000d18e: 48 8b ea                    	mov	rbp, rdx
14000d191: 48 8b 85 98 00 00 00        	mov	rax, qword ptr [rbp + 152]
14000d198: 8b 08                       	mov	ecx, dword ptr [rax]
14000d19a: 48 83 c4 20                 	add	rsp, 32
14000d19e: 5d                          	pop	rbp
14000d19f: e9 e4 9a ff ff              	jmp	0x140006c88 <.text+0x5c88>
14000d1a4: cc                          	int3
14000d1a5: 40 55                       	push	rbp
14000d1a7: 48 83 ec 20                 	sub	rsp, 32
14000d1ab: 48 8b ea                    	mov	rbp, rdx
14000d1ae: 48 8b 45 48                 	mov	rax, qword ptr [rbp + 72]
14000d1b2: 8b 08                       	mov	ecx, dword ptr [rax]
14000d1b4: 48 83 c4 20                 	add	rsp, 32
14000d1b8: 5d                          	pop	rbp
14000d1b9: e9 ea 9c ff ff              	jmp	0x140006ea8 <.text+0x5ea8>
14000d1be: cc                          	int3
14000d1bf: 40 55                       	push	rbp
14000d1c1: 48 83 ec 20                 	sub	rsp, 32
14000d1c5: 48 8b ea                    	mov	rbp, rdx
14000d1c8: 8b 4d 50                    	mov	ecx, dword ptr [rbp + 80]
14000d1cb: 48 83 c4 20                 	add	rsp, 32
14000d1cf: 5d                          	pop	rbp
14000d1d0: e9 d3 9c ff ff              	jmp	0x140006ea8 <.text+0x5ea8>
14000d1d5: cc                          	int3
14000d1d6: 40 55                       	push	rbp
14000d1d8: 48 83 ec 20                 	sub	rsp, 32
14000d1dc: 48 8b ea                    	mov	rbp, rdx
14000d1df: b9 08 00 00 00              	mov	ecx, 8
14000d1e4: 48 83 c4 20                 	add	rsp, 32
14000d1e8: 5d                          	pop	rbp
14000d1e9: e9 9a 9a ff ff              	jmp	0x140006c88 <.text+0x5c88>
14000d1ee: cc                          	int3
14000d1ef: 40 55                       	push	rbp
14000d1f1: 48 83 ec 20                 	sub	rsp, 32
14000d1f5: 48 8b ea                    	mov	rbp, rdx
14000d1f8: 48 8b 4d 30                 	mov	rcx, qword ptr [rbp + 48]
14000d1fc: 48 83 c4 20                 	add	rsp, 32
14000d200: 5d                          	pop	rbp
14000d201: e9 2a b9 ff ff              	jmp	0x140008b30 <.text+0x7b30>
14000d206: cc                          	int3
14000d207: 40 55                       	push	rbp
14000d209: 48 83 ec 20                 	sub	rsp, 32
14000d20d: 48 8b ea                    	mov	rbp, rdx
14000d210: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000d213: 81 38 05 00 00 c0           	cmp	dword ptr [rax], 3221225477
14000d219: 74 0c                       	je	0x14000d227 <.text+0xc227>
14000d21b: 81 38 1d 00 00 c0           	cmp	dword ptr [rax], 3221225501
14000d221: 74 04                       	je	0x14000d227 <.text+0xc227>
14000d223: 33 c0                       	xor	eax, eax
14000d225: eb 05                       	jmp	0x14000d22c <.text+0xc22c>
14000d227: b8 01 00 00 00              	mov	eax, 1
14000d22c: 48 83 c4 20                 	add	rsp, 32
14000d230: 5d                          	pop	rbp
14000d231: c3                          	ret
14000d232: cc                          	int3
14000d233: cc                          	int3
14000d234: cc                          	int3
14000d235: cc                          	int3
14000d236: cc                          	int3
14000d237: cc                          	int3
14000d238: cc                          	int3
14000d239: cc                          	int3
14000d23a: cc                          	int3
14000d23b: cc                          	int3
14000d23c: cc                          	int3
14000d23d: cc                          	int3
14000d23e: cc                          	int3
14000d23f: cc                          	int3
14000d240: 40 55                       	push	rbp
14000d242: 48 83 ec 20                 	sub	rsp, 32
14000d246: 48 8b ea                    	mov	rbp, rdx
14000d249: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000d24c: 33 c9                       	xor	ecx, ecx
14000d24e: 81 38 05 00 00 c0           	cmp	dword ptr [rax], 3221225477
14000d254: 0f 94 c1                    	sete	cl
14000d257: 8b c1                       	mov	eax, ecx
14000d259: 48 83 c4 20                 	add	rsp, 32
14000d25d: 5d                          	pop	rbp
14000d25e: c3                          	ret
14000d25f: cc                          	int3
