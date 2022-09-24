
a.exe:	file format coff-x86-64

Disassembly of section .text:

0000000140001000 <.text>:
140001000: 55                          	push	rbp
140001001: 48 8b ec                    	mov	rbp, rsp
140001004: 48 8d 05 00 10 00 40        	lea	rax, [rip + 1073745920] # 0x18000200b
14000100b: 49 b9 00 10 00 40 01 00 00 00       	movabs	r9, 5368713216
140001015: 48 89 4d dc                 	mov	qword ptr [rbp - 36], rcx
140001019: 48 8b c8                    	mov	rcx, rax
14000101c: 48 8b 55 dc                 	mov	rdx, qword ptr [rbp - 36]
140001020: 48 8b d0                    	mov	rdx, rax
140001023: 89 45 d8                    	mov	dword ptr [rbp - 40], eax
140001026: 89 45 d4                    	mov	dword ptr [rbp - 44], eax
140001029: 48 89 4d c8                 	mov	qword ptr [rbp - 56], rcx
14000102d: ff d2                       	call	rdx
14000102f: 8b 45 d4                    	mov	eax, dword ptr [rbp - 44]
140001032: 48 b9 00 00 00 00 00 00 00 00       	movabs	rcx, 0
14000103c: 48 8b c1                    	mov	rax, rcx
14000103f: 5d                          	pop	rbp
140001040: c3                          	ret
140001041: cc                          	int3
140001042: cc                          	int3
140001043: cc                          	int3
140001044: cc                          	int3
140001045: cc                          	int3
140001046: cc                          	int3
140001047: cc                          	int3
140001048: cc                          	int3
140001049: cc                          	int3
14000104a: cc                          	int3
14000104b: cc                          	int3
14000104c: cc                          	int3
14000104d: cc                          	int3
14000104e: cc                          	int3
14000104f: cc                          	int3
140001050: 40 53                       	push	rbx
140001052: 48 83 ec 20                 	sub	rsp, 32
140001056: b9 01 00 00 00              	mov	ecx, 1
14000105b: e8 54 1f 00 00              	call	0x140002fb4 <.text+0x1fb4>
140001060: e8 67 05 00 00              	call	0x1400015cc <.text+0x5cc>
140001065: 8b c8                       	mov	ecx, eax
140001067: e8 94 2a 00 00              	call	0x140003b00 <.text+0x2b00>
14000106c: e8 4f 05 00 00              	call	0x1400015c0 <.text+0x5c0>
140001071: 8b d8                       	mov	ebx, eax
140001073: e8 4c 2c 00 00              	call	0x140003cc4 <.text+0x2cc4>
140001078: b9 01 00 00 00              	mov	ecx, 1
14000107d: 89 18                       	mov	dword ptr [rax], ebx
14000107f: e8 c8 02 00 00              	call	0x14000134c <.text+0x34c>
140001084: 84 c0                       	test	al, al
140001086: 74 73                       	je	0x1400010fb <.text+0xfb>
140001088: e8 c3 07 00 00              	call	0x140001850 <.text+0x850>
14000108d: 48 8d 0d f8 07 00 00        	lea	rcx, [rip + 2040]       # 0x14000188c <.text+0x88c>
140001094: e8 63 04 00 00              	call	0x1400014fc <.text+0x4fc>
140001099: e8 26 05 00 00              	call	0x1400015c4 <.text+0x5c4>
14000109e: 8b c8                       	mov	ecx, eax
1400010a0: e8 b7 21 00 00              	call	0x14000325c <.text+0x225c>
1400010a5: 85 c0                       	test	eax, eax
1400010a7: 75 52                       	jne	0x1400010fb <.text+0xfb>
1400010a9: e8 26 05 00 00              	call	0x1400015d4 <.text+0x5d4>
1400010ae: e8 65 05 00 00              	call	0x140001618 <.text+0x618>
1400010b3: 85 c0                       	test	eax, eax
1400010b5: 74 0c                       	je	0x1400010c3 <.text+0xc3>
1400010b7: 48 8d 0d 02 05 00 00        	lea	rcx, [rip + 1282]       # 0x1400015c0 <.text+0x5c0>
1400010be: e8 51 1f 00 00              	call	0x140003014 <.text+0x2014>
1400010c3: e8 20 05 00 00              	call	0x1400015e8 <.text+0x5e8>
1400010c8: e8 1b 05 00 00              	call	0x1400015e8 <.text+0x5e8>
1400010cd: e8 ee 04 00 00              	call	0x1400015c0 <.text+0x5c0>
1400010d2: 8b c8                       	mov	ecx, eax
1400010d4: e8 4b 2b 00 00              	call	0x140003c24 <.text+0x2c24>
1400010d9: e8 06 05 00 00              	call	0x1400015e4 <.text+0x5e4>
1400010de: 84 c0                       	test	al, al
1400010e0: 74 05                       	je	0x1400010e7 <.text+0xe7>
1400010e2: e8 85 26 00 00              	call	0x14000376c <.text+0x276c>
1400010e7: e8 d4 04 00 00              	call	0x1400015c0 <.text+0x5c0>
1400010ec: e8 97 06 00 00              	call	0x140001788 <.text+0x788>
1400010f1: 85 c0                       	test	eax, eax
1400010f3: 75 06                       	jne	0x1400010fb <.text+0xfb>
1400010f5: 48 83 c4 20                 	add	rsp, 32
1400010f9: 5b                          	pop	rbx
1400010fa: c3                          	ret
1400010fb: b9 07 00 00 00              	mov	ecx, 7
140001100: e8 37 05 00 00              	call	0x14000163c <.text+0x63c>
140001105: cc                          	int3
140001106: cc                          	int3
140001107: cc                          	int3
140001108: 48 83 ec 28                 	sub	rsp, 40
14000110c: e8 eb 04 00 00              	call	0x1400015fc <.text+0x5fc>
140001111: 33 c0                       	xor	eax, eax
140001113: 48 83 c4 28                 	add	rsp, 40
140001117: c3                          	ret
140001118: 48 83 ec 28                 	sub	rsp, 40
14000111c: e8 c3 06 00 00              	call	0x1400017e4 <.text+0x7e4>
140001121: e8 9a 04 00 00              	call	0x1400015c0 <.text+0x5c0>
140001126: 8b c8                       	mov	ecx, eax
140001128: 48 83 c4 28                 	add	rsp, 40
14000112c: e9 67 2b 00 00              	jmp	0x140003c98 <.text+0x2c98>
140001131: cc                          	int3
140001132: cc                          	int3
140001133: cc                          	int3
140001134: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140001139: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000113e: 57                          	push	rdi
14000113f: 48 83 ec 30                 	sub	rsp, 48
140001143: b9 01 00 00 00              	mov	ecx, 1
140001148: e8 b3 01 00 00              	call	0x140001300 <.text+0x300>
14000114d: 84 c0                       	test	al, al
14000114f: 0f 84 36 01 00 00           	je	0x14000128b <.text+0x28b>
140001155: 40 32 f6                    	xor	sil, sil
140001158: 40 88 74 24 20              	mov	byte ptr [rsp + 32], sil
14000115d: e8 62 01 00 00              	call	0x1400012c4 <.text+0x2c4>
140001162: 8a d8                       	mov	bl, al
140001164: 8b 0d 96 68 01 00           	mov	ecx, dword ptr [rip + 92310] # 0x140017a00
14000116a: 83 f9 01                    	cmp	ecx, 1
14000116d: 0f 84 23 01 00 00           	je	0x140001296 <.text+0x296>
140001173: 85 c9                       	test	ecx, ecx
140001175: 75 4a                       	jne	0x1400011c1 <.text+0x1c1>
140001177: c7 05 7f 68 01 00 01 00 00 00       	mov	dword ptr [rip + 92287], 1 # 0x140017a00
140001181: 48 8d 15 20 d1 00 00        	lea	rdx, [rip + 53536]      # 0x14000e2a8
140001188: 48 8d 0d e1 d0 00 00        	lea	rcx, [rip + 53473]      # 0x14000e270
14000118f: e8 44 26 00 00              	call	0x1400037d8 <.text+0x27d8>
140001194: 85 c0                       	test	eax, eax
140001196: 74 0a                       	je	0x1400011a2 <.text+0x1a2>
140001198: b8 ff 00 00 00              	mov	eax, 255
14000119d: e9 d9 00 00 00              	jmp	0x14000127b <.text+0x27b>
1400011a2: 48 8d 15 bf d0 00 00        	lea	rdx, [rip + 53439]      # 0x14000e268
1400011a9: 48 8d 0d a8 d0 00 00        	lea	rcx, [rip + 53416]      # 0x14000e258
1400011b0: e8 bf 25 00 00              	call	0x140003774 <.text+0x2774>
1400011b5: c7 05 41 68 01 00 02 00 00 00       	mov	dword ptr [rip + 92225], 2 # 0x140017a00
1400011bf: eb 08                       	jmp	0x1400011c9 <.text+0x1c9>
1400011c1: 40 b6 01                    	mov	sil, 1
1400011c4: 40 88 74 24 20              	mov	byte ptr [rsp + 32], sil
1400011c9: 8a cb                       	mov	cl, bl
1400011cb: e8 a0 02 00 00              	call	0x140001470 <.text+0x470>
1400011d0: e8 4f 04 00 00              	call	0x140001624 <.text+0x624>
1400011d5: 48 8b d8                    	mov	rbx, rax
1400011d8: 48 83 38 00                 	cmp	qword ptr [rax], 0
1400011dc: 74 1e                       	je	0x1400011fc <.text+0x1fc>
1400011de: 48 8b c8                    	mov	rcx, rax
1400011e1: e8 f2 01 00 00              	call	0x1400013d8 <.text+0x3d8>
1400011e6: 84 c0                       	test	al, al
1400011e8: 74 12                       	je	0x1400011fc <.text+0x1fc>
1400011ea: 45 33 c0                    	xor	r8d, r8d
1400011ed: 41 8d 50 02                 	lea	edx, [r8 + 2]
1400011f1: 33 c9                       	xor	ecx, ecx
1400011f3: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400011f6: ff 15 34 d0 00 00           	call	qword ptr [rip + 53300] # 0x14000e230
1400011fc: e8 2b 04 00 00              	call	0x14000162c <.text+0x62c>
140001201: 48 8b d8                    	mov	rbx, rax
140001204: 48 83 38 00                 	cmp	qword ptr [rax], 0
140001208: 74 14                       	je	0x14000121e <.text+0x21e>
14000120a: 48 8b c8                    	mov	rcx, rax
14000120d: e8 c6 01 00 00              	call	0x1400013d8 <.text+0x3d8>
140001212: 84 c0                       	test	al, al
140001214: 74 08                       	je	0x14000121e <.text+0x21e>
140001216: 48 8b 0b                    	mov	rcx, qword ptr [rbx]
140001219: e8 9a 28 00 00              	call	0x140003ab8 <.text+0x2ab8>
14000121e: e8 f9 24 00 00              	call	0x14000371c <.text+0x271c>
140001223: 48 8b f8                    	mov	rdi, rax
140001226: e8 45 29 00 00              	call	0x140003b70 <.text+0x2b70>
14000122b: 48 8b 18                    	mov	rbx, qword ptr [rax]
14000122e: e8 35 29 00 00              	call	0x140003b68 <.text+0x2b68>
140001233: 4c 8b c7                    	mov	r8, rdi
140001236: 48 8b d3                    	mov	rdx, rbx
140001239: 8b 08                       	mov	ecx, dword ptr [rax]
14000123b: e8 c0 fd ff ff              	call	0x140001000 <.text>
140001240: 8b d8                       	mov	ebx, eax
140001242: e8 49 05 00 00              	call	0x140001790 <.text+0x790>
140001247: 84 c0                       	test	al, al
140001249: 74 55                       	je	0x1400012a0 <.text+0x2a0>
14000124b: 40 84 f6                    	test	sil, sil
14000124e: 75 05                       	jne	0x140001255 <.text+0x255>
140001250: e8 47 28 00 00              	call	0x140003a9c <.text+0x2a9c>
140001255: 33 d2                       	xor	edx, edx
140001257: b1 01                       	mov	cl, 1
140001259: e8 36 02 00 00              	call	0x140001494 <.text+0x494>
14000125e: 8b c3                       	mov	eax, ebx
140001260: eb 19                       	jmp	0x14000127b <.text+0x27b>
140001262: 8b d8                       	mov	ebx, eax
140001264: e8 27 05 00 00              	call	0x140001790 <.text+0x790>
140001269: 84 c0                       	test	al, al
14000126b: 74 3b                       	je	0x1400012a8 <.text+0x2a8>
14000126d: 80 7c 24 20 00              	cmp	byte ptr [rsp + 32], 0
140001272: 75 05                       	jne	0x140001279 <.text+0x279>
140001274: e8 13 28 00 00              	call	0x140003a8c <.text+0x2a8c>
140001279: 8b c3                       	mov	eax, ebx
14000127b: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140001280: 48 8b 74 24 48              	mov	rsi, qword ptr [rsp + 72]
140001285: 48 83 c4 30                 	add	rsp, 48
140001289: 5f                          	pop	rdi
14000128a: c3                          	ret
14000128b: b9 07 00 00 00              	mov	ecx, 7
140001290: e8 a7 03 00 00              	call	0x14000163c <.text+0x63c>
140001295: 90                          	nop
140001296: b9 07 00 00 00              	mov	ecx, 7
14000129b: e8 9c 03 00 00              	call	0x14000163c <.text+0x63c>
1400012a0: 8b cb                       	mov	ecx, ebx
1400012a2: e8 4d 28 00 00              	call	0x140003af4 <.text+0x2af4>
1400012a7: 90                          	nop
1400012a8: 8b cb                       	mov	ecx, ebx
1400012aa: e8 fd 27 00 00              	call	0x140003aac <.text+0x2aac>
1400012af: 90                          	nop
1400012b0: 48 83 ec 28                 	sub	rsp, 40
1400012b4: e8 5b 02 00 00              	call	0x140001514 <.text+0x514>
1400012b9: 48 83 c4 28                 	add	rsp, 40
1400012bd: e9 72 fe ff ff              	jmp	0x140001134 <.text+0x134>
1400012c2: cc                          	int3
1400012c3: cc                          	int3
1400012c4: 48 83 ec 28                 	sub	rsp, 40
1400012c8: e8 a7 07 00 00              	call	0x140001a74 <.text+0xa74>
1400012cd: 85 c0                       	test	eax, eax
1400012cf: 74 21                       	je	0x1400012f2 <.text+0x2f2>
1400012d1: 65 48 8b 04 25 30 00 00 00  	mov	rax, qword ptr gs:[48]
1400012da: 48 8b 48 08                 	mov	rcx, qword ptr [rax + 8]
1400012de: eb 05                       	jmp	0x1400012e5 <.text+0x2e5>
1400012e0: 48 3b c8                    	cmp	rcx, rax
1400012e3: 74 14                       	je	0x1400012f9 <.text+0x2f9>
1400012e5: 33 c0                       	xor	eax, eax
1400012e7: f0                          	lock
1400012e8: 48 0f b1 0d 18 67 01 00     	cmpxchg	qword ptr [rip + 91928], rcx # 0x140017a08
1400012f0: 75 ee                       	jne	0x1400012e0 <.text+0x2e0>
1400012f2: 32 c0                       	xor	al, al
1400012f4: 48 83 c4 28                 	add	rsp, 40
1400012f8: c3                          	ret
1400012f9: b0 01                       	mov	al, 1
1400012fb: eb f7                       	jmp	0x1400012f4 <.text+0x2f4>
1400012fd: cc                          	int3
1400012fe: cc                          	int3
1400012ff: cc                          	int3
140001300: 40 53                       	push	rbx
140001302: 48 83 ec 20                 	sub	rsp, 32
140001306: 0f b6 05 03 67 01 00        	movzx	eax, byte ptr [rip + 91907] # 0x140017a10
14000130d: 85 c9                       	test	ecx, ecx
14000130f: bb 01 00 00 00              	mov	ebx, 1
140001314: 0f 44 c3                    	cmove	eax, ebx
140001317: 88 05 f3 66 01 00           	mov	byte ptr [rip + 91891], al # 0x140017a10
14000131d: e8 a6 05 00 00              	call	0x1400018c8 <.text+0x8c8>
140001322: e8 51 09 00 00              	call	0x140001c78 <.text+0xc78>
140001327: 84 c0                       	test	al, al
140001329: 75 04                       	jne	0x14000132f <.text+0x32f>
14000132b: 32 c0                       	xor	al, al
14000132d: eb 14                       	jmp	0x140001343 <.text+0x343>
14000132f: e8 c0 2e 00 00              	call	0x1400041f4 <.text+0x31f4>
140001334: 84 c0                       	test	al, al
140001336: 75 09                       	jne	0x140001341 <.text+0x341>
140001338: 33 c9                       	xor	ecx, ecx
14000133a: e8 61 09 00 00              	call	0x140001ca0 <.text+0xca0>
14000133f: eb ea                       	jmp	0x14000132b <.text+0x32b>
140001341: 8a c3                       	mov	al, bl
140001343: 48 83 c4 20                 	add	rsp, 32
140001347: 5b                          	pop	rbx
140001348: c3                          	ret
140001349: cc                          	int3
14000134a: cc                          	int3
14000134b: cc                          	int3
14000134c: 40 53                       	push	rbx
14000134e: 48 83 ec 20                 	sub	rsp, 32
140001352: 80 3d b8 66 01 00 00        	cmp	byte ptr [rip + 91832], 0 # 0x140017a11
140001359: 8b d9                       	mov	ebx, ecx
14000135b: 75 67                       	jne	0x1400013c4 <.text+0x3c4>
14000135d: 83 f9 01                    	cmp	ecx, 1
140001360: 77 6a                       	ja	0x1400013cc <.text+0x3cc>
140001362: e8 0d 07 00 00              	call	0x140001a74 <.text+0xa74>
140001367: 85 c0                       	test	eax, eax
140001369: 74 28                       	je	0x140001393 <.text+0x393>
14000136b: 85 db                       	test	ebx, ebx
14000136d: 75 24                       	jne	0x140001393 <.text+0x393>
14000136f: 48 8d 0d a2 66 01 00        	lea	rcx, [rip + 91810]      # 0x140017a18
140001376: e8 dd 2c 00 00              	call	0x140004058 <.text+0x3058>
14000137b: 85 c0                       	test	eax, eax
14000137d: 75 10                       	jne	0x14000138f <.text+0x38f>
14000137f: 48 8d 0d aa 66 01 00        	lea	rcx, [rip + 91818]      # 0x140017a30
140001386: e8 cd 2c 00 00              	call	0x140004058 <.text+0x3058>
14000138b: 85 c0                       	test	eax, eax
14000138d: 74 2e                       	je	0x1400013bd <.text+0x3bd>
14000138f: 32 c0                       	xor	al, al
140001391: eb 33                       	jmp	0x1400013c6 <.text+0x3c6>
140001393: 66 0f 6f 05 55 cf 00 00     	movdqa	xmm0, xmmword ptr [rip + 53077] # 0x14000e2f0
14000139b: 48 83 c8 ff                 	or	rax, -1
14000139f: f3 0f 7f 05 71 66 01 00     	movdqu	xmmword ptr [rip + 91761], xmm0 # 0x140017a18
1400013a7: 48 89 05 7a 66 01 00        	mov	qword ptr [rip + 91770], rax # 0x140017a28
1400013ae: f3 0f 7f 05 7a 66 01 00     	movdqu	xmmword ptr [rip + 91770], xmm0 # 0x140017a30
1400013b6: 48 89 05 83 66 01 00        	mov	qword ptr [rip + 91779], rax # 0x140017a40
1400013bd: c6 05 4d 66 01 00 01        	mov	byte ptr [rip + 91725], 1 # 0x140017a11
1400013c4: b0 01                       	mov	al, 1
1400013c6: 48 83 c4 20                 	add	rsp, 32
1400013ca: 5b                          	pop	rbx
1400013cb: c3                          	ret
1400013cc: b9 05 00 00 00              	mov	ecx, 5
1400013d1: e8 66 02 00 00              	call	0x14000163c <.text+0x63c>
1400013d6: cc                          	int3
1400013d7: cc                          	int3
1400013d8: 48 83 ec 18                 	sub	rsp, 24
1400013dc: 4c 8b c1                    	mov	r8, rcx
1400013df: b8 4d 5a 00 00              	mov	eax, 23117
1400013e4: 66 39 05 15 ec ff ff        	cmp	word ptr [rip - 5099], ax # 0x140000000
1400013eb: 75 78                       	jne	0x140001465 <.text+0x465>
1400013ed: 48 63 0d 48 ec ff ff        	movsxd	rcx, dword ptr [rip - 5048] # 0x14000003c
1400013f4: 48 8d 15 05 ec ff ff        	lea	rdx, [rip - 5115]       # 0x140000000
1400013fb: 48 03 ca                    	add	rcx, rdx
1400013fe: 81 39 50 45 00 00           	cmp	dword ptr [rcx], 17744
140001404: 75 5f                       	jne	0x140001465 <.text+0x465>
140001406: b8 0b 02 00 00              	mov	eax, 523
14000140b: 66 39 41 18                 	cmp	word ptr [rcx + 24], ax
14000140f: 75 54                       	jne	0x140001465 <.text+0x465>
140001411: 4c 2b c2                    	sub	r8, rdx
140001414: 0f b7 51 14                 	movzx	edx, word ptr [rcx + 20]
140001418: 48 83 c2 18                 	add	rdx, 24
14000141c: 48 03 d1                    	add	rdx, rcx
14000141f: 0f b7 41 06                 	movzx	eax, word ptr [rcx + 6]
140001423: 48 8d 0c 80                 	lea	rcx, [rax + 4*rax]
140001427: 4c 8d 0c ca                 	lea	r9, [rdx + 8*rcx]
14000142b: 48 89 14 24                 	mov	qword ptr [rsp], rdx
14000142f: 49 3b d1                    	cmp	rdx, r9
140001432: 74 18                       	je	0x14000144c <.text+0x44c>
140001434: 8b 4a 0c                    	mov	ecx, dword ptr [rdx + 12]
140001437: 4c 3b c1                    	cmp	r8, rcx
14000143a: 72 0a                       	jb	0x140001446 <.text+0x446>
14000143c: 8b 42 08                    	mov	eax, dword ptr [rdx + 8]
14000143f: 03 c1                       	add	eax, ecx
140001441: 4c 3b c0                    	cmp	r8, rax
140001444: 72 08                       	jb	0x14000144e <.text+0x44e>
140001446: 48 83 c2 28                 	add	rdx, 40
14000144a: eb df                       	jmp	0x14000142b <.text+0x42b>
14000144c: 33 d2                       	xor	edx, edx
14000144e: 48 85 d2                    	test	rdx, rdx
140001451: 75 04                       	jne	0x140001457 <.text+0x457>
140001453: 32 c0                       	xor	al, al
140001455: eb 14                       	jmp	0x14000146b <.text+0x46b>
140001457: 83 7a 24 00                 	cmp	dword ptr [rdx + 36], 0
14000145b: 7d 04                       	jge	0x140001461 <.text+0x461>
14000145d: 32 c0                       	xor	al, al
14000145f: eb 0a                       	jmp	0x14000146b <.text+0x46b>
140001461: b0 01                       	mov	al, 1
140001463: eb 06                       	jmp	0x14000146b <.text+0x46b>
140001465: 32 c0                       	xor	al, al
140001467: eb 02                       	jmp	0x14000146b <.text+0x46b>
140001469: 32 c0                       	xor	al, al
14000146b: 48 83 c4 18                 	add	rsp, 24
14000146f: c3                          	ret
140001470: 40 53                       	push	rbx
140001472: 48 83 ec 20                 	sub	rsp, 32
140001476: 8a d9                       	mov	bl, cl
140001478: e8 f7 05 00 00              	call	0x140001a74 <.text+0xa74>
14000147d: 33 d2                       	xor	edx, edx
14000147f: 85 c0                       	test	eax, eax
140001481: 74 0b                       	je	0x14000148e <.text+0x48e>
140001483: 84 db                       	test	bl, bl
140001485: 75 07                       	jne	0x14000148e <.text+0x48e>
140001487: 48 87 15 7a 65 01 00        	xchg	qword ptr [rip + 91514], rdx # 0x140017a08
14000148e: 48 83 c4 20                 	add	rsp, 32
140001492: 5b                          	pop	rbx
140001493: c3                          	ret
140001494: 40 53                       	push	rbx
140001496: 48 83 ec 20                 	sub	rsp, 32
14000149a: 80 3d 6f 65 01 00 00        	cmp	byte ptr [rip + 91503], 0 # 0x140017a10
1400014a1: 8a d9                       	mov	bl, cl
1400014a3: 74 04                       	je	0x1400014a9 <.text+0x4a9>
1400014a5: 84 d2                       	test	dl, dl
1400014a7: 75 0c                       	jne	0x1400014b5 <.text+0x4b5>
1400014a9: e8 5a 2d 00 00              	call	0x140004208 <.text+0x3208>
1400014ae: 8a cb                       	mov	cl, bl
1400014b0: e8 eb 07 00 00              	call	0x140001ca0 <.text+0xca0>
1400014b5: b0 01                       	mov	al, 1
1400014b7: 48 83 c4 20                 	add	rsp, 32
1400014bb: 5b                          	pop	rbx
1400014bc: c3                          	ret
1400014bd: cc                          	int3
1400014be: cc                          	int3
1400014bf: cc                          	int3
1400014c0: 40 53                       	push	rbx
1400014c2: 48 83 ec 20                 	sub	rsp, 32
1400014c6: 48 83 3d 4a 65 01 00 ff     	cmp	qword ptr [rip + 91466], -1 # 0x140017a18
1400014ce: 48 8b d9                    	mov	rbx, rcx
1400014d1: 75 07                       	jne	0x1400014da <.text+0x4da>
1400014d3: e8 34 2b 00 00              	call	0x14000400c <.text+0x300c>
1400014d8: eb 0f                       	jmp	0x1400014e9 <.text+0x4e9>
1400014da: 48 8b d3                    	mov	rdx, rbx
1400014dd: 48 8d 0d 34 65 01 00        	lea	rcx, [rip + 91444]      # 0x140017a18
1400014e4: e8 97 2b 00 00              	call	0x140004080 <.text+0x3080>
1400014e9: 33 d2                       	xor	edx, edx
1400014eb: 85 c0                       	test	eax, eax
1400014ed: 48 0f 44 d3                 	cmove	rdx, rbx
1400014f1: 48 8b c2                    	mov	rax, rdx
1400014f4: 48 83 c4 20                 	add	rsp, 32
1400014f8: 5b                          	pop	rbx
1400014f9: c3                          	ret
1400014fa: cc                          	int3
1400014fb: cc                          	int3
1400014fc: 48 83 ec 28                 	sub	rsp, 40
140001500: e8 bb ff ff ff              	call	0x1400014c0 <.text+0x4c0>
140001505: 48 f7 d8                    	neg	rax
140001508: 1b c0                       	sbb	eax, eax
14000150a: f7 d8                       	neg	eax
14000150c: ff c8                       	dec	eax
14000150e: 48 83 c4 28                 	add	rsp, 40
140001512: c3                          	ret
140001513: cc                          	int3
140001514: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140001519: 55                          	push	rbp
14000151a: 48 8b ec                    	mov	rbp, rsp
14000151d: 48 83 ec 20                 	sub	rsp, 32
140001521: 48 8b 05 00 5b 01 00        	mov	rax, qword ptr [rip + 88832] # 0x140017028
140001528: 48 bb 32 a2 df 2d 99 2b 00 00       	movabs	rbx, 47936899621426
140001532: 48 3b c3                    	cmp	rax, rbx
140001535: 75 74                       	jne	0x1400015ab <.text+0x5ab>
140001537: 48 83 65 18 00              	and	qword ptr [rbp + 24], 0
14000153c: 48 8d 4d 18                 	lea	rcx, [rbp + 24]
140001540: ff 15 d2 ca 00 00           	call	qword ptr [rip + 51922] # 0x14000e018
140001546: 48 8b 45 18                 	mov	rax, qword ptr [rbp + 24]
14000154a: 48 89 45 10                 	mov	qword ptr [rbp + 16], rax
14000154e: ff 15 bc ca 00 00           	call	qword ptr [rip + 51900] # 0x14000e010
140001554: 8b c0                       	mov	eax, eax
140001556: 48 31 45 10                 	xor	qword ptr [rbp + 16], rax
14000155a: ff 15 a8 ca 00 00           	call	qword ptr [rip + 51880] # 0x14000e008
140001560: 8b c0                       	mov	eax, eax
140001562: 48 8d 4d 20                 	lea	rcx, [rbp + 32]
140001566: 48 31 45 10                 	xor	qword ptr [rbp + 16], rax
14000156a: ff 15 90 ca 00 00           	call	qword ptr [rip + 51856] # 0x14000e000
140001570: 8b 45 20                    	mov	eax, dword ptr [rbp + 32]
140001573: 48 8d 4d 10                 	lea	rcx, [rbp + 16]
140001577: 48 c1 e0 20                 	shl	rax, 32
14000157b: 48 33 45 20                 	xor	rax, qword ptr [rbp + 32]
14000157f: 48 33 45 10                 	xor	rax, qword ptr [rbp + 16]
140001583: 48 33 c1                    	xor	rax, rcx
140001586: 48 b9 ff ff ff ff ff ff 00 00       	movabs	rcx, 281474976710655
140001590: 48 23 c1                    	and	rax, rcx
140001593: 48 b9 33 a2 df 2d 99 2b 00 00       	movabs	rcx, 47936899621427
14000159d: 48 3b c3                    	cmp	rax, rbx
1400015a0: 48 0f 44 c1                 	cmove	rax, rcx
1400015a4: 48 89 05 7d 5a 01 00        	mov	qword ptr [rip + 88701], rax # 0x140017028
1400015ab: 48 8b 5c 24 48              	mov	rbx, qword ptr [rsp + 72]
1400015b0: 48 f7 d0                    	not	rax
1400015b3: 48 89 05 66 5a 01 00        	mov	qword ptr [rip + 88678], rax # 0x140017020
1400015ba: 48 83 c4 20                 	add	rsp, 32
1400015be: 5d                          	pop	rbp
1400015bf: c3                          	ret
1400015c0: 33 c0                       	xor	eax, eax
1400015c2: c3                          	ret
1400015c3: cc                          	int3
1400015c4: b8 01 00 00 00              	mov	eax, 1
1400015c9: c3                          	ret
1400015ca: cc                          	int3
1400015cb: cc                          	int3
1400015cc: b8 00 40 00 00              	mov	eax, 16384
1400015d1: c3                          	ret
1400015d2: cc                          	int3
1400015d3: cc                          	int3
1400015d4: 48 8d 0d 75 64 01 00        	lea	rcx, [rip + 91253]      # 0x140017a50
1400015db: 48 ff 25 3e ca 00 00        	jmp	qword ptr [rip + 51774] # 0x14000e020
1400015e2: cc                          	int3
1400015e3: cc                          	int3
1400015e4: b0 01                       	mov	al, 1
1400015e6: c3                          	ret
1400015e7: cc                          	int3
1400015e8: c2 00 00                    	ret	0
1400015eb: cc                          	int3
1400015ec: 48 8d 05 6d 64 01 00        	lea	rax, [rip + 91245]      # 0x140017a60
1400015f3: c3                          	ret
1400015f4: 48 8d 05 6d 64 01 00        	lea	rax, [rip + 91245]      # 0x140017a68
1400015fb: c3                          	ret
1400015fc: 48 83 ec 28                 	sub	rsp, 40
140001600: e8 e7 ff ff ff              	call	0x1400015ec <.text+0x5ec>
140001605: 48 83 08 24                 	or	qword ptr [rax], 36
140001609: e8 e6 ff ff ff              	call	0x1400015f4 <.text+0x5f4>
14000160e: 48 83 08 02                 	or	qword ptr [rax], 2
140001612: 48 83 c4 28                 	add	rsp, 40
140001616: c3                          	ret
140001617: cc                          	int3
140001618: 33 c0                       	xor	eax, eax
14000161a: 39 05 e4 59 01 00           	cmp	dword ptr [rip + 88548], eax # 0x140017004
140001620: 0f 94 c0                    	sete	al
140001623: c3                          	ret
140001624: 48 8d 05 95 75 01 00        	lea	rax, [rip + 95637]      # 0x140018bc0
14000162b: c3                          	ret
14000162c: 48 8d 05 85 75 01 00        	lea	rax, [rip + 95621]      # 0x140018bb8
140001633: c3                          	ret
140001634: 83 25 35 64 01 00 00        	and	dword ptr [rip + 91189], 0 # 0x140017a70
14000163b: c3                          	ret
14000163c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140001641: 55                          	push	rbp
140001642: 48 8d ac 24 40 fb ff ff     	lea	rbp, [rsp - 1216]
14000164a: 48 81 ec c0 05 00 00        	sub	rsp, 1472
140001651: 8b d9                       	mov	ebx, ecx
140001653: b9 17 00 00 00              	mov	ecx, 23
140001658: ff 15 02 ca 00 00           	call	qword ptr [rip + 51714] # 0x14000e060
14000165e: 85 c0                       	test	eax, eax
140001660: 74 04                       	je	0x140001666 <.text+0x666>
140001662: 8b cb                       	mov	ecx, ebx
140001664: cd 29                       	int	41
140001666: b9 03 00 00 00              	mov	ecx, 3
14000166b: e8 c4 ff ff ff              	call	0x140001634 <.text+0x634>
140001670: 33 d2                       	xor	edx, edx
140001672: 48 8d 4d f0                 	lea	rcx, [rbp - 16]
140001676: 41 b8 d0 04 00 00           	mov	r8d, 1232
14000167c: e8 0f 07 00 00              	call	0x140001d90 <.text+0xd90>
140001681: 48 8d 4d f0                 	lea	rcx, [rbp - 16]
140001685: ff 15 9d c9 00 00           	call	qword ptr [rip + 51613] # 0x14000e028
14000168b: 48 8b 9d e8 00 00 00        	mov	rbx, qword ptr [rbp + 232]
140001692: 48 8d 95 d8 04 00 00        	lea	rdx, [rbp + 1240]
140001699: 48 8b cb                    	mov	rcx, rbx
14000169c: 45 33 c0                    	xor	r8d, r8d
14000169f: ff 15 8b c9 00 00           	call	qword ptr [rip + 51595] # 0x14000e030
1400016a5: 48 85 c0                    	test	rax, rax
1400016a8: 74 3c                       	je	0x1400016e6 <.text+0x6e6>
1400016aa: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
1400016b0: 48 8d 8d e0 04 00 00        	lea	rcx, [rbp + 1248]
1400016b7: 48 8b 95 d8 04 00 00        	mov	rdx, qword ptr [rbp + 1240]
1400016be: 4c 8b c8                    	mov	r9, rax
1400016c1: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
1400016c6: 4c 8b c3                    	mov	r8, rbx
1400016c9: 48 8d 8d e8 04 00 00        	lea	rcx, [rbp + 1256]
1400016d0: 48 89 4c 24 28              	mov	qword ptr [rsp + 40], rcx
1400016d5: 48 8d 4d f0                 	lea	rcx, [rbp - 16]
1400016d9: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
1400016de: 33 c9                       	xor	ecx, ecx
1400016e0: ff 15 52 c9 00 00           	call	qword ptr [rip + 51538] # 0x14000e038
1400016e6: 48 8b 85 c8 04 00 00        	mov	rax, qword ptr [rbp + 1224]
1400016ed: 48 8d 4c 24 50              	lea	rcx, [rsp + 80]
1400016f2: 48 89 85 e8 00 00 00        	mov	qword ptr [rbp + 232], rax
1400016f9: 33 d2                       	xor	edx, edx
1400016fb: 48 8d 85 c8 04 00 00        	lea	rax, [rbp + 1224]
140001702: 41 b8 98 00 00 00           	mov	r8d, 152
140001708: 48 83 c0 08                 	add	rax, 8
14000170c: 48 89 85 88 00 00 00        	mov	qword ptr [rbp + 136], rax
140001713: e8 78 06 00 00              	call	0x140001d90 <.text+0xd90>
140001718: 48 8b 85 c8 04 00 00        	mov	rax, qword ptr [rbp + 1224]
14000171f: 48 89 44 24 60              	mov	qword ptr [rsp + 96], rax
140001724: c7 44 24 50 15 00 00 40     	mov	dword ptr [rsp + 80], 1073741845
14000172c: c7 44 24 54 01 00 00 00     	mov	dword ptr [rsp + 84], 1
140001734: ff 15 06 c9 00 00           	call	qword ptr [rip + 51462] # 0x14000e040
14000173a: 83 f8 01                    	cmp	eax, 1
14000173d: 48 8d 44 24 50              	lea	rax, [rsp + 80]
140001742: 48 89 44 24 40              	mov	qword ptr [rsp + 64], rax
140001747: 48 8d 45 f0                 	lea	rax, [rbp - 16]
14000174b: 0f 94 c3                    	sete	bl
14000174e: 48 89 44 24 48              	mov	qword ptr [rsp + 72], rax
140001753: 33 c9                       	xor	ecx, ecx
140001755: ff 15 f5 c8 00 00           	call	qword ptr [rip + 51445] # 0x14000e050
14000175b: 48 8d 4c 24 40              	lea	rcx, [rsp + 64]
140001760: ff 15 e2 c8 00 00           	call	qword ptr [rip + 51426] # 0x14000e048
140001766: 85 c0                       	test	eax, eax
140001768: 75 0c                       	jne	0x140001776 <.text+0x776>
14000176a: 84 db                       	test	bl, bl
14000176c: 75 08                       	jne	0x140001776 <.text+0x776>
14000176e: 8d 48 03                    	lea	ecx, [rax + 3]
140001771: e8 be fe ff ff              	call	0x140001634 <.text+0x634>
140001776: 48 8b 9c 24 d0 05 00 00     	mov	rbx, qword ptr [rsp + 1488]
14000177e: 48 81 c4 c0 05 00 00        	add	rsp, 1472
140001785: 5d                          	pop	rbp
140001786: c3                          	ret
140001787: cc                          	int3
140001788: e9 33 fe ff ff              	jmp	0x1400015c0 <.text+0x5c0>
14000178d: cc                          	int3
14000178e: cc                          	int3
14000178f: cc                          	int3
140001790: 48 83 ec 28                 	sub	rsp, 40
140001794: 33 c9                       	xor	ecx, ecx
140001796: ff 15 cc c8 00 00           	call	qword ptr [rip + 51404] # 0x14000e068
14000179c: 48 85 c0                    	test	rax, rax
14000179f: 74 39                       	je	0x1400017da <.text+0x7da>
1400017a1: b9 4d 5a 00 00              	mov	ecx, 23117
1400017a6: 66 39 08                    	cmp	word ptr [rax], cx
1400017a9: 75 2f                       	jne	0x1400017da <.text+0x7da>
1400017ab: 48 63 48 3c                 	movsxd	rcx, dword ptr [rax + 60]
1400017af: 48 03 c8                    	add	rcx, rax
1400017b2: 81 39 50 45 00 00           	cmp	dword ptr [rcx], 17744
1400017b8: 75 20                       	jne	0x1400017da <.text+0x7da>
1400017ba: b8 0b 02 00 00              	mov	eax, 523
1400017bf: 66 39 41 18                 	cmp	word ptr [rcx + 24], ax
1400017c3: 75 15                       	jne	0x1400017da <.text+0x7da>
1400017c5: 83 b9 84 00 00 00 0e        	cmp	dword ptr [rcx + 132], 14
1400017cc: 76 0c                       	jbe	0x1400017da <.text+0x7da>
1400017ce: 83 b9 f8 00 00 00 00        	cmp	dword ptr [rcx + 248], 0
1400017d5: 0f 95 c0                    	setne	al
1400017d8: eb 02                       	jmp	0x1400017dc <.text+0x7dc>
1400017da: 32 c0                       	xor	al, al
1400017dc: 48 83 c4 28                 	add	rsp, 40
1400017e0: c3                          	ret
1400017e1: cc                          	int3
1400017e2: cc                          	int3
1400017e3: cc                          	int3
1400017e4: 48 8d 0d 09 00 00 00        	lea	rcx, [rip + 9]          # 0x1400017f4 <.text+0x7f4>
1400017eb: 48 ff 25 5e c8 00 00        	jmp	qword ptr [rip + 51294] # 0x14000e050
1400017f2: cc                          	int3
1400017f3: cc                          	int3
1400017f4: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400017f9: 57                          	push	rdi
1400017fa: 48 83 ec 20                 	sub	rsp, 32
1400017fe: 48 8b 19                    	mov	rbx, qword ptr [rcx]
140001801: 48 8b f9                    	mov	rdi, rcx
140001804: 81 3b 63 73 6d e0           	cmp	dword ptr [rbx], 3765269347
14000180a: 75 1c                       	jne	0x140001828 <.text+0x828>
14000180c: 83 7b 18 04                 	cmp	dword ptr [rbx + 24], 4
140001810: 75 16                       	jne	0x140001828 <.text+0x828>
140001812: 8b 53 20                    	mov	edx, dword ptr [rbx + 32]
140001815: 8d 82 e0 fa 6c e6           	lea	eax, [rdx - 429065504]
14000181b: 83 f8 02                    	cmp	eax, 2
14000181e: 76 15                       	jbe	0x140001835 <.text+0x835>
140001820: 81 fa 00 40 99 01           	cmp	edx, 26820608
140001826: 74 0d                       	je	0x140001835 <.text+0x835>
140001828: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000182d: 33 c0                       	xor	eax, eax
14000182f: 48 83 c4 20                 	add	rsp, 32
140001833: 5f                          	pop	rdi
140001834: c3                          	ret
140001835: e8 f6 04 00 00              	call	0x140001d30 <.text+0xd30>
14000183a: 48 89 18                    	mov	qword ptr [rax], rbx
14000183d: 48 8b 5f 08                 	mov	rbx, qword ptr [rdi + 8]
140001841: e8 fe 04 00 00              	call	0x140001d44 <.text+0xd44>
140001846: 48 89 18                    	mov	qword ptr [rax], rbx
140001849: e8 f2 29 00 00              	call	0x140004240 <.text+0x3240>
14000184e: cc                          	int3
14000184f: cc                          	int3
140001850: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140001855: 57                          	push	rdi
140001856: 48 83 ec 20                 	sub	rsp, 32
14000185a: 48 8d 1d bf 42 01 00        	lea	rbx, [rip + 82623]      # 0x140015b20
140001861: 48 8d 3d b8 42 01 00        	lea	rdi, [rip + 82616]      # 0x140015b20
140001868: eb 12                       	jmp	0x14000187c <.text+0x87c>
14000186a: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000186d: 48 85 c0                    	test	rax, rax
140001870: 74 06                       	je	0x140001878 <.text+0x878>
140001872: ff 15 b8 c9 00 00           	call	qword ptr [rip + 51640] # 0x14000e230
140001878: 48 83 c3 08                 	add	rbx, 8
14000187c: 48 3b df                    	cmp	rbx, rdi
14000187f: 72 e9                       	jb	0x14000186a <.text+0x86a>
140001881: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140001886: 48 83 c4 20                 	add	rsp, 32
14000188a: 5f                          	pop	rdi
14000188b: c3                          	ret
14000188c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140001891: 57                          	push	rdi
140001892: 48 83 ec 20                 	sub	rsp, 32
140001896: 48 8d 1d 93 42 01 00        	lea	rbx, [rip + 82579]      # 0x140015b30
14000189d: 48 8d 3d 8c 42 01 00        	lea	rdi, [rip + 82572]      # 0x140015b30
1400018a4: eb 12                       	jmp	0x1400018b8 <.text+0x8b8>
1400018a6: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400018a9: 48 85 c0                    	test	rax, rax
1400018ac: 74 06                       	je	0x1400018b4 <.text+0x8b4>
1400018ae: ff 15 7c c9 00 00           	call	qword ptr [rip + 51580] # 0x14000e230
1400018b4: 48 83 c3 08                 	add	rbx, 8
1400018b8: 48 3b df                    	cmp	rbx, rdi
1400018bb: 72 e9                       	jb	0x1400018a6 <.text+0x8a6>
1400018bd: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400018c2: 48 83 c4 20                 	add	rsp, 32
1400018c6: 5f                          	pop	rdi
1400018c7: c3                          	ret
1400018c8: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
1400018cd: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
1400018d2: 57                          	push	rdi
1400018d3: 48 83 ec 10                 	sub	rsp, 16
1400018d7: 33 c0                       	xor	eax, eax
1400018d9: 33 c9                       	xor	ecx, ecx
1400018db: 0f a2                       	cpuid
1400018dd: 44 8b c1                    	mov	r8d, ecx
1400018e0: 45 33 db                    	xor	r11d, r11d
1400018e3: 44 8b d2                    	mov	r10d, edx
1400018e6: 41 81 f0 6e 74 65 6c        	xor	r8d, 1818588270
1400018ed: 41 81 f2 69 6e 65 49        	xor	r10d, 1231384169
1400018f4: 44 8b cb                    	mov	r9d, ebx
1400018f7: 8b f0                       	mov	esi, eax
1400018f9: 33 c9                       	xor	ecx, ecx
1400018fb: 41 8d 43 01                 	lea	eax, [r11 + 1]
1400018ff: 45 0b d0                    	or	r10d, r8d
140001902: 0f a2                       	cpuid
140001904: 41 81 f1 47 65 6e 75        	xor	r9d, 1970169159
14000190b: 89 04 24                    	mov	dword ptr [rsp], eax
14000190e: 45 0b d1                    	or	r10d, r9d
140001911: 89 5c 24 04                 	mov	dword ptr [rsp + 4], ebx
140001915: 8b f9                       	mov	edi, ecx
140001917: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
14000191b: 89 54 24 0c                 	mov	dword ptr [rsp + 12], edx
14000191f: 75 5b                       	jne	0x14000197c <.text+0x97c>
140001921: 48 83 0d ef 56 01 00 ff     	or	qword ptr [rip + 87791], -1 # 0x140017018
140001929: 25 f0 3f ff 0f              	and	eax, 268386288
14000192e: 48 c7 05 d7 56 01 00 00 80 00 00    	mov	qword ptr [rip + 87767], 32768 # 0x140017010
140001939: 3d c0 06 01 00              	cmp	eax, 67264
14000193e: 74 28                       	je	0x140001968 <.text+0x968>
140001940: 3d 60 06 02 00              	cmp	eax, 132704
140001945: 74 21                       	je	0x140001968 <.text+0x968>
140001947: 3d 70 06 02 00              	cmp	eax, 132720
14000194c: 74 1a                       	je	0x140001968 <.text+0x968>
14000194e: 05 b0 f9 fc ff              	add	eax, 4294769072
140001953: 83 f8 20                    	cmp	eax, 32
140001956: 77 24                       	ja	0x14000197c <.text+0x97c>
140001958: 48 b9 01 00 01 00 01 00 00 00       	movabs	rcx, 4295032833
140001962: 48 0f a3 c1                 	bt	rcx, rax
140001966: 73 14                       	jae	0x14000197c <.text+0x97c>
140001968: 44 8b 05 05 61 01 00        	mov	r8d, dword ptr [rip + 90373] # 0x140017a74
14000196f: 41 83 c8 01                 	or	r8d, 1
140001973: 44 89 05 fa 60 01 00        	mov	dword ptr [rip + 90362], r8d # 0x140017a74
14000197a: eb 07                       	jmp	0x140001983 <.text+0x983>
14000197c: 44 8b 05 f1 60 01 00        	mov	r8d, dword ptr [rip + 90353] # 0x140017a74
140001983: b8 07 00 00 00              	mov	eax, 7
140001988: 44 8d 48 fb                 	lea	r9d, [rax - 5]
14000198c: 3b f0                       	cmp	esi, eax
14000198e: 7c 26                       	jl	0x1400019b6 <.text+0x9b6>
140001990: 33 c9                       	xor	ecx, ecx
140001992: 0f a2                       	cpuid
140001994: 89 04 24                    	mov	dword ptr [rsp], eax
140001997: 44 8b db                    	mov	r11d, ebx
14000199a: 89 5c 24 04                 	mov	dword ptr [rsp + 4], ebx
14000199e: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
1400019a2: 89 54 24 0c                 	mov	dword ptr [rsp + 12], edx
1400019a6: 0f ba e3 09                 	bt	ebx, 9
1400019aa: 73 0a                       	jae	0x1400019b6 <.text+0x9b6>
1400019ac: 45 0b c1                    	or	r8d, r9d
1400019af: 44 89 05 be 60 01 00        	mov	dword ptr [rip + 90302], r8d # 0x140017a74
1400019b6: c7 05 48 56 01 00 01 00 00 00       	mov	dword ptr [rip + 87624], 1 # 0x140017008
1400019c0: 44 89 0d 45 56 01 00        	mov	dword ptr [rip + 87621], r9d # 0x14001700c
1400019c7: 0f ba e7 14                 	bt	edi, 20
1400019cb: 0f 83 91 00 00 00           	jae	0x140001a62 <.text+0xa62>
1400019d1: 44 89 0d 30 56 01 00        	mov	dword ptr [rip + 87600], r9d # 0x140017008
1400019d8: bb 06 00 00 00              	mov	ebx, 6
1400019dd: 89 1d 29 56 01 00           	mov	dword ptr [rip + 87593], ebx # 0x14001700c
1400019e3: 0f ba e7 1b                 	bt	edi, 27
1400019e7: 73 79                       	jae	0x140001a62 <.text+0xa62>
1400019e9: 0f ba e7 1c                 	bt	edi, 28
1400019ed: 73 73                       	jae	0x140001a62 <.text+0xa62>
1400019ef: 33 c9                       	xor	ecx, ecx
1400019f1: 0f 01 d0                    	xgetbv
1400019f4: 48 c1 e2 20                 	shl	rdx, 32
1400019f8: 48 0b d0                    	or	rdx, rax
1400019fb: 48 89 54 24 20              	mov	qword ptr [rsp + 32], rdx
140001a00: 48 8b 44 24 20              	mov	rax, qword ptr [rsp + 32]
140001a05: 22 c3                       	and	al, bl
140001a07: 3a c3                       	cmp	al, bl
140001a09: 75 57                       	jne	0x140001a62 <.text+0xa62>
140001a0b: 8b 05 fb 55 01 00           	mov	eax, dword ptr [rip + 87547] # 0x14001700c
140001a11: 83 c8 08                    	or	eax, 8
140001a14: c7 05 ea 55 01 00 03 00 00 00       	mov	dword ptr [rip + 87530], 3 # 0x140017008
140001a1e: 89 05 e8 55 01 00           	mov	dword ptr [rip + 87528], eax # 0x14001700c
140001a24: 41 f6 c3 20                 	test	r11b, 32
140001a28: 74 38                       	je	0x140001a62 <.text+0xa62>
140001a2a: 83 c8 20                    	or	eax, 32
140001a2d: c7 05 d1 55 01 00 05 00 00 00       	mov	dword ptr [rip + 87505], 5 # 0x140017008
140001a37: 89 05 cf 55 01 00           	mov	dword ptr [rip + 87503], eax # 0x14001700c
140001a3d: b8 00 00 03 d0              	mov	eax, 3489857536
140001a42: 44 23 d8                    	and	r11d, eax
140001a45: 44 3b d8                    	cmp	r11d, eax
140001a48: 75 18                       	jne	0x140001a62 <.text+0xa62>
140001a4a: 48 8b 44 24 20              	mov	rax, qword ptr [rsp + 32]
140001a4f: 24 e0                       	and	al, -32
140001a51: 3c e0                       	cmp	al, -32
140001a53: 75 0d                       	jne	0x140001a62 <.text+0xa62>
140001a55: 83 0d b0 55 01 00 40        	or	dword ptr [rip + 87472], 64 # 0x14001700c
140001a5c: 89 1d a6 55 01 00           	mov	dword ptr [rip + 87462], ebx # 0x140017008
140001a62: 48 8b 5c 24 28              	mov	rbx, qword ptr [rsp + 40]
140001a67: 33 c0                       	xor	eax, eax
140001a69: 48 8b 74 24 30              	mov	rsi, qword ptr [rsp + 48]
140001a6e: 48 83 c4 10                 	add	rsp, 16
140001a72: 5f                          	pop	rdi
140001a73: c3                          	ret
140001a74: 33 c0                       	xor	eax, eax
140001a76: 39 05 34 71 01 00           	cmp	dword ptr [rip + 94516], eax # 0x140018bb0
140001a7c: 0f 95 c0                    	setne	al
140001a7f: c3                          	ret
140001a80: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140001a85: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140001a8a: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140001a8f: 57                          	push	rdi
140001a90: 41 54                       	push	r12
140001a92: 41 55                       	push	r13
140001a94: 41 56                       	push	r14
140001a96: 41 57                       	push	r15
140001a98: 48 83 ec 40                 	sub	rsp, 64
140001a9c: 48 8b e9                    	mov	rbp, rcx
140001a9f: 4d 8b f9                    	mov	r15, r9
140001aa2: 49 8b c8                    	mov	rcx, r8
140001aa5: 49 8b f0                    	mov	rsi, r8
140001aa8: 4c 8b ea                    	mov	r13, rdx
140001aab: e8 b4 06 00 00              	call	0x140002164 <.text+0x1164>
140001ab0: 4d 8b 67 08                 	mov	r12, qword ptr [r15 + 8]
140001ab4: 4d 8b 37                    	mov	r14, qword ptr [r15]
140001ab7: 49 8b 5f 38                 	mov	rbx, qword ptr [r15 + 56]
140001abb: 4d 2b f4                    	sub	r14, r12
140001abe: f6 45 04 66                 	test	byte ptr [rbp + 4], 102
140001ac2: 41 8b 7f 48                 	mov	edi, dword ptr [r15 + 72]
140001ac6: 0f 85 dc 00 00 00           	jne	0x140001ba8 <.text+0xba8>
140001acc: 48 89 6c 24 30              	mov	qword ptr [rsp + 48], rbp
140001ad1: 48 89 74 24 38              	mov	qword ptr [rsp + 56], rsi
140001ad6: 3b 3b                       	cmp	edi, dword ptr [rbx]
140001ad8: 0f 83 76 01 00 00           	jae	0x140001c54 <.text+0xc54>
140001ade: 8b f7                       	mov	esi, edi
140001ae0: 48 03 f6                    	add	rsi, rsi
140001ae3: 8b 44 f3 04                 	mov	eax, dword ptr [rbx + 8*rsi + 4]
140001ae7: 4c 3b f0                    	cmp	r14, rax
140001aea: 0f 82 aa 00 00 00           	jb	0x140001b9a <.text+0xb9a>
140001af0: 8b 44 f3 08                 	mov	eax, dword ptr [rbx + 8*rsi + 8]
140001af4: 4c 3b f0                    	cmp	r14, rax
140001af7: 0f 83 9d 00 00 00           	jae	0x140001b9a <.text+0xb9a>
140001afd: 83 7c f3 10 00              	cmp	dword ptr [rbx + 8*rsi + 16], 0
140001b02: 0f 84 92 00 00 00           	je	0x140001b9a <.text+0xb9a>
140001b08: 83 7c f3 0c 01              	cmp	dword ptr [rbx + 8*rsi + 12], 1
140001b0d: 74 17                       	je	0x140001b26 <.text+0xb26>
140001b0f: 8b 44 f3 0c                 	mov	eax, dword ptr [rbx + 8*rsi + 12]
140001b13: 48 8d 4c 24 30              	lea	rcx, [rsp + 48]
140001b18: 49 03 c4                    	add	rax, r12
140001b1b: 49 8b d5                    	mov	rdx, r13
140001b1e: ff d0                       	call	rax
140001b20: 85 c0                       	test	eax, eax
140001b22: 78 7d                       	js	0x140001ba1 <.text+0xba1>
140001b24: 7e 74                       	jle	0x140001b9a <.text+0xb9a>
140001b26: 81 7d 00 63 73 6d e0        	cmp	dword ptr [rbp], 3765269347
140001b2d: 75 28                       	jne	0x140001b57 <.text+0xb57>
140001b2f: 48 83 3d c9 c7 00 00 00     	cmp	qword ptr [rip + 51145], 0 # 0x14000e300
140001b37: 74 1e                       	je	0x140001b57 <.text+0xb57>
140001b39: 48 8d 0d c0 c7 00 00        	lea	rcx, [rip + 51136]      # 0x14000e300
140001b40: e8 8b ae 00 00              	call	0x14000c9d0 <.text+0xb9d0>
140001b45: 85 c0                       	test	eax, eax
140001b47: 74 0e                       	je	0x140001b57 <.text+0xb57>
140001b49: ba 01 00 00 00              	mov	edx, 1
140001b4e: 48 8b cd                    	mov	rcx, rbp
140001b51: ff 15 a9 c7 00 00           	call	qword ptr [rip + 51113] # 0x14000e300
140001b57: 8b 4c f3 10                 	mov	ecx, dword ptr [rbx + 8*rsi + 16]
140001b5b: 41 b8 01 00 00 00           	mov	r8d, 1
140001b61: 49 03 cc                    	add	rcx, r12
140001b64: 49 8b d5                    	mov	rdx, r13
140001b67: e8 c4 05 00 00              	call	0x140002130 <.text+0x1130>
140001b6c: 49 8b 47 40                 	mov	rax, qword ptr [r15 + 64]
140001b70: 4c 8b c5                    	mov	r8, rbp
140001b73: 8b 54 f3 10                 	mov	edx, dword ptr [rbx + 8*rsi + 16]
140001b77: 49 8b cd                    	mov	rcx, r13
140001b7a: 44 8b 4d 00                 	mov	r9d, dword ptr [rbp]
140001b7e: 49 03 d4                    	add	rdx, r12
140001b81: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
140001b86: 49 8b 47 28                 	mov	rax, qword ptr [r15 + 40]
140001b8a: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140001b8f: ff 15 e3 c4 00 00           	call	qword ptr [rip + 50403] # 0x14000e078
140001b95: e8 c6 05 00 00              	call	0x140002160 <.text+0x1160>
140001b9a: ff c7                       	inc	edi
140001b9c: e9 35 ff ff ff              	jmp	0x140001ad6 <.text+0xad6>
140001ba1: 33 c0                       	xor	eax, eax
140001ba3: e9 b1 00 00 00              	jmp	0x140001c59 <.text+0xc59>
140001ba8: 49 8b 77 20                 	mov	rsi, qword ptr [r15 + 32]
140001bac: 49 2b f4                    	sub	rsi, r12
140001baf: e9 96 00 00 00              	jmp	0x140001c4a <.text+0xc4a>
140001bb4: 8b cf                       	mov	ecx, edi
140001bb6: 48 03 c9                    	add	rcx, rcx
140001bb9: 8b 44 cb 04                 	mov	eax, dword ptr [rbx + 8*rcx + 4]
140001bbd: 4c 3b f0                    	cmp	r14, rax
140001bc0: 0f 82 82 00 00 00           	jb	0x140001c48 <.text+0xc48>
140001bc6: 8b 44 cb 08                 	mov	eax, dword ptr [rbx + 8*rcx + 8]
140001bca: 4c 3b f0                    	cmp	r14, rax
140001bcd: 73 79                       	jae	0x140001c48 <.text+0xc48>
140001bcf: 44 8b 55 04                 	mov	r10d, dword ptr [rbp + 4]
140001bd3: 41 83 e2 20                 	and	r10d, 32
140001bd7: 74 44                       	je	0x140001c1d <.text+0xc1d>
140001bd9: 45 33 c9                    	xor	r9d, r9d
140001bdc: 85 d2                       	test	edx, edx
140001bde: 74 38                       	je	0x140001c18 <.text+0xc18>
140001be0: 45 8b c1                    	mov	r8d, r9d
140001be3: 4d 03 c0                    	add	r8, r8
140001be6: 42 8b 44 c3 04              	mov	eax, dword ptr [rbx + 8*r8 + 4]
140001beb: 48 3b f0                    	cmp	rsi, rax
140001bee: 72 20                       	jb	0x140001c10 <.text+0xc10>
140001bf0: 42 8b 44 c3 08              	mov	eax, dword ptr [rbx + 8*r8 + 8]
140001bf5: 48 3b f0                    	cmp	rsi, rax
140001bf8: 73 16                       	jae	0x140001c10 <.text+0xc10>
140001bfa: 8b 44 cb 10                 	mov	eax, dword ptr [rbx + 8*rcx + 16]
140001bfe: 42 39 44 c3 10              	cmp	dword ptr [rbx + 8*r8 + 16], eax
140001c03: 75 0b                       	jne	0x140001c10 <.text+0xc10>
140001c05: 8b 44 cb 0c                 	mov	eax, dword ptr [rbx + 8*rcx + 12]
140001c09: 42 39 44 c3 0c              	cmp	dword ptr [rbx + 8*r8 + 12], eax
140001c0e: 74 08                       	je	0x140001c18 <.text+0xc18>
140001c10: 41 ff c1                    	inc	r9d
140001c13: 44 3b ca                    	cmp	r9d, edx
140001c16: 72 c8                       	jb	0x140001be0 <.text+0xbe0>
140001c18: 44 3b ca                    	cmp	r9d, edx
140001c1b: 75 37                       	jne	0x140001c54 <.text+0xc54>
140001c1d: 8b 44 cb 10                 	mov	eax, dword ptr [rbx + 8*rcx + 16]
140001c21: 85 c0                       	test	eax, eax
140001c23: 74 0c                       	je	0x140001c31 <.text+0xc31>
140001c25: 48 3b f0                    	cmp	rsi, rax
140001c28: 75 1e                       	jne	0x140001c48 <.text+0xc48>
140001c2a: 45 85 d2                    	test	r10d, r10d
140001c2d: 75 25                       	jne	0x140001c54 <.text+0xc54>
140001c2f: eb 17                       	jmp	0x140001c48 <.text+0xc48>
140001c31: 8d 47 01                    	lea	eax, [rdi + 1]
140001c34: 49 8b d5                    	mov	rdx, r13
140001c37: 41 89 47 48                 	mov	dword ptr [r15 + 72], eax
140001c3b: 44 8b 44 cb 0c              	mov	r8d, dword ptr [rbx + 8*rcx + 12]
140001c40: b1 01                       	mov	cl, 1
140001c42: 4d 03 c4                    	add	r8, r12
140001c45: 41 ff d0                    	call	r8
140001c48: ff c7                       	inc	edi
140001c4a: 8b 13                       	mov	edx, dword ptr [rbx]
140001c4c: 3b fa                       	cmp	edi, edx
140001c4e: 0f 82 60 ff ff ff           	jb	0x140001bb4 <.text+0xbb4>
140001c54: b8 01 00 00 00              	mov	eax, 1
140001c59: 4c 8d 5c 24 40              	lea	r11, [rsp + 64]
140001c5e: 49 8b 5b 30                 	mov	rbx, qword ptr [r11 + 48]
140001c62: 49 8b 6b 38                 	mov	rbp, qword ptr [r11 + 56]
140001c66: 49 8b 73 40                 	mov	rsi, qword ptr [r11 + 64]
140001c6a: 49 8b e3                    	mov	rsp, r11
140001c6d: 41 5f                       	pop	r15
140001c6f: 41 5e                       	pop	r14
140001c71: 41 5d                       	pop	r13
140001c73: 41 5c                       	pop	r12
140001c75: 5f                          	pop	rdi
140001c76: c3                          	ret
140001c77: cc                          	int3
140001c78: 48 83 ec 28                 	sub	rsp, 40
140001c7c: e8 83 06 00 00              	call	0x140002304 <.text+0x1304>
140001c81: 84 c0                       	test	al, al
140001c83: 75 04                       	jne	0x140001c89 <.text+0xc89>
140001c85: 32 c0                       	xor	al, al
140001c87: eb 12                       	jmp	0x140001c9b <.text+0xc9b>
140001c89: e8 0a 06 00 00              	call	0x140002298 <.text+0x1298>
140001c8e: 84 c0                       	test	al, al
140001c90: 75 07                       	jne	0x140001c99 <.text+0xc99>
140001c92: e8 b5 06 00 00              	call	0x14000234c <.text+0x134c>
140001c97: eb ec                       	jmp	0x140001c85 <.text+0xc85>
140001c99: b0 01                       	mov	al, 1
140001c9b: 48 83 c4 28                 	add	rsp, 40
140001c9f: c3                          	ret
140001ca0: 48 83 ec 28                 	sub	rsp, 40
140001ca4: 84 c9                       	test	cl, cl
140001ca6: 75 0a                       	jne	0x140001cb2 <.text+0xcb2>
140001ca8: e8 33 06 00 00              	call	0x1400022e0 <.text+0x12e0>
140001cad: e8 9a 06 00 00              	call	0x14000234c <.text+0x134c>
140001cb2: b0 01                       	mov	al, 1
140001cb4: 48 83 c4 28                 	add	rsp, 40
140001cb8: c3                          	ret
140001cb9: cc                          	int3
140001cba: cc                          	int3
140001cbb: cc                          	int3
140001cbc: 48 85 c9                    	test	rcx, rcx
140001cbf: 74 67                       	je	0x140001d28 <.text+0xd28>
140001cc1: 88 54 24 10                 	mov	byte ptr [rsp + 16], dl
140001cc5: 48 83 ec 48                 	sub	rsp, 72
140001cc9: 81 39 63 73 6d e0           	cmp	dword ptr [rcx], 3765269347
140001ccf: 75 53                       	jne	0x140001d24 <.text+0xd24>
140001cd1: 83 79 18 04                 	cmp	dword ptr [rcx + 24], 4
140001cd5: 75 4d                       	jne	0x140001d24 <.text+0xd24>
140001cd7: 8b 41 20                    	mov	eax, dword ptr [rcx + 32]
140001cda: 2d 20 05 93 19              	sub	eax, 429065504
140001cdf: 83 f8 02                    	cmp	eax, 2
140001ce2: 77 40                       	ja	0x140001d24 <.text+0xd24>
140001ce4: 48 8b 41 30                 	mov	rax, qword ptr [rcx + 48]
140001ce8: 48 85 c0                    	test	rax, rax
140001ceb: 74 37                       	je	0x140001d24 <.text+0xd24>
140001ced: 48 63 50 04                 	movsxd	rdx, dword ptr [rax + 4]
140001cf1: 85 d2                       	test	edx, edx
140001cf3: 74 11                       	je	0x140001d06 <.text+0xd06>
140001cf5: 48 03 51 38                 	add	rdx, qword ptr [rcx + 56]
140001cf9: 48 8b 49 28                 	mov	rcx, qword ptr [rcx + 40]
140001cfd: e8 2a 00 00 00              	call	0x140001d2c <.text+0xd2c>
140001d02: eb 20                       	jmp	0x140001d24 <.text+0xd24>
140001d04: eb 1e                       	jmp	0x140001d24 <.text+0xd24>
140001d06: f6 00 10                    	test	byte ptr [rax], 16
140001d09: 74 19                       	je	0x140001d24 <.text+0xd24>
140001d0b: 48 8b 41 28                 	mov	rax, qword ptr [rcx + 40]
140001d0f: 48 8b 08                    	mov	rcx, qword ptr [rax]
140001d12: 48 85 c9                    	test	rcx, rcx
140001d15: 74 0d                       	je	0x140001d24 <.text+0xd24>
140001d17: 48 8b 01                    	mov	rax, qword ptr [rcx]
140001d1a: 48 8b 40 10                 	mov	rax, qword ptr [rax + 16]
140001d1e: ff 15 0c c5 00 00           	call	qword ptr [rip + 50444] # 0x14000e230
140001d24: 48 83 c4 48                 	add	rsp, 72
140001d28: c3                          	ret
140001d29: cc                          	int3
140001d2a: cc                          	int3
140001d2b: cc                          	int3
140001d2c: 48 ff e2                    	jmp	rdx
140001d2f: cc                          	int3
140001d30: 48 83 ec 28                 	sub	rsp, 40
140001d34: e8 83 04 00 00              	call	0x1400021bc <.text+0x11bc>
140001d39: 48 83 c0 20                 	add	rax, 32
140001d3d: 48 83 c4 28                 	add	rsp, 40
140001d41: c3                          	ret
140001d42: cc                          	int3
140001d43: cc                          	int3
140001d44: 48 83 ec 28                 	sub	rsp, 40
140001d48: e8 6f 04 00 00              	call	0x1400021bc <.text+0x11bc>
140001d4d: 48 83 c0 28                 	add	rax, 40
140001d51: 48 83 c4 28                 	add	rsp, 40
140001d55: c3                          	ret
140001d56: cc                          	int3
140001d57: cc                          	int3
140001d58: cc                          	int3
140001d59: cc                          	int3
140001d5a: cc                          	int3
140001d5b: cc                          	int3
140001d5c: cc                          	int3
140001d5d: cc                          	int3
140001d5e: cc                          	int3
140001d5f: cc                          	int3
140001d60: cc                          	int3
140001d61: cc                          	int3
140001d62: cc                          	int3
140001d63: cc                          	int3
140001d64: cc                          	int3
140001d65: cc                          	int3
140001d66: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140001d70: 57                          	push	rdi
140001d71: 8b c2                       	mov	eax, edx
140001d73: 48 8b f9                    	mov	rdi, rcx
140001d76: 49 8b c8                    	mov	rcx, r8
140001d79: f3 aa                       	rep		stosb	byte ptr es:[rdi], al
140001d7b: 49 8b c1                    	mov	rax, r9
140001d7e: 5f                          	pop	rdi
140001d7f: c3                          	ret
140001d80: cc                          	int3
140001d81: cc                          	int3
140001d82: cc                          	int3
140001d83: cc                          	int3
140001d84: cc                          	int3
140001d85: cc                          	int3
140001d86: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140001d90: 48 8b c1                    	mov	rax, rcx
140001d93: 4c 8b c9                    	mov	r9, rcx
140001d96: 4c 8d 15 63 e2 ff ff        	lea	r10, [rip - 7581]       # 0x140000000
140001d9d: 0f b6 d2                    	movzx	edx, dl
140001da0: 49 bb 01 01 01 01 01 01 01 01       	movabs	r11, 72340172838076673
140001daa: 4c 0f af da                 	imul	r11, rdx
140001dae: 66 49 0f 6e c3              	movq	xmm0, r11
140001db3: 49 83 f8 0f                 	cmp	r8, 15
140001db7: 0f 87 83 00 00 00           	ja	0x140001e40 <.text+0xe40>
140001dbd: 0f 1f 00                    	nop	dword ptr [rax]
140001dc0: 49 03 c8                    	add	rcx, r8
140001dc3: 47 8b 8c 82 00 b0 01 00     	mov	r9d, dword ptr [r10 + 4*r8 + 110592]
140001dcb: 4d 03 ca                    	add	r9, r10
140001dce: 41 ff e1                    	jmp	r9
140001dd1: 4c 89 59 f1                 	mov	qword ptr [rcx - 15], r11
140001dd5: 44 89 59 f9                 	mov	dword ptr [rcx - 7], r11d
140001dd9: 66 44 89 59 fd              	mov	word ptr [rcx - 3], r11w
140001dde: 44 88 59 ff                 	mov	byte ptr [rcx - 1], r11b
140001de2: c3                          	ret
140001de3: 4c 89 59 f2                 	mov	qword ptr [rcx - 14], r11
140001de7: 44 89 59 fa                 	mov	dword ptr [rcx - 6], r11d
140001deb: 66 44 89 59 fe              	mov	word ptr [rcx - 2], r11w
140001df0: c3                          	ret
140001df1: 66 66 66 66 66 66 66 0f 1f 84 00 00 00 00 00	nop	word ptr [rax + rax]
140001e00: 4c 89 59 f3                 	mov	qword ptr [rcx - 13], r11
140001e04: 44 89 59 fb                 	mov	dword ptr [rcx - 5], r11d
140001e08: 44 88 59 ff                 	mov	byte ptr [rcx - 1], r11b
140001e0c: c3                          	ret
140001e0d: 0f 1f 00                    	nop	dword ptr [rax]
140001e10: 4c 89 59 f4                 	mov	qword ptr [rcx - 12], r11
140001e14: 44 89 59 fc                 	mov	dword ptr [rcx - 4], r11d
140001e18: c3                          	ret
140001e19: 4c 89 59 f5                 	mov	qword ptr [rcx - 11], r11
140001e1d: 66 44 89 59 fd              	mov	word ptr [rcx - 3], r11w
140001e22: 44 88 59 ff                 	mov	byte ptr [rcx - 1], r11b
140001e26: c3                          	ret
140001e27: 4c 89 59 f7                 	mov	qword ptr [rcx - 9], r11
140001e2b: 44 88 59 ff                 	mov	byte ptr [rcx - 1], r11b
140001e2f: c3                          	ret
140001e30: 4c 89 59 f6                 	mov	qword ptr [rcx - 10], r11
140001e34: 66 44 89 59 fe              	mov	word ptr [rcx - 2], r11w
140001e39: c3                          	ret
140001e3a: 4c 89 59 f8                 	mov	qword ptr [rcx - 8], r11
140001e3e: c3                          	ret
140001e3f: 90                          	nop
140001e40: 66 0f 6c c0                 	punpcklqdq	xmm0, xmm0      # xmm0 = xmm0[0,0]
140001e44: 49 83 f8 20                 	cmp	r8, 32
140001e48: 77 0c                       	ja	0x140001e56 <.text+0xe56>
140001e4a: f3 0f 7f 01                 	movdqu	xmmword ptr [rcx], xmm0
140001e4e: f3 42 0f 7f 44 01 f0        	movdqu	xmmword ptr [rcx + r8 - 16], xmm0
140001e55: c3                          	ret
140001e56: 83 3d ab 51 01 00 03        	cmp	dword ptr [rip + 86443], 3 # 0x140017008
140001e5d: 0f 82 dd 01 00 00           	jb	0x140002040 <.text+0x1040>
140001e63: 4c 3b 05 a6 51 01 00        	cmp	r8, qword ptr [rip + 86438] # 0x140017010
140001e6a: 76 16                       	jbe	0x140001e82 <.text+0xe82>
140001e6c: 4c 3b 05 a5 51 01 00        	cmp	r8, qword ptr [rip + 86437] # 0x140017018
140001e73: 77 0d                       	ja	0x140001e82 <.text+0xe82>
140001e75: f6 05 f8 5b 01 00 02        	test	byte ptr [rip + 89080], 2 # 0x140017a74
140001e7c: 0f 85 ee fe ff ff           	jne	0x140001d70 <.text+0xd70>
140001e82: c4 e3 7d 18 c0 01           	vinsertf128	ymm0, ymm0, xmm0, 1
140001e88: 4c 8b c9                    	mov	r9, rcx
140001e8b: 49 83 e1 1f                 	and	r9, 31
140001e8f: 49 83 e9 20                 	sub	r9, 32
140001e93: 49 2b c9                    	sub	rcx, r9
140001e96: 49 2b d1                    	sub	rdx, r9
140001e99: 4d 03 c1                    	add	r8, r9
140001e9c: 49 81 f8 00 01 00 00        	cmp	r8, 256
140001ea3: 76 65                       	jbe	0x140001f0a <.text+0xf0a>
140001ea5: 4c 3b 05 6c 51 01 00        	cmp	r8, qword ptr [rip + 86380] # 0x140017018
140001eac: 0f 87 ce 00 00 00           	ja	0x140001f80 <.text+0xf80>
140001eb2: 66 66 66 66 66 66 0f 1f 84 00 00 00 00 00   	nop	word ptr [rax + rax]
140001ec0: c5 fd 7f 01                 	vmovdqa	ymmword ptr [rcx], ymm0
140001ec4: c5 fd 7f 41 20              	vmovdqa	ymmword ptr [rcx + 32], ymm0
140001ec9: c5 fd 7f 41 40              	vmovdqa	ymmword ptr [rcx + 64], ymm0
140001ece: c5 fd 7f 41 60              	vmovdqa	ymmword ptr [rcx + 96], ymm0
140001ed3: c5 fd 7f 81 80 00 00 00     	vmovdqa	ymmword ptr [rcx + 128], ymm0
140001edb: c5 fd 7f 81 a0 00 00 00     	vmovdqa	ymmword ptr [rcx + 160], ymm0
140001ee3: c5 fd 7f 81 c0 00 00 00     	vmovdqa	ymmword ptr [rcx + 192], ymm0
140001eeb: c5 fd 7f 81 e0 00 00 00     	vmovdqa	ymmword ptr [rcx + 224], ymm0
140001ef3: 48 81 c1 00 01 00 00        	add	rcx, 256
140001efa: 49 81 e8 00 01 00 00        	sub	r8, 256
140001f01: 49 81 f8 00 01 00 00        	cmp	r8, 256
140001f08: 73 b6                       	jae	0x140001ec0 <.text+0xec0>
140001f0a: 4d 8d 48 1f                 	lea	r9, [r8 + 31]
140001f0e: 49 83 e1 e0                 	and	r9, -32
140001f12: 4d 8b d9                    	mov	r11, r9
140001f15: 49 c1 eb 05                 	shr	r11, 5
140001f19: 47 8b 9c 9a 40 b0 01 00     	mov	r11d, dword ptr [r10 + 4*r11 + 110656]
140001f21: 4d 03 da                    	add	r11, r10
140001f24: 41 ff e3                    	jmp	r11
140001f27: c4 a1 7e 7f 84 09 00 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 256], ymm0
140001f31: c4 a1 7e 7f 84 09 20 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 224], ymm0
140001f3b: c4 a1 7e 7f 84 09 40 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 192], ymm0
140001f45: c4 a1 7e 7f 84 09 60 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 160], ymm0
140001f4f: c4 a1 7e 7f 44 09 80        	vmovdqu	ymmword ptr [rcx + r9 - 128], ymm0
140001f56: c4 a1 7e 7f 44 09 a0        	vmovdqu	ymmword ptr [rcx + r9 - 96], ymm0
140001f5d: c4 a1 7e 7f 44 09 c0        	vmovdqu	ymmword ptr [rcx + r9 - 64], ymm0
140001f64: c4 a1 7e 7f 44 01 e0        	vmovdqu	ymmword ptr [rcx + r8 - 32], ymm0
140001f6b: c5 fe 7f 00                 	vmovdqu	ymmword ptr [rax], ymm0
140001f6f: c5 f8 77                    	vzeroupper
140001f72: c3                          	ret
140001f73: 66 66 66 66 66 0f 1f 84 00 00 00 00 00      	nop	word ptr [rax + rax]
140001f80: c5 fd e7 01                 	vmovntdq	ymmword ptr [rcx], ymm0
140001f84: c5 fd e7 41 20              	vmovntdq	ymmword ptr [rcx + 32], ymm0
140001f89: c5 fd e7 41 40              	vmovntdq	ymmword ptr [rcx + 64], ymm0
140001f8e: c5 fd e7 41 60              	vmovntdq	ymmword ptr [rcx + 96], ymm0
140001f93: c5 fd e7 81 80 00 00 00     	vmovntdq	ymmword ptr [rcx + 128], ymm0
140001f9b: c5 fd e7 81 a0 00 00 00     	vmovntdq	ymmword ptr [rcx + 160], ymm0
140001fa3: c5 fd e7 81 c0 00 00 00     	vmovntdq	ymmword ptr [rcx + 192], ymm0
140001fab: c5 fd e7 81 e0 00 00 00     	vmovntdq	ymmword ptr [rcx + 224], ymm0
140001fb3: 48 81 c1 00 01 00 00        	add	rcx, 256
140001fba: 49 81 e8 00 01 00 00        	sub	r8, 256
140001fc1: 49 81 f8 00 01 00 00        	cmp	r8, 256
140001fc8: 73 b6                       	jae	0x140001f80 <.text+0xf80>
140001fca: 4d 8d 48 1f                 	lea	r9, [r8 + 31]
140001fce: 49 83 e1 e0                 	and	r9, -32
140001fd2: 4d 8b d9                    	mov	r11, r9
140001fd5: 49 c1 eb 05                 	shr	r11, 5
140001fd9: 47 8b 9c 9a 64 b0 01 00     	mov	r11d, dword ptr [r10 + 4*r11 + 110692]
140001fe1: 4d 03 da                    	add	r11, r10
140001fe4: 41 ff e3                    	jmp	r11
140001fe7: c4 a1 7d e7 84 09 00 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 256], ymm0
140001ff1: c4 a1 7d e7 84 09 20 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 224], ymm0
140001ffb: c4 a1 7d e7 84 09 40 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 192], ymm0
140002005: c4 a1 7d e7 84 09 60 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 160], ymm0
14000200f: c4 a1 7d e7 44 09 80        	vmovntdq	ymmword ptr [rcx + r9 - 128], ymm0
140002016: c4 a1 7d e7 44 09 a0        	vmovntdq	ymmword ptr [rcx + r9 - 96], ymm0
14000201d: c4 a1 7d e7 44 09 c0        	vmovntdq	ymmword ptr [rcx + r9 - 64], ymm0
140002024: c4 a1 7e 7f 44 01 e0        	vmovdqu	ymmword ptr [rcx + r8 - 32], ymm0
14000202b: c5 fe 7f 00                 	vmovdqu	ymmword ptr [rax], ymm0
14000202f: 0f ae f8                    	sfence
140002032: c5 f8 77                    	vzeroupper
140002035: c3                          	ret
140002036: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140002040: 4c 3b 05 c9 4f 01 00        	cmp	r8, qword ptr [rip + 85961] # 0x140017010
140002047: 76 0d                       	jbe	0x140002056 <.text+0x1056>
140002049: f6 05 24 5a 01 00 02        	test	byte ptr [rip + 88612], 2 # 0x140017a74
140002050: 0f 85 1a fd ff ff           	jne	0x140001d70 <.text+0xd70>
140002056: 4c 8b c9                    	mov	r9, rcx
140002059: 49 83 e1 0f                 	and	r9, 15
14000205d: 49 83 e9 10                 	sub	r9, 16
140002061: 49 2b c9                    	sub	rcx, r9
140002064: 49 2b d1                    	sub	rdx, r9
140002067: 4d 03 c1                    	add	r8, r9
14000206a: 49 81 f8 80 00 00 00        	cmp	r8, 128
140002071: 76 4b                       	jbe	0x1400020be <.text+0x10be>
140002073: 66 66 66 66 66 0f 1f 84 00 00 00 00 00      	nop	word ptr [rax + rax]
140002080: 66 0f 7f 01                 	movdqa	xmmword ptr [rcx], xmm0
140002084: 66 0f 7f 41 10              	movdqa	xmmword ptr [rcx + 16], xmm0
140002089: 66 0f 7f 41 20              	movdqa	xmmword ptr [rcx + 32], xmm0
14000208e: 66 0f 7f 41 30              	movdqa	xmmword ptr [rcx + 48], xmm0
140002093: 66 0f 7f 41 40              	movdqa	xmmword ptr [rcx + 64], xmm0
140002098: 66 0f 7f 41 50              	movdqa	xmmword ptr [rcx + 80], xmm0
14000209d: 66 0f 7f 41 60              	movdqa	xmmword ptr [rcx + 96], xmm0
1400020a2: 66 0f 7f 41 70              	movdqa	xmmword ptr [rcx + 112], xmm0
1400020a7: 48 81 c1 80 00 00 00        	add	rcx, 128
1400020ae: 49 81 e8 80 00 00 00        	sub	r8, 128
1400020b5: 49 81 f8 80 00 00 00        	cmp	r8, 128
1400020bc: 73 c2                       	jae	0x140002080 <.text+0x1080>
1400020be: 4d 8d 48 0f                 	lea	r9, [r8 + 15]
1400020c2: 49 83 e1 f0                 	and	r9, -16
1400020c6: 4d 8b d9                    	mov	r11, r9
1400020c9: 49 c1 eb 04                 	shr	r11, 4
1400020cd: 47 8b 9c 9a 88 b0 01 00     	mov	r11d, dword ptr [r10 + 4*r11 + 110728]
1400020d5: 4d 03 da                    	add	r11, r10
1400020d8: 41 ff e3                    	jmp	r11
1400020db: f3 42 0f 7f 44 09 80        	movdqu	xmmword ptr [rcx + r9 - 128], xmm0
1400020e2: f3 42 0f 7f 44 09 90        	movdqu	xmmword ptr [rcx + r9 - 112], xmm0
1400020e9: f3 42 0f 7f 44 09 a0        	movdqu	xmmword ptr [rcx + r9 - 96], xmm0
1400020f0: f3 42 0f 7f 44 09 b0        	movdqu	xmmword ptr [rcx + r9 - 80], xmm0
1400020f7: f3 42 0f 7f 44 09 c0        	movdqu	xmmword ptr [rcx + r9 - 64], xmm0
1400020fe: f3 42 0f 7f 44 09 d0        	movdqu	xmmword ptr [rcx + r9 - 48], xmm0
140002105: f3 42 0f 7f 44 09 e0        	movdqu	xmmword ptr [rcx + r9 - 32], xmm0
14000210c: f3 42 0f 7f 44 01 f0        	movdqu	xmmword ptr [rcx + r8 - 16], xmm0
140002113: f3 0f 7f 00                 	movdqu	xmmword ptr [rax], xmm0
140002117: c3                          	ret
140002118: cc                          	int3
140002119: cc                          	int3
14000211a: cc                          	int3
14000211b: cc                          	int3
14000211c: cc                          	int3
14000211d: cc                          	int3
14000211e: cc                          	int3
14000211f: cc                          	int3
140002120: cc                          	int3
140002121: cc                          	int3
140002122: cc                          	int3
140002123: cc                          	int3
140002124: cc                          	int3
140002125: cc                          	int3
140002126: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140002130: 48 89 4c 24 08              	mov	qword ptr [rsp + 8], rcx
140002135: 48 89 54 24 18              	mov	qword ptr [rsp + 24], rdx
14000213a: 44 89 44 24 10              	mov	dword ptr [rsp + 16], r8d
14000213f: 49 c7 c1 20 05 93 19        	mov	r9, 429065504
140002146: eb 08                       	jmp	0x140002150 <.text+0x1150>
140002148: cc                          	int3
140002149: cc                          	int3
14000214a: cc                          	int3
14000214b: cc                          	int3
14000214c: cc                          	int3
14000214d: cc                          	int3
14000214e: 66 90                       	nop
140002150: c3                          	ret
140002151: cc                          	int3
140002152: cc                          	int3
140002153: cc                          	int3
140002154: cc                          	int3
140002155: cc                          	int3
140002156: cc                          	int3
140002157: 66 0f 1f 84 00 00 00 00 00  	nop	word ptr [rax + rax]
140002160: c3                          	ret
140002161: cc                          	int3
140002162: cc                          	int3
140002163: cc                          	int3
140002164: 48 8b 05 b5 c0 00 00        	mov	rax, qword ptr [rip + 49333] # 0x14000e220
14000216b: 48 8d 15 76 f4 ff ff        	lea	rdx, [rip - 2954]       # 0x1400015e8 <.text+0x5e8>
140002172: 48 3b c2                    	cmp	rax, rdx
140002175: 74 23                       	je	0x14000219a <.text+0x119a>
140002177: 65 48 8b 04 25 30 00 00 00  	mov	rax, qword ptr gs:[48]
140002180: 48 8b 89 98 00 00 00        	mov	rcx, qword ptr [rcx + 152]
140002187: 48 3b 48 10                 	cmp	rcx, qword ptr [rax + 16]
14000218b: 72 06                       	jb	0x140002193 <.text+0x1193>
14000218d: 48 3b 48 08                 	cmp	rcx, qword ptr [rax + 8]
140002191: 76 07                       	jbe	0x14000219a <.text+0x119a>
140002193: b9 0d 00 00 00              	mov	ecx, 13
140002198: cd 29                       	int	41
14000219a: c3                          	ret
14000219b: cc                          	int3
14000219c: 48 83 ec 28                 	sub	rsp, 40
1400021a0: 48 85 c9                    	test	rcx, rcx
1400021a3: 74 11                       	je	0x1400021b6 <.text+0x11b6>
1400021a5: 48 8d 05 d4 58 01 00        	lea	rax, [rip + 88276]      # 0x140017a80
1400021ac: 48 3b c8                    	cmp	rcx, rax
1400021af: 74 05                       	je	0x1400021b6 <.text+0x11b6>
1400021b1: e8 aa 20 00 00              	call	0x140004260 <.text+0x3260>
1400021b6: 48 83 c4 28                 	add	rsp, 40
1400021ba: c3                          	ret
1400021bb: cc                          	int3
1400021bc: 48 83 ec 28                 	sub	rsp, 40
1400021c0: e8 13 00 00 00              	call	0x1400021d8 <.text+0x11d8>
1400021c5: 48 85 c0                    	test	rax, rax
1400021c8: 74 05                       	je	0x1400021cf <.text+0x11cf>
1400021ca: 48 83 c4 28                 	add	rsp, 40
1400021ce: c3                          	ret
1400021cf: e8 00 21 00 00              	call	0x1400042d4 <.text+0x32d4>
1400021d4: cc                          	int3
1400021d5: cc                          	int3
1400021d6: cc                          	int3
1400021d7: cc                          	int3
1400021d8: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400021dd: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
1400021e2: 57                          	push	rdi
1400021e3: 48 83 ec 20                 	sub	rsp, 32
1400021e7: 83 3d 42 4e 01 00 ff        	cmp	dword ptr [rip + 85570], -1 # 0x140017030
1400021ee: 75 07                       	jne	0x1400021f7 <.text+0x11f7>
1400021f0: 33 c0                       	xor	eax, eax
1400021f2: e9 90 00 00 00              	jmp	0x140002287 <.text+0x1287>
1400021f7: ff 15 83 be 00 00           	call	qword ptr [rip + 48771] # 0x14000e080
1400021fd: 8b 0d 2d 4e 01 00           	mov	ecx, dword ptr [rip + 85549] # 0x140017030
140002203: 8b f8                       	mov	edi, eax
140002205: e8 5a 03 00 00              	call	0x140002564 <.text+0x1564>
14000220a: 48 83 ca ff                 	or	rdx, -1
14000220e: 33 f6                       	xor	esi, esi
140002210: 48 3b c2                    	cmp	rax, rdx
140002213: 74 67                       	je	0x14000227c <.text+0x127c>
140002215: 48 85 c0                    	test	rax, rax
140002218: 74 05                       	je	0x14000221f <.text+0x121f>
14000221a: 48 8b f0                    	mov	rsi, rax
14000221d: eb 5d                       	jmp	0x14000227c <.text+0x127c>
14000221f: 8b 0d 0b 4e 01 00           	mov	ecx, dword ptr [rip + 85515] # 0x140017030
140002225: e8 82 03 00 00              	call	0x1400025ac <.text+0x15ac>
14000222a: 85 c0                       	test	eax, eax
14000222c: 74 4e                       	je	0x14000227c <.text+0x127c>
14000222e: ba 80 00 00 00              	mov	edx, 128
140002233: 8d 4a 81                    	lea	ecx, [rdx - 127]
140002236: e8 f1 20 00 00              	call	0x14000432c <.text+0x332c>
14000223b: 8b 0d ef 4d 01 00           	mov	ecx, dword ptr [rip + 85487] # 0x140017030
140002241: 48 8b d8                    	mov	rbx, rax
140002244: 48 85 c0                    	test	rax, rax
140002247: 74 24                       	je	0x14000226d <.text+0x126d>
140002249: 48 8b d0                    	mov	rdx, rax
14000224c: e8 5b 03 00 00              	call	0x1400025ac <.text+0x15ac>
140002251: 85 c0                       	test	eax, eax
140002253: 74 12                       	je	0x140002267 <.text+0x1267>
140002255: 48 8b c3                    	mov	rax, rbx
140002258: c7 43 78 fe ff ff ff        	mov	dword ptr [rbx + 120], 4294967294
14000225f: 48 8b de                    	mov	rbx, rsi
140002262: 48 8b f0                    	mov	rsi, rax
140002265: eb 0d                       	jmp	0x140002274 <.text+0x1274>
140002267: 8b 0d c3 4d 01 00           	mov	ecx, dword ptr [rip + 85443] # 0x140017030
14000226d: 33 d2                       	xor	edx, edx
14000226f: e8 38 03 00 00              	call	0x1400025ac <.text+0x15ac>
140002274: 48 8b cb                    	mov	rcx, rbx
140002277: e8 e4 1f 00 00              	call	0x140004260 <.text+0x3260>
14000227c: 8b cf                       	mov	ecx, edi
14000227e: ff 15 04 be 00 00           	call	qword ptr [rip + 48644] # 0x14000e088
140002284: 48 8b c6                    	mov	rax, rsi
140002287: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000228c: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
140002291: 48 83 c4 20                 	add	rsp, 32
140002295: 5f                          	pop	rdi
140002296: c3                          	ret
140002297: cc                          	int3
140002298: 48 83 ec 28                 	sub	rsp, 40
14000229c: 48 8d 0d f9 fe ff ff        	lea	rcx, [rip - 263]        # 0x14000219c <.text+0x119c>
1400022a3: e8 2c 02 00 00              	call	0x1400024d4 <.text+0x14d4>
1400022a8: 89 05 82 4d 01 00           	mov	dword ptr [rip + 85378], eax # 0x140017030
1400022ae: 83 f8 ff                    	cmp	eax, -1
1400022b1: 74 25                       	je	0x1400022d8 <.text+0x12d8>
1400022b3: 48 8d 15 c6 57 01 00        	lea	rdx, [rip + 88006]      # 0x140017a80
1400022ba: 8b c8                       	mov	ecx, eax
1400022bc: e8 eb 02 00 00              	call	0x1400025ac <.text+0x15ac>
1400022c1: 85 c0                       	test	eax, eax
1400022c3: 74 0e                       	je	0x1400022d3 <.text+0x12d3>
1400022c5: c7 05 29 58 01 00 fe ff ff ff       	mov	dword ptr [rip + 88105], 4294967294 # 0x140017af8
1400022cf: b0 01                       	mov	al, 1
1400022d1: eb 07                       	jmp	0x1400022da <.text+0x12da>
1400022d3: e8 08 00 00 00              	call	0x1400022e0 <.text+0x12e0>
1400022d8: 32 c0                       	xor	al, al
1400022da: 48 83 c4 28                 	add	rsp, 40
1400022de: c3                          	ret
1400022df: cc                          	int3
1400022e0: 48 83 ec 28                 	sub	rsp, 40
1400022e4: 8b 0d 46 4d 01 00           	mov	ecx, dword ptr [rip + 85318] # 0x140017030
1400022ea: 83 f9 ff                    	cmp	ecx, -1
1400022ed: 74 0c                       	je	0x1400022fb <.text+0x12fb>
1400022ef: e8 28 02 00 00              	call	0x14000251c <.text+0x151c>
1400022f4: 83 0d 35 4d 01 00 ff        	or	dword ptr [rip + 85301], -1 # 0x140017030
1400022fb: b0 01                       	mov	al, 1
1400022fd: 48 83 c4 28                 	add	rsp, 40
140002301: c3                          	ret
140002302: cc                          	int3
140002303: cc                          	int3
140002304: 40 53                       	push	rbx
140002306: 48 83 ec 20                 	sub	rsp, 32
14000230a: 33 db                       	xor	ebx, ebx
14000230c: 48 8d 15 ed 57 01 00        	lea	rdx, [rip + 88045]      # 0x140017b00
140002313: 45 33 c0                    	xor	r8d, r8d
140002316: 48 8d 0c 9b                 	lea	rcx, [rbx + 4*rbx]
14000231a: 48 8d 0c ca                 	lea	rcx, [rdx + 8*rcx]
14000231e: ba a0 0f 00 00              	mov	edx, 4000
140002323: e8 d8 02 00 00              	call	0x140002600 <.text+0x1600>
140002328: 85 c0                       	test	eax, eax
14000232a: 74 11                       	je	0x14000233d <.text+0x133d>
14000232c: ff 05 f6 57 01 00           	inc	dword ptr [rip + 88054] # 0x140017b28
140002332: ff c3                       	inc	ebx
140002334: 83 fb 01                    	cmp	ebx, 1
140002337: 72 d3                       	jb	0x14000230c <.text+0x130c>
140002339: b0 01                       	mov	al, 1
14000233b: eb 07                       	jmp	0x140002344 <.text+0x1344>
14000233d: e8 0a 00 00 00              	call	0x14000234c <.text+0x134c>
140002342: 32 c0                       	xor	al, al
140002344: 48 83 c4 20                 	add	rsp, 32
140002348: 5b                          	pop	rbx
140002349: c3                          	ret
14000234a: cc                          	int3
14000234b: cc                          	int3
14000234c: 40 53                       	push	rbx
14000234e: 48 83 ec 20                 	sub	rsp, 32
140002352: 8b 1d d0 57 01 00           	mov	ebx, dword ptr [rip + 88016] # 0x140017b28
140002358: eb 1d                       	jmp	0x140002377 <.text+0x1377>
14000235a: 48 8d 05 9f 57 01 00        	lea	rax, [rip + 87967]      # 0x140017b00
140002361: ff cb                       	dec	ebx
140002363: 48 8d 0c 9b                 	lea	rcx, [rbx + 4*rbx]
140002367: 48 8d 0c c8                 	lea	rcx, [rax + 8*rcx]
14000236b: ff 15 2f bd 00 00           	call	qword ptr [rip + 48431] # 0x14000e0a0
140002371: ff 0d b1 57 01 00           	dec	dword ptr [rip + 87985] # 0x140017b28
140002377: 85 db                       	test	ebx, ebx
140002379: 75 df                       	jne	0x14000235a <.text+0x135a>
14000237b: b0 01                       	mov	al, 1
14000237d: 48 83 c4 20                 	add	rsp, 32
140002381: 5b                          	pop	rbx
140002382: c3                          	ret
140002383: cc                          	int3
140002384: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140002389: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
14000238e: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140002393: 57                          	push	rdi
140002394: 41 54                       	push	r12
140002396: 41 55                       	push	r13
140002398: 41 56                       	push	r14
14000239a: 41 57                       	push	r15
14000239c: 48 83 ec 20                 	sub	rsp, 32
1400023a0: 8b f9                       	mov	edi, ecx
1400023a2: 4c 8d 3d 57 dc ff ff        	lea	r15, [rip - 9129]       # 0x140000000
1400023a9: 49 83 ce ff                 	or	r14, -1
1400023ad: 4d 8b e1                    	mov	r12, r9
1400023b0: 49 8b e8                    	mov	rbp, r8
1400023b3: 4c 8b ea                    	mov	r13, rdx
1400023b6: 49 8b 84 ff b0 7b 01 00     	mov	rax, qword ptr [r15 + 8*rdi + 97200]
1400023be: 90                          	nop
1400023bf: 49 3b c6                    	cmp	rax, r14
1400023c2: 0f 84 eb 00 00 00           	je	0x1400024b3 <.text+0x14b3>
1400023c8: 48 85 c0                    	test	rax, rax
1400023cb: 0f 85 e4 00 00 00           	jne	0x1400024b5 <.text+0x14b5>
1400023d1: 4d 3b c1                    	cmp	r8, r9
1400023d4: 0f 84 d1 00 00 00           	je	0x1400024ab <.text+0x14ab>
1400023da: 8b 75 00                    	mov	esi, dword ptr [rbp]
1400023dd: 49 8b 9c f7 98 7b 01 00     	mov	rbx, qword ptr [r15 + 8*rsi + 97176]
1400023e5: 90                          	nop
1400023e6: 48 85 db                    	test	rbx, rbx
1400023e9: 74 0b                       	je	0x1400023f6 <.text+0x13f6>
1400023eb: 49 3b de                    	cmp	rbx, r14
1400023ee: 0f 85 99 00 00 00           	jne	0x14000248d <.text+0x148d>
1400023f4: eb 6b                       	jmp	0x140002461 <.text+0x1461>
1400023f6: 4d 8b bc f7 e8 f0 00 00     	mov	r15, qword ptr [r15 + 8*rsi + 61672]
1400023fe: 33 d2                       	xor	edx, edx
140002400: 49 8b cf                    	mov	rcx, r15
140002403: 41 b8 00 08 00 00           	mov	r8d, 2048
140002409: ff 15 d1 bc 00 00           	call	qword ptr [rip + 48337] # 0x14000e0e0
14000240f: 48 8b d8                    	mov	rbx, rax
140002412: 48 85 c0                    	test	rax, rax
140002415: 75 56                       	jne	0x14000246d <.text+0x146d>
140002417: ff 15 63 bc 00 00           	call	qword ptr [rip + 48227] # 0x14000e080
14000241d: 83 f8 57                    	cmp	eax, 87
140002420: 75 2d                       	jne	0x14000244f <.text+0x144f>
140002422: 44 8d 43 07                 	lea	r8d, [rbx + 7]
140002426: 49 8b cf                    	mov	rcx, r15
140002429: 48 8d 15 68 cd 00 00        	lea	rdx, [rip + 52584]      # 0x14000f198
140002430: e8 2b 20 00 00              	call	0x140004460 <.text+0x3460>
140002435: 85 c0                       	test	eax, eax
140002437: 74 16                       	je	0x14000244f <.text+0x144f>
140002439: 45 33 c0                    	xor	r8d, r8d
14000243c: 33 d2                       	xor	edx, edx
14000243e: 49 8b cf                    	mov	rcx, r15
140002441: ff 15 99 bc 00 00           	call	qword ptr [rip + 48281] # 0x14000e0e0
140002447: 48 8b d8                    	mov	rbx, rax
14000244a: 48 85 c0                    	test	rax, rax
14000244d: 75 1e                       	jne	0x14000246d <.text+0x146d>
14000244f: 49 8b c6                    	mov	rax, r14
140002452: 4c 8d 3d a7 db ff ff        	lea	r15, [rip - 9305]       # 0x140000000
140002459: 49 87 84 f7 98 7b 01 00     	xchg	qword ptr [r15 + 8*rsi + 97176], rax
140002461: 48 83 c5 04                 	add	rbp, 4
140002465: 49 3b ec                    	cmp	rbp, r12
140002468: e9 67 ff ff ff              	jmp	0x1400023d4 <.text+0x13d4>
14000246d: 48 8b c3                    	mov	rax, rbx
140002470: 4c 8d 3d 89 db ff ff        	lea	r15, [rip - 9335]       # 0x140000000
140002477: 49 87 84 f7 98 7b 01 00     	xchg	qword ptr [r15 + 8*rsi + 97176], rax
14000247f: 48 85 c0                    	test	rax, rax
140002482: 74 09                       	je	0x14000248d <.text+0x148d>
140002484: 48 8b cb                    	mov	rcx, rbx
140002487: ff 15 43 bc 00 00           	call	qword ptr [rip + 48195] # 0x14000e0d0
14000248d: 49 8b d5                    	mov	rdx, r13
140002490: 48 8b cb                    	mov	rcx, rbx
140002493: ff 15 3f bc 00 00           	call	qword ptr [rip + 48191] # 0x14000e0d8
140002499: 48 85 c0                    	test	rax, rax
14000249c: 74 0d                       	je	0x1400024ab <.text+0x14ab>
14000249e: 48 8b c8                    	mov	rcx, rax
1400024a1: 49 87 8c ff b0 7b 01 00     	xchg	qword ptr [r15 + 8*rdi + 97200], rcx
1400024a9: eb 0a                       	jmp	0x1400024b5 <.text+0x14b5>
1400024ab: 4d 87 b4 ff b0 7b 01 00     	xchg	qword ptr [r15 + 8*rdi + 97200], r14
1400024b3: 33 c0                       	xor	eax, eax
1400024b5: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
1400024ba: 48 8b 6c 24 58              	mov	rbp, qword ptr [rsp + 88]
1400024bf: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
1400024c4: 48 83 c4 20                 	add	rsp, 32
1400024c8: 41 5f                       	pop	r15
1400024ca: 41 5e                       	pop	r14
1400024cc: 41 5d                       	pop	r13
1400024ce: 41 5c                       	pop	r12
1400024d0: 5f                          	pop	rdi
1400024d1: c3                          	ret
1400024d2: cc                          	int3
1400024d3: cc                          	int3
1400024d4: 40 53                       	push	rbx
1400024d6: 48 83 ec 20                 	sub	rsp, 32
1400024da: 48 8b d9                    	mov	rbx, rcx
1400024dd: 4c 8d 0d cc cc 00 00        	lea	r9, [rip + 52428]       # 0x14000f1b0
1400024e4: 33 c9                       	xor	ecx, ecx
1400024e6: 4c 8d 05 bb cc 00 00        	lea	r8, [rip + 52411]       # 0x14000f1a8
1400024ed: 48 8d 15 bc cc 00 00        	lea	rdx, [rip + 52412]      # 0x14000f1b0
1400024f4: e8 8b fe ff ff              	call	0x140002384 <.text+0x1384>
1400024f9: 48 85 c0                    	test	rax, rax
1400024fc: 74 0f                       	je	0x14000250d <.text+0x150d>
1400024fe: 48 8b cb                    	mov	rcx, rbx
140002501: 48 83 c4 20                 	add	rsp, 32
140002505: 5b                          	pop	rbx
140002506: 48 ff 25 23 bd 00 00        	jmp	qword ptr [rip + 48419] # 0x14000e230
14000250d: 48 83 c4 20                 	add	rsp, 32
140002511: 5b                          	pop	rbx
140002512: 48 ff 25 97 bb 00 00        	jmp	qword ptr [rip + 48023] # 0x14000e0b0
140002519: cc                          	int3
14000251a: cc                          	int3
14000251b: cc                          	int3
14000251c: 40 53                       	push	rbx
14000251e: 48 83 ec 20                 	sub	rsp, 32
140002522: 8b d9                       	mov	ebx, ecx
140002524: 4c 8d 0d 9d cc 00 00        	lea	r9, [rip + 52381]       # 0x14000f1c8
14000252b: b9 01 00 00 00              	mov	ecx, 1
140002530: 4c 8d 05 89 cc 00 00        	lea	r8, [rip + 52361]       # 0x14000f1c0
140002537: 48 8d 15 8a cc 00 00        	lea	rdx, [rip + 52362]      # 0x14000f1c8
14000253e: e8 41 fe ff ff              	call	0x140002384 <.text+0x1384>
140002543: 8b cb                       	mov	ecx, ebx
140002545: 48 85 c0                    	test	rax, rax
140002548: 74 0c                       	je	0x140002556 <.text+0x1556>
14000254a: 48 83 c4 20                 	add	rsp, 32
14000254e: 5b                          	pop	rbx
14000254f: 48 ff 25 da bc 00 00        	jmp	qword ptr [rip + 48346] # 0x14000e230
140002556: 48 83 c4 20                 	add	rsp, 32
14000255a: 5b                          	pop	rbx
14000255b: 48 ff 25 66 bb 00 00        	jmp	qword ptr [rip + 47974] # 0x14000e0c8
140002562: cc                          	int3
140002563: cc                          	int3
140002564: 40 53                       	push	rbx
140002566: 48 83 ec 20                 	sub	rsp, 32
14000256a: 8b d9                       	mov	ebx, ecx
14000256c: 4c 8d 0d 65 cc 00 00        	lea	r9, [rip + 52325]       # 0x14000f1d8
140002573: b9 02 00 00 00              	mov	ecx, 2
140002578: 4c 8d 05 51 cc 00 00        	lea	r8, [rip + 52305]       # 0x14000f1d0
14000257f: 48 8d 15 52 cc 00 00        	lea	rdx, [rip + 52306]      # 0x14000f1d8
140002586: e8 f9 fd ff ff              	call	0x140002384 <.text+0x1384>
14000258b: 8b cb                       	mov	ecx, ebx
14000258d: 48 85 c0                    	test	rax, rax
140002590: 74 0c                       	je	0x14000259e <.text+0x159e>
140002592: 48 83 c4 20                 	add	rsp, 32
140002596: 5b                          	pop	rbx
140002597: 48 ff 25 92 bc 00 00        	jmp	qword ptr [rip + 48274] # 0x14000e230
14000259e: 48 83 c4 20                 	add	rsp, 32
1400025a2: 5b                          	pop	rbx
1400025a3: 48 ff 25 0e bb 00 00        	jmp	qword ptr [rip + 47886] # 0x14000e0b8
1400025aa: cc                          	int3
1400025ab: cc                          	int3
1400025ac: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400025b1: 57                          	push	rdi
1400025b2: 48 83 ec 20                 	sub	rsp, 32
1400025b6: 48 8b da                    	mov	rbx, rdx
1400025b9: 4c 8d 0d 30 cc 00 00        	lea	r9, [rip + 52272]       # 0x14000f1f0
1400025c0: 8b f9                       	mov	edi, ecx
1400025c2: 48 8d 15 27 cc 00 00        	lea	rdx, [rip + 52263]      # 0x14000f1f0
1400025c9: b9 03 00 00 00              	mov	ecx, 3
1400025ce: 4c 8d 05 13 cc 00 00        	lea	r8, [rip + 52243]       # 0x14000f1e8
1400025d5: e8 aa fd ff ff              	call	0x140002384 <.text+0x1384>
1400025da: 48 8b d3                    	mov	rdx, rbx
1400025dd: 8b cf                       	mov	ecx, edi
1400025df: 48 85 c0                    	test	rax, rax
1400025e2: 74 08                       	je	0x1400025ec <.text+0x15ec>
1400025e4: ff 15 46 bc 00 00           	call	qword ptr [rip + 48198] # 0x14000e230
1400025ea: eb 06                       	jmp	0x1400025f2 <.text+0x15f2>
1400025ec: ff 15 ce ba 00 00           	call	qword ptr [rip + 47822] # 0x14000e0c0
1400025f2: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400025f7: 48 83 c4 20                 	add	rsp, 32
1400025fb: 5f                          	pop	rdi
1400025fc: c3                          	ret
1400025fd: cc                          	int3
1400025fe: cc                          	int3
1400025ff: cc                          	int3
140002600: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140002605: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000260a: 57                          	push	rdi
14000260b: 48 83 ec 20                 	sub	rsp, 32
14000260f: 41 8b f0                    	mov	esi, r8d
140002612: 4c 8d 0d ef cb 00 00        	lea	r9, [rip + 52207]       # 0x14000f208
140002619: 8b da                       	mov	ebx, edx
14000261b: 4c 8d 05 de cb 00 00        	lea	r8, [rip + 52190]       # 0x14000f200
140002622: 48 8b f9                    	mov	rdi, rcx
140002625: 48 8d 15 dc cb 00 00        	lea	rdx, [rip + 52188]      # 0x14000f208
14000262c: b9 04 00 00 00              	mov	ecx, 4
140002631: e8 4e fd ff ff              	call	0x140002384 <.text+0x1384>
140002636: 8b d3                       	mov	edx, ebx
140002638: 48 8b cf                    	mov	rcx, rdi
14000263b: 48 85 c0                    	test	rax, rax
14000263e: 74 0b                       	je	0x14000264b <.text+0x164b>
140002640: 44 8b c6                    	mov	r8d, esi
140002643: ff 15 e7 bb 00 00           	call	qword ptr [rip + 48103] # 0x14000e230
140002649: eb 06                       	jmp	0x140002651 <.text+0x1651>
14000264b: ff 15 57 ba 00 00           	call	qword ptr [rip + 47703] # 0x14000e0a8
140002651: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140002656: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
14000265b: 48 83 c4 20                 	add	rsp, 32
14000265f: 5f                          	pop	rdi
140002660: c3                          	ret
140002661: cc                          	int3
140002662: cc                          	int3
140002663: cc                          	int3
140002664: cc                          	int3
140002665: cc                          	int3
140002666: cc                          	int3
140002667: cc                          	int3
140002668: cc                          	int3
140002669: cc                          	int3
14000266a: cc                          	int3
14000266b: cc                          	int3
14000266c: cc                          	int3
14000266d: cc                          	int3
14000266e: cc                          	int3
14000266f: cc                          	int3
140002670: cc                          	int3
140002671: cc                          	int3
140002672: cc                          	int3
140002673: cc                          	int3
140002674: cc                          	int3
140002675: cc                          	int3
140002676: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140002680: 57                          	push	rdi
140002681: 56                          	push	rsi
140002682: 48 8b f9                    	mov	rdi, rcx
140002685: 48 8b f2                    	mov	rsi, rdx
140002688: 49 8b c8                    	mov	rcx, r8
14000268b: f3 a4                       	rep		movsb	byte ptr es:[rdi], byte ptr [rsi]
14000268d: 5e                          	pop	rsi
14000268e: 5f                          	pop	rdi
14000268f: c3                          	ret
140002690: cc                          	int3
140002691: cc                          	int3
140002692: cc                          	int3
140002693: cc                          	int3
140002694: cc                          	int3
140002695: cc                          	int3
140002696: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
1400026a0: 48 8b c1                    	mov	rax, rcx
1400026a3: 4c 8d 15 56 d9 ff ff        	lea	r10, [rip - 9898]       # 0x140000000
1400026aa: 49 83 f8 0f                 	cmp	r8, 15
1400026ae: 0f 87 0c 01 00 00           	ja	0x1400027c0 <.text+0x17c0>
1400026b4: 66 66 66 66 0f 1f 84 00 00 00 00 00 	nop	word ptr [rax + rax]
1400026c0: 47 8b 8c 82 b0 b0 01 00     	mov	r9d, dword ptr [r10 + 4*r8 + 110768]
1400026c8: 4d 03 ca                    	add	r9, r10
1400026cb: 41 ff e1                    	jmp	r9
1400026ce: c3                          	ret
1400026cf: 90                          	nop
1400026d0: 4c 8b 02                    	mov	r8, qword ptr [rdx]
1400026d3: 8b 4a 08                    	mov	ecx, dword ptr [rdx + 8]
1400026d6: 44 0f b7 4a 0c              	movzx	r9d, word ptr [rdx + 12]
1400026db: 44 0f b6 52 0e              	movzx	r10d, byte ptr [rdx + 14]
1400026e0: 4c 89 00                    	mov	qword ptr [rax], r8
1400026e3: 89 48 08                    	mov	dword ptr [rax + 8], ecx
1400026e6: 66 44 89 48 0c              	mov	word ptr [rax + 12], r9w
1400026eb: 44 88 50 0e                 	mov	byte ptr [rax + 14], r10b
1400026ef: c3                          	ret
1400026f0: 4c 8b 02                    	mov	r8, qword ptr [rdx]
1400026f3: 0f b7 4a 08                 	movzx	ecx, word ptr [rdx + 8]
1400026f7: 44 0f b6 4a 0a              	movzx	r9d, byte ptr [rdx + 10]
1400026fc: 4c 89 00                    	mov	qword ptr [rax], r8
1400026ff: 66 89 48 08                 	mov	word ptr [rax + 8], cx
140002703: 44 88 48 0a                 	mov	byte ptr [rax + 10], r9b
140002707: c3                          	ret
140002708: 0f b7 0a                    	movzx	ecx, word ptr [rdx]
14000270b: 66 89 08                    	mov	word ptr [rax], cx
14000270e: c3                          	ret
14000270f: 90                          	nop
140002710: 8b 0a                       	mov	ecx, dword ptr [rdx]
140002712: 44 0f b7 42 04              	movzx	r8d, word ptr [rdx + 4]
140002717: 44 0f b6 4a 06              	movzx	r9d, byte ptr [rdx + 6]
14000271c: 89 08                       	mov	dword ptr [rax], ecx
14000271e: 66 44 89 40 04              	mov	word ptr [rax + 4], r8w
140002723: 44 88 48 06                 	mov	byte ptr [rax + 6], r9b
140002727: c3                          	ret
140002728: 4c 8b 02                    	mov	r8, qword ptr [rdx]
14000272b: 8b 4a 08                    	mov	ecx, dword ptr [rdx + 8]
14000272e: 44 0f b7 4a 0c              	movzx	r9d, word ptr [rdx + 12]
140002733: 4c 89 00                    	mov	qword ptr [rax], r8
140002736: 89 48 08                    	mov	dword ptr [rax + 8], ecx
140002739: 66 44 89 48 0c              	mov	word ptr [rax + 12], r9w
14000273e: c3                          	ret
14000273f: 0f b7 0a                    	movzx	ecx, word ptr [rdx]
140002742: 44 0f b6 42 02              	movzx	r8d, byte ptr [rdx + 2]
140002747: 66 89 08                    	mov	word ptr [rax], cx
14000274a: 44 88 40 02                 	mov	byte ptr [rax + 2], r8b
14000274e: c3                          	ret
14000274f: 90                          	nop
140002750: 4c 8b 02                    	mov	r8, qword ptr [rdx]
140002753: 8b 4a 08                    	mov	ecx, dword ptr [rdx + 8]
140002756: 44 0f b6 4a 0c              	movzx	r9d, byte ptr [rdx + 12]
14000275b: 4c 89 00                    	mov	qword ptr [rax], r8
14000275e: 89 48 08                    	mov	dword ptr [rax + 8], ecx
140002761: 44 88 48 0c                 	mov	byte ptr [rax + 12], r9b
140002765: c3                          	ret
140002766: 4c 8b 02                    	mov	r8, qword ptr [rdx]
140002769: 0f b7 4a 08                 	movzx	ecx, word ptr [rdx + 8]
14000276d: 4c 89 00                    	mov	qword ptr [rax], r8
140002770: 66 89 48 08                 	mov	word ptr [rax + 8], cx
140002774: c3                          	ret
140002775: 4c 8b 02                    	mov	r8, qword ptr [rdx]
140002778: 0f b6 4a 08                 	movzx	ecx, byte ptr [rdx + 8]
14000277c: 4c 89 00                    	mov	qword ptr [rax], r8
14000277f: 88 48 08                    	mov	byte ptr [rax + 8], cl
140002782: c3                          	ret
140002783: 4c 8b 02                    	mov	r8, qword ptr [rdx]
140002786: 8b 4a 08                    	mov	ecx, dword ptr [rdx + 8]
140002789: 4c 89 00                    	mov	qword ptr [rax], r8
14000278c: 89 48 08                    	mov	dword ptr [rax + 8], ecx
14000278f: c3                          	ret
140002790: 8b 0a                       	mov	ecx, dword ptr [rdx]
140002792: 44 0f b7 42 04              	movzx	r8d, word ptr [rdx + 4]
140002797: 89 08                       	mov	dword ptr [rax], ecx
140002799: 66 44 89 40 04              	mov	word ptr [rax + 4], r8w
14000279e: c3                          	ret
14000279f: 8b 0a                       	mov	ecx, dword ptr [rdx]
1400027a1: 44 0f b6 42 04              	movzx	r8d, byte ptr [rdx + 4]
1400027a6: 89 08                       	mov	dword ptr [rax], ecx
1400027a8: 44 88 40 04                 	mov	byte ptr [rax + 4], r8b
1400027ac: c3                          	ret
1400027ad: 48 8b 0a                    	mov	rcx, qword ptr [rdx]
1400027b0: 48 89 08                    	mov	qword ptr [rax], rcx
1400027b3: c3                          	ret
1400027b4: 0f b6 0a                    	movzx	ecx, byte ptr [rdx]
1400027b7: 88 08                       	mov	byte ptr [rax], cl
1400027b9: c3                          	ret
1400027ba: 8b 0a                       	mov	ecx, dword ptr [rdx]
1400027bc: 89 08                       	mov	dword ptr [rax], ecx
1400027be: c3                          	ret
1400027bf: 90                          	nop
1400027c0: 49 83 f8 20                 	cmp	r8, 32
1400027c4: 77 17                       	ja	0x1400027dd <.text+0x17dd>
1400027c6: f3 0f 6f 0a                 	movdqu	xmm1, xmmword ptr [rdx]
1400027ca: f3 42 0f 6f 54 02 f0        	movdqu	xmm2, xmmword ptr [rdx + r8 - 16]
1400027d1: f3 0f 7f 09                 	movdqu	xmmword ptr [rcx], xmm1
1400027d5: f3 42 0f 7f 54 01 f0        	movdqu	xmmword ptr [rcx + r8 - 16], xmm2
1400027dc: c3                          	ret
1400027dd: 48 3b d1                    	cmp	rdx, rcx
1400027e0: 73 0e                       	jae	0x1400027f0 <.text+0x17f0>
1400027e2: 4e 8d 0c 02                 	lea	r9, [rdx + r8]
1400027e6: 49 3b c9                    	cmp	rcx, r9
1400027e9: 0f 82 41 04 00 00           	jb	0x140002c30 <.text+0x1c30>
1400027ef: 90                          	nop
1400027f0: 83 3d 11 48 01 00 03        	cmp	dword ptr [rip + 83985], 3 # 0x140017008
1400027f7: 0f 82 e3 02 00 00           	jb	0x140002ae0 <.text+0x1ae0>
1400027fd: 49 81 f8 00 20 00 00        	cmp	r8, 8192
140002804: 76 16                       	jbe	0x14000281c <.text+0x181c>
140002806: 49 81 f8 00 00 18 00        	cmp	r8, 1572864
14000280d: 77 0d                       	ja	0x14000281c <.text+0x181c>
14000280f: f6 05 5e 52 01 00 02        	test	byte ptr [rip + 86622], 2 # 0x140017a74
140002816: 0f 85 64 fe ff ff           	jne	0x140002680 <.text+0x1680>
14000281c: c5 fe 6f 02                 	vmovdqu	ymm0, ymmword ptr [rdx]
140002820: c4 a1 7e 6f 6c 02 e0        	vmovdqu	ymm5, ymmword ptr [rdx + r8 - 32]
140002827: 49 81 f8 00 01 00 00        	cmp	r8, 256
14000282e: 0f 86 c4 00 00 00           	jbe	0x1400028f8 <.text+0x18f8>
140002834: 4c 8b c9                    	mov	r9, rcx
140002837: 49 83 e1 1f                 	and	r9, 31
14000283b: 49 83 e9 20                 	sub	r9, 32
14000283f: 49 2b c9                    	sub	rcx, r9
140002842: 49 2b d1                    	sub	rdx, r9
140002845: 4d 03 c1                    	add	r8, r9
140002848: 49 81 f8 00 01 00 00        	cmp	r8, 256
14000284f: 0f 86 a3 00 00 00           	jbe	0x1400028f8 <.text+0x18f8>
140002855: 49 81 f8 00 00 18 00        	cmp	r8, 1572864
14000285c: 0f 87 3e 01 00 00           	ja	0x1400029a0 <.text+0x19a0>
140002862: 66 66 66 66 66 66 0f 1f 84 00 00 00 00 00   	nop	word ptr [rax + rax]
140002870: c5 fe 6f 0a                 	vmovdqu	ymm1, ymmword ptr [rdx]
140002874: c5 fe 6f 52 20              	vmovdqu	ymm2, ymmword ptr [rdx + 32]
140002879: c5 fe 6f 5a 40              	vmovdqu	ymm3, ymmword ptr [rdx + 64]
14000287e: c5 fe 6f 62 60              	vmovdqu	ymm4, ymmword ptr [rdx + 96]
140002883: c5 fd 7f 09                 	vmovdqa	ymmword ptr [rcx], ymm1
140002887: c5 fd 7f 51 20              	vmovdqa	ymmword ptr [rcx + 32], ymm2
14000288c: c5 fd 7f 59 40              	vmovdqa	ymmword ptr [rcx + 64], ymm3
140002891: c5 fd 7f 61 60              	vmovdqa	ymmword ptr [rcx + 96], ymm4
140002896: c5 fe 6f 8a 80 00 00 00     	vmovdqu	ymm1, ymmword ptr [rdx + 128]
14000289e: c5 fe 6f 92 a0 00 00 00     	vmovdqu	ymm2, ymmword ptr [rdx + 160]
1400028a6: c5 fe 6f 9a c0 00 00 00     	vmovdqu	ymm3, ymmword ptr [rdx + 192]
1400028ae: c5 fe 6f a2 e0 00 00 00     	vmovdqu	ymm4, ymmword ptr [rdx + 224]
1400028b6: c5 fd 7f 89 80 00 00 00     	vmovdqa	ymmword ptr [rcx + 128], ymm1
1400028be: c5 fd 7f 91 a0 00 00 00     	vmovdqa	ymmword ptr [rcx + 160], ymm2
1400028c6: c5 fd 7f 99 c0 00 00 00     	vmovdqa	ymmword ptr [rcx + 192], ymm3
1400028ce: c5 fd 7f a1 e0 00 00 00     	vmovdqa	ymmword ptr [rcx + 224], ymm4
1400028d6: 48 81 c1 00 01 00 00        	add	rcx, 256
1400028dd: 48 81 c2 00 01 00 00        	add	rdx, 256
1400028e4: 49 81 e8 00 01 00 00        	sub	r8, 256
1400028eb: 49 81 f8 00 01 00 00        	cmp	r8, 256
1400028f2: 0f 83 78 ff ff ff           	jae	0x140002870 <.text+0x1870>
1400028f8: 4d 8d 48 1f                 	lea	r9, [r8 + 31]
1400028fc: 49 83 e1 e0                 	and	r9, -32
140002900: 4d 8b d9                    	mov	r11, r9
140002903: 49 c1 eb 05                 	shr	r11, 5
140002907: 47 8b 9c 9a f0 b0 01 00     	mov	r11d, dword ptr [r10 + 4*r11 + 110832]
14000290f: 4d 03 da                    	add	r11, r10
140002912: 41 ff e3                    	jmp	r11
140002915: c4 a1 7e 6f 8c 0a 00 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 256]
14000291f: c4 a1 7e 7f 8c 09 00 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 256], ymm1
140002929: c4 a1 7e 6f 8c 0a 20 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 224]
140002933: c4 a1 7e 7f 8c 09 20 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 224], ymm1
14000293d: c4 a1 7e 6f 8c 0a 40 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 192]
140002947: c4 a1 7e 7f 8c 09 40 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 192], ymm1
140002951: c4 a1 7e 6f 8c 0a 60 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 160]
14000295b: c4 a1 7e 7f 8c 09 60 ff ff ff       	vmovdqu	ymmword ptr [rcx + r9 - 160], ymm1
140002965: c4 a1 7e 6f 4c 0a 80        	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 128]
14000296c: c4 a1 7e 7f 4c 09 80        	vmovdqu	ymmword ptr [rcx + r9 - 128], ymm1
140002973: c4 a1 7e 6f 4c 0a a0        	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 96]
14000297a: c4 a1 7e 7f 4c 09 a0        	vmovdqu	ymmword ptr [rcx + r9 - 96], ymm1
140002981: c4 a1 7e 6f 4c 0a c0        	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 64]
140002988: c4 a1 7e 7f 4c 09 c0        	vmovdqu	ymmword ptr [rcx + r9 - 64], ymm1
14000298f: c4 a1 7e 7f 6c 01 e0        	vmovdqu	ymmword ptr [rcx + r8 - 32], ymm5
140002996: c5 fe 7f 00                 	vmovdqu	ymmword ptr [rax], ymm0
14000299a: c5 f8 77                    	vzeroupper
14000299d: c3                          	ret
14000299e: 66 90                       	nop
1400029a0: c5 fe 6f 0a                 	vmovdqu	ymm1, ymmword ptr [rdx]
1400029a4: c5 fe 6f 52 20              	vmovdqu	ymm2, ymmword ptr [rdx + 32]
1400029a9: c5 fe 6f 5a 40              	vmovdqu	ymm3, ymmword ptr [rdx + 64]
1400029ae: c5 fe 6f 62 60              	vmovdqu	ymm4, ymmword ptr [rdx + 96]
1400029b3: c5 fd e7 09                 	vmovntdq	ymmword ptr [rcx], ymm1
1400029b7: c5 fd e7 51 20              	vmovntdq	ymmword ptr [rcx + 32], ymm2
1400029bc: c5 fd e7 59 40              	vmovntdq	ymmword ptr [rcx + 64], ymm3
1400029c1: c5 fd e7 61 60              	vmovntdq	ymmword ptr [rcx + 96], ymm4
1400029c6: c5 fe 6f 8a 80 00 00 00     	vmovdqu	ymm1, ymmword ptr [rdx + 128]
1400029ce: c5 fe 6f 92 a0 00 00 00     	vmovdqu	ymm2, ymmword ptr [rdx + 160]
1400029d6: c5 fe 6f 9a c0 00 00 00     	vmovdqu	ymm3, ymmword ptr [rdx + 192]
1400029de: c5 fe 6f a2 e0 00 00 00     	vmovdqu	ymm4, ymmword ptr [rdx + 224]
1400029e6: c5 fd e7 89 80 00 00 00     	vmovntdq	ymmword ptr [rcx + 128], ymm1
1400029ee: c5 fd e7 91 a0 00 00 00     	vmovntdq	ymmword ptr [rcx + 160], ymm2
1400029f6: c5 fd e7 99 c0 00 00 00     	vmovntdq	ymmword ptr [rcx + 192], ymm3
1400029fe: c5 fd e7 a1 e0 00 00 00     	vmovntdq	ymmword ptr [rcx + 224], ymm4
140002a06: 48 81 c1 00 01 00 00        	add	rcx, 256
140002a0d: 48 81 c2 00 01 00 00        	add	rdx, 256
140002a14: 49 81 e8 00 01 00 00        	sub	r8, 256
140002a1b: 49 81 f8 00 01 00 00        	cmp	r8, 256
140002a22: 0f 83 78 ff ff ff           	jae	0x1400029a0 <.text+0x19a0>
140002a28: 4d 8d 48 1f                 	lea	r9, [r8 + 31]
140002a2c: 49 83 e1 e0                 	and	r9, -32
140002a30: 4d 8b d9                    	mov	r11, r9
140002a33: 49 c1 eb 05                 	shr	r11, 5
140002a37: 47 8b 9c 9a 14 b1 01 00     	mov	r11d, dword ptr [r10 + 4*r11 + 110868]
140002a3f: 4d 03 da                    	add	r11, r10
140002a42: 41 ff e3                    	jmp	r11
140002a45: c4 a1 7e 6f 8c 0a 00 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 256]
140002a4f: c4 a1 7d e7 8c 09 00 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 256], ymm1
140002a59: c4 a1 7e 6f 8c 0a 20 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 224]
140002a63: c4 a1 7d e7 8c 09 20 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 224], ymm1
140002a6d: c4 a1 7e 6f 8c 0a 40 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 192]
140002a77: c4 a1 7d e7 8c 09 40 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 192], ymm1
140002a81: c4 a1 7e 6f 8c 0a 60 ff ff ff       	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 160]
140002a8b: c4 a1 7d e7 8c 09 60 ff ff ff       	vmovntdq	ymmword ptr [rcx + r9 - 160], ymm1
140002a95: c4 a1 7e 6f 4c 0a 80        	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 128]
140002a9c: c4 a1 7d e7 4c 09 80        	vmovntdq	ymmword ptr [rcx + r9 - 128], ymm1
140002aa3: c4 a1 7e 6f 4c 0a a0        	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 96]
140002aaa: c4 a1 7d e7 4c 09 a0        	vmovntdq	ymmword ptr [rcx + r9 - 96], ymm1
140002ab1: c4 a1 7e 6f 4c 0a c0        	vmovdqu	ymm1, ymmword ptr [rdx + r9 - 64]
140002ab8: c4 a1 7d e7 4c 09 c0        	vmovntdq	ymmword ptr [rcx + r9 - 64], ymm1
140002abf: c4 a1 7e 7f 6c 01 e0        	vmovdqu	ymmword ptr [rcx + r8 - 32], ymm5
140002ac6: c5 fe 7f 00                 	vmovdqu	ymmword ptr [rax], ymm0
140002aca: 0f ae f8                    	sfence
140002acd: c5 f8 77                    	vzeroupper
140002ad0: c3                          	ret
140002ad1: 66 66 66 66 66 66 66 0f 1f 84 00 00 00 00 00	nop	word ptr [rax + rax]
140002ae0: 49 81 f8 00 08 00 00        	cmp	r8, 2048
140002ae7: 76 0d                       	jbe	0x140002af6 <.text+0x1af6>
140002ae9: f6 05 84 4f 01 00 02        	test	byte ptr [rip + 85892], 2 # 0x140017a74
140002af0: 0f 85 8a fb ff ff           	jne	0x140002680 <.text+0x1680>
140002af6: f3 0f 6f 02                 	movdqu	xmm0, xmmword ptr [rdx]
140002afa: f3 42 0f 6f 6c 02 f0        	movdqu	xmm5, xmmword ptr [rdx + r8 - 16]
140002b01: 49 81 f8 80 00 00 00        	cmp	r8, 128
140002b08: 0f 86 8e 00 00 00           	jbe	0x140002b9c <.text+0x1b9c>
140002b0e: 4c 8b c9                    	mov	r9, rcx
140002b11: 49 83 e1 0f                 	and	r9, 15
140002b15: 49 83 e9 10                 	sub	r9, 16
140002b19: 49 2b c9                    	sub	rcx, r9
140002b1c: 49 2b d1                    	sub	rdx, r9
140002b1f: 4d 03 c1                    	add	r8, r9
140002b22: 49 81 f8 80 00 00 00        	cmp	r8, 128
140002b29: 76 71                       	jbe	0x140002b9c <.text+0x1b9c>
140002b2b: 0f 1f 44 00 00              	nop	dword ptr [rax + rax]
140002b30: f3 0f 6f 0a                 	movdqu	xmm1, xmmword ptr [rdx]
140002b34: f3 0f 6f 52 10              	movdqu	xmm2, xmmword ptr [rdx + 16]
140002b39: f3 0f 6f 5a 20              	movdqu	xmm3, xmmword ptr [rdx + 32]
140002b3e: f3 0f 6f 62 30              	movdqu	xmm4, xmmword ptr [rdx + 48]
140002b43: 66 0f 7f 09                 	movdqa	xmmword ptr [rcx], xmm1
140002b47: 66 0f 7f 51 10              	movdqa	xmmword ptr [rcx + 16], xmm2
140002b4c: 66 0f 7f 59 20              	movdqa	xmmword ptr [rcx + 32], xmm3
140002b51: 66 0f 7f 61 30              	movdqa	xmmword ptr [rcx + 48], xmm4
140002b56: f3 0f 6f 4a 40              	movdqu	xmm1, xmmword ptr [rdx + 64]
140002b5b: f3 0f 6f 52 50              	movdqu	xmm2, xmmword ptr [rdx + 80]
140002b60: f3 0f 6f 5a 60              	movdqu	xmm3, xmmword ptr [rdx + 96]
140002b65: f3 0f 6f 62 70              	movdqu	xmm4, xmmword ptr [rdx + 112]
140002b6a: 66 0f 7f 49 40              	movdqa	xmmword ptr [rcx + 64], xmm1
140002b6f: 66 0f 7f 51 50              	movdqa	xmmword ptr [rcx + 80], xmm2
140002b74: 66 0f 7f 59 60              	movdqa	xmmword ptr [rcx + 96], xmm3
140002b79: 66 0f 7f 61 70              	movdqa	xmmword ptr [rcx + 112], xmm4
140002b7e: 48 81 c1 80 00 00 00        	add	rcx, 128
140002b85: 48 81 c2 80 00 00 00        	add	rdx, 128
140002b8c: 49 81 e8 80 00 00 00        	sub	r8, 128
140002b93: 49 81 f8 80 00 00 00        	cmp	r8, 128
140002b9a: 73 94                       	jae	0x140002b30 <.text+0x1b30>
140002b9c: 4d 8d 48 0f                 	lea	r9, [r8 + 15]
140002ba0: 49 83 e1 f0                 	and	r9, -16
140002ba4: 4d 8b d9                    	mov	r11, r9
140002ba7: 49 c1 eb 04                 	shr	r11, 4
140002bab: 47 8b 9c 9a 38 b1 01 00     	mov	r11d, dword ptr [r10 + 4*r11 + 110904]
140002bb3: 4d 03 da                    	add	r11, r10
140002bb6: 41 ff e3                    	jmp	r11
140002bb9: f3 42 0f 6f 4c 0a 80        	movdqu	xmm1, xmmword ptr [rdx + r9 - 128]
140002bc0: f3 42 0f 7f 4c 09 80        	movdqu	xmmword ptr [rcx + r9 - 128], xmm1
140002bc7: f3 42 0f 6f 4c 0a 90        	movdqu	xmm1, xmmword ptr [rdx + r9 - 112]
140002bce: f3 42 0f 7f 4c 09 90        	movdqu	xmmword ptr [rcx + r9 - 112], xmm1
140002bd5: f3 42 0f 6f 4c 0a a0        	movdqu	xmm1, xmmword ptr [rdx + r9 - 96]
140002bdc: f3 42 0f 7f 4c 09 a0        	movdqu	xmmword ptr [rcx + r9 - 96], xmm1
140002be3: f3 42 0f 6f 4c 0a b0        	movdqu	xmm1, xmmword ptr [rdx + r9 - 80]
140002bea: f3 42 0f 7f 4c 09 b0        	movdqu	xmmword ptr [rcx + r9 - 80], xmm1
140002bf1: f3 42 0f 6f 4c 0a c0        	movdqu	xmm1, xmmword ptr [rdx + r9 - 64]
140002bf8: f3 42 0f 7f 4c 09 c0        	movdqu	xmmword ptr [rcx + r9 - 64], xmm1
140002bff: f3 42 0f 6f 4c 0a d0        	movdqu	xmm1, xmmword ptr [rdx + r9 - 48]
140002c06: f3 42 0f 7f 4c 09 d0        	movdqu	xmmword ptr [rcx + r9 - 48], xmm1
140002c0d: f3 42 0f 6f 4c 0a e0        	movdqu	xmm1, xmmword ptr [rdx + r9 - 32]
140002c14: f3 42 0f 7f 4c 09 e0        	movdqu	xmmword ptr [rcx + r9 - 32], xmm1
140002c1b: f3 42 0f 7f 6c 01 f0        	movdqu	xmmword ptr [rcx + r8 - 16], xmm5
140002c22: f3 0f 7f 00                 	movdqu	xmmword ptr [rax], xmm0
140002c26: c3                          	ret
140002c27: 66 0f 1f 84 00 00 00 00 00  	nop	word ptr [rax + rax]
140002c30: 4c 8b d9                    	mov	r11, rcx
140002c33: 4c 8b d2                    	mov	r10, rdx
140002c36: 48 2b d1                    	sub	rdx, rcx
140002c39: 49 03 c8                    	add	rcx, r8
140002c3c: 0f 10 44 11 f0              	movups	xmm0, xmmword ptr [rcx + rdx - 16]
140002c41: 48 83 e9 10                 	sub	rcx, 16
140002c45: 49 83 e8 10                 	sub	r8, 16
140002c49: f6 c1 0f                    	test	cl, 15
140002c4c: 74 17                       	je	0x140002c65 <.text+0x1c65>
140002c4e: 48 8b c1                    	mov	rax, rcx
140002c51: 48 83 e1 f0                 	and	rcx, -16
140002c55: 0f 10 c8                    	movups	xmm1, xmm0
140002c58: 0f 10 04 11                 	movups	xmm0, xmmword ptr [rcx + rdx]
140002c5c: 0f 11 08                    	movups	xmmword ptr [rax], xmm1
140002c5f: 4c 8b c1                    	mov	r8, rcx
140002c62: 4d 2b c3                    	sub	r8, r11
140002c65: 4d 8b c8                    	mov	r9, r8
140002c68: 49 c1 e9 07                 	shr	r9, 7
140002c6c: 74 6f                       	je	0x140002cdd <.text+0x1cdd>
140002c6e: 0f 29 01                    	movaps	xmmword ptr [rcx], xmm0
140002c71: eb 14                       	jmp	0x140002c87 <.text+0x1c87>
140002c73: 66 66 66 66 66 0f 1f 84 00 00 00 00 00      	nop	word ptr [rax + rax]
140002c80: 0f 29 41 10                 	movaps	xmmword ptr [rcx + 16], xmm0
140002c84: 0f 29 09                    	movaps	xmmword ptr [rcx], xmm1
140002c87: 0f 10 44 11 f0              	movups	xmm0, xmmword ptr [rcx + rdx - 16]
140002c8c: 0f 10 4c 11 e0              	movups	xmm1, xmmword ptr [rcx + rdx - 32]
140002c91: 48 81 e9 80 00 00 00        	sub	rcx, 128
140002c98: 0f 29 41 70                 	movaps	xmmword ptr [rcx + 112], xmm0
140002c9c: 0f 29 49 60                 	movaps	xmmword ptr [rcx + 96], xmm1
140002ca0: 0f 10 44 11 50              	movups	xmm0, xmmword ptr [rcx + rdx + 80]
140002ca5: 0f 10 4c 11 40              	movups	xmm1, xmmword ptr [rcx + rdx + 64]
140002caa: 49 ff c9                    	dec	r9
140002cad: 0f 29 41 50                 	movaps	xmmword ptr [rcx + 80], xmm0
140002cb1: 0f 29 49 40                 	movaps	xmmword ptr [rcx + 64], xmm1
140002cb5: 0f 10 44 11 30              	movups	xmm0, xmmword ptr [rcx + rdx + 48]
140002cba: 0f 10 4c 11 20              	movups	xmm1, xmmword ptr [rcx + rdx + 32]
140002cbf: 0f 29 41 30                 	movaps	xmmword ptr [rcx + 48], xmm0
140002cc3: 0f 29 49 20                 	movaps	xmmword ptr [rcx + 32], xmm1
140002cc7: 0f 10 44 11 10              	movups	xmm0, xmmword ptr [rcx + rdx + 16]
140002ccc: 0f 10 0c 11                 	movups	xmm1, xmmword ptr [rcx + rdx]
140002cd0: 75 ae                       	jne	0x140002c80 <.text+0x1c80>
140002cd2: 0f 29 41 10                 	movaps	xmmword ptr [rcx + 16], xmm0
140002cd6: 49 83 e0 7f                 	and	r8, 127
140002cda: 0f 28 c1                    	movaps	xmm0, xmm1
140002cdd: 4d 8b c8                    	mov	r9, r8
140002ce0: 49 c1 e9 04                 	shr	r9, 4
140002ce4: 74 1a                       	je	0x140002d00 <.text+0x1d00>
140002ce6: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140002cf0: 0f 11 01                    	movups	xmmword ptr [rcx], xmm0
140002cf3: 48 83 e9 10                 	sub	rcx, 16
140002cf7: 0f 10 04 11                 	movups	xmm0, xmmword ptr [rcx + rdx]
140002cfb: 49 ff c9                    	dec	r9
140002cfe: 75 f0                       	jne	0x140002cf0 <.text+0x1cf0>
140002d00: 49 83 e0 0f                 	and	r8, 15
140002d04: 74 08                       	je	0x140002d0e <.text+0x1d0e>
140002d06: 41 0f 10 0a                 	movups	xmm1, xmmword ptr [r10]
140002d0a: 41 0f 11 0b                 	movups	xmmword ptr [r11], xmm1
140002d0e: 0f 11 01                    	movups	xmmword ptr [rcx], xmm0
140002d11: 49 8b c3                    	mov	rax, r11
140002d14: c3                          	ret
140002d15: cc                          	int3
140002d16: cc                          	int3
140002d17: cc                          	int3
140002d18: cc                          	int3
140002d19: cc                          	int3
140002d1a: cc                          	int3
140002d1b: cc                          	int3
140002d1c: cc                          	int3
140002d1d: cc                          	int3
140002d1e: cc                          	int3
140002d1f: cc                          	int3
140002d20: cc                          	int3
140002d21: cc                          	int3
140002d22: cc                          	int3
140002d23: cc                          	int3
140002d24: cc                          	int3
140002d25: cc                          	int3
140002d26: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140002d30: 48 83 ec 28                 	sub	rsp, 40
140002d34: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
140002d39: 48 89 54 24 38              	mov	qword ptr [rsp + 56], rdx
140002d3e: 44 89 44 24 40              	mov	dword ptr [rsp + 64], r8d
140002d43: 48 8b 12                    	mov	rdx, qword ptr [rdx]
140002d46: 48 8b c1                    	mov	rax, rcx
140002d49: e8 e2 f3 ff ff              	call	0x140002130 <.text+0x1130>
140002d4e: ff d0                       	call	rax
140002d50: e8 0b f4 ff ff              	call	0x140002160 <.text+0x1160>
140002d55: 48 8b c8                    	mov	rcx, rax
140002d58: 48 8b 54 24 38              	mov	rdx, qword ptr [rsp + 56]
140002d5d: 48 8b 12                    	mov	rdx, qword ptr [rdx]
140002d60: 41 b8 02 00 00 00           	mov	r8d, 2
140002d66: e8 c5 f3 ff ff              	call	0x140002130 <.text+0x1130>
140002d6b: 48 83 c4 28                 	add	rsp, 40
140002d6f: c3                          	ret
140002d70: cc                          	int3
140002d71: cc                          	int3
140002d72: cc                          	int3
140002d73: cc                          	int3
140002d74: cc                          	int3
140002d75: cc                          	int3
140002d76: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
140002d80: 48 83 ec 28                 	sub	rsp, 40
140002d84: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
140002d89: 48 89 54 24 38              	mov	qword ptr [rsp + 56], rdx
140002d8e: 44 89 44 24 40              	mov	dword ptr [rsp + 64], r8d
140002d93: 48 8b 12                    	mov	rdx, qword ptr [rdx]
140002d96: 48 8b c1                    	mov	rax, rcx
140002d99: e8 92 f3 ff ff              	call	0x140002130 <.text+0x1130>
140002d9e: ff d0                       	call	rax
140002da0: e8 bb f3 ff ff              	call	0x140002160 <.text+0x1160>
140002da5: 48 83 c4 28                 	add	rsp, 40
140002da9: c3                          	ret
140002daa: cc                          	int3
140002dab: cc                          	int3
140002dac: cc                          	int3
140002dad: cc                          	int3
140002dae: cc                          	int3
140002daf: cc                          	int3
140002db0: 48 83 ec 28                 	sub	rsp, 40
140002db4: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
140002db9: 48 89 54 24 38              	mov	qword ptr [rsp + 56], rdx
140002dbe: 48 8b 54 24 38              	mov	rdx, qword ptr [rsp + 56]
140002dc3: 48 8b 12                    	mov	rdx, qword ptr [rdx]
140002dc6: 41 b8 02 00 00 00           	mov	r8d, 2
140002dcc: e8 5f f3 ff ff              	call	0x140002130 <.text+0x1130>
140002dd1: 48 83 c4 28                 	add	rsp, 40
140002dd5: c3                          	ret
140002dd6: cc                          	int3
140002dd7: cc                          	int3
140002dd8: cc                          	int3
140002dd9: cc                          	int3
140002dda: cc                          	int3
140002ddb: cc                          	int3
140002ddc: 0f 1f 40 00                 	nop	dword ptr [rax]
140002de0: 48 83 ec 28                 	sub	rsp, 40
140002de4: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
140002de9: 48 89 54 24 38              	mov	qword ptr [rsp + 56], rdx
140002dee: 4c 89 44 24 40              	mov	qword ptr [rsp + 64], r8
140002df3: 44 89 4c 24 48              	mov	dword ptr [rsp + 72], r9d
140002df8: 45 8b c1                    	mov	r8d, r9d
140002dfb: 48 8b c1                    	mov	rax, rcx
140002dfe: e8 2d f3 ff ff              	call	0x140002130 <.text+0x1130>
140002e03: 48 8b 4c 24 40              	mov	rcx, qword ptr [rsp + 64]
140002e08: ff d0                       	call	rax
140002e0a: e8 51 f3 ff ff              	call	0x140002160 <.text+0x1160>
140002e0f: 48 8b c8                    	mov	rcx, rax
140002e12: 48 8b 54 24 38              	mov	rdx, qword ptr [rsp + 56]
140002e17: 41 b8 02 00 00 00           	mov	r8d, 2
140002e1d: e8 0e f3 ff ff              	call	0x140002130 <.text+0x1130>
140002e22: 48 83 c4 28                 	add	rsp, 40
140002e26: c3                          	ret
140002e27: cc                          	int3
140002e28: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140002e2d: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140002e32: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140002e37: 57                          	push	rdi
140002e38: 48 83 ec 20                 	sub	rsp, 32
140002e3c: 48 8b f2                    	mov	rsi, rdx
140002e3f: 8b f9                       	mov	edi, ecx
140002e41: e8 3a 1b 00 00              	call	0x140004980 <.text+0x3980>
140002e46: 45 33 c9                    	xor	r9d, r9d
140002e49: 48 8b d8                    	mov	rbx, rax
140002e4c: 48 85 c0                    	test	rax, rax
140002e4f: 0f 84 3e 01 00 00           	je	0x140002f93 <.text+0x1f93>
140002e55: 48 8b 08                    	mov	rcx, qword ptr [rax]
140002e58: 48 8b c1                    	mov	rax, rcx
140002e5b: 4c 8d 81 c0 00 00 00        	lea	r8, [rcx + 192]
140002e62: 49 3b c8                    	cmp	rcx, r8
140002e65: 74 0d                       	je	0x140002e74 <.text+0x1e74>
140002e67: 39 38                       	cmp	dword ptr [rax], edi
140002e69: 74 0c                       	je	0x140002e77 <.text+0x1e77>
140002e6b: 48 83 c0 10                 	add	rax, 16
140002e6f: 49 3b c0                    	cmp	rax, r8
140002e72: 75 f3                       	jne	0x140002e67 <.text+0x1e67>
140002e74: 49 8b c1                    	mov	rax, r9
140002e77: 48 85 c0                    	test	rax, rax
140002e7a: 0f 84 13 01 00 00           	je	0x140002f93 <.text+0x1f93>
140002e80: 4c 8b 40 08                 	mov	r8, qword ptr [rax + 8]
140002e84: 4d 85 c0                    	test	r8, r8
140002e87: 0f 84 06 01 00 00           	je	0x140002f93 <.text+0x1f93>
140002e8d: 49 83 f8 05                 	cmp	r8, 5
140002e91: 75 0d                       	jne	0x140002ea0 <.text+0x1ea0>
140002e93: 4c 89 48 08                 	mov	qword ptr [rax + 8], r9
140002e97: 41 8d 40 fc                 	lea	eax, [r8 - 4]
140002e9b: e9 f5 00 00 00              	jmp	0x140002f95 <.text+0x1f95>
140002ea0: 49 83 f8 01                 	cmp	r8, 1
140002ea4: 75 08                       	jne	0x140002eae <.text+0x1eae>
140002ea6: 83 c8 ff                    	or	eax, -1
140002ea9: e9 e7 00 00 00              	jmp	0x140002f95 <.text+0x1f95>
140002eae: 48 8b 6b 08                 	mov	rbp, qword ptr [rbx + 8]
140002eb2: 48 89 73 08                 	mov	qword ptr [rbx + 8], rsi
140002eb6: 83 78 04 08                 	cmp	dword ptr [rax + 4], 8
140002eba: 0f 85 ba 00 00 00           	jne	0x140002f7a <.text+0x1f7a>
140002ec0: 48 83 c1 30                 	add	rcx, 48
140002ec4: 48 8d 91 90 00 00 00        	lea	rdx, [rcx + 144]
140002ecb: eb 08                       	jmp	0x140002ed5 <.text+0x1ed5>
140002ecd: 4c 89 49 08                 	mov	qword ptr [rcx + 8], r9
140002ed1: 48 83 c1 10                 	add	rcx, 16
140002ed5: 48 3b ca                    	cmp	rcx, rdx
140002ed8: 75 f3                       	jne	0x140002ecd <.text+0x1ecd>
140002eda: 81 38 8d 00 00 c0           	cmp	dword ptr [rax], 3221225613
140002ee0: 8b 7b 10                    	mov	edi, dword ptr [rbx + 16]
140002ee3: 74 7a                       	je	0x140002f5f <.text+0x1f5f>
140002ee5: 81 38 8e 00 00 c0           	cmp	dword ptr [rax], 3221225614
140002eeb: 74 6b                       	je	0x140002f58 <.text+0x1f58>
140002eed: 81 38 8f 00 00 c0           	cmp	dword ptr [rax], 3221225615
140002ef3: 74 5c                       	je	0x140002f51 <.text+0x1f51>
140002ef5: 81 38 90 00 00 c0           	cmp	dword ptr [rax], 3221225616
140002efb: 74 4d                       	je	0x140002f4a <.text+0x1f4a>
140002efd: 81 38 91 00 00 c0           	cmp	dword ptr [rax], 3221225617
140002f03: 74 3e                       	je	0x140002f43 <.text+0x1f43>
140002f05: 81 38 92 00 00 c0           	cmp	dword ptr [rax], 3221225618
140002f0b: 74 2f                       	je	0x140002f3c <.text+0x1f3c>
140002f0d: 81 38 93 00 00 c0           	cmp	dword ptr [rax], 3221225619
140002f13: 74 20                       	je	0x140002f35 <.text+0x1f35>
140002f15: 81 38 b4 02 00 c0           	cmp	dword ptr [rax], 3221226164
140002f1b: 74 11                       	je	0x140002f2e <.text+0x1f2e>
140002f1d: 81 38 b5 02 00 c0           	cmp	dword ptr [rax], 3221226165
140002f23: 8b d7                       	mov	edx, edi
140002f25: 75 40                       	jne	0x140002f67 <.text+0x1f67>
140002f27: ba 8d 00 00 00              	mov	edx, 141
140002f2c: eb 36                       	jmp	0x140002f64 <.text+0x1f64>
140002f2e: ba 8e 00 00 00              	mov	edx, 142
140002f33: eb 2f                       	jmp	0x140002f64 <.text+0x1f64>
140002f35: ba 85 00 00 00              	mov	edx, 133
140002f3a: eb 28                       	jmp	0x140002f64 <.text+0x1f64>
140002f3c: ba 8a 00 00 00              	mov	edx, 138
140002f41: eb 21                       	jmp	0x140002f64 <.text+0x1f64>
140002f43: ba 84 00 00 00              	mov	edx, 132
140002f48: eb 1a                       	jmp	0x140002f64 <.text+0x1f64>
140002f4a: ba 81 00 00 00              	mov	edx, 129
140002f4f: eb 13                       	jmp	0x140002f64 <.text+0x1f64>
140002f51: ba 86 00 00 00              	mov	edx, 134
140002f56: eb 0c                       	jmp	0x140002f64 <.text+0x1f64>
140002f58: ba 83 00 00 00              	mov	edx, 131
140002f5d: eb 05                       	jmp	0x140002f64 <.text+0x1f64>
140002f5f: ba 82 00 00 00              	mov	edx, 130
140002f64: 89 53 10                    	mov	dword ptr [rbx + 16], edx
140002f67: b9 08 00 00 00              	mov	ecx, 8
140002f6c: 49 8b c0                    	mov	rax, r8
140002f6f: ff 15 bb b2 00 00           	call	qword ptr [rip + 45755] # 0x14000e230
140002f75: 89 7b 10                    	mov	dword ptr [rbx + 16], edi
140002f78: eb 10                       	jmp	0x140002f8a <.text+0x1f8a>
140002f7a: 8b 48 04                    	mov	ecx, dword ptr [rax + 4]
140002f7d: 4c 89 48 08                 	mov	qword ptr [rax + 8], r9
140002f81: 49 8b c0                    	mov	rax, r8
140002f84: ff 15 a6 b2 00 00           	call	qword ptr [rip + 45734] # 0x14000e230
140002f8a: 48 89 6b 08                 	mov	qword ptr [rbx + 8], rbp
140002f8e: e9 13 ff ff ff              	jmp	0x140002ea6 <.text+0x1ea6>
140002f93: 33 c0                       	xor	eax, eax
140002f95: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140002f9a: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
140002f9f: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
140002fa4: 48 83 c4 20                 	add	rsp, 32
140002fa8: 5f                          	pop	rdi
140002fa9: c3                          	ret
140002faa: cc                          	int3
140002fab: cc                          	int3
140002fac: 8b 05 2e 4c 01 00           	mov	eax, dword ptr [rip + 85038] # 0x140017be0
140002fb2: c3                          	ret
140002fb3: cc                          	int3
140002fb4: 89 0d 26 4c 01 00           	mov	dword ptr [rip + 85030], ecx # 0x140017be0
140002fba: c3                          	ret
140002fbb: cc                          	int3
140002fbc: 48 8b 15 65 40 01 00        	mov	rdx, qword ptr [rip + 82021] # 0x140017028
140002fc3: 8b ca                       	mov	ecx, edx
140002fc5: 48 33 15 1c 4c 01 00        	xor	rdx, qword ptr [rip + 85020] # 0x140017be8
140002fcc: 83 e1 3f                    	and	ecx, 63
140002fcf: 48 d3 ca                    	ror	rdx, cl
140002fd2: 48 85 d2                    	test	rdx, rdx
140002fd5: 0f 95 c0                    	setne	al
140002fd8: c3                          	ret
140002fd9: cc                          	int3
140002fda: cc                          	int3
140002fdb: cc                          	int3
140002fdc: 48 89 0d 05 4c 01 00        	mov	qword ptr [rip + 84997], rcx # 0x140017be8
140002fe3: c3                          	ret
140002fe4: 48 8b 15 3d 40 01 00        	mov	rdx, qword ptr [rip + 81981] # 0x140017028
140002feb: 4c 8b c1                    	mov	r8, rcx
140002fee: 8b ca                       	mov	ecx, edx
140002ff0: 48 33 15 f1 4b 01 00        	xor	rdx, qword ptr [rip + 84977] # 0x140017be8
140002ff7: 83 e1 3f                    	and	ecx, 63
140002ffa: 48 d3 ca                    	ror	rdx, cl
140002ffd: 48 85 d2                    	test	rdx, rdx
140003000: 75 03                       	jne	0x140003005 <.text+0x2005>
140003002: 33 c0                       	xor	eax, eax
140003004: c3                          	ret
140003005: 49 8b c8                    	mov	rcx, r8
140003008: 48 8b c2                    	mov	rax, rdx
14000300b: 48 ff 25 1e b2 00 00        	jmp	qword ptr [rip + 45598] # 0x14000e230
140003012: cc                          	int3
140003013: cc                          	int3
140003014: 4c 8b 05 0d 40 01 00        	mov	r8, qword ptr [rip + 81933] # 0x140017028
14000301b: 4c 8b c9                    	mov	r9, rcx
14000301e: 41 8b d0                    	mov	edx, r8d
140003021: b9 40 00 00 00              	mov	ecx, 64
140003026: 83 e2 3f                    	and	edx, 63
140003029: 2b ca                       	sub	ecx, edx
14000302b: 49 d3 c9                    	ror	r9, cl
14000302e: 4d 33 c8                    	xor	r9, r8
140003031: 4c 89 0d b0 4b 01 00        	mov	qword ptr [rip + 84912], r9 # 0x140017be8
140003038: c3                          	ret
140003039: cc                          	int3
14000303a: cc                          	int3
14000303b: cc                          	int3
14000303c: 48 8b c4                    	mov	rax, rsp
14000303f: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
140003043: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
140003047: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
14000304b: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
14000304f: 41 54                       	push	r12
140003051: 41 56                       	push	r14
140003053: 41 57                       	push	r15
140003055: 48 83 ec 20                 	sub	rsp, 32
140003059: 4c 8b 7c 24 60              	mov	r15, qword ptr [rsp + 96]
14000305e: 4d 8b e1                    	mov	r12, r9
140003061: 49 8b d8                    	mov	rbx, r8
140003064: 4c 8b f2                    	mov	r14, rdx
140003067: 48 8b f9                    	mov	rdi, rcx
14000306a: 49 83 27 00                 	and	qword ptr [r15], 0
14000306e: 49 c7 01 01 00 00 00        	mov	qword ptr [r9], 1
140003075: 48 85 d2                    	test	rdx, rdx
140003078: 74 07                       	je	0x140003081 <.text+0x2081>
14000307a: 48 89 1a                    	mov	qword ptr [rdx], rbx
14000307d: 49 83 c6 08                 	add	r14, 8
140003081: 40 32 ed                    	xor	bpl, bpl
140003084: 80 3f 22                    	cmp	byte ptr [rdi], 34
140003087: 75 0f                       	jne	0x140003098 <.text+0x2098>
140003089: 40 84 ed                    	test	bpl, bpl
14000308c: 40 b6 22                    	mov	sil, 34
14000308f: 40 0f 94 c5                 	sete	bpl
140003093: 48 ff c7                    	inc	rdi
140003096: eb 37                       	jmp	0x1400030cf <.text+0x20cf>
140003098: 49 ff 07                    	inc	qword ptr [r15]
14000309b: 48 85 db                    	test	rbx, rbx
14000309e: 74 07                       	je	0x1400030a7 <.text+0x20a7>
1400030a0: 8a 07                       	mov	al, byte ptr [rdi]
1400030a2: 88 03                       	mov	byte ptr [rbx], al
1400030a4: 48 ff c3                    	inc	rbx
1400030a7: 0f be 37                    	movsx	esi, byte ptr [rdi]
1400030aa: 48 ff c7                    	inc	rdi
1400030ad: 8b ce                       	mov	ecx, esi
1400030af: e8 d4 34 00 00              	call	0x140006588 <.text+0x5588>
1400030b4: 85 c0                       	test	eax, eax
1400030b6: 74 12                       	je	0x1400030ca <.text+0x20ca>
1400030b8: 49 ff 07                    	inc	qword ptr [r15]
1400030bb: 48 85 db                    	test	rbx, rbx
1400030be: 74 07                       	je	0x1400030c7 <.text+0x20c7>
1400030c0: 8a 07                       	mov	al, byte ptr [rdi]
1400030c2: 88 03                       	mov	byte ptr [rbx], al
1400030c4: 48 ff c3                    	inc	rbx
1400030c7: 48 ff c7                    	inc	rdi
1400030ca: 40 84 f6                    	test	sil, sil
1400030cd: 74 1c                       	je	0x1400030eb <.text+0x20eb>
1400030cf: 40 84 ed                    	test	bpl, bpl
1400030d2: 75 b0                       	jne	0x140003084 <.text+0x2084>
1400030d4: 40 80 fe 20                 	cmp	sil, 32
1400030d8: 74 06                       	je	0x1400030e0 <.text+0x20e0>
1400030da: 40 80 fe 09                 	cmp	sil, 9
1400030de: 75 a4                       	jne	0x140003084 <.text+0x2084>
1400030e0: 48 85 db                    	test	rbx, rbx
1400030e3: 74 09                       	je	0x1400030ee <.text+0x20ee>
1400030e5: c6 43 ff 00                 	mov	byte ptr [rbx - 1], 0
1400030e9: eb 03                       	jmp	0x1400030ee <.text+0x20ee>
1400030eb: 48 ff cf                    	dec	rdi
1400030ee: 40 32 f6                    	xor	sil, sil
1400030f1: 8a 07                       	mov	al, byte ptr [rdi]
1400030f3: 84 c0                       	test	al, al
1400030f5: 0f 84 d4 00 00 00           	je	0x1400031cf <.text+0x21cf>
1400030fb: 3c 20                       	cmp	al, 32
1400030fd: 74 04                       	je	0x140003103 <.text+0x2103>
1400030ff: 3c 09                       	cmp	al, 9
140003101: 75 07                       	jne	0x14000310a <.text+0x210a>
140003103: 48 ff c7                    	inc	rdi
140003106: 8a 07                       	mov	al, byte ptr [rdi]
140003108: eb f1                       	jmp	0x1400030fb <.text+0x20fb>
14000310a: 84 c0                       	test	al, al
14000310c: 0f 84 bd 00 00 00           	je	0x1400031cf <.text+0x21cf>
140003112: 4d 85 f6                    	test	r14, r14
140003115: 74 07                       	je	0x14000311e <.text+0x211e>
140003117: 49 89 1e                    	mov	qword ptr [r14], rbx
14000311a: 49 83 c6 08                 	add	r14, 8
14000311e: 49 ff 04 24                 	inc	qword ptr [r12]
140003122: ba 01 00 00 00              	mov	edx, 1
140003127: 33 c0                       	xor	eax, eax
140003129: eb 05                       	jmp	0x140003130 <.text+0x2130>
14000312b: 48 ff c7                    	inc	rdi
14000312e: ff c0                       	inc	eax
140003130: 8a 0f                       	mov	cl, byte ptr [rdi]
140003132: 80 f9 5c                    	cmp	cl, 92
140003135: 74 f4                       	je	0x14000312b <.text+0x212b>
140003137: 80 f9 22                    	cmp	cl, 34
14000313a: 75 30                       	jne	0x14000316c <.text+0x216c>
14000313c: 84 c2                       	test	dl, al
14000313e: 75 18                       	jne	0x140003158 <.text+0x2158>
140003140: 40 84 f6                    	test	sil, sil
140003143: 74 0a                       	je	0x14000314f <.text+0x214f>
140003145: 38 4f 01                    	cmp	byte ptr [rdi + 1], cl
140003148: 75 05                       	jne	0x14000314f <.text+0x214f>
14000314a: 48 ff c7                    	inc	rdi
14000314d: eb 09                       	jmp	0x140003158 <.text+0x2158>
14000314f: 33 d2                       	xor	edx, edx
140003151: 40 84 f6                    	test	sil, sil
140003154: 40 0f 94 c6                 	sete	sil
140003158: d1 e8                       	shr	eax
14000315a: eb 10                       	jmp	0x14000316c <.text+0x216c>
14000315c: ff c8                       	dec	eax
14000315e: 48 85 db                    	test	rbx, rbx
140003161: 74 06                       	je	0x140003169 <.text+0x2169>
140003163: c6 03 5c                    	mov	byte ptr [rbx], 92
140003166: 48 ff c3                    	inc	rbx
140003169: 49 ff 07                    	inc	qword ptr [r15]
14000316c: 85 c0                       	test	eax, eax
14000316e: 75 ec                       	jne	0x14000315c <.text+0x215c>
140003170: 8a 07                       	mov	al, byte ptr [rdi]
140003172: 84 c0                       	test	al, al
140003174: 74 46                       	je	0x1400031bc <.text+0x21bc>
140003176: 40 84 f6                    	test	sil, sil
140003179: 75 08                       	jne	0x140003183 <.text+0x2183>
14000317b: 3c 20                       	cmp	al, 32
14000317d: 74 3d                       	je	0x1400031bc <.text+0x21bc>
14000317f: 3c 09                       	cmp	al, 9
140003181: 74 39                       	je	0x1400031bc <.text+0x21bc>
140003183: 85 d2                       	test	edx, edx
140003185: 74 2d                       	je	0x1400031b4 <.text+0x21b4>
140003187: 48 85 db                    	test	rbx, rbx
14000318a: 74 07                       	je	0x140003193 <.text+0x2193>
14000318c: 88 03                       	mov	byte ptr [rbx], al
14000318e: 48 ff c3                    	inc	rbx
140003191: 8a 07                       	mov	al, byte ptr [rdi]
140003193: 0f be c8                    	movsx	ecx, al
140003196: e8 ed 33 00 00              	call	0x140006588 <.text+0x5588>
14000319b: 85 c0                       	test	eax, eax
14000319d: 74 12                       	je	0x1400031b1 <.text+0x21b1>
14000319f: 49 ff 07                    	inc	qword ptr [r15]
1400031a2: 48 ff c7                    	inc	rdi
1400031a5: 48 85 db                    	test	rbx, rbx
1400031a8: 74 07                       	je	0x1400031b1 <.text+0x21b1>
1400031aa: 8a 07                       	mov	al, byte ptr [rdi]
1400031ac: 88 03                       	mov	byte ptr [rbx], al
1400031ae: 48 ff c3                    	inc	rbx
1400031b1: 49 ff 07                    	inc	qword ptr [r15]
1400031b4: 48 ff c7                    	inc	rdi
1400031b7: e9 66 ff ff ff              	jmp	0x140003122 <.text+0x2122>
1400031bc: 48 85 db                    	test	rbx, rbx
1400031bf: 74 06                       	je	0x1400031c7 <.text+0x21c7>
1400031c1: c6 03 00                    	mov	byte ptr [rbx], 0
1400031c4: 48 ff c3                    	inc	rbx
1400031c7: 49 ff 07                    	inc	qword ptr [r15]
1400031ca: e9 22 ff ff ff              	jmp	0x1400030f1 <.text+0x20f1>
1400031cf: 4d 85 f6                    	test	r14, r14
1400031d2: 74 04                       	je	0x1400031d8 <.text+0x21d8>
1400031d4: 49 83 26 00                 	and	qword ptr [r14], 0
1400031d8: 49 ff 04 24                 	inc	qword ptr [r12]
1400031dc: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
1400031e1: 48 8b 6c 24 48              	mov	rbp, qword ptr [rsp + 72]
1400031e6: 48 8b 74 24 50              	mov	rsi, qword ptr [rsp + 80]
1400031eb: 48 8b 7c 24 58              	mov	rdi, qword ptr [rsp + 88]
1400031f0: 48 83 c4 20                 	add	rsp, 32
1400031f4: 41 5f                       	pop	r15
1400031f6: 41 5e                       	pop	r14
1400031f8: 41 5c                       	pop	r12
1400031fa: c3                          	ret
1400031fb: cc                          	int3
1400031fc: 40 53                       	push	rbx
1400031fe: 48 83 ec 20                 	sub	rsp, 32
140003202: 48 b8 ff ff ff ff ff ff ff 1f       	movabs	rax, 2305843009213693951
14000320c: 4c 8b ca                    	mov	r9, rdx
14000320f: 48 3b c8                    	cmp	rcx, rax
140003212: 73 3d                       	jae	0x140003251 <.text+0x2251>
140003214: 33 d2                       	xor	edx, edx
140003216: 48 83 c8 ff                 	or	rax, -1
14000321a: 49 f7 f0                    	div	r8
14000321d: 4c 3b c8                    	cmp	r9, rax
140003220: 73 2f                       	jae	0x140003251 <.text+0x2251>
140003222: 48 c1 e1 03                 	shl	rcx, 3
140003226: 4d 0f af c8                 	imul	r9, r8
14000322a: 48 8b c1                    	mov	rax, rcx
14000322d: 48 f7 d0                    	not	rax
140003230: 49 3b c1                    	cmp	rax, r9
140003233: 76 1c                       	jbe	0x140003251 <.text+0x2251>
140003235: 49 03 c9                    	add	rcx, r9
140003238: ba 01 00 00 00              	mov	edx, 1
14000323d: e8 be 1b 00 00              	call	0x140004e00 <.text+0x3e00>
140003242: 33 c9                       	xor	ecx, ecx
140003244: 48 8b d8                    	mov	rbx, rax
140003247: e8 2c 1c 00 00              	call	0x140004e78 <.text+0x3e78>
14000324c: 48 8b c3                    	mov	rax, rbx
14000324f: eb 02                       	jmp	0x140003253 <.text+0x2253>
140003251: 33 c0                       	xor	eax, eax
140003253: 48 83 c4 20                 	add	rsp, 32
140003257: 5b                          	pop	rbx
140003258: c3                          	ret
140003259: cc                          	int3
14000325a: cc                          	int3
14000325b: cc                          	int3
14000325c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003261: 55                          	push	rbp
140003262: 56                          	push	rsi
140003263: 57                          	push	rdi
140003264: 41 56                       	push	r14
140003266: 41 57                       	push	r15
140003268: 48 8b ec                    	mov	rbp, rsp
14000326b: 48 83 ec 30                 	sub	rsp, 48
14000326f: 33 ff                       	xor	edi, edi
140003271: 44 8b f1                    	mov	r14d, ecx
140003274: 85 c9                       	test	ecx, ecx
140003276: 0f 84 53 01 00 00           	je	0x1400033cf <.text+0x23cf>
14000327c: 8d 41 ff                    	lea	eax, [rcx - 1]
14000327f: 83 f8 01                    	cmp	eax, 1
140003282: 76 16                       	jbe	0x14000329a <.text+0x229a>
140003284: e8 57 1b 00 00              	call	0x140004de0 <.text+0x3de0>
140003289: 8d 5f 16                    	lea	ebx, [rdi + 22]
14000328c: 89 18                       	mov	dword ptr [rax], ebx
14000328e: e8 2d 1a 00 00              	call	0x140004cc0 <.text+0x3cc0>
140003293: 8b fb                       	mov	edi, ebx
140003295: e9 35 01 00 00              	jmp	0x1400033cf <.text+0x23cf>
14000329a: e8 39 2f 00 00              	call	0x1400061d8 <.text+0x51d8>
14000329f: 48 8d 1d 4a 49 01 00        	lea	rbx, [rip + 84298]      # 0x140017bf0
1400032a6: 41 b8 04 01 00 00           	mov	r8d, 260
1400032ac: 48 8b d3                    	mov	rdx, rbx
1400032af: 33 c9                       	xor	ecx, ecx
1400032b1: e8 da 26 00 00              	call	0x140005990 <.text+0x4990>
1400032b6: 48 8b 35 93 4a 01 00        	mov	rsi, qword ptr [rip + 84627] # 0x140017d50
1400032bd: 48 89 1d 6c 4a 01 00        	mov	qword ptr [rip + 84588], rbx # 0x140017d30
1400032c4: 48 85 f6                    	test	rsi, rsi
1400032c7: 74 05                       	je	0x1400032ce <.text+0x22ce>
1400032c9: 40 38 3e                    	cmp	byte ptr [rsi], dil
1400032cc: 75 03                       	jne	0x1400032d1 <.text+0x22d1>
1400032ce: 48 8b f3                    	mov	rsi, rbx
1400032d1: 48 8d 45 48                 	lea	rax, [rbp + 72]
1400032d5: 48 89 7d 40                 	mov	qword ptr [rbp + 64], rdi
1400032d9: 4c 8d 4d 40                 	lea	r9, [rbp + 64]
1400032dd: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
1400032e2: 45 33 c0                    	xor	r8d, r8d
1400032e5: 48 89 7d 48                 	mov	qword ptr [rbp + 72], rdi
1400032e9: 33 d2                       	xor	edx, edx
1400032eb: 48 8b ce                    	mov	rcx, rsi
1400032ee: e8 49 fd ff ff              	call	0x14000303c <.text+0x203c>
1400032f3: 4c 8b 7d 40                 	mov	r15, qword ptr [rbp + 64]
1400032f7: 41 b8 01 00 00 00           	mov	r8d, 1
1400032fd: 48 8b 55 48                 	mov	rdx, qword ptr [rbp + 72]
140003301: 49 8b cf                    	mov	rcx, r15
140003304: e8 f3 fe ff ff              	call	0x1400031fc <.text+0x21fc>
140003309: 48 8b d8                    	mov	rbx, rax
14000330c: 48 85 c0                    	test	rax, rax
14000330f: 75 18                       	jne	0x140003329 <.text+0x2329>
140003311: e8 ca 1a 00 00              	call	0x140004de0 <.text+0x3de0>
140003316: bb 0c 00 00 00              	mov	ebx, 12
14000331b: 33 c9                       	xor	ecx, ecx
14000331d: 89 18                       	mov	dword ptr [rax], ebx
14000331f: e8 54 1b 00 00              	call	0x140004e78 <.text+0x3e78>
140003324: e9 6a ff ff ff              	jmp	0x140003293 <.text+0x2293>
140003329: 4e 8d 04 f8                 	lea	r8, [rax + 8*r15]
14000332d: 48 8b d3                    	mov	rdx, rbx
140003330: 48 8d 45 48                 	lea	rax, [rbp + 72]
140003334: 48 8b ce                    	mov	rcx, rsi
140003337: 4c 8d 4d 40                 	lea	r9, [rbp + 64]
14000333b: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140003340: e8 f7 fc ff ff              	call	0x14000303c <.text+0x203c>
140003345: 41 83 fe 01                 	cmp	r14d, 1
140003349: 75 16                       	jne	0x140003361 <.text+0x2361>
14000334b: 8b 45 40                    	mov	eax, dword ptr [rbp + 64]
14000334e: ff c8                       	dec	eax
140003350: 48 89 1d e9 49 01 00        	mov	qword ptr [rip + 84457], rbx # 0x140017d40
140003357: 89 05 db 49 01 00           	mov	dword ptr [rip + 84443], eax # 0x140017d38
14000335d: 33 c9                       	xor	ecx, ecx
14000335f: eb 69                       	jmp	0x1400033ca <.text+0x23ca>
140003361: 48 8d 55 38                 	lea	rdx, [rbp + 56]
140003365: 48 89 7d 38                 	mov	qword ptr [rbp + 56], rdi
140003369: 48 8b cb                    	mov	rcx, rbx
14000336c: e8 03 25 00 00              	call	0x140005874 <.text+0x4874>
140003371: 8b f0                       	mov	esi, eax
140003373: 85 c0                       	test	eax, eax
140003375: 74 19                       	je	0x140003390 <.text+0x2390>
140003377: 48 8b 4d 38                 	mov	rcx, qword ptr [rbp + 56]
14000337b: e8 f8 1a 00 00              	call	0x140004e78 <.text+0x3e78>
140003380: 48 8b cb                    	mov	rcx, rbx
140003383: 48 89 7d 38                 	mov	qword ptr [rbp + 56], rdi
140003387: e8 ec 1a 00 00              	call	0x140004e78 <.text+0x3e78>
14000338c: 8b fe                       	mov	edi, esi
14000338e: eb 3f                       	jmp	0x1400033cf <.text+0x23cf>
140003390: 48 8b 55 38                 	mov	rdx, qword ptr [rbp + 56]
140003394: 48 8b cf                    	mov	rcx, rdi
140003397: 48 8b c2                    	mov	rax, rdx
14000339a: 48 39 3a                    	cmp	qword ptr [rdx], rdi
14000339d: 74 0c                       	je	0x1400033ab <.text+0x23ab>
14000339f: 48 8d 40 08                 	lea	rax, [rax + 8]
1400033a3: 48 ff c1                    	inc	rcx
1400033a6: 48 39 38                    	cmp	qword ptr [rax], rdi
1400033a9: 75 f4                       	jne	0x14000339f <.text+0x239f>
1400033ab: 89 0d 87 49 01 00           	mov	dword ptr [rip + 84359], ecx # 0x140017d38
1400033b1: 33 c9                       	xor	ecx, ecx
1400033b3: 48 89 7d 38                 	mov	qword ptr [rbp + 56], rdi
1400033b7: 48 89 15 82 49 01 00        	mov	qword ptr [rip + 84354], rdx # 0x140017d40
1400033be: e8 b5 1a 00 00              	call	0x140004e78 <.text+0x3e78>
1400033c3: 48 8b cb                    	mov	rcx, rbx
1400033c6: 48 89 7d 38                 	mov	qword ptr [rbp + 56], rdi
1400033ca: e8 a9 1a 00 00              	call	0x140004e78 <.text+0x3e78>
1400033cf: 48 8b 5c 24 60              	mov	rbx, qword ptr [rsp + 96]
1400033d4: 8b c7                       	mov	eax, edi
1400033d6: 48 83 c4 30                 	add	rsp, 48
1400033da: 41 5f                       	pop	r15
1400033dc: 41 5e                       	pop	r14
1400033de: 5f                          	pop	rdi
1400033df: 5e                          	pop	rsi
1400033e0: 5d                          	pop	rbp
1400033e1: c3                          	ret
1400033e2: cc                          	int3
1400033e3: cc                          	int3
1400033e4: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400033e9: 57                          	push	rdi
1400033ea: 48 83 ec 20                 	sub	rsp, 32
1400033ee: 33 ff                       	xor	edi, edi
1400033f0: 48 39 3d 01 49 01 00        	cmp	qword ptr [rip + 84225], rdi # 0x140017cf8
1400033f7: 74 04                       	je	0x1400033fd <.text+0x23fd>
1400033f9: 33 c0                       	xor	eax, eax
1400033fb: eb 48                       	jmp	0x140003445 <.text+0x2445>
1400033fd: e8 d6 2d 00 00              	call	0x1400061d8 <.text+0x51d8>
140003402: e8 a1 32 00 00              	call	0x1400066a8 <.text+0x56a8>
140003407: 48 8b d8                    	mov	rbx, rax
14000340a: 48 85 c0                    	test	rax, rax
14000340d: 75 05                       	jne	0x140003414 <.text+0x2414>
14000340f: 83 cf ff                    	or	edi, -1
140003412: eb 27                       	jmp	0x14000343b <.text+0x243b>
140003414: 48 8b cb                    	mov	rcx, rbx
140003417: e8 34 00 00 00              	call	0x140003450 <.text+0x2450>
14000341c: 48 85 c0                    	test	rax, rax
14000341f: 75 05                       	jne	0x140003426 <.text+0x2426>
140003421: 83 cf ff                    	or	edi, -1
140003424: eb 0e                       	jmp	0x140003434 <.text+0x2434>
140003426: 48 89 05 e3 48 01 00        	mov	qword ptr [rip + 84195], rax # 0x140017d10
14000342d: 48 89 05 c4 48 01 00        	mov	qword ptr [rip + 84164], rax # 0x140017cf8
140003434: 33 c9                       	xor	ecx, ecx
140003436: e8 3d 1a 00 00              	call	0x140004e78 <.text+0x3e78>
14000343b: 48 8b cb                    	mov	rcx, rbx
14000343e: e8 35 1a 00 00              	call	0x140004e78 <.text+0x3e78>
140003443: 8b c7                       	mov	eax, edi
140003445: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000344a: 48 83 c4 20                 	add	rsp, 32
14000344e: 5f                          	pop	rdi
14000344f: c3                          	ret
140003450: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003455: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
14000345a: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
14000345f: 57                          	push	rdi
140003460: 41 56                       	push	r14
140003462: 41 57                       	push	r15
140003464: 48 83 ec 30                 	sub	rsp, 48
140003468: 4c 8b f1                    	mov	r14, rcx
14000346b: 33 f6                       	xor	esi, esi
14000346d: 8b ce                       	mov	ecx, esi
14000346f: 4d 8b c6                    	mov	r8, r14
140003472: 41 8a 16                    	mov	dl, byte ptr [r14]
140003475: eb 24                       	jmp	0x14000349b <.text+0x249b>
140003477: 80 fa 3d                    	cmp	dl, 61
14000347a: 48 8d 41 01                 	lea	rax, [rcx + 1]
14000347e: 48 0f 44 c1                 	cmove	rax, rcx
140003482: 48 8b c8                    	mov	rcx, rax
140003485: 48 83 c8 ff                 	or	rax, -1
140003489: 48 ff c0                    	inc	rax
14000348c: 41 38 34 00                 	cmp	byte ptr [r8 + rax], sil
140003490: 75 f7                       	jne	0x140003489 <.text+0x2489>
140003492: 49 ff c0                    	inc	r8
140003495: 4c 03 c0                    	add	r8, rax
140003498: 41 8a 10                    	mov	dl, byte ptr [r8]
14000349b: 84 d2                       	test	dl, dl
14000349d: 75 d8                       	jne	0x140003477 <.text+0x2477>
14000349f: 48 ff c1                    	inc	rcx
1400034a2: ba 08 00 00 00              	mov	edx, 8
1400034a7: e8 54 19 00 00              	call	0x140004e00 <.text+0x3e00>
1400034ac: 48 8b d8                    	mov	rbx, rax
1400034af: 48 85 c0                    	test	rax, rax
1400034b2: 74 6c                       	je	0x140003520 <.text+0x2520>
1400034b4: 4c 8b f8                    	mov	r15, rax
1400034b7: 41 8a 06                    	mov	al, byte ptr [r14]
1400034ba: 84 c0                       	test	al, al
1400034bc: 74 5f                       	je	0x14000351d <.text+0x251d>
1400034be: 48 83 cd ff                 	or	rbp, -1
1400034c2: 48 ff c5                    	inc	rbp
1400034c5: 41 38 34 2e                 	cmp	byte ptr [r14 + rbp], sil
1400034c9: 75 f7                       	jne	0x1400034c2 <.text+0x24c2>
1400034cb: 48 ff c5                    	inc	rbp
1400034ce: 3c 3d                       	cmp	al, 61
1400034d0: 74 35                       	je	0x140003507 <.text+0x2507>
1400034d2: ba 01 00 00 00              	mov	edx, 1
1400034d7: 48 8b cd                    	mov	rcx, rbp
1400034da: e8 21 19 00 00              	call	0x140004e00 <.text+0x3e00>
1400034df: 48 8b f8                    	mov	rdi, rax
1400034e2: 48 85 c0                    	test	rax, rax
1400034e5: 74 25                       	je	0x14000350c <.text+0x250c>
1400034e7: 4d 8b c6                    	mov	r8, r14
1400034ea: 48 8b d5                    	mov	rdx, rbp
1400034ed: 48 8b c8                    	mov	rcx, rax
1400034f0: e8 7f 0d 00 00              	call	0x140004274 <.text+0x3274>
1400034f5: 33 c9                       	xor	ecx, ecx
1400034f7: 85 c0                       	test	eax, eax
1400034f9: 75 48                       	jne	0x140003543 <.text+0x2543>
1400034fb: 49 89 3f                    	mov	qword ptr [r15], rdi
1400034fe: 49 83 c7 08                 	add	r15, 8
140003502: e8 71 19 00 00              	call	0x140004e78 <.text+0x3e78>
140003507: 4c 03 f5                    	add	r14, rbp
14000350a: eb ab                       	jmp	0x1400034b7 <.text+0x24b7>
14000350c: 48 8b cb                    	mov	rcx, rbx
14000350f: e8 44 00 00 00              	call	0x140003558 <.text+0x2558>
140003514: 33 c9                       	xor	ecx, ecx
140003516: e8 5d 19 00 00              	call	0x140004e78 <.text+0x3e78>
14000351b: eb 03                       	jmp	0x140003520 <.text+0x2520>
14000351d: 48 8b f3                    	mov	rsi, rbx
140003520: 33 c9                       	xor	ecx, ecx
140003522: e8 51 19 00 00              	call	0x140004e78 <.text+0x3e78>
140003527: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
14000352c: 48 8b c6                    	mov	rax, rsi
14000352f: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
140003534: 48 8b 6c 24 58              	mov	rbp, qword ptr [rsp + 88]
140003539: 48 83 c4 30                 	add	rsp, 48
14000353d: 41 5f                       	pop	r15
14000353f: 41 5e                       	pop	r14
140003541: 5f                          	pop	rdi
140003542: c3                          	ret
140003543: 45 33 c9                    	xor	r9d, r9d
140003546: 48 89 74 24 20              	mov	qword ptr [rsp + 32], rsi
14000354b: 45 33 c0                    	xor	r8d, r8d
14000354e: 33 d2                       	xor	edx, edx
140003550: e8 8b 17 00 00              	call	0x140004ce0 <.text+0x3ce0>
140003555: cc                          	int3
140003556: cc                          	int3
140003557: cc                          	int3
140003558: 48 85 c9                    	test	rcx, rcx
14000355b: 74 3b                       	je	0x140003598 <.text+0x2598>
14000355d: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003562: 57                          	push	rdi
140003563: 48 83 ec 20                 	sub	rsp, 32
140003567: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000356a: 48 8b d9                    	mov	rbx, rcx
14000356d: 48 8b f9                    	mov	rdi, rcx
140003570: eb 0f                       	jmp	0x140003581 <.text+0x2581>
140003572: 48 8b c8                    	mov	rcx, rax
140003575: e8 fe 18 00 00              	call	0x140004e78 <.text+0x3e78>
14000357a: 48 8d 7f 08                 	lea	rdi, [rdi + 8]
14000357e: 48 8b 07                    	mov	rax, qword ptr [rdi]
140003581: 48 85 c0                    	test	rax, rax
140003584: 75 ec                       	jne	0x140003572 <.text+0x2572>
140003586: 48 8b cb                    	mov	rcx, rbx
140003589: e8 ea 18 00 00              	call	0x140004e78 <.text+0x3e78>
14000358e: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140003593: 48 83 c4 20                 	add	rsp, 32
140003597: 5f                          	pop	rdi
140003598: c3                          	ret
140003599: cc                          	int3
14000359a: cc                          	int3
14000359b: cc                          	int3
14000359c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400035a1: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
1400035a6: 57                          	push	rdi
1400035a7: 48 83 ec 40                 	sub	rsp, 64
1400035ab: 48 8b 3d 4e 47 01 00        	mov	rdi, qword ptr [rip + 83790] # 0x140017d00
1400035b2: 48 85 ff                    	test	rdi, rdi
1400035b5: 0f 85 94 00 00 00           	jne	0x14000364f <.text+0x264f>
1400035bb: 83 c8 ff                    	or	eax, -1
1400035be: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
1400035c3: 48 8b 74 24 58              	mov	rsi, qword ptr [rsp + 88]
1400035c8: 48 83 c4 40                 	add	rsp, 64
1400035cc: 5f                          	pop	rdi
1400035cd: c3                          	ret
1400035ce: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
1400035d4: 41 83 c9 ff                 	or	r9d, -1
1400035d8: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
1400035de: 4c 8b c0                    	mov	r8, rax
1400035e1: 83 64 24 28 00              	and	dword ptr [rsp + 40], 0
1400035e6: 33 d2                       	xor	edx, edx
1400035e8: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
1400035ee: 33 c9                       	xor	ecx, ecx
1400035f0: e8 03 30 00 00              	call	0x1400065f8 <.text+0x55f8>
1400035f5: 48 63 f0                    	movsxd	rsi, eax
1400035f8: 85 c0                       	test	eax, eax
1400035fa: 74 bf                       	je	0x1400035bb <.text+0x25bb>
1400035fc: ba 01 00 00 00              	mov	edx, 1
140003601: 48 8b ce                    	mov	rcx, rsi
140003604: e8 f7 17 00 00              	call	0x140004e00 <.text+0x3e00>
140003609: 48 8b d8                    	mov	rbx, rax
14000360c: 48 85 c0                    	test	rax, rax
14000360f: 74 4f                       	je	0x140003660 <.text+0x2660>
140003611: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
140003617: 41 83 c9 ff                 	or	r9d, -1
14000361b: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
140003621: 33 d2                       	xor	edx, edx
140003623: 4c 8b 07                    	mov	r8, qword ptr [rdi]
140003626: 33 c9                       	xor	ecx, ecx
140003628: 89 74 24 28                 	mov	dword ptr [rsp + 40], esi
14000362c: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140003631: e8 c2 2f 00 00              	call	0x1400065f8 <.text+0x55f8>
140003636: 85 c0                       	test	eax, eax
140003638: 74 26                       	je	0x140003660 <.text+0x2660>
14000363a: 33 d2                       	xor	edx, edx
14000363c: 48 8b cb                    	mov	rcx, rbx
14000363f: e8 70 35 00 00              	call	0x140006bb4 <.text+0x5bb4>
140003644: 33 c9                       	xor	ecx, ecx
140003646: e8 2d 18 00 00              	call	0x140004e78 <.text+0x3e78>
14000364b: 48 83 c7 08                 	add	rdi, 8
14000364f: 48 8b 07                    	mov	rax, qword ptr [rdi]
140003652: 48 85 c0                    	test	rax, rax
140003655: 0f 85 73 ff ff ff           	jne	0x1400035ce <.text+0x25ce>
14000365b: e9 5e ff ff ff              	jmp	0x1400035be <.text+0x25be>
140003660: 48 8b cb                    	mov	rcx, rbx
140003663: e8 10 18 00 00              	call	0x140004e78 <.text+0x3e78>
140003668: e9 4e ff ff ff              	jmp	0x1400035bb <.text+0x25bb>
14000366d: cc                          	int3
14000366e: cc                          	int3
14000366f: cc                          	int3
140003670: 48 83 ec 28                 	sub	rsp, 40
140003674: 48 8b 09                    	mov	rcx, qword ptr [rcx]
140003677: 48 3b 0d 92 46 01 00        	cmp	rcx, qword ptr [rip + 83602] # 0x140017d10
14000367e: 74 05                       	je	0x140003685 <.text+0x2685>
140003680: e8 d3 fe ff ff              	call	0x140003558 <.text+0x2558>
140003685: 48 83 c4 28                 	add	rsp, 40
140003689: c3                          	ret
14000368a: cc                          	int3
14000368b: cc                          	int3
14000368c: 48 83 ec 28                 	sub	rsp, 40
140003690: 48 8b 09                    	mov	rcx, qword ptr [rcx]
140003693: 48 3b 0d 6e 46 01 00        	cmp	rcx, qword ptr [rip + 83566] # 0x140017d08
14000369a: 74 05                       	je	0x1400036a1 <.text+0x26a1>
14000369c: e8 b7 fe ff ff              	call	0x140003558 <.text+0x2558>
1400036a1: 48 83 c4 28                 	add	rsp, 40
1400036a5: c3                          	ret
1400036a6: cc                          	int3
1400036a7: cc                          	int3
1400036a8: 48 83 ec 28                 	sub	rsp, 40
1400036ac: 48 8b 05 45 46 01 00        	mov	rax, qword ptr [rip + 83525] # 0x140017cf8
1400036b3: 48 85 c0                    	test	rax, rax
1400036b6: 75 26                       	jne	0x1400036de <.text+0x26de>
1400036b8: 48 39 05 41 46 01 00        	cmp	qword ptr [rip + 83521], rax # 0x140017d00
1400036bf: 75 04                       	jne	0x1400036c5 <.text+0x26c5>
1400036c1: 33 c0                       	xor	eax, eax
1400036c3: eb 19                       	jmp	0x1400036de <.text+0x26de>
1400036c5: e8 1a fd ff ff              	call	0x1400033e4 <.text+0x23e4>
1400036ca: 85 c0                       	test	eax, eax
1400036cc: 74 09                       	je	0x1400036d7 <.text+0x26d7>
1400036ce: e8 c9 fe ff ff              	call	0x14000359c <.text+0x259c>
1400036d3: 85 c0                       	test	eax, eax
1400036d5: 75 ea                       	jne	0x1400036c1 <.text+0x26c1>
1400036d7: 48 8b 05 1a 46 01 00        	mov	rax, qword ptr [rip + 83482] # 0x140017cf8
1400036de: 48 83 c4 28                 	add	rsp, 40
1400036e2: c3                          	ret
1400036e3: cc                          	int3
1400036e4: 48 83 ec 28                 	sub	rsp, 40
1400036e8: 48 8d 0d 09 46 01 00        	lea	rcx, [rip + 83465]      # 0x140017cf8
1400036ef: e8 7c ff ff ff              	call	0x140003670 <.text+0x2670>
1400036f4: 48 8d 0d 05 46 01 00        	lea	rcx, [rip + 83461]      # 0x140017d00
1400036fb: e8 8c ff ff ff              	call	0x14000368c <.text+0x268c>
140003700: 48 8b 0d 09 46 01 00        	mov	rcx, qword ptr [rip + 83465] # 0x140017d10
140003707: e8 4c fe ff ff              	call	0x140003558 <.text+0x2558>
14000370c: 48 8b 0d f5 45 01 00        	mov	rcx, qword ptr [rip + 83445] # 0x140017d08
140003713: 48 83 c4 28                 	add	rsp, 40
140003717: e9 3c fe ff ff              	jmp	0x140003558 <.text+0x2558>
14000371c: 48 83 ec 28                 	sub	rsp, 40
140003720: 48 8b 05 e9 45 01 00        	mov	rax, qword ptr [rip + 83433] # 0x140017d10
140003727: 48 85 c0                    	test	rax, rax
14000372a: 75 39                       	jne	0x140003765 <.text+0x2765>
14000372c: 48 8b 05 c5 45 01 00        	mov	rax, qword ptr [rip + 83397] # 0x140017cf8
140003733: 48 85 c0                    	test	rax, rax
140003736: 75 26                       	jne	0x14000375e <.text+0x275e>
140003738: 48 39 05 c1 45 01 00        	cmp	qword ptr [rip + 83393], rax # 0x140017d00
14000373f: 75 04                       	jne	0x140003745 <.text+0x2745>
140003741: 33 c0                       	xor	eax, eax
140003743: eb 19                       	jmp	0x14000375e <.text+0x275e>
140003745: e8 9a fc ff ff              	call	0x1400033e4 <.text+0x23e4>
14000374a: 85 c0                       	test	eax, eax
14000374c: 74 09                       	je	0x140003757 <.text+0x2757>
14000374e: e8 49 fe ff ff              	call	0x14000359c <.text+0x259c>
140003753: 85 c0                       	test	eax, eax
140003755: 75 ea                       	jne	0x140003741 <.text+0x2741>
140003757: 48 8b 05 9a 45 01 00        	mov	rax, qword ptr [rip + 83354] # 0x140017cf8
14000375e: 48 89 05 ab 45 01 00        	mov	qword ptr [rip + 83371], rax # 0x140017d10
140003765: 48 83 c4 28                 	add	rsp, 40
140003769: c3                          	ret
14000376a: cc                          	int3
14000376b: cc                          	int3
14000376c: e9 73 fc ff ff              	jmp	0x1400033e4 <.text+0x23e4>
140003771: cc                          	int3
140003772: cc                          	int3
140003773: cc                          	int3
140003774: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003779: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
14000377e: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140003783: 57                          	push	rdi
140003784: 48 83 ec 20                 	sub	rsp, 32
140003788: 33 ed                       	xor	ebp, ebp
14000378a: 48 8b fa                    	mov	rdi, rdx
14000378d: 48 2b f9                    	sub	rdi, rcx
140003790: 48 8b d9                    	mov	rbx, rcx
140003793: 48 83 c7 07                 	add	rdi, 7
140003797: 8b f5                       	mov	esi, ebp
140003799: 48 c1 ef 03                 	shr	rdi, 3
14000379d: 48 3b ca                    	cmp	rcx, rdx
1400037a0: 48 0f 47 fd                 	cmova	rdi, rbp
1400037a4: 48 85 ff                    	test	rdi, rdi
1400037a7: 74 1a                       	je	0x1400037c3 <.text+0x27c3>
1400037a9: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400037ac: 48 85 c0                    	test	rax, rax
1400037af: 74 06                       	je	0x1400037b7 <.text+0x27b7>
1400037b1: ff 15 79 aa 00 00           	call	qword ptr [rip + 43641] # 0x14000e230
1400037b7: 48 83 c3 08                 	add	rbx, 8
1400037bb: 48 ff c6                    	inc	rsi
1400037be: 48 3b f7                    	cmp	rsi, rdi
1400037c1: 75 e6                       	jne	0x1400037a9 <.text+0x27a9>
1400037c3: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400037c8: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
1400037cd: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
1400037d2: 48 83 c4 20                 	add	rsp, 32
1400037d6: 5f                          	pop	rdi
1400037d7: c3                          	ret
1400037d8: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400037dd: 57                          	push	rdi
1400037de: 48 83 ec 20                 	sub	rsp, 32
1400037e2: 48 8b fa                    	mov	rdi, rdx
1400037e5: 48 8b d9                    	mov	rbx, rcx
1400037e8: 48 3b ca                    	cmp	rcx, rdx
1400037eb: 74 1b                       	je	0x140003808 <.text+0x2808>
1400037ed: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400037f0: 48 85 c0                    	test	rax, rax
1400037f3: 74 0a                       	je	0x1400037ff <.text+0x27ff>
1400037f5: ff 15 35 aa 00 00           	call	qword ptr [rip + 43573] # 0x14000e230
1400037fb: 85 c0                       	test	eax, eax
1400037fd: 75 0b                       	jne	0x14000380a <.text+0x280a>
1400037ff: 48 83 c3 08                 	add	rbx, 8
140003803: 48 3b df                    	cmp	rbx, rdi
140003806: eb e3                       	jmp	0x1400037eb <.text+0x27eb>
140003808: 33 c0                       	xor	eax, eax
14000380a: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000380f: 48 83 c4 20                 	add	rsp, 32
140003813: 5f                          	pop	rdi
140003814: c3                          	ret
140003815: cc                          	int3
140003816: cc                          	int3
140003817: cc                          	int3
140003818: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000381d: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140003822: 57                          	push	rdi
140003823: 48 83 ec 20                 	sub	rsp, 32
140003827: 49 8b d9                    	mov	rbx, r9
14000382a: 49 8b f8                    	mov	rdi, r8
14000382d: 8b 0a                       	mov	ecx, dword ptr [rdx]
14000382f: e8 d0 33 00 00              	call	0x140006c04 <.text+0x5c04>
140003834: 90                          	nop
140003835: 48 8b cf                    	mov	rcx, rdi
140003838: e8 13 00 00 00              	call	0x140003850 <.text+0x2850>
14000383d: 90                          	nop
14000383e: 8b 0b                       	mov	ecx, dword ptr [rbx]
140003840: e8 13 34 00 00              	call	0x140006c58 <.text+0x5c58>
140003845: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000384a: 48 83 c4 20                 	add	rsp, 32
14000384e: 5f                          	pop	rdi
14000384f: c3                          	ret
140003850: 40 53                       	push	rbx
140003852: 48 83 ec 20                 	sub	rsp, 32
140003856: 48 8b d9                    	mov	rbx, rcx
140003859: 80 3d c8 44 01 00 00        	cmp	byte ptr [rip + 83144], 0 # 0x140017d28
140003860: 0f 85 9f 00 00 00           	jne	0x140003905 <.text+0x2905>
140003866: b8 01 00 00 00              	mov	eax, 1
14000386b: 87 05 a7 44 01 00           	xchg	dword ptr [rip + 83111], eax # 0x140017d18
140003871: 48 8b 01                    	mov	rax, qword ptr [rcx]
140003874: 8b 08                       	mov	ecx, dword ptr [rax]
140003876: 85 c9                       	test	ecx, ecx
140003878: 75 34                       	jne	0x1400038ae <.text+0x28ae>
14000387a: 48 8b 05 a7 37 01 00        	mov	rax, qword ptr [rip + 79783] # 0x140017028
140003881: 8b c8                       	mov	ecx, eax
140003883: 83 e1 3f                    	and	ecx, 63
140003886: 48 8b 15 93 44 01 00        	mov	rdx, qword ptr [rip + 83091] # 0x140017d20
14000388d: 48 3b d0                    	cmp	rdx, rax
140003890: 74 13                       	je	0x1400038a5 <.text+0x28a5>
140003892: 48 33 c2                    	xor	rax, rdx
140003895: 48 d3 c8                    	ror	rax, cl
140003898: 45 33 c0                    	xor	r8d, r8d
14000389b: 33 d2                       	xor	edx, edx
14000389d: 33 c9                       	xor	ecx, ecx
14000389f: ff 15 8b a9 00 00           	call	qword ptr [rip + 43403] # 0x14000e230
1400038a5: 48 8d 0d c4 44 01 00        	lea	rcx, [rip + 83140]      # 0x140017d70
1400038ac: eb 0c                       	jmp	0x1400038ba <.text+0x28ba>
1400038ae: 83 f9 01                    	cmp	ecx, 1
1400038b1: 75 0d                       	jne	0x1400038c0 <.text+0x28c0>
1400038b3: 48 8d 0d ce 44 01 00        	lea	rcx, [rip + 83150]      # 0x140017d88
1400038ba: e8 5d 07 00 00              	call	0x14000401c <.text+0x301c>
1400038bf: 90                          	nop
1400038c0: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400038c3: 83 38 00                    	cmp	dword ptr [rax], 0
1400038c6: 75 13                       	jne	0x1400038db <.text+0x28db>
1400038c8: 48 8d 15 01 aa 00 00        	lea	rdx, [rip + 43521]      # 0x14000e2d0
1400038cf: 48 8d 0d da a9 00 00        	lea	rcx, [rip + 43482]      # 0x14000e2b0
1400038d6: e8 99 fe ff ff              	call	0x140003774 <.text+0x2774>
1400038db: 48 8d 15 fe a9 00 00        	lea	rdx, [rip + 43518]      # 0x14000e2e0
1400038e2: 48 8d 0d ef a9 00 00        	lea	rcx, [rip + 43503]      # 0x14000e2d8
1400038e9: e8 86 fe ff ff              	call	0x140003774 <.text+0x2774>
1400038ee: 48 8b 43 08                 	mov	rax, qword ptr [rbx + 8]
1400038f2: 83 38 00                    	cmp	dword ptr [rax], 0
1400038f5: 75 0e                       	jne	0x140003905 <.text+0x2905>
1400038f7: c6 05 2a 44 01 00 01        	mov	byte ptr [rip + 82986], 1 # 0x140017d28
1400038fe: 48 8b 43 10                 	mov	rax, qword ptr [rbx + 16]
140003902: c6 00 01                    	mov	byte ptr [rax], 1
140003905: 48 83 c4 20                 	add	rsp, 32
140003909: 5b                          	pop	rbx
14000390a: c3                          	ret
14000390b: e8 30 09 00 00              	call	0x140004240 <.text+0x3240>
140003910: 90                          	nop
140003911: cc                          	int3
140003912: cc                          	int3
140003913: cc                          	int3
140003914: 33 c0                       	xor	eax, eax
140003916: 81 f9 63 73 6d e0           	cmp	ecx, 3765269347
14000391c: 0f 94 c0                    	sete	al
14000391f: c3                          	ret
140003920: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003925: 44 89 44 24 18              	mov	dword ptr [rsp + 24], r8d
14000392a: 89 54 24 10                 	mov	dword ptr [rsp + 16], edx
14000392e: 55                          	push	rbp
14000392f: 48 8b ec                    	mov	rbp, rsp
140003932: 48 83 ec 50                 	sub	rsp, 80
140003936: 8b d9                       	mov	ebx, ecx
140003938: 45 85 c0                    	test	r8d, r8d
14000393b: 75 4a                       	jne	0x140003987 <.text+0x2987>
14000393d: 33 c9                       	xor	ecx, ecx
14000393f: ff 15 23 a7 00 00           	call	qword ptr [rip + 42787] # 0x14000e068
140003945: 48 85 c0                    	test	rax, rax
140003948: 74 3d                       	je	0x140003987 <.text+0x2987>
14000394a: b9 4d 5a 00 00              	mov	ecx, 23117
14000394f: 66 39 08                    	cmp	word ptr [rax], cx
140003952: 75 33                       	jne	0x140003987 <.text+0x2987>
140003954: 48 63 48 3c                 	movsxd	rcx, dword ptr [rax + 60]
140003958: 48 03 c8                    	add	rcx, rax
14000395b: 81 39 50 45 00 00           	cmp	dword ptr [rcx], 17744
140003961: 75 24                       	jne	0x140003987 <.text+0x2987>
140003963: b8 0b 02 00 00              	mov	eax, 523
140003968: 66 39 41 18                 	cmp	word ptr [rcx + 24], ax
14000396c: 75 19                       	jne	0x140003987 <.text+0x2987>
14000396e: 83 b9 84 00 00 00 0e        	cmp	dword ptr [rcx + 132], 14
140003975: 76 10                       	jbe	0x140003987 <.text+0x2987>
140003977: 83 b9 f8 00 00 00 00        	cmp	dword ptr [rcx + 248], 0
14000397e: 74 07                       	je	0x140003987 <.text+0x2987>
140003980: 8b cb                       	mov	ecx, ebx
140003982: e8 a1 00 00 00              	call	0x140003a28 <.text+0x2a28>
140003987: 48 8d 45 18                 	lea	rax, [rbp + 24]
14000398b: c6 45 28 00                 	mov	byte ptr [rbp + 40], 0
14000398f: 48 89 45 e0                 	mov	qword ptr [rbp - 32], rax
140003993: 4c 8d 4d d4                 	lea	r9, [rbp - 44]
140003997: 48 8d 45 20                 	lea	rax, [rbp + 32]
14000399b: 48 89 45 e8                 	mov	qword ptr [rbp - 24], rax
14000399f: 4c 8d 45 e0                 	lea	r8, [rbp - 32]
1400039a3: 48 8d 45 28                 	lea	rax, [rbp + 40]
1400039a7: 48 89 45 f0                 	mov	qword ptr [rbp - 16], rax
1400039ab: 48 8d 55 d8                 	lea	rdx, [rbp - 40]
1400039af: b8 02 00 00 00              	mov	eax, 2
1400039b4: 48 8d 4d d0                 	lea	rcx, [rbp - 48]
1400039b8: 89 45 d4                    	mov	dword ptr [rbp - 44], eax
1400039bb: 89 45 d8                    	mov	dword ptr [rbp - 40], eax
1400039be: e8 55 fe ff ff              	call	0x140003818 <.text+0x2818>
1400039c3: 83 7d 20 00                 	cmp	dword ptr [rbp + 32], 0
1400039c7: 74 0b                       	je	0x1400039d4 <.text+0x29d4>
1400039c9: 48 8b 5c 24 60              	mov	rbx, qword ptr [rsp + 96]
1400039ce: 48 83 c4 50                 	add	rsp, 80
1400039d2: 5d                          	pop	rbp
1400039d3: c3                          	ret
1400039d4: 8b cb                       	mov	ecx, ebx
1400039d6: e8 01 00 00 00              	call	0x1400039dc <.text+0x29dc>
1400039db: cc                          	int3
1400039dc: 40 53                       	push	rbx
1400039de: 48 83 ec 20                 	sub	rsp, 32
1400039e2: 8b d9                       	mov	ebx, ecx
1400039e4: e8 8b 32 00 00              	call	0x140006c74 <.text+0x5c74>
1400039e9: 83 f8 01                    	cmp	eax, 1
1400039ec: 74 28                       	je	0x140003a16 <.text+0x2a16>
1400039ee: 65 48 8b 04 25 60 00 00 00  	mov	rax, qword ptr gs:[96]
1400039f7: 8b 90 bc 00 00 00           	mov	edx, dword ptr [rax + 188]
1400039fd: c1 ea 08                    	shr	edx, 8
140003a00: f6 c2 01                    	test	dl, 1
140003a03: 75 11                       	jne	0x140003a16 <.text+0x2a16>
140003a05: ff 15 fd a6 00 00           	call	qword ptr [rip + 42749] # 0x14000e108
140003a0b: 48 8b c8                    	mov	rcx, rax
140003a0e: 8b d3                       	mov	edx, ebx
140003a10: ff 15 02 a7 00 00           	call	qword ptr [rip + 42754] # 0x14000e118
140003a16: 8b cb                       	mov	ecx, ebx
140003a18: e8 0b 00 00 00              	call	0x140003a28 <.text+0x2a28>
140003a1d: 8b cb                       	mov	ecx, ebx
140003a1f: ff 15 eb a6 00 00           	call	qword ptr [rip + 42731] # 0x14000e110
140003a25: cc                          	int3
140003a26: cc                          	int3
140003a27: cc                          	int3
140003a28: 40 53                       	push	rbx
140003a2a: 48 83 ec 20                 	sub	rsp, 32
140003a2e: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
140003a34: 4c 8d 44 24 38              	lea	r8, [rsp + 56]
140003a39: 8b d9                       	mov	ebx, ecx
140003a3b: 48 8d 15 c6 b8 00 00        	lea	rdx, [rip + 47302]      # 0x14000f308
140003a42: 33 c9                       	xor	ecx, ecx
140003a44: ff 15 d6 a6 00 00           	call	qword ptr [rip + 42710] # 0x14000e120
140003a4a: 85 c0                       	test	eax, eax
140003a4c: 74 1f                       	je	0x140003a6d <.text+0x2a6d>
140003a4e: 48 8b 4c 24 38              	mov	rcx, qword ptr [rsp + 56]
140003a53: 48 8d 15 c6 b8 00 00        	lea	rdx, [rip + 47302]      # 0x14000f320
140003a5a: ff 15 78 a6 00 00           	call	qword ptr [rip + 42616] # 0x14000e0d8
140003a60: 48 85 c0                    	test	rax, rax
140003a63: 74 08                       	je	0x140003a6d <.text+0x2a6d>
140003a65: 8b cb                       	mov	ecx, ebx
140003a67: ff 15 c3 a7 00 00           	call	qword ptr [rip + 42947] # 0x14000e230
140003a6d: 48 8b 4c 24 38              	mov	rcx, qword ptr [rsp + 56]
140003a72: 48 85 c9                    	test	rcx, rcx
140003a75: 74 06                       	je	0x140003a7d <.text+0x2a7d>
140003a77: ff 15 53 a6 00 00           	call	qword ptr [rip + 42579] # 0x14000e0d0
140003a7d: 48 83 c4 20                 	add	rsp, 32
140003a81: 5b                          	pop	rbx
140003a82: c3                          	ret
140003a83: cc                          	int3
140003a84: 48 89 0d 95 42 01 00        	mov	qword ptr [rip + 82581], rcx # 0x140017d20
140003a8b: c3                          	ret
140003a8c: ba 02 00 00 00              	mov	edx, 2
140003a91: 33 c9                       	xor	ecx, ecx
140003a93: 44 8d 42 ff                 	lea	r8d, [rdx - 1]
140003a97: e9 84 fe ff ff              	jmp	0x140003920 <.text+0x2920>
140003a9c: 33 d2                       	xor	edx, edx
140003a9e: 33 c9                       	xor	ecx, ecx
140003aa0: 44 8d 42 01                 	lea	r8d, [rdx + 1]
140003aa4: e9 77 fe ff ff              	jmp	0x140003920 <.text+0x2920>
140003aa9: cc                          	int3
140003aaa: cc                          	int3
140003aab: cc                          	int3
140003aac: 45 33 c0                    	xor	r8d, r8d
140003aaf: 41 8d 50 02                 	lea	edx, [r8 + 2]
140003ab3: e9 68 fe ff ff              	jmp	0x140003920 <.text+0x2920>
140003ab8: 48 83 ec 28                 	sub	rsp, 40
140003abc: 4c 8b 05 65 35 01 00        	mov	r8, qword ptr [rip + 79205] # 0x140017028
140003ac3: 48 8b d1                    	mov	rdx, rcx
140003ac6: 41 8b c0                    	mov	eax, r8d
140003ac9: b9 40 00 00 00              	mov	ecx, 64
140003ace: 83 e0 3f                    	and	eax, 63
140003ad1: 2b c8                       	sub	ecx, eax
140003ad3: 4c 39 05 46 42 01 00        	cmp	qword ptr [rip + 82502], r8 # 0x140017d20
140003ada: 75 12                       	jne	0x140003aee <.text+0x2aee>
140003adc: 48 d3 ca                    	ror	rdx, cl
140003adf: 49 33 d0                    	xor	rdx, r8
140003ae2: 48 89 15 37 42 01 00        	mov	qword ptr [rip + 82487], rdx # 0x140017d20
140003ae9: 48 83 c4 28                 	add	rsp, 40
140003aed: c3                          	ret
140003aee: e8 4d 07 00 00              	call	0x140004240 <.text+0x3240>
140003af3: cc                          	int3
140003af4: 45 33 c0                    	xor	r8d, r8d
140003af7: 33 d2                       	xor	edx, edx
140003af9: e9 22 fe ff ff              	jmp	0x140003920 <.text+0x2920>
140003afe: cc                          	int3
140003aff: cc                          	int3
140003b00: 48 83 ec 28                 	sub	rsp, 40
140003b04: 8d 81 00 c0 ff ff           	lea	eax, [rcx - 16384]
140003b0a: a9 ff 3f ff ff              	test	eax, 4294918143
140003b0f: 75 12                       	jne	0x140003b23 <.text+0x2b23>
140003b11: 81 f9 00 c0 00 00           	cmp	ecx, 49152
140003b17: 74 0a                       	je	0x140003b23 <.text+0x2b23>
140003b19: 87 0d e5 44 01 00           	xchg	dword ptr [rip + 83173], ecx # 0x140018004
140003b1f: 33 c0                       	xor	eax, eax
140003b21: eb 15                       	jmp	0x140003b38 <.text+0x2b38>
140003b23: e8 b8 12 00 00              	call	0x140004de0 <.text+0x3de0>
140003b28: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140003b2e: e8 8d 11 00 00              	call	0x140004cc0 <.text+0x3cc0>
140003b33: b8 16 00 00 00              	mov	eax, 22
140003b38: 48 83 c4 28                 	add	rsp, 40
140003b3c: c3                          	ret
140003b3d: cc                          	int3
140003b3e: cc                          	int3
140003b3f: cc                          	int3
140003b40: 48 83 ec 28                 	sub	rsp, 40
140003b44: ff 15 de a5 00 00           	call	qword ptr [rip + 42462] # 0x14000e128
140003b4a: 48 89 05 ff 41 01 00        	mov	qword ptr [rip + 82431], rax # 0x140017d50
140003b51: ff 15 d9 a5 00 00           	call	qword ptr [rip + 42457] # 0x14000e130
140003b57: 48 89 05 fa 41 01 00        	mov	qword ptr [rip + 82426], rax # 0x140017d58
140003b5e: b0 01                       	mov	al, 1
140003b60: 48 83 c4 28                 	add	rsp, 40
140003b64: c3                          	ret
140003b65: cc                          	int3
140003b66: cc                          	int3
140003b67: cc                          	int3
140003b68: 48 8d 05 c9 41 01 00        	lea	rax, [rip + 82377]      # 0x140017d38
140003b6f: c3                          	ret
140003b70: 48 8d 05 c9 41 01 00        	lea	rax, [rip + 82377]      # 0x140017d40
140003b77: c3                          	ret
140003b78: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003b7d: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
140003b82: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140003b87: 57                          	push	rdi
140003b88: 48 83 ec 30                 	sub	rsp, 48
140003b8c: 49 8b f9                    	mov	rdi, r9
140003b8f: 8b 0a                       	mov	ecx, dword ptr [rdx]
140003b91: e8 6e 30 00 00              	call	0x140006c04 <.text+0x5c04>
140003b96: 90                          	nop
140003b97: 48 8d 1d 7a 48 01 00        	lea	rbx, [rip + 84090]      # 0x140018418
140003b9e: 48 8d 35 fb 39 01 00        	lea	rsi, [rip + 80379]      # 0x1400175a0
140003ba5: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140003baa: 48 8d 05 6f 48 01 00        	lea	rax, [rip + 84079]      # 0x140018420
140003bb1: 48 3b d8                    	cmp	rbx, rax
140003bb4: 74 19                       	je	0x140003bcf <.text+0x2bcf>
140003bb6: 48 39 33                    	cmp	qword ptr [rbx], rsi
140003bb9: 74 0e                       	je	0x140003bc9 <.text+0x2bc9>
140003bbb: 48 8b d6                    	mov	rdx, rsi
140003bbe: 48 8b cb                    	mov	rcx, rbx
140003bc1: e8 3e 3f 00 00              	call	0x140007b04 <.text+0x6b04>
140003bc6: 48 89 03                    	mov	qword ptr [rbx], rax
140003bc9: 48 83 c3 08                 	add	rbx, 8
140003bcd: eb d6                       	jmp	0x140003ba5 <.text+0x2ba5>
140003bcf: 8b 0f                       	mov	ecx, dword ptr [rdi]
140003bd1: e8 82 30 00 00              	call	0x140006c58 <.text+0x5c58>
140003bd6: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140003bdb: 48 8b 74 24 48              	mov	rsi, qword ptr [rsp + 72]
140003be0: 48 83 c4 30                 	add	rsp, 48
140003be4: 5f                          	pop	rdi
140003be5: c3                          	ret
140003be6: cc                          	int3
140003be7: cc                          	int3
140003be8: b8 01 00 00 00              	mov	eax, 1
140003bed: 87 05 6d 41 01 00           	xchg	dword ptr [rip + 82285], eax # 0x140017d60
140003bf3: c3                          	ret
140003bf4: 4c 8b dc                    	mov	r11, rsp
140003bf7: 48 83 ec 28                 	sub	rsp, 40
140003bfb: b8 04 00 00 00              	mov	eax, 4
140003c00: 4d 8d 4b 10                 	lea	r9, [r11 + 16]
140003c04: 4d 8d 43 08                 	lea	r8, [r11 + 8]
140003c08: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
140003c0c: 49 8d 53 18                 	lea	rdx, [r11 + 24]
140003c10: 89 44 24 40                 	mov	dword ptr [rsp + 64], eax
140003c14: 49 8d 4b 08                 	lea	rcx, [r11 + 8]
140003c18: e8 5b ff ff ff              	call	0x140003b78 <.text+0x2b78>
140003c1d: 48 83 c4 28                 	add	rsp, 40
140003c21: c3                          	ret
140003c22: cc                          	int3
140003c23: cc                          	int3
140003c24: 40 53                       	push	rbx
140003c26: 48 83 ec 20                 	sub	rsp, 32
140003c2a: 8b d9                       	mov	ebx, ecx
140003c2c: e8 d3 0b 00 00              	call	0x140004804 <.text+0x3804>
140003c31: 44 8b 80 a8 03 00 00        	mov	r8d, dword ptr [rax + 936]
140003c38: 41 8b d0                    	mov	edx, r8d
140003c3b: 80 e2 02                    	and	dl, 2
140003c3e: f6 da                       	neg	dl
140003c40: 1b c9                       	sbb	ecx, ecx
140003c42: 83 fb ff                    	cmp	ebx, -1
140003c45: 74 36                       	je	0x140003c7d <.text+0x2c7d>
140003c47: 85 db                       	test	ebx, ebx
140003c49: 74 39                       	je	0x140003c84 <.text+0x2c84>
140003c4b: 83 fb 01                    	cmp	ebx, 1
140003c4e: 74 20                       	je	0x140003c70 <.text+0x2c70>
140003c50: 83 fb 02                    	cmp	ebx, 2
140003c53: 74 15                       	je	0x140003c6a <.text+0x2c6a>
140003c55: e8 86 11 00 00              	call	0x140004de0 <.text+0x3de0>
140003c5a: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140003c60: e8 5b 10 00 00              	call	0x140004cc0 <.text+0x3cc0>
140003c65: 83 c8 ff                    	or	eax, -1
140003c68: eb 1d                       	jmp	0x140003c87 <.text+0x2c87>
140003c6a: 41 83 e0 fd                 	and	r8d, -3
140003c6e: eb 04                       	jmp	0x140003c74 <.text+0x2c74>
140003c70: 41 83 c8 02                 	or	r8d, 2
140003c74: 44 89 80 a8 03 00 00        	mov	dword ptr [rax + 936], r8d
140003c7b: eb 07                       	jmp	0x140003c84 <.text+0x2c84>
140003c7d: 83 0d 2c 3b 01 00 ff        	or	dword ptr [rip + 80684], -1 # 0x1400177b0
140003c84: 8d 41 02                    	lea	eax, [rcx + 2]
140003c87: 48 83 c4 20                 	add	rsp, 32
140003c8b: 5b                          	pop	rbx
140003c8c: c3                          	ret
140003c8d: cc                          	int3
140003c8e: cc                          	int3
140003c8f: cc                          	int3
140003c90: 8b 05 ce 40 01 00           	mov	eax, dword ptr [rip + 82126] # 0x140017d64
140003c96: c3                          	ret
140003c97: cc                          	int3
140003c98: 48 83 ec 28                 	sub	rsp, 40
140003c9c: 83 f9 01                    	cmp	ecx, 1
140003c9f: 76 15                       	jbe	0x140003cb6 <.text+0x2cb6>
140003ca1: e8 3a 11 00 00              	call	0x140004de0 <.text+0x3de0>
140003ca6: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140003cac: e8 0f 10 00 00              	call	0x140004cc0 <.text+0x3cc0>
140003cb1: 83 c8 ff                    	or	eax, -1
140003cb4: eb 08                       	jmp	0x140003cbe <.text+0x2cbe>
140003cb6: 87 0d a8 40 01 00           	xchg	dword ptr [rip + 82088], ecx # 0x140017d64
140003cbc: 8b c1                       	mov	eax, ecx
140003cbe: 48 83 c4 28                 	add	rsp, 40
140003cc2: c3                          	ret
140003cc3: cc                          	int3
140003cc4: 48 8d 05 9d 40 01 00        	lea	rax, [rip + 82077]      # 0x140017d68
140003ccb: c3                          	ret
140003ccc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003cd1: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140003cd6: 57                          	push	rdi
140003cd7: 48 83 ec 20                 	sub	rsp, 32
140003cdb: 49 8b d9                    	mov	rbx, r9
140003cde: 49 8b f8                    	mov	rdi, r8
140003ce1: 8b 0a                       	mov	ecx, dword ptr [rdx]
140003ce3: e8 1c 2f 00 00              	call	0x140006c04 <.text+0x5c04>
140003ce8: 90                          	nop
140003ce9: 48 8b cf                    	mov	rcx, rdi
140003cec: e8 53 00 00 00              	call	0x140003d44 <.text+0x2d44>
140003cf1: 8b f8                       	mov	edi, eax
140003cf3: 8b 0b                       	mov	ecx, dword ptr [rbx]
140003cf5: e8 5e 2f 00 00              	call	0x140006c58 <.text+0x5c58>
140003cfa: 8b c7                       	mov	eax, edi
140003cfc: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140003d01: 48 83 c4 20                 	add	rsp, 32
140003d05: 5f                          	pop	rdi
140003d06: c3                          	ret
140003d07: cc                          	int3
140003d08: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003d0d: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140003d12: 57                          	push	rdi
140003d13: 48 83 ec 20                 	sub	rsp, 32
140003d17: 49 8b d9                    	mov	rbx, r9
140003d1a: 49 8b f8                    	mov	rdi, r8
140003d1d: 8b 0a                       	mov	ecx, dword ptr [rdx]
140003d1f: e8 e0 2e 00 00              	call	0x140006c04 <.text+0x5c04>
140003d24: 90                          	nop
140003d25: 48 8b cf                    	mov	rcx, rdi
140003d28: e8 c7 01 00 00              	call	0x140003ef4 <.text+0x2ef4>
140003d2d: 8b f8                       	mov	edi, eax
140003d2f: 8b 0b                       	mov	ecx, dword ptr [rbx]
140003d31: e8 22 2f 00 00              	call	0x140006c58 <.text+0x5c58>
140003d36: 8b c7                       	mov	eax, edi
140003d38: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140003d3d: 48 83 c4 20                 	add	rsp, 32
140003d41: 5f                          	pop	rdi
140003d42: c3                          	ret
140003d43: cc                          	int3
140003d44: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
140003d49: 48 89 6c 24 18              	mov	qword ptr [rsp + 24], rbp
140003d4e: 48 89 74 24 20              	mov	qword ptr [rsp + 32], rsi
140003d53: 57                          	push	rdi
140003d54: 41 56                       	push	r14
140003d56: 41 57                       	push	r15
140003d58: 48 83 ec 20                 	sub	rsp, 32
140003d5c: 48 8b 01                    	mov	rax, qword ptr [rcx]
140003d5f: 33 ed                       	xor	ebp, ebp
140003d61: 4c 8b f9                    	mov	r15, rcx
140003d64: 48 8b 18                    	mov	rbx, qword ptr [rax]
140003d67: 48 85 db                    	test	rbx, rbx
140003d6a: 0f 84 68 01 00 00           	je	0x140003ed8 <.text+0x2ed8>
140003d70: 4c 8b 15 b1 32 01 00        	mov	r10, qword ptr [rip + 78513] # 0x140017028
140003d77: 4c 8b 4b 08                 	mov	r9, qword ptr [rbx + 8]
140003d7b: 49 8b f2                    	mov	rsi, r10
140003d7e: 48 33 33                    	xor	rsi, qword ptr [rbx]
140003d81: 4d 33 ca                    	xor	r9, r10
140003d84: 48 8b 5b 10                 	mov	rbx, qword ptr [rbx + 16]
140003d88: 41 8b ca                    	mov	ecx, r10d
140003d8b: 83 e1 3f                    	and	ecx, 63
140003d8e: 49 33 da                    	xor	rbx, r10
140003d91: 48 d3 cb                    	ror	rbx, cl
140003d94: 48 d3 ce                    	ror	rsi, cl
140003d97: 49 d3 c9                    	ror	r9, cl
140003d9a: 4c 3b cb                    	cmp	r9, rbx
140003d9d: 0f 85 a7 00 00 00           	jne	0x140003e4a <.text+0x2e4a>
140003da3: 48 2b de                    	sub	rbx, rsi
140003da6: b8 00 02 00 00              	mov	eax, 512
140003dab: 48 c1 fb 03                 	sar	rbx, 3
140003daf: 48 3b d8                    	cmp	rbx, rax
140003db2: 48 8b fb                    	mov	rdi, rbx
140003db5: 48 0f 47 f8                 	cmova	rdi, rax
140003db9: 8d 45 20                    	lea	eax, [rbp + 32]
140003dbc: 48 03 fb                    	add	rdi, rbx
140003dbf: 48 0f 44 f8                 	cmove	rdi, rax
140003dc3: 48 3b fb                    	cmp	rdi, rbx
140003dc6: 72 1e                       	jb	0x140003de6 <.text+0x2de6>
140003dc8: 44 8d 45 08                 	lea	r8d, [rbp + 8]
140003dcc: 48 8b d7                    	mov	rdx, rdi
140003dcf: 48 8b ce                    	mov	rcx, rsi
140003dd2: e8 09 44 00 00              	call	0x1400081e0 <.text+0x71e0>
140003dd7: 33 c9                       	xor	ecx, ecx
140003dd9: 4c 8b f0                    	mov	r14, rax
140003ddc: e8 97 10 00 00              	call	0x140004e78 <.text+0x3e78>
140003de1: 4d 85 f6                    	test	r14, r14
140003de4: 75 28                       	jne	0x140003e0e <.text+0x2e0e>
140003de6: 48 8d 7b 04                 	lea	rdi, [rbx + 4]
140003dea: 41 b8 08 00 00 00           	mov	r8d, 8
140003df0: 48 8b d7                    	mov	rdx, rdi
140003df3: 48 8b ce                    	mov	rcx, rsi
140003df6: e8 e5 43 00 00              	call	0x1400081e0 <.text+0x71e0>
140003dfb: 33 c9                       	xor	ecx, ecx
140003dfd: 4c 8b f0                    	mov	r14, rax
140003e00: e8 73 10 00 00              	call	0x140004e78 <.text+0x3e78>
140003e05: 4d 85 f6                    	test	r14, r14
140003e08: 0f 84 ca 00 00 00           	je	0x140003ed8 <.text+0x2ed8>
140003e0e: 4c 8b 15 13 32 01 00        	mov	r10, qword ptr [rip + 78355] # 0x140017028
140003e15: 4d 8d 0c de                 	lea	r9, [r14 + 8*rbx]
140003e19: 49 8d 1c fe                 	lea	rbx, [r14 + 8*rdi]
140003e1d: 49 8b f6                    	mov	rsi, r14
140003e20: 48 8b cb                    	mov	rcx, rbx
140003e23: 49 2b c9                    	sub	rcx, r9
140003e26: 48 83 c1 07                 	add	rcx, 7
140003e2a: 48 c1 e9 03                 	shr	rcx, 3
140003e2e: 4c 3b cb                    	cmp	r9, rbx
140003e31: 48 0f 47 cd                 	cmova	rcx, rbp
140003e35: 48 85 c9                    	test	rcx, rcx
140003e38: 74 10                       	je	0x140003e4a <.text+0x2e4a>
140003e3a: 49 8b c2                    	mov	rax, r10
140003e3d: 49 8b f9                    	mov	rdi, r9
140003e40: f3 48 ab                    	rep		stosq	qword ptr es:[rdi], rax
140003e43: 4c 8b 15 de 31 01 00        	mov	r10, qword ptr [rip + 78302] # 0x140017028
140003e4a: 41 b8 40 00 00 00           	mov	r8d, 64
140003e50: 49 8d 79 08                 	lea	rdi, [r9 + 8]
140003e54: 41 8b c8                    	mov	ecx, r8d
140003e57: 41 8b c2                    	mov	eax, r10d
140003e5a: 83 e0 3f                    	and	eax, 63
140003e5d: 2b c8                       	sub	ecx, eax
140003e5f: 49 8b 47 08                 	mov	rax, qword ptr [r15 + 8]
140003e63: 48 8b 10                    	mov	rdx, qword ptr [rax]
140003e66: 41 8b c0                    	mov	eax, r8d
140003e69: 48 d3 ca                    	ror	rdx, cl
140003e6c: 49 33 d2                    	xor	rdx, r10
140003e6f: 49 89 11                    	mov	qword ptr [r9], rdx
140003e72: 48 8b 15 af 31 01 00        	mov	rdx, qword ptr [rip + 78255] # 0x140017028
140003e79: 8b ca                       	mov	ecx, edx
140003e7b: 83 e1 3f                    	and	ecx, 63
140003e7e: 2b c1                       	sub	eax, ecx
140003e80: 8a c8                       	mov	cl, al
140003e82: 49 8b 07                    	mov	rax, qword ptr [r15]
140003e85: 48 d3 ce                    	ror	rsi, cl
140003e88: 48 33 f2                    	xor	rsi, rdx
140003e8b: 48 8b 08                    	mov	rcx, qword ptr [rax]
140003e8e: 48 89 31                    	mov	qword ptr [rcx], rsi
140003e91: 41 8b c8                    	mov	ecx, r8d
140003e94: 48 8b 15 8d 31 01 00        	mov	rdx, qword ptr [rip + 78221] # 0x140017028
140003e9b: 8b c2                       	mov	eax, edx
140003e9d: 83 e0 3f                    	and	eax, 63
140003ea0: 2b c8                       	sub	ecx, eax
140003ea2: 49 8b 07                    	mov	rax, qword ptr [r15]
140003ea5: 48 d3 cf                    	ror	rdi, cl
140003ea8: 48 33 fa                    	xor	rdi, rdx
140003eab: 48 8b 10                    	mov	rdx, qword ptr [rax]
140003eae: 48 89 7a 08                 	mov	qword ptr [rdx + 8], rdi
140003eb2: 48 8b 15 6f 31 01 00        	mov	rdx, qword ptr [rip + 78191] # 0x140017028
140003eb9: 8b c2                       	mov	eax, edx
140003ebb: 83 e0 3f                    	and	eax, 63
140003ebe: 44 2b c0                    	sub	r8d, eax
140003ec1: 49 8b 07                    	mov	rax, qword ptr [r15]
140003ec4: 41 8a c8                    	mov	cl, r8b
140003ec7: 48 d3 cb                    	ror	rbx, cl
140003eca: 48 33 da                    	xor	rbx, rdx
140003ecd: 48 8b 08                    	mov	rcx, qword ptr [rax]
140003ed0: 33 c0                       	xor	eax, eax
140003ed2: 48 89 59 10                 	mov	qword ptr [rcx + 16], rbx
140003ed6: eb 03                       	jmp	0x140003edb <.text+0x2edb>
140003ed8: 83 c8 ff                    	or	eax, -1
140003edb: 48 8b 5c 24 48              	mov	rbx, qword ptr [rsp + 72]
140003ee0: 48 8b 6c 24 50              	mov	rbp, qword ptr [rsp + 80]
140003ee5: 48 8b 74 24 58              	mov	rsi, qword ptr [rsp + 88]
140003eea: 48 83 c4 20                 	add	rsp, 32
140003eee: 41 5f                       	pop	r15
140003ef0: 41 5e                       	pop	r14
140003ef2: 5f                          	pop	rdi
140003ef3: c3                          	ret
140003ef4: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140003ef9: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140003efe: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140003f03: 57                          	push	rdi
140003f04: 41 56                       	push	r14
140003f06: 41 57                       	push	r15
140003f08: 48 83 ec 20                 	sub	rsp, 32
140003f0c: 48 8b 01                    	mov	rax, qword ptr [rcx]
140003f0f: 48 8b f1                    	mov	rsi, rcx
140003f12: 48 8b 18                    	mov	rbx, qword ptr [rax]
140003f15: 48 85 db                    	test	rbx, rbx
140003f18: 75 08                       	jne	0x140003f22 <.text+0x2f22>
140003f1a: 83 c8 ff                    	or	eax, -1
140003f1d: e9 cf 00 00 00              	jmp	0x140003ff1 <.text+0x2ff1>
140003f22: 4c 8b 05 ff 30 01 00        	mov	r8, qword ptr [rip + 78079] # 0x140017028
140003f29: 41 8b c8                    	mov	ecx, r8d
140003f2c: 49 8b f8                    	mov	rdi, r8
140003f2f: 48 33 3b                    	xor	rdi, qword ptr [rbx]
140003f32: 83 e1 3f                    	and	ecx, 63
140003f35: 48 8b 5b 08                 	mov	rbx, qword ptr [rbx + 8]
140003f39: 48 d3 cf                    	ror	rdi, cl
140003f3c: 49 33 d8                    	xor	rbx, r8
140003f3f: 48 d3 cb                    	ror	rbx, cl
140003f42: 48 8d 47 ff                 	lea	rax, [rdi - 1]
140003f46: 48 83 f8 fd                 	cmp	rax, -3
140003f4a: 0f 87 9f 00 00 00           	ja	0x140003fef <.text+0x2fef>
140003f50: 41 8b c8                    	mov	ecx, r8d
140003f53: 4d 8b f0                    	mov	r14, r8
140003f56: 83 e1 3f                    	and	ecx, 63
140003f59: 4c 8b ff                    	mov	r15, rdi
140003f5c: 48 8b eb                    	mov	rbp, rbx
140003f5f: 48 83 eb 08                 	sub	rbx, 8
140003f63: 48 3b df                    	cmp	rbx, rdi
140003f66: 72 55                       	jb	0x140003fbd <.text+0x2fbd>
140003f68: 48 8b 03                    	mov	rax, qword ptr [rbx]
140003f6b: 49 3b c6                    	cmp	rax, r14
140003f6e: 74 ef                       	je	0x140003f5f <.text+0x2f5f>
140003f70: 49 33 c0                    	xor	rax, r8
140003f73: 4c 89 33                    	mov	qword ptr [rbx], r14
140003f76: 48 d3 c8                    	ror	rax, cl
140003f79: ff 15 b1 a2 00 00           	call	qword ptr [rip + 41649] # 0x14000e230
140003f7f: 4c 8b 05 a2 30 01 00        	mov	r8, qword ptr [rip + 77986] # 0x140017028
140003f86: 48 8b 06                    	mov	rax, qword ptr [rsi]
140003f89: 41 8b c8                    	mov	ecx, r8d
140003f8c: 83 e1 3f                    	and	ecx, 63
140003f8f: 48 8b 10                    	mov	rdx, qword ptr [rax]
140003f92: 4c 8b 0a                    	mov	r9, qword ptr [rdx]
140003f95: 48 8b 42 08                 	mov	rax, qword ptr [rdx + 8]
140003f99: 4d 33 c8                    	xor	r9, r8
140003f9c: 49 33 c0                    	xor	rax, r8
140003f9f: 49 d3 c9                    	ror	r9, cl
140003fa2: 48 d3 c8                    	ror	rax, cl
140003fa5: 4d 3b cf                    	cmp	r9, r15
140003fa8: 75 05                       	jne	0x140003faf <.text+0x2faf>
140003faa: 48 3b c5                    	cmp	rax, rbp
140003fad: 74 b0                       	je	0x140003f5f <.text+0x2f5f>
140003faf: 4d 8b f9                    	mov	r15, r9
140003fb2: 49 8b f9                    	mov	rdi, r9
140003fb5: 48 8b e8                    	mov	rbp, rax
140003fb8: 48 8b d8                    	mov	rbx, rax
140003fbb: eb a2                       	jmp	0x140003f5f <.text+0x2f5f>
140003fbd: 48 83 ff ff                 	cmp	rdi, -1
140003fc1: 74 0f                       	je	0x140003fd2 <.text+0x2fd2>
140003fc3: 48 8b cf                    	mov	rcx, rdi
140003fc6: e8 ad 0e 00 00              	call	0x140004e78 <.text+0x3e78>
140003fcb: 4c 8b 05 56 30 01 00        	mov	r8, qword ptr [rip + 77910] # 0x140017028
140003fd2: 48 8b 06                    	mov	rax, qword ptr [rsi]
140003fd5: 48 8b 08                    	mov	rcx, qword ptr [rax]
140003fd8: 4c 89 01                    	mov	qword ptr [rcx], r8
140003fdb: 48 8b 06                    	mov	rax, qword ptr [rsi]
140003fde: 48 8b 08                    	mov	rcx, qword ptr [rax]
140003fe1: 4c 89 41 08                 	mov	qword ptr [rcx + 8], r8
140003fe5: 48 8b 06                    	mov	rax, qword ptr [rsi]
140003fe8: 48 8b 08                    	mov	rcx, qword ptr [rax]
140003feb: 4c 89 41 10                 	mov	qword ptr [rcx + 16], r8
140003fef: 33 c0                       	xor	eax, eax
140003ff1: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140003ff6: 48 8b 6c 24 48              	mov	rbp, qword ptr [rsp + 72]
140003ffb: 48 8b 74 24 50              	mov	rsi, qword ptr [rsp + 80]
140004000: 48 83 c4 20                 	add	rsp, 32
140004004: 41 5f                       	pop	r15
140004006: 41 5e                       	pop	r14
140004008: 5f                          	pop	rdi
140004009: c3                          	ret
14000400a: cc                          	int3
14000400b: cc                          	int3
14000400c: 48 8b d1                    	mov	rdx, rcx
14000400f: 48 8d 0d 5a 3d 01 00        	lea	rcx, [rip + 81242]      # 0x140017d70
140004016: e9 65 00 00 00              	jmp	0x140004080 <.text+0x3080>
14000401b: cc                          	int3
14000401c: 4c 8b dc                    	mov	r11, rsp
14000401f: 49 89 4b 08                 	mov	qword ptr [r11 + 8], rcx
140004023: 48 83 ec 38                 	sub	rsp, 56
140004027: 49 8d 43 08                 	lea	rax, [r11 + 8]
14000402b: 49 89 43 e8                 	mov	qword ptr [r11 - 24], rax
14000402f: 4d 8d 4b 18                 	lea	r9, [r11 + 24]
140004033: b8 02 00 00 00              	mov	eax, 2
140004038: 4d 8d 43 e8                 	lea	r8, [r11 - 24]
14000403c: 49 8d 53 20                 	lea	rdx, [r11 + 32]
140004040: 89 44 24 50                 	mov	dword ptr [rsp + 80], eax
140004044: 49 8d 4b 10                 	lea	rcx, [r11 + 16]
140004048: 89 44 24 58                 	mov	dword ptr [rsp + 88], eax
14000404c: e8 b7 fc ff ff              	call	0x140003d08 <.text+0x2d08>
140004051: 48 83 c4 38                 	add	rsp, 56
140004055: c3                          	ret
140004056: cc                          	int3
140004057: cc                          	int3
140004058: 48 85 c9                    	test	rcx, rcx
14000405b: 75 04                       	jne	0x140004061 <.text+0x3061>
14000405d: 83 c8 ff                    	or	eax, -1
140004060: c3                          	ret
140004061: 48 8b 41 10                 	mov	rax, qword ptr [rcx + 16]
140004065: 48 39 01                    	cmp	qword ptr [rcx], rax
140004068: 75 12                       	jne	0x14000407c <.text+0x307c>
14000406a: 48 8b 05 b7 2f 01 00        	mov	rax, qword ptr [rip + 77751] # 0x140017028
140004071: 48 89 01                    	mov	qword ptr [rcx], rax
140004074: 48 89 41 08                 	mov	qword ptr [rcx + 8], rax
140004078: 48 89 41 10                 	mov	qword ptr [rcx + 16], rax
14000407c: 33 c0                       	xor	eax, eax
14000407e: c3                          	ret
14000407f: cc                          	int3
140004080: 48 89 54 24 10              	mov	qword ptr [rsp + 16], rdx
140004085: 48 89 4c 24 08              	mov	qword ptr [rsp + 8], rcx
14000408a: 55                          	push	rbp
14000408b: 48 8b ec                    	mov	rbp, rsp
14000408e: 48 83 ec 40                 	sub	rsp, 64
140004092: 48 8d 45 10                 	lea	rax, [rbp + 16]
140004096: 48 89 45 e8                 	mov	qword ptr [rbp - 24], rax
14000409a: 4c 8d 4d 28                 	lea	r9, [rbp + 40]
14000409e: 48 8d 45 18                 	lea	rax, [rbp + 24]
1400040a2: 48 89 45 f0                 	mov	qword ptr [rbp - 16], rax
1400040a6: 4c 8d 45 e8                 	lea	r8, [rbp - 24]
1400040aa: b8 02 00 00 00              	mov	eax, 2
1400040af: 48 8d 55 e0                 	lea	rdx, [rbp - 32]
1400040b3: 48 8d 4d 20                 	lea	rcx, [rbp + 32]
1400040b7: 89 45 28                    	mov	dword ptr [rbp + 40], eax
1400040ba: 89 45 e0                    	mov	dword ptr [rbp - 32], eax
1400040bd: e8 0a fc ff ff              	call	0x140003ccc <.text+0x2ccc>
1400040c2: 48 83 c4 40                 	add	rsp, 64
1400040c6: 5d                          	pop	rbp
1400040c7: c3                          	ret
1400040c8: 48 8d 05 d1 34 01 00        	lea	rax, [rip + 79057]      # 0x1400175a0
1400040cf: 48 89 05 42 43 01 00        	mov	qword ptr [rip + 82754], rax # 0x140018418
1400040d6: b0 01                       	mov	al, 1
1400040d8: c3                          	ret
1400040d9: cc                          	int3
1400040da: cc                          	int3
1400040db: cc                          	int3
1400040dc: 48 83 ec 28                 	sub	rsp, 40
1400040e0: 48 8d 0d 89 3c 01 00        	lea	rcx, [rip + 81033]      # 0x140017d70
1400040e7: e8 6c ff ff ff              	call	0x140004058 <.text+0x3058>
1400040ec: 48 8d 0d 95 3c 01 00        	lea	rcx, [rip + 81045]      # 0x140017d88
1400040f3: e8 60 ff ff ff              	call	0x140004058 <.text+0x3058>
1400040f8: b0 01                       	mov	al, 1
1400040fa: 48 83 c4 28                 	add	rsp, 40
1400040fe: c3                          	ret
1400040ff: cc                          	int3
140004100: 48 83 ec 28                 	sub	rsp, 40
140004104: e8 db f5 ff ff              	call	0x1400036e4 <.text+0x26e4>
140004109: b0 01                       	mov	al, 1
14000410b: 48 83 c4 28                 	add	rsp, 40
14000410f: c3                          	ret
140004110: 40 53                       	push	rbx
140004112: 48 83 ec 20                 	sub	rsp, 32
140004116: 48 8b 1d 0b 2f 01 00        	mov	rbx, qword ptr [rip + 77579] # 0x140017028
14000411d: 48 8b cb                    	mov	rcx, rbx
140004120: e8 e3 0a 00 00              	call	0x140004c08 <.text+0x3c08>
140004125: 48 8b cb                    	mov	rcx, rbx
140004128: e8 2f 42 00 00              	call	0x14000835c <.text+0x735c>
14000412d: 48 8b cb                    	mov	rcx, rbx
140004130: e8 0b 43 00 00              	call	0x140008440 <.text+0x7440>
140004135: 48 8b cb                    	mov	rcx, rbx
140004138: e8 9f ee ff ff              	call	0x140002fdc <.text+0x1fdc>
14000413d: 48 8b cb                    	mov	rcx, rbx
140004140: e8 3f f9 ff ff              	call	0x140003a84 <.text+0x2a84>
140004145: b0 01                       	mov	al, 1
140004147: 48 83 c4 20                 	add	rsp, 32
14000414b: 5b                          	pop	rbx
14000414c: c3                          	ret
14000414d: cc                          	int3
14000414e: cc                          	int3
14000414f: cc                          	int3
140004150: 33 c9                       	xor	ecx, ecx
140004152: e9 49 db ff ff              	jmp	0x140001ca0 <.text+0xca0>
140004157: cc                          	int3
140004158: 40 53                       	push	rbx
14000415a: 48 83 ec 20                 	sub	rsp, 32
14000415e: 48 8b 0d 53 3c 01 00        	mov	rcx, qword ptr [rip + 80979] # 0x140017db8
140004165: 83 c8 ff                    	or	eax, -1
140004168: f0                          	lock
140004169: 0f c1 01                    	xadd	dword ptr [rcx], eax
14000416c: 83 f8 01                    	cmp	eax, 1
14000416f: 75 1f                       	jne	0x140004190 <.text+0x3190>
140004171: 48 8b 0d 40 3c 01 00        	mov	rcx, qword ptr [rip + 80960] # 0x140017db8
140004178: 48 8d 1d e1 2e 01 00        	lea	rbx, [rip + 77537]      # 0x140017060
14000417f: 48 3b cb                    	cmp	rcx, rbx
140004182: 74 0c                       	je	0x140004190 <.text+0x3190>
140004184: e8 ef 0c 00 00              	call	0x140004e78 <.text+0x3e78>
140004189: 48 89 1d 28 3c 01 00        	mov	qword ptr [rip + 80936], rbx # 0x140017db8
140004190: b0 01                       	mov	al, 1
140004192: 48 83 c4 20                 	add	rsp, 32
140004196: 5b                          	pop	rbx
140004197: c3                          	ret
140004198: 48 83 ec 28                 	sub	rsp, 40
14000419c: 48 8b 0d 75 44 01 00        	mov	rcx, qword ptr [rip + 83061] # 0x140018618
1400041a3: e8 d0 0c 00 00              	call	0x140004e78 <.text+0x3e78>
1400041a8: 48 8b 0d 71 44 01 00        	mov	rcx, qword ptr [rip + 83057] # 0x140018620
1400041af: 48 83 25 61 44 01 00 00     	and	qword ptr [rip + 83041], 0 # 0x140018618
1400041b7: e8 bc 0c 00 00              	call	0x140004e78 <.text+0x3e78>
1400041bc: 48 8b 0d 7d 3b 01 00        	mov	rcx, qword ptr [rip + 80765] # 0x140017d40
1400041c3: 48 83 25 55 44 01 00 00     	and	qword ptr [rip + 83029], 0 # 0x140018620
1400041cb: e8 a8 0c 00 00              	call	0x140004e78 <.text+0x3e78>
1400041d0: 48 8b 0d 71 3b 01 00        	mov	rcx, qword ptr [rip + 80753] # 0x140017d48
1400041d7: 48 83 25 61 3b 01 00 00     	and	qword ptr [rip + 80737], 0 # 0x140017d40
1400041df: e8 94 0c 00 00              	call	0x140004e78 <.text+0x3e78>
1400041e4: 48 83 25 5c 3b 01 00 00     	and	qword ptr [rip + 80732], 0 # 0x140017d48
1400041ec: b0 01                       	mov	al, 1
1400041ee: 48 83 c4 28                 	add	rsp, 40
1400041f2: c3                          	ret
1400041f3: cc                          	int3
1400041f4: 48 8d 15 35 b2 00 00        	lea	rdx, [rip + 45621]      # 0x14000f430
1400041fb: 48 8d 0d 2e b1 00 00        	lea	rcx, [rip + 45358]      # 0x14000f330
140004202: e9 99 40 00 00              	jmp	0x1400082a0 <.text+0x72a0>
140004207: cc                          	int3
140004208: 48 83 ec 28                 	sub	rsp, 40
14000420c: 84 c9                       	test	cl, cl
14000420e: 74 16                       	je	0x140004226 <.text+0x3226>
140004210: 48 83 3d f8 43 01 00 00     	cmp	qword ptr [rip + 82936], 0 # 0x140018610
140004218: 74 05                       	je	0x14000421f <.text+0x321f>
14000421a: e8 51 47 00 00              	call	0x140008970 <.text+0x7970>
14000421f: b0 01                       	mov	al, 1
140004221: 48 83 c4 28                 	add	rsp, 40
140004225: c3                          	ret
140004226: 48 8d 15 03 b2 00 00        	lea	rdx, [rip + 45571]      # 0x14000f430
14000422d: 48 8d 0d fc b0 00 00        	lea	rcx, [rip + 45308]      # 0x14000f330
140004234: 48 83 c4 28                 	add	rsp, 40
140004238: e9 e3 40 00 00              	jmp	0x140008320 <.text+0x7320>
14000423d: cc                          	int3
14000423e: cc                          	int3
14000423f: cc                          	int3
140004240: 48 83 ec 28                 	sub	rsp, 40
140004244: e8 bb 05 00 00              	call	0x140004804 <.text+0x3804>
140004249: 48 8b 40 18                 	mov	rax, qword ptr [rax + 24]
14000424d: 48 85 c0                    	test	rax, rax
140004250: 74 08                       	je	0x14000425a <.text+0x325a>
140004252: ff 15 d8 9f 00 00           	call	qword ptr [rip + 40920] # 0x14000e230
140004258: eb 00                       	jmp	0x14000425a <.text+0x325a>
14000425a: e8 75 00 00 00              	call	0x1400042d4 <.text+0x32d4>
14000425f: 90                          	nop
140004260: c7 44 24 10 00 00 00 00     	mov	dword ptr [rsp + 16], 0
140004268: 8b 44 24 10                 	mov	eax, dword ptr [rsp + 16]
14000426c: e9 07 0c 00 00              	jmp	0x140004e78 <.text+0x3e78>
140004271: cc                          	int3
140004272: cc                          	int3
140004273: cc                          	int3
140004274: 40 53                       	push	rbx
140004276: 48 83 ec 20                 	sub	rsp, 32
14000427a: 33 db                       	xor	ebx, ebx
14000427c: 48 85 c9                    	test	rcx, rcx
14000427f: 74 0c                       	je	0x14000428d <.text+0x328d>
140004281: 48 85 d2                    	test	rdx, rdx
140004284: 74 07                       	je	0x14000428d <.text+0x328d>
140004286: 4d 85 c0                    	test	r8, r8
140004289: 75 1b                       	jne	0x1400042a6 <.text+0x32a6>
14000428b: 88 19                       	mov	byte ptr [rcx], bl
14000428d: e8 4e 0b 00 00              	call	0x140004de0 <.text+0x3de0>
140004292: bb 16 00 00 00              	mov	ebx, 22
140004297: 89 18                       	mov	dword ptr [rax], ebx
140004299: e8 22 0a 00 00              	call	0x140004cc0 <.text+0x3cc0>
14000429e: 8b c3                       	mov	eax, ebx
1400042a0: 48 83 c4 20                 	add	rsp, 32
1400042a4: 5b                          	pop	rbx
1400042a5: c3                          	ret
1400042a6: 4c 8b c9                    	mov	r9, rcx
1400042a9: 4c 2b c1                    	sub	r8, rcx
1400042ac: 43 8a 04 08                 	mov	al, byte ptr [r8 + r9]
1400042b0: 41 88 01                    	mov	byte ptr [r9], al
1400042b3: 49 ff c1                    	inc	r9
1400042b6: 84 c0                       	test	al, al
1400042b8: 74 06                       	je	0x1400042c0 <.text+0x32c0>
1400042ba: 48 83 ea 01                 	sub	rdx, 1
1400042be: 75 ec                       	jne	0x1400042ac <.text+0x32ac>
1400042c0: 48 85 d2                    	test	rdx, rdx
1400042c3: 75 d9                       	jne	0x14000429e <.text+0x329e>
1400042c5: 88 19                       	mov	byte ptr [rcx], bl
1400042c7: e8 14 0b 00 00              	call	0x140004de0 <.text+0x3de0>
1400042cc: bb 22 00 00 00              	mov	ebx, 34
1400042d1: eb c4                       	jmp	0x140004297 <.text+0x3297>
1400042d3: cc                          	int3
1400042d4: 48 83 ec 28                 	sub	rsp, 40
1400042d8: e8 33 41 00 00              	call	0x140008410 <.text+0x7410>
1400042dd: 48 85 c0                    	test	rax, rax
1400042e0: 74 0a                       	je	0x1400042ec <.text+0x32ec>
1400042e2: b9 16 00 00 00              	mov	ecx, 22
1400042e7: e8 74 41 00 00              	call	0x140008460 <.text+0x7460>
1400042ec: f6 05 4d 2d 01 00 02        	test	byte ptr [rip + 77133], 2 # 0x140017040
1400042f3: 74 2a                       	je	0x14000431f <.text+0x331f>
1400042f5: b9 17 00 00 00              	mov	ecx, 23
1400042fa: ff 15 60 9d 00 00           	call	qword ptr [rip + 40288] # 0x14000e060
140004300: 85 c0                       	test	eax, eax
140004302: 74 07                       	je	0x14000430b <.text+0x330b>
140004304: b9 07 00 00 00              	mov	ecx, 7
140004309: cd 29                       	int	41
14000430b: 41 b8 01 00 00 00           	mov	r8d, 1
140004311: ba 15 00 00 40              	mov	edx, 1073741845
140004316: 41 8d 48 02                 	lea	ecx, [r8 + 2]
14000431a: e8 8d 07 00 00              	call	0x140004aac <.text+0x3aac>
14000431f: b9 03 00 00 00              	mov	ecx, 3
140004324: e8 83 f7 ff ff              	call	0x140003aac <.text+0x2aac>
140004329: cc                          	int3
14000432a: cc                          	int3
14000432b: cc                          	int3
14000432c: e9 cf 0a 00 00              	jmp	0x140004e00 <.text+0x3e00>
140004331: cc                          	int3
140004332: cc                          	int3
140004333: cc                          	int3
140004334: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004339: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000433e: 57                          	push	rdi
14000433f: 48 83 ec 20                 	sub	rsp, 32
140004343: c6 41 18 00                 	mov	byte ptr [rcx + 24], 0
140004347: 48 8b f9                    	mov	rdi, rcx
14000434a: 48 8d 71 08                 	lea	rsi, [rcx + 8]
14000434e: 48 85 d2                    	test	rdx, rdx
140004351: 74 05                       	je	0x140004358 <.text+0x3358>
140004353: 0f 10 02                    	movups	xmm0, xmmword ptr [rdx]
140004356: eb 10                       	jmp	0x140004368 <.text+0x3368>
140004358: 83 3d 01 3a 01 00 00        	cmp	dword ptr [rip + 80385], 0 # 0x140017d60
14000435f: 75 0d                       	jne	0x14000436e <.text+0x336e>
140004361: 0f 10 05 90 33 01 00        	movups	xmm0, xmmword ptr [rip + 78736] # 0x1400176f8
140004368: f3 0f 7f 06                 	movdqu	xmmword ptr [rsi], xmm0
14000436c: eb 4e                       	jmp	0x1400043bc <.text+0x33bc>
14000436e: e8 91 04 00 00              	call	0x140004804 <.text+0x3804>
140004373: 48 89 07                    	mov	qword ptr [rdi], rax
140004376: 48 8b d6                    	mov	rdx, rsi
140004379: 48 8b 88 90 00 00 00        	mov	rcx, qword ptr [rax + 144]
140004380: 48 89 0e                    	mov	qword ptr [rsi], rcx
140004383: 48 8b 88 88 00 00 00        	mov	rcx, qword ptr [rax + 136]
14000438a: 48 89 4f 10                 	mov	qword ptr [rdi + 16], rcx
14000438e: 48 8b c8                    	mov	rcx, rax
140004391: e8 fe 48 00 00              	call	0x140008c94 <.text+0x7c94>
140004396: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
140004399: 48 8d 57 10                 	lea	rdx, [rdi + 16]
14000439d: e8 26 49 00 00              	call	0x140008cc8 <.text+0x7cc8>
1400043a2: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
1400043a5: 8b 81 a8 03 00 00           	mov	eax, dword ptr [rcx + 936]
1400043ab: a8 02                       	test	al, 2
1400043ad: 75 0d                       	jne	0x1400043bc <.text+0x33bc>
1400043af: 83 c8 02                    	or	eax, 2
1400043b2: 89 81 a8 03 00 00           	mov	dword ptr [rcx + 936], eax
1400043b8: c6 47 18 01                 	mov	byte ptr [rdi + 24], 1
1400043bc: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400043c1: 48 8b c7                    	mov	rax, rdi
1400043c4: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
1400043c9: 48 83 c4 20                 	add	rsp, 32
1400043cd: 5f                          	pop	rdi
1400043ce: c3                          	ret
1400043cf: cc                          	int3
1400043d0: cc                          	int3
1400043d1: cc                          	int3
1400043d2: cc                          	int3
1400043d3: cc                          	int3
1400043d4: cc                          	int3
1400043d5: cc                          	int3
1400043d6: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
1400043e0: 48 2b d1                    	sub	rdx, rcx
1400043e3: 4d 85 c0                    	test	r8, r8
1400043e6: 74 6a                       	je	0x140004452 <.text+0x3452>
1400043e8: f7 c1 07 00 00 00           	test	ecx, 7
1400043ee: 74 1d                       	je	0x14000440d <.text+0x340d>
1400043f0: 0f b6 01                    	movzx	eax, byte ptr [rcx]
1400043f3: 3a 04 0a                    	cmp	al, byte ptr [rdx + rcx]
1400043f6: 75 5d                       	jne	0x140004455 <.text+0x3455>
1400043f8: 48 ff c1                    	inc	rcx
1400043fb: 49 ff c8                    	dec	r8
1400043fe: 74 52                       	je	0x140004452 <.text+0x3452>
140004400: 84 c0                       	test	al, al
140004402: 74 4e                       	je	0x140004452 <.text+0x3452>
140004404: 48 f7 c1 07 00 00 00        	test	rcx, 7
14000440b: 75 e3                       	jne	0x1400043f0 <.text+0x33f0>
14000440d: 49 bb 80 80 80 80 80 80 80 80       	movabs	r11, -9187201950435737472
140004417: 49 ba ff fe fe fe fe fe fe fe       	movabs	r10, -72340172838076673
140004421: 8d 04 0a                    	lea	eax, [rdx + rcx]
140004424: 25 ff 0f 00 00              	and	eax, 4095
140004429: 3d f8 0f 00 00              	cmp	eax, 4088
14000442e: 77 c0                       	ja	0x1400043f0 <.text+0x33f0>
140004430: 48 8b 01                    	mov	rax, qword ptr [rcx]
140004433: 48 3b 04 0a                 	cmp	rax, qword ptr [rdx + rcx]
140004437: 75 b7                       	jne	0x1400043f0 <.text+0x33f0>
140004439: 48 83 c1 08                 	add	rcx, 8
14000443d: 49 83 e8 08                 	sub	r8, 8
140004441: 76 0f                       	jbe	0x140004452 <.text+0x3452>
140004443: 4d 8d 0c 02                 	lea	r9, [r10 + rax]
140004447: 48 f7 d0                    	not	rax
14000444a: 49 23 c1                    	and	rax, r9
14000444d: 49 85 c3                    	test	r11, rax
140004450: 74 cf                       	je	0x140004421 <.text+0x3421>
140004452: 33 c0                       	xor	eax, eax
140004454: c3                          	ret
140004455: 48 1b c0                    	sbb	rax, rax
140004458: 48 83 c8 01                 	or	rax, 1
14000445c: c3                          	ret
14000445d: cc                          	int3
14000445e: cc                          	int3
14000445f: cc                          	int3
140004460: 4d 85 c0                    	test	r8, r8
140004463: 75 18                       	jne	0x14000447d <.text+0x347d>
140004465: 33 c0                       	xor	eax, eax
140004467: c3                          	ret
140004468: 0f b7 01                    	movzx	eax, word ptr [rcx]
14000446b: 66 85 c0                    	test	ax, ax
14000446e: 74 13                       	je	0x140004483 <.text+0x3483>
140004470: 66 3b 02                    	cmp	ax, word ptr [rdx]
140004473: 75 0e                       	jne	0x140004483 <.text+0x3483>
140004475: 48 83 c1 02                 	add	rcx, 2
140004479: 48 83 c2 02                 	add	rdx, 2
14000447d: 49 83 e8 01                 	sub	r8, 1
140004481: 75 e5                       	jne	0x140004468 <.text+0x3468>
140004483: 0f b7 01                    	movzx	eax, word ptr [rcx]
140004486: 0f b7 0a                    	movzx	ecx, word ptr [rdx]
140004489: 2b c1                       	sub	eax, ecx
14000448b: c3                          	ret
14000448c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004491: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140004496: 57                          	push	rdi
140004497: 48 83 ec 20                 	sub	rsp, 32
14000449b: 49 8b d9                    	mov	rbx, r9
14000449e: 49 8b f8                    	mov	rdi, r8
1400044a1: 8b 0a                       	mov	ecx, dword ptr [rdx]
1400044a3: e8 5c 27 00 00              	call	0x140006c04 <.text+0x5c04>
1400044a8: 90                          	nop
1400044a9: 48 8b 07                    	mov	rax, qword ptr [rdi]
1400044ac: 48 8b 08                    	mov	rcx, qword ptr [rax]
1400044af: 48 8b 81 88 00 00 00        	mov	rax, qword ptr [rcx + 136]
1400044b6: f0                          	lock
1400044b7: ff 00                       	inc	dword ptr [rax]
1400044b9: 8b 0b                       	mov	ecx, dword ptr [rbx]
1400044bb: e8 98 27 00 00              	call	0x140006c58 <.text+0x5c58>
1400044c0: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400044c5: 48 83 c4 20                 	add	rsp, 32
1400044c9: 5f                          	pop	rdi
1400044ca: c3                          	ret
1400044cb: cc                          	int3
1400044cc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400044d1: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
1400044d6: 57                          	push	rdi
1400044d7: 48 83 ec 20                 	sub	rsp, 32
1400044db: 49 8b d9                    	mov	rbx, r9
1400044de: 49 8b f8                    	mov	rdi, r8
1400044e1: 8b 0a                       	mov	ecx, dword ptr [rdx]
1400044e3: e8 1c 27 00 00              	call	0x140006c04 <.text+0x5c04>
1400044e8: 90                          	nop
1400044e9: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
1400044ec: 33 d2                       	xor	edx, edx
1400044ee: 48 8b 09                    	mov	rcx, qword ptr [rcx]
1400044f1: e8 a6 02 00 00              	call	0x14000479c <.text+0x379c>
1400044f6: 90                          	nop
1400044f7: 8b 0b                       	mov	ecx, dword ptr [rbx]
1400044f9: e8 5a 27 00 00              	call	0x140006c58 <.text+0x5c58>
1400044fe: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140004503: 48 83 c4 20                 	add	rsp, 32
140004507: 5f                          	pop	rdi
140004508: c3                          	ret
140004509: cc                          	int3
14000450a: cc                          	int3
14000450b: cc                          	int3
14000450c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004511: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140004516: 57                          	push	rdi
140004517: 48 83 ec 20                 	sub	rsp, 32
14000451b: 49 8b d9                    	mov	rbx, r9
14000451e: 49 8b f8                    	mov	rdi, r8
140004521: 8b 0a                       	mov	ecx, dword ptr [rdx]
140004523: e8 dc 26 00 00              	call	0x140006c04 <.text+0x5c04>
140004528: 90                          	nop
140004529: 48 8b 47 08                 	mov	rax, qword ptr [rdi + 8]
14000452d: 48 8b 10                    	mov	rdx, qword ptr [rax]
140004530: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
140004533: 48 8b 12                    	mov	rdx, qword ptr [rdx]
140004536: 48 8b 09                    	mov	rcx, qword ptr [rcx]
140004539: e8 5e 02 00 00              	call	0x14000479c <.text+0x379c>
14000453e: 90                          	nop
14000453f: 8b 0b                       	mov	ecx, dword ptr [rbx]
140004541: e8 12 27 00 00              	call	0x140006c58 <.text+0x5c58>
140004546: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000454b: 48 83 c4 20                 	add	rsp, 32
14000454f: 5f                          	pop	rdi
140004550: c3                          	ret
140004551: cc                          	int3
140004552: cc                          	int3
140004553: cc                          	int3
140004554: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004559: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
14000455e: 57                          	push	rdi
14000455f: 48 83 ec 20                 	sub	rsp, 32
140004563: 49 8b d9                    	mov	rbx, r9
140004566: 49 8b f8                    	mov	rdi, r8
140004569: 8b 0a                       	mov	ecx, dword ptr [rdx]
14000456b: e8 94 26 00 00              	call	0x140006c04 <.text+0x5c04>
140004570: 90                          	nop
140004571: 48 8b 07                    	mov	rax, qword ptr [rdi]
140004574: 48 8b 08                    	mov	rcx, qword ptr [rax]
140004577: 48 8b 89 88 00 00 00        	mov	rcx, qword ptr [rcx + 136]
14000457e: 48 85 c9                    	test	rcx, rcx
140004581: 74 1e                       	je	0x1400045a1 <.text+0x35a1>
140004583: 83 c8 ff                    	or	eax, -1
140004586: f0                          	lock
140004587: 0f c1 01                    	xadd	dword ptr [rcx], eax
14000458a: 83 f8 01                    	cmp	eax, 1
14000458d: 75 12                       	jne	0x1400045a1 <.text+0x35a1>
14000458f: 48 8d 05 ca 2a 01 00        	lea	rax, [rip + 76490]      # 0x140017060
140004596: 48 3b c8                    	cmp	rcx, rax
140004599: 74 06                       	je	0x1400045a1 <.text+0x35a1>
14000459b: e8 d8 08 00 00              	call	0x140004e78 <.text+0x3e78>
1400045a0: 90                          	nop
1400045a1: 8b 0b                       	mov	ecx, dword ptr [rbx]
1400045a3: e8 b0 26 00 00              	call	0x140006c58 <.text+0x5c58>
1400045a8: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400045ad: 48 83 c4 20                 	add	rsp, 32
1400045b1: 5f                          	pop	rdi
1400045b2: c3                          	ret
1400045b3: cc                          	int3
1400045b4: 40 55                       	push	rbp
1400045b6: 48 8b ec                    	mov	rbp, rsp
1400045b9: 48 83 ec 50                 	sub	rsp, 80
1400045bd: 48 89 4d d8                 	mov	qword ptr [rbp - 40], rcx
1400045c1: 48 8d 45 d8                 	lea	rax, [rbp - 40]
1400045c5: 48 89 45 e8                 	mov	qword ptr [rbp - 24], rax
1400045c9: 4c 8d 4d 20                 	lea	r9, [rbp + 32]
1400045cd: ba 01 00 00 00              	mov	edx, 1
1400045d2: 4c 8d 45 e8                 	lea	r8, [rbp - 24]
1400045d6: b8 05 00 00 00              	mov	eax, 5
1400045db: 89 45 20                    	mov	dword ptr [rbp + 32], eax
1400045de: 89 45 28                    	mov	dword ptr [rbp + 40], eax
1400045e1: 48 8d 45 d8                 	lea	rax, [rbp - 40]
1400045e5: 48 89 45 f0                 	mov	qword ptr [rbp - 16], rax
1400045e9: 48 8d 45 e0                 	lea	rax, [rbp - 32]
1400045ed: 48 89 45 f8                 	mov	qword ptr [rbp - 8], rax
1400045f1: b8 04 00 00 00              	mov	eax, 4
1400045f6: 89 45 d0                    	mov	dword ptr [rbp - 48], eax
1400045f9: 89 45 d4                    	mov	dword ptr [rbp - 44], eax
1400045fc: 48 8d 05 15 3e 01 00        	lea	rax, [rip + 81429]      # 0x140018418
140004603: 48 89 45 e0                 	mov	qword ptr [rbp - 32], rax
140004607: 89 51 28                    	mov	dword ptr [rcx + 40], edx
14000460a: 48 8d 0d 1f ac 00 00        	lea	rcx, [rip + 44063]      # 0x14000f230
140004611: 48 8b 45 d8                 	mov	rax, qword ptr [rbp - 40]
140004615: 48 89 08                    	mov	qword ptr [rax], rcx
140004618: 48 8d 0d 41 2a 01 00        	lea	rcx, [rip + 76353]      # 0x140017060
14000461f: 48 8b 45 d8                 	mov	rax, qword ptr [rbp - 40]
140004623: 89 90 a8 03 00 00           	mov	dword ptr [rax + 936], edx
140004629: 48 8b 45 d8                 	mov	rax, qword ptr [rbp - 40]
14000462d: 48 89 88 88 00 00 00        	mov	qword ptr [rax + 136], rcx
140004634: 8d 4a 42                    	lea	ecx, [rdx + 66]
140004637: 48 8b 45 d8                 	mov	rax, qword ptr [rbp - 40]
14000463b: 48 8d 55 28                 	lea	rdx, [rbp + 40]
14000463f: 66 89 88 bc 00 00 00        	mov	word ptr [rax + 188], cx
140004646: 48 8b 45 d8                 	mov	rax, qword ptr [rbp - 40]
14000464a: 66 89 88 c2 01 00 00        	mov	word ptr [rax + 450], cx
140004651: 48 8d 4d 18                 	lea	rcx, [rbp + 24]
140004655: 48 8b 45 d8                 	mov	rax, qword ptr [rbp - 40]
140004659: 48 83 a0 a0 03 00 00 00     	and	qword ptr [rax + 928], 0
140004661: e8 26 fe ff ff              	call	0x14000448c <.text+0x348c>
140004666: 4c 8d 4d d0                 	lea	r9, [rbp - 48]
14000466a: 4c 8d 45 f0                 	lea	r8, [rbp - 16]
14000466e: 48 8d 55 d4                 	lea	rdx, [rbp - 44]
140004672: 48 8d 4d 18                 	lea	rcx, [rbp + 24]
140004676: e8 91 fe ff ff              	call	0x14000450c <.text+0x350c>
14000467b: 48 83 c4 50                 	add	rsp, 80
14000467f: 5d                          	pop	rbp
140004680: c3                          	ret
140004681: cc                          	int3
140004682: cc                          	int3
140004683: cc                          	int3
140004684: 48 85 c9                    	test	rcx, rcx
140004687: 74 1a                       	je	0x1400046a3 <.text+0x36a3>
140004689: 53                          	push	rbx
14000468a: 48 83 ec 20                 	sub	rsp, 32
14000468e: 48 8b d9                    	mov	rbx, rcx
140004691: e8 0e 00 00 00              	call	0x1400046a4 <.text+0x36a4>
140004696: 48 8b cb                    	mov	rcx, rbx
140004699: e8 da 07 00 00              	call	0x140004e78 <.text+0x3e78>
14000469e: 48 83 c4 20                 	add	rsp, 32
1400046a2: 5b                          	pop	rbx
1400046a3: c3                          	ret
1400046a4: 40 55                       	push	rbp
1400046a6: 48 8b ec                    	mov	rbp, rsp
1400046a9: 48 83 ec 40                 	sub	rsp, 64
1400046ad: 48 8d 45 e8                 	lea	rax, [rbp - 24]
1400046b1: 48 89 4d e8                 	mov	qword ptr [rbp - 24], rcx
1400046b5: 48 89 45 f0                 	mov	qword ptr [rbp - 16], rax
1400046b9: 48 8d 15 70 ab 00 00        	lea	rdx, [rip + 43888]      # 0x14000f230
1400046c0: b8 05 00 00 00              	mov	eax, 5
1400046c5: 89 45 20                    	mov	dword ptr [rbp + 32], eax
1400046c8: 89 45 28                    	mov	dword ptr [rbp + 40], eax
1400046cb: 48 8d 45 e8                 	lea	rax, [rbp - 24]
1400046cf: 48 89 45 f8                 	mov	qword ptr [rbp - 8], rax
1400046d3: b8 04 00 00 00              	mov	eax, 4
1400046d8: 89 45 e0                    	mov	dword ptr [rbp - 32], eax
1400046db: 89 45 e4                    	mov	dword ptr [rbp - 28], eax
1400046de: 48 8b 01                    	mov	rax, qword ptr [rcx]
1400046e1: 48 3b c2                    	cmp	rax, rdx
1400046e4: 74 0c                       	je	0x1400046f2 <.text+0x36f2>
1400046e6: 48 8b c8                    	mov	rcx, rax
1400046e9: e8 8a 07 00 00              	call	0x140004e78 <.text+0x3e78>
1400046ee: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
1400046f2: 48 8b 49 70                 	mov	rcx, qword ptr [rcx + 112]
1400046f6: e8 7d 07 00 00              	call	0x140004e78 <.text+0x3e78>
1400046fb: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
1400046ff: 48 8b 49 58                 	mov	rcx, qword ptr [rcx + 88]
140004703: e8 70 07 00 00              	call	0x140004e78 <.text+0x3e78>
140004708: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
14000470c: 48 8b 49 60                 	mov	rcx, qword ptr [rcx + 96]
140004710: e8 63 07 00 00              	call	0x140004e78 <.text+0x3e78>
140004715: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
140004719: 48 8b 49 68                 	mov	rcx, qword ptr [rcx + 104]
14000471d: e8 56 07 00 00              	call	0x140004e78 <.text+0x3e78>
140004722: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
140004726: 48 8b 49 48                 	mov	rcx, qword ptr [rcx + 72]
14000472a: e8 49 07 00 00              	call	0x140004e78 <.text+0x3e78>
14000472f: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
140004733: 48 8b 49 50                 	mov	rcx, qword ptr [rcx + 80]
140004737: e8 3c 07 00 00              	call	0x140004e78 <.text+0x3e78>
14000473c: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
140004740: 48 8b 49 78                 	mov	rcx, qword ptr [rcx + 120]
140004744: e8 2f 07 00 00              	call	0x140004e78 <.text+0x3e78>
140004749: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
14000474d: 48 8b 89 80 00 00 00        	mov	rcx, qword ptr [rcx + 128]
140004754: e8 1f 07 00 00              	call	0x140004e78 <.text+0x3e78>
140004759: 48 8b 4d e8                 	mov	rcx, qword ptr [rbp - 24]
14000475d: 48 8b 89 c0 03 00 00        	mov	rcx, qword ptr [rcx + 960]
140004764: e8 0f 07 00 00              	call	0x140004e78 <.text+0x3e78>
140004769: 4c 8d 4d 20                 	lea	r9, [rbp + 32]
14000476d: 4c 8d 45 f0                 	lea	r8, [rbp - 16]
140004771: 48 8d 55 28                 	lea	rdx, [rbp + 40]
140004775: 48 8d 4d 18                 	lea	rcx, [rbp + 24]
140004779: e8 d6 fd ff ff              	call	0x140004554 <.text+0x3554>
14000477e: 4c 8d 4d e0                 	lea	r9, [rbp - 32]
140004782: 4c 8d 45 f8                 	lea	r8, [rbp - 8]
140004786: 48 8d 55 e4                 	lea	rdx, [rbp - 28]
14000478a: 48 8d 4d 18                 	lea	rcx, [rbp + 24]
14000478e: e8 39 fd ff ff              	call	0x1400044cc <.text+0x34cc>
140004793: 48 83 c4 40                 	add	rsp, 64
140004797: 5d                          	pop	rbp
140004798: c3                          	ret
140004799: cc                          	int3
14000479a: cc                          	int3
14000479b: cc                          	int3
14000479c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400047a1: 57                          	push	rdi
1400047a2: 48 83 ec 20                 	sub	rsp, 32
1400047a6: 48 8b f9                    	mov	rdi, rcx
1400047a9: 48 8b da                    	mov	rbx, rdx
1400047ac: 48 8b 89 90 00 00 00        	mov	rcx, qword ptr [rcx + 144]
1400047b3: 48 85 c9                    	test	rcx, rcx
1400047b6: 74 2c                       	je	0x1400047e4 <.text+0x37e4>
1400047b8: e8 2f 32 00 00              	call	0x1400079ec <.text+0x69ec>
1400047bd: 48 8b 8f 90 00 00 00        	mov	rcx, qword ptr [rdi + 144]
1400047c4: 48 3b 0d 4d 3c 01 00        	cmp	rcx, qword ptr [rip + 80973] # 0x140018418
1400047cb: 74 17                       	je	0x1400047e4 <.text+0x37e4>
1400047cd: 48 8d 05 cc 2d 01 00        	lea	rax, [rip + 77260]      # 0x1400175a0
1400047d4: 48 3b c8                    	cmp	rcx, rax
1400047d7: 74 0b                       	je	0x1400047e4 <.text+0x37e4>
1400047d9: 83 79 10 00                 	cmp	dword ptr [rcx + 16], 0
1400047dd: 75 05                       	jne	0x1400047e4 <.text+0x37e4>
1400047df: e8 08 30 00 00              	call	0x1400077ec <.text+0x67ec>
1400047e4: 48 89 9f 90 00 00 00        	mov	qword ptr [rdi + 144], rbx
1400047eb: 48 85 db                    	test	rbx, rbx
1400047ee: 74 08                       	je	0x1400047f8 <.text+0x37f8>
1400047f0: 48 8b cb                    	mov	rcx, rbx
1400047f3: e8 68 2f 00 00              	call	0x140007760 <.text+0x6760>
1400047f8: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400047fd: 48 83 c4 20                 	add	rsp, 32
140004801: 5f                          	pop	rdi
140004802: c3                          	ret
140004803: cc                          	int3
140004804: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004809: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000480e: 57                          	push	rdi
14000480f: 48 83 ec 20                 	sub	rsp, 32
140004813: ff 15 67 98 00 00           	call	qword ptr [rip + 39015] # 0x14000e080
140004819: 8b 0d 31 28 01 00           	mov	ecx, dword ptr [rip + 75825] # 0x140017050
14000481f: 8b d8                       	mov	ebx, eax
140004821: 83 f9 ff                    	cmp	ecx, -1
140004824: 74 1f                       	je	0x140004845 <.text+0x3845>
140004826: e8 11 37 00 00              	call	0x140007f3c <.text+0x6f3c>
14000482b: 48 8b f8                    	mov	rdi, rax
14000482e: 48 85 c0                    	test	rax, rax
140004831: 74 0c                       	je	0x14000483f <.text+0x383f>
140004833: 48 83 f8 ff                 	cmp	rax, -1
140004837: 75 73                       	jne	0x1400048ac <.text+0x38ac>
140004839: 33 ff                       	xor	edi, edi
14000483b: 33 f6                       	xor	esi, esi
14000483d: eb 70                       	jmp	0x1400048af <.text+0x38af>
14000483f: 8b 0d 0b 28 01 00           	mov	ecx, dword ptr [rip + 75787] # 0x140017050
140004845: 48 83 ca ff                 	or	rdx, -1
140004849: e8 36 37 00 00              	call	0x140007f84 <.text+0x6f84>
14000484e: 85 c0                       	test	eax, eax
140004850: 74 e7                       	je	0x140004839 <.text+0x3839>
140004852: ba c8 03 00 00              	mov	edx, 968
140004857: b9 01 00 00 00              	mov	ecx, 1
14000485c: e8 9f 05 00 00              	call	0x140004e00 <.text+0x3e00>
140004861: 8b 0d e9 27 01 00           	mov	ecx, dword ptr [rip + 75753] # 0x140017050
140004867: 48 8b f8                    	mov	rdi, rax
14000486a: 48 85 c0                    	test	rax, rax
14000486d: 75 10                       	jne	0x14000487f <.text+0x387f>
14000486f: 33 d2                       	xor	edx, edx
140004871: e8 0e 37 00 00              	call	0x140007f84 <.text+0x6f84>
140004876: 33 c9                       	xor	ecx, ecx
140004878: e8 fb 05 00 00              	call	0x140004e78 <.text+0x3e78>
14000487d: eb ba                       	jmp	0x140004839 <.text+0x3839>
14000487f: 48 8b d7                    	mov	rdx, rdi
140004882: e8 fd 36 00 00              	call	0x140007f84 <.text+0x6f84>
140004887: 85 c0                       	test	eax, eax
140004889: 75 12                       	jne	0x14000489d <.text+0x389d>
14000488b: 8b 0d bf 27 01 00           	mov	ecx, dword ptr [rip + 75711] # 0x140017050
140004891: 33 d2                       	xor	edx, edx
140004893: e8 ec 36 00 00              	call	0x140007f84 <.text+0x6f84>
140004898: 48 8b cf                    	mov	rcx, rdi
14000489b: eb db                       	jmp	0x140004878 <.text+0x3878>
14000489d: 48 8b cf                    	mov	rcx, rdi
1400048a0: e8 0f fd ff ff              	call	0x1400045b4 <.text+0x35b4>
1400048a5: 33 c9                       	xor	ecx, ecx
1400048a7: e8 cc 05 00 00              	call	0x140004e78 <.text+0x3e78>
1400048ac: 48 8b f7                    	mov	rsi, rdi
1400048af: 8b cb                       	mov	ecx, ebx
1400048b1: ff 15 d1 97 00 00           	call	qword ptr [rip + 38865] # 0x14000e088
1400048b7: 48 f7 df                    	neg	rdi
1400048ba: 48 1b c0                    	sbb	rax, rax
1400048bd: 48 23 c6                    	and	rax, rsi
1400048c0: 74 10                       	je	0x1400048d2 <.text+0x38d2>
1400048c2: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400048c7: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
1400048cc: 48 83 c4 20                 	add	rsp, 32
1400048d0: 5f                          	pop	rdi
1400048d1: c3                          	ret
1400048d2: e8 fd f9 ff ff              	call	0x1400042d4 <.text+0x32d4>
1400048d7: cc                          	int3
1400048d8: 40 53                       	push	rbx
1400048da: 48 83 ec 20                 	sub	rsp, 32
1400048de: 8b 0d 6c 27 01 00           	mov	ecx, dword ptr [rip + 75628] # 0x140017050
1400048e4: 83 f9 ff                    	cmp	ecx, -1
1400048e7: 74 1b                       	je	0x140004904 <.text+0x3904>
1400048e9: e8 4e 36 00 00              	call	0x140007f3c <.text+0x6f3c>
1400048ee: 48 8b d8                    	mov	rbx, rax
1400048f1: 48 85 c0                    	test	rax, rax
1400048f4: 74 08                       	je	0x1400048fe <.text+0x38fe>
1400048f6: 48 83 f8 ff                 	cmp	rax, -1
1400048fa: 74 7d                       	je	0x140004979 <.text+0x3979>
1400048fc: eb 6d                       	jmp	0x14000496b <.text+0x396b>
1400048fe: 8b 0d 4c 27 01 00           	mov	ecx, dword ptr [rip + 75596] # 0x140017050
140004904: 48 83 ca ff                 	or	rdx, -1
140004908: e8 77 36 00 00              	call	0x140007f84 <.text+0x6f84>
14000490d: 85 c0                       	test	eax, eax
14000490f: 74 68                       	je	0x140004979 <.text+0x3979>
140004911: ba c8 03 00 00              	mov	edx, 968
140004916: b9 01 00 00 00              	mov	ecx, 1
14000491b: e8 e0 04 00 00              	call	0x140004e00 <.text+0x3e00>
140004920: 8b 0d 2a 27 01 00           	mov	ecx, dword ptr [rip + 75562] # 0x140017050
140004926: 48 8b d8                    	mov	rbx, rax
140004929: 48 85 c0                    	test	rax, rax
14000492c: 75 10                       	jne	0x14000493e <.text+0x393e>
14000492e: 33 d2                       	xor	edx, edx
140004930: e8 4f 36 00 00              	call	0x140007f84 <.text+0x6f84>
140004935: 33 c9                       	xor	ecx, ecx
140004937: e8 3c 05 00 00              	call	0x140004e78 <.text+0x3e78>
14000493c: eb 3b                       	jmp	0x140004979 <.text+0x3979>
14000493e: 48 8b d3                    	mov	rdx, rbx
140004941: e8 3e 36 00 00              	call	0x140007f84 <.text+0x6f84>
140004946: 85 c0                       	test	eax, eax
140004948: 75 12                       	jne	0x14000495c <.text+0x395c>
14000494a: 8b 0d 00 27 01 00           	mov	ecx, dword ptr [rip + 75520] # 0x140017050
140004950: 33 d2                       	xor	edx, edx
140004952: e8 2d 36 00 00              	call	0x140007f84 <.text+0x6f84>
140004957: 48 8b cb                    	mov	rcx, rbx
14000495a: eb db                       	jmp	0x140004937 <.text+0x3937>
14000495c: 48 8b cb                    	mov	rcx, rbx
14000495f: e8 50 fc ff ff              	call	0x1400045b4 <.text+0x35b4>
140004964: 33 c9                       	xor	ecx, ecx
140004966: e8 0d 05 00 00              	call	0x140004e78 <.text+0x3e78>
14000496b: 48 85 db                    	test	rbx, rbx
14000496e: 74 09                       	je	0x140004979 <.text+0x3979>
140004970: 48 8b c3                    	mov	rax, rbx
140004973: 48 83 c4 20                 	add	rsp, 32
140004977: 5b                          	pop	rbx
140004978: c3                          	ret
140004979: e8 56 f9 ff ff              	call	0x1400042d4 <.text+0x32d4>
14000497e: cc                          	int3
14000497f: cc                          	int3
140004980: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004985: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000498a: 57                          	push	rdi
14000498b: 48 83 ec 20                 	sub	rsp, 32
14000498f: ff 15 eb 96 00 00           	call	qword ptr [rip + 38635] # 0x14000e080
140004995: 8b 0d b5 26 01 00           	mov	ecx, dword ptr [rip + 75445] # 0x140017050
14000499b: 8b d8                       	mov	ebx, eax
14000499d: 83 f9 ff                    	cmp	ecx, -1
1400049a0: 74 1f                       	je	0x1400049c1 <.text+0x39c1>
1400049a2: e8 95 35 00 00              	call	0x140007f3c <.text+0x6f3c>
1400049a7: 48 8b f8                    	mov	rdi, rax
1400049aa: 48 85 c0                    	test	rax, rax
1400049ad: 74 0c                       	je	0x1400049bb <.text+0x39bb>
1400049af: 48 83 f8 ff                 	cmp	rax, -1
1400049b3: 75 73                       	jne	0x140004a28 <.text+0x3a28>
1400049b5: 33 ff                       	xor	edi, edi
1400049b7: 33 f6                       	xor	esi, esi
1400049b9: eb 70                       	jmp	0x140004a2b <.text+0x3a2b>
1400049bb: 8b 0d 8f 26 01 00           	mov	ecx, dword ptr [rip + 75407] # 0x140017050
1400049c1: 48 83 ca ff                 	or	rdx, -1
1400049c5: e8 ba 35 00 00              	call	0x140007f84 <.text+0x6f84>
1400049ca: 85 c0                       	test	eax, eax
1400049cc: 74 e7                       	je	0x1400049b5 <.text+0x39b5>
1400049ce: ba c8 03 00 00              	mov	edx, 968
1400049d3: b9 01 00 00 00              	mov	ecx, 1
1400049d8: e8 23 04 00 00              	call	0x140004e00 <.text+0x3e00>
1400049dd: 8b 0d 6d 26 01 00           	mov	ecx, dword ptr [rip + 75373] # 0x140017050
1400049e3: 48 8b f8                    	mov	rdi, rax
1400049e6: 48 85 c0                    	test	rax, rax
1400049e9: 75 10                       	jne	0x1400049fb <.text+0x39fb>
1400049eb: 33 d2                       	xor	edx, edx
1400049ed: e8 92 35 00 00              	call	0x140007f84 <.text+0x6f84>
1400049f2: 33 c9                       	xor	ecx, ecx
1400049f4: e8 7f 04 00 00              	call	0x140004e78 <.text+0x3e78>
1400049f9: eb ba                       	jmp	0x1400049b5 <.text+0x39b5>
1400049fb: 48 8b d7                    	mov	rdx, rdi
1400049fe: e8 81 35 00 00              	call	0x140007f84 <.text+0x6f84>
140004a03: 85 c0                       	test	eax, eax
140004a05: 75 12                       	jne	0x140004a19 <.text+0x3a19>
140004a07: 8b 0d 43 26 01 00           	mov	ecx, dword ptr [rip + 75331] # 0x140017050
140004a0d: 33 d2                       	xor	edx, edx
140004a0f: e8 70 35 00 00              	call	0x140007f84 <.text+0x6f84>
140004a14: 48 8b cf                    	mov	rcx, rdi
140004a17: eb db                       	jmp	0x1400049f4 <.text+0x39f4>
140004a19: 48 8b cf                    	mov	rcx, rdi
140004a1c: e8 93 fb ff ff              	call	0x1400045b4 <.text+0x35b4>
140004a21: 33 c9                       	xor	ecx, ecx
140004a23: e8 50 04 00 00              	call	0x140004e78 <.text+0x3e78>
140004a28: 48 8b f7                    	mov	rsi, rdi
140004a2b: 8b cb                       	mov	ecx, ebx
140004a2d: ff 15 55 96 00 00           	call	qword ptr [rip + 38485] # 0x14000e088
140004a33: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140004a38: 48 f7 df                    	neg	rdi
140004a3b: 48 1b c0                    	sbb	rax, rax
140004a3e: 48 23 c6                    	and	rax, rsi
140004a41: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
140004a46: 48 83 c4 20                 	add	rsp, 32
140004a4a: 5f                          	pop	rdi
140004a4b: c3                          	ret
140004a4c: 48 83 ec 28                 	sub	rsp, 40
140004a50: 48 8d 0d 2d fc ff ff        	lea	rcx, [rip - 979]        # 0x140004684 <.text+0x3684>
140004a57: e8 50 34 00 00              	call	0x140007eac <.text+0x6eac>
140004a5c: 89 05 ee 25 01 00           	mov	dword ptr [rip + 75246], eax # 0x140017050
140004a62: 83 f8 ff                    	cmp	eax, -1
140004a65: 75 04                       	jne	0x140004a6b <.text+0x3a6b>
140004a67: 32 c0                       	xor	al, al
140004a69: eb 15                       	jmp	0x140004a80 <.text+0x3a80>
140004a6b: e8 10 ff ff ff              	call	0x140004980 <.text+0x3980>
140004a70: 48 85 c0                    	test	rax, rax
140004a73: 75 09                       	jne	0x140004a7e <.text+0x3a7e>
140004a75: 33 c9                       	xor	ecx, ecx
140004a77: e8 0c 00 00 00              	call	0x140004a88 <.text+0x3a88>
140004a7c: eb e9                       	jmp	0x140004a67 <.text+0x3a67>
140004a7e: b0 01                       	mov	al, 1
140004a80: 48 83 c4 28                 	add	rsp, 40
140004a84: c3                          	ret
140004a85: cc                          	int3
140004a86: cc                          	int3
140004a87: cc                          	int3
140004a88: 48 83 ec 28                 	sub	rsp, 40
140004a8c: 8b 0d be 25 01 00           	mov	ecx, dword ptr [rip + 75198] # 0x140017050
140004a92: 83 f9 ff                    	cmp	ecx, -1
140004a95: 74 0c                       	je	0x140004aa3 <.text+0x3aa3>
140004a97: e8 58 34 00 00              	call	0x140007ef4 <.text+0x6ef4>
140004a9c: 83 0d ad 25 01 00 ff        	or	dword ptr [rip + 75181], -1 # 0x140017050
140004aa3: b0 01                       	mov	al, 1
140004aa5: 48 83 c4 28                 	add	rsp, 40
140004aa9: c3                          	ret
140004aaa: cc                          	int3
140004aab: cc                          	int3
140004aac: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
140004ab1: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140004ab6: 55                          	push	rbp
140004ab7: 57                          	push	rdi
140004ab8: 41 56                       	push	r14
140004aba: 48 8d ac 24 10 fb ff ff     	lea	rbp, [rsp - 1264]
140004ac2: 48 81 ec f0 05 00 00        	sub	rsp, 1520
140004ac9: 48 8b 05 58 25 01 00        	mov	rax, qword ptr [rip + 75096] # 0x140017028
140004ad0: 48 33 c4                    	xor	rax, rsp
140004ad3: 48 89 85 e0 04 00 00        	mov	qword ptr [rbp + 1248], rax
140004ada: 41 8b f8                    	mov	edi, r8d
140004add: 8b f2                       	mov	esi, edx
140004adf: 8b d9                       	mov	ebx, ecx
140004ae1: 83 f9 ff                    	cmp	ecx, -1
140004ae4: 74 05                       	je	0x140004aeb <.text+0x3aeb>
140004ae6: e8 49 cb ff ff              	call	0x140001634 <.text+0x634>
140004aeb: 33 d2                       	xor	edx, edx
140004aed: 48 8d 4c 24 70              	lea	rcx, [rsp + 112]
140004af2: 41 b8 98 00 00 00           	mov	r8d, 152
140004af8: e8 93 d2 ff ff              	call	0x140001d90 <.text+0xd90>
140004afd: 33 d2                       	xor	edx, edx
140004aff: 48 8d 4d 10                 	lea	rcx, [rbp + 16]
140004b03: 41 b8 d0 04 00 00           	mov	r8d, 1232
140004b09: e8 82 d2 ff ff              	call	0x140001d90 <.text+0xd90>
140004b0e: 48 8d 44 24 70              	lea	rax, [rsp + 112]
140004b13: 48 89 44 24 48              	mov	qword ptr [rsp + 72], rax
140004b18: 48 8d 4d 10                 	lea	rcx, [rbp + 16]
140004b1c: 48 8d 45 10                 	lea	rax, [rbp + 16]
140004b20: 48 89 44 24 50              	mov	qword ptr [rsp + 80], rax
140004b25: ff 15 fd 94 00 00           	call	qword ptr [rip + 38141] # 0x14000e028
140004b2b: 4c 8b b5 08 01 00 00        	mov	r14, qword ptr [rbp + 264]
140004b32: 48 8d 54 24 40              	lea	rdx, [rsp + 64]
140004b37: 49 8b ce                    	mov	rcx, r14
140004b3a: 45 33 c0                    	xor	r8d, r8d
140004b3d: ff 15 ed 94 00 00           	call	qword ptr [rip + 38125] # 0x14000e030
140004b43: 48 85 c0                    	test	rax, rax
140004b46: 74 36                       	je	0x140004b7e <.text+0x3b7e>
140004b48: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
140004b4e: 48 8d 4c 24 58              	lea	rcx, [rsp + 88]
140004b53: 48 8b 54 24 40              	mov	rdx, qword ptr [rsp + 64]
140004b58: 4c 8b c8                    	mov	r9, rax
140004b5b: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
140004b60: 4d 8b c6                    	mov	r8, r14
140004b63: 48 8d 4c 24 60              	lea	rcx, [rsp + 96]
140004b68: 48 89 4c 24 28              	mov	qword ptr [rsp + 40], rcx
140004b6d: 48 8d 4d 10                 	lea	rcx, [rbp + 16]
140004b71: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
140004b76: 33 c9                       	xor	ecx, ecx
140004b78: ff 15 ba 94 00 00           	call	qword ptr [rip + 38074] # 0x14000e038
140004b7e: 48 8b 85 08 05 00 00        	mov	rax, qword ptr [rbp + 1288]
140004b85: 48 89 85 08 01 00 00        	mov	qword ptr [rbp + 264], rax
140004b8c: 48 8d 85 08 05 00 00        	lea	rax, [rbp + 1288]
140004b93: 48 83 c0 08                 	add	rax, 8
140004b97: 89 74 24 70                 	mov	dword ptr [rsp + 112], esi
140004b9b: 48 89 85 a8 00 00 00        	mov	qword ptr [rbp + 168], rax
140004ba2: 48 8b 85 08 05 00 00        	mov	rax, qword ptr [rbp + 1288]
140004ba9: 48 89 45 80                 	mov	qword ptr [rbp - 128], rax
140004bad: 89 7c 24 74                 	mov	dword ptr [rsp + 116], edi
140004bb1: ff 15 89 94 00 00           	call	qword ptr [rip + 38025] # 0x14000e040
140004bb7: 33 c9                       	xor	ecx, ecx
140004bb9: 8b f8                       	mov	edi, eax
140004bbb: ff 15 8f 94 00 00           	call	qword ptr [rip + 38031] # 0x14000e050
140004bc1: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
140004bc6: ff 15 7c 94 00 00           	call	qword ptr [rip + 38012] # 0x14000e048
140004bcc: 85 c0                       	test	eax, eax
140004bce: 75 10                       	jne	0x140004be0 <.text+0x3be0>
140004bd0: 85 ff                       	test	edi, edi
140004bd2: 75 0c                       	jne	0x140004be0 <.text+0x3be0>
140004bd4: 83 fb ff                    	cmp	ebx, -1
140004bd7: 74 07                       	je	0x140004be0 <.text+0x3be0>
140004bd9: 8b cb                       	mov	ecx, ebx
140004bdb: e8 54 ca ff ff              	call	0x140001634 <.text+0x634>
140004be0: 48 8b 8d e0 04 00 00        	mov	rcx, qword ptr [rbp + 1248]
140004be7: 48 33 cc                    	xor	rcx, rsp
140004bea: e8 f1 7e 00 00              	call	0x14000cae0 <.text+0xbae0>
140004bef: 4c 8d 9c 24 f0 05 00 00     	lea	r11, [rsp + 1520]
140004bf7: 49 8b 5b 28                 	mov	rbx, qword ptr [r11 + 40]
140004bfb: 49 8b 73 30                 	mov	rsi, qword ptr [r11 + 48]
140004bff: 49 8b e3                    	mov	rsp, r11
140004c02: 41 5e                       	pop	r14
140004c04: 5f                          	pop	rdi
140004c05: 5d                          	pop	rbp
140004c06: c3                          	ret
140004c07: cc                          	int3
140004c08: 48 89 0d 91 31 01 00        	mov	qword ptr [rip + 78225], rcx # 0x140017da0
140004c0f: c3                          	ret
140004c10: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004c15: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140004c1a: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140004c1f: 57                          	push	rdi
140004c20: 48 83 ec 30                 	sub	rsp, 48
140004c24: 41 8b d9                    	mov	ebx, r9d
140004c27: 49 8b f8                    	mov	rdi, r8
140004c2a: 48 8b f2                    	mov	rsi, rdx
140004c2d: 48 8b e9                    	mov	rbp, rcx
140004c30: e8 4b fd ff ff              	call	0x140004980 <.text+0x3980>
140004c35: 48 85 c0                    	test	rax, rax
140004c38: 74 3d                       	je	0x140004c77 <.text+0x3c77>
140004c3a: 48 8b 80 b8 03 00 00        	mov	rax, qword ptr [rax + 952]
140004c41: 48 85 c0                    	test	rax, rax
140004c44: 74 31                       	je	0x140004c77 <.text+0x3c77>
140004c46: 48 8b 54 24 60              	mov	rdx, qword ptr [rsp + 96]
140004c4b: 44 8b cb                    	mov	r9d, ebx
140004c4e: 48 89 54 24 20              	mov	qword ptr [rsp + 32], rdx
140004c53: 4c 8b c7                    	mov	r8, rdi
140004c56: 48 8b d6                    	mov	rdx, rsi
140004c59: 48 8b cd                    	mov	rcx, rbp
140004c5c: ff 15 ce 95 00 00           	call	qword ptr [rip + 38350] # 0x14000e230
140004c62: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140004c67: 48 8b 6c 24 48              	mov	rbp, qword ptr [rsp + 72]
140004c6c: 48 8b 74 24 50              	mov	rsi, qword ptr [rsp + 80]
140004c71: 48 83 c4 30                 	add	rsp, 48
140004c75: 5f                          	pop	rdi
140004c76: c3                          	ret
140004c77: 4c 8b 15 aa 23 01 00        	mov	r10, qword ptr [rip + 74666] # 0x140017028
140004c7e: 44 8b cb                    	mov	r9d, ebx
140004c81: 41 8b ca                    	mov	ecx, r10d
140004c84: 4c 8b c7                    	mov	r8, rdi
140004c87: 4c 33 15 12 31 01 00        	xor	r10, qword ptr [rip + 78098] # 0x140017da0
140004c8e: 83 e1 3f                    	and	ecx, 63
140004c91: 49 d3 ca                    	ror	r10, cl
140004c94: 48 8b d6                    	mov	rdx, rsi
140004c97: 4d 85 d2                    	test	r10, r10
140004c9a: 74 0f                       	je	0x140004cab <.text+0x3cab>
140004c9c: 48 8b 4c 24 60              	mov	rcx, qword ptr [rsp + 96]
140004ca1: 49 8b c2                    	mov	rax, r10
140004ca4: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
140004ca9: eb ae                       	jmp	0x140004c59 <.text+0x3c59>
140004cab: 48 8b 44 24 60              	mov	rax, qword ptr [rsp + 96]
140004cb0: 48 8b cd                    	mov	rcx, rbp
140004cb3: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140004cb8: e8 23 00 00 00              	call	0x140004ce0 <.text+0x3ce0>
140004cbd: cc                          	int3
140004cbe: cc                          	int3
140004cbf: cc                          	int3
140004cc0: 48 83 ec 38                 	sub	rsp, 56
140004cc4: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
140004cca: 45 33 c9                    	xor	r9d, r9d
140004ccd: 45 33 c0                    	xor	r8d, r8d
140004cd0: 33 d2                       	xor	edx, edx
140004cd2: 33 c9                       	xor	ecx, ecx
140004cd4: e8 37 ff ff ff              	call	0x140004c10 <.text+0x3c10>
140004cd9: 48 83 c4 38                 	add	rsp, 56
140004cdd: c3                          	ret
140004cde: cc                          	int3
140004cdf: cc                          	int3
140004ce0: 48 83 ec 28                 	sub	rsp, 40
140004ce4: b9 17 00 00 00              	mov	ecx, 23
140004ce9: ff 15 71 93 00 00           	call	qword ptr [rip + 37745] # 0x14000e060
140004cef: 85 c0                       	test	eax, eax
140004cf1: 74 07                       	je	0x140004cfa <.text+0x3cfa>
140004cf3: b9 05 00 00 00              	mov	ecx, 5
140004cf8: cd 29                       	int	41
140004cfa: 41 b8 01 00 00 00           	mov	r8d, 1
140004d00: ba 17 04 00 c0              	mov	edx, 3221226519
140004d05: 41 8d 48 01                 	lea	ecx, [r8 + 1]
140004d09: e8 9e fd ff ff              	call	0x140004aac <.text+0x3aac>
140004d0e: ff 15 f4 93 00 00           	call	qword ptr [rip + 37876] # 0x14000e108
140004d14: 48 8b c8                    	mov	rcx, rax
140004d17: ba 17 04 00 c0              	mov	edx, 3221226519
140004d1c: 48 83 c4 28                 	add	rsp, 40
140004d20: 48 ff 25 f1 93 00 00        	jmp	qword ptr [rip + 37873] # 0x14000e118
140004d27: cc                          	int3
140004d28: 33 c0                       	xor	eax, eax
140004d2a: 4c 8d 0d ff a6 00 00        	lea	r9, [rip + 42751]       # 0x14000f430
140004d31: 49 8b d1                    	mov	rdx, r9
140004d34: 44 8d 40 08                 	lea	r8d, [rax + 8]
140004d38: 3b 0a                       	cmp	ecx, dword ptr [rdx]
140004d3a: 74 2b                       	je	0x140004d67 <.text+0x3d67>
140004d3c: ff c0                       	inc	eax
140004d3e: 49 03 d0                    	add	rdx, r8
140004d41: 83 f8 2d                    	cmp	eax, 45
140004d44: 72 f2                       	jb	0x140004d38 <.text+0x3d38>
140004d46: 8d 41 ed                    	lea	eax, [rcx - 19]
140004d49: 83 f8 11                    	cmp	eax, 17
140004d4c: 77 06                       	ja	0x140004d54 <.text+0x3d54>
140004d4e: b8 0d 00 00 00              	mov	eax, 13
140004d53: c3                          	ret
140004d54: 81 c1 44 ff ff ff           	add	ecx, 4294967108
140004d5a: b8 16 00 00 00              	mov	eax, 22
140004d5f: 83 f9 0e                    	cmp	ecx, 14
140004d62: 41 0f 46 c0                 	cmovbe	eax, r8d
140004d66: c3                          	ret
140004d67: 41 8b 44 c1 04              	mov	eax, dword ptr [r9 + 8*rax + 4]
140004d6c: c3                          	ret
140004d6d: cc                          	int3
140004d6e: cc                          	int3
140004d6f: cc                          	int3
140004d70: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140004d75: 57                          	push	rdi
140004d76: 48 83 ec 20                 	sub	rsp, 32
140004d7a: 8b f9                       	mov	edi, ecx
140004d7c: e8 ff fb ff ff              	call	0x140004980 <.text+0x3980>
140004d81: 48 85 c0                    	test	rax, rax
140004d84: 75 09                       	jne	0x140004d8f <.text+0x3d8f>
140004d86: 48 8d 05 cb 22 01 00        	lea	rax, [rip + 74443]      # 0x140017058
140004d8d: eb 04                       	jmp	0x140004d93 <.text+0x3d93>
140004d8f: 48 83 c0 24                 	add	rax, 36
140004d93: 89 38                       	mov	dword ptr [rax], edi
140004d95: e8 e6 fb ff ff              	call	0x140004980 <.text+0x3980>
140004d9a: 48 8d 1d b3 22 01 00        	lea	rbx, [rip + 74419]      # 0x140017054
140004da1: 48 85 c0                    	test	rax, rax
140004da4: 74 04                       	je	0x140004daa <.text+0x3daa>
140004da6: 48 8d 58 20                 	lea	rbx, [rax + 32]
140004daa: 8b cf                       	mov	ecx, edi
140004dac: e8 77 ff ff ff              	call	0x140004d28 <.text+0x3d28>
140004db1: 89 03                       	mov	dword ptr [rbx], eax
140004db3: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140004db8: 48 83 c4 20                 	add	rsp, 32
140004dbc: 5f                          	pop	rdi
140004dbd: c3                          	ret
140004dbe: cc                          	int3
140004dbf: cc                          	int3
140004dc0: 48 83 ec 28                 	sub	rsp, 40
140004dc4: e8 b7 fb ff ff              	call	0x140004980 <.text+0x3980>
140004dc9: 48 85 c0                    	test	rax, rax
140004dcc: 75 09                       	jne	0x140004dd7 <.text+0x3dd7>
140004dce: 48 8d 05 83 22 01 00        	lea	rax, [rip + 74371]      # 0x140017058
140004dd5: eb 04                       	jmp	0x140004ddb <.text+0x3ddb>
140004dd7: 48 83 c0 24                 	add	rax, 36
140004ddb: 48 83 c4 28                 	add	rsp, 40
140004ddf: c3                          	ret
140004de0: 48 83 ec 28                 	sub	rsp, 40
140004de4: e8 97 fb ff ff              	call	0x140004980 <.text+0x3980>
140004de9: 48 85 c0                    	test	rax, rax
140004dec: 75 09                       	jne	0x140004df7 <.text+0x3df7>
140004dee: 48 8d 05 5f 22 01 00        	lea	rax, [rip + 74335]      # 0x140017054
140004df5: eb 04                       	jmp	0x140004dfb <.text+0x3dfb>
140004df7: 48 83 c0 20                 	add	rax, 32
140004dfb: 48 83 c4 28                 	add	rsp, 40
140004dff: c3                          	ret
140004e00: 40 53                       	push	rbx
140004e02: 48 83 ec 20                 	sub	rsp, 32
140004e06: 4c 8b c2                    	mov	r8, rdx
140004e09: 48 8b d9                    	mov	rbx, rcx
140004e0c: 48 85 c9                    	test	rcx, rcx
140004e0f: 74 0e                       	je	0x140004e1f <.text+0x3e1f>
140004e11: 33 d2                       	xor	edx, edx
140004e13: 48 8d 42 e0                 	lea	rax, [rdx - 32]
140004e17: 48 f7 f3                    	div	rbx
140004e1a: 49 3b c0                    	cmp	rax, r8
140004e1d: 72 43                       	jb	0x140004e62 <.text+0x3e62>
140004e1f: 49 0f af d8                 	imul	rbx, r8
140004e23: b8 01 00 00 00              	mov	eax, 1
140004e28: 48 85 db                    	test	rbx, rbx
140004e2b: 48 0f 44 d8                 	cmove	rbx, rax
140004e2f: eb 15                       	jmp	0x140004e46 <.text+0x3e46>
140004e31: e8 5a ee ff ff              	call	0x140003c90 <.text+0x2c90>
140004e36: 85 c0                       	test	eax, eax
140004e38: 74 28                       	je	0x140004e62 <.text+0x3e62>
140004e3a: 48 8b cb                    	mov	rcx, rbx
140004e3d: e8 22 35 00 00              	call	0x140008364 <.text+0x7364>
140004e42: 85 c0                       	test	eax, eax
140004e44: 74 1c                       	je	0x140004e62 <.text+0x3e62>
140004e46: 48 8b 0d 8b 37 01 00        	mov	rcx, qword ptr [rip + 79755] # 0x1400185d8
140004e4d: 4c 8b c3                    	mov	r8, rbx
140004e50: ba 08 00 00 00              	mov	edx, 8
140004e55: ff 15 dd 92 00 00           	call	qword ptr [rip + 37597] # 0x14000e138
140004e5b: 48 85 c0                    	test	rax, rax
140004e5e: 74 d1                       	je	0x140004e31 <.text+0x3e31>
140004e60: eb 0d                       	jmp	0x140004e6f <.text+0x3e6f>
140004e62: e8 79 ff ff ff              	call	0x140004de0 <.text+0x3de0>
140004e67: c7 00 0c 00 00 00           	mov	dword ptr [rax], 12
140004e6d: 33 c0                       	xor	eax, eax
140004e6f: 48 83 c4 20                 	add	rsp, 32
140004e73: 5b                          	pop	rbx
140004e74: c3                          	ret
140004e75: cc                          	int3
140004e76: cc                          	int3
140004e77: cc                          	int3
140004e78: 48 85 c9                    	test	rcx, rcx
140004e7b: 74 37                       	je	0x140004eb4 <.text+0x3eb4>
140004e7d: 53                          	push	rbx
140004e7e: 48 83 ec 20                 	sub	rsp, 32
140004e82: 4c 8b c1                    	mov	r8, rcx
140004e85: 33 d2                       	xor	edx, edx
140004e87: 48 8b 0d 4a 37 01 00        	mov	rcx, qword ptr [rip + 79690] # 0x1400185d8
140004e8e: ff 15 ac 92 00 00           	call	qword ptr [rip + 37548] # 0x14000e140
140004e94: 85 c0                       	test	eax, eax
140004e96: 75 17                       	jne	0x140004eaf <.text+0x3eaf>
140004e98: e8 43 ff ff ff              	call	0x140004de0 <.text+0x3de0>
140004e9d: 48 8b d8                    	mov	rbx, rax
140004ea0: ff 15 da 91 00 00           	call	qword ptr [rip + 37338] # 0x14000e080
140004ea6: 8b c8                       	mov	ecx, eax
140004ea8: e8 7b fe ff ff              	call	0x140004d28 <.text+0x3d28>
140004ead: 89 03                       	mov	dword ptr [rbx], eax
140004eaf: 48 83 c4 20                 	add	rsp, 32
140004eb3: 5b                          	pop	rbx
140004eb4: c3                          	ret
140004eb5: cc                          	int3
140004eb6: cc                          	int3
140004eb7: cc                          	int3
140004eb8: 48 3b ca                    	cmp	rcx, rdx
140004ebb: 73 04                       	jae	0x140004ec1 <.text+0x3ec1>
140004ebd: 83 c8 ff                    	or	eax, -1
140004ec0: c3                          	ret
140004ec1: 33 c0                       	xor	eax, eax
140004ec3: 48 3b ca                    	cmp	rcx, rdx
140004ec6: 0f 97 c0                    	seta	al
140004ec9: c3                          	ret
140004eca: cc                          	int3
140004ecb: cc                          	int3
140004ecc: 48 8b c4                    	mov	rax, rsp
140004ecf: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
140004ed3: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
140004ed7: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
140004edb: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
140004edf: 41 56                       	push	r14
140004ee1: 48 83 ec 30                 	sub	rsp, 48
140004ee5: 33 db                       	xor	ebx, ebx
140004ee7: 41 8b e8                    	mov	ebp, r8d
140004eea: 48 8b fa                    	mov	rdi, rdx
140004eed: 48 8b f1                    	mov	rsi, rcx
140004ef0: 48 85 c9                    	test	rcx, rcx
140004ef3: 75 22                       	jne	0x140004f17 <.text+0x3f17>
140004ef5: 38 5a 28                    	cmp	byte ptr [rdx + 40], bl
140004ef8: 74 0c                       	je	0x140004f06 <.text+0x3f06>
140004efa: 48 8b 4a 10                 	mov	rcx, qword ptr [rdx + 16]
140004efe: e8 75 ff ff ff              	call	0x140004e78 <.text+0x3e78>
140004f03: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
140004f06: 48 89 5f 10                 	mov	qword ptr [rdi + 16], rbx
140004f0a: 48 89 5f 18                 	mov	qword ptr [rdi + 24], rbx
140004f0e: 48 89 5f 20                 	mov	qword ptr [rdi + 32], rbx
140004f12: e9 0e 01 00 00              	jmp	0x140005025 <.text+0x4025>
140004f17: 38 19                       	cmp	byte ptr [rcx], bl
140004f19: 75 55                       	jne	0x140004f70 <.text+0x3f70>
140004f1b: 48 39 5a 18                 	cmp	qword ptr [rdx + 24], rbx
140004f1f: 75 46                       	jne	0x140004f67 <.text+0x3f67>
140004f21: 38 5a 28                    	cmp	byte ptr [rdx + 40], bl
140004f24: 74 0c                       	je	0x140004f32 <.text+0x3f32>
140004f26: 48 8b 4a 10                 	mov	rcx, qword ptr [rdx + 16]
140004f2a: e8 49 ff ff ff              	call	0x140004e78 <.text+0x3e78>
140004f2f: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
140004f32: b9 02 00 00 00              	mov	ecx, 2
140004f37: e8 34 26 00 00              	call	0x140007570 <.text+0x6570>
140004f3c: 48 89 47 10                 	mov	qword ptr [rdi + 16], rax
140004f40: 48 8b cb                    	mov	rcx, rbx
140004f43: 48 f7 d8                    	neg	rax
140004f46: 1b d2                       	sbb	edx, edx
140004f48: f7 d2                       	not	edx
140004f4a: 83 e2 0c                    	and	edx, 12
140004f4d: 0f 94 c1                    	sete	cl
140004f50: 85 d2                       	test	edx, edx
140004f52: 0f 94 c0                    	sete	al
140004f55: 88 47 28                    	mov	byte ptr [rdi + 40], al
140004f58: 48 89 4f 18                 	mov	qword ptr [rdi + 24], rcx
140004f5c: 85 d2                       	test	edx, edx
140004f5e: 74 07                       	je	0x140004f67 <.text+0x3f67>
140004f60: 8b da                       	mov	ebx, edx
140004f62: e9 be 00 00 00              	jmp	0x140005025 <.text+0x4025>
140004f67: 48 8b 47 10                 	mov	rax, qword ptr [rdi + 16]
140004f6b: 66 89 18                    	mov	word ptr [rax], bx
140004f6e: eb 9e                       	jmp	0x140004f0e <.text+0x3f0e>
140004f70: 41 83 c9 ff                 	or	r9d, -1
140004f74: 89 5c 24 28                 	mov	dword ptr [rsp + 40], ebx
140004f78: 4c 8b c6                    	mov	r8, rsi
140004f7b: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140004f80: 8b cd                       	mov	ecx, ebp
140004f82: 41 8d 51 0a                 	lea	edx, [r9 + 10]
140004f86: e8 11 16 00 00              	call	0x14000659c <.text+0x559c>
140004f8b: 4c 63 f0                    	movsxd	r14, eax
140004f8e: 85 c0                       	test	eax, eax
140004f90: 75 16                       	jne	0x140004fa8 <.text+0x3fa8>
140004f92: ff 15 e8 90 00 00           	call	qword ptr [rip + 37096] # 0x14000e080
140004f98: 8b c8                       	mov	ecx, eax
140004f9a: e8 d1 fd ff ff              	call	0x140004d70 <.text+0x3d70>
140004f9f: e8 3c fe ff ff              	call	0x140004de0 <.text+0x3de0>
140004fa4: 8b 18                       	mov	ebx, dword ptr [rax]
140004fa6: eb 7d                       	jmp	0x140005025 <.text+0x4025>
140004fa8: 48 8b 4f 18                 	mov	rcx, qword ptr [rdi + 24]
140004fac: 4c 3b f1                    	cmp	r14, rcx
140004faf: 76 43                       	jbe	0x140004ff4 <.text+0x3ff4>
140004fb1: 38 5f 28                    	cmp	byte ptr [rdi + 40], bl
140004fb4: 74 0c                       	je	0x140004fc2 <.text+0x3fc2>
140004fb6: 48 8b 4f 10                 	mov	rcx, qword ptr [rdi + 16]
140004fba: e8 b9 fe ff ff              	call	0x140004e78 <.text+0x3e78>
140004fbf: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
140004fc2: 4b 8d 0c 36                 	lea	rcx, [r14 + r14]
140004fc6: e8 a5 25 00 00              	call	0x140007570 <.text+0x6570>
140004fcb: 48 89 47 10                 	mov	qword ptr [rdi + 16], rax
140004fcf: 48 8b cb                    	mov	rcx, rbx
140004fd2: 48 f7 d8                    	neg	rax
140004fd5: 1b d2                       	sbb	edx, edx
140004fd7: f7 d2                       	not	edx
140004fd9: 83 e2 0c                    	and	edx, 12
140004fdc: 49 0f 44 ce                 	cmove	rcx, r14
140004fe0: 85 d2                       	test	edx, edx
140004fe2: 0f 94 c0                    	sete	al
140004fe5: 88 47 28                    	mov	byte ptr [rdi + 40], al
140004fe8: 48 89 4f 18                 	mov	qword ptr [rdi + 24], rcx
140004fec: 85 d2                       	test	edx, edx
140004fee: 0f 85 6c ff ff ff           	jne	0x140004f60 <.text+0x3f60>
140004ff4: 48 8b 47 10                 	mov	rax, qword ptr [rdi + 16]
140004ff8: 41 83 c9 ff                 	or	r9d, -1
140004ffc: 89 4c 24 28                 	mov	dword ptr [rsp + 40], ecx
140005000: 4c 8b c6                    	mov	r8, rsi
140005003: 8b cd                       	mov	ecx, ebp
140005005: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000500a: 41 8d 51 0a                 	lea	edx, [r9 + 10]
14000500e: e8 89 15 00 00              	call	0x14000659c <.text+0x559c>
140005013: 48 63 c8                    	movsxd	rcx, eax
140005016: 85 c0                       	test	eax, eax
140005018: 0f 84 74 ff ff ff           	je	0x140004f92 <.text+0x3f92>
14000501e: 48 ff c9                    	dec	rcx
140005021: 48 89 4f 20                 	mov	qword ptr [rdi + 32], rcx
140005025: 48 8b 6c 24 48              	mov	rbp, qword ptr [rsp + 72]
14000502a: 8b c3                       	mov	eax, ebx
14000502c: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140005031: 48 8b 74 24 50              	mov	rsi, qword ptr [rsp + 80]
140005036: 48 8b 7c 24 58              	mov	rdi, qword ptr [rsp + 88]
14000503b: 48 83 c4 30                 	add	rsp, 48
14000503f: 41 5e                       	pop	r14
140005041: c3                          	ret
140005042: cc                          	int3
140005043: cc                          	int3
140005044: 48 8b c4                    	mov	rax, rsp
140005047: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
14000504b: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
14000504f: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
140005053: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
140005057: 41 56                       	push	r14
140005059: 48 83 ec 40                 	sub	rsp, 64
14000505d: 33 db                       	xor	ebx, ebx
14000505f: 45 8b f0                    	mov	r14d, r8d
140005062: 48 8b fa                    	mov	rdi, rdx
140005065: 48 8b f1                    	mov	rsi, rcx
140005068: 48 85 c9                    	test	rcx, rcx
14000506b: 75 22                       	jne	0x14000508f <.text+0x408f>
14000506d: 38 5a 28                    	cmp	byte ptr [rdx + 40], bl
140005070: 74 0c                       	je	0x14000507e <.text+0x407e>
140005072: 48 8b 4a 10                 	mov	rcx, qword ptr [rdx + 16]
140005076: e8 fd fd ff ff              	call	0x140004e78 <.text+0x3e78>
14000507b: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
14000507e: 48 89 5f 10                 	mov	qword ptr [rdi + 16], rbx
140005082: 48 89 5f 18                 	mov	qword ptr [rdi + 24], rbx
140005086: 48 89 5f 20                 	mov	qword ptr [rdi + 32], rbx
14000508a: e9 22 01 00 00              	jmp	0x1400051b1 <.text+0x41b1>
14000508f: 66 39 19                    	cmp	word ptr [rcx], bx
140005092: 75 54                       	jne	0x1400050e8 <.text+0x40e8>
140005094: 48 39 5a 18                 	cmp	qword ptr [rdx + 24], rbx
140005098: 75 46                       	jne	0x1400050e0 <.text+0x40e0>
14000509a: 38 5a 28                    	cmp	byte ptr [rdx + 40], bl
14000509d: 74 0c                       	je	0x1400050ab <.text+0x40ab>
14000509f: 48 8b 4a 10                 	mov	rcx, qword ptr [rdx + 16]
1400050a3: e8 d0 fd ff ff              	call	0x140004e78 <.text+0x3e78>
1400050a8: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
1400050ab: b9 01 00 00 00              	mov	ecx, 1
1400050b0: e8 bb 24 00 00              	call	0x140007570 <.text+0x6570>
1400050b5: 48 89 47 10                 	mov	qword ptr [rdi + 16], rax
1400050b9: 48 8b cb                    	mov	rcx, rbx
1400050bc: 48 f7 d8                    	neg	rax
1400050bf: 1b d2                       	sbb	edx, edx
1400050c1: f7 d2                       	not	edx
1400050c3: 83 e2 0c                    	and	edx, 12
1400050c6: 0f 94 c1                    	sete	cl
1400050c9: 85 d2                       	test	edx, edx
1400050cb: 0f 94 c0                    	sete	al
1400050ce: 88 47 28                    	mov	byte ptr [rdi + 40], al
1400050d1: 48 89 4f 18                 	mov	qword ptr [rdi + 24], rcx
1400050d5: 85 d2                       	test	edx, edx
1400050d7: 74 07                       	je	0x1400050e0 <.text+0x40e0>
1400050d9: 8b da                       	mov	ebx, edx
1400050db: e9 d1 00 00 00              	jmp	0x1400051b1 <.text+0x41b1>
1400050e0: 48 8b 47 10                 	mov	rax, qword ptr [rdi + 16]
1400050e4: 88 18                       	mov	byte ptr [rax], bl
1400050e6: eb 9e                       	jmp	0x140005086 <.text+0x4086>
1400050e8: 48 89 5c 24 38              	mov	qword ptr [rsp + 56], rbx
1400050ed: 41 83 c9 ff                 	or	r9d, -1
1400050f1: 48 89 5c 24 30              	mov	qword ptr [rsp + 48], rbx
1400050f6: 4c 8b c6                    	mov	r8, rsi
1400050f9: 89 5c 24 28                 	mov	dword ptr [rsp + 40], ebx
1400050fd: 33 d2                       	xor	edx, edx
1400050ff: 41 8b ce                    	mov	ecx, r14d
140005102: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140005107: e8 ec 14 00 00              	call	0x1400065f8 <.text+0x55f8>
14000510c: 48 63 e8                    	movsxd	rbp, eax
14000510f: 85 c0                       	test	eax, eax
140005111: 75 19                       	jne	0x14000512c <.text+0x412c>
140005113: ff 15 67 8f 00 00           	call	qword ptr [rip + 36711] # 0x14000e080
140005119: 8b c8                       	mov	ecx, eax
14000511b: e8 50 fc ff ff              	call	0x140004d70 <.text+0x3d70>
140005120: e8 bb fc ff ff              	call	0x140004de0 <.text+0x3de0>
140005125: 8b 18                       	mov	ebx, dword ptr [rax]
140005127: e9 85 00 00 00              	jmp	0x1400051b1 <.text+0x41b1>
14000512c: 48 8b 4f 18                 	mov	rcx, qword ptr [rdi + 24]
140005130: 48 3b e9                    	cmp	rbp, rcx
140005133: 76 42                       	jbe	0x140005177 <.text+0x4177>
140005135: 38 5f 28                    	cmp	byte ptr [rdi + 40], bl
140005138: 74 0c                       	je	0x140005146 <.text+0x4146>
14000513a: 48 8b 4f 10                 	mov	rcx, qword ptr [rdi + 16]
14000513e: e8 35 fd ff ff              	call	0x140004e78 <.text+0x3e78>
140005143: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
140005146: 48 8b cd                    	mov	rcx, rbp
140005149: e8 22 24 00 00              	call	0x140007570 <.text+0x6570>
14000514e: 48 89 47 10                 	mov	qword ptr [rdi + 16], rax
140005152: 48 8b cb                    	mov	rcx, rbx
140005155: 48 f7 d8                    	neg	rax
140005158: 1b d2                       	sbb	edx, edx
14000515a: f7 d2                       	not	edx
14000515c: 83 e2 0c                    	and	edx, 12
14000515f: 48 0f 44 cd                 	cmove	rcx, rbp
140005163: 85 d2                       	test	edx, edx
140005165: 0f 94 c0                    	sete	al
140005168: 88 47 28                    	mov	byte ptr [rdi + 40], al
14000516b: 48 89 4f 18                 	mov	qword ptr [rdi + 24], rcx
14000516f: 85 d2                       	test	edx, edx
140005171: 0f 85 62 ff ff ff           	jne	0x1400050d9 <.text+0x40d9>
140005177: 48 8b 47 10                 	mov	rax, qword ptr [rdi + 16]
14000517b: 41 83 c9 ff                 	or	r9d, -1
14000517f: 48 89 5c 24 38              	mov	qword ptr [rsp + 56], rbx
140005184: 4c 8b c6                    	mov	r8, rsi
140005187: 48 89 5c 24 30              	mov	qword ptr [rsp + 48], rbx
14000518c: 33 d2                       	xor	edx, edx
14000518e: 89 4c 24 28                 	mov	dword ptr [rsp + 40], ecx
140005192: 41 8b ce                    	mov	ecx, r14d
140005195: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000519a: e8 59 14 00 00              	call	0x1400065f8 <.text+0x55f8>
14000519f: 48 63 c8                    	movsxd	rcx, eax
1400051a2: 85 c0                       	test	eax, eax
1400051a4: 0f 84 69 ff ff ff           	je	0x140005113 <.text+0x4113>
1400051aa: 48 ff c9                    	dec	rcx
1400051ad: 48 89 4f 20                 	mov	qword ptr [rdi + 32], rcx
1400051b1: 48 8b 6c 24 58              	mov	rbp, qword ptr [rsp + 88]
1400051b6: 8b c3                       	mov	eax, ebx
1400051b8: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
1400051bd: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
1400051c2: 48 8b 7c 24 68              	mov	rdi, qword ptr [rsp + 104]
1400051c7: 48 83 c4 40                 	add	rsp, 64
1400051cb: 41 5e                       	pop	r14
1400051cd: c3                          	ret
1400051ce: cc                          	int3
1400051cf: cc                          	int3
1400051d0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400051d5: 48 89 54 24 10              	mov	qword ptr [rsp + 16], rdx
1400051da: 55                          	push	rbp
1400051db: 56                          	push	rsi
1400051dc: 57                          	push	rdi
1400051dd: 41 54                       	push	r12
1400051df: 41 55                       	push	r13
1400051e1: 41 56                       	push	r14
1400051e3: 41 57                       	push	r15
1400051e5: 48 8b ec                    	mov	rbp, rsp
1400051e8: 48 83 ec 60                 	sub	rsp, 96
1400051ec: 33 ff                       	xor	edi, edi
1400051ee: 48 8b d9                    	mov	rbx, rcx
1400051f1: 48 85 d2                    	test	rdx, rdx
1400051f4: 75 16                       	jne	0x14000520c <.text+0x420c>
1400051f6: e8 e5 fb ff ff              	call	0x140004de0 <.text+0x3de0>
1400051fb: 8d 5f 16                    	lea	ebx, [rdi + 22]
1400051fe: 89 18                       	mov	dword ptr [rax], ebx
140005200: e8 bb fa ff ff              	call	0x140004cc0 <.text+0x3cc0>
140005205: 8b c3                       	mov	eax, ebx
140005207: e9 a0 01 00 00              	jmp	0x1400053ac <.text+0x43ac>
14000520c: 0f 57 c0                    	xorps	xmm0, xmm0
14000520f: 48 89 3a                    	mov	qword ptr [rdx], rdi
140005212: 48 8b 01                    	mov	rax, qword ptr [rcx]
140005215: f3 0f 7f 45 e0              	movdqu	xmmword ptr [rbp - 32], xmm0
14000521a: 48 89 7d f0                 	mov	qword ptr [rbp - 16], rdi
14000521e: 48 85 c0                    	test	rax, rax
140005221: 74 56                       	je	0x140005279 <.text+0x4279>
140005223: 48 8d 55 50                 	lea	rdx, [rbp + 80]
140005227: 66 c7 45 50 2a 3f           	mov	word ptr [rbp + 80], 16170
14000522d: 48 8b c8                    	mov	rcx, rax
140005230: 40 88 7d 52                 	mov	byte ptr [rbp + 82], dil
140005234: e8 17 40 00 00              	call	0x140009250 <.text+0x8250>
140005239: 48 8b 0b                    	mov	rcx, qword ptr [rbx]
14000523c: 48 85 c0                    	test	rax, rax
14000523f: 75 10                       	jne	0x140005251 <.text+0x4251>
140005241: 4c 8d 4d e0                 	lea	r9, [rbp - 32]
140005245: 45 33 c0                    	xor	r8d, r8d
140005248: 33 d2                       	xor	edx, edx
14000524a: e8 8d 01 00 00              	call	0x1400053dc <.text+0x43dc>
14000524f: eb 0c                       	jmp	0x14000525d <.text+0x425d>
140005251: 4c 8d 45 e0                 	lea	r8, [rbp - 32]
140005255: 48 8b d0                    	mov	rdx, rax
140005258: e8 07 03 00 00              	call	0x140005564 <.text+0x4564>
14000525d: 8b f0                       	mov	esi, eax
14000525f: 85 c0                       	test	eax, eax
140005261: 75 09                       	jne	0x14000526c <.text+0x426c>
140005263: 48 83 c3 08                 	add	rbx, 8
140005267: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000526a: eb b2                       	jmp	0x14000521e <.text+0x421e>
14000526c: 4c 8b 65 e8                 	mov	r12, qword ptr [rbp - 24]
140005270: 4c 8b 7d e0                 	mov	r15, qword ptr [rbp - 32]
140005274: e9 f8 00 00 00              	jmp	0x140005371 <.text+0x4371>
140005279: 4c 8b 7d e0                 	mov	r15, qword ptr [rbp - 32]
14000527d: 4c 8b cf                    	mov	r9, rdi
140005280: 4c 8b 65 e8                 	mov	r12, qword ptr [rbp - 24]
140005284: 49 8b d7                    	mov	rdx, r15
140005287: 49 8b c4                    	mov	rax, r12
14000528a: 48 89 7d 50                 	mov	qword ptr [rbp + 80], rdi
14000528e: 49 2b c7                    	sub	rax, r15
140005291: 4c 8b c7                    	mov	r8, rdi
140005294: 4c 8b f0                    	mov	r14, rax
140005297: 49 c1 fe 03                 	sar	r14, 3
14000529b: 49 ff c6                    	inc	r14
14000529e: 48 8d 48 07                 	lea	rcx, [rax + 7]
1400052a2: 48 c1 e9 03                 	shr	rcx, 3
1400052a6: 4d 3b fc                    	cmp	r15, r12
1400052a9: 48 0f 47 cf                 	cmova	rcx, rdi
1400052ad: 48 83 ce ff                 	or	rsi, -1
1400052b1: 48 85 c9                    	test	rcx, rcx
1400052b4: 74 25                       	je	0x1400052db <.text+0x42db>
1400052b6: 4c 8b 12                    	mov	r10, qword ptr [rdx]
1400052b9: 48 8b c6                    	mov	rax, rsi
1400052bc: 48 ff c0                    	inc	rax
1400052bf: 41 38 3c 02                 	cmp	byte ptr [r10 + rax], dil
1400052c3: 75 f7                       	jne	0x1400052bc <.text+0x42bc>
1400052c5: 49 ff c1                    	inc	r9
1400052c8: 48 83 c2 08                 	add	rdx, 8
1400052cc: 4c 03 c8                    	add	r9, rax
1400052cf: 49 ff c0                    	inc	r8
1400052d2: 4c 3b c1                    	cmp	r8, rcx
1400052d5: 75 df                       	jne	0x1400052b6 <.text+0x42b6>
1400052d7: 4c 89 4d 50                 	mov	qword ptr [rbp + 80], r9
1400052db: 41 b8 01 00 00 00           	mov	r8d, 1
1400052e1: 49 8b d1                    	mov	rdx, r9
1400052e4: 49 8b ce                    	mov	rcx, r14
1400052e7: e8 10 df ff ff              	call	0x1400031fc <.text+0x21fc>
1400052ec: 48 8b d8                    	mov	rbx, rax
1400052ef: 48 85 c0                    	test	rax, rax
1400052f2: 74 76                       	je	0x14000536a <.text+0x436a>
1400052f4: 4a 8d 14 f0                 	lea	rdx, [rax + 8*r14]
1400052f8: 4d 8b f7                    	mov	r14, r15
1400052fb: 48 89 55 d8                 	mov	qword ptr [rbp - 40], rdx
1400052ff: 48 8b c2                    	mov	rax, rdx
140005302: 48 89 55 58                 	mov	qword ptr [rbp + 88], rdx
140005306: 4d 3b fc                    	cmp	r15, r12
140005309: 74 56                       	je	0x140005361 <.text+0x4361>
14000530b: 48 8b cb                    	mov	rcx, rbx
14000530e: 49 2b cf                    	sub	rcx, r15
140005311: 48 89 4d d0                 	mov	qword ptr [rbp - 48], rcx
140005315: 4d 8b 06                    	mov	r8, qword ptr [r14]
140005318: 4c 8b ee                    	mov	r13, rsi
14000531b: 49 ff c5                    	inc	r13
14000531e: 43 38 3c 28                 	cmp	byte ptr [r8 + r13], dil
140005322: 75 f7                       	jne	0x14000531b <.text+0x431b>
140005324: 48 2b d0                    	sub	rdx, rax
140005327: 49 ff c5                    	inc	r13
14000532a: 48 03 55 50                 	add	rdx, qword ptr [rbp + 80]
14000532e: 4d 8b cd                    	mov	r9, r13
140005331: 48 8b c8                    	mov	rcx, rax
140005334: e8 97 3d 00 00              	call	0x1400090d0 <.text+0x80d0>
140005339: 85 c0                       	test	eax, eax
14000533b: 0f 85 83 00 00 00           	jne	0x1400053c4 <.text+0x43c4>
140005341: 48 8b 45 58                 	mov	rax, qword ptr [rbp + 88]
140005345: 48 8b 4d d0                 	mov	rcx, qword ptr [rbp - 48]
140005349: 48 8b 55 d8                 	mov	rdx, qword ptr [rbp - 40]
14000534d: 4a 89 04 31                 	mov	qword ptr [rcx + r14], rax
140005351: 49 03 c5                    	add	rax, r13
140005354: 49 83 c6 08                 	add	r14, 8
140005358: 48 89 45 58                 	mov	qword ptr [rbp + 88], rax
14000535c: 4d 3b f4                    	cmp	r14, r12
14000535f: 75 b4                       	jne	0x140005315 <.text+0x4315>
140005361: 48 8b 45 48                 	mov	rax, qword ptr [rbp + 72]
140005365: 8b f7                       	mov	esi, edi
140005367: 48 89 18                    	mov	qword ptr [rax], rbx
14000536a: 33 c9                       	xor	ecx, ecx
14000536c: e8 07 fb ff ff              	call	0x140004e78 <.text+0x3e78>
140005371: 49 8b dc                    	mov	rbx, r12
140005374: 4d 8b f7                    	mov	r14, r15
140005377: 49 2b df                    	sub	rbx, r15
14000537a: 48 83 c3 07                 	add	rbx, 7
14000537e: 48 c1 eb 03                 	shr	rbx, 3
140005382: 4d 3b fc                    	cmp	r15, r12
140005385: 48 0f 47 df                 	cmova	rbx, rdi
140005389: 48 85 db                    	test	rbx, rbx
14000538c: 74 14                       	je	0x1400053a2 <.text+0x43a2>
14000538e: 49 8b 0e                    	mov	rcx, qword ptr [r14]
140005391: e8 e2 fa ff ff              	call	0x140004e78 <.text+0x3e78>
140005396: 48 ff c7                    	inc	rdi
140005399: 4d 8d 76 08                 	lea	r14, [r14 + 8]
14000539d: 48 3b fb                    	cmp	rdi, rbx
1400053a0: 75 ec                       	jne	0x14000538e <.text+0x438e>
1400053a2: 49 8b cf                    	mov	rcx, r15
1400053a5: e8 ce fa ff ff              	call	0x140004e78 <.text+0x3e78>
1400053aa: 8b c6                       	mov	eax, esi
1400053ac: 48 8b 9c 24 a0 00 00 00     	mov	rbx, qword ptr [rsp + 160]
1400053b4: 48 83 c4 60                 	add	rsp, 96
1400053b8: 41 5f                       	pop	r15
1400053ba: 41 5e                       	pop	r14
1400053bc: 41 5d                       	pop	r13
1400053be: 41 5c                       	pop	r12
1400053c0: 5f                          	pop	rdi
1400053c1: 5e                          	pop	rsi
1400053c2: 5d                          	pop	rbp
1400053c3: c3                          	ret
1400053c4: 45 33 c9                    	xor	r9d, r9d
1400053c7: 48 89 7c 24 20              	mov	qword ptr [rsp + 32], rdi
1400053cc: 45 33 c0                    	xor	r8d, r8d
1400053cf: 33 d2                       	xor	edx, edx
1400053d1: 33 c9                       	xor	ecx, ecx
1400053d3: e8 08 f9 ff ff              	call	0x140004ce0 <.text+0x3ce0>
1400053d8: cc                          	int3
1400053d9: cc                          	int3
1400053da: cc                          	int3
1400053db: cc                          	int3
1400053dc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400053e1: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
1400053e6: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
1400053eb: 57                          	push	rdi
1400053ec: 41 54                       	push	r12
1400053ee: 41 55                       	push	r13
1400053f0: 41 56                       	push	r14
1400053f2: 41 57                       	push	r15
1400053f4: 48 83 ec 30                 	sub	rsp, 48
1400053f8: 48 83 cd ff                 	or	rbp, -1
1400053fc: 49 8b f9                    	mov	rdi, r9
1400053ff: 33 f6                       	xor	esi, esi
140005401: 4d 8b f0                    	mov	r14, r8
140005404: 4c 8b ea                    	mov	r13, rdx
140005407: 4c 8b e1                    	mov	r12, rcx
14000540a: 48 ff c5                    	inc	rbp
14000540d: 40 38 34 29                 	cmp	byte ptr [rcx + rbp], sil
140005411: 75 f7                       	jne	0x14000540a <.text+0x440a>
140005413: ba 01 00 00 00              	mov	edx, 1
140005418: 49 8b c6                    	mov	rax, r14
14000541b: 48 03 ea                    	add	rbp, rdx
14000541e: 48 f7 d0                    	not	rax
140005421: 48 3b e8                    	cmp	rbp, rax
140005424: 76 20                       	jbe	0x140005446 <.text+0x4446>
140005426: 8d 42 0b                    	lea	eax, [rdx + 11]
140005429: 48 8b 5c 24 60              	mov	rbx, qword ptr [rsp + 96]
14000542e: 48 8b 6c 24 68              	mov	rbp, qword ptr [rsp + 104]
140005433: 48 8b 74 24 70              	mov	rsi, qword ptr [rsp + 112]
140005438: 48 83 c4 30                 	add	rsp, 48
14000543c: 41 5f                       	pop	r15
14000543e: 41 5e                       	pop	r14
140005440: 41 5d                       	pop	r13
140005442: 41 5c                       	pop	r12
140005444: 5f                          	pop	rdi
140005445: c3                          	ret
140005446: 4d 8d 78 01                 	lea	r15, [r8 + 1]
14000544a: 4c 03 fd                    	add	r15, rbp
14000544d: 49 8b cf                    	mov	rcx, r15
140005450: e8 ab f9 ff ff              	call	0x140004e00 <.text+0x3e00>
140005455: 48 8b d8                    	mov	rbx, rax
140005458: 4d 85 f6                    	test	r14, r14
14000545b: 74 19                       	je	0x140005476 <.text+0x4476>
14000545d: 4d 8b ce                    	mov	r9, r14
140005460: 4d 8b c5                    	mov	r8, r13
140005463: 49 8b d7                    	mov	rdx, r15
140005466: 48 8b c8                    	mov	rcx, rax
140005469: e8 62 3c 00 00              	call	0x1400090d0 <.text+0x80d0>
14000546e: 85 c0                       	test	eax, eax
140005470: 0f 85 d8 00 00 00           	jne	0x14000554e <.text+0x454e>
140005476: 4d 2b fe                    	sub	r15, r14
140005479: 4a 8d 0c 33                 	lea	rcx, [rbx + r14]
14000547d: 49 8b d7                    	mov	rdx, r15
140005480: 4c 8b cd                    	mov	r9, rbp
140005483: 4d 8b c4                    	mov	r8, r12
140005486: e8 45 3c 00 00              	call	0x1400090d0 <.text+0x80d0>
14000548b: 85 c0                       	test	eax, eax
14000548d: 0f 85 bb 00 00 00           	jne	0x14000554e <.text+0x454e>
140005493: 48 8b 4f 08                 	mov	rcx, qword ptr [rdi + 8]
140005497: 44 8d 78 08                 	lea	r15d, [rax + 8]
14000549b: 4c 8b 77 10                 	mov	r14, qword ptr [rdi + 16]
14000549f: 49 3b ce                    	cmp	rcx, r14
1400054a2: 0f 85 9d 00 00 00           	jne	0x140005545 <.text+0x4545>
1400054a8: 48 39 37                    	cmp	qword ptr [rdi], rsi
1400054ab: 75 2b                       	jne	0x1400054d8 <.text+0x44d8>
1400054ad: 41 8b d7                    	mov	edx, r15d
1400054b0: 8d 48 04                    	lea	ecx, [rax + 4]
1400054b3: e8 48 f9 ff ff              	call	0x140004e00 <.text+0x3e00>
1400054b8: 33 c9                       	xor	ecx, ecx
1400054ba: 48 89 07                    	mov	qword ptr [rdi], rax
1400054bd: e8 b6 f9 ff ff              	call	0x140004e78 <.text+0x3e78>
1400054c2: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
1400054c5: 48 85 c9                    	test	rcx, rcx
1400054c8: 74 42                       	je	0x14000550c <.text+0x450c>
1400054ca: 48 8d 41 20                 	lea	rax, [rcx + 32]
1400054ce: 48 89 4f 08                 	mov	qword ptr [rdi + 8], rcx
1400054d2: 48 89 47 10                 	mov	qword ptr [rdi + 16], rax
1400054d6: eb 6d                       	jmp	0x140005545 <.text+0x4545>
1400054d8: 4c 2b 37                    	sub	r14, qword ptr [rdi]
1400054db: 48 b8 ff ff ff ff ff ff ff 7f       	movabs	rax, 9223372036854775807
1400054e5: 49 c1 fe 03                 	sar	r14, 3
1400054e9: 4c 3b f0                    	cmp	r14, rax
1400054ec: 77 1e                       	ja	0x14000550c <.text+0x450c>
1400054ee: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
1400054f1: 4b 8d 2c 36                 	lea	rbp, [r14 + r14]
1400054f5: 48 8b d5                    	mov	rdx, rbp
1400054f8: 4d 8b c7                    	mov	r8, r15
1400054fb: e8 e0 2c 00 00              	call	0x1400081e0 <.text+0x71e0>
140005500: 48 85 c0                    	test	rax, rax
140005503: 75 22                       	jne	0x140005527 <.text+0x4527>
140005505: 33 c9                       	xor	ecx, ecx
140005507: e8 6c f9 ff ff              	call	0x140004e78 <.text+0x3e78>
14000550c: 48 8b cb                    	mov	rcx, rbx
14000550f: e8 64 f9 ff ff              	call	0x140004e78 <.text+0x3e78>
140005514: be 0c 00 00 00              	mov	esi, 12
140005519: 33 c9                       	xor	ecx, ecx
14000551b: e8 58 f9 ff ff              	call	0x140004e78 <.text+0x3e78>
140005520: 8b c6                       	mov	eax, esi
140005522: e9 02 ff ff ff              	jmp	0x140005429 <.text+0x4429>
140005527: 4a 8d 0c f0                 	lea	rcx, [rax + 8*r14]
14000552b: 48 89 07                    	mov	qword ptr [rdi], rax
14000552e: 48 89 4f 08                 	mov	qword ptr [rdi + 8], rcx
140005532: 48 8d 0c e8                 	lea	rcx, [rax + 8*rbp]
140005536: 48 89 4f 10                 	mov	qword ptr [rdi + 16], rcx
14000553a: 33 c9                       	xor	ecx, ecx
14000553c: e8 37 f9 ff ff              	call	0x140004e78 <.text+0x3e78>
140005541: 48 8b 4f 08                 	mov	rcx, qword ptr [rdi + 8]
140005545: 48 89 19                    	mov	qword ptr [rcx], rbx
140005548: 4c 01 7f 08                 	add	qword ptr [rdi + 8], r15
14000554c: eb cb                       	jmp	0x140005519 <.text+0x4519>
14000554e: 45 33 c9                    	xor	r9d, r9d
140005551: 48 89 74 24 20              	mov	qword ptr [rsp + 32], rsi
140005556: 45 33 c0                    	xor	r8d, r8d
140005559: 33 d2                       	xor	edx, edx
14000555b: 33 c9                       	xor	ecx, ecx
14000555d: e8 7e f7 ff ff              	call	0x140004ce0 <.text+0x3ce0>
140005562: cc                          	int3
140005563: cc                          	int3
140005564: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140005569: 55                          	push	rbp
14000556a: 56                          	push	rsi
14000556b: 57                          	push	rdi
14000556c: 41 54                       	push	r12
14000556e: 41 55                       	push	r13
140005570: 41 56                       	push	r14
140005572: 41 57                       	push	r15
140005574: 48 8d ac 24 d0 fd ff ff     	lea	rbp, [rsp - 560]
14000557c: 48 81 ec 30 03 00 00        	sub	rsp, 816
140005583: 48 8b 05 9e 1a 01 00        	mov	rax, qword ptr [rip + 72350] # 0x140017028
14000558a: 48 33 c4                    	xor	rax, rsp
14000558d: 48 89 85 20 02 00 00        	mov	qword ptr [rbp + 544], rax
140005594: 4d 8b e0                    	mov	r12, r8
140005597: 48 8b f1                    	mov	rsi, rcx
14000559a: 48 bb 01 08 00 00 00 20 00 00       	movabs	rbx, 35184372090881
1400055a4: 48 3b d1                    	cmp	rdx, rcx
1400055a7: 74 22                       	je	0x1400055cb <.text+0x45cb>
1400055a9: 8a 02                       	mov	al, byte ptr [rdx]
1400055ab: 2c 2f                       	sub	al, 47
1400055ad: 3c 2d                       	cmp	al, 45
1400055af: 77 0a                       	ja	0x1400055bb <.text+0x45bb>
1400055b1: 48 0f be c0                 	movsx	rax, al
1400055b5: 48 0f a3 c3                 	bt	rbx, rax
1400055b9: 72 10                       	jb	0x1400055cb <.text+0x45cb>
1400055bb: 48 8b ce                    	mov	rcx, rsi
1400055be: e8 55 40 00 00              	call	0x140009618 <.text+0x8618>
1400055c3: 48 8b d0                    	mov	rdx, rax
1400055c6: 48 3b c6                    	cmp	rax, rsi
1400055c9: 75 de                       	jne	0x1400055a9 <.text+0x45a9>
1400055cb: 44 8a 02                    	mov	r8b, byte ptr [rdx]
1400055ce: 41 80 f8 3a                 	cmp	r8b, 58
1400055d2: 75 1e                       	jne	0x1400055f2 <.text+0x45f2>
1400055d4: 48 8d 46 01                 	lea	rax, [rsi + 1]
1400055d8: 48 3b d0                    	cmp	rdx, rax
1400055db: 74 15                       	je	0x1400055f2 <.text+0x45f2>
1400055dd: 4d 8b cc                    	mov	r9, r12
1400055e0: 45 33 c0                    	xor	r8d, r8d
1400055e3: 33 d2                       	xor	edx, edx
1400055e5: 48 8b ce                    	mov	rcx, rsi
1400055e8: e8 ef fd ff ff              	call	0x1400053dc <.text+0x43dc>
1400055ed: e9 56 02 00 00              	jmp	0x140005848 <.text+0x4848>
1400055f2: 41 80 e8 2f                 	sub	r8b, 47
1400055f6: 33 ff                       	xor	edi, edi
1400055f8: 41 80 f8 2d                 	cmp	r8b, 45
1400055fc: 77 0c                       	ja	0x14000560a <.text+0x460a>
1400055fe: 49 0f be c0                 	movsx	rax, r8b
140005602: 48 0f a3 c3                 	bt	rbx, rax
140005606: b0 01                       	mov	al, 1
140005608: 72 03                       	jb	0x14000560d <.text+0x460d>
14000560a: 40 8a c7                    	mov	al, dil
14000560d: 48 2b d6                    	sub	rdx, rsi
140005610: 48 89 7d a0                 	mov	qword ptr [rbp - 96], rdi
140005614: 48 ff c2                    	inc	rdx
140005617: 48 89 7d a8                 	mov	qword ptr [rbp - 88], rdi
14000561b: f6 d8                       	neg	al
14000561d: 48 89 7d b0                 	mov	qword ptr [rbp - 80], rdi
140005621: 48 8d 4c 24 30              	lea	rcx, [rsp + 48]
140005626: 48 89 7d b8                 	mov	qword ptr [rbp - 72], rdi
14000562a: 4d 1b ed                    	sbb	r13, r13
14000562d: 48 89 7d c0                 	mov	qword ptr [rbp - 64], rdi
140005631: 4c 23 ea                    	and	r13, rdx
140005634: 40 88 7d c8                 	mov	byte ptr [rbp - 56], dil
140005638: 33 d2                       	xor	edx, edx
14000563a: e8 f5 ec ff ff              	call	0x140004334 <.text+0x3334>
14000563f: 48 8b 44 24 38              	mov	rax, qword ptr [rsp + 56]
140005644: 41 bf e9 fd 00 00           	mov	r15d, 65001
14000564a: 44 39 78 0c                 	cmp	dword ptr [rax + 12], r15d
14000564e: 75 18                       	jne	0x140005668 <.text+0x4668>
140005650: 40 38 7c 24 48              	cmp	byte ptr [rsp + 72], dil
140005655: 74 0c                       	je	0x140005663 <.text+0x4663>
140005657: 48 8b 44 24 30              	mov	rax, qword ptr [rsp + 48]
14000565c: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140005663: 45 8b c7                    	mov	r8d, r15d
140005666: eb 3a                       	jmp	0x1400056a2 <.text+0x46a2>
140005668: e8 27 27 00 00              	call	0x140007d94 <.text+0x6d94>
14000566d: 85 c0                       	test	eax, eax
14000566f: 75 1b                       	jne	0x14000568c <.text+0x468c>
140005671: 40 38 7c 24 48              	cmp	byte ptr [rsp + 72], dil
140005676: 74 0c                       	je	0x140005684 <.text+0x4684>
140005678: 48 8b 44 24 30              	mov	rax, qword ptr [rsp + 48]
14000567d: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140005684: 41 b8 01 00 00 00           	mov	r8d, 1
14000568a: eb 16                       	jmp	0x1400056a2 <.text+0x46a2>
14000568c: 40 38 7c 24 48              	cmp	byte ptr [rsp + 72], dil
140005691: 74 0c                       	je	0x14000569f <.text+0x469f>
140005693: 48 8b 44 24 30              	mov	rax, qword ptr [rsp + 48]
140005698: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
14000569f: 44 8b c7                    	mov	r8d, edi
1400056a2: 48 8d 55 a0                 	lea	rdx, [rbp - 96]
1400056a6: 48 8b ce                    	mov	rcx, rsi
1400056a9: e8 1e f8 ff ff              	call	0x140004ecc <.text+0x3ecc>
1400056ae: 48 8b 4d b0                 	mov	rcx, qword ptr [rbp - 80]
1400056b2: 4c 8d 45 d0                 	lea	r8, [rbp - 48]
1400056b6: 85 c0                       	test	eax, eax
1400056b8: 89 7c 24 28                 	mov	dword ptr [rsp + 40], edi
1400056bc: 48 89 7c 24 20              	mov	qword ptr [rsp + 32], rdi
1400056c1: 48 0f 45 cf                 	cmovne	rcx, rdi
1400056c5: 45 33 c9                    	xor	r9d, r9d
1400056c8: 33 d2                       	xor	edx, edx
1400056ca: ff 15 80 8a 00 00           	call	qword ptr [rip + 35456] # 0x14000e150
1400056d0: 48 8b d8                    	mov	rbx, rax
1400056d3: 48 83 f8 ff                 	cmp	rax, -1
1400056d7: 75 17                       	jne	0x1400056f0 <.text+0x46f0>
1400056d9: 4d 8b cc                    	mov	r9, r12
1400056dc: 45 33 c0                    	xor	r8d, r8d
1400056df: 33 d2                       	xor	edx, edx
1400056e1: 48 8b ce                    	mov	rcx, rsi
1400056e4: e8 f3 fc ff ff              	call	0x1400053dc <.text+0x43dc>
1400056e9: 8b f8                       	mov	edi, eax
1400056eb: e9 47 01 00 00              	jmp	0x140005837 <.text+0x4837>
1400056f0: 4d 8b 74 24 08              	mov	r14, qword ptr [r12 + 8]
1400056f5: 4d 2b 34 24                 	sub	r14, qword ptr [r12]
1400056f9: 49 c1 fe 03                 	sar	r14, 3
1400056fd: 33 d2                       	xor	edx, edx
1400056ff: 48 89 7c 24 70              	mov	qword ptr [rsp + 112], rdi
140005704: 48 8d 4c 24 50              	lea	rcx, [rsp + 80]
140005709: 48 89 7c 24 78              	mov	qword ptr [rsp + 120], rdi
14000570e: 48 89 7d 80                 	mov	qword ptr [rbp - 128], rdi
140005712: 48 89 7d 88                 	mov	qword ptr [rbp - 120], rdi
140005716: 48 89 7d 90                 	mov	qword ptr [rbp - 112], rdi
14000571a: 40 88 7d 98                 	mov	byte ptr [rbp - 104], dil
14000571e: e8 11 ec ff ff              	call	0x140004334 <.text+0x3334>
140005723: 48 8b 44 24 58              	mov	rax, qword ptr [rsp + 88]
140005728: 44 39 78 0c                 	cmp	dword ptr [rax + 12], r15d
14000572c: 75 18                       	jne	0x140005746 <.text+0x4746>
14000572e: 40 38 7c 24 68              	cmp	byte ptr [rsp + 104], dil
140005733: 74 0c                       	je	0x140005741 <.text+0x4741>
140005735: 48 8b 44 24 50              	mov	rax, qword ptr [rsp + 80]
14000573a: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140005741: 45 8b c7                    	mov	r8d, r15d
140005744: eb 3a                       	jmp	0x140005780 <.text+0x4780>
140005746: e8 49 26 00 00              	call	0x140007d94 <.text+0x6d94>
14000574b: 85 c0                       	test	eax, eax
14000574d: 75 1b                       	jne	0x14000576a <.text+0x476a>
14000574f: 40 38 7c 24 68              	cmp	byte ptr [rsp + 104], dil
140005754: 74 0c                       	je	0x140005762 <.text+0x4762>
140005756: 48 8b 44 24 50              	mov	rax, qword ptr [rsp + 80]
14000575b: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140005762: 41 b8 01 00 00 00           	mov	r8d, 1
140005768: eb 16                       	jmp	0x140005780 <.text+0x4780>
14000576a: 40 38 7c 24 68              	cmp	byte ptr [rsp + 104], dil
14000576f: 74 0c                       	je	0x14000577d <.text+0x477d>
140005771: 48 8b 44 24 50              	mov	rax, qword ptr [rsp + 80]
140005776: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
14000577d: 44 8b c7                    	mov	r8d, edi
140005780: 48 8d 54 24 70              	lea	rdx, [rsp + 112]
140005785: 48 8d 4d fc                 	lea	rcx, [rbp - 4]
140005789: e8 b6 f8 ff ff              	call	0x140005044 <.text+0x4044>
14000578e: 4c 8b 7d 80                 	mov	r15, qword ptr [rbp - 128]
140005792: 85 c0                       	test	eax, eax
140005794: 49 8b cf                    	mov	rcx, r15
140005797: 48 0f 45 cf                 	cmovne	rcx, rdi
14000579b: 80 39 2e                    	cmp	byte ptr [rcx], 46
14000579e: 75 11                       	jne	0x1400057b1 <.text+0x47b1>
1400057a0: 8a 41 01                    	mov	al, byte ptr [rcx + 1]
1400057a3: 84 c0                       	test	al, al
1400057a5: 74 20                       	je	0x1400057c7 <.text+0x47c7>
1400057a7: 3c 2e                       	cmp	al, 46
1400057a9: 75 06                       	jne	0x1400057b1 <.text+0x47b1>
1400057ab: 40 38 79 02                 	cmp	byte ptr [rcx + 2], dil
1400057af: 74 16                       	je	0x1400057c7 <.text+0x47c7>
1400057b1: 4d 8b cc                    	mov	r9, r12
1400057b4: 4d 8b c5                    	mov	r8, r13
1400057b7: 48 8b d6                    	mov	rdx, rsi
1400057ba: e8 1d fc ff ff              	call	0x1400053dc <.text+0x43dc>
1400057bf: 8b f8                       	mov	edi, eax
1400057c1: 85 c0                       	test	eax, eax
1400057c3: 75 5b                       	jne	0x140005820 <.text+0x4820>
1400057c5: 33 ff                       	xor	edi, edi
1400057c7: 40 38 7d 98                 	cmp	byte ptr [rbp - 104], dil
1400057cb: 74 08                       	je	0x1400057d5 <.text+0x47d5>
1400057cd: 49 8b cf                    	mov	rcx, r15
1400057d0: e8 a3 f6 ff ff              	call	0x140004e78 <.text+0x3e78>
1400057d5: 48 8d 55 d0                 	lea	rdx, [rbp - 48]
1400057d9: 48 8b cb                    	mov	rcx, rbx
1400057dc: ff 15 76 89 00 00           	call	qword ptr [rip + 35190] # 0x14000e158
1400057e2: 41 bf e9 fd 00 00           	mov	r15d, 65001
1400057e8: 85 c0                       	test	eax, eax
1400057ea: 0f 85 0d ff ff ff           	jne	0x1400056fd <.text+0x46fd>
1400057f0: 49 8b 04 24                 	mov	rax, qword ptr [r12]
1400057f4: 49 8b 54 24 08              	mov	rdx, qword ptr [r12 + 8]
1400057f9: 48 2b d0                    	sub	rdx, rax
1400057fc: 48 c1 fa 03                 	sar	rdx, 3
140005800: 4c 3b f2                    	cmp	r14, rdx
140005803: 74 29                       	je	0x14000582e <.text+0x482e>
140005805: 49 2b d6                    	sub	rdx, r14
140005808: 4a 8d 0c f0                 	lea	rcx, [rax + 8*r14]
14000580c: 4c 8d 0d a5 f6 ff ff        	lea	r9, [rip - 2395]        # 0x140004eb8 <.text+0x3eb8>
140005813: 41 b8 08 00 00 00           	mov	r8d, 8
140005819: e8 12 35 00 00              	call	0x140008d30 <.text+0x7d30>
14000581e: eb 0e                       	jmp	0x14000582e <.text+0x482e>
140005820: 80 7d 98 00                 	cmp	byte ptr [rbp - 104], 0
140005824: 74 08                       	je	0x14000582e <.text+0x482e>
140005826: 49 8b cf                    	mov	rcx, r15
140005829: e8 4a f6 ff ff              	call	0x140004e78 <.text+0x3e78>
14000582e: 48 8b cb                    	mov	rcx, rbx
140005831: ff 15 11 89 00 00           	call	qword ptr [rip + 35089] # 0x14000e148
140005837: 80 7d c8 00                 	cmp	byte ptr [rbp - 56], 0
14000583b: 74 09                       	je	0x140005846 <.text+0x4846>
14000583d: 48 8b 4d b0                 	mov	rcx, qword ptr [rbp - 80]
140005841: e8 32 f6 ff ff              	call	0x140004e78 <.text+0x3e78>
140005846: 8b c7                       	mov	eax, edi
140005848: 48 8b 8d 20 02 00 00        	mov	rcx, qword ptr [rbp + 544]
14000584f: 48 33 cc                    	xor	rcx, rsp
140005852: e8 89 72 00 00              	call	0x14000cae0 <.text+0xbae0>
140005857: 48 8b 9c 24 88 03 00 00     	mov	rbx, qword ptr [rsp + 904]
14000585f: 48 81 c4 30 03 00 00        	add	rsp, 816
140005866: 41 5f                       	pop	r15
140005868: 41 5e                       	pop	r14
14000586a: 41 5d                       	pop	r13
14000586c: 41 5c                       	pop	r12
14000586e: 5f                          	pop	rdi
14000586f: 5e                          	pop	rsi
140005870: 5d                          	pop	rbp
140005871: c3                          	ret
140005872: cc                          	int3
140005873: cc                          	int3
140005874: e9 57 f9 ff ff              	jmp	0x1400051d0 <.text+0x41d0>
140005879: cc                          	int3
14000587a: cc                          	int3
14000587b: cc                          	int3
14000587c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140005881: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140005886: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
14000588b: 57                          	push	rdi
14000588c: 48 83 ec 40                 	sub	rsp, 64
140005890: 33 db                       	xor	ebx, ebx
140005892: 41 8b e8                    	mov	ebp, r8d
140005895: 48 8b fa                    	mov	rdi, rdx
140005898: 48 8b f1                    	mov	rsi, rcx
14000589b: 48 85 c9                    	test	rcx, rcx
14000589e: 75 19                       	jne	0x1400058b9 <.text+0x48b9>
1400058a0: 38 5a 28                    	cmp	byte ptr [rdx + 40], bl
1400058a3: 74 03                       	je	0x1400058a8 <.text+0x48a8>
1400058a5: 88 5a 28                    	mov	byte ptr [rdx + 40], bl
1400058a8: 48 89 5a 10                 	mov	qword ptr [rdx + 16], rbx
1400058ac: 48 89 5a 18                 	mov	qword ptr [rdx + 24], rbx
1400058b0: 48 89 5a 20                 	mov	qword ptr [rdx + 32], rbx
1400058b4: e9 bd 00 00 00              	jmp	0x140005976 <.text+0x4976>
1400058b9: 66 39 19                    	cmp	word ptr [rcx], bx
1400058bc: 75 30                       	jne	0x1400058ee <.text+0x48ee>
1400058be: 48 39 5a 18                 	cmp	qword ptr [rdx + 24], rbx
1400058c2: 75 22                       	jne	0x1400058e6 <.text+0x48e6>
1400058c4: 38 5a 28                    	cmp	byte ptr [rdx + 40], bl
1400058c7: 74 03                       	je	0x1400058cc <.text+0x48cc>
1400058c9: 88 5a 28                    	mov	byte ptr [rdx + 40], bl
1400058cc: e8 0f f5 ff ff              	call	0x140004de0 <.text+0x3de0>
1400058d1: b9 22 00 00 00              	mov	ecx, 34
1400058d6: 89 08                       	mov	dword ptr [rax], ecx
1400058d8: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
1400058db: 48 89 5f 18                 	mov	qword ptr [rdi + 24], rbx
1400058df: 8b d9                       	mov	ebx, ecx
1400058e1: e9 90 00 00 00              	jmp	0x140005976 <.text+0x4976>
1400058e6: 48 8b 42 10                 	mov	rax, qword ptr [rdx + 16]
1400058ea: 88 18                       	mov	byte ptr [rax], bl
1400058ec: eb c2                       	jmp	0x1400058b0 <.text+0x48b0>
1400058ee: 48 89 5c 24 38              	mov	qword ptr [rsp + 56], rbx
1400058f3: 41 83 c9 ff                 	or	r9d, -1
1400058f7: 48 89 5c 24 30              	mov	qword ptr [rsp + 48], rbx
1400058fc: 4c 8b c6                    	mov	r8, rsi
1400058ff: 89 5c 24 28                 	mov	dword ptr [rsp + 40], ebx
140005903: 33 d2                       	xor	edx, edx
140005905: 8b cd                       	mov	ecx, ebp
140005907: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000590c: e8 e7 0c 00 00              	call	0x1400065f8 <.text+0x55f8>
140005911: 48 63 d0                    	movsxd	rdx, eax
140005914: 85 c0                       	test	eax, eax
140005916: 75 16                       	jne	0x14000592e <.text+0x492e>
140005918: ff 15 62 87 00 00           	call	qword ptr [rip + 34658] # 0x14000e080
14000591e: 8b c8                       	mov	ecx, eax
140005920: e8 4b f4 ff ff              	call	0x140004d70 <.text+0x3d70>
140005925: e8 b6 f4 ff ff              	call	0x140004de0 <.text+0x3de0>
14000592a: 8b 18                       	mov	ebx, dword ptr [rax]
14000592c: eb 48                       	jmp	0x140005976 <.text+0x4976>
14000592e: 48 8b 4f 18                 	mov	rcx, qword ptr [rdi + 24]
140005932: 48 3b d1                    	cmp	rdx, rcx
140005935: 76 0a                       	jbe	0x140005941 <.text+0x4941>
140005937: 38 5f 28                    	cmp	byte ptr [rdi + 40], bl
14000593a: 74 90                       	je	0x1400058cc <.text+0x48cc>
14000593c: 88 5f 28                    	mov	byte ptr [rdi + 40], bl
14000593f: eb 8b                       	jmp	0x1400058cc <.text+0x48cc>
140005941: 48 8b 47 10                 	mov	rax, qword ptr [rdi + 16]
140005945: 41 83 c9 ff                 	or	r9d, -1
140005949: 48 89 5c 24 38              	mov	qword ptr [rsp + 56], rbx
14000594e: 4c 8b c6                    	mov	r8, rsi
140005951: 48 89 5c 24 30              	mov	qword ptr [rsp + 48], rbx
140005956: 33 d2                       	xor	edx, edx
140005958: 89 4c 24 28                 	mov	dword ptr [rsp + 40], ecx
14000595c: 8b cd                       	mov	ecx, ebp
14000595e: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140005963: e8 90 0c 00 00              	call	0x1400065f8 <.text+0x55f8>
140005968: 48 63 c8                    	movsxd	rcx, eax
14000596b: 85 c0                       	test	eax, eax
14000596d: 74 a9                       	je	0x140005918 <.text+0x4918>
14000596f: 48 ff c9                    	dec	rcx
140005972: 48 89 4f 20                 	mov	qword ptr [rdi + 32], rcx
140005976: 48 8b 6c 24 58              	mov	rbp, qword ptr [rsp + 88]
14000597b: 8b c3                       	mov	eax, ebx
14000597d: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
140005982: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
140005987: 48 83 c4 40                 	add	rsp, 64
14000598b: 5f                          	pop	rdi
14000598c: c3                          	ret
14000598d: cc                          	int3
14000598e: cc                          	int3
14000598f: cc                          	int3
140005990: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
140005995: 48 89 7c 24 18              	mov	qword ptr [rsp + 24], rdi
14000599a: 55                          	push	rbp
14000599b: 48 8d ac 24 70 fe ff ff     	lea	rbp, [rsp - 400]
1400059a3: 48 81 ec 90 02 00 00        	sub	rsp, 656
1400059aa: 48 8b 05 77 16 01 00        	mov	rax, qword ptr [rip + 71287] # 0x140017028
1400059b1: 48 33 c4                    	xor	rax, rsp
1400059b4: 48 89 85 80 01 00 00        	mov	qword ptr [rbp + 384], rax
1400059bb: 41 8b f8                    	mov	edi, r8d
1400059be: 48 8b da                    	mov	rbx, rdx
1400059c1: 41 b8 05 01 00 00           	mov	r8d, 261
1400059c7: 48 8d 54 24 70              	lea	rdx, [rsp + 112]
1400059cc: ff 15 2e 87 00 00           	call	qword ptr [rip + 34606] # 0x14000e100
1400059d2: 85 c0                       	test	eax, eax
1400059d4: 75 14                       	jne	0x1400059ea <.text+0x49ea>
1400059d6: ff 15 a4 86 00 00           	call	qword ptr [rip + 34468] # 0x14000e080
1400059dc: 8b c8                       	mov	ecx, eax
1400059de: e8 8d f3 ff ff              	call	0x140004d70 <.text+0x3d70>
1400059e3: 33 c0                       	xor	eax, eax
1400059e5: e9 a0 00 00 00              	jmp	0x140005a8a <.text+0x4a8a>
1400059ea: 48 83 64 24 60 00           	and	qword ptr [rsp + 96], 0
1400059f0: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
1400059f5: 48 8b c7                    	mov	rax, rdi
1400059f8: 48 89 5c 24 40              	mov	qword ptr [rsp + 64], rbx
1400059fd: 33 d2                       	xor	edx, edx
1400059ff: 48 89 44 24 48              	mov	qword ptr [rsp + 72], rax
140005a04: 48 89 44 24 58              	mov	qword ptr [rsp + 88], rax
140005a09: 48 89 5c 24 50              	mov	qword ptr [rsp + 80], rbx
140005a0e: c6 44 24 68 00              	mov	byte ptr [rsp + 104], 0
140005a13: e8 1c e9 ff ff              	call	0x140004334 <.text+0x3334>
140005a18: 48 8b 44 24 28              	mov	rax, qword ptr [rsp + 40]
140005a1d: 41 b8 e9 fd 00 00           	mov	r8d, 65001
140005a23: 44 39 40 0c                 	cmp	dword ptr [rax + 12], r8d
140005a27: 75 15                       	jne	0x140005a3e <.text+0x4a3e>
140005a29: 80 7c 24 38 00              	cmp	byte ptr [rsp + 56], 0
140005a2e: 74 47                       	je	0x140005a77 <.text+0x4a77>
140005a30: 48 8b 44 24 20              	mov	rax, qword ptr [rsp + 32]
140005a35: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140005a3c: eb 39                       	jmp	0x140005a77 <.text+0x4a77>
140005a3e: e8 51 23 00 00              	call	0x140007d94 <.text+0x6d94>
140005a43: 85 c0                       	test	eax, eax
140005a45: 75 1a                       	jne	0x140005a61 <.text+0x4a61>
140005a47: 38 44 24 38                 	cmp	byte ptr [rsp + 56], al
140005a4b: 74 0c                       	je	0x140005a59 <.text+0x4a59>
140005a4d: 48 8b 44 24 20              	mov	rax, qword ptr [rsp + 32]
140005a52: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140005a59: 41 b8 01 00 00 00           	mov	r8d, 1
140005a5f: eb 16                       	jmp	0x140005a77 <.text+0x4a77>
140005a61: 80 7c 24 38 00              	cmp	byte ptr [rsp + 56], 0
140005a66: 74 0c                       	je	0x140005a74 <.text+0x4a74>
140005a68: 48 8b 44 24 20              	mov	rax, qword ptr [rsp + 32]
140005a6d: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140005a74: 45 33 c0                    	xor	r8d, r8d
140005a77: 48 8d 54 24 40              	lea	rdx, [rsp + 64]
140005a7c: 48 8d 4c 24 70              	lea	rcx, [rsp + 112]
140005a81: e8 f6 fd ff ff              	call	0x14000587c <.text+0x487c>
140005a86: 8b 44 24 60                 	mov	eax, dword ptr [rsp + 96]
140005a8a: 48 8b 8d 80 01 00 00        	mov	rcx, qword ptr [rbp + 384]
140005a91: 48 33 cc                    	xor	rcx, rsp
140005a94: e8 47 70 00 00              	call	0x14000cae0 <.text+0xbae0>
140005a99: 4c 8d 9c 24 90 02 00 00     	lea	r11, [rsp + 656]
140005aa1: 49 8b 5b 18                 	mov	rbx, qword ptr [r11 + 24]
140005aa5: 49 8b 7b 20                 	mov	rdi, qword ptr [r11 + 32]
140005aa9: 49 8b e3                    	mov	rsp, r11
140005aac: 5d                          	pop	rbp
140005aad: c3                          	ret
140005aae: cc                          	int3
140005aaf: cc                          	int3
140005ab0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140005ab5: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140005aba: 57                          	push	rdi
140005abb: 48 83 ec 20                 	sub	rsp, 32
140005abf: 49 8b f9                    	mov	rdi, r9
140005ac2: 49 8b d8                    	mov	rbx, r8
140005ac5: 8b 0a                       	mov	ecx, dword ptr [rdx]
140005ac7: e8 38 11 00 00              	call	0x140006c04 <.text+0x5c04>
140005acc: 90                          	nop
140005acd: 48 8b 03                    	mov	rax, qword ptr [rbx]
140005ad0: 48 8b 08                    	mov	rcx, qword ptr [rax]
140005ad3: 48 8b 81 88 00 00 00        	mov	rax, qword ptr [rcx + 136]
140005ada: 48 83 c0 18                 	add	rax, 24
140005ade: 48 8b 0d c3 22 01 00        	mov	rcx, qword ptr [rip + 74435] # 0x140017da8
140005ae5: 48 85 c9                    	test	rcx, rcx
140005ae8: 74 6f                       	je	0x140005b59 <.text+0x4b59>
140005aea: 48 85 c0                    	test	rax, rax
140005aed: 74 5d                       	je	0x140005b4c <.text+0x4b4c>
140005aef: 41 b8 02 00 00 00           	mov	r8d, 2
140005af5: 45 8b c8                    	mov	r9d, r8d
140005af8: 41 8d 50 7e                 	lea	edx, [r8 + 126]
140005afc: 0f 10 00                    	movups	xmm0, xmmword ptr [rax]
140005aff: 0f 11 01                    	movups	xmmword ptr [rcx], xmm0
140005b02: 0f 10 48 10                 	movups	xmm1, xmmword ptr [rax + 16]
140005b06: 0f 11 49 10                 	movups	xmmword ptr [rcx + 16], xmm1
140005b0a: 0f 10 40 20                 	movups	xmm0, xmmword ptr [rax + 32]
140005b0e: 0f 11 41 20                 	movups	xmmword ptr [rcx + 32], xmm0
140005b12: 0f 10 48 30                 	movups	xmm1, xmmword ptr [rax + 48]
140005b16: 0f 11 49 30                 	movups	xmmword ptr [rcx + 48], xmm1
140005b1a: 0f 10 40 40                 	movups	xmm0, xmmword ptr [rax + 64]
140005b1e: 0f 11 41 40                 	movups	xmmword ptr [rcx + 64], xmm0
140005b22: 0f 10 48 50                 	movups	xmm1, xmmword ptr [rax + 80]
140005b26: 0f 11 49 50                 	movups	xmmword ptr [rcx + 80], xmm1
140005b2a: 0f 10 40 60                 	movups	xmm0, xmmword ptr [rax + 96]
140005b2e: 0f 11 41 60                 	movups	xmmword ptr [rcx + 96], xmm0
140005b32: 48 03 ca                    	add	rcx, rdx
140005b35: 0f 10 48 70                 	movups	xmm1, xmmword ptr [rax + 112]
140005b39: 0f 11 49 f0                 	movups	xmmword ptr [rcx - 16], xmm1
140005b3d: 48 03 c2                    	add	rax, rdx
140005b40: 49 83 e9 01                 	sub	r9, 1
140005b44: 75 b6                       	jne	0x140005afc <.text+0x4afc>
140005b46: 8a 00                       	mov	al, byte ptr [rax]
140005b48: 88 01                       	mov	byte ptr [rcx], al
140005b4a: eb 27                       	jmp	0x140005b73 <.text+0x4b73>
140005b4c: 33 d2                       	xor	edx, edx
140005b4e: 41 b8 01 01 00 00           	mov	r8d, 257
140005b54: e8 37 c2 ff ff              	call	0x140001d90 <.text+0xd90>
140005b59: e8 82 f2 ff ff              	call	0x140004de0 <.text+0x3de0>
140005b5e: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140005b64: e8 57 f1 ff ff              	call	0x140004cc0 <.text+0x3cc0>
140005b69: 41 b8 02 00 00 00           	mov	r8d, 2
140005b6f: 41 8d 50 7e                 	lea	edx, [r8 + 126]
140005b73: 48 8b 03                    	mov	rax, qword ptr [rbx]
140005b76: 48 8b 08                    	mov	rcx, qword ptr [rax]
140005b79: 48 8b 81 88 00 00 00        	mov	rax, qword ptr [rcx + 136]
140005b80: 48 05 19 01 00 00           	add	rax, 281
140005b86: 48 8b 0d 23 22 01 00        	mov	rcx, qword ptr [rip + 74275] # 0x140017db0
140005b8d: 48 85 c9                    	test	rcx, rcx
140005b90: 74 5e                       	je	0x140005bf0 <.text+0x4bf0>
140005b92: 48 85 c0                    	test	rax, rax
140005b95: 74 4c                       	je	0x140005be3 <.text+0x4be3>
140005b97: 0f 10 00                    	movups	xmm0, xmmword ptr [rax]
140005b9a: 0f 11 01                    	movups	xmmword ptr [rcx], xmm0
140005b9d: 0f 10 48 10                 	movups	xmm1, xmmword ptr [rax + 16]
140005ba1: 0f 11 49 10                 	movups	xmmword ptr [rcx + 16], xmm1
140005ba5: 0f 10 40 20                 	movups	xmm0, xmmword ptr [rax + 32]
140005ba9: 0f 11 41 20                 	movups	xmmword ptr [rcx + 32], xmm0
140005bad: 0f 10 48 30                 	movups	xmm1, xmmword ptr [rax + 48]
140005bb1: 0f 11 49 30                 	movups	xmmword ptr [rcx + 48], xmm1
140005bb5: 0f 10 40 40                 	movups	xmm0, xmmword ptr [rax + 64]
140005bb9: 0f 11 41 40                 	movups	xmmword ptr [rcx + 64], xmm0
140005bbd: 0f 10 48 50                 	movups	xmm1, xmmword ptr [rax + 80]
140005bc1: 0f 11 49 50                 	movups	xmmword ptr [rcx + 80], xmm1
140005bc5: 0f 10 40 60                 	movups	xmm0, xmmword ptr [rax + 96]
140005bc9: 0f 11 41 60                 	movups	xmmword ptr [rcx + 96], xmm0
140005bcd: 48 03 ca                    	add	rcx, rdx
140005bd0: 0f 10 48 70                 	movups	xmm1, xmmword ptr [rax + 112]
140005bd4: 0f 11 49 f0                 	movups	xmmword ptr [rcx - 16], xmm1
140005bd8: 48 03 c2                    	add	rax, rdx
140005bdb: 49 83 e8 01                 	sub	r8, 1
140005bdf: 75 b6                       	jne	0x140005b97 <.text+0x4b97>
140005be1: eb 1d                       	jmp	0x140005c00 <.text+0x4c00>
140005be3: 33 d2                       	xor	edx, edx
140005be5: 41 b8 00 01 00 00           	mov	r8d, 256
140005beb: e8 a0 c1 ff ff              	call	0x140001d90 <.text+0xd90>
140005bf0: e8 eb f1 ff ff              	call	0x140004de0 <.text+0x3de0>
140005bf5: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140005bfb: e8 c0 f0 ff ff              	call	0x140004cc0 <.text+0x3cc0>
140005c00: 48 8b 43 08                 	mov	rax, qword ptr [rbx + 8]
140005c04: 48 8b 08                    	mov	rcx, qword ptr [rax]
140005c07: 48 8b 11                    	mov	rdx, qword ptr [rcx]
140005c0a: 83 c8 ff                    	or	eax, -1
140005c0d: f0                          	lock
140005c0e: 0f c1 02                    	xadd	dword ptr [rdx], eax
140005c11: 83 f8 01                    	cmp	eax, 1
140005c14: 75 1b                       	jne	0x140005c31 <.text+0x4c31>
140005c16: 48 8b 43 08                 	mov	rax, qword ptr [rbx + 8]
140005c1a: 48 8b 08                    	mov	rcx, qword ptr [rax]
140005c1d: 48 8d 05 3c 14 01 00        	lea	rax, [rip + 70716]      # 0x140017060
140005c24: 48 39 01                    	cmp	qword ptr [rcx], rax
140005c27: 74 08                       	je	0x140005c31 <.text+0x4c31>
140005c29: 48 8b 09                    	mov	rcx, qword ptr [rcx]
140005c2c: e8 47 f2 ff ff              	call	0x140004e78 <.text+0x3e78>
140005c31: 48 8b 03                    	mov	rax, qword ptr [rbx]
140005c34: 48 8b 10                    	mov	rdx, qword ptr [rax]
140005c37: 48 8b 43 08                 	mov	rax, qword ptr [rbx + 8]
140005c3b: 48 8b 08                    	mov	rcx, qword ptr [rax]
140005c3e: 48 8b 82 88 00 00 00        	mov	rax, qword ptr [rdx + 136]
140005c45: 48 89 01                    	mov	qword ptr [rcx], rax
140005c48: 48 8b 03                    	mov	rax, qword ptr [rbx]
140005c4b: 48 8b 08                    	mov	rcx, qword ptr [rax]
140005c4e: 48 8b 81 88 00 00 00        	mov	rax, qword ptr [rcx + 136]
140005c55: f0                          	lock
140005c56: ff 00                       	inc	dword ptr [rax]
140005c58: 8b 0f                       	mov	ecx, dword ptr [rdi]
140005c5a: e8 f9 0f 00 00              	call	0x140006c58 <.text+0x5c58>
140005c5f: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140005c64: 48 83 c4 20                 	add	rsp, 32
140005c68: 5f                          	pop	rdi
140005c69: c3                          	ret
140005c6a: cc                          	int3
140005c6b: cc                          	int3
140005c6c: 40 53                       	push	rbx
140005c6e: 48 83 ec 40                 	sub	rsp, 64
140005c72: 8b d9                       	mov	ebx, ecx
140005c74: 33 d2                       	xor	edx, edx
140005c76: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
140005c7b: e8 b4 e6 ff ff              	call	0x140004334 <.text+0x3334>
140005c80: 83 25 39 21 01 00 00        	and	dword ptr [rip + 74041], 0 # 0x140017dc0
140005c87: 83 fb fe                    	cmp	ebx, -2
140005c8a: 75 12                       	jne	0x140005c9e <.text+0x4c9e>
140005c8c: c7 05 2a 21 01 00 01 00 00 00       	mov	dword ptr [rip + 74026], 1 # 0x140017dc0
140005c96: ff 15 d4 84 00 00           	call	qword ptr [rip + 34004] # 0x14000e170
140005c9c: eb 15                       	jmp	0x140005cb3 <.text+0x4cb3>
140005c9e: 83 fb fd                    	cmp	ebx, -3
140005ca1: 75 14                       	jne	0x140005cb7 <.text+0x4cb7>
140005ca3: c7 05 13 21 01 00 01 00 00 00       	mov	dword ptr [rip + 74003], 1 # 0x140017dc0
140005cad: ff 15 b5 84 00 00           	call	qword ptr [rip + 33973] # 0x14000e168
140005cb3: 8b d8                       	mov	ebx, eax
140005cb5: eb 17                       	jmp	0x140005cce <.text+0x4cce>
140005cb7: 83 fb fc                    	cmp	ebx, -4
140005cba: 75 12                       	jne	0x140005cce <.text+0x4cce>
140005cbc: 48 8b 44 24 28              	mov	rax, qword ptr [rsp + 40]
140005cc1: c7 05 f5 20 01 00 01 00 00 00       	mov	dword ptr [rip + 73973], 1 # 0x140017dc0
140005ccb: 8b 58 0c                    	mov	ebx, dword ptr [rax + 12]
140005cce: 80 7c 24 38 00              	cmp	byte ptr [rsp + 56], 0
140005cd3: 74 0c                       	je	0x140005ce1 <.text+0x4ce1>
140005cd5: 48 8b 4c 24 20              	mov	rcx, qword ptr [rsp + 32]
140005cda: 83 a1 a8 03 00 00 fd        	and	dword ptr [rcx + 936], -3
140005ce1: 8b c3                       	mov	eax, ebx
140005ce3: 48 83 c4 40                 	add	rsp, 64
140005ce7: 5b                          	pop	rbx
140005ce8: c3                          	ret
140005ce9: cc                          	int3
140005cea: cc                          	int3
140005ceb: cc                          	int3
140005cec: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140005cf1: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140005cf6: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140005cfb: 57                          	push	rdi
140005cfc: 48 83 ec 20                 	sub	rsp, 32
140005d00: 48 8d 59 18                 	lea	rbx, [rcx + 24]
140005d04: 48 8b f1                    	mov	rsi, rcx
140005d07: bd 01 01 00 00              	mov	ebp, 257
140005d0c: 48 8b cb                    	mov	rcx, rbx
140005d0f: 44 8b c5                    	mov	r8d, ebp
140005d12: 33 d2                       	xor	edx, edx
140005d14: e8 77 c0 ff ff              	call	0x140001d90 <.text+0xd90>
140005d19: 33 c0                       	xor	eax, eax
140005d1b: 48 8d 7e 0c                 	lea	rdi, [rsi + 12]
140005d1f: 48 89 46 04                 	mov	qword ptr [rsi + 4], rax
140005d23: b9 06 00 00 00              	mov	ecx, 6
140005d28: 48 89 86 20 02 00 00        	mov	qword ptr [rsi + 544], rax
140005d2f: 0f b7 c0                    	movzx	eax, ax
140005d32: 66 f3 ab                    	rep		stosw	word ptr es:[rdi], ax
140005d35: 48 8d 3d 24 13 01 00        	lea	rdi, [rip + 70436]      # 0x140017060
140005d3c: 48 2b fe                    	sub	rdi, rsi
140005d3f: 8a 04 1f                    	mov	al, byte ptr [rdi + rbx]
140005d42: 88 03                       	mov	byte ptr [rbx], al
140005d44: 48 ff c3                    	inc	rbx
140005d47: 48 83 ed 01                 	sub	rbp, 1
140005d4b: 75 f2                       	jne	0x140005d3f <.text+0x4d3f>
140005d4d: 48 8d 8e 19 01 00 00        	lea	rcx, [rsi + 281]
140005d54: ba 00 01 00 00              	mov	edx, 256
140005d59: 8a 04 39                    	mov	al, byte ptr [rcx + rdi]
140005d5c: 88 01                       	mov	byte ptr [rcx], al
140005d5e: 48 ff c1                    	inc	rcx
140005d61: 48 83 ea 01                 	sub	rdx, 1
140005d65: 75 f2                       	jne	0x140005d59 <.text+0x4d59>
140005d67: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140005d6c: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
140005d71: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
140005d76: 48 83 c4 20                 	add	rsp, 32
140005d7a: 5f                          	pop	rdi
140005d7b: c3                          	ret
140005d7c: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
140005d81: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140005d86: 55                          	push	rbp
140005d87: 48 8d ac 24 80 f9 ff ff     	lea	rbp, [rsp - 1664]
140005d8f: 48 81 ec 80 07 00 00        	sub	rsp, 1920
140005d96: 48 8b 05 8b 12 01 00        	mov	rax, qword ptr [rip + 70283] # 0x140017028
140005d9d: 48 33 c4                    	xor	rax, rsp
140005da0: 48 89 85 70 06 00 00        	mov	qword ptr [rbp + 1648], rax
140005da7: 48 8b d9                    	mov	rbx, rcx
140005daa: 8b 49 04                    	mov	ecx, dword ptr [rcx + 4]
140005dad: 81 f9 e9 fd 00 00           	cmp	ecx, 65001
140005db3: 0f 84 3d 01 00 00           	je	0x140005ef6 <.text+0x4ef6>
140005db9: 48 8d 54 24 50              	lea	rdx, [rsp + 80]
140005dbe: ff 15 b4 83 00 00           	call	qword ptr [rip + 33716] # 0x14000e178
140005dc4: 85 c0                       	test	eax, eax
140005dc6: 0f 84 2a 01 00 00           	je	0x140005ef6 <.text+0x4ef6>
140005dcc: 33 c0                       	xor	eax, eax
140005dce: 48 8d 4c 24 70              	lea	rcx, [rsp + 112]
140005dd3: be 00 01 00 00              	mov	esi, 256
140005dd8: 88 01                       	mov	byte ptr [rcx], al
140005dda: ff c0                       	inc	eax
140005ddc: 48 ff c1                    	inc	rcx
140005ddf: 3b c6                       	cmp	eax, esi
140005de1: 72 f5                       	jb	0x140005dd8 <.text+0x4dd8>
140005de3: 8a 44 24 56                 	mov	al, byte ptr [rsp + 86]
140005de7: 48 8d 54 24 56              	lea	rdx, [rsp + 86]
140005dec: c6 44 24 70 20              	mov	byte ptr [rsp + 112], 32
140005df1: eb 20                       	jmp	0x140005e13 <.text+0x4e13>
140005df3: 44 0f b6 42 01              	movzx	r8d, byte ptr [rdx + 1]
140005df8: 0f b6 c8                    	movzx	ecx, al
140005dfb: eb 0b                       	jmp	0x140005e08 <.text+0x4e08>
140005dfd: 3b ce                       	cmp	ecx, esi
140005dff: 73 0c                       	jae	0x140005e0d <.text+0x4e0d>
140005e01: c6 44 0c 70 20              	mov	byte ptr [rsp + rcx + 112], 32
140005e06: ff c1                       	inc	ecx
140005e08: 41 3b c8                    	cmp	ecx, r8d
140005e0b: 76 f0                       	jbe	0x140005dfd <.text+0x4dfd>
140005e0d: 48 83 c2 02                 	add	rdx, 2
140005e11: 8a 02                       	mov	al, byte ptr [rdx]
140005e13: 84 c0                       	test	al, al
140005e15: 75 dc                       	jne	0x140005df3 <.text+0x4df3>
140005e17: 8b 43 04                    	mov	eax, dword ptr [rbx + 4]
140005e1a: 4c 8d 44 24 70              	lea	r8, [rsp + 112]
140005e1f: 83 64 24 30 00              	and	dword ptr [rsp + 48], 0
140005e24: 44 8b ce                    	mov	r9d, esi
140005e27: 89 44 24 28                 	mov	dword ptr [rsp + 40], eax
140005e2b: ba 01 00 00 00              	mov	edx, 1
140005e30: 48 8d 85 70 02 00 00        	lea	rax, [rbp + 624]
140005e37: 33 c9                       	xor	ecx, ecx
140005e39: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140005e3e: e8 8d 17 00 00              	call	0x1400075d0 <.text+0x65d0>
140005e43: 83 64 24 40 00              	and	dword ptr [rsp + 64], 0
140005e48: 4c 8d 4c 24 70              	lea	r9, [rsp + 112]
140005e4d: 8b 43 04                    	mov	eax, dword ptr [rbx + 4]
140005e50: 44 8b c6                    	mov	r8d, esi
140005e53: 48 8b 93 20 02 00 00        	mov	rdx, qword ptr [rbx + 544]
140005e5a: 33 c9                       	xor	ecx, ecx
140005e5c: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
140005e60: 48 8d 45 70                 	lea	rax, [rbp + 112]
140005e64: 89 74 24 30                 	mov	dword ptr [rsp + 48], esi
140005e68: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
140005e6d: 89 74 24 20                 	mov	dword ptr [rsp + 32], esi
140005e71: e8 56 3b 00 00              	call	0x1400099cc <.text+0x89cc>
140005e76: 83 64 24 40 00              	and	dword ptr [rsp + 64], 0
140005e7b: 4c 8d 4c 24 70              	lea	r9, [rsp + 112]
140005e80: 8b 43 04                    	mov	eax, dword ptr [rbx + 4]
140005e83: 41 b8 00 02 00 00           	mov	r8d, 512
140005e89: 48 8b 93 20 02 00 00        	mov	rdx, qword ptr [rbx + 544]
140005e90: 33 c9                       	xor	ecx, ecx
140005e92: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
140005e96: 48 8d 85 70 01 00 00        	lea	rax, [rbp + 368]
140005e9d: 89 74 24 30                 	mov	dword ptr [rsp + 48], esi
140005ea1: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
140005ea6: 89 74 24 20                 	mov	dword ptr [rsp + 32], esi
140005eaa: e8 1d 3b 00 00              	call	0x1400099cc <.text+0x89cc>
140005eaf: b8 01 00 00 00              	mov	eax, 1
140005eb4: 48 8d 95 70 02 00 00        	lea	rdx, [rbp + 624]
140005ebb: f6 02 01                    	test	byte ptr [rdx], 1
140005ebe: 74 0b                       	je	0x140005ecb <.text+0x4ecb>
140005ec0: 80 4c 18 18 10              	or	byte ptr [rax + rbx + 24], 16
140005ec5: 8a 4c 05 6f                 	mov	cl, byte ptr [rbp + rax + 111]
140005ec9: eb 15                       	jmp	0x140005ee0 <.text+0x4ee0>
140005ecb: f6 02 02                    	test	byte ptr [rdx], 2
140005ece: 74 0e                       	je	0x140005ede <.text+0x4ede>
140005ed0: 80 4c 18 18 20              	or	byte ptr [rax + rbx + 24], 32
140005ed5: 8a 8c 05 6f 01 00 00        	mov	cl, byte ptr [rbp + rax + 367]
140005edc: eb 02                       	jmp	0x140005ee0 <.text+0x4ee0>
140005ede: 32 c9                       	xor	cl, cl
140005ee0: 88 8c 18 18 01 00 00        	mov	byte ptr [rax + rbx + 280], cl
140005ee7: 48 83 c2 02                 	add	rdx, 2
140005eeb: 48 ff c0                    	inc	rax
140005eee: 48 83 ee 01                 	sub	rsi, 1
140005ef2: 75 c7                       	jne	0x140005ebb <.text+0x4ebb>
140005ef4: eb 43                       	jmp	0x140005f39 <.text+0x4f39>
140005ef6: 33 d2                       	xor	edx, edx
140005ef8: be 00 01 00 00              	mov	esi, 256
140005efd: 8d 4a 01                    	lea	ecx, [rdx + 1]
140005f00: 44 8d 42 9f                 	lea	r8d, [rdx - 97]
140005f04: 41 8d 40 20                 	lea	eax, [r8 + 32]
140005f08: 83 f8 19                    	cmp	eax, 25
140005f0b: 77 0a                       	ja	0x140005f17 <.text+0x4f17>
140005f0d: 80 4c 0b 18 10              	or	byte ptr [rbx + rcx + 24], 16
140005f12: 8d 42 20                    	lea	eax, [rdx + 32]
140005f15: eb 12                       	jmp	0x140005f29 <.text+0x4f29>
140005f17: 41 83 f8 19                 	cmp	r8d, 25
140005f1b: 77 0a                       	ja	0x140005f27 <.text+0x4f27>
140005f1d: 80 4c 0b 18 20              	or	byte ptr [rbx + rcx + 24], 32
140005f22: 8d 42 e0                    	lea	eax, [rdx - 32]
140005f25: eb 02                       	jmp	0x140005f29 <.text+0x4f29>
140005f27: 32 c0                       	xor	al, al
140005f29: 88 84 0b 18 01 00 00        	mov	byte ptr [rbx + rcx + 280], al
140005f30: ff c2                       	inc	edx
140005f32: 48 ff c1                    	inc	rcx
140005f35: 3b d6                       	cmp	edx, esi
140005f37: 72 c7                       	jb	0x140005f00 <.text+0x4f00>
140005f39: 48 8b 8d 70 06 00 00        	mov	rcx, qword ptr [rbp + 1648]
140005f40: 48 33 cc                    	xor	rcx, rsp
140005f43: e8 98 6b 00 00              	call	0x14000cae0 <.text+0xbae0>
140005f48: 4c 8d 9c 24 80 07 00 00     	lea	r11, [rsp + 1920]
140005f50: 49 8b 5b 18                 	mov	rbx, qword ptr [r11 + 24]
140005f54: 49 8b 73 20                 	mov	rsi, qword ptr [r11 + 32]
140005f58: 49 8b e3                    	mov	rsp, r11
140005f5b: 5d                          	pop	rbp
140005f5c: c3                          	ret
140005f5d: cc                          	int3
140005f5e: cc                          	int3
140005f5f: cc                          	int3
140005f60: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140005f65: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140005f6a: 4c 89 44 24 18              	mov	qword ptr [rsp + 24], r8
140005f6f: 55                          	push	rbp
140005f70: 56                          	push	rsi
140005f71: 57                          	push	rdi
140005f72: 48 8b ec                    	mov	rbp, rsp
140005f75: 48 83 ec 40                 	sub	rsp, 64
140005f79: 40 8a f2                    	mov	sil, dl
140005f7c: 8b d9                       	mov	ebx, ecx
140005f7e: 49 8b d1                    	mov	rdx, r9
140005f81: 49 8b c8                    	mov	rcx, r8
140005f84: e8 97 01 00 00              	call	0x140006120 <.text+0x5120>
140005f89: 8b cb                       	mov	ecx, ebx
140005f8b: e8 dc fc ff ff              	call	0x140005c6c <.text+0x4c6c>
140005f90: 48 8b 4d 30                 	mov	rcx, qword ptr [rbp + 48]
140005f94: 8b f8                       	mov	edi, eax
140005f96: 4c 8b 81 88 00 00 00        	mov	r8, qword ptr [rcx + 136]
140005f9d: 41 3b 40 04                 	cmp	eax, dword ptr [r8 + 4]
140005fa1: 75 07                       	jne	0x140005faa <.text+0x4faa>
140005fa3: 33 c0                       	xor	eax, eax
140005fa5: e9 b8 00 00 00              	jmp	0x140006062 <.text+0x5062>
140005faa: b9 28 02 00 00              	mov	ecx, 552
140005faf: e8 bc 15 00 00              	call	0x140007570 <.text+0x6570>
140005fb4: 48 8b d8                    	mov	rbx, rax
140005fb7: 48 85 c0                    	test	rax, rax
140005fba: 0f 84 95 00 00 00           	je	0x140006055 <.text+0x5055>
140005fc0: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
140005fc4: ba 04 00 00 00              	mov	edx, 4
140005fc9: 48 8b cb                    	mov	rcx, rbx
140005fcc: 48 8b 80 88 00 00 00        	mov	rax, qword ptr [rax + 136]
140005fd3: 44 8d 42 7c                 	lea	r8d, [rdx + 124]
140005fd7: 0f 10 00                    	movups	xmm0, xmmword ptr [rax]
140005fda: 0f 11 01                    	movups	xmmword ptr [rcx], xmm0
140005fdd: 0f 10 48 10                 	movups	xmm1, xmmword ptr [rax + 16]
140005fe1: 0f 11 49 10                 	movups	xmmword ptr [rcx + 16], xmm1
140005fe5: 0f 10 40 20                 	movups	xmm0, xmmword ptr [rax + 32]
140005fe9: 0f 11 41 20                 	movups	xmmword ptr [rcx + 32], xmm0
140005fed: 0f 10 48 30                 	movups	xmm1, xmmword ptr [rax + 48]
140005ff1: 0f 11 49 30                 	movups	xmmword ptr [rcx + 48], xmm1
140005ff5: 0f 10 40 40                 	movups	xmm0, xmmword ptr [rax + 64]
140005ff9: 0f 11 41 40                 	movups	xmmword ptr [rcx + 64], xmm0
140005ffd: 0f 10 48 50                 	movups	xmm1, xmmword ptr [rax + 80]
140006001: 0f 11 49 50                 	movups	xmmword ptr [rcx + 80], xmm1
140006005: 0f 10 40 60                 	movups	xmm0, xmmword ptr [rax + 96]
140006009: 0f 11 41 60                 	movups	xmmword ptr [rcx + 96], xmm0
14000600d: 49 03 c8                    	add	rcx, r8
140006010: 0f 10 48 70                 	movups	xmm1, xmmword ptr [rax + 112]
140006014: 49 03 c0                    	add	rax, r8
140006017: 0f 11 49 f0                 	movups	xmmword ptr [rcx - 16], xmm1
14000601b: 48 83 ea 01                 	sub	rdx, 1
14000601f: 75 b6                       	jne	0x140005fd7 <.text+0x4fd7>
140006021: 0f 10 00                    	movups	xmm0, xmmword ptr [rax]
140006024: 0f 11 01                    	movups	xmmword ptr [rcx], xmm0
140006027: 0f 10 48 10                 	movups	xmm1, xmmword ptr [rax + 16]
14000602b: 0f 11 49 10                 	movups	xmmword ptr [rcx + 16], xmm1
14000602f: 48 8b 40 20                 	mov	rax, qword ptr [rax + 32]
140006033: 48 89 41 20                 	mov	qword ptr [rcx + 32], rax
140006037: 8b cf                       	mov	ecx, edi
140006039: 21 13                       	and	dword ptr [rbx], edx
14000603b: 48 8b d3                    	mov	rdx, rbx
14000603e: e8 11 02 00 00              	call	0x140006254 <.text+0x5254>
140006043: 8b f8                       	mov	edi, eax
140006045: 83 f8 ff                    	cmp	eax, -1
140006048: 75 25                       	jne	0x14000606f <.text+0x506f>
14000604a: e8 91 ed ff ff              	call	0x140004de0 <.text+0x3de0>
14000604f: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140006055: 83 cf ff                    	or	edi, -1
140006058: 48 8b cb                    	mov	rcx, rbx
14000605b: e8 18 ee ff ff              	call	0x140004e78 <.text+0x3e78>
140006060: 8b c7                       	mov	eax, edi
140006062: 48 8b 5c 24 60              	mov	rbx, qword ptr [rsp + 96]
140006067: 48 83 c4 40                 	add	rsp, 64
14000606b: 5f                          	pop	rdi
14000606c: 5e                          	pop	rsi
14000606d: 5d                          	pop	rbp
14000606e: c3                          	ret
14000606f: 40 84 f6                    	test	sil, sil
140006072: 75 05                       	jne	0x140006079 <.text+0x5079>
140006074: e8 6f db ff ff              	call	0x140003be8 <.text+0x2be8>
140006079: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
14000607d: 48 8b 88 88 00 00 00        	mov	rcx, qword ptr [rax + 136]
140006084: 83 c8 ff                    	or	eax, -1
140006087: f0                          	lock
140006088: 0f c1 01                    	xadd	dword ptr [rcx], eax
14000608b: 83 f8 01                    	cmp	eax, 1
14000608e: 75 1c                       	jne	0x1400060ac <.text+0x50ac>
140006090: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
140006094: 48 8b 88 88 00 00 00        	mov	rcx, qword ptr [rax + 136]
14000609b: 48 8d 05 be 0f 01 00        	lea	rax, [rip + 69566]      # 0x140017060
1400060a2: 48 3b c8                    	cmp	rcx, rax
1400060a5: 74 05                       	je	0x1400060ac <.text+0x50ac>
1400060a7: e8 cc ed ff ff              	call	0x140004e78 <.text+0x3e78>
1400060ac: c7 03 01 00 00 00           	mov	dword ptr [rbx], 1
1400060b2: 48 8b cb                    	mov	rcx, rbx
1400060b5: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
1400060b9: 33 db                       	xor	ebx, ebx
1400060bb: 48 89 88 88 00 00 00        	mov	qword ptr [rax + 136], rcx
1400060c2: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
1400060c6: 8b 88 a8 03 00 00           	mov	ecx, dword ptr [rax + 936]
1400060cc: 85 0d de 16 01 00           	test	dword ptr [rip + 71390], ecx # 0x1400177b0
1400060d2: 75 84                       	jne	0x140006058 <.text+0x5058>
1400060d4: 48 8d 45 30                 	lea	rax, [rbp + 48]
1400060d8: 48 89 45 f0                 	mov	qword ptr [rbp - 16], rax
1400060dc: 4c 8d 4d e4                 	lea	r9, [rbp - 28]
1400060e0: 48 8d 45 38                 	lea	rax, [rbp + 56]
1400060e4: 48 89 45 f8                 	mov	qword ptr [rbp - 8], rax
1400060e8: 4c 8d 45 f0                 	lea	r8, [rbp - 16]
1400060ec: 8d 43 05                    	lea	eax, [rbx + 5]
1400060ef: 48 8d 55 e8                 	lea	rdx, [rbp - 24]
1400060f3: 89 45 e4                    	mov	dword ptr [rbp - 28], eax
1400060f6: 48 8d 4d e0                 	lea	rcx, [rbp - 32]
1400060fa: 89 45 e8                    	mov	dword ptr [rbp - 24], eax
1400060fd: e8 ae f9 ff ff              	call	0x140005ab0 <.text+0x4ab0>
140006102: 40 84 f6                    	test	sil, sil
140006105: 0f 84 4d ff ff ff           	je	0x140006058 <.text+0x5058>
14000610b: 48 8b 45 38                 	mov	rax, qword ptr [rbp + 56]
14000610f: 48 8b 08                    	mov	rcx, qword ptr [rax]
140006112: 48 89 0d e7 15 01 00        	mov	qword ptr [rip + 71143], rcx # 0x140017700
140006119: e9 3a ff ff ff              	jmp	0x140006058 <.text+0x5058>
14000611e: cc                          	int3
14000611f: cc                          	int3
140006120: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
140006125: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
14000612a: 57                          	push	rdi
14000612b: 48 83 ec 20                 	sub	rsp, 32
14000612f: 48 8b f2                    	mov	rsi, rdx
140006132: 48 8b f9                    	mov	rdi, rcx
140006135: 8b 05 75 16 01 00           	mov	eax, dword ptr [rip + 71285] # 0x1400177b0
14000613b: 85 81 a8 03 00 00           	test	dword ptr [rcx + 936], eax
140006141: 74 13                       	je	0x140006156 <.text+0x5156>
140006143: 48 83 b9 90 00 00 00 00     	cmp	qword ptr [rcx + 144], 0
14000614b: 74 09                       	je	0x140006156 <.text+0x5156>
14000614d: 48 8b 99 88 00 00 00        	mov	rbx, qword ptr [rcx + 136]
140006154: eb 64                       	jmp	0x1400061ba <.text+0x51ba>
140006156: b9 05 00 00 00              	mov	ecx, 5
14000615b: e8 a4 0a 00 00              	call	0x140006c04 <.text+0x5c04>
140006160: 90                          	nop
140006161: 48 8b 9f 88 00 00 00        	mov	rbx, qword ptr [rdi + 136]
140006168: 48 89 5c 24 30              	mov	qword ptr [rsp + 48], rbx
14000616d: 48 3b 1e                    	cmp	rbx, qword ptr [rsi]
140006170: 74 3e                       	je	0x1400061b0 <.text+0x51b0>
140006172: 48 85 db                    	test	rbx, rbx
140006175: 74 22                       	je	0x140006199 <.text+0x5199>
140006177: 83 c8 ff                    	or	eax, -1
14000617a: f0                          	lock
14000617b: 0f c1 03                    	xadd	dword ptr [rbx], eax
14000617e: 83 f8 01                    	cmp	eax, 1
140006181: 75 16                       	jne	0x140006199 <.text+0x5199>
140006183: 48 8d 05 d6 0e 01 00        	lea	rax, [rip + 69334]      # 0x140017060
14000618a: 48 8b 4c 24 30              	mov	rcx, qword ptr [rsp + 48]
14000618f: 48 3b c8                    	cmp	rcx, rax
140006192: 74 05                       	je	0x140006199 <.text+0x5199>
140006194: e8 df ec ff ff              	call	0x140004e78 <.text+0x3e78>
140006199: 48 8b 06                    	mov	rax, qword ptr [rsi]
14000619c: 48 89 87 88 00 00 00        	mov	qword ptr [rdi + 136], rax
1400061a3: 48 89 44 24 30              	mov	qword ptr [rsp + 48], rax
1400061a8: f0                          	lock
1400061a9: ff 00                       	inc	dword ptr [rax]
1400061ab: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400061b0: b9 05 00 00 00              	mov	ecx, 5
1400061b5: e8 9e 0a 00 00              	call	0x140006c58 <.text+0x5c58>
1400061ba: 48 85 db                    	test	rbx, rbx
1400061bd: 74 13                       	je	0x1400061d2 <.text+0x51d2>
1400061bf: 48 8b c3                    	mov	rax, rbx
1400061c2: 48 8b 5c 24 38              	mov	rbx, qword ptr [rsp + 56]
1400061c7: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
1400061cc: 48 83 c4 20                 	add	rsp, 32
1400061d0: 5f                          	pop	rdi
1400061d1: c3                          	ret
1400061d2: e8 fd e0 ff ff              	call	0x1400042d4 <.text+0x32d4>
1400061d7: 90                          	nop
1400061d8: 48 83 ec 28                 	sub	rsp, 40
1400061dc: 80 3d e1 1b 01 00 00        	cmp	byte ptr [rip + 72673], 0 # 0x140017dc4
1400061e3: 75 4c                       	jne	0x140006231 <.text+0x5231>
1400061e5: 48 8d 0d b4 11 01 00        	lea	rcx, [rip + 70068]      # 0x1400173a0
1400061ec: 48 89 0d bd 1b 01 00        	mov	qword ptr [rip + 72637], rcx # 0x140017db0
1400061f3: 48 8d 05 66 0e 01 00        	lea	rax, [rip + 69222]      # 0x140017060
1400061fa: 48 8d 0d 8f 10 01 00        	lea	rcx, [rip + 69775]      # 0x140017290
140006201: 48 89 05 b0 1b 01 00        	mov	qword ptr [rip + 72624], rax # 0x140017db8
140006208: 48 89 0d 99 1b 01 00        	mov	qword ptr [rip + 72601], rcx # 0x140017da8
14000620f: e8 c4 e6 ff ff              	call	0x1400048d8 <.text+0x38d8>
140006214: 4c 8d 0d 9d 1b 01 00        	lea	r9, [rip + 72605]       # 0x140017db8
14000621b: 4c 8b c0                    	mov	r8, rax
14000621e: b2 01                       	mov	dl, 1
140006220: b9 fd ff ff ff              	mov	ecx, 4294967293
140006225: e8 36 fd ff ff              	call	0x140005f60 <.text+0x4f60>
14000622a: c6 05 93 1b 01 00 01        	mov	byte ptr [rip + 72595], 1 # 0x140017dc4
140006231: b0 01                       	mov	al, 1
140006233: 48 83 c4 28                 	add	rsp, 40
140006237: c3                          	ret
140006238: 48 83 ec 28                 	sub	rsp, 40
14000623c: e8 c3 e5 ff ff              	call	0x140004804 <.text+0x3804>
140006241: 48 8b c8                    	mov	rcx, rax
140006244: 48 8d 15 6d 1b 01 00        	lea	rdx, [rip + 72557]      # 0x140017db8
14000624b: 48 83 c4 28                 	add	rsp, 40
14000624f: e9 cc fe ff ff              	jmp	0x140006120 <.text+0x5120>
140006254: 48 89 5c 24 18              	mov	qword ptr [rsp + 24], rbx
140006259: 55                          	push	rbp
14000625a: 56                          	push	rsi
14000625b: 57                          	push	rdi
14000625c: 41 54                       	push	r12
14000625e: 41 55                       	push	r13
140006260: 41 56                       	push	r14
140006262: 41 57                       	push	r15
140006264: 48 83 ec 40                 	sub	rsp, 64
140006268: 48 8b 05 b9 0d 01 00        	mov	rax, qword ptr [rip + 69049] # 0x140017028
14000626f: 48 33 c4                    	xor	rax, rsp
140006272: 48 89 44 24 38              	mov	qword ptr [rsp + 56], rax
140006277: 48 8b f2                    	mov	rsi, rdx
14000627a: e8 ed f9 ff ff              	call	0x140005c6c <.text+0x4c6c>
14000627f: 33 db                       	xor	ebx, ebx
140006281: 8b f8                       	mov	edi, eax
140006283: 85 c0                       	test	eax, eax
140006285: 0f 84 53 02 00 00           	je	0x1400064de <.text+0x54de>
14000628b: 4c 8d 2d 1e 12 01 00        	lea	r13, [rip + 70174]      # 0x1400174b0
140006292: 44 8b f3                    	mov	r14d, ebx
140006295: 49 8b c5                    	mov	rax, r13
140006298: 8d 6b 01                    	lea	ebp, [rbx + 1]
14000629b: 39 38                       	cmp	dword ptr [rax], edi
14000629d: 0f 84 4e 01 00 00           	je	0x1400063f1 <.text+0x53f1>
1400062a3: 44 03 f5                    	add	r14d, ebp
1400062a6: 48 83 c0 30                 	add	rax, 48
1400062aa: 41 83 fe 05                 	cmp	r14d, 5
1400062ae: 72 eb                       	jb	0x14000629b <.text+0x529b>
1400062b0: 81 ff e8 fd 00 00           	cmp	edi, 65000
1400062b6: 0f 84 2d 01 00 00           	je	0x1400063e9 <.text+0x53e9>
1400062bc: 0f b7 cf                    	movzx	ecx, di
1400062bf: ff 15 9b 7e 00 00           	call	qword ptr [rip + 32411] # 0x14000e160
1400062c5: 85 c0                       	test	eax, eax
1400062c7: 0f 84 1c 01 00 00           	je	0x1400063e9 <.text+0x53e9>
1400062cd: b8 e9 fd 00 00              	mov	eax, 65001
1400062d2: 3b f8                       	cmp	edi, eax
1400062d4: 75 2e                       	jne	0x140006304 <.text+0x5304>
1400062d6: 48 89 46 04                 	mov	qword ptr [rsi + 4], rax
1400062da: 48 89 9e 20 02 00 00        	mov	qword ptr [rsi + 544], rbx
1400062e1: 89 5e 18                    	mov	dword ptr [rsi + 24], ebx
1400062e4: 66 89 5e 1c                 	mov	word ptr [rsi + 28], bx
1400062e8: 48 8d 7e 0c                 	lea	rdi, [rsi + 12]
1400062ec: 0f b7 c3                    	movzx	eax, bx
1400062ef: b9 06 00 00 00              	mov	ecx, 6
1400062f4: 66 f3 ab                    	rep		stosw	word ptr es:[rdi], ax
1400062f7: 48 8b ce                    	mov	rcx, rsi
1400062fa: e8 7d fa ff ff              	call	0x140005d7c <.text+0x4d7c>
1400062ff: e9 e2 01 00 00              	jmp	0x1400064e6 <.text+0x54e6>
140006304: 48 8d 54 24 20              	lea	rdx, [rsp + 32]
140006309: 8b cf                       	mov	ecx, edi
14000630b: ff 15 67 7e 00 00           	call	qword ptr [rip + 32359] # 0x14000e178
140006311: 85 c0                       	test	eax, eax
140006313: 0f 84 c4 00 00 00           	je	0x1400063dd <.text+0x53dd>
140006319: 33 d2                       	xor	edx, edx
14000631b: 48 8d 4e 18                 	lea	rcx, [rsi + 24]
14000631f: 41 b8 01 01 00 00           	mov	r8d, 257
140006325: e8 66 ba ff ff              	call	0x140001d90 <.text+0xd90>
14000632a: 83 7c 24 20 02              	cmp	dword ptr [rsp + 32], 2
14000632f: 89 7e 04                    	mov	dword ptr [rsi + 4], edi
140006332: 48 89 9e 20 02 00 00        	mov	qword ptr [rsi + 544], rbx
140006339: 0f 85 94 00 00 00           	jne	0x1400063d3 <.text+0x53d3>
14000633f: 48 8d 4c 24 26              	lea	rcx, [rsp + 38]
140006344: 38 5c 24 26                 	cmp	byte ptr [rsp + 38], bl
140006348: 74 2c                       	je	0x140006376 <.text+0x5376>
14000634a: 38 59 01                    	cmp	byte ptr [rcx + 1], bl
14000634d: 74 27                       	je	0x140006376 <.text+0x5376>
14000634f: 0f b6 41 01                 	movzx	eax, byte ptr [rcx + 1]
140006353: 0f b6 11                    	movzx	edx, byte ptr [rcx]
140006356: 3b d0                       	cmp	edx, eax
140006358: 77 14                       	ja	0x14000636e <.text+0x536e>
14000635a: 2b c2                       	sub	eax, edx
14000635c: 8d 7a 01                    	lea	edi, [rdx + 1]
14000635f: 8d 14 28                    	lea	edx, [rax + rbp]
140006362: 80 4c 37 18 04              	or	byte ptr [rdi + rsi + 24], 4
140006367: 03 fd                       	add	edi, ebp
140006369: 48 2b d5                    	sub	rdx, rbp
14000636c: 75 f4                       	jne	0x140006362 <.text+0x5362>
14000636e: 48 83 c1 02                 	add	rcx, 2
140006372: 38 19                       	cmp	byte ptr [rcx], bl
140006374: 75 d4                       	jne	0x14000634a <.text+0x534a>
140006376: 48 8d 46 1a                 	lea	rax, [rsi + 26]
14000637a: b9 fe 00 00 00              	mov	ecx, 254
14000637f: 80 08 08                    	or	byte ptr [rax], 8
140006382: 48 03 c5                    	add	rax, rbp
140006385: 48 2b cd                    	sub	rcx, rbp
140006388: 75 f5                       	jne	0x14000637f <.text+0x537f>
14000638a: 8b 4e 04                    	mov	ecx, dword ptr [rsi + 4]
14000638d: 81 e9 a4 03 00 00           	sub	ecx, 932
140006393: 74 2e                       	je	0x1400063c3 <.text+0x53c3>
140006395: 83 e9 04                    	sub	ecx, 4
140006398: 74 20                       	je	0x1400063ba <.text+0x53ba>
14000639a: 83 e9 0d                    	sub	ecx, 13
14000639d: 74 12                       	je	0x1400063b1 <.text+0x53b1>
14000639f: 3b cd                       	cmp	ecx, ebp
1400063a1: 74 05                       	je	0x1400063a8 <.text+0x53a8>
1400063a3: 48 8b c3                    	mov	rax, rbx
1400063a6: eb 22                       	jmp	0x1400063ca <.text+0x53ca>
1400063a8: 48 8b 05 01 92 00 00        	mov	rax, qword ptr [rip + 37377] # 0x14000f5b0
1400063af: eb 19                       	jmp	0x1400063ca <.text+0x53ca>
1400063b1: 48 8b 05 f0 91 00 00        	mov	rax, qword ptr [rip + 37360] # 0x14000f5a8
1400063b8: eb 10                       	jmp	0x1400063ca <.text+0x53ca>
1400063ba: 48 8b 05 df 91 00 00        	mov	rax, qword ptr [rip + 37343] # 0x14000f5a0
1400063c1: eb 07                       	jmp	0x1400063ca <.text+0x53ca>
1400063c3: 48 8b 05 ce 91 00 00        	mov	rax, qword ptr [rip + 37326] # 0x14000f598
1400063ca: 48 89 86 20 02 00 00        	mov	qword ptr [rsi + 544], rax
1400063d1: eb 02                       	jmp	0x1400063d5 <.text+0x53d5>
1400063d3: 8b eb                       	mov	ebp, ebx
1400063d5: 89 6e 08                    	mov	dword ptr [rsi + 8], ebp
1400063d8: e9 0b ff ff ff              	jmp	0x1400062e8 <.text+0x52e8>
1400063dd: 39 1d dd 19 01 00           	cmp	dword ptr [rip + 72157], ebx # 0x140017dc0
1400063e3: 0f 85 f5 00 00 00           	jne	0x1400064de <.text+0x54de>
1400063e9: 83 c8 ff                    	or	eax, -1
1400063ec: e9 f7 00 00 00              	jmp	0x1400064e8 <.text+0x54e8>
1400063f1: 33 d2                       	xor	edx, edx
1400063f3: 48 8d 4e 18                 	lea	rcx, [rsi + 24]
1400063f7: 41 b8 01 01 00 00           	mov	r8d, 257
1400063fd: e8 8e b9 ff ff              	call	0x140001d90 <.text+0xd90>
140006402: 41 8b c6                    	mov	eax, r14d
140006405: 4d 8d 4d 10                 	lea	r9, [r13 + 16]
140006409: 4c 8d 3d 90 10 01 00        	lea	r15, [rip + 69776]      # 0x1400174a0
140006410: 41 be 04 00 00 00           	mov	r14d, 4
140006416: 4c 8d 1c 40                 	lea	r11, [rax + 2*rax]
14000641a: 49 c1 e3 04                 	shl	r11, 4
14000641e: 4d 03 cb                    	add	r9, r11
140006421: 49 8b d1                    	mov	rdx, r9
140006424: 41 38 19                    	cmp	byte ptr [r9], bl
140006427: 74 3e                       	je	0x140006467 <.text+0x5467>
140006429: 38 5a 01                    	cmp	byte ptr [rdx + 1], bl
14000642c: 74 39                       	je	0x140006467 <.text+0x5467>
14000642e: 44 0f b6 02                 	movzx	r8d, byte ptr [rdx]
140006432: 0f b6 42 01                 	movzx	eax, byte ptr [rdx + 1]
140006436: 44 3b c0                    	cmp	r8d, eax
140006439: 77 24                       	ja	0x14000645f <.text+0x545f>
14000643b: 45 8d 50 01                 	lea	r10d, [r8 + 1]
14000643f: 41 81 fa 01 01 00 00        	cmp	r10d, 257
140006446: 73 17                       	jae	0x14000645f <.text+0x545f>
140006448: 41 8a 07                    	mov	al, byte ptr [r15]
14000644b: 44 03 c5                    	add	r8d, ebp
14000644e: 41 08 44 32 18              	or	byte ptr [r10 + rsi + 24], al
140006453: 44 03 d5                    	add	r10d, ebp
140006456: 0f b6 42 01                 	movzx	eax, byte ptr [rdx + 1]
14000645a: 44 3b c0                    	cmp	r8d, eax
14000645d: 76 e0                       	jbe	0x14000643f <.text+0x543f>
14000645f: 48 83 c2 02                 	add	rdx, 2
140006463: 38 1a                       	cmp	byte ptr [rdx], bl
140006465: 75 c2                       	jne	0x140006429 <.text+0x5429>
140006467: 49 83 c1 08                 	add	r9, 8
14000646b: 4c 03 fd                    	add	r15, rbp
14000646e: 4c 2b f5                    	sub	r14, rbp
140006471: 75 ae                       	jne	0x140006421 <.text+0x5421>
140006473: 89 7e 04                    	mov	dword ptr [rsi + 4], edi
140006476: 89 6e 08                    	mov	dword ptr [rsi + 8], ebp
140006479: 81 ef a4 03 00 00           	sub	edi, 932
14000647f: 74 29                       	je	0x1400064aa <.text+0x54aa>
140006481: 83 ef 04                    	sub	edi, 4
140006484: 74 1b                       	je	0x1400064a1 <.text+0x54a1>
140006486: 83 ef 0d                    	sub	edi, 13
140006489: 74 0d                       	je	0x140006498 <.text+0x5498>
14000648b: 3b fd                       	cmp	edi, ebp
14000648d: 75 22                       	jne	0x1400064b1 <.text+0x54b1>
14000648f: 48 8b 1d 1a 91 00 00        	mov	rbx, qword ptr [rip + 37146] # 0x14000f5b0
140006496: eb 19                       	jmp	0x1400064b1 <.text+0x54b1>
140006498: 48 8b 1d 09 91 00 00        	mov	rbx, qword ptr [rip + 37129] # 0x14000f5a8
14000649f: eb 10                       	jmp	0x1400064b1 <.text+0x54b1>
1400064a1: 48 8b 1d f8 90 00 00        	mov	rbx, qword ptr [rip + 37112] # 0x14000f5a0
1400064a8: eb 07                       	jmp	0x1400064b1 <.text+0x54b1>
1400064aa: 48 8b 1d e7 90 00 00        	mov	rbx, qword ptr [rip + 37095] # 0x14000f598
1400064b1: 4c 2b de                    	sub	r11, rsi
1400064b4: 48 89 9e 20 02 00 00        	mov	qword ptr [rsi + 544], rbx
1400064bb: 48 8d 56 0c                 	lea	rdx, [rsi + 12]
1400064bf: b9 06 00 00 00              	mov	ecx, 6
1400064c4: 4b 8d 3c 2b                 	lea	rdi, [r11 + r13]
1400064c8: 0f b7 44 17 f8              	movzx	eax, word ptr [rdi + rdx - 8]
1400064cd: 66 89 02                    	mov	word ptr [rdx], ax
1400064d0: 48 8d 52 02                 	lea	rdx, [rdx + 2]
1400064d4: 48 2b cd                    	sub	rcx, rbp
1400064d7: 75 ef                       	jne	0x1400064c8 <.text+0x54c8>
1400064d9: e9 19 fe ff ff              	jmp	0x1400062f7 <.text+0x52f7>
1400064de: 48 8b ce                    	mov	rcx, rsi
1400064e1: e8 06 f8 ff ff              	call	0x140005cec <.text+0x4cec>
1400064e6: 33 c0                       	xor	eax, eax
1400064e8: 48 8b 4c 24 38              	mov	rcx, qword ptr [rsp + 56]
1400064ed: 48 33 cc                    	xor	rcx, rsp
1400064f0: e8 eb 65 00 00              	call	0x14000cae0 <.text+0xbae0>
1400064f5: 48 8b 9c 24 90 00 00 00     	mov	rbx, qword ptr [rsp + 144]
1400064fd: 48 83 c4 40                 	add	rsp, 64
140006501: 41 5f                       	pop	r15
140006503: 41 5e                       	pop	r14
140006505: 41 5d                       	pop	r13
140006507: 41 5c                       	pop	r12
140006509: 5f                          	pop	rdi
14000650a: 5e                          	pop	rsi
14000650b: 5d                          	pop	rbp
14000650c: c3                          	ret
14000650d: cc                          	int3
14000650e: cc                          	int3
14000650f: cc                          	int3
140006510: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140006515: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000651a: 57                          	push	rdi
14000651b: 48 83 ec 40                 	sub	rsp, 64
14000651f: 8b da                       	mov	ebx, edx
140006521: 41 8b f9                    	mov	edi, r9d
140006524: 48 8b d1                    	mov	rdx, rcx
140006527: 41 8b f0                    	mov	esi, r8d
14000652a: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
14000652f: e8 00 de ff ff              	call	0x140004334 <.text+0x3334>
140006534: 48 8b 44 24 30              	mov	rax, qword ptr [rsp + 48]
140006539: 0f b6 d3                    	movzx	edx, bl
14000653c: 40 84 7c 02 19              	test	byte ptr [rdx + rax + 25], dil
140006541: 75 1a                       	jne	0x14000655d <.text+0x555d>
140006543: 85 f6                       	test	esi, esi
140006545: 74 10                       	je	0x140006557 <.text+0x5557>
140006547: 48 8b 44 24 28              	mov	rax, qword ptr [rsp + 40]
14000654c: 48 8b 08                    	mov	rcx, qword ptr [rax]
14000654f: 0f b7 04 51                 	movzx	eax, word ptr [rcx + 2*rdx]
140006553: 23 c6                       	and	eax, esi
140006555: eb 02                       	jmp	0x140006559 <.text+0x5559>
140006557: 33 c0                       	xor	eax, eax
140006559: 85 c0                       	test	eax, eax
14000655b: 74 05                       	je	0x140006562 <.text+0x5562>
14000655d: b8 01 00 00 00              	mov	eax, 1
140006562: 80 7c 24 38 00              	cmp	byte ptr [rsp + 56], 0
140006567: 74 0c                       	je	0x140006575 <.text+0x5575>
140006569: 48 8b 4c 24 20              	mov	rcx, qword ptr [rsp + 32]
14000656e: 83 a1 a8 03 00 00 fd        	and	dword ptr [rcx + 936], -3
140006575: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
14000657a: 48 8b 74 24 58              	mov	rsi, qword ptr [rsp + 88]
14000657f: 48 83 c4 40                 	add	rsp, 64
140006583: 5f                          	pop	rdi
140006584: c3                          	ret
140006585: cc                          	int3
140006586: cc                          	int3
140006587: cc                          	int3
140006588: 8b d1                       	mov	edx, ecx
14000658a: 41 b9 04 00 00 00           	mov	r9d, 4
140006590: 33 c9                       	xor	ecx, ecx
140006592: 45 33 c0                    	xor	r8d, r8d
140006595: e9 76 ff ff ff              	jmp	0x140006510 <.text+0x5510>
14000659a: cc                          	int3
14000659b: cc                          	int3
14000659c: 81 f9 35 c4 00 00           	cmp	ecx, 50229
1400065a2: 77 20                       	ja	0x1400065c4 <.text+0x55c4>
1400065a4: 8d 81 d4 3b ff ff           	lea	eax, [rcx - 50220]
1400065aa: 83 f8 09                    	cmp	eax, 9
1400065ad: 77 0c                       	ja	0x1400065bb <.text+0x55bb>
1400065af: 41 ba a7 02 00 00           	mov	r10d, 679
1400065b5: 41 0f a3 c2                 	bt	r10d, eax
1400065b9: 72 05                       	jb	0x1400065c0 <.text+0x55c0>
1400065bb: 83 f9 2a                    	cmp	ecx, 42
1400065be: 75 2f                       	jne	0x1400065ef <.text+0x55ef>
1400065c0: 33 d2                       	xor	edx, edx
1400065c2: eb 2b                       	jmp	0x1400065ef <.text+0x55ef>
1400065c4: 81 f9 98 d6 00 00           	cmp	ecx, 54936
1400065ca: 74 20                       	je	0x1400065ec <.text+0x55ec>
1400065cc: 81 f9 a9 de 00 00           	cmp	ecx, 57001
1400065d2: 76 1b                       	jbe	0x1400065ef <.text+0x55ef>
1400065d4: 81 f9 b3 de 00 00           	cmp	ecx, 57011
1400065da: 76 e4                       	jbe	0x1400065c0 <.text+0x55c0>
1400065dc: 81 f9 e8 fd 00 00           	cmp	ecx, 65000
1400065e2: 74 dc                       	je	0x1400065c0 <.text+0x55c0>
1400065e4: 81 f9 e9 fd 00 00           	cmp	ecx, 65001
1400065ea: 75 03                       	jne	0x1400065ef <.text+0x55ef>
1400065ec: 83 e2 08                    	and	edx, 8
1400065ef: 48 ff 25 8a 7b 00 00        	jmp	qword ptr [rip + 31626] # 0x14000e180
1400065f6: cc                          	int3
1400065f7: cc                          	int3
1400065f8: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400065fd: 57                          	push	rdi
1400065fe: 8d 81 18 02 ff ff           	lea	eax, [rcx - 65000]
140006604: 45 8b d9                    	mov	r11d, r9d
140006607: 83 f8 01                    	cmp	eax, 1
14000660a: 49 8b d8                    	mov	rbx, r8
14000660d: 41 0f 96 c2                 	setbe	r10b
140006611: 33 ff                       	xor	edi, edi
140006613: 81 f9 35 c4 00 00           	cmp	ecx, 50229
140006619: 77 1c                       	ja	0x140006637 <.text+0x5637>
14000661b: 8d 81 d4 3b ff ff           	lea	eax, [rcx - 50220]
140006621: 83 f8 09                    	cmp	eax, 9
140006624: 77 0c                       	ja	0x140006632 <.text+0x5632>
140006626: 41 b8 a7 02 00 00           	mov	r8d, 679
14000662c: 41 0f a3 c0                 	bt	r8d, eax
140006630: 72 33                       	jb	0x140006665 <.text+0x5665>
140006632: 83 f9 2a                    	cmp	ecx, 42
140006635: eb 26                       	jmp	0x14000665d <.text+0x565d>
140006637: 81 f9 98 d6 00 00           	cmp	ecx, 54936
14000663d: 74 26                       	je	0x140006665 <.text+0x5665>
14000663f: 81 f9 a9 de 00 00           	cmp	ecx, 57001
140006645: 76 18                       	jbe	0x14000665f <.text+0x565f>
140006647: 81 f9 b3 de 00 00           	cmp	ecx, 57011
14000664d: 76 16                       	jbe	0x140006665 <.text+0x5665>
14000664f: 81 f9 e8 fd 00 00           	cmp	ecx, 65000
140006655: 74 0e                       	je	0x140006665 <.text+0x5665>
140006657: 81 f9 e9 fd 00 00           	cmp	ecx, 65001
14000665d: 74 06                       	je	0x140006665 <.text+0x5665>
14000665f: 0f ba f2 07                 	btr	edx, 7
140006663: eb 02                       	jmp	0x140006667 <.text+0x5667>
140006665: 8b d7                       	mov	edx, edi
140006667: 48 8b 44 24 48              	mov	rax, qword ptr [rsp + 72]
14000666c: 45 84 d2                    	test	r10b, r10b
14000666f: 4c 8b 4c 24 40              	mov	r9, qword ptr [rsp + 64]
140006674: 4c 8b c0                    	mov	r8, rax
140006677: 4c 0f 45 c7                 	cmovne	r8, rdi
14000667b: 4c 0f 45 cf                 	cmovne	r9, rdi
14000667f: 74 07                       	je	0x140006688 <.text+0x5688>
140006681: 48 85 c0                    	test	rax, rax
140006684: 74 02                       	je	0x140006688 <.text+0x5688>
140006686: 89 38                       	mov	dword ptr [rax], edi
140006688: 4c 89 44 24 48              	mov	qword ptr [rsp + 72], r8
14000668d: 4c 8b c3                    	mov	r8, rbx
140006690: 4c 89 4c 24 40              	mov	qword ptr [rsp + 64], r9
140006695: 45 8b cb                    	mov	r9d, r11d
140006698: 48 8b 5c 24 10              	mov	rbx, qword ptr [rsp + 16]
14000669d: 5f                          	pop	rdi
14000669e: 48 ff 25 e3 7a 00 00        	jmp	qword ptr [rip + 31459] # 0x14000e188
1400066a5: cc                          	int3
1400066a6: cc                          	int3
1400066a7: cc                          	int3
1400066a8: 48 8b c4                    	mov	rax, rsp
1400066ab: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
1400066af: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
1400066b3: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
1400066b7: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
1400066bb: 41 56                       	push	r14
1400066bd: 48 83 ec 40                 	sub	rsp, 64
1400066c1: ff 15 c9 7a 00 00           	call	qword ptr [rip + 31433] # 0x14000e190
1400066c7: 45 33 f6                    	xor	r14d, r14d
1400066ca: 48 8b d8                    	mov	rbx, rax
1400066cd: 48 85 c0                    	test	rax, rax
1400066d0: 0f 84 a4 00 00 00           	je	0x14000677a <.text+0x577a>
1400066d6: 48 8b f0                    	mov	rsi, rax
1400066d9: 66 44 39 30                 	cmp	word ptr [rax], r14w
1400066dd: 74 1c                       	je	0x1400066fb <.text+0x56fb>
1400066df: 48 83 c8 ff                 	or	rax, -1
1400066e3: 48 ff c0                    	inc	rax
1400066e6: 66 44 39 34 46              	cmp	word ptr [rsi + 2*rax], r14w
1400066eb: 75 f6                       	jne	0x1400066e3 <.text+0x56e3>
1400066ed: 48 8d 34 46                 	lea	rsi, [rsi + 2*rax]
1400066f1: 48 83 c6 02                 	add	rsi, 2
1400066f5: 66 44 39 36                 	cmp	word ptr [rsi], r14w
1400066f9: 75 e4                       	jne	0x1400066df <.text+0x56df>
1400066fb: 4c 89 74 24 38              	mov	qword ptr [rsp + 56], r14
140006700: 48 2b f3                    	sub	rsi, rbx
140006703: 4c 89 74 24 30              	mov	qword ptr [rsp + 48], r14
140006708: 48 83 c6 02                 	add	rsi, 2
14000670c: 48 d1 fe                    	sar	rsi
14000670f: 4c 8b c3                    	mov	r8, rbx
140006712: 44 8b ce                    	mov	r9d, esi
140006715: 44 89 74 24 28              	mov	dword ptr [rsp + 40], r14d
14000671a: 33 d2                       	xor	edx, edx
14000671c: 4c 89 74 24 20              	mov	qword ptr [rsp + 32], r14
140006721: 33 c9                       	xor	ecx, ecx
140006723: e8 d0 fe ff ff              	call	0x1400065f8 <.text+0x55f8>
140006728: 48 63 e8                    	movsxd	rbp, eax
14000672b: 85 c0                       	test	eax, eax
14000672d: 74 4b                       	je	0x14000677a <.text+0x577a>
14000672f: 48 8b cd                    	mov	rcx, rbp
140006732: e8 39 0e 00 00              	call	0x140007570 <.text+0x6570>
140006737: 48 8b f8                    	mov	rdi, rax
14000673a: 48 85 c0                    	test	rax, rax
14000673d: 74 2e                       	je	0x14000676d <.text+0x576d>
14000673f: 4c 89 74 24 38              	mov	qword ptr [rsp + 56], r14
140006744: 44 8b ce                    	mov	r9d, esi
140006747: 4c 89 74 24 30              	mov	qword ptr [rsp + 48], r14
14000674c: 4c 8b c3                    	mov	r8, rbx
14000674f: 89 6c 24 28                 	mov	dword ptr [rsp + 40], ebp
140006753: 33 d2                       	xor	edx, edx
140006755: 33 c9                       	xor	ecx, ecx
140006757: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000675c: e8 97 fe ff ff              	call	0x1400065f8 <.text+0x55f8>
140006761: 85 c0                       	test	eax, eax
140006763: 74 08                       	je	0x14000676d <.text+0x576d>
140006765: 48 8b f7                    	mov	rsi, rdi
140006768: 49 8b fe                    	mov	rdi, r14
14000676b: eb 03                       	jmp	0x140006770 <.text+0x5770>
14000676d: 49 8b f6                    	mov	rsi, r14
140006770: 48 8b cf                    	mov	rcx, rdi
140006773: e8 00 e7 ff ff              	call	0x140004e78 <.text+0x3e78>
140006778: eb 03                       	jmp	0x14000677d <.text+0x577d>
14000677a: 49 8b f6                    	mov	rsi, r14
14000677d: 48 85 db                    	test	rbx, rbx
140006780: 74 09                       	je	0x14000678b <.text+0x578b>
140006782: 48 8b cb                    	mov	rcx, rbx
140006785: ff 15 0d 7a 00 00           	call	qword ptr [rip + 31245] # 0x14000e198
14000678b: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
140006790: 48 8b c6                    	mov	rax, rsi
140006793: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
140006798: 48 8b 6c 24 58              	mov	rbp, qword ptr [rsp + 88]
14000679d: 48 8b 7c 24 68              	mov	rdi, qword ptr [rsp + 104]
1400067a2: 48 83 c4 40                 	add	rsp, 64
1400067a6: 41 5e                       	pop	r14
1400067a8: c3                          	ret
1400067a9: cc                          	int3
1400067aa: cc                          	int3
1400067ab: cc                          	int3
1400067ac: 48 89 5c 24 18              	mov	qword ptr [rsp + 24], rbx
1400067b1: 89 54 24 10                 	mov	dword ptr [rsp + 16], edx
1400067b5: 55                          	push	rbp
1400067b6: 56                          	push	rsi
1400067b7: 57                          	push	rdi
1400067b8: 41 54                       	push	r12
1400067ba: 41 55                       	push	r13
1400067bc: 41 56                       	push	r14
1400067be: 41 57                       	push	r15
1400067c0: 48 83 ec 30                 	sub	rsp, 48
1400067c4: 33 f6                       	xor	esi, esi
1400067c6: 8b da                       	mov	ebx, edx
1400067c8: 4c 8b f9                    	mov	r15, rcx
1400067cb: 48 85 c9                    	test	rcx, rcx
1400067ce: 75 14                       	jne	0x1400067e4 <.text+0x57e4>
1400067d0: e8 0b e6 ff ff              	call	0x140004de0 <.text+0x3de0>
1400067d5: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
1400067db: 48 83 c8 ff                 	or	rax, -1
1400067df: e9 bb 02 00 00              	jmp	0x140006a9f <.text+0x5a9f>
1400067e4: ba 3d 00 00 00              	mov	edx, 61
1400067e9: 49 8b ff                    	mov	rdi, r15
1400067ec: e8 e7 66 00 00              	call	0x14000ced8 <.text+0xbed8>
1400067f1: 4c 8b e8                    	mov	r13, rax
1400067f4: 48 85 c0                    	test	rax, rax
1400067f7: 0f 84 81 02 00 00           	je	0x140006a7e <.text+0x5a7e>
1400067fd: 49 3b c7                    	cmp	rax, r15
140006800: 0f 84 78 02 00 00           	je	0x140006a7e <.text+0x5a7e>
140006806: 4c 8b 35 eb 14 01 00        	mov	r14, qword ptr [rip + 70891] # 0x140017cf8
14000680d: 4c 3b 35 fc 14 01 00        	cmp	r14, qword ptr [rip + 70908] # 0x140017d10
140006814: 40 8a 68 01                 	mov	bpl, byte ptr [rax + 1]
140006818: 40 88 6c 24 70              	mov	byte ptr [rsp + 112], bpl
14000681d: 75 12                       	jne	0x140006831 <.text+0x5831>
14000681f: 49 8b ce                    	mov	rcx, r14
140006822: e8 a5 02 00 00              	call	0x140006acc <.text+0x5acc>
140006827: 4c 8b f0                    	mov	r14, rax
14000682a: 48 89 05 c7 14 01 00        	mov	qword ptr [rip + 70855], rax # 0x140017cf8
140006831: 41 bc 01 00 00 00           	mov	r12d, 1
140006837: 4d 85 f6                    	test	r14, r14
14000683a: 0f 85 b5 00 00 00           	jne	0x1400068f5 <.text+0x58f5>
140006840: 85 db                       	test	ebx, ebx
140006842: 74 3f                       	je	0x140006883 <.text+0x5883>
140006844: 48 39 35 b5 14 01 00        	cmp	qword ptr [rip + 70837], rsi # 0x140017d00
14000684b: 74 36                       	je	0x140006883 <.text+0x5883>
14000684d: e8 56 ce ff ff              	call	0x1400036a8 <.text+0x26a8>
140006852: 48 85 c0                    	test	rax, rax
140006855: 0f 84 23 02 00 00           	je	0x140006a7e <.text+0x5a7e>
14000685b: 4c 8b 35 96 14 01 00        	mov	r14, qword ptr [rip + 70806] # 0x140017cf8
140006862: 4c 3b 35 a7 14 01 00        	cmp	r14, qword ptr [rip + 70823] # 0x140017d10
140006869: 0f 85 81 00 00 00           	jne	0x1400068f0 <.text+0x58f0>
14000686f: 49 8b ce                    	mov	rcx, r14
140006872: e8 55 02 00 00              	call	0x140006acc <.text+0x5acc>
140006877: 4c 8b f0                    	mov	r14, rax
14000687a: 48 89 05 77 14 01 00        	mov	qword ptr [rip + 70775], rax # 0x140017cf8
140006881: eb 6d                       	jmp	0x1400068f0 <.text+0x58f0>
140006883: 40 84 ed                    	test	bpl, bpl
140006886: 0f 84 01 02 00 00           	je	0x140006a8d <.text+0x5a8d>
14000688c: ba 08 00 00 00              	mov	edx, 8
140006891: 49 8b cc                    	mov	rcx, r12
140006894: e8 67 e5 ff ff              	call	0x140004e00 <.text+0x3e00>
140006899: 33 c9                       	xor	ecx, ecx
14000689b: 48 89 05 56 14 01 00        	mov	qword ptr [rip + 70742], rax # 0x140017cf8
1400068a2: e8 d1 e5 ff ff              	call	0x140004e78 <.text+0x3e78>
1400068a7: 4c 8b 35 4a 14 01 00        	mov	r14, qword ptr [rip + 70730] # 0x140017cf8
1400068ae: 4d 85 f6                    	test	r14, r14
1400068b1: 75 09                       	jne	0x1400068bc <.text+0x58bc>
1400068b3: 48 83 cd ff                 	or	rbp, -1
1400068b7: e9 d3 01 00 00              	jmp	0x140006a8f <.text+0x5a8f>
1400068bc: 48 39 35 3d 14 01 00        	cmp	qword ptr [rip + 70717], rsi # 0x140017d00
1400068c3: 75 2b                       	jne	0x1400068f0 <.text+0x58f0>
1400068c5: ba 08 00 00 00              	mov	edx, 8
1400068ca: 49 8b cc                    	mov	rcx, r12
1400068cd: e8 2e e5 ff ff              	call	0x140004e00 <.text+0x3e00>
1400068d2: 33 c9                       	xor	ecx, ecx
1400068d4: 48 89 05 25 14 01 00        	mov	qword ptr [rip + 70693], rax # 0x140017d00
1400068db: e8 98 e5 ff ff              	call	0x140004e78 <.text+0x3e78>
1400068e0: 48 39 35 19 14 01 00        	cmp	qword ptr [rip + 70681], rsi # 0x140017d00
1400068e7: 74 ca                       	je	0x1400068b3 <.text+0x58b3>
1400068e9: 4c 8b 35 08 14 01 00        	mov	r14, qword ptr [rip + 70664] # 0x140017cf8
1400068f0: 4d 85 f6                    	test	r14, r14
1400068f3: 74 be                       	je	0x1400068b3 <.text+0x58b3>
1400068f5: 49 8b 06                    	mov	rax, qword ptr [r14]
1400068f8: 4d 8b e5                    	mov	r12, r13
1400068fb: 4d 2b e7                    	sub	r12, r15
1400068fe: 49 8b de                    	mov	rbx, r14
140006901: 48 85 c0                    	test	rax, rax
140006904: 74 34                       	je	0x14000693a <.text+0x593a>
140006906: 4d 8b c4                    	mov	r8, r12
140006909: 48 8b d0                    	mov	rdx, rax
14000690c: 49 8b cf                    	mov	rcx, r15
14000690f: e8 68 31 00 00              	call	0x140009a7c <.text+0x8a7c>
140006914: 85 c0                       	test	eax, eax
140006916: 75 10                       	jne	0x140006928 <.text+0x5928>
140006918: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000691b: 41 80 3c 04 3d              	cmp	byte ptr [r12 + rax], 61
140006920: 74 0f                       	je	0x140006931 <.text+0x5931>
140006922: 41 38 34 04                 	cmp	byte ptr [r12 + rax], sil
140006926: 74 09                       	je	0x140006931 <.text+0x5931>
140006928: 48 83 c3 08                 	add	rbx, 8
14000692c: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000692f: eb d0                       	jmp	0x140006901 <.text+0x5901>
140006931: 49 2b de                    	sub	rbx, r14
140006934: 48 c1 fb 03                 	sar	rbx, 3
140006938: eb 0a                       	jmp	0x140006944 <.text+0x5944>
14000693a: 49 2b de                    	sub	rbx, r14
14000693d: 48 c1 fb 03                 	sar	rbx, 3
140006941: 48 f7 db                    	neg	rbx
140006944: 48 85 db                    	test	rbx, rbx
140006947: 78 57                       	js	0x1400069a0 <.text+0x59a0>
140006949: 49 39 36                    	cmp	qword ptr [r14], rsi
14000694c: 74 52                       	je	0x1400069a0 <.text+0x59a0>
14000694e: 49 8b 0c de                 	mov	rcx, qword ptr [r14 + 8*rbx]
140006952: e8 21 e5 ff ff              	call	0x140004e78 <.text+0x3e78>
140006957: 40 84 ed                    	test	bpl, bpl
14000695a: 74 15                       	je	0x140006971 <.text+0x5971>
14000695c: 4d 89 3c de                 	mov	qword ptr [r14 + 8*rbx], r15
140006960: e9 95 00 00 00              	jmp	0x1400069fa <.text+0x59fa>
140006965: 49 8b 44 de 08              	mov	rax, qword ptr [r14 + 8*rbx + 8]
14000696a: 49 89 04 de                 	mov	qword ptr [r14 + 8*rbx], rax
14000696e: 48 ff c3                    	inc	rbx
140006971: 49 39 34 de                 	cmp	qword ptr [r14 + 8*rbx], rsi
140006975: 75 ee                       	jne	0x140006965 <.text+0x5965>
140006977: 41 b8 08 00 00 00           	mov	r8d, 8
14000697d: 48 8b d3                    	mov	rdx, rbx
140006980: 49 8b ce                    	mov	rcx, r14
140006983: e8 58 18 00 00              	call	0x1400081e0 <.text+0x71e0>
140006988: 33 c9                       	xor	ecx, ecx
14000698a: 48 8b d8                    	mov	rbx, rax
14000698d: e8 e6 e4 ff ff              	call	0x140004e78 <.text+0x3e78>
140006992: 48 85 db                    	test	rbx, rbx
140006995: 74 66                       	je	0x1400069fd <.text+0x59fd>
140006997: 48 89 1d 5a 13 01 00        	mov	qword ptr [rip + 70490], rbx # 0x140017cf8
14000699e: eb 5d                       	jmp	0x1400069fd <.text+0x59fd>
1400069a0: 40 84 ed                    	test	bpl, bpl
1400069a3: 0f 84 e8 00 00 00           	je	0x140006a91 <.text+0x5a91>
1400069a9: 48 f7 db                    	neg	rbx
1400069ac: 48 8d 53 02                 	lea	rdx, [rbx + 2]
1400069b0: 48 3b d3                    	cmp	rdx, rbx
1400069b3: 73 09                       	jae	0x1400069be <.text+0x59be>
1400069b5: 48 83 cd ff                 	or	rbp, -1
1400069b9: e9 d5 00 00 00              	jmp	0x140006a93 <.text+0x5a93>
1400069be: 48 b8 ff ff ff ff ff ff ff 1f       	movabs	rax, 2305843009213693951
1400069c8: 48 3b d0                    	cmp	rdx, rax
1400069cb: 73 e8                       	jae	0x1400069b5 <.text+0x59b5>
1400069cd: 41 b8 08 00 00 00           	mov	r8d, 8
1400069d3: 49 8b ce                    	mov	rcx, r14
1400069d6: e8 05 18 00 00              	call	0x1400081e0 <.text+0x71e0>
1400069db: 33 c9                       	xor	ecx, ecx
1400069dd: 4c 8b f0                    	mov	r14, rax
1400069e0: e8 93 e4 ff ff              	call	0x140004e78 <.text+0x3e78>
1400069e5: 4d 85 f6                    	test	r14, r14
1400069e8: 74 cb                       	je	0x1400069b5 <.text+0x59b5>
1400069ea: 4d 89 3c de                 	mov	qword ptr [r14 + 8*rbx], r15
1400069ee: 49 89 74 de 08              	mov	qword ptr [r14 + 8*rbx + 8], rsi
1400069f3: 4c 89 35 fe 12 01 00        	mov	qword ptr [rip + 70398], r14 # 0x140017cf8
1400069fa: 48 8b fe                    	mov	rdi, rsi
1400069fd: 39 74 24 78                 	cmp	dword ptr [rsp + 120], esi
140006a01: 0f 84 8e 00 00 00           	je	0x140006a95 <.text+0x5a95>
140006a07: 48 83 cd ff                 	or	rbp, -1
140006a0b: 4c 8b f5                    	mov	r14, rbp
140006a0e: 49 ff c6                    	inc	r14
140006a11: 43 38 34 37                 	cmp	byte ptr [r15 + r14], sil
140006a15: 75 f7                       	jne	0x140006a0e <.text+0x5a0e>
140006a17: ba 01 00 00 00              	mov	edx, 1
140006a1c: 49 8d 4e 02                 	lea	rcx, [r14 + 2]
140006a20: e8 db e3 ff ff              	call	0x140004e00 <.text+0x3e00>
140006a25: 48 8b d8                    	mov	rbx, rax
140006a28: 48 85 c0                    	test	rax, rax
140006a2b: 74 47                       	je	0x140006a74 <.text+0x5a74>
140006a2d: 4d 8b c7                    	mov	r8, r15
140006a30: 49 8d 56 02                 	lea	rdx, [r14 + 2]
140006a34: 48 8b c8                    	mov	rcx, rax
140006a37: e8 38 d8 ff ff              	call	0x140004274 <.text+0x3274>
140006a3c: 85 c0                       	test	eax, eax
140006a3e: 75 77                       	jne	0x140006ab7 <.text+0x5ab7>
140006a40: 48 8b c3                    	mov	rax, rbx
140006a43: 49 8d 4d 01                 	lea	rcx, [r13 + 1]
140006a47: 49 2b c7                    	sub	rax, r15
140006a4a: 48 03 c8                    	add	rcx, rax
140006a4d: f6 5c 24 70                 	neg	byte ptr [rsp + 112]
140006a51: 48 1b d2                    	sbb	rdx, rdx
140006a54: 48 23 d1                    	and	rdx, rcx
140006a57: 40 88 71 ff                 	mov	byte ptr [rcx - 1], sil
140006a5b: 48 8b cb                    	mov	rcx, rbx
140006a5e: e8 31 31 00 00              	call	0x140009b94 <.text+0x8b94>
140006a63: 85 c0                       	test	eax, eax
140006a65: 75 0d                       	jne	0x140006a74 <.text+0x5a74>
140006a67: e8 74 e3 ff ff              	call	0x140004de0 <.text+0x3de0>
140006a6c: 8b f5                       	mov	esi, ebp
140006a6e: c7 00 2a 00 00 00           	mov	dword ptr [rax], 42
140006a74: 48 8b cb                    	mov	rcx, rbx
140006a77: e8 fc e3 ff ff              	call	0x140004e78 <.text+0x3e78>
140006a7c: eb 17                       	jmp	0x140006a95 <.text+0x5a95>
140006a7e: e8 5d e3 ff ff              	call	0x140004de0 <.text+0x3de0>
140006a83: 48 83 ce ff                 	or	rsi, -1
140006a87: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140006a8d: 8b ee                       	mov	ebp, esi
140006a8f: 8b f5                       	mov	esi, ebp
140006a91: 8b ee                       	mov	ebp, esi
140006a93: 8b f5                       	mov	esi, ebp
140006a95: 48 8b cf                    	mov	rcx, rdi
140006a98: e8 db e3 ff ff              	call	0x140004e78 <.text+0x3e78>
140006a9d: 8b c6                       	mov	eax, esi
140006a9f: 48 8b 9c 24 80 00 00 00     	mov	rbx, qword ptr [rsp + 128]
140006aa7: 48 83 c4 30                 	add	rsp, 48
140006aab: 41 5f                       	pop	r15
140006aad: 41 5e                       	pop	r14
140006aaf: 41 5d                       	pop	r13
140006ab1: 41 5c                       	pop	r12
140006ab3: 5f                          	pop	rdi
140006ab4: 5e                          	pop	rsi
140006ab5: 5d                          	pop	rbp
140006ab6: c3                          	ret
140006ab7: 45 33 c9                    	xor	r9d, r9d
140006aba: 48 89 74 24 20              	mov	qword ptr [rsp + 32], rsi
140006abf: 45 33 c0                    	xor	r8d, r8d
140006ac2: 33 d2                       	xor	edx, edx
140006ac4: 33 c9                       	xor	ecx, ecx
140006ac6: e8 15 e2 ff ff              	call	0x140004ce0 <.text+0x3ce0>
140006acb: cc                          	int3
140006acc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140006ad1: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
140006ad6: 48 89 7c 24 18              	mov	qword ptr [rsp + 24], rdi
140006adb: 41 56                       	push	r14
140006add: 48 83 ec 30                 	sub	rsp, 48
140006ae1: 48 8b f9                    	mov	rdi, rcx
140006ae4: 48 85 c9                    	test	rcx, rcx
140006ae7: 75 18                       	jne	0x140006b01 <.text+0x5b01>
140006ae9: 33 c0                       	xor	eax, eax
140006aeb: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140006af0: 48 8b 74 24 48              	mov	rsi, qword ptr [rsp + 72]
140006af5: 48 8b 7c 24 50              	mov	rdi, qword ptr [rsp + 80]
140006afa: 48 83 c4 30                 	add	rsp, 48
140006afe: 41 5e                       	pop	r14
140006b00: c3                          	ret
140006b01: 33 c9                       	xor	ecx, ecx
140006b03: 48 8b c7                    	mov	rax, rdi
140006b06: 48 39 0f                    	cmp	qword ptr [rdi], rcx
140006b09: 74 0d                       	je	0x140006b18 <.text+0x5b18>
140006b0b: 48 ff c1                    	inc	rcx
140006b0e: 48 8d 40 08                 	lea	rax, [rax + 8]
140006b12: 48 83 38 00                 	cmp	qword ptr [rax], 0
140006b16: 75 f3                       	jne	0x140006b0b <.text+0x5b0b>
140006b18: 48 ff c1                    	inc	rcx
140006b1b: ba 08 00 00 00              	mov	edx, 8
140006b20: e8 db e2 ff ff              	call	0x140004e00 <.text+0x3e00>
140006b25: 48 8b d8                    	mov	rbx, rax
140006b28: 48 85 c0                    	test	rax, rax
140006b2b: 74 7e                       	je	0x140006bab <.text+0x5bab>
140006b2d: 48 8b 07                    	mov	rax, qword ptr [rdi]
140006b30: 48 85 c0                    	test	rax, rax
140006b33: 74 51                       	je	0x140006b86 <.text+0x5b86>
140006b35: 4c 8b f3                    	mov	r14, rbx
140006b38: 4c 2b f7                    	sub	r14, rdi
140006b3b: 48 83 ce ff                 	or	rsi, -1
140006b3f: 48 ff c6                    	inc	rsi
140006b42: 80 3c 30 00                 	cmp	byte ptr [rax + rsi], 0
140006b46: 75 f7                       	jne	0x140006b3f <.text+0x5b3f>
140006b48: ba 01 00 00 00              	mov	edx, 1
140006b4d: 48 8d 4e 01                 	lea	rcx, [rsi + 1]
140006b51: e8 aa e2 ff ff              	call	0x140004e00 <.text+0x3e00>
140006b56: 33 c9                       	xor	ecx, ecx
140006b58: 49 89 04 3e                 	mov	qword ptr [r14 + rdi], rax
140006b5c: e8 17 e3 ff ff              	call	0x140004e78 <.text+0x3e78>
140006b61: 49 8b 0c 3e                 	mov	rcx, qword ptr [r14 + rdi]
140006b65: 48 85 c9                    	test	rcx, rcx
140006b68: 74 41                       	je	0x140006bab <.text+0x5bab>
140006b6a: 4c 8b 07                    	mov	r8, qword ptr [rdi]
140006b6d: 48 8d 56 01                 	lea	rdx, [rsi + 1]
140006b71: e8 fe d6 ff ff              	call	0x140004274 <.text+0x3274>
140006b76: 85 c0                       	test	eax, eax
140006b78: 75 1b                       	jne	0x140006b95 <.text+0x5b95>
140006b7a: 48 83 c7 08                 	add	rdi, 8
140006b7e: 48 8b 07                    	mov	rax, qword ptr [rdi]
140006b81: 48 85 c0                    	test	rax, rax
140006b84: 75 b5                       	jne	0x140006b3b <.text+0x5b3b>
140006b86: 33 c9                       	xor	ecx, ecx
140006b88: e8 eb e2 ff ff              	call	0x140004e78 <.text+0x3e78>
140006b8d: 48 8b c3                    	mov	rax, rbx
140006b90: e9 56 ff ff ff              	jmp	0x140006aeb <.text+0x5aeb>
140006b95: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
140006b9b: 45 33 c9                    	xor	r9d, r9d
140006b9e: 45 33 c0                    	xor	r8d, r8d
140006ba1: 33 d2                       	xor	edx, edx
140006ba3: 33 c9                       	xor	ecx, ecx
140006ba5: e8 36 e1 ff ff              	call	0x140004ce0 <.text+0x3ce0>
140006baa: cc                          	int3
140006bab: e8 24 d7 ff ff              	call	0x1400042d4 <.text+0x32d4>
140006bb0: cc                          	int3
140006bb1: cc                          	int3
140006bb2: cc                          	int3
140006bb3: cc                          	int3
140006bb4: e9 f3 fb ff ff              	jmp	0x1400067ac <.text+0x57ac>
140006bb9: cc                          	int3
140006bba: cc                          	int3
140006bbb: cc                          	int3
140006bbc: 40 53                       	push	rbx
140006bbe: 48 83 ec 20                 	sub	rsp, 32
140006bc2: 33 db                       	xor	ebx, ebx
140006bc4: 48 8d 15 05 12 01 00        	lea	rdx, [rip + 70149]      # 0x140017dd0
140006bcb: 45 33 c0                    	xor	r8d, r8d
140006bce: 48 8d 0c 9b                 	lea	rcx, [rbx + 4*rbx]
140006bd2: 48 8d 0c ca                 	lea	rcx, [rdx + 8*rcx]
140006bd6: ba a0 0f 00 00              	mov	edx, 4000
140006bdb: e8 f8 13 00 00              	call	0x140007fd8 <.text+0x6fd8>
140006be0: 85 c0                       	test	eax, eax
140006be2: 74 11                       	je	0x140006bf5 <.text+0x5bf5>
140006be4: ff 05 16 14 01 00           	inc	dword ptr [rip + 70678] # 0x140018000
140006bea: ff c3                       	inc	ebx
140006bec: 83 fb 0e                    	cmp	ebx, 14
140006bef: 72 d3                       	jb	0x140006bc4 <.text+0x5bc4>
140006bf1: b0 01                       	mov	al, 1
140006bf3: eb 09                       	jmp	0x140006bfe <.text+0x5bfe>
140006bf5: 33 c9                       	xor	ecx, ecx
140006bf7: e8 24 00 00 00              	call	0x140006c20 <.text+0x5c20>
140006bfc: 32 c0                       	xor	al, al
140006bfe: 48 83 c4 20                 	add	rsp, 32
140006c02: 5b                          	pop	rbx
140006c03: c3                          	ret
140006c04: 48 63 c1                    	movsxd	rax, ecx
140006c07: 48 8d 0c 80                 	lea	rcx, [rax + 4*rax]
140006c0b: 48 8d 05 be 11 01 00        	lea	rax, [rip + 70078]      # 0x140017dd0
140006c12: 48 8d 0c c8                 	lea	rcx, [rax + 8*rcx]
140006c16: 48 ff 25 73 74 00 00        	jmp	qword ptr [rip + 29811] # 0x14000e090
140006c1d: cc                          	int3
140006c1e: cc                          	int3
140006c1f: cc                          	int3
140006c20: 40 53                       	push	rbx
140006c22: 48 83 ec 20                 	sub	rsp, 32
140006c26: 8b 1d d4 13 01 00           	mov	ebx, dword ptr [rip + 70612] # 0x140018000
140006c2c: eb 1d                       	jmp	0x140006c4b <.text+0x5c4b>
140006c2e: 48 8d 05 9b 11 01 00        	lea	rax, [rip + 70043]      # 0x140017dd0
140006c35: ff cb                       	dec	ebx
140006c37: 48 8d 0c 9b                 	lea	rcx, [rbx + 4*rbx]
140006c3b: 48 8d 0c c8                 	lea	rcx, [rax + 8*rcx]
140006c3f: ff 15 5b 74 00 00           	call	qword ptr [rip + 29787] # 0x14000e0a0
140006c45: ff 0d b5 13 01 00           	dec	dword ptr [rip + 70581] # 0x140018000
140006c4b: 85 db                       	test	ebx, ebx
140006c4d: 75 df                       	jne	0x140006c2e <.text+0x5c2e>
140006c4f: b0 01                       	mov	al, 1
140006c51: 48 83 c4 20                 	add	rsp, 32
140006c55: 5b                          	pop	rbx
140006c56: c3                          	ret
140006c57: cc                          	int3
140006c58: 48 63 c1                    	movsxd	rax, ecx
140006c5b: 48 8d 0c 80                 	lea	rcx, [rax + 4*rax]
140006c5f: 48 8d 05 6a 11 01 00        	lea	rax, [rip + 69994]      # 0x140017dd0
140006c66: 48 8d 0c c8                 	lea	rcx, [rax + 8*rcx]
140006c6a: 48 ff 25 27 74 00 00        	jmp	qword ptr [rip + 29735] # 0x14000e098
140006c71: cc                          	int3
140006c72: cc                          	int3
140006c73: cc                          	int3
140006c74: 40 53                       	push	rbx
140006c76: 48 83 ec 20                 	sub	rsp, 32
140006c7a: 33 db                       	xor	ebx, ebx
140006c7c: 89 5c 24 30                 	mov	dword ptr [rsp + 48], ebx
140006c80: 65 48 8b 04 25 60 00 00 00  	mov	rax, qword ptr gs:[96]
140006c89: 48 8b 48 20                 	mov	rcx, qword ptr [rax + 32]
140006c8d: 39 59 08                    	cmp	dword ptr [rcx + 8], ebx
140006c90: 7c 11                       	jl	0x140006ca3 <.text+0x5ca3>
140006c92: 48 8d 4c 24 30              	lea	rcx, [rsp + 48]
140006c97: e8 a8 10 00 00              	call	0x140007d44 <.text+0x6d44>
140006c9c: 83 7c 24 30 01              	cmp	dword ptr [rsp + 48], 1
140006ca1: 74 05                       	je	0x140006ca8 <.text+0x5ca8>
140006ca3: bb 01 00 00 00              	mov	ebx, 1
140006ca8: 8b c3                       	mov	eax, ebx
140006caa: 48 83 c4 20                 	add	rsp, 32
140006cae: 5b                          	pop	rbx
140006caf: c3                          	ret
140006cb0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140006cb5: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140006cba: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140006cbf: 57                          	push	rdi
140006cc0: 48 83 ec 20                 	sub	rsp, 32
140006cc4: ba 48 00 00 00              	mov	edx, 72
140006cc9: 8d 4a f8                    	lea	ecx, [rdx - 8]
140006ccc: e8 2f e1 ff ff              	call	0x140004e00 <.text+0x3e00>
140006cd1: 33 f6                       	xor	esi, esi
140006cd3: 48 8b d8                    	mov	rbx, rax
140006cd6: 48 85 c0                    	test	rax, rax
140006cd9: 74 5b                       	je	0x140006d36 <.text+0x5d36>
140006cdb: 48 8d a8 00 12 00 00        	lea	rbp, [rax + 4608]
140006ce2: 48 3b c5                    	cmp	rax, rbp
140006ce5: 74 4c                       	je	0x140006d33 <.text+0x5d33>
140006ce7: 48 8d 78 30                 	lea	rdi, [rax + 48]
140006ceb: 48 8d 4f d0                 	lea	rcx, [rdi - 48]
140006cef: 45 33 c0                    	xor	r8d, r8d
140006cf2: ba a0 0f 00 00              	mov	edx, 4000
140006cf7: e8 dc 12 00 00              	call	0x140007fd8 <.text+0x6fd8>
140006cfc: 48 83 4f f8 ff              	or	qword ptr [rdi - 8], -1
140006d01: 48 8d 4f 0e                 	lea	rcx, [rdi + 14]
140006d05: 80 67 0d f8                 	and	byte ptr [rdi + 13], -8
140006d09: 8b c6                       	mov	eax, esi
140006d0b: 48 89 37                    	mov	qword ptr [rdi], rsi
140006d0e: c7 47 08 00 00 0a 0a        	mov	dword ptr [rdi + 8], 168427520
140006d15: c6 47 0c 0a                 	mov	byte ptr [rdi + 12], 10
140006d19: 40 88 31                    	mov	byte ptr [rcx], sil
140006d1c: ff c0                       	inc	eax
140006d1e: 48 ff c1                    	inc	rcx
140006d21: 83 f8 05                    	cmp	eax, 5
140006d24: 72 f3                       	jb	0x140006d19 <.text+0x5d19>
140006d26: 48 83 c7 48                 	add	rdi, 72
140006d2a: 48 8d 47 d0                 	lea	rax, [rdi - 48]
140006d2e: 48 3b c5                    	cmp	rax, rbp
140006d31: 75 b8                       	jne	0x140006ceb <.text+0x5ceb>
140006d33: 48 8b f3                    	mov	rsi, rbx
140006d36: 33 c9                       	xor	ecx, ecx
140006d38: e8 3b e1 ff ff              	call	0x140004e78 <.text+0x3e78>
140006d3d: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140006d42: 48 8b c6                    	mov	rax, rsi
140006d45: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
140006d4a: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
140006d4f: 48 83 c4 20                 	add	rsp, 32
140006d53: 5f                          	pop	rdi
140006d54: c3                          	ret
140006d55: cc                          	int3
140006d56: cc                          	int3
140006d57: cc                          	int3
140006d58: 48 85 c9                    	test	rcx, rcx
140006d5b: 74 4a                       	je	0x140006da7 <.text+0x5da7>
140006d5d: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140006d62: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
140006d67: 57                          	push	rdi
140006d68: 48 83 ec 20                 	sub	rsp, 32
140006d6c: 48 8d b1 00 12 00 00        	lea	rsi, [rcx + 4608]
140006d73: 48 8b d9                    	mov	rbx, rcx
140006d76: 48 8b f9                    	mov	rdi, rcx
140006d79: 48 3b ce                    	cmp	rcx, rsi
140006d7c: 74 12                       	je	0x140006d90 <.text+0x5d90>
140006d7e: 48 8b cf                    	mov	rcx, rdi
140006d81: ff 15 19 73 00 00           	call	qword ptr [rip + 29465] # 0x14000e0a0
140006d87: 48 83 c7 48                 	add	rdi, 72
140006d8b: 48 3b fe                    	cmp	rdi, rsi
140006d8e: 75 ee                       	jne	0x140006d7e <.text+0x5d7e>
140006d90: 48 8b cb                    	mov	rcx, rbx
140006d93: e8 e0 e0 ff ff              	call	0x140004e78 <.text+0x3e78>
140006d98: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140006d9d: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
140006da2: 48 83 c4 20                 	add	rsp, 32
140006da6: 5f                          	pop	rdi
140006da7: c3                          	ret
140006da8: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140006dad: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
140006db2: 48 89 7c 24 18              	mov	qword ptr [rsp + 24], rdi
140006db7: 41 57                       	push	r15
140006db9: 48 83 ec 30                 	sub	rsp, 48
140006dbd: 8b f1                       	mov	esi, ecx
140006dbf: 81 f9 00 20 00 00           	cmp	ecx, 8192
140006dc5: 72 29                       	jb	0x140006df0 <.text+0x5df0>
140006dc7: e8 14 e0 ff ff              	call	0x140004de0 <.text+0x3de0>
140006dcc: bb 09 00 00 00              	mov	ebx, 9
140006dd1: 89 18                       	mov	dword ptr [rax], ebx
140006dd3: e8 e8 de ff ff              	call	0x140004cc0 <.text+0x3cc0>
140006dd8: 8b c3                       	mov	eax, ebx
140006dda: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140006ddf: 48 8b 74 24 48              	mov	rsi, qword ptr [rsp + 72]
140006de4: 48 8b 7c 24 50              	mov	rdi, qword ptr [rsp + 80]
140006de9: 48 83 c4 30                 	add	rsp, 48
140006ded: 41 5f                       	pop	r15
140006def: c3                          	ret
140006df0: 33 ff                       	xor	edi, edi
140006df2: 8d 4f 07                    	lea	ecx, [rdi + 7]
140006df5: e8 0a fe ff ff              	call	0x140006c04 <.text+0x5c04>
140006dfa: 90                          	nop
140006dfb: 8b df                       	mov	ebx, edi
140006dfd: 8b 05 0d 16 01 00           	mov	eax, dword ptr [rip + 71181] # 0x140018410
140006e03: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140006e08: 3b f0                       	cmp	esi, eax
140006e0a: 7c 36                       	jl	0x140006e42 <.text+0x5e42>
140006e0c: 4c 8d 3d fd 11 01 00        	lea	r15, [rip + 70141]      # 0x140018010
140006e13: 49 39 3c df                 	cmp	qword ptr [r15 + 8*rbx], rdi
140006e17: 74 02                       	je	0x140006e1b <.text+0x5e1b>
140006e19: eb 22                       	jmp	0x140006e3d <.text+0x5e3d>
140006e1b: e8 90 fe ff ff              	call	0x140006cb0 <.text+0x5cb0>
140006e20: 49 89 04 df                 	mov	qword ptr [r15 + 8*rbx], rax
140006e24: 48 85 c0                    	test	rax, rax
140006e27: 75 05                       	jne	0x140006e2e <.text+0x5e2e>
140006e29: 8d 78 0c                    	lea	edi, [rax + 12]
140006e2c: eb 14                       	jmp	0x140006e42 <.text+0x5e42>
140006e2e: 8b 05 dc 15 01 00           	mov	eax, dword ptr [rip + 71132] # 0x140018410
140006e34: 83 c0 40                    	add	eax, 64
140006e37: 89 05 d3 15 01 00           	mov	dword ptr [rip + 71123], eax # 0x140018410
140006e3d: 48 ff c3                    	inc	rbx
140006e40: eb c1                       	jmp	0x140006e03 <.text+0x5e03>
140006e42: b9 07 00 00 00              	mov	ecx, 7
140006e47: e8 0c fe ff ff              	call	0x140006c58 <.text+0x5c58>
140006e4c: 8b c7                       	mov	eax, edi
140006e4e: eb 8a                       	jmp	0x140006dda <.text+0x5dda>
140006e50: 48 63 d1                    	movsxd	rdx, ecx
140006e53: 4c 8d 05 b6 11 01 00        	lea	r8, [rip + 70070]       # 0x140018010
140006e5a: 48 8b c2                    	mov	rax, rdx
140006e5d: 83 e2 3f                    	and	edx, 63
140006e60: 48 c1 f8 06                 	sar	rax, 6
140006e64: 48 8d 0c d2                 	lea	rcx, [rdx + 8*rdx]
140006e68: 49 8b 04 c0                 	mov	rax, qword ptr [r8 + 8*rax]
140006e6c: 48 8d 0c c8                 	lea	rcx, [rax + 8*rcx]
140006e70: 48 ff 25 19 72 00 00        	jmp	qword ptr [rip + 29209] # 0x14000e090
140006e77: cc                          	int3
140006e78: 48 63 d1                    	movsxd	rdx, ecx
140006e7b: 4c 8d 05 8e 11 01 00        	lea	r8, [rip + 70030]       # 0x140018010
140006e82: 48 8b c2                    	mov	rax, rdx
140006e85: 83 e2 3f                    	and	edx, 63
140006e88: 48 c1 f8 06                 	sar	rax, 6
140006e8c: 48 8d 0c d2                 	lea	rcx, [rdx + 8*rdx]
140006e90: 49 8b 04 c0                 	mov	rax, qword ptr [r8 + 8*rax]
140006e94: 48 8d 0c c8                 	lea	rcx, [rax + 8*rcx]
140006e98: 48 ff 25 f9 71 00 00        	jmp	qword ptr [rip + 29177] # 0x14000e098
140006e9f: cc                          	int3
140006ea0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140006ea5: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
140006eaa: 48 89 7c 24 18              	mov	qword ptr [rsp + 24], rdi
140006eaf: 41 56                       	push	r14
140006eb1: 48 83 ec 20                 	sub	rsp, 32
140006eb5: 48 63 d9                    	movsxd	rbx, ecx
140006eb8: 85 c9                       	test	ecx, ecx
140006eba: 78 72                       	js	0x140006f2e <.text+0x5f2e>
140006ebc: 3b 1d 4e 15 01 00           	cmp	ebx, dword ptr [rip + 70990] # 0x140018410
140006ec2: 73 6a                       	jae	0x140006f2e <.text+0x5f2e>
140006ec4: 48 8b c3                    	mov	rax, rbx
140006ec7: 4c 8d 35 42 11 01 00        	lea	r14, [rip + 69954]      # 0x140018010
140006ece: 83 e0 3f                    	and	eax, 63
140006ed1: 48 8b f3                    	mov	rsi, rbx
140006ed4: 48 c1 fe 06                 	sar	rsi, 6
140006ed8: 48 8d 3c c0                 	lea	rdi, [rax + 8*rax]
140006edc: 49 8b 04 f6                 	mov	rax, qword ptr [r14 + 8*rsi]
140006ee0: f6 44 f8 38 01              	test	byte ptr [rax + 8*rdi + 56], 1
140006ee5: 74 47                       	je	0x140006f2e <.text+0x5f2e>
140006ee7: 48 83 7c f8 28 ff           	cmp	qword ptr [rax + 8*rdi + 40], -1
140006eed: 74 3f                       	je	0x140006f2e <.text+0x5f2e>
140006eef: e8 b8 c0 ff ff              	call	0x140002fac <.text+0x1fac>
140006ef4: 83 f8 01                    	cmp	eax, 1
140006ef7: 75 27                       	jne	0x140006f20 <.text+0x5f20>
140006ef9: 85 db                       	test	ebx, ebx
140006efb: 74 16                       	je	0x140006f13 <.text+0x5f13>
140006efd: 2b d8                       	sub	ebx, eax
140006eff: 74 0b                       	je	0x140006f0c <.text+0x5f0c>
140006f01: 3b d8                       	cmp	ebx, eax
140006f03: 75 1b                       	jne	0x140006f20 <.text+0x5f20>
140006f05: b9 f4 ff ff ff              	mov	ecx, 4294967284
140006f0a: eb 0c                       	jmp	0x140006f18 <.text+0x5f18>
140006f0c: b9 f5 ff ff ff              	mov	ecx, 4294967285
140006f11: eb 05                       	jmp	0x140006f18 <.text+0x5f18>
140006f13: b9 f6 ff ff ff              	mov	ecx, 4294967286
140006f18: 33 d2                       	xor	edx, edx
140006f1a: ff 15 88 72 00 00           	call	qword ptr [rip + 29320] # 0x14000e1a8
140006f20: 49 8b 04 f6                 	mov	rax, qword ptr [r14 + 8*rsi]
140006f24: 48 83 4c f8 28 ff           	or	qword ptr [rax + 8*rdi + 40], -1
140006f2a: 33 c0                       	xor	eax, eax
140006f2c: eb 16                       	jmp	0x140006f44 <.text+0x5f44>
140006f2e: e8 ad de ff ff              	call	0x140004de0 <.text+0x3de0>
140006f33: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
140006f39: e8 82 de ff ff              	call	0x140004dc0 <.text+0x3dc0>
140006f3e: 83 20 00                    	and	dword ptr [rax], 0
140006f41: 83 c8 ff                    	or	eax, -1
140006f44: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140006f49: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
140006f4e: 48 8b 7c 24 40              	mov	rdi, qword ptr [rsp + 64]
140006f53: 48 83 c4 20                 	add	rsp, 32
140006f57: 41 5e                       	pop	r14
140006f59: c3                          	ret
140006f5a: cc                          	int3
140006f5b: cc                          	int3
140006f5c: 48 83 ec 28                 	sub	rsp, 40
140006f60: 83 f9 fe                    	cmp	ecx, -2
140006f63: 75 15                       	jne	0x140006f7a <.text+0x5f7a>
140006f65: e8 56 de ff ff              	call	0x140004dc0 <.text+0x3dc0>
140006f6a: 83 20 00                    	and	dword ptr [rax], 0
140006f6d: e8 6e de ff ff              	call	0x140004de0 <.text+0x3de0>
140006f72: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
140006f78: eb 4e                       	jmp	0x140006fc8 <.text+0x5fc8>
140006f7a: 85 c9                       	test	ecx, ecx
140006f7c: 78 32                       	js	0x140006fb0 <.text+0x5fb0>
140006f7e: 3b 0d 8c 14 01 00           	cmp	ecx, dword ptr [rip + 70796] # 0x140018410
140006f84: 73 2a                       	jae	0x140006fb0 <.text+0x5fb0>
140006f86: 48 63 c9                    	movsxd	rcx, ecx
140006f89: 4c 8d 05 80 10 01 00        	lea	r8, [rip + 69760]       # 0x140018010
140006f90: 48 8b c1                    	mov	rax, rcx
140006f93: 83 e1 3f                    	and	ecx, 63
140006f96: 48 c1 f8 06                 	sar	rax, 6
140006f9a: 48 8d 14 c9                 	lea	rdx, [rcx + 8*rcx]
140006f9e: 49 8b 04 c0                 	mov	rax, qword ptr [r8 + 8*rax]
140006fa2: f6 44 d0 38 01              	test	byte ptr [rax + 8*rdx + 56], 1
140006fa7: 74 07                       	je	0x140006fb0 <.text+0x5fb0>
140006fa9: 48 8b 44 d0 28              	mov	rax, qword ptr [rax + 8*rdx + 40]
140006fae: eb 1c                       	jmp	0x140006fcc <.text+0x5fcc>
140006fb0: e8 0b de ff ff              	call	0x140004dc0 <.text+0x3dc0>
140006fb5: 83 20 00                    	and	dword ptr [rax], 0
140006fb8: e8 23 de ff ff              	call	0x140004de0 <.text+0x3de0>
140006fbd: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
140006fc3: e8 f8 dc ff ff              	call	0x140004cc0 <.text+0x3cc0>
140006fc8: 48 83 c8 ff                 	or	rax, -1
140006fcc: 48 83 c4 28                 	add	rsp, 40
140006fd0: c3                          	ret
140006fd1: cc                          	int3
140006fd2: cc                          	int3
140006fd3: cc                          	int3
140006fd4: 8b 05 2a 10 01 00           	mov	eax, dword ptr [rip + 69674] # 0x140018004
140006fda: b9 00 40 00 00              	mov	ecx, 16384
140006fdf: 85 c0                       	test	eax, eax
140006fe1: 0f 44 c1                    	cmove	eax, ecx
140006fe4: 89 05 1a 10 01 00           	mov	dword ptr [rip + 69658], eax # 0x140018004
140006fea: 33 c0                       	xor	eax, eax
140006fec: c3                          	ret
140006fed: cc                          	int3
140006fee: cc                          	int3
140006fef: cc                          	int3
140006ff0: 48 8b c4                    	mov	rax, rsp
140006ff3: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
140006ff7: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
140006ffb: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
140006fff: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
140007003: 41 56                       	push	r14
140007005: 48 81 ec 90 00 00 00        	sub	rsp, 144
14000700c: 48 8d 48 88                 	lea	rcx, [rax - 120]
140007010: ff 15 42 70 00 00           	call	qword ptr [rip + 28738] # 0x14000e058
140007016: 45 33 f6                    	xor	r14d, r14d
140007019: 66 44 39 74 24 62           	cmp	word ptr [rsp + 98], r14w
14000701f: 0f 84 9a 00 00 00           	je	0x1400070bf <.text+0x60bf>
140007025: 48 8b 44 24 68              	mov	rax, qword ptr [rsp + 104]
14000702a: 48 85 c0                    	test	rax, rax
14000702d: 0f 84 8c 00 00 00           	je	0x1400070bf <.text+0x60bf>
140007033: 48 63 18                    	movsxd	rbx, dword ptr [rax]
140007036: 48 8d 70 04                 	lea	rsi, [rax + 4]
14000703a: bf 00 20 00 00              	mov	edi, 8192
14000703f: 48 03 de                    	add	rbx, rsi
140007042: 39 38                       	cmp	dword ptr [rax], edi
140007044: 0f 4c 38                    	cmovl	edi, dword ptr [rax]
140007047: 8b cf                       	mov	ecx, edi
140007049: e8 5a fd ff ff              	call	0x140006da8 <.text+0x5da8>
14000704e: 3b 3d bc 13 01 00           	cmp	edi, dword ptr [rip + 70588] # 0x140018410
140007054: 0f 4f 3d b5 13 01 00        	cmovg	edi, dword ptr [rip + 70581] # 0x140018410
14000705b: 85 ff                       	test	edi, edi
14000705d: 74 60                       	je	0x1400070bf <.text+0x60bf>
14000705f: 41 8b ee                    	mov	ebp, r14d
140007062: 48 83 3b ff                 	cmp	qword ptr [rbx], -1
140007066: 74 47                       	je	0x1400070af <.text+0x60af>
140007068: 48 83 3b fe                 	cmp	qword ptr [rbx], -2
14000706c: 74 41                       	je	0x1400070af <.text+0x60af>
14000706e: f6 06 01                    	test	byte ptr [rsi], 1
140007071: 74 3c                       	je	0x1400070af <.text+0x60af>
140007073: f6 06 08                    	test	byte ptr [rsi], 8
140007076: 75 0d                       	jne	0x140007085 <.text+0x6085>
140007078: 48 8b 0b                    	mov	rcx, qword ptr [rbx]
14000707b: ff 15 2f 71 00 00           	call	qword ptr [rip + 28975] # 0x14000e1b0
140007081: 85 c0                       	test	eax, eax
140007083: 74 2a                       	je	0x1400070af <.text+0x60af>
140007085: 48 8b c5                    	mov	rax, rbp
140007088: 4c 8d 05 81 0f 01 00        	lea	r8, [rip + 69505]       # 0x140018010
14000708f: 48 8b cd                    	mov	rcx, rbp
140007092: 48 c1 f9 06                 	sar	rcx, 6
140007096: 83 e0 3f                    	and	eax, 63
140007099: 49 8b 0c c8                 	mov	rcx, qword ptr [r8 + 8*rcx]
14000709d: 48 8d 14 c0                 	lea	rdx, [rax + 8*rax]
1400070a1: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400070a4: 48 89 44 d1 28              	mov	qword ptr [rcx + 8*rdx + 40], rax
1400070a9: 8a 06                       	mov	al, byte ptr [rsi]
1400070ab: 88 44 d1 38                 	mov	byte ptr [rcx + 8*rdx + 56], al
1400070af: 48 ff c5                    	inc	rbp
1400070b2: 48 ff c6                    	inc	rsi
1400070b5: 48 83 c3 08                 	add	rbx, 8
1400070b9: 48 83 ef 01                 	sub	rdi, 1
1400070bd: 75 a3                       	jne	0x140007062 <.text+0x6062>
1400070bf: 4c 8d 9c 24 90 00 00 00     	lea	r11, [rsp + 144]
1400070c7: 49 8b 5b 10                 	mov	rbx, qword ptr [r11 + 16]
1400070cb: 49 8b 6b 18                 	mov	rbp, qword ptr [r11 + 24]
1400070cf: 49 8b 73 20                 	mov	rsi, qword ptr [r11 + 32]
1400070d3: 49 8b 7b 28                 	mov	rdi, qword ptr [r11 + 40]
1400070d7: 49 8b e3                    	mov	rsp, r11
1400070da: 41 5e                       	pop	r14
1400070dc: c3                          	ret
1400070dd: cc                          	int3
1400070de: cc                          	int3
1400070df: cc                          	int3
1400070e0: 48 8b c4                    	mov	rax, rsp
1400070e3: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
1400070e7: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
1400070eb: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
1400070ef: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
1400070f3: 41 56                       	push	r14
1400070f5: 48 83 ec 20                 	sub	rsp, 32
1400070f9: 33 f6                       	xor	esi, esi
1400070fb: 45 33 f6                    	xor	r14d, r14d
1400070fe: 48 63 ce                    	movsxd	rcx, esi
140007101: 48 8d 3d 08 0f 01 00        	lea	rdi, [rip + 69384]      # 0x140018010
140007108: 48 8b c1                    	mov	rax, rcx
14000710b: 83 e1 3f                    	and	ecx, 63
14000710e: 48 c1 f8 06                 	sar	rax, 6
140007112: 48 8d 1c c9                 	lea	rbx, [rcx + 8*rcx]
140007116: 48 8b 3c c7                 	mov	rdi, qword ptr [rdi + 8*rax]
14000711a: 48 8b 44 df 28              	mov	rax, qword ptr [rdi + 8*rbx + 40]
14000711f: 48 83 c0 02                 	add	rax, 2
140007123: 48 83 f8 01                 	cmp	rax, 1
140007127: 76 0a                       	jbe	0x140007133 <.text+0x6133>
140007129: 80 4c df 38 80              	or	byte ptr [rdi + 8*rbx + 56], -128
14000712e: e9 8f 00 00 00              	jmp	0x1400071c2 <.text+0x61c2>
140007133: c6 44 df 38 81              	mov	byte ptr [rdi + 8*rbx + 56], -127
140007138: 8b ce                       	mov	ecx, esi
14000713a: 85 f6                       	test	esi, esi
14000713c: 74 16                       	je	0x140007154 <.text+0x6154>
14000713e: 83 e9 01                    	sub	ecx, 1
140007141: 74 0a                       	je	0x14000714d <.text+0x614d>
140007143: 83 f9 01                    	cmp	ecx, 1
140007146: b9 f4 ff ff ff              	mov	ecx, 4294967284
14000714b: eb 0c                       	jmp	0x140007159 <.text+0x6159>
14000714d: b9 f5 ff ff ff              	mov	ecx, 4294967285
140007152: eb 05                       	jmp	0x140007159 <.text+0x6159>
140007154: b9 f6 ff ff ff              	mov	ecx, 4294967286
140007159: ff 15 91 6f 00 00           	call	qword ptr [rip + 28561] # 0x14000e0f0
14000715f: 48 8b e8                    	mov	rbp, rax
140007162: 48 8d 48 01                 	lea	rcx, [rax + 1]
140007166: 48 83 f9 01                 	cmp	rcx, 1
14000716a: 76 0b                       	jbe	0x140007177 <.text+0x6177>
14000716c: 48 8b c8                    	mov	rcx, rax
14000716f: ff 15 3b 70 00 00           	call	qword ptr [rip + 28731] # 0x14000e1b0
140007175: eb 02                       	jmp	0x140007179 <.text+0x6179>
140007177: 33 c0                       	xor	eax, eax
140007179: 85 c0                       	test	eax, eax
14000717b: 74 20                       	je	0x14000719d <.text+0x619d>
14000717d: 0f b6 c8                    	movzx	ecx, al
140007180: 48 89 6c df 28              	mov	qword ptr [rdi + 8*rbx + 40], rbp
140007185: 83 f9 02                    	cmp	ecx, 2
140007188: 75 07                       	jne	0x140007191 <.text+0x6191>
14000718a: 80 4c df 38 40              	or	byte ptr [rdi + 8*rbx + 56], 64
14000718f: eb 31                       	jmp	0x1400071c2 <.text+0x61c2>
140007191: 83 f9 03                    	cmp	ecx, 3
140007194: 75 2c                       	jne	0x1400071c2 <.text+0x61c2>
140007196: 80 4c df 38 08              	or	byte ptr [rdi + 8*rbx + 56], 8
14000719b: eb 25                       	jmp	0x1400071c2 <.text+0x61c2>
14000719d: 80 4c df 38 40              	or	byte ptr [rdi + 8*rbx + 56], 64
1400071a2: 48 c7 44 df 28 fe ff ff ff  	mov	qword ptr [rdi + 8*rbx + 40], -2
1400071ab: 48 8b 05 5e 14 01 00        	mov	rax, qword ptr [rip + 70750] # 0x140018610
1400071b2: 48 85 c0                    	test	rax, rax
1400071b5: 74 0b                       	je	0x1400071c2 <.text+0x61c2>
1400071b7: 49 8b 04 06                 	mov	rax, qword ptr [r14 + rax]
1400071bb: c7 40 18 fe ff ff ff        	mov	dword ptr [rax + 24], 4294967294
1400071c2: ff c6                       	inc	esi
1400071c4: 49 83 c6 08                 	add	r14, 8
1400071c8: 83 fe 03                    	cmp	esi, 3
1400071cb: 0f 85 2d ff ff ff           	jne	0x1400070fe <.text+0x60fe>
1400071d1: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
1400071d6: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
1400071db: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
1400071e0: 48 8b 7c 24 48              	mov	rdi, qword ptr [rsp + 72]
1400071e5: 48 83 c4 20                 	add	rsp, 32
1400071e9: 41 5e                       	pop	r14
1400071eb: c3                          	ret
1400071ec: 40 53                       	push	rbx
1400071ee: 48 83 ec 20                 	sub	rsp, 32
1400071f2: b9 07 00 00 00              	mov	ecx, 7
1400071f7: e8 08 fa ff ff              	call	0x140006c04 <.text+0x5c04>
1400071fc: 33 db                       	xor	ebx, ebx
1400071fe: 33 c9                       	xor	ecx, ecx
140007200: e8 a3 fb ff ff              	call	0x140006da8 <.text+0x5da8>
140007205: 85 c0                       	test	eax, eax
140007207: 75 0c                       	jne	0x140007215 <.text+0x6215>
140007209: e8 e2 fd ff ff              	call	0x140006ff0 <.text+0x5ff0>
14000720e: e8 cd fe ff ff              	call	0x1400070e0 <.text+0x60e0>
140007213: b3 01                       	mov	bl, 1
140007215: b9 07 00 00 00              	mov	ecx, 7
14000721a: e8 39 fa ff ff              	call	0x140006c58 <.text+0x5c58>
14000721f: 8a c3                       	mov	al, bl
140007221: 48 83 c4 20                 	add	rsp, 32
140007225: 5b                          	pop	rbx
140007226: c3                          	ret
140007227: cc                          	int3
140007228: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000722d: 57                          	push	rdi
14000722e: 48 83 ec 20                 	sub	rsp, 32
140007232: 33 db                       	xor	ebx, ebx
140007234: 48 8d 3d d5 0d 01 00        	lea	rdi, [rip + 69077]      # 0x140018010
14000723b: 48 8b 0c 3b                 	mov	rcx, qword ptr [rbx + rdi]
14000723f: 48 85 c9                    	test	rcx, rcx
140007242: 74 0a                       	je	0x14000724e <.text+0x624e>
140007244: e8 0f fb ff ff              	call	0x140006d58 <.text+0x5d58>
140007249: 48 83 24 3b 00              	and	qword ptr [rbx + rdi], 0
14000724e: 48 83 c3 08                 	add	rbx, 8
140007252: 48 81 fb 00 04 00 00        	cmp	rbx, 1024
140007259: 72 d9                       	jb	0x140007234 <.text+0x6234>
14000725b: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140007260: b0 01                       	mov	al, 1
140007262: 48 83 c4 20                 	add	rsp, 32
140007266: 5f                          	pop	rdi
140007267: c3                          	ret
140007268: 48 85 c9                    	test	rcx, rcx
14000726b: 0f 84 00 01 00 00           	je	0x140007371 <.text+0x6371>
140007271: 53                          	push	rbx
140007272: 48 83 ec 20                 	sub	rsp, 32
140007276: 48 8b d9                    	mov	rbx, rcx
140007279: 48 8b 49 18                 	mov	rcx, qword ptr [rcx + 24]
14000727d: 48 3b 0d a4 04 01 00        	cmp	rcx, qword ptr [rip + 66724] # 0x140017728
140007284: 74 05                       	je	0x14000728b <.text+0x628b>
140007286: e8 ed db ff ff              	call	0x140004e78 <.text+0x3e78>
14000728b: 48 8b 4b 20                 	mov	rcx, qword ptr [rbx + 32]
14000728f: 48 3b 0d 9a 04 01 00        	cmp	rcx, qword ptr [rip + 66714] # 0x140017730
140007296: 74 05                       	je	0x14000729d <.text+0x629d>
140007298: e8 db db ff ff              	call	0x140004e78 <.text+0x3e78>
14000729d: 48 8b 4b 28                 	mov	rcx, qword ptr [rbx + 40]
1400072a1: 48 3b 0d 90 04 01 00        	cmp	rcx, qword ptr [rip + 66704] # 0x140017738
1400072a8: 74 05                       	je	0x1400072af <.text+0x62af>
1400072aa: e8 c9 db ff ff              	call	0x140004e78 <.text+0x3e78>
1400072af: 48 8b 4b 30                 	mov	rcx, qword ptr [rbx + 48]
1400072b3: 48 3b 0d 86 04 01 00        	cmp	rcx, qword ptr [rip + 66694] # 0x140017740
1400072ba: 74 05                       	je	0x1400072c1 <.text+0x62c1>
1400072bc: e8 b7 db ff ff              	call	0x140004e78 <.text+0x3e78>
1400072c1: 48 8b 4b 38                 	mov	rcx, qword ptr [rbx + 56]
1400072c5: 48 3b 0d 7c 04 01 00        	cmp	rcx, qword ptr [rip + 66684] # 0x140017748
1400072cc: 74 05                       	je	0x1400072d3 <.text+0x62d3>
1400072ce: e8 a5 db ff ff              	call	0x140004e78 <.text+0x3e78>
1400072d3: 48 8b 4b 40                 	mov	rcx, qword ptr [rbx + 64]
1400072d7: 48 3b 0d 72 04 01 00        	cmp	rcx, qword ptr [rip + 66674] # 0x140017750
1400072de: 74 05                       	je	0x1400072e5 <.text+0x62e5>
1400072e0: e8 93 db ff ff              	call	0x140004e78 <.text+0x3e78>
1400072e5: 48 8b 4b 48                 	mov	rcx, qword ptr [rbx + 72]
1400072e9: 48 3b 0d 68 04 01 00        	cmp	rcx, qword ptr [rip + 66664] # 0x140017758
1400072f0: 74 05                       	je	0x1400072f7 <.text+0x62f7>
1400072f2: e8 81 db ff ff              	call	0x140004e78 <.text+0x3e78>
1400072f7: 48 8b 4b 68                 	mov	rcx, qword ptr [rbx + 104]
1400072fb: 48 3b 0d 76 04 01 00        	cmp	rcx, qword ptr [rip + 66678] # 0x140017778
140007302: 74 05                       	je	0x140007309 <.text+0x6309>
140007304: e8 6f db ff ff              	call	0x140004e78 <.text+0x3e78>
140007309: 48 8b 4b 70                 	mov	rcx, qword ptr [rbx + 112]
14000730d: 48 3b 0d 6c 04 01 00        	cmp	rcx, qword ptr [rip + 66668] # 0x140017780
140007314: 74 05                       	je	0x14000731b <.text+0x631b>
140007316: e8 5d db ff ff              	call	0x140004e78 <.text+0x3e78>
14000731b: 48 8b 4b 78                 	mov	rcx, qword ptr [rbx + 120]
14000731f: 48 3b 0d 62 04 01 00        	cmp	rcx, qword ptr [rip + 66658] # 0x140017788
140007326: 74 05                       	je	0x14000732d <.text+0x632d>
140007328: e8 4b db ff ff              	call	0x140004e78 <.text+0x3e78>
14000732d: 48 8b 8b 80 00 00 00        	mov	rcx, qword ptr [rbx + 128]
140007334: 48 3b 0d 55 04 01 00        	cmp	rcx, qword ptr [rip + 66645] # 0x140017790
14000733b: 74 05                       	je	0x140007342 <.text+0x6342>
14000733d: e8 36 db ff ff              	call	0x140004e78 <.text+0x3e78>
140007342: 48 8b 8b 88 00 00 00        	mov	rcx, qword ptr [rbx + 136]
140007349: 48 3b 0d 48 04 01 00        	cmp	rcx, qword ptr [rip + 66632] # 0x140017798
140007350: 74 05                       	je	0x140007357 <.text+0x6357>
140007352: e8 21 db ff ff              	call	0x140004e78 <.text+0x3e78>
140007357: 48 8b 8b 90 00 00 00        	mov	rcx, qword ptr [rbx + 144]
14000735e: 48 3b 0d 3b 04 01 00        	cmp	rcx, qword ptr [rip + 66619] # 0x1400177a0
140007365: 74 05                       	je	0x14000736c <.text+0x636c>
140007367: e8 0c db ff ff              	call	0x140004e78 <.text+0x3e78>
14000736c: 48 83 c4 20                 	add	rsp, 32
140007370: 5b                          	pop	rbx
140007371: c3                          	ret
140007372: cc                          	int3
140007373: cc                          	int3
140007374: 48 85 c9                    	test	rcx, rcx
140007377: 74 66                       	je	0x1400073df <.text+0x63df>
140007379: 53                          	push	rbx
14000737a: 48 83 ec 20                 	sub	rsp, 32
14000737e: 48 8b d9                    	mov	rbx, rcx
140007381: 48 8b 09                    	mov	rcx, qword ptr [rcx]
140007384: 48 3b 0d 85 03 01 00        	cmp	rcx, qword ptr [rip + 66437] # 0x140017710
14000738b: 74 05                       	je	0x140007392 <.text+0x6392>
14000738d: e8 e6 da ff ff              	call	0x140004e78 <.text+0x3e78>
140007392: 48 8b 4b 08                 	mov	rcx, qword ptr [rbx + 8]
140007396: 48 3b 0d 7b 03 01 00        	cmp	rcx, qword ptr [rip + 66427] # 0x140017718
14000739d: 74 05                       	je	0x1400073a4 <.text+0x63a4>
14000739f: e8 d4 da ff ff              	call	0x140004e78 <.text+0x3e78>
1400073a4: 48 8b 4b 10                 	mov	rcx, qword ptr [rbx + 16]
1400073a8: 48 3b 0d 71 03 01 00        	cmp	rcx, qword ptr [rip + 66417] # 0x140017720
1400073af: 74 05                       	je	0x1400073b6 <.text+0x63b6>
1400073b1: e8 c2 da ff ff              	call	0x140004e78 <.text+0x3e78>
1400073b6: 48 8b 4b 58                 	mov	rcx, qword ptr [rbx + 88]
1400073ba: 48 3b 0d a7 03 01 00        	cmp	rcx, qword ptr [rip + 66471] # 0x140017768
1400073c1: 74 05                       	je	0x1400073c8 <.text+0x63c8>
1400073c3: e8 b0 da ff ff              	call	0x140004e78 <.text+0x3e78>
1400073c8: 48 8b 4b 60                 	mov	rcx, qword ptr [rbx + 96]
1400073cc: 48 3b 0d 9d 03 01 00        	cmp	rcx, qword ptr [rip + 66461] # 0x140017770
1400073d3: 74 05                       	je	0x1400073da <.text+0x63da>
1400073d5: e8 9e da ff ff              	call	0x140004e78 <.text+0x3e78>
1400073da: 48 83 c4 20                 	add	rsp, 32
1400073de: 5b                          	pop	rbx
1400073df: c3                          	ret
1400073e0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400073e5: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
1400073ea: 57                          	push	rdi
1400073eb: 48 83 ec 20                 	sub	rsp, 32
1400073ef: 33 ff                       	xor	edi, edi
1400073f1: 48 8d 04 d1                 	lea	rax, [rcx + 8*rdx]
1400073f5: 48 8b d9                    	mov	rbx, rcx
1400073f8: 48 8b f2                    	mov	rsi, rdx
1400073fb: 48 b9 ff ff ff ff ff ff ff 1f       	movabs	rcx, 2305843009213693951
140007405: 48 23 f1                    	and	rsi, rcx
140007408: 48 3b d8                    	cmp	rbx, rax
14000740b: 48 0f 47 f7                 	cmova	rsi, rdi
14000740f: 48 85 f6                    	test	rsi, rsi
140007412: 74 14                       	je	0x140007428 <.text+0x6428>
140007414: 48 8b 0b                    	mov	rcx, qword ptr [rbx]
140007417: e8 5c da ff ff              	call	0x140004e78 <.text+0x3e78>
14000741c: 48 ff c7                    	inc	rdi
14000741f: 48 8d 5b 08                 	lea	rbx, [rbx + 8]
140007423: 48 3b fe                    	cmp	rdi, rsi
140007426: 75 ec                       	jne	0x140007414 <.text+0x6414>
140007428: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000742d: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
140007432: 48 83 c4 20                 	add	rsp, 32
140007436: 5f                          	pop	rdi
140007437: c3                          	ret
140007438: 48 85 c9                    	test	rcx, rcx
14000743b: 0f 84 fe 00 00 00           	je	0x14000753f <.text+0x653f>
140007441: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007446: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
14000744b: 56                          	push	rsi
14000744c: 48 83 ec 20                 	sub	rsp, 32
140007450: bd 07 00 00 00              	mov	ebp, 7
140007455: 48 8b d9                    	mov	rbx, rcx
140007458: 8b d5                       	mov	edx, ebp
14000745a: e8 81 ff ff ff              	call	0x1400073e0 <.text+0x63e0>
14000745f: 48 8d 4b 38                 	lea	rcx, [rbx + 56]
140007463: 8b d5                       	mov	edx, ebp
140007465: e8 76 ff ff ff              	call	0x1400073e0 <.text+0x63e0>
14000746a: 8d 75 05                    	lea	esi, [rbp + 5]
14000746d: 8b d6                       	mov	edx, esi
14000746f: 48 8d 4b 70                 	lea	rcx, [rbx + 112]
140007473: e8 68 ff ff ff              	call	0x1400073e0 <.text+0x63e0>
140007478: 48 8d 8b d0 00 00 00        	lea	rcx, [rbx + 208]
14000747f: 8b d6                       	mov	edx, esi
140007481: e8 5a ff ff ff              	call	0x1400073e0 <.text+0x63e0>
140007486: 48 8d 8b 30 01 00 00        	lea	rcx, [rbx + 304]
14000748d: 8d 55 fb                    	lea	edx, [rbp - 5]
140007490: e8 4b ff ff ff              	call	0x1400073e0 <.text+0x63e0>
140007495: 48 8b 8b 40 01 00 00        	mov	rcx, qword ptr [rbx + 320]
14000749c: e8 d7 d9 ff ff              	call	0x140004e78 <.text+0x3e78>
1400074a1: 48 8b 8b 48 01 00 00        	mov	rcx, qword ptr [rbx + 328]
1400074a8: e8 cb d9 ff ff              	call	0x140004e78 <.text+0x3e78>
1400074ad: 48 8b 8b 50 01 00 00        	mov	rcx, qword ptr [rbx + 336]
1400074b4: e8 bf d9 ff ff              	call	0x140004e78 <.text+0x3e78>
1400074b9: 48 8d 8b 60 01 00 00        	lea	rcx, [rbx + 352]
1400074c0: 8b d5                       	mov	edx, ebp
1400074c2: e8 19 ff ff ff              	call	0x1400073e0 <.text+0x63e0>
1400074c7: 48 8d 8b 98 01 00 00        	lea	rcx, [rbx + 408]
1400074ce: 8b d5                       	mov	edx, ebp
1400074d0: e8 0b ff ff ff              	call	0x1400073e0 <.text+0x63e0>
1400074d5: 48 8d 8b d0 01 00 00        	lea	rcx, [rbx + 464]
1400074dc: 8b d6                       	mov	edx, esi
1400074de: e8 fd fe ff ff              	call	0x1400073e0 <.text+0x63e0>
1400074e3: 48 8d 8b 30 02 00 00        	lea	rcx, [rbx + 560]
1400074ea: 8b d6                       	mov	edx, esi
1400074ec: e8 ef fe ff ff              	call	0x1400073e0 <.text+0x63e0>
1400074f1: 48 8d 8b 90 02 00 00        	lea	rcx, [rbx + 656]
1400074f8: 8d 55 fb                    	lea	edx, [rbp - 5]
1400074fb: e8 e0 fe ff ff              	call	0x1400073e0 <.text+0x63e0>
140007500: 48 8b 8b a0 02 00 00        	mov	rcx, qword ptr [rbx + 672]
140007507: e8 6c d9 ff ff              	call	0x140004e78 <.text+0x3e78>
14000750c: 48 8b 8b a8 02 00 00        	mov	rcx, qword ptr [rbx + 680]
140007513: e8 60 d9 ff ff              	call	0x140004e78 <.text+0x3e78>
140007518: 48 8b 8b b0 02 00 00        	mov	rcx, qword ptr [rbx + 688]
14000751f: e8 54 d9 ff ff              	call	0x140004e78 <.text+0x3e78>
140007524: 48 8b 8b b8 02 00 00        	mov	rcx, qword ptr [rbx + 696]
14000752b: e8 48 d9 ff ff              	call	0x140004e78 <.text+0x3e78>
140007530: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140007535: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
14000753a: 48 83 c4 20                 	add	rsp, 32
14000753e: 5e                          	pop	rsi
14000753f: c3                          	ret
140007540: 48 83 ec 28                 	sub	rsp, 40
140007544: e8 bb d2 ff ff              	call	0x140004804 <.text+0x3804>
140007549: 48 8d 54 24 30              	lea	rdx, [rsp + 48]
14000754e: 48 8b 88 90 00 00 00        	mov	rcx, qword ptr [rax + 144]
140007555: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
14000755a: 48 8b c8                    	mov	rcx, rax
14000755d: e8 32 17 00 00              	call	0x140008c94 <.text+0x7c94>
140007562: 48 8b 44 24 30              	mov	rax, qword ptr [rsp + 48]
140007567: 48 8b 00                    	mov	rax, qword ptr [rax]
14000756a: 48 83 c4 28                 	add	rsp, 40
14000756e: c3                          	ret
14000756f: cc                          	int3
140007570: 40 53                       	push	rbx
140007572: 48 83 ec 20                 	sub	rsp, 32
140007576: 48 8b d9                    	mov	rbx, rcx
140007579: 48 83 f9 e0                 	cmp	rcx, -32
14000757d: 77 3c                       	ja	0x1400075bb <.text+0x65bb>
14000757f: 48 85 c9                    	test	rcx, rcx
140007582: b8 01 00 00 00              	mov	eax, 1
140007587: 48 0f 44 d8                 	cmove	rbx, rax
14000758b: eb 15                       	jmp	0x1400075a2 <.text+0x65a2>
14000758d: e8 fe c6 ff ff              	call	0x140003c90 <.text+0x2c90>
140007592: 85 c0                       	test	eax, eax
140007594: 74 25                       	je	0x1400075bb <.text+0x65bb>
140007596: 48 8b cb                    	mov	rcx, rbx
140007599: e8 c6 0d 00 00              	call	0x140008364 <.text+0x7364>
14000759e: 85 c0                       	test	eax, eax
1400075a0: 74 19                       	je	0x1400075bb <.text+0x65bb>
1400075a2: 48 8b 0d 2f 10 01 00        	mov	rcx, qword ptr [rip + 69679] # 0x1400185d8
1400075a9: 4c 8b c3                    	mov	r8, rbx
1400075ac: 33 d2                       	xor	edx, edx
1400075ae: ff 15 84 6b 00 00           	call	qword ptr [rip + 27524] # 0x14000e138
1400075b4: 48 85 c0                    	test	rax, rax
1400075b7: 74 d4                       	je	0x14000758d <.text+0x658d>
1400075b9: eb 0d                       	jmp	0x1400075c8 <.text+0x65c8>
1400075bb: e8 20 d8 ff ff              	call	0x140004de0 <.text+0x3de0>
1400075c0: c7 00 0c 00 00 00           	mov	dword ptr [rax], 12
1400075c6: 33 c0                       	xor	eax, eax
1400075c8: 48 83 c4 20                 	add	rsp, 32
1400075cc: 5b                          	pop	rbx
1400075cd: c3                          	ret
1400075ce: cc                          	int3
1400075cf: cc                          	int3
1400075d0: 40 55                       	push	rbp
1400075d2: 41 54                       	push	r12
1400075d4: 41 55                       	push	r13
1400075d6: 41 56                       	push	r14
1400075d8: 41 57                       	push	r15
1400075da: 48 83 ec 60                 	sub	rsp, 96
1400075de: 48 8d 6c 24 30              	lea	rbp, [rsp + 48]
1400075e3: 48 89 5d 60                 	mov	qword ptr [rbp + 96], rbx
1400075e7: 48 89 75 68                 	mov	qword ptr [rbp + 104], rsi
1400075eb: 48 89 7d 70                 	mov	qword ptr [rbp + 112], rdi
1400075ef: 48 8b 05 32 fa 00 00        	mov	rax, qword ptr [rip + 64050] # 0x140017028
1400075f6: 48 33 c5                    	xor	rax, rbp
1400075f9: 48 89 45 20                 	mov	qword ptr [rbp + 32], rax
1400075fd: 44 8b ea                    	mov	r13d, edx
140007600: 45 8b f9                    	mov	r15d, r9d
140007603: 48 8b d1                    	mov	rdx, rcx
140007606: 4d 8b e0                    	mov	r12, r8
140007609: 48 8d 4d 00                 	lea	rcx, [rbp]
14000760d: e8 22 cd ff ff              	call	0x140004334 <.text+0x3334>
140007612: 8b bd 88 00 00 00           	mov	edi, dword ptr [rbp + 136]
140007618: 85 ff                       	test	edi, edi
14000761a: 75 07                       	jne	0x140007623 <.text+0x6623>
14000761c: 48 8b 45 08                 	mov	rax, qword ptr [rbp + 8]
140007620: 8b 78 0c                    	mov	edi, dword ptr [rax + 12]
140007623: f7 9d 90 00 00 00           	neg	dword ptr [rbp + 144]
140007629: 45 8b cf                    	mov	r9d, r15d
14000762c: 4d 8b c4                    	mov	r8, r12
14000762f: 8b cf                       	mov	ecx, edi
140007631: 1b d2                       	sbb	edx, edx
140007633: 83 64 24 28 00              	and	dword ptr [rsp + 40], 0
140007638: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000763e: 83 e2 08                    	and	edx, 8
140007641: ff c2                       	inc	edx
140007643: e8 54 ef ff ff              	call	0x14000659c <.text+0x559c>
140007648: 4c 63 f0                    	movsxd	r14, eax
14000764b: 85 c0                       	test	eax, eax
14000764d: 75 07                       	jne	0x140007656 <.text+0x6656>
14000764f: 33 ff                       	xor	edi, edi
140007651: e9 ce 00 00 00              	jmp	0x140007724 <.text+0x6724>
140007656: 49 8b f6                    	mov	rsi, r14
140007659: 48 03 f6                    	add	rsi, rsi
14000765c: 48 8d 46 10                 	lea	rax, [rsi + 16]
140007660: 48 3b f0                    	cmp	rsi, rax
140007663: 48 1b c9                    	sbb	rcx, rcx
140007666: 48 23 c8                    	and	rcx, rax
140007669: 74 53                       	je	0x1400076be <.text+0x66be>
14000766b: 48 81 f9 00 04 00 00        	cmp	rcx, 1024
140007672: 77 31                       	ja	0x1400076a5 <.text+0x66a5>
140007674: 48 8d 41 0f                 	lea	rax, [rcx + 15]
140007678: 48 3b c1                    	cmp	rax, rcx
14000767b: 77 0a                       	ja	0x140007687 <.text+0x6687>
14000767d: 48 b8 f0 ff ff ff ff ff ff 0f       	movabs	rax, 1152921504606846960
140007687: 48 83 e0 f0                 	and	rax, -16
14000768b: e8 20 57 00 00              	call	0x14000cdb0 <.text+0xbdb0>
140007690: 48 2b e0                    	sub	rsp, rax
140007693: 48 8d 5c 24 30              	lea	rbx, [rsp + 48]
140007698: 48 85 db                    	test	rbx, rbx
14000769b: 74 6f                       	je	0x14000770c <.text+0x670c>
14000769d: c7 03 cc cc 00 00           	mov	dword ptr [rbx], 52428
1400076a3: eb 13                       	jmp	0x1400076b8 <.text+0x66b8>
1400076a5: e8 c6 fe ff ff              	call	0x140007570 <.text+0x6570>
1400076aa: 48 8b d8                    	mov	rbx, rax
1400076ad: 48 85 c0                    	test	rax, rax
1400076b0: 74 0e                       	je	0x1400076c0 <.text+0x66c0>
1400076b2: c7 00 dd dd 00 00           	mov	dword ptr [rax], 56797
1400076b8: 48 83 c3 10                 	add	rbx, 16
1400076bc: eb 02                       	jmp	0x1400076c0 <.text+0x66c0>
1400076be: 33 db                       	xor	ebx, ebx
1400076c0: 48 85 db                    	test	rbx, rbx
1400076c3: 74 47                       	je	0x14000770c <.text+0x670c>
1400076c5: 4c 8b c6                    	mov	r8, rsi
1400076c8: 33 d2                       	xor	edx, edx
1400076ca: 48 8b cb                    	mov	rcx, rbx
1400076cd: e8 be a6 ff ff              	call	0x140001d90 <.text+0xd90>
1400076d2: 45 8b cf                    	mov	r9d, r15d
1400076d5: 44 89 74 24 28              	mov	dword ptr [rsp + 40], r14d
1400076da: 4d 8b c4                    	mov	r8, r12
1400076dd: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
1400076e2: ba 01 00 00 00              	mov	edx, 1
1400076e7: 8b cf                       	mov	ecx, edi
1400076e9: e8 ae ee ff ff              	call	0x14000659c <.text+0x559c>
1400076ee: 85 c0                       	test	eax, eax
1400076f0: 74 1a                       	je	0x14000770c <.text+0x670c>
1400076f2: 4c 8b 8d 80 00 00 00        	mov	r9, qword ptr [rbp + 128]
1400076f9: 44 8b c0                    	mov	r8d, eax
1400076fc: 48 8b d3                    	mov	rdx, rbx
1400076ff: 41 8b cd                    	mov	ecx, r13d
140007702: ff 15 b0 6a 00 00           	call	qword ptr [rip + 27312] # 0x14000e1b8
140007708: 8b f8                       	mov	edi, eax
14000770a: eb 02                       	jmp	0x14000770e <.text+0x670e>
14000770c: 33 ff                       	xor	edi, edi
14000770e: 48 85 db                    	test	rbx, rbx
140007711: 74 11                       	je	0x140007724 <.text+0x6724>
140007713: 48 8d 4b f0                 	lea	rcx, [rbx - 16]
140007717: 81 39 dd dd 00 00           	cmp	dword ptr [rcx], 56797
14000771d: 75 05                       	jne	0x140007724 <.text+0x6724>
14000771f: e8 54 d7 ff ff              	call	0x140004e78 <.text+0x3e78>
140007724: 80 7d 18 00                 	cmp	byte ptr [rbp + 24], 0
140007728: 74 0b                       	je	0x140007735 <.text+0x6735>
14000772a: 48 8b 45 00                 	mov	rax, qword ptr [rbp]
14000772e: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140007735: 8b c7                       	mov	eax, edi
140007737: 48 8b 4d 20                 	mov	rcx, qword ptr [rbp + 32]
14000773b: 48 33 cd                    	xor	rcx, rbp
14000773e: e8 9d 53 00 00              	call	0x14000cae0 <.text+0xbae0>
140007743: 48 8b 5d 60                 	mov	rbx, qword ptr [rbp + 96]
140007747: 48 8b 75 68                 	mov	rsi, qword ptr [rbp + 104]
14000774b: 48 8b 7d 70                 	mov	rdi, qword ptr [rbp + 112]
14000774f: 48 8d 65 30                 	lea	rsp, [rbp + 48]
140007753: 41 5f                       	pop	r15
140007755: 41 5e                       	pop	r14
140007757: 41 5d                       	pop	r13
140007759: 41 5c                       	pop	r12
14000775b: 5d                          	pop	rbp
14000775c: c3                          	ret
14000775d: cc                          	int3
14000775e: cc                          	int3
14000775f: cc                          	int3
140007760: f0                          	lock
140007761: ff 41 10                    	inc	dword ptr [rcx + 16]
140007764: 48 8b 81 e0 00 00 00        	mov	rax, qword ptr [rcx + 224]
14000776b: 48 85 c0                    	test	rax, rax
14000776e: 74 03                       	je	0x140007773 <.text+0x6773>
140007770: f0                          	lock
140007771: ff 00                       	inc	dword ptr [rax]
140007773: 48 8b 81 f0 00 00 00        	mov	rax, qword ptr [rcx + 240]
14000777a: 48 85 c0                    	test	rax, rax
14000777d: 74 03                       	je	0x140007782 <.text+0x6782>
14000777f: f0                          	lock
140007780: ff 00                       	inc	dword ptr [rax]
140007782: 48 8b 81 e8 00 00 00        	mov	rax, qword ptr [rcx + 232]
140007789: 48 85 c0                    	test	rax, rax
14000778c: 74 03                       	je	0x140007791 <.text+0x6791>
14000778e: f0                          	lock
14000778f: ff 00                       	inc	dword ptr [rax]
140007791: 48 8b 81 00 01 00 00        	mov	rax, qword ptr [rcx + 256]
140007798: 48 85 c0                    	test	rax, rax
14000779b: 74 03                       	je	0x1400077a0 <.text+0x67a0>
14000779d: f0                          	lock
14000779e: ff 00                       	inc	dword ptr [rax]
1400077a0: 48 8d 41 38                 	lea	rax, [rcx + 56]
1400077a4: 41 b8 06 00 00 00           	mov	r8d, 6
1400077aa: 48 8d 15 57 ff 00 00        	lea	rdx, [rip + 65367]      # 0x140017708
1400077b1: 48 39 50 f0                 	cmp	qword ptr [rax - 16], rdx
1400077b5: 74 0b                       	je	0x1400077c2 <.text+0x67c2>
1400077b7: 48 8b 10                    	mov	rdx, qword ptr [rax]
1400077ba: 48 85 d2                    	test	rdx, rdx
1400077bd: 74 03                       	je	0x1400077c2 <.text+0x67c2>
1400077bf: f0                          	lock
1400077c0: ff 02                       	inc	dword ptr [rdx]
1400077c2: 48 83 78 e8 00              	cmp	qword ptr [rax - 24], 0
1400077c7: 74 0c                       	je	0x1400077d5 <.text+0x67d5>
1400077c9: 48 8b 50 f8                 	mov	rdx, qword ptr [rax - 8]
1400077cd: 48 85 d2                    	test	rdx, rdx
1400077d0: 74 03                       	je	0x1400077d5 <.text+0x67d5>
1400077d2: f0                          	lock
1400077d3: ff 02                       	inc	dword ptr [rdx]
1400077d5: 48 83 c0 20                 	add	rax, 32
1400077d9: 49 83 e8 01                 	sub	r8, 1
1400077dd: 75 cb                       	jne	0x1400077aa <.text+0x67aa>
1400077df: 48 8b 89 20 01 00 00        	mov	rcx, qword ptr [rcx + 288]
1400077e6: e9 79 01 00 00              	jmp	0x140007964 <.text+0x6964>
1400077eb: cc                          	int3
1400077ec: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400077f1: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
1400077f6: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
1400077fb: 57                          	push	rdi
1400077fc: 48 83 ec 20                 	sub	rsp, 32
140007800: 48 8b 81 f8 00 00 00        	mov	rax, qword ptr [rcx + 248]
140007807: 48 8b d9                    	mov	rbx, rcx
14000780a: 48 85 c0                    	test	rax, rax
14000780d: 74 79                       	je	0x140007888 <.text+0x6888>
14000780f: 48 8d 0d fa fe 00 00        	lea	rcx, [rip + 65274]      # 0x140017710
140007816: 48 3b c1                    	cmp	rax, rcx
140007819: 74 6d                       	je	0x140007888 <.text+0x6888>
14000781b: 48 8b 83 e0 00 00 00        	mov	rax, qword ptr [rbx + 224]
140007822: 48 85 c0                    	test	rax, rax
140007825: 74 61                       	je	0x140007888 <.text+0x6888>
140007827: 83 38 00                    	cmp	dword ptr [rax], 0
14000782a: 75 5c                       	jne	0x140007888 <.text+0x6888>
14000782c: 48 8b 8b f0 00 00 00        	mov	rcx, qword ptr [rbx + 240]
140007833: 48 85 c9                    	test	rcx, rcx
140007836: 74 16                       	je	0x14000784e <.text+0x684e>
140007838: 83 39 00                    	cmp	dword ptr [rcx], 0
14000783b: 75 11                       	jne	0x14000784e <.text+0x684e>
14000783d: e8 36 d6 ff ff              	call	0x140004e78 <.text+0x3e78>
140007842: 48 8b 8b f8 00 00 00        	mov	rcx, qword ptr [rbx + 248]
140007849: e8 1a fa ff ff              	call	0x140007268 <.text+0x6268>
14000784e: 48 8b 8b e8 00 00 00        	mov	rcx, qword ptr [rbx + 232]
140007855: 48 85 c9                    	test	rcx, rcx
140007858: 74 16                       	je	0x140007870 <.text+0x6870>
14000785a: 83 39 00                    	cmp	dword ptr [rcx], 0
14000785d: 75 11                       	jne	0x140007870 <.text+0x6870>
14000785f: e8 14 d6 ff ff              	call	0x140004e78 <.text+0x3e78>
140007864: 48 8b 8b f8 00 00 00        	mov	rcx, qword ptr [rbx + 248]
14000786b: e8 04 fb ff ff              	call	0x140007374 <.text+0x6374>
140007870: 48 8b 8b e0 00 00 00        	mov	rcx, qword ptr [rbx + 224]
140007877: e8 fc d5 ff ff              	call	0x140004e78 <.text+0x3e78>
14000787c: 48 8b 8b f8 00 00 00        	mov	rcx, qword ptr [rbx + 248]
140007883: e8 f0 d5 ff ff              	call	0x140004e78 <.text+0x3e78>
140007888: 48 8b 83 00 01 00 00        	mov	rax, qword ptr [rbx + 256]
14000788f: 48 85 c0                    	test	rax, rax
140007892: 74 47                       	je	0x1400078db <.text+0x68db>
140007894: 83 38 00                    	cmp	dword ptr [rax], 0
140007897: 75 42                       	jne	0x1400078db <.text+0x68db>
140007899: 48 8b 8b 08 01 00 00        	mov	rcx, qword ptr [rbx + 264]
1400078a0: 48 81 e9 fe 00 00 00        	sub	rcx, 254
1400078a7: e8 cc d5 ff ff              	call	0x140004e78 <.text+0x3e78>
1400078ac: 48 8b 8b 10 01 00 00        	mov	rcx, qword ptr [rbx + 272]
1400078b3: bf 80 00 00 00              	mov	edi, 128
1400078b8: 48 2b cf                    	sub	rcx, rdi
1400078bb: e8 b8 d5 ff ff              	call	0x140004e78 <.text+0x3e78>
1400078c0: 48 8b 8b 18 01 00 00        	mov	rcx, qword ptr [rbx + 280]
1400078c7: 48 2b cf                    	sub	rcx, rdi
1400078ca: e8 a9 d5 ff ff              	call	0x140004e78 <.text+0x3e78>
1400078cf: 48 8b 8b 00 01 00 00        	mov	rcx, qword ptr [rbx + 256]
1400078d6: e8 9d d5 ff ff              	call	0x140004e78 <.text+0x3e78>
1400078db: 48 8b 8b 20 01 00 00        	mov	rcx, qword ptr [rbx + 288]
1400078e2: e8 a5 00 00 00              	call	0x14000798c <.text+0x698c>
1400078e7: 48 8d b3 28 01 00 00        	lea	rsi, [rbx + 296]
1400078ee: bd 06 00 00 00              	mov	ebp, 6
1400078f3: 48 8d 7b 38                 	lea	rdi, [rbx + 56]
1400078f7: 48 8d 05 0a fe 00 00        	lea	rax, [rip + 65034]      # 0x140017708
1400078fe: 48 39 47 f0                 	cmp	qword ptr [rdi - 16], rax
140007902: 74 1a                       	je	0x14000791e <.text+0x691e>
140007904: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
140007907: 48 85 c9                    	test	rcx, rcx
14000790a: 74 12                       	je	0x14000791e <.text+0x691e>
14000790c: 83 39 00                    	cmp	dword ptr [rcx], 0
14000790f: 75 0d                       	jne	0x14000791e <.text+0x691e>
140007911: e8 62 d5 ff ff              	call	0x140004e78 <.text+0x3e78>
140007916: 48 8b 0e                    	mov	rcx, qword ptr [rsi]
140007919: e8 5a d5 ff ff              	call	0x140004e78 <.text+0x3e78>
14000791e: 48 83 7f e8 00              	cmp	qword ptr [rdi - 24], 0
140007923: 74 13                       	je	0x140007938 <.text+0x6938>
140007925: 48 8b 4f f8                 	mov	rcx, qword ptr [rdi - 8]
140007929: 48 85 c9                    	test	rcx, rcx
14000792c: 74 0a                       	je	0x140007938 <.text+0x6938>
14000792e: 83 39 00                    	cmp	dword ptr [rcx], 0
140007931: 75 05                       	jne	0x140007938 <.text+0x6938>
140007933: e8 40 d5 ff ff              	call	0x140004e78 <.text+0x3e78>
140007938: 48 83 c6 08                 	add	rsi, 8
14000793c: 48 83 c7 20                 	add	rdi, 32
140007940: 48 83 ed 01                 	sub	rbp, 1
140007944: 75 b1                       	jne	0x1400078f7 <.text+0x68f7>
140007946: 48 8b cb                    	mov	rcx, rbx
140007949: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000794e: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
140007953: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
140007958: 48 83 c4 20                 	add	rsp, 32
14000795c: 5f                          	pop	rdi
14000795d: e9 16 d5 ff ff              	jmp	0x140004e78 <.text+0x3e78>
140007962: cc                          	int3
140007963: cc                          	int3
140007964: 48 85 c9                    	test	rcx, rcx
140007967: 74 1c                       	je	0x140007985 <.text+0x6985>
140007969: 48 8d 05 90 7c 00 00        	lea	rax, [rip + 31888]      # 0x14000f600
140007970: 48 3b c8                    	cmp	rcx, rax
140007973: 74 10                       	je	0x140007985 <.text+0x6985>
140007975: b8 01 00 00 00              	mov	eax, 1
14000797a: f0                          	lock
14000797b: 0f c1 81 5c 01 00 00        	xadd	dword ptr [rcx + 348], eax
140007982: ff c0                       	inc	eax
140007984: c3                          	ret
140007985: b8 ff ff ff 7f              	mov	eax, 2147483647
14000798a: c3                          	ret
14000798b: cc                          	int3
14000798c: 48 85 c9                    	test	rcx, rcx
14000798f: 74 30                       	je	0x1400079c1 <.text+0x69c1>
140007991: 53                          	push	rbx
140007992: 48 83 ec 20                 	sub	rsp, 32
140007996: 48 8d 05 63 7c 00 00        	lea	rax, [rip + 31843]      # 0x14000f600
14000799d: 48 8b d9                    	mov	rbx, rcx
1400079a0: 48 3b c8                    	cmp	rcx, rax
1400079a3: 74 17                       	je	0x1400079bc <.text+0x69bc>
1400079a5: 8b 81 5c 01 00 00           	mov	eax, dword ptr [rcx + 348]
1400079ab: 85 c0                       	test	eax, eax
1400079ad: 75 0d                       	jne	0x1400079bc <.text+0x69bc>
1400079af: e8 84 fa ff ff              	call	0x140007438 <.text+0x6438>
1400079b4: 48 8b cb                    	mov	rcx, rbx
1400079b7: e8 bc d4 ff ff              	call	0x140004e78 <.text+0x3e78>
1400079bc: 48 83 c4 20                 	add	rsp, 32
1400079c0: 5b                          	pop	rbx
1400079c1: c3                          	ret
1400079c2: cc                          	int3
1400079c3: cc                          	int3
1400079c4: 48 85 c9                    	test	rcx, rcx
1400079c7: 74 1a                       	je	0x1400079e3 <.text+0x69e3>
1400079c9: 48 8d 05 30 7c 00 00        	lea	rax, [rip + 31792]      # 0x14000f600
1400079d0: 48 3b c8                    	cmp	rcx, rax
1400079d3: 74 0e                       	je	0x1400079e3 <.text+0x69e3>
1400079d5: 83 c8 ff                    	or	eax, -1
1400079d8: f0                          	lock
1400079d9: 0f c1 81 5c 01 00 00        	xadd	dword ptr [rcx + 348], eax
1400079e0: ff c8                       	dec	eax
1400079e2: c3                          	ret
1400079e3: b8 ff ff ff 7f              	mov	eax, 2147483647
1400079e8: c3                          	ret
1400079e9: cc                          	int3
1400079ea: cc                          	int3
1400079eb: cc                          	int3
1400079ec: 48 83 ec 28                 	sub	rsp, 40
1400079f0: 48 85 c9                    	test	rcx, rcx
1400079f3: 0f 84 96 00 00 00           	je	0x140007a8f <.text+0x6a8f>
1400079f9: 41 83 c9 ff                 	or	r9d, -1
1400079fd: f0                          	lock
1400079fe: 44 01 49 10                 	add	dword ptr [rcx + 16], r9d
140007a02: 48 8b 81 e0 00 00 00        	mov	rax, qword ptr [rcx + 224]
140007a09: 48 85 c0                    	test	rax, rax
140007a0c: 74 04                       	je	0x140007a12 <.text+0x6a12>
140007a0e: f0                          	lock
140007a0f: 44 01 08                    	add	dword ptr [rax], r9d
140007a12: 48 8b 81 f0 00 00 00        	mov	rax, qword ptr [rcx + 240]
140007a19: 48 85 c0                    	test	rax, rax
140007a1c: 74 04                       	je	0x140007a22 <.text+0x6a22>
140007a1e: f0                          	lock
140007a1f: 44 01 08                    	add	dword ptr [rax], r9d
140007a22: 48 8b 81 e8 00 00 00        	mov	rax, qword ptr [rcx + 232]
140007a29: 48 85 c0                    	test	rax, rax
140007a2c: 74 04                       	je	0x140007a32 <.text+0x6a32>
140007a2e: f0                          	lock
140007a2f: 44 01 08                    	add	dword ptr [rax], r9d
140007a32: 48 8b 81 00 01 00 00        	mov	rax, qword ptr [rcx + 256]
140007a39: 48 85 c0                    	test	rax, rax
140007a3c: 74 04                       	je	0x140007a42 <.text+0x6a42>
140007a3e: f0                          	lock
140007a3f: 44 01 08                    	add	dword ptr [rax], r9d
140007a42: 48 8d 41 38                 	lea	rax, [rcx + 56]
140007a46: 41 b8 06 00 00 00           	mov	r8d, 6
140007a4c: 48 8d 15 b5 fc 00 00        	lea	rdx, [rip + 64693]      # 0x140017708
140007a53: 48 39 50 f0                 	cmp	qword ptr [rax - 16], rdx
140007a57: 74 0c                       	je	0x140007a65 <.text+0x6a65>
140007a59: 48 8b 10                    	mov	rdx, qword ptr [rax]
140007a5c: 48 85 d2                    	test	rdx, rdx
140007a5f: 74 04                       	je	0x140007a65 <.text+0x6a65>
140007a61: f0                          	lock
140007a62: 44 01 0a                    	add	dword ptr [rdx], r9d
140007a65: 48 83 78 e8 00              	cmp	qword ptr [rax - 24], 0
140007a6a: 74 0d                       	je	0x140007a79 <.text+0x6a79>
140007a6c: 48 8b 50 f8                 	mov	rdx, qword ptr [rax - 8]
140007a70: 48 85 d2                    	test	rdx, rdx
140007a73: 74 04                       	je	0x140007a79 <.text+0x6a79>
140007a75: f0                          	lock
140007a76: 44 01 0a                    	add	dword ptr [rdx], r9d
140007a79: 48 83 c0 20                 	add	rax, 32
140007a7d: 49 83 e8 01                 	sub	r8, 1
140007a81: 75 c9                       	jne	0x140007a4c <.text+0x6a4c>
140007a83: 48 8b 89 20 01 00 00        	mov	rcx, qword ptr [rcx + 288]
140007a8a: e8 35 ff ff ff              	call	0x1400079c4 <.text+0x69c4>
140007a8f: 48 83 c4 28                 	add	rsp, 40
140007a93: c3                          	ret
140007a94: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007a99: 57                          	push	rdi
140007a9a: 48 83 ec 20                 	sub	rsp, 32
140007a9e: e8 61 cd ff ff              	call	0x140004804 <.text+0x3804>
140007aa3: 48 8d b8 90 00 00 00        	lea	rdi, [rax + 144]
140007aaa: 8b 88 a8 03 00 00           	mov	ecx, dword ptr [rax + 936]
140007ab0: 8b 05 fa fc 00 00           	mov	eax, dword ptr [rip + 64762] # 0x1400177b0
140007ab6: 85 c8                       	test	eax, ecx
140007ab8: 74 08                       	je	0x140007ac2 <.text+0x6ac2>
140007aba: 48 8b 1f                    	mov	rbx, qword ptr [rdi]
140007abd: 48 85 db                    	test	rbx, rbx
140007ac0: 75 2c                       	jne	0x140007aee <.text+0x6aee>
140007ac2: b9 04 00 00 00              	mov	ecx, 4
140007ac7: e8 38 f1 ff ff              	call	0x140006c04 <.text+0x5c04>
140007acc: 90                          	nop
140007acd: 48 8b 15 44 09 01 00        	mov	rdx, qword ptr [rip + 67908] # 0x140018418
140007ad4: 48 8b cf                    	mov	rcx, rdi
140007ad7: e8 28 00 00 00              	call	0x140007b04 <.text+0x6b04>
140007adc: 48 8b d8                    	mov	rbx, rax
140007adf: b9 04 00 00 00              	mov	ecx, 4
140007ae4: e8 6f f1 ff ff              	call	0x140006c58 <.text+0x5c58>
140007ae9: 48 85 db                    	test	rbx, rbx
140007aec: 74 0e                       	je	0x140007afc <.text+0x6afc>
140007aee: 48 8b c3                    	mov	rax, rbx
140007af1: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140007af6: 48 83 c4 20                 	add	rsp, 32
140007afa: 5f                          	pop	rdi
140007afb: c3                          	ret
140007afc: e8 d3 c7 ff ff              	call	0x1400042d4 <.text+0x32d4>
140007b01: 90                          	nop
140007b02: cc                          	int3
140007b03: cc                          	int3
140007b04: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007b09: 57                          	push	rdi
140007b0a: 48 83 ec 20                 	sub	rsp, 32
140007b0e: 48 8b fa                    	mov	rdi, rdx
140007b11: 48 85 d2                    	test	rdx, rdx
140007b14: 74 46                       	je	0x140007b5c <.text+0x6b5c>
140007b16: 48 85 c9                    	test	rcx, rcx
140007b19: 74 41                       	je	0x140007b5c <.text+0x6b5c>
140007b1b: 48 8b 19                    	mov	rbx, qword ptr [rcx]
140007b1e: 48 3b da                    	cmp	rbx, rdx
140007b21: 75 05                       	jne	0x140007b28 <.text+0x6b28>
140007b23: 48 8b c7                    	mov	rax, rdi
140007b26: eb 36                       	jmp	0x140007b5e <.text+0x6b5e>
140007b28: 48 89 39                    	mov	qword ptr [rcx], rdi
140007b2b: 48 8b cf                    	mov	rcx, rdi
140007b2e: e8 2d fc ff ff              	call	0x140007760 <.text+0x6760>
140007b33: 48 85 db                    	test	rbx, rbx
140007b36: 74 eb                       	je	0x140007b23 <.text+0x6b23>
140007b38: 48 8b cb                    	mov	rcx, rbx
140007b3b: e8 ac fe ff ff              	call	0x1400079ec <.text+0x69ec>
140007b40: 83 7b 10 00                 	cmp	dword ptr [rbx + 16], 0
140007b44: 75 dd                       	jne	0x140007b23 <.text+0x6b23>
140007b46: 48 8d 05 53 fa 00 00        	lea	rax, [rip + 64083]      # 0x1400175a0
140007b4d: 48 3b d8                    	cmp	rbx, rax
140007b50: 74 d1                       	je	0x140007b23 <.text+0x6b23>
140007b52: 48 8b cb                    	mov	rcx, rbx
140007b55: e8 92 fc ff ff              	call	0x1400077ec <.text+0x67ec>
140007b5a: eb c7                       	jmp	0x140007b23 <.text+0x6b23>
140007b5c: 33 c0                       	xor	eax, eax
140007b5e: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140007b63: 48 83 c4 20                 	add	rsp, 32
140007b67: 5f                          	pop	rdi
140007b68: c3                          	ret
140007b69: cc                          	int3
140007b6a: cc                          	int3
140007b6b: cc                          	int3
140007b6c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007b71: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140007b76: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140007b7b: 57                          	push	rdi
140007b7c: 41 54                       	push	r12
140007b7e: 41 55                       	push	r13
140007b80: 41 56                       	push	r14
140007b82: 41 57                       	push	r15
140007b84: 48 83 ec 20                 	sub	rsp, 32
140007b88: 44 8b f9                    	mov	r15d, ecx
140007b8b: 4c 8d 35 6e 84 ff ff        	lea	r14, [rip - 31634]      # 0x140000000
140007b92: 4d 8b e1                    	mov	r12, r9
140007b95: 49 8b e8                    	mov	rbp, r8
140007b98: 4c 8b ea                    	mov	r13, rdx
140007b9b: 4b 8b 8c fe c0 84 01 00     	mov	rcx, qword ptr [r14 + 8*r15 + 99520]
140007ba3: 4c 8b 15 7e f4 00 00        	mov	r10, qword ptr [rip + 62590] # 0x140017028
140007baa: 48 83 cf ff                 	or	rdi, -1
140007bae: 41 8b c2                    	mov	eax, r10d
140007bb1: 49 8b d2                    	mov	rdx, r10
140007bb4: 48 33 d1                    	xor	rdx, rcx
140007bb7: 83 e0 3f                    	and	eax, 63
140007bba: 8a c8                       	mov	cl, al
140007bbc: 48 d3 ca                    	ror	rdx, cl
140007bbf: 48 3b d7                    	cmp	rdx, rdi
140007bc2: 0f 84 5b 01 00 00           	je	0x140007d23 <.text+0x6d23>
140007bc8: 48 85 d2                    	test	rdx, rdx
140007bcb: 74 08                       	je	0x140007bd5 <.text+0x6bd5>
140007bcd: 48 8b c2                    	mov	rax, rdx
140007bd0: e9 50 01 00 00              	jmp	0x140007d25 <.text+0x6d25>
140007bd5: 4d 3b c4                    	cmp	r8, r12
140007bd8: 0f 84 d9 00 00 00           	je	0x140007cb7 <.text+0x6cb7>
140007bde: 8b 75 00                    	mov	esi, dword ptr [rbp]
140007be1: 49 8b 9c f6 20 84 01 00     	mov	rbx, qword ptr [r14 + 8*rsi + 99360]
140007be9: 48 85 db                    	test	rbx, rbx
140007bec: 74 0e                       	je	0x140007bfc <.text+0x6bfc>
140007bee: 48 3b df                    	cmp	rbx, rdi
140007bf1: 0f 84 ac 00 00 00           	je	0x140007ca3 <.text+0x6ca3>
140007bf7: e9 a2 00 00 00              	jmp	0x140007c9e <.text+0x6c9e>
140007bfc: 4d 8b b4 f6 90 02 01 00     	mov	r14, qword ptr [r14 + 8*rsi + 66192]
140007c04: 33 d2                       	xor	edx, edx
140007c06: 49 8b ce                    	mov	rcx, r14
140007c09: 41 b8 00 08 00 00           	mov	r8d, 2048
140007c0f: ff 15 cb 64 00 00           	call	qword ptr [rip + 25803] # 0x14000e0e0
140007c15: 48 8b d8                    	mov	rbx, rax
140007c18: 48 85 c0                    	test	rax, rax
140007c1b: 75 4f                       	jne	0x140007c6c <.text+0x6c6c>
140007c1d: ff 15 5d 64 00 00           	call	qword ptr [rip + 25693] # 0x14000e080
140007c23: 83 f8 57                    	cmp	eax, 87
140007c26: 75 42                       	jne	0x140007c6a <.text+0x6c6a>
140007c28: 8d 58 b0                    	lea	ebx, [rax - 80]
140007c2b: 49 8b ce                    	mov	rcx, r14
140007c2e: 44 8b c3                    	mov	r8d, ebx
140007c31: 48 8d 15 60 75 00 00        	lea	rdx, [rip + 30048]      # 0x14000f198
140007c38: e8 23 c8 ff ff              	call	0x140004460 <.text+0x3460>
140007c3d: 85 c0                       	test	eax, eax
140007c3f: 74 29                       	je	0x140007c6a <.text+0x6c6a>
140007c41: 44 8b c3                    	mov	r8d, ebx
140007c44: 48 8d 15 3d 8b 00 00        	lea	rdx, [rip + 35645]      # 0x140010788
140007c4b: 49 8b ce                    	mov	rcx, r14
140007c4e: e8 0d c8 ff ff              	call	0x140004460 <.text+0x3460>
140007c53: 85 c0                       	test	eax, eax
140007c55: 74 13                       	je	0x140007c6a <.text+0x6c6a>
140007c57: 45 33 c0                    	xor	r8d, r8d
140007c5a: 33 d2                       	xor	edx, edx
140007c5c: 49 8b ce                    	mov	rcx, r14
140007c5f: ff 15 7b 64 00 00           	call	qword ptr [rip + 25723] # 0x14000e0e0
140007c65: 48 8b d8                    	mov	rbx, rax
140007c68: eb 02                       	jmp	0x140007c6c <.text+0x6c6c>
140007c6a: 33 db                       	xor	ebx, ebx
140007c6c: 4c 8d 35 8d 83 ff ff        	lea	r14, [rip - 31859]      # 0x140000000
140007c73: 48 85 db                    	test	rbx, rbx
140007c76: 75 0d                       	jne	0x140007c85 <.text+0x6c85>
140007c78: 48 8b c7                    	mov	rax, rdi
140007c7b: 49 87 84 f6 20 84 01 00     	xchg	qword ptr [r14 + 8*rsi + 99360], rax
140007c83: eb 1e                       	jmp	0x140007ca3 <.text+0x6ca3>
140007c85: 48 8b c3                    	mov	rax, rbx
140007c88: 49 87 84 f6 20 84 01 00     	xchg	qword ptr [r14 + 8*rsi + 99360], rax
140007c90: 48 85 c0                    	test	rax, rax
140007c93: 74 09                       	je	0x140007c9e <.text+0x6c9e>
140007c95: 48 8b cb                    	mov	rcx, rbx
140007c98: ff 15 32 64 00 00           	call	qword ptr [rip + 25650] # 0x14000e0d0
140007c9e: 48 85 db                    	test	rbx, rbx
140007ca1: 75 55                       	jne	0x140007cf8 <.text+0x6cf8>
140007ca3: 48 83 c5 04                 	add	rbp, 4
140007ca7: 49 3b ec                    	cmp	rbp, r12
140007caa: 0f 85 2e ff ff ff           	jne	0x140007bde <.text+0x6bde>
140007cb0: 4c 8b 15 71 f3 00 00        	mov	r10, qword ptr [rip + 62321] # 0x140017028
140007cb7: 33 db                       	xor	ebx, ebx
140007cb9: 48 85 db                    	test	rbx, rbx
140007cbc: 74 4a                       	je	0x140007d08 <.text+0x6d08>
140007cbe: 49 8b d5                    	mov	rdx, r13
140007cc1: 48 8b cb                    	mov	rcx, rbx
140007cc4: ff 15 0e 64 00 00           	call	qword ptr [rip + 25614] # 0x14000e0d8
140007cca: 48 85 c0                    	test	rax, rax
140007ccd: 74 32                       	je	0x140007d01 <.text+0x6d01>
140007ccf: 4c 8b 05 52 f3 00 00        	mov	r8, qword ptr [rip + 62290] # 0x140017028
140007cd6: ba 40 00 00 00              	mov	edx, 64
140007cdb: 41 8b c8                    	mov	ecx, r8d
140007cde: 83 e1 3f                    	and	ecx, 63
140007ce1: 2b d1                       	sub	edx, ecx
140007ce3: 8a ca                       	mov	cl, dl
140007ce5: 48 8b d0                    	mov	rdx, rax
140007ce8: 48 d3 ca                    	ror	rdx, cl
140007ceb: 49 33 d0                    	xor	rdx, r8
140007cee: 4b 87 94 fe c0 84 01 00     	xchg	qword ptr [r14 + 8*r15 + 99520], rdx
140007cf6: eb 2d                       	jmp	0x140007d25 <.text+0x6d25>
140007cf8: 4c 8b 15 29 f3 00 00        	mov	r10, qword ptr [rip + 62249] # 0x140017028
140007cff: eb b8                       	jmp	0x140007cb9 <.text+0x6cb9>
140007d01: 4c 8b 15 20 f3 00 00        	mov	r10, qword ptr [rip + 62240] # 0x140017028
140007d08: 41 8b c2                    	mov	eax, r10d
140007d0b: b9 40 00 00 00              	mov	ecx, 64
140007d10: 83 e0 3f                    	and	eax, 63
140007d13: 2b c8                       	sub	ecx, eax
140007d15: 48 d3 cf                    	ror	rdi, cl
140007d18: 49 33 fa                    	xor	rdi, r10
140007d1b: 4b 87 bc fe c0 84 01 00     	xchg	qword ptr [r14 + 8*r15 + 99520], rdi
140007d23: 33 c0                       	xor	eax, eax
140007d25: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
140007d2a: 48 8b 6c 24 58              	mov	rbp, qword ptr [rsp + 88]
140007d2f: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
140007d34: 48 83 c4 20                 	add	rsp, 32
140007d38: 41 5f                       	pop	r15
140007d3a: 41 5e                       	pop	r14
140007d3c: 41 5d                       	pop	r13
140007d3e: 41 5c                       	pop	r12
140007d40: 5f                          	pop	rdi
140007d41: c3                          	ret
140007d42: cc                          	int3
140007d43: cc                          	int3
140007d44: 40 53                       	push	rbx
140007d46: 48 83 ec 20                 	sub	rsp, 32
140007d4a: 48 8b d9                    	mov	rbx, rcx
140007d4d: 4c 8d 0d d4 8a 00 00        	lea	r9, [rip + 35540]       # 0x140010828
140007d54: b9 1c 00 00 00              	mov	ecx, 28
140007d59: 4c 8d 05 c4 8a 00 00        	lea	r8, [rip + 35524]       # 0x140010824
140007d60: 48 8d 15 c1 8a 00 00        	lea	rdx, [rip + 35521]      # 0x140010828
140007d67: e8 00 fe ff ff              	call	0x140007b6c <.text+0x6b6c>
140007d6c: 48 85 c0                    	test	rax, rax
140007d6f: 74 16                       	je	0x140007d87 <.text+0x6d87>
140007d71: 48 8b d3                    	mov	rdx, rbx
140007d74: 48 c7 c1 fa ff ff ff        	mov	rcx, -6
140007d7b: 48 83 c4 20                 	add	rsp, 32
140007d7f: 5b                          	pop	rbx
140007d80: 48 ff 25 a9 64 00 00        	jmp	qword ptr [rip + 25769] # 0x14000e230
140007d87: b8 25 02 00 c0              	mov	eax, 3221226021
140007d8c: 48 83 c4 20                 	add	rsp, 32
140007d90: 5b                          	pop	rbx
140007d91: c3                          	ret
140007d92: cc                          	int3
140007d93: cc                          	int3
140007d94: 48 83 ec 28                 	sub	rsp, 40
140007d98: 4c 8d 0d fd 89 00 00        	lea	r9, [rip + 35325]       # 0x14001079c
140007d9f: 33 c9                       	xor	ecx, ecx
140007da1: 4c 8d 05 f0 89 00 00        	lea	r8, [rip + 35312]       # 0x140010798
140007da8: 48 8d 15 f1 89 00 00        	lea	rdx, [rip + 35313]      # 0x1400107a0
140007daf: e8 b8 fd ff ff              	call	0x140007b6c <.text+0x6b6c>
140007db4: 48 85 c0                    	test	rax, rax
140007db7: 74 0b                       	je	0x140007dc4 <.text+0x6dc4>
140007db9: 48 83 c4 28                 	add	rsp, 40
140007dbd: 48 ff 25 6c 64 00 00        	jmp	qword ptr [rip + 25708] # 0x14000e230
140007dc4: b8 01 00 00 00              	mov	eax, 1
140007dc9: 48 83 c4 28                 	add	rsp, 40
140007dcd: c3                          	ret
140007dce: cc                          	int3
140007dcf: cc                          	int3
140007dd0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007dd5: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140007dda: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140007ddf: 57                          	push	rdi
140007de0: 48 83 ec 50                 	sub	rsp, 80
140007de4: 41 8b d9                    	mov	ebx, r9d
140007de7: 49 8b f8                    	mov	rdi, r8
140007dea: 8b f2                       	mov	esi, edx
140007dec: 4c 8d 0d c5 89 00 00        	lea	r9, [rip + 35269]       # 0x1400107b8
140007df3: 48 8b e9                    	mov	rbp, rcx
140007df6: 4c 8d 05 b3 89 00 00        	lea	r8, [rip + 35251]       # 0x1400107b0
140007dfd: 48 8d 15 b4 89 00 00        	lea	rdx, [rip + 35252]      # 0x1400107b8
140007e04: b9 01 00 00 00              	mov	ecx, 1
140007e09: e8 5e fd ff ff              	call	0x140007b6c <.text+0x6b6c>
140007e0e: 48 85 c0                    	test	rax, rax
140007e11: 74 52                       	je	0x140007e65 <.text+0x6e65>
140007e13: 4c 8b 84 24 a0 00 00 00     	mov	r8, qword ptr [rsp + 160]
140007e1b: 44 8b cb                    	mov	r9d, ebx
140007e1e: 48 8b 8c 24 98 00 00 00     	mov	rcx, qword ptr [rsp + 152]
140007e26: 8b d6                       	mov	edx, esi
140007e28: 4c 89 44 24 40              	mov	qword ptr [rsp + 64], r8
140007e2d: 4c 8b c7                    	mov	r8, rdi
140007e30: 48 89 4c 24 38              	mov	qword ptr [rsp + 56], rcx
140007e35: 48 8b 8c 24 90 00 00 00     	mov	rcx, qword ptr [rsp + 144]
140007e3d: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
140007e42: 8b 8c 24 88 00 00 00        	mov	ecx, dword ptr [rsp + 136]
140007e49: 89 4c 24 28                 	mov	dword ptr [rsp + 40], ecx
140007e4d: 48 8b 8c 24 80 00 00 00     	mov	rcx, qword ptr [rsp + 128]
140007e55: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
140007e5a: 48 8b cd                    	mov	rcx, rbp
140007e5d: ff 15 cd 63 00 00           	call	qword ptr [rip + 25549] # 0x14000e230
140007e63: eb 32                       	jmp	0x140007e97 <.text+0x6e97>
140007e65: 33 d2                       	xor	edx, edx
140007e67: 48 8b cd                    	mov	rcx, rbp
140007e6a: e8 a9 02 00 00              	call	0x140008118 <.text+0x7118>
140007e6f: 8b c8                       	mov	ecx, eax
140007e71: 44 8b cb                    	mov	r9d, ebx
140007e74: 8b 84 24 88 00 00 00        	mov	eax, dword ptr [rsp + 136]
140007e7b: 4c 8b c7                    	mov	r8, rdi
140007e7e: 89 44 24 28                 	mov	dword ptr [rsp + 40], eax
140007e82: 8b d6                       	mov	edx, esi
140007e84: 48 8b 84 24 80 00 00 00     	mov	rax, qword ptr [rsp + 128]
140007e8c: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140007e91: ff 15 29 63 00 00           	call	qword ptr [rip + 25385] # 0x14000e1c0
140007e97: 48 8b 5c 24 60              	mov	rbx, qword ptr [rsp + 96]
140007e9c: 48 8b 6c 24 68              	mov	rbp, qword ptr [rsp + 104]
140007ea1: 48 8b 74 24 70              	mov	rsi, qword ptr [rsp + 112]
140007ea6: 48 83 c4 50                 	add	rsp, 80
140007eaa: 5f                          	pop	rdi
140007eab: c3                          	ret
140007eac: 40 53                       	push	rbx
140007eae: 48 83 ec 20                 	sub	rsp, 32
140007eb2: 48 8b d9                    	mov	rbx, rcx
140007eb5: 4c 8d 0d 14 89 00 00        	lea	r9, [rip + 35092]       # 0x1400107d0
140007ebc: b9 03 00 00 00              	mov	ecx, 3
140007ec1: 4c 8d 05 00 89 00 00        	lea	r8, [rip + 35072]       # 0x1400107c8
140007ec8: 48 8d 15 e1 72 00 00        	lea	rdx, [rip + 29409]      # 0x14000f1b0
140007ecf: e8 98 fc ff ff              	call	0x140007b6c <.text+0x6b6c>
140007ed4: 48 85 c0                    	test	rax, rax
140007ed7: 74 0f                       	je	0x140007ee8 <.text+0x6ee8>
140007ed9: 48 8b cb                    	mov	rcx, rbx
140007edc: 48 83 c4 20                 	add	rsp, 32
140007ee0: 5b                          	pop	rbx
140007ee1: 48 ff 25 48 63 00 00        	jmp	qword ptr [rip + 25416] # 0x14000e230
140007ee8: 48 83 c4 20                 	add	rsp, 32
140007eec: 5b                          	pop	rbx
140007eed: 48 ff 25 bc 61 00 00        	jmp	qword ptr [rip + 25020] # 0x14000e0b0
140007ef4: 40 53                       	push	rbx
140007ef6: 48 83 ec 20                 	sub	rsp, 32
140007efa: 8b d9                       	mov	ebx, ecx
140007efc: 4c 8d 0d d5 88 00 00        	lea	r9, [rip + 35029]       # 0x1400107d8
140007f03: b9 04 00 00 00              	mov	ecx, 4
140007f08: 4c 8d 05 c1 88 00 00        	lea	r8, [rip + 35009]       # 0x1400107d0
140007f0f: 48 8d 15 b2 72 00 00        	lea	rdx, [rip + 29362]      # 0x14000f1c8
140007f16: e8 51 fc ff ff              	call	0x140007b6c <.text+0x6b6c>
140007f1b: 8b cb                       	mov	ecx, ebx
140007f1d: 48 85 c0                    	test	rax, rax
140007f20: 74 0c                       	je	0x140007f2e <.text+0x6f2e>
140007f22: 48 83 c4 20                 	add	rsp, 32
140007f26: 5b                          	pop	rbx
140007f27: 48 ff 25 02 63 00 00        	jmp	qword ptr [rip + 25346] # 0x14000e230
140007f2e: 48 83 c4 20                 	add	rsp, 32
140007f32: 5b                          	pop	rbx
140007f33: 48 ff 25 8e 61 00 00        	jmp	qword ptr [rip + 24974] # 0x14000e0c8
140007f3a: cc                          	int3
140007f3b: cc                          	int3
140007f3c: 40 53                       	push	rbx
140007f3e: 48 83 ec 20                 	sub	rsp, 32
140007f42: 8b d9                       	mov	ebx, ecx
140007f44: 4c 8d 0d 95 88 00 00        	lea	r9, [rip + 34965]       # 0x1400107e0
140007f4b: b9 05 00 00 00              	mov	ecx, 5
140007f50: 4c 8d 05 81 88 00 00        	lea	r8, [rip + 34945]       # 0x1400107d8
140007f57: 48 8d 15 7a 72 00 00        	lea	rdx, [rip + 29306]      # 0x14000f1d8
140007f5e: e8 09 fc ff ff              	call	0x140007b6c <.text+0x6b6c>
140007f63: 8b cb                       	mov	ecx, ebx
140007f65: 48 85 c0                    	test	rax, rax
140007f68: 74 0c                       	je	0x140007f76 <.text+0x6f76>
140007f6a: 48 83 c4 20                 	add	rsp, 32
140007f6e: 5b                          	pop	rbx
140007f6f: 48 ff 25 ba 62 00 00        	jmp	qword ptr [rip + 25274] # 0x14000e230
140007f76: 48 83 c4 20                 	add	rsp, 32
140007f7a: 5b                          	pop	rbx
140007f7b: 48 ff 25 36 61 00 00        	jmp	qword ptr [rip + 24886] # 0x14000e0b8
140007f82: cc                          	int3
140007f83: cc                          	int3
140007f84: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007f89: 57                          	push	rdi
140007f8a: 48 83 ec 20                 	sub	rsp, 32
140007f8e: 48 8b da                    	mov	rbx, rdx
140007f91: 4c 8d 0d 50 88 00 00        	lea	r9, [rip + 34896]       # 0x1400107e8
140007f98: 8b f9                       	mov	edi, ecx
140007f9a: 48 8d 15 4f 72 00 00        	lea	rdx, [rip + 29263]      # 0x14000f1f0
140007fa1: b9 06 00 00 00              	mov	ecx, 6
140007fa6: 4c 8d 05 33 88 00 00        	lea	r8, [rip + 34867]       # 0x1400107e0
140007fad: e8 ba fb ff ff              	call	0x140007b6c <.text+0x6b6c>
140007fb2: 48 8b d3                    	mov	rdx, rbx
140007fb5: 8b cf                       	mov	ecx, edi
140007fb7: 48 85 c0                    	test	rax, rax
140007fba: 74 08                       	je	0x140007fc4 <.text+0x6fc4>
140007fbc: ff 15 6e 62 00 00           	call	qword ptr [rip + 25198] # 0x14000e230
140007fc2: eb 06                       	jmp	0x140007fca <.text+0x6fca>
140007fc4: ff 15 f6 60 00 00           	call	qword ptr [rip + 24822] # 0x14000e0c0
140007fca: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140007fcf: 48 83 c4 20                 	add	rsp, 32
140007fd3: 5f                          	pop	rdi
140007fd4: c3                          	ret
140007fd5: cc                          	int3
140007fd6: cc                          	int3
140007fd7: cc                          	int3
140007fd8: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140007fdd: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
140007fe2: 57                          	push	rdi
140007fe3: 48 83 ec 20                 	sub	rsp, 32
140007fe7: 41 8b f0                    	mov	esi, r8d
140007fea: 4c 8d 0d ff 87 00 00        	lea	r9, [rip + 34815]       # 0x1400107f0
140007ff1: 8b da                       	mov	ebx, edx
140007ff3: 4c 8d 05 ee 87 00 00        	lea	r8, [rip + 34798]       # 0x1400107e8
140007ffa: 48 8b f9                    	mov	rdi, rcx
140007ffd: 48 8d 15 04 72 00 00        	lea	rdx, [rip + 29188]      # 0x14000f208
140008004: b9 12 00 00 00              	mov	ecx, 18
140008009: e8 5e fb ff ff              	call	0x140007b6c <.text+0x6b6c>
14000800e: 8b d3                       	mov	edx, ebx
140008010: 48 8b cf                    	mov	rcx, rdi
140008013: 48 85 c0                    	test	rax, rax
140008016: 74 0b                       	je	0x140008023 <.text+0x7023>
140008018: 44 8b c6                    	mov	r8d, esi
14000801b: ff 15 0f 62 00 00           	call	qword ptr [rip + 25103] # 0x14000e230
140008021: eb 06                       	jmp	0x140008029 <.text+0x7029>
140008023: ff 15 7f 60 00 00           	call	qword ptr [rip + 24703] # 0x14000e0a8
140008029: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000802e: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
140008033: 48 83 c4 20                 	add	rsp, 32
140008037: 5f                          	pop	rdi
140008038: c3                          	ret
140008039: cc                          	int3
14000803a: cc                          	int3
14000803b: cc                          	int3
14000803c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140008041: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140008046: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
14000804b: 57                          	push	rdi
14000804c: 48 83 ec 50                 	sub	rsp, 80
140008050: 41 8b d9                    	mov	ebx, r9d
140008053: 49 8b f8                    	mov	rdi, r8
140008056: 8b f2                       	mov	esi, edx
140008058: 4c 8d 0d 99 87 00 00        	lea	r9, [rip + 34713]       # 0x1400107f8
14000805f: 48 8b e9                    	mov	rbp, rcx
140008062: 4c 8d 05 87 87 00 00        	lea	r8, [rip + 34695]       # 0x1400107f0
140008069: 48 8d 15 88 87 00 00        	lea	rdx, [rip + 34696]      # 0x1400107f8
140008070: b9 14 00 00 00              	mov	ecx, 20
140008075: e8 f2 fa ff ff              	call	0x140007b6c <.text+0x6b6c>
14000807a: 48 85 c0                    	test	rax, rax
14000807d: 74 52                       	je	0x1400080d1 <.text+0x70d1>
14000807f: 4c 8b 84 24 a0 00 00 00     	mov	r8, qword ptr [rsp + 160]
140008087: 44 8b cb                    	mov	r9d, ebx
14000808a: 48 8b 8c 24 98 00 00 00     	mov	rcx, qword ptr [rsp + 152]
140008092: 8b d6                       	mov	edx, esi
140008094: 4c 89 44 24 40              	mov	qword ptr [rsp + 64], r8
140008099: 4c 8b c7                    	mov	r8, rdi
14000809c: 48 89 4c 24 38              	mov	qword ptr [rsp + 56], rcx
1400080a1: 48 8b 8c 24 90 00 00 00     	mov	rcx, qword ptr [rsp + 144]
1400080a9: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
1400080ae: 8b 8c 24 88 00 00 00        	mov	ecx, dword ptr [rsp + 136]
1400080b5: 89 4c 24 28                 	mov	dword ptr [rsp + 40], ecx
1400080b9: 48 8b 8c 24 80 00 00 00     	mov	rcx, qword ptr [rsp + 128]
1400080c1: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
1400080c6: 48 8b cd                    	mov	rcx, rbp
1400080c9: ff 15 61 61 00 00           	call	qword ptr [rip + 24929] # 0x14000e230
1400080cf: eb 32                       	jmp	0x140008103 <.text+0x7103>
1400080d1: 33 d2                       	xor	edx, edx
1400080d3: 48 8b cd                    	mov	rcx, rbp
1400080d6: e8 3d 00 00 00              	call	0x140008118 <.text+0x7118>
1400080db: 8b c8                       	mov	ecx, eax
1400080dd: 44 8b cb                    	mov	r9d, ebx
1400080e0: 8b 84 24 88 00 00 00        	mov	eax, dword ptr [rsp + 136]
1400080e7: 4c 8b c7                    	mov	r8, rdi
1400080ea: 89 44 24 28                 	mov	dword ptr [rsp + 40], eax
1400080ee: 8b d6                       	mov	edx, esi
1400080f0: 48 8b 84 24 80 00 00 00     	mov	rax, qword ptr [rsp + 128]
1400080f8: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
1400080fd: ff 15 c5 60 00 00           	call	qword ptr [rip + 24773] # 0x14000e1c8
140008103: 48 8b 5c 24 60              	mov	rbx, qword ptr [rsp + 96]
140008108: 48 8b 6c 24 68              	mov	rbp, qword ptr [rsp + 104]
14000810d: 48 8b 74 24 70              	mov	rsi, qword ptr [rsp + 112]
140008112: 48 83 c4 50                 	add	rsp, 80
140008116: 5f                          	pop	rdi
140008117: c3                          	ret
140008118: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000811d: 57                          	push	rdi
14000811e: 48 83 ec 20                 	sub	rsp, 32
140008122: 8b fa                       	mov	edi, edx
140008124: 4c 8d 0d e5 86 00 00        	lea	r9, [rip + 34533]       # 0x140010810
14000812b: 48 8b d9                    	mov	rbx, rcx
14000812e: 48 8d 15 db 86 00 00        	lea	rdx, [rip + 34523]      # 0x140010810
140008135: b9 16 00 00 00              	mov	ecx, 22
14000813a: 4c 8d 05 c7 86 00 00        	lea	r8, [rip + 34503]       # 0x140010808
140008141: e8 26 fa ff ff              	call	0x140007b6c <.text+0x6b6c>
140008146: 48 8b cb                    	mov	rcx, rbx
140008149: 48 85 c0                    	test	rax, rax
14000814c: 74 0a                       	je	0x140008158 <.text+0x7158>
14000814e: 8b d7                       	mov	edx, edi
140008150: ff 15 da 60 00 00           	call	qword ptr [rip + 24794] # 0x14000e230
140008156: eb 05                       	jmp	0x14000815d <.text+0x715d>
140008158: e8 1b 1c 00 00              	call	0x140009d78 <.text+0x8d78>
14000815d: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008162: 48 83 c4 20                 	add	rsp, 32
140008166: 5f                          	pop	rdi
140008167: c3                          	ret
140008168: 48 89 7c 24 08              	mov	qword ptr [rsp + 8], rdi
14000816d: 48 8d 3d 4c 03 01 00        	lea	rdi, [rip + 66380]      # 0x1400184c0
140008174: 48 8d 05 55 04 01 00        	lea	rax, [rip + 66645]      # 0x1400185d0
14000817b: 48 3b c7                    	cmp	rax, rdi
14000817e: 48 8b 05 a3 ee 00 00        	mov	rax, qword ptr [rip + 61091] # 0x140017028
140008185: 48 1b c9                    	sbb	rcx, rcx
140008188: 48 f7 d1                    	not	rcx
14000818b: 83 e1 22                    	and	ecx, 34
14000818e: f3 48 ab                    	rep		stosq	qword ptr es:[rdi], rax
140008191: 48 8b 7c 24 08              	mov	rdi, qword ptr [rsp + 8]
140008196: b0 01                       	mov	al, 1
140008198: c3                          	ret
140008199: cc                          	int3
14000819a: cc                          	int3
14000819b: cc                          	int3
14000819c: 40 53                       	push	rbx
14000819e: 48 83 ec 20                 	sub	rsp, 32
1400081a2: 84 c9                       	test	cl, cl
1400081a4: 75 2f                       	jne	0x1400081d5 <.text+0x71d5>
1400081a6: 48 8d 1d 73 02 01 00        	lea	rbx, [rip + 66163]      # 0x140018420
1400081ad: 48 8b 0b                    	mov	rcx, qword ptr [rbx]
1400081b0: 48 85 c9                    	test	rcx, rcx
1400081b3: 74 10                       	je	0x1400081c5 <.text+0x71c5>
1400081b5: 48 83 f9 ff                 	cmp	rcx, -1
1400081b9: 74 06                       	je	0x1400081c1 <.text+0x71c1>
1400081bb: ff 15 0f 5f 00 00           	call	qword ptr [rip + 24335] # 0x14000e0d0
1400081c1: 48 83 23 00                 	and	qword ptr [rbx], 0
1400081c5: 48 83 c3 08                 	add	rbx, 8
1400081c9: 48 8d 05 f0 02 01 00        	lea	rax, [rip + 66288]      # 0x1400184c0
1400081d0: 48 3b d8                    	cmp	rbx, rax
1400081d3: 75 d8                       	jne	0x1400081ad <.text+0x71ad>
1400081d5: b0 01                       	mov	al, 1
1400081d7: 48 83 c4 20                 	add	rsp, 32
1400081db: 5b                          	pop	rbx
1400081dc: c3                          	ret
1400081dd: cc                          	int3
1400081de: cc                          	int3
1400081df: cc                          	int3
1400081e0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400081e5: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
1400081ea: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
1400081ef: 57                          	push	rdi
1400081f0: 48 83 ec 20                 	sub	rsp, 32
1400081f4: 49 8b e8                    	mov	rbp, r8
1400081f7: 48 8b da                    	mov	rbx, rdx
1400081fa: 48 8b f1                    	mov	rsi, rcx
1400081fd: 48 85 d2                    	test	rdx, rdx
140008200: 74 1d                       	je	0x14000821f <.text+0x721f>
140008202: 33 d2                       	xor	edx, edx
140008204: 48 8d 42 e0                 	lea	rax, [rdx - 32]
140008208: 48 f7 f3                    	div	rbx
14000820b: 49 3b c0                    	cmp	rax, r8
14000820e: 73 0f                       	jae	0x14000821f <.text+0x721f>
140008210: e8 cb cb ff ff              	call	0x140004de0 <.text+0x3de0>
140008215: c7 00 0c 00 00 00           	mov	dword ptr [rax], 12
14000821b: 33 c0                       	xor	eax, eax
14000821d: eb 41                       	jmp	0x140008260 <.text+0x7260>
14000821f: 48 85 f6                    	test	rsi, rsi
140008222: 74 0a                       	je	0x14000822e <.text+0x722e>
140008224: e8 ff 1b 00 00              	call	0x140009e28 <.text+0x8e28>
140008229: 48 8b f8                    	mov	rdi, rax
14000822c: eb 02                       	jmp	0x140008230 <.text+0x7230>
14000822e: 33 ff                       	xor	edi, edi
140008230: 48 0f af dd                 	imul	rbx, rbp
140008234: 48 8b ce                    	mov	rcx, rsi
140008237: 48 8b d3                    	mov	rdx, rbx
14000823a: e8 25 1c 00 00              	call	0x140009e64 <.text+0x8e64>
14000823f: 48 8b f0                    	mov	rsi, rax
140008242: 48 85 c0                    	test	rax, rax
140008245: 74 16                       	je	0x14000825d <.text+0x725d>
140008247: 48 3b fb                    	cmp	rdi, rbx
14000824a: 73 11                       	jae	0x14000825d <.text+0x725d>
14000824c: 48 2b df                    	sub	rbx, rdi
14000824f: 48 8d 0c 38                 	lea	rcx, [rax + rdi]
140008253: 4c 8b c3                    	mov	r8, rbx
140008256: 33 d2                       	xor	edx, edx
140008258: e8 33 9b ff ff              	call	0x140001d90 <.text+0xd90>
14000825d: 48 8b c6                    	mov	rax, rsi
140008260: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008265: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
14000826a: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
14000826f: 48 83 c4 20                 	add	rsp, 32
140008273: 5f                          	pop	rdi
140008274: c3                          	ret
140008275: cc                          	int3
140008276: cc                          	int3
140008277: cc                          	int3
140008278: 48 83 ec 28                 	sub	rsp, 40
14000827c: ff 15 4e 5f 00 00           	call	qword ptr [rip + 24398] # 0x14000e1d0
140008282: 48 85 c0                    	test	rax, rax
140008285: 48 89 05 4c 03 01 00        	mov	qword ptr [rip + 66380], rax # 0x1400185d8
14000828c: 0f 95 c0                    	setne	al
14000828f: 48 83 c4 28                 	add	rsp, 40
140008293: c3                          	ret
140008294: 48 83 25 3c 03 01 00 00     	and	qword ptr [rip + 66364], 0 # 0x1400185d8
14000829c: b0 01                       	mov	al, 1
14000829e: c3                          	ret
14000829f: cc                          	int3
1400082a0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400082a5: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
1400082aa: 57                          	push	rdi
1400082ab: 48 83 ec 20                 	sub	rsp, 32
1400082af: 48 8b f2                    	mov	rsi, rdx
1400082b2: 48 8b f9                    	mov	rdi, rcx
1400082b5: 48 3b ca                    	cmp	rcx, rdx
1400082b8: 74 54                       	je	0x14000830e <.text+0x730e>
1400082ba: 48 8b d9                    	mov	rbx, rcx
1400082bd: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400082c0: 48 85 c0                    	test	rax, rax
1400082c3: 74 0a                       	je	0x1400082cf <.text+0x72cf>
1400082c5: ff 15 65 5f 00 00           	call	qword ptr [rip + 24421] # 0x14000e230
1400082cb: 84 c0                       	test	al, al
1400082cd: 74 09                       	je	0x1400082d8 <.text+0x72d8>
1400082cf: 48 83 c3 10                 	add	rbx, 16
1400082d3: 48 3b de                    	cmp	rbx, rsi
1400082d6: 75 e5                       	jne	0x1400082bd <.text+0x72bd>
1400082d8: 48 3b de                    	cmp	rbx, rsi
1400082db: 74 31                       	je	0x14000830e <.text+0x730e>
1400082dd: 48 3b df                    	cmp	rbx, rdi
1400082e0: 74 28                       	je	0x14000830a <.text+0x730a>
1400082e2: 48 83 c3 f8                 	add	rbx, -8
1400082e6: 48 83 7b f8 00              	cmp	qword ptr [rbx - 8], 0
1400082eb: 74 10                       	je	0x1400082fd <.text+0x72fd>
1400082ed: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400082f0: 48 85 c0                    	test	rax, rax
1400082f3: 74 08                       	je	0x1400082fd <.text+0x72fd>
1400082f5: 33 c9                       	xor	ecx, ecx
1400082f7: ff 15 33 5f 00 00           	call	qword ptr [rip + 24371] # 0x14000e230
1400082fd: 48 83 eb 10                 	sub	rbx, 16
140008301: 48 8d 43 08                 	lea	rax, [rbx + 8]
140008305: 48 3b c7                    	cmp	rax, rdi
140008308: 75 dc                       	jne	0x1400082e6 <.text+0x72e6>
14000830a: 32 c0                       	xor	al, al
14000830c: eb 02                       	jmp	0x140008310 <.text+0x7310>
14000830e: b0 01                       	mov	al, 1
140008310: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008315: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
14000831a: 48 83 c4 20                 	add	rsp, 32
14000831e: 5f                          	pop	rdi
14000831f: c3                          	ret
140008320: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140008325: 57                          	push	rdi
140008326: 48 83 ec 20                 	sub	rsp, 32
14000832a: 48 8b da                    	mov	rbx, rdx
14000832d: 48 8b f9                    	mov	rdi, rcx
140008330: 48 3b ca                    	cmp	rcx, rdx
140008333: 74 1a                       	je	0x14000834f <.text+0x734f>
140008335: 48 8b 43 f8                 	mov	rax, qword ptr [rbx - 8]
140008339: 48 85 c0                    	test	rax, rax
14000833c: 74 08                       	je	0x140008346 <.text+0x7346>
14000833e: 33 c9                       	xor	ecx, ecx
140008340: ff 15 ea 5e 00 00           	call	qword ptr [rip + 24298] # 0x14000e230
140008346: 48 83 eb 10                 	sub	rbx, 16
14000834a: 48 3b df                    	cmp	rbx, rdi
14000834d: 75 e6                       	jne	0x140008335 <.text+0x7335>
14000834f: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008354: b0 01                       	mov	al, 1
140008356: 48 83 c4 20                 	add	rsp, 32
14000835a: 5f                          	pop	rdi
14000835b: c3                          	ret
14000835c: 48 89 0d 7d 02 01 00        	mov	qword ptr [rip + 66173], rcx # 0x1400185e0
140008363: c3                          	ret
140008364: 40 53                       	push	rbx
140008366: 48 83 ec 20                 	sub	rsp, 32
14000836a: 48 8b d9                    	mov	rbx, rcx
14000836d: e8 22 00 00 00              	call	0x140008394 <.text+0x7394>
140008372: 48 85 c0                    	test	rax, rax
140008375: 74 14                       	je	0x14000838b <.text+0x738b>
140008377: 48 8b cb                    	mov	rcx, rbx
14000837a: ff 15 b0 5e 00 00           	call	qword ptr [rip + 24240] # 0x14000e230
140008380: 85 c0                       	test	eax, eax
140008382: 74 07                       	je	0x14000838b <.text+0x738b>
140008384: b8 01 00 00 00              	mov	eax, 1
140008389: eb 02                       	jmp	0x14000838d <.text+0x738d>
14000838b: 33 c0                       	xor	eax, eax
14000838d: 48 83 c4 20                 	add	rsp, 32
140008391: 5b                          	pop	rbx
140008392: c3                          	ret
140008393: cc                          	int3
140008394: 40 53                       	push	rbx
140008396: 48 83 ec 20                 	sub	rsp, 32
14000839a: 33 c9                       	xor	ecx, ecx
14000839c: e8 63 e8 ff ff              	call	0x140006c04 <.text+0x5c04>
1400083a1: 90                          	nop
1400083a2: 48 8b 1d 7f ec 00 00        	mov	rbx, qword ptr [rip + 60543] # 0x140017028
1400083a9: 8b cb                       	mov	ecx, ebx
1400083ab: 83 e1 3f                    	and	ecx, 63
1400083ae: 48 33 1d 2b 02 01 00        	xor	rbx, qword ptr [rip + 66091] # 0x1400185e0
1400083b5: 48 d3 cb                    	ror	rbx, cl
1400083b8: 33 c9                       	xor	ecx, ecx
1400083ba: e8 99 e8 ff ff              	call	0x140006c58 <.text+0x5c58>
1400083bf: 48 8b c3                    	mov	rax, rbx
1400083c2: 48 83 c4 20                 	add	rsp, 32
1400083c6: 5b                          	pop	rbx
1400083c7: c3                          	ret
1400083c8: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400083cd: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
1400083d2: 57                          	push	rdi
1400083d3: 48 83 ec 20                 	sub	rsp, 32
1400083d7: 49 8b f9                    	mov	rdi, r9
1400083da: 8b 0a                       	mov	ecx, dword ptr [rdx]
1400083dc: e8 23 e8 ff ff              	call	0x140006c04 <.text+0x5c04>
1400083e1: 90                          	nop
1400083e2: 48 8b 1d 3f ec 00 00        	mov	rbx, qword ptr [rip + 60479] # 0x140017028
1400083e9: 8b cb                       	mov	ecx, ebx
1400083eb: 83 e1 3f                    	and	ecx, 63
1400083ee: 48 33 1d 03 02 01 00        	xor	rbx, qword ptr [rip + 66051] # 0x1400185f8
1400083f5: 48 d3 cb                    	ror	rbx, cl
1400083f8: 8b 0f                       	mov	ecx, dword ptr [rdi]
1400083fa: e8 59 e8 ff ff              	call	0x140006c58 <.text+0x5c58>
1400083ff: 48 8b c3                    	mov	rax, rbx
140008402: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008407: 48 83 c4 20                 	add	rsp, 32
14000840b: 5f                          	pop	rdi
14000840c: c3                          	ret
14000840d: cc                          	int3
14000840e: cc                          	int3
14000840f: cc                          	int3
140008410: 4c 8b dc                    	mov	r11, rsp
140008413: 48 83 ec 28                 	sub	rsp, 40
140008417: b8 03 00 00 00              	mov	eax, 3
14000841c: 4d 8d 4b 10                 	lea	r9, [r11 + 16]
140008420: 4d 8d 43 08                 	lea	r8, [r11 + 8]
140008424: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
140008428: 49 8d 53 18                 	lea	rdx, [r11 + 24]
14000842c: 89 44 24 40                 	mov	dword ptr [rsp + 64], eax
140008430: 49 8d 4b 08                 	lea	rcx, [r11 + 8]
140008434: e8 8f ff ff ff              	call	0x1400083c8 <.text+0x73c8>
140008439: 48 83 c4 28                 	add	rsp, 40
14000843d: c3                          	ret
14000843e: cc                          	int3
14000843f: cc                          	int3
140008440: 48 89 0d a1 01 01 00        	mov	qword ptr [rip + 65953], rcx # 0x1400185e8
140008447: 48 89 0d a2 01 01 00        	mov	qword ptr [rip + 65954], rcx # 0x1400185f0
14000844e: 48 89 0d a3 01 01 00        	mov	qword ptr [rip + 65955], rcx # 0x1400185f8
140008455: 48 89 0d a4 01 01 00        	mov	qword ptr [rip + 65956], rcx # 0x140018600
14000845c: c3                          	ret
14000845d: cc                          	int3
14000845e: cc                          	int3
14000845f: cc                          	int3
140008460: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140008465: 56                          	push	rsi
140008466: 57                          	push	rdi
140008467: 41 54                       	push	r12
140008469: 41 55                       	push	r13
14000846b: 41 56                       	push	r14
14000846d: 48 83 ec 40                 	sub	rsp, 64
140008471: 8b d9                       	mov	ebx, ecx
140008473: 45 33 ed                    	xor	r13d, r13d
140008476: 44 21 6c 24 78              	and	dword ptr [rsp + 120], r13d
14000847b: 41 b6 01                    	mov	r14b, 1
14000847e: 44 88 74 24 70              	mov	byte ptr [rsp + 112], r14b
140008483: 83 f9 02                    	cmp	ecx, 2
140008486: 74 21                       	je	0x1400084a9 <.text+0x74a9>
140008488: 83 f9 04                    	cmp	ecx, 4
14000848b: 74 4c                       	je	0x1400084d9 <.text+0x74d9>
14000848d: 83 f9 06                    	cmp	ecx, 6
140008490: 74 17                       	je	0x1400084a9 <.text+0x74a9>
140008492: 83 f9 08                    	cmp	ecx, 8
140008495: 74 42                       	je	0x1400084d9 <.text+0x74d9>
140008497: 83 f9 0b                    	cmp	ecx, 11
14000849a: 74 3d                       	je	0x1400084d9 <.text+0x74d9>
14000849c: 83 f9 0f                    	cmp	ecx, 15
14000849f: 74 08                       	je	0x1400084a9 <.text+0x74a9>
1400084a1: 8d 41 eb                    	lea	eax, [rcx - 21]
1400084a4: 83 f8 01                    	cmp	eax, 1
1400084a7: 77 7d                       	ja	0x140008526 <.text+0x7526>
1400084a9: 83 e9 02                    	sub	ecx, 2
1400084ac: 0f 84 af 00 00 00           	je	0x140008561 <.text+0x7561>
1400084b2: 83 e9 04                    	sub	ecx, 4
1400084b5: 0f 84 8b 00 00 00           	je	0x140008546 <.text+0x7546>
1400084bb: 83 e9 09                    	sub	ecx, 9
1400084be: 0f 84 94 00 00 00           	je	0x140008558 <.text+0x7558>
1400084c4: 83 e9 06                    	sub	ecx, 6
1400084c7: 0f 84 82 00 00 00           	je	0x14000854f <.text+0x754f>
1400084cd: 83 f9 01                    	cmp	ecx, 1
1400084d0: 74 74                       	je	0x140008546 <.text+0x7546>
1400084d2: 33 ff                       	xor	edi, edi
1400084d4: e9 8f 00 00 00              	jmp	0x140008568 <.text+0x7568>
1400084d9: e8 a2 c4 ff ff              	call	0x140004980 <.text+0x3980>
1400084de: 4c 8b e8                    	mov	r13, rax
1400084e1: 48 85 c0                    	test	rax, rax
1400084e4: 75 18                       	jne	0x1400084fe <.text+0x74fe>
1400084e6: 83 c8 ff                    	or	eax, -1
1400084e9: 48 8b 9c 24 88 00 00 00     	mov	rbx, qword ptr [rsp + 136]
1400084f1: 48 83 c4 40                 	add	rsp, 64
1400084f5: 41 5e                       	pop	r14
1400084f7: 41 5d                       	pop	r13
1400084f9: 41 5c                       	pop	r12
1400084fb: 5f                          	pop	rdi
1400084fc: 5e                          	pop	rsi
1400084fd: c3                          	ret
1400084fe: 48 8b 00                    	mov	rax, qword ptr [rax]
140008501: 48 8b 0d e8 6d 00 00        	mov	rcx, qword ptr [rip + 28136] # 0x14000f2f0
140008508: 48 c1 e1 04                 	shl	rcx, 4
14000850c: 48 03 c8                    	add	rcx, rax
14000850f: eb 09                       	jmp	0x14000851a <.text+0x751a>
140008511: 39 58 04                    	cmp	dword ptr [rax + 4], ebx
140008514: 74 0b                       	je	0x140008521 <.text+0x7521>
140008516: 48 83 c0 10                 	add	rax, 16
14000851a: 48 3b c1                    	cmp	rax, rcx
14000851d: 75 f2                       	jne	0x140008511 <.text+0x7511>
14000851f: 33 c0                       	xor	eax, eax
140008521: 48 85 c0                    	test	rax, rax
140008524: 75 12                       	jne	0x140008538 <.text+0x7538>
140008526: e8 b5 c8 ff ff              	call	0x140004de0 <.text+0x3de0>
14000852b: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140008531: e8 8a c7 ff ff              	call	0x140004cc0 <.text+0x3cc0>
140008536: eb ae                       	jmp	0x1400084e6 <.text+0x74e6>
140008538: 48 8d 78 08                 	lea	rdi, [rax + 8]
14000853c: 45 32 f6                    	xor	r14b, r14b
14000853f: 44 88 74 24 70              	mov	byte ptr [rsp + 112], r14b
140008544: eb 22                       	jmp	0x140008568 <.text+0x7568>
140008546: 48 8d 3d ab 00 01 00        	lea	rdi, [rip + 65707]      # 0x1400185f8
14000854d: eb 19                       	jmp	0x140008568 <.text+0x7568>
14000854f: 48 8d 3d 9a 00 01 00        	lea	rdi, [rip + 65690]      # 0x1400185f0
140008556: eb 10                       	jmp	0x140008568 <.text+0x7568>
140008558: 48 8d 3d a1 00 01 00        	lea	rdi, [rip + 65697]      # 0x140018600
14000855f: eb 07                       	jmp	0x140008568 <.text+0x7568>
140008561: 48 8d 3d 80 00 01 00        	lea	rdi, [rip + 65664]      # 0x1400185e8
140008568: 48 83 a4 24 80 00 00 00 00  	and	qword ptr [rsp + 128], 0
140008571: 45 84 f6                    	test	r14b, r14b
140008574: 74 0b                       	je	0x140008581 <.text+0x7581>
140008576: b9 03 00 00 00              	mov	ecx, 3
14000857b: e8 84 e6 ff ff              	call	0x140006c04 <.text+0x5c04>
140008580: 90                          	nop
140008581: 48 8b 37                    	mov	rsi, qword ptr [rdi]
140008584: 45 84 f6                    	test	r14b, r14b
140008587: 74 12                       	je	0x14000859b <.text+0x759b>
140008589: 48 8b 05 98 ea 00 00        	mov	rax, qword ptr [rip + 60056] # 0x140017028
140008590: 8b c8                       	mov	ecx, eax
140008592: 83 e1 3f                    	and	ecx, 63
140008595: 48 33 f0                    	xor	rsi, rax
140008598: 48 d3 ce                    	ror	rsi, cl
14000859b: 48 83 fe 01                 	cmp	rsi, 1
14000859f: 0f 84 94 00 00 00           	je	0x140008639 <.text+0x7639>
1400085a5: 48 85 f6                    	test	rsi, rsi
1400085a8: 0f 84 03 01 00 00           	je	0x1400086b1 <.text+0x76b1>
1400085ae: 41 bc 10 09 00 00           	mov	r12d, 2320
1400085b4: 83 fb 0b                    	cmp	ebx, 11
1400085b7: 77 3d                       	ja	0x1400085f6 <.text+0x75f6>
1400085b9: 41 0f a3 dc                 	bt	r12d, ebx
1400085bd: 73 37                       	jae	0x1400085f6 <.text+0x75f6>
1400085bf: 49 8b 45 08                 	mov	rax, qword ptr [r13 + 8]
1400085c3: 48 89 84 24 80 00 00 00     	mov	qword ptr [rsp + 128], rax
1400085cb: 48 89 44 24 30              	mov	qword ptr [rsp + 48], rax
1400085d0: 49 83 65 08 00              	and	qword ptr [r13 + 8], 0
1400085d5: 83 fb 08                    	cmp	ebx, 8
1400085d8: 75 53                       	jne	0x14000862d <.text+0x762d>
1400085da: e8 25 c2 ff ff              	call	0x140004804 <.text+0x3804>
1400085df: 8b 40 10                    	mov	eax, dword ptr [rax + 16]
1400085e2: 89 44 24 78                 	mov	dword ptr [rsp + 120], eax
1400085e6: 89 44 24 20                 	mov	dword ptr [rsp + 32], eax
1400085ea: e8 15 c2 ff ff              	call	0x140004804 <.text+0x3804>
1400085ef: c7 40 10 8c 00 00 00        	mov	dword ptr [rax + 16], 140
1400085f6: 83 fb 08                    	cmp	ebx, 8
1400085f9: 75 32                       	jne	0x14000862d <.text+0x762d>
1400085fb: 48 8b 05 f6 6c 00 00        	mov	rax, qword ptr [rip + 27894] # 0x14000f2f8
140008602: 48 c1 e0 04                 	shl	rax, 4
140008606: 49 03 45 00                 	add	rax, qword ptr [r13]
14000860a: 48 8b 0d ef 6c 00 00        	mov	rcx, qword ptr [rip + 27887] # 0x14000f300
140008611: 48 c1 e1 04                 	shl	rcx, 4
140008615: 48 03 c8                    	add	rcx, rax
140008618: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
14000861d: 48 3b c1                    	cmp	rax, rcx
140008620: 74 1d                       	je	0x14000863f <.text+0x763f>
140008622: 48 83 60 08 00              	and	qword ptr [rax + 8], 0
140008627: 48 83 c0 10                 	add	rax, 16
14000862b: eb eb                       	jmp	0x140008618 <.text+0x7618>
14000862d: 48 8b 05 f4 e9 00 00        	mov	rax, qword ptr [rip + 59892] # 0x140017028
140008634: 48 89 07                    	mov	qword ptr [rdi], rax
140008637: eb 06                       	jmp	0x14000863f <.text+0x763f>
140008639: 41 bc 10 09 00 00           	mov	r12d, 2320
14000863f: 45 84 f6                    	test	r14b, r14b
140008642: 74 0a                       	je	0x14000864e <.text+0x764e>
140008644: b9 03 00 00 00              	mov	ecx, 3
140008649: e8 0a e6 ff ff              	call	0x140006c58 <.text+0x5c58>
14000864e: 48 83 fe 01                 	cmp	rsi, 1
140008652: 75 07                       	jne	0x14000865b <.text+0x765b>
140008654: 33 c0                       	xor	eax, eax
140008656: e9 8e fe ff ff              	jmp	0x1400084e9 <.text+0x74e9>
14000865b: 83 fb 08                    	cmp	ebx, 8
14000865e: 75 19                       	jne	0x140008679 <.text+0x7679>
140008660: e8 9f c1 ff ff              	call	0x140004804 <.text+0x3804>
140008665: 8b 50 10                    	mov	edx, dword ptr [rax + 16]
140008668: 8b cb                       	mov	ecx, ebx
14000866a: 48 8b c6                    	mov	rax, rsi
14000866d: 4c 8b 05 bc 5b 00 00        	mov	r8, qword ptr [rip + 23484] # 0x14000e230
140008674: 41 ff d0                    	call	r8
140008677: eb 0e                       	jmp	0x140008687 <.text+0x7687>
140008679: 8b cb                       	mov	ecx, ebx
14000867b: 48 8b c6                    	mov	rax, rsi
14000867e: 48 8b 15 ab 5b 00 00        	mov	rdx, qword ptr [rip + 23467] # 0x14000e230
140008685: ff d2                       	call	rdx
140008687: 83 fb 0b                    	cmp	ebx, 11
14000868a: 77 c8                       	ja	0x140008654 <.text+0x7654>
14000868c: 41 0f a3 dc                 	bt	r12d, ebx
140008690: 73 c2                       	jae	0x140008654 <.text+0x7654>
140008692: 48 8b 84 24 80 00 00 00     	mov	rax, qword ptr [rsp + 128]
14000869a: 49 89 45 08                 	mov	qword ptr [r13 + 8], rax
14000869e: 83 fb 08                    	cmp	ebx, 8
1400086a1: 75 b1                       	jne	0x140008654 <.text+0x7654>
1400086a3: e8 5c c1 ff ff              	call	0x140004804 <.text+0x3804>
1400086a8: 8b 4c 24 78                 	mov	ecx, dword ptr [rsp + 120]
1400086ac: 89 48 10                    	mov	dword ptr [rax + 16], ecx
1400086af: eb a3                       	jmp	0x140008654 <.text+0x7654>
1400086b1: 45 84 f6                    	test	r14b, r14b
1400086b4: 74 08                       	je	0x1400086be <.text+0x76be>
1400086b6: 8d 4e 03                    	lea	ecx, [rsi + 3]
1400086b9: e8 9a e5 ff ff              	call	0x140006c58 <.text+0x5c58>
1400086be: b9 03 00 00 00              	mov	ecx, 3
1400086c3: e8 e4 b3 ff ff              	call	0x140003aac <.text+0x2aac>
1400086c8: 90                          	nop
1400086c9: cc                          	int3
1400086ca: cc                          	int3
1400086cb: cc                          	int3
1400086cc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400086d1: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
1400086d6: 57                          	push	rdi
1400086d7: 48 83 ec 20                 	sub	rsp, 32
1400086db: 49 8b f9                    	mov	rdi, r9
1400086de: 49 8b d8                    	mov	rbx, r8
1400086e1: 48 8b 0a                    	mov	rcx, qword ptr [rdx]
1400086e4: e8 0b 04 00 00              	call	0x140008af4 <.text+0x7af4>
1400086e9: 90                          	nop
1400086ea: 48 8b 53 08                 	mov	rdx, qword ptr [rbx + 8]
1400086ee: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400086f1: 48 8b 00                    	mov	rax, qword ptr [rax]
1400086f4: 48 85 c0                    	test	rax, rax
1400086f7: 74 5a                       	je	0x140008753 <.text+0x7753>
1400086f9: 8b 48 14                    	mov	ecx, dword ptr [rax + 20]
1400086fc: 8b c1                       	mov	eax, ecx
1400086fe: c1 e8 0d                    	shr	eax, 13
140008701: a8 01                       	test	al, 1
140008703: 74 4e                       	je	0x140008753 <.text+0x7753>
140008705: 8b c1                       	mov	eax, ecx
140008707: 24 03                       	and	al, 3
140008709: 3c 02                       	cmp	al, 2
14000870b: 75 05                       	jne	0x140008712 <.text+0x7712>
14000870d: f6 c1 c0                    	test	cl, -64
140008710: 75 0a                       	jne	0x14000871c <.text+0x771c>
140008712: 0f ba e1 0b                 	bt	ecx, 11
140008716: 72 04                       	jb	0x14000871c <.text+0x771c>
140008718: ff 02                       	inc	dword ptr [rdx]
14000871a: eb 37                       	jmp	0x140008753 <.text+0x7753>
14000871c: 48 8b 43 10                 	mov	rax, qword ptr [rbx + 16]
140008720: 80 38 00                    	cmp	byte ptr [rax], 0
140008723: 75 0f                       	jne	0x140008734 <.text+0x7734>
140008725: 48 8b 03                    	mov	rax, qword ptr [rbx]
140008728: 48 8b 08                    	mov	rcx, qword ptr [rax]
14000872b: 8b 41 14                    	mov	eax, dword ptr [rcx + 20]
14000872e: d1 e8                       	shr	eax
140008730: a8 01                       	test	al, 1
140008732: 74 1f                       	je	0x140008753 <.text+0x7753>
140008734: 48 8b 03                    	mov	rax, qword ptr [rbx]
140008737: 48 8b 08                    	mov	rcx, qword ptr [rax]
14000873a: e8 e5 01 00 00              	call	0x140008924 <.text+0x7924>
14000873f: 83 f8 ff                    	cmp	eax, -1
140008742: 74 08                       	je	0x14000874c <.text+0x774c>
140008744: 48 8b 43 08                 	mov	rax, qword ptr [rbx + 8]
140008748: ff 00                       	inc	dword ptr [rax]
14000874a: eb 07                       	jmp	0x140008753 <.text+0x7753>
14000874c: 48 8b 43 18                 	mov	rax, qword ptr [rbx + 24]
140008750: 83 08 ff                    	or	dword ptr [rax], -1
140008753: 48 8b 0f                    	mov	rcx, qword ptr [rdi]
140008756: e8 a5 03 00 00              	call	0x140008b00 <.text+0x7b00>
14000875b: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008760: 48 83 c4 20                 	add	rsp, 32
140008764: 5f                          	pop	rdi
140008765: c3                          	ret
140008766: cc                          	int3
140008767: cc                          	int3
140008768: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000876d: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140008772: 56                          	push	rsi
140008773: 57                          	push	rdi
140008774: 41 56                       	push	r14
140008776: 48 83 ec 60                 	sub	rsp, 96
14000877a: 49 8b f1                    	mov	rsi, r9
14000877d: 49 8b f8                    	mov	rdi, r8
140008780: 8b 0a                       	mov	ecx, dword ptr [rdx]
140008782: e8 7d e4 ff ff              	call	0x140006c04 <.text+0x5c04>
140008787: 90                          	nop
140008788: 48 8b 1d 81 fe 00 00        	mov	rbx, qword ptr [rip + 65153] # 0x140018610
14000878f: 48 63 05 72 fe 00 00        	movsxd	rax, dword ptr [rip + 65138] # 0x140018608
140008796: 4c 8d 34 c3                 	lea	r14, [rbx + 8*rax]
14000879a: 48 89 5c 24 38              	mov	qword ptr [rsp + 56], rbx
14000879f: 49 3b de                    	cmp	rbx, r14
1400087a2: 0f 84 88 00 00 00           	je	0x140008830 <.text+0x7830>
1400087a8: 48 8b 03                    	mov	rax, qword ptr [rbx]
1400087ab: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
1400087b0: 48 8b 17                    	mov	rdx, qword ptr [rdi]
1400087b3: 48 85 c0                    	test	rax, rax
1400087b6: 74 21                       	je	0x1400087d9 <.text+0x77d9>
1400087b8: 8b 48 14                    	mov	ecx, dword ptr [rax + 20]
1400087bb: 8b c1                       	mov	eax, ecx
1400087bd: c1 e8 0d                    	shr	eax, 13
1400087c0: a8 01                       	test	al, 1
1400087c2: 74 15                       	je	0x1400087d9 <.text+0x77d9>
1400087c4: 8b c1                       	mov	eax, ecx
1400087c6: 24 03                       	and	al, 3
1400087c8: 3c 02                       	cmp	al, 2
1400087ca: 75 05                       	jne	0x1400087d1 <.text+0x77d1>
1400087cc: f6 c1 c0                    	test	cl, -64
1400087cf: 75 0e                       	jne	0x1400087df <.text+0x77df>
1400087d1: 0f ba e1 0b                 	bt	ecx, 11
1400087d5: 72 08                       	jb	0x1400087df <.text+0x77df>
1400087d7: ff 02                       	inc	dword ptr [rdx]
1400087d9: 48 83 c3 08                 	add	rbx, 8
1400087dd: eb bb                       	jmp	0x14000879a <.text+0x779a>
1400087df: 48 8b 57 10                 	mov	rdx, qword ptr [rdi + 16]
1400087e3: 48 8b 4f 08                 	mov	rcx, qword ptr [rdi + 8]
1400087e7: 48 8b 07                    	mov	rax, qword ptr [rdi]
1400087ea: 4c 8d 44 24 20              	lea	r8, [rsp + 32]
1400087ef: 4c 89 44 24 40              	mov	qword ptr [rsp + 64], r8
1400087f4: 48 89 44 24 48              	mov	qword ptr [rsp + 72], rax
1400087f9: 48 89 4c 24 50              	mov	qword ptr [rsp + 80], rcx
1400087fe: 48 89 54 24 58              	mov	qword ptr [rsp + 88], rdx
140008803: 48 8b 44 24 20              	mov	rax, qword ptr [rsp + 32]
140008808: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
14000880d: 48 89 44 24 30              	mov	qword ptr [rsp + 48], rax
140008812: 4c 8d 4c 24 28              	lea	r9, [rsp + 40]
140008817: 4c 8d 44 24 40              	lea	r8, [rsp + 64]
14000881c: 48 8d 54 24 30              	lea	rdx, [rsp + 48]
140008821: 48 8d 8c 24 88 00 00 00     	lea	rcx, [rsp + 136]
140008829: e8 9e fe ff ff              	call	0x1400086cc <.text+0x76cc>
14000882e: eb a9                       	jmp	0x1400087d9 <.text+0x77d9>
140008830: 8b 0e                       	mov	ecx, dword ptr [rsi]
140008832: e8 21 e4 ff ff              	call	0x140006c58 <.text+0x5c58>
140008837: 48 8b 9c 24 80 00 00 00     	mov	rbx, qword ptr [rsp + 128]
14000883f: 48 83 c4 60                 	add	rsp, 96
140008843: 41 5e                       	pop	r14
140008845: 5f                          	pop	rdi
140008846: 5e                          	pop	rsi
140008847: c3                          	ret
140008848: 88 4c 24 08                 	mov	byte ptr [rsp + 8], cl
14000884c: 55                          	push	rbp
14000884d: 48 8b ec                    	mov	rbp, rsp
140008850: 48 83 ec 40                 	sub	rsp, 64
140008854: 83 65 28 00                 	and	dword ptr [rbp + 40], 0
140008858: 48 8d 45 28                 	lea	rax, [rbp + 40]
14000885c: 83 65 20 00                 	and	dword ptr [rbp + 32], 0
140008860: 4c 8d 4d e0                 	lea	r9, [rbp - 32]
140008864: 48 89 45 e8                 	mov	qword ptr [rbp - 24], rax
140008868: 4c 8d 45 e8                 	lea	r8, [rbp - 24]
14000886c: 48 8d 45 10                 	lea	rax, [rbp + 16]
140008870: 48 89 45 f0                 	mov	qword ptr [rbp - 16], rax
140008874: 48 8d 55 e4                 	lea	rdx, [rbp - 28]
140008878: 48 8d 45 20                 	lea	rax, [rbp + 32]
14000887c: 48 89 45 f8                 	mov	qword ptr [rbp - 8], rax
140008880: 48 8d 4d 18                 	lea	rcx, [rbp + 24]
140008884: b8 08 00 00 00              	mov	eax, 8
140008889: 89 45 e0                    	mov	dword ptr [rbp - 32], eax
14000888c: 89 45 e4                    	mov	dword ptr [rbp - 28], eax
14000888f: e8 d4 fe ff ff              	call	0x140008768 <.text+0x7768>
140008894: 80 7d 10 00                 	cmp	byte ptr [rbp + 16], 0
140008898: 8b 45 20                    	mov	eax, dword ptr [rbp + 32]
14000889b: 0f 45 45 28                 	cmovne	eax, dword ptr [rbp + 40]
14000889f: 48 83 c4 40                 	add	rsp, 64
1400088a3: 5d                          	pop	rbp
1400088a4: c3                          	ret
1400088a5: cc                          	int3
1400088a6: cc                          	int3
1400088a7: cc                          	int3
1400088a8: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400088ad: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
1400088b2: 57                          	push	rdi
1400088b3: 48 83 ec 20                 	sub	rsp, 32
1400088b7: 48 8b d9                    	mov	rbx, rcx
1400088ba: 8b 49 14                    	mov	ecx, dword ptr [rcx + 20]
1400088bd: 8b c1                       	mov	eax, ecx
1400088bf: 24 03                       	and	al, 3
1400088c1: 3c 02                       	cmp	al, 2
1400088c3: 75 4b                       	jne	0x140008910 <.text+0x7910>
1400088c5: f6 c1 c0                    	test	cl, -64
1400088c8: 74 46                       	je	0x140008910 <.text+0x7910>
1400088ca: 8b 3b                       	mov	edi, dword ptr [rbx]
1400088cc: 2b 7b 08                    	sub	edi, dword ptr [rbx + 8]
1400088cf: 83 63 10 00                 	and	dword ptr [rbx + 16], 0
1400088d3: 48 8b 73 08                 	mov	rsi, qword ptr [rbx + 8]
1400088d7: 48 89 33                    	mov	qword ptr [rbx], rsi
1400088da: 85 ff                       	test	edi, edi
1400088dc: 7e 32                       	jle	0x140008910 <.text+0x7910>
1400088de: 48 8b cb                    	mov	rcx, rbx
1400088e1: e8 16 04 00 00              	call	0x140008cfc <.text+0x7cfc>
1400088e6: 8b c8                       	mov	ecx, eax
1400088e8: 44 8b c7                    	mov	r8d, edi
1400088eb: 48 8b d6                    	mov	rdx, rsi
1400088ee: e8 89 1f 00 00              	call	0x14000a87c <.text+0x987c>
1400088f3: 3b f8                       	cmp	edi, eax
1400088f5: 74 0a                       	je	0x140008901 <.text+0x7901>
1400088f7: f0                          	lock
1400088f8: 83 4b 14 10                 	or	dword ptr [rbx + 20], 16
1400088fc: 83 c8 ff                    	or	eax, -1
1400088ff: eb 11                       	jmp	0x140008912 <.text+0x7912>
140008901: 8b 43 14                    	mov	eax, dword ptr [rbx + 20]
140008904: c1 e8 02                    	shr	eax, 2
140008907: a8 01                       	test	al, 1
140008909: 74 05                       	je	0x140008910 <.text+0x7910>
14000890b: f0                          	lock
14000890c: 83 63 14 fd                 	and	dword ptr [rbx + 20], -3
140008910: 33 c0                       	xor	eax, eax
140008912: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008917: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
14000891c: 48 83 c4 20                 	add	rsp, 32
140008920: 5f                          	pop	rdi
140008921: c3                          	ret
140008922: cc                          	int3
140008923: cc                          	int3
140008924: 40 53                       	push	rbx
140008926: 48 83 ec 20                 	sub	rsp, 32
14000892a: 48 8b d9                    	mov	rbx, rcx
14000892d: 48 85 c9                    	test	rcx, rcx
140008930: 75 0a                       	jne	0x14000893c <.text+0x793c>
140008932: 48 83 c4 20                 	add	rsp, 32
140008936: 5b                          	pop	rbx
140008937: e9 0c ff ff ff              	jmp	0x140008848 <.text+0x7848>
14000893c: e8 67 ff ff ff              	call	0x1400088a8 <.text+0x78a8>
140008941: 85 c0                       	test	eax, eax
140008943: 75 21                       	jne	0x140008966 <.text+0x7966>
140008945: 8b 43 14                    	mov	eax, dword ptr [rbx + 20]
140008948: c1 e8 0b                    	shr	eax, 11
14000894b: a8 01                       	test	al, 1
14000894d: 74 13                       	je	0x140008962 <.text+0x7962>
14000894f: 48 8b cb                    	mov	rcx, rbx
140008952: e8 a5 03 00 00              	call	0x140008cfc <.text+0x7cfc>
140008957: 8b c8                       	mov	ecx, eax
140008959: e8 0e 16 00 00              	call	0x140009f6c <.text+0x8f6c>
14000895e: 85 c0                       	test	eax, eax
140008960: 75 04                       	jne	0x140008966 <.text+0x7966>
140008962: 33 c0                       	xor	eax, eax
140008964: eb 03                       	jmp	0x140008969 <.text+0x7969>
140008966: 83 c8 ff                    	or	eax, -1
140008969: 48 83 c4 20                 	add	rsp, 32
14000896d: 5b                          	pop	rbx
14000896e: c3                          	ret
14000896f: cc                          	int3
140008970: b1 01                       	mov	cl, 1
140008972: e9 d1 fe ff ff              	jmp	0x140008848 <.text+0x7848>
140008977: cc                          	int3
140008978: 48 8b c4                    	mov	rax, rsp
14000897b: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
14000897f: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
140008983: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
140008987: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
14000898b: 41 56                       	push	r14
14000898d: 48 83 ec 20                 	sub	rsp, 32
140008991: 8b 05 71 fc 00 00           	mov	eax, dword ptr [rip + 64625] # 0x140018608
140008997: 33 db                       	xor	ebx, ebx
140008999: bf 03 00 00 00              	mov	edi, 3
14000899e: 85 c0                       	test	eax, eax
1400089a0: 75 07                       	jne	0x1400089a9 <.text+0x79a9>
1400089a2: b8 00 02 00 00              	mov	eax, 512
1400089a7: eb 05                       	jmp	0x1400089ae <.text+0x79ae>
1400089a9: 3b c7                       	cmp	eax, edi
1400089ab: 0f 4c c7                    	cmovl	eax, edi
1400089ae: 48 63 c8                    	movsxd	rcx, eax
1400089b1: ba 08 00 00 00              	mov	edx, 8
1400089b6: 89 05 4c fc 00 00           	mov	dword ptr [rip + 64588], eax # 0x140018608
1400089bc: e8 3f c4 ff ff              	call	0x140004e00 <.text+0x3e00>
1400089c1: 33 c9                       	xor	ecx, ecx
1400089c3: 48 89 05 46 fc 00 00        	mov	qword ptr [rip + 64582], rax # 0x140018610
1400089ca: e8 a9 c4 ff ff              	call	0x140004e78 <.text+0x3e78>
1400089cf: 48 39 1d 3a fc 00 00        	cmp	qword ptr [rip + 64570], rbx # 0x140018610
1400089d6: 75 2f                       	jne	0x140008a07 <.text+0x7a07>
1400089d8: ba 08 00 00 00              	mov	edx, 8
1400089dd: 89 3d 25 fc 00 00           	mov	dword ptr [rip + 64549], edi # 0x140018608
1400089e3: 48 8b cf                    	mov	rcx, rdi
1400089e6: e8 15 c4 ff ff              	call	0x140004e00 <.text+0x3e00>
1400089eb: 33 c9                       	xor	ecx, ecx
1400089ed: 48 89 05 1c fc 00 00        	mov	qword ptr [rip + 64540], rax # 0x140018610
1400089f4: e8 7f c4 ff ff              	call	0x140004e78 <.text+0x3e78>
1400089f9: 48 39 1d 10 fc 00 00        	cmp	qword ptr [rip + 64528], rbx # 0x140018610
140008a00: 75 05                       	jne	0x140008a07 <.text+0x7a07>
140008a02: 83 c8 ff                    	or	eax, -1
140008a05: eb 75                       	jmp	0x140008a7c <.text+0x7a7c>
140008a07: 48 8b eb                    	mov	rbp, rbx
140008a0a: 48 8d 35 c7 ed 00 00        	lea	rsi, [rip + 60871]      # 0x1400177d8
140008a11: 4c 8d 35 a8 ed 00 00        	lea	r14, [rip + 60840]      # 0x1400177c0
140008a18: 49 8d 4e 30                 	lea	rcx, [r14 + 48]
140008a1c: 45 33 c0                    	xor	r8d, r8d
140008a1f: ba a0 0f 00 00              	mov	edx, 4000
140008a24: e8 af f5 ff ff              	call	0x140007fd8 <.text+0x6fd8>
140008a29: 48 8b 05 e0 fb 00 00        	mov	rax, qword ptr [rip + 64480] # 0x140018610
140008a30: 4c 8d 05 d9 f5 00 00        	lea	r8, [rip + 62937]       # 0x140018010
140008a37: 48 8b d5                    	mov	rdx, rbp
140008a3a: 48 c1 fa 06                 	sar	rdx, 6
140008a3e: 4c 89 34 03                 	mov	qword ptr [rbx + rax], r14
140008a42: 48 8b c5                    	mov	rax, rbp
140008a45: 83 e0 3f                    	and	eax, 63
140008a48: 48 8d 0c c0                 	lea	rcx, [rax + 8*rax]
140008a4c: 49 8b 04 d0                 	mov	rax, qword ptr [r8 + 8*rdx]
140008a50: 48 8b 4c c8 28              	mov	rcx, qword ptr [rax + 8*rcx + 40]
140008a55: 48 83 c1 02                 	add	rcx, 2
140008a59: 48 83 f9 02                 	cmp	rcx, 2
140008a5d: 77 06                       	ja	0x140008a65 <.text+0x7a65>
140008a5f: c7 06 fe ff ff ff           	mov	dword ptr [rsi], 4294967294
140008a65: 48 ff c5                    	inc	rbp
140008a68: 49 83 c6 58                 	add	r14, 88
140008a6c: 48 83 c3 08                 	add	rbx, 8
140008a70: 48 83 c6 58                 	add	rsi, 88
140008a74: 48 83 ef 01                 	sub	rdi, 1
140008a78: 75 9e                       	jne	0x140008a18 <.text+0x7a18>
140008a7a: 33 c0                       	xor	eax, eax
140008a7c: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140008a81: 48 8b 6c 24 38              	mov	rbp, qword ptr [rsp + 56]
140008a86: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
140008a8b: 48 8b 7c 24 48              	mov	rdi, qword ptr [rsp + 72]
140008a90: 48 83 c4 20                 	add	rsp, 32
140008a94: 41 5e                       	pop	r14
140008a96: c3                          	ret
140008a97: cc                          	int3
140008a98: 40 53                       	push	rbx
140008a9a: 48 83 ec 20                 	sub	rsp, 32
140008a9e: e8 cd fe ff ff              	call	0x140008970 <.text+0x7970>
140008aa3: e8 a4 21 00 00              	call	0x14000ac4c <.text+0x9c4c>
140008aa8: 33 db                       	xor	ebx, ebx
140008aaa: 48 8b 0d 5f fb 00 00        	mov	rcx, qword ptr [rip + 64351] # 0x140018610
140008ab1: 48 8b 0c 0b                 	mov	rcx, qword ptr [rbx + rcx]
140008ab5: e8 46 22 00 00              	call	0x14000ad00 <.text+0x9d00>
140008aba: 48 8b 05 4f fb 00 00        	mov	rax, qword ptr [rip + 64335] # 0x140018610
140008ac1: 48 8b 0c 03                 	mov	rcx, qword ptr [rbx + rax]
140008ac5: 48 83 c1 30                 	add	rcx, 48
140008ac9: ff 15 d1 55 00 00           	call	qword ptr [rip + 21969] # 0x14000e0a0
140008acf: 48 83 c3 08                 	add	rbx, 8
140008ad3: 48 83 fb 18                 	cmp	rbx, 24
140008ad7: 75 d1                       	jne	0x140008aaa <.text+0x7aaa>
140008ad9: 48 8b 0d 30 fb 00 00        	mov	rcx, qword ptr [rip + 64304] # 0x140018610
140008ae0: e8 93 c3 ff ff              	call	0x140004e78 <.text+0x3e78>
140008ae5: 48 83 25 23 fb 00 00 00     	and	qword ptr [rip + 64291], 0 # 0x140018610
140008aed: 48 83 c4 20                 	add	rsp, 32
140008af1: 5b                          	pop	rbx
140008af2: c3                          	ret
140008af3: cc                          	int3
140008af4: 48 83 c1 30                 	add	rcx, 48
140008af8: 48 ff 25 91 55 00 00        	jmp	qword ptr [rip + 21905] # 0x14000e090
140008aff: cc                          	int3
140008b00: 48 83 c1 30                 	add	rcx, 48
140008b04: 48 ff 25 8d 55 00 00        	jmp	qword ptr [rip + 21901] # 0x14000e098
140008b0b: cc                          	int3
140008b0c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140008b11: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140008b16: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140008b1b: 57                          	push	rdi
140008b1c: 48 83 ec 50                 	sub	rsp, 80
140008b20: 33 ed                       	xor	ebp, ebp
140008b22: 49 8b f0                    	mov	rsi, r8
140008b25: 48 8b fa                    	mov	rdi, rdx
140008b28: 48 8b d9                    	mov	rbx, rcx
140008b2b: 48 85 d2                    	test	rdx, rdx
140008b2e: 0f 84 38 01 00 00           	je	0x140008c6c <.text+0x7c6c>
140008b34: 4d 85 c0                    	test	r8, r8
140008b37: 0f 84 2f 01 00 00           	je	0x140008c6c <.text+0x7c6c>
140008b3d: 40 38 2a                    	cmp	byte ptr [rdx], bpl
140008b40: 75 11                       	jne	0x140008b53 <.text+0x7b53>
140008b42: 48 85 c9                    	test	rcx, rcx
140008b45: 0f 84 28 01 00 00           	je	0x140008c73 <.text+0x7c73>
140008b4b: 66 89 29                    	mov	word ptr [rcx], bp
140008b4e: e9 20 01 00 00              	jmp	0x140008c73 <.text+0x7c73>
140008b53: 49 8b d1                    	mov	rdx, r9
140008b56: 48 8d 4c 24 30              	lea	rcx, [rsp + 48]
140008b5b: e8 d4 b7 ff ff              	call	0x140004334 <.text+0x3334>
140008b60: 48 8b 44 24 38              	mov	rax, qword ptr [rsp + 56]
140008b65: 81 78 0c e9 fd 00 00        	cmp	dword ptr [rax + 12], 65001
140008b6c: 75 22                       	jne	0x140008b90 <.text+0x7b90>
140008b6e: 4c 8d 0d b3 fa 00 00        	lea	r9, [rip + 64179]       # 0x140018628
140008b75: 4c 8b c6                    	mov	r8, rsi
140008b78: 48 8b d7                    	mov	rdx, rdi
140008b7b: 48 8b cb                    	mov	rcx, rbx
140008b7e: e8 69 22 00 00              	call	0x14000adec <.text+0x9dec>
140008b83: 48 8b c8                    	mov	rcx, rax
140008b86: 83 c8 ff                    	or	eax, -1
140008b89: 85 c9                       	test	ecx, ecx
140008b8b: 0f 48 c8                    	cmovs	ecx, eax
140008b8e: eb 19                       	jmp	0x140008ba9 <.text+0x7ba9>
140008b90: 48 39 a8 38 01 00 00        	cmp	qword ptr [rax + 312], rbp
140008b97: 75 2a                       	jne	0x140008bc3 <.text+0x7bc3>
140008b99: 48 85 db                    	test	rbx, rbx
140008b9c: 74 06                       	je	0x140008ba4 <.text+0x7ba4>
140008b9e: 0f b6 07                    	movzx	eax, byte ptr [rdi]
140008ba1: 66 89 03                    	mov	word ptr [rbx], ax
140008ba4: b9 01 00 00 00              	mov	ecx, 1
140008ba9: 40 38 6c 24 48              	cmp	byte ptr [rsp + 72], bpl
140008bae: 74 0c                       	je	0x140008bbc <.text+0x7bbc>
140008bb0: 48 8b 44 24 30              	mov	rax, qword ptr [rsp + 48]
140008bb5: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140008bbc: 8b c1                       	mov	eax, ecx
140008bbe: e9 b2 00 00 00              	jmp	0x140008c75 <.text+0x7c75>
140008bc3: 0f b6 0f                    	movzx	ecx, byte ptr [rdi]
140008bc6: 48 8d 54 24 38              	lea	rdx, [rsp + 56]
140008bcb: e8 d0 21 00 00              	call	0x14000ada0 <.text+0x9da0>
140008bd0: 85 c0                       	test	eax, eax
140008bd2: 74 52                       	je	0x140008c26 <.text+0x7c26>
140008bd4: 48 8b 4c 24 38              	mov	rcx, qword ptr [rsp + 56]
140008bd9: 44 8b 49 08                 	mov	r9d, dword ptr [rcx + 8]
140008bdd: 41 83 f9 01                 	cmp	r9d, 1
140008be1: 7e 2f                       	jle	0x140008c12 <.text+0x7c12>
140008be3: 41 3b f1                    	cmp	esi, r9d
140008be6: 7c 2a                       	jl	0x140008c12 <.text+0x7c12>
140008be8: 8b 49 0c                    	mov	ecx, dword ptr [rcx + 12]
140008beb: 8b c5                       	mov	eax, ebp
140008bed: 48 85 db                    	test	rbx, rbx
140008bf0: 4c 8b c7                    	mov	r8, rdi
140008bf3: ba 09 00 00 00              	mov	edx, 9
140008bf8: 0f 95 c0                    	setne	al
140008bfb: 89 44 24 28                 	mov	dword ptr [rsp + 40], eax
140008bff: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140008c04: e8 93 d9 ff ff              	call	0x14000659c <.text+0x559c>
140008c09: 48 8b 4c 24 38              	mov	rcx, qword ptr [rsp + 56]
140008c0e: 85 c0                       	test	eax, eax
140008c10: 75 0f                       	jne	0x140008c21 <.text+0x7c21>
140008c12: 48 63 41 08                 	movsxd	rax, dword ptr [rcx + 8]
140008c16: 48 3b f0                    	cmp	rsi, rax
140008c19: 72 3e                       	jb	0x140008c59 <.text+0x7c59>
140008c1b: 40 38 6f 01                 	cmp	byte ptr [rdi + 1], bpl
140008c1f: 74 38                       	je	0x140008c59 <.text+0x7c59>
140008c21: 8b 49 08                    	mov	ecx, dword ptr [rcx + 8]
140008c24: eb 83                       	jmp	0x140008ba9 <.text+0x7ba9>
140008c26: 8b c5                       	mov	eax, ebp
140008c28: 41 b9 01 00 00 00           	mov	r9d, 1
140008c2e: 48 85 db                    	test	rbx, rbx
140008c31: 4c 8b c7                    	mov	r8, rdi
140008c34: 0f 95 c0                    	setne	al
140008c37: 89 44 24 28                 	mov	dword ptr [rsp + 40], eax
140008c3b: 41 8d 51 08                 	lea	edx, [r9 + 8]
140008c3f: 48 8b 44 24 38              	mov	rax, qword ptr [rsp + 56]
140008c44: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
140008c49: 8b 48 0c                    	mov	ecx, dword ptr [rax + 12]
140008c4c: e8 4b d9 ff ff              	call	0x14000659c <.text+0x559c>
140008c51: 85 c0                       	test	eax, eax
140008c53: 0f 85 4b ff ff ff           	jne	0x140008ba4 <.text+0x7ba4>
140008c59: e8 82 c1 ff ff              	call	0x140004de0 <.text+0x3de0>
140008c5e: 83 c9 ff                    	or	ecx, -1
140008c61: c7 00 2a 00 00 00           	mov	dword ptr [rax], 42
140008c67: e9 3d ff ff ff              	jmp	0x140008ba9 <.text+0x7ba9>
140008c6c: 48 89 2d b5 f9 00 00        	mov	qword ptr [rip + 63925], rbp # 0x140018628
140008c73: 33 c0                       	xor	eax, eax
140008c75: 48 8b 5c 24 60              	mov	rbx, qword ptr [rsp + 96]
140008c7a: 48 8b 6c 24 68              	mov	rbp, qword ptr [rsp + 104]
140008c7f: 48 8b 74 24 70              	mov	rsi, qword ptr [rsp + 112]
140008c84: 48 83 c4 50                 	add	rsp, 80
140008c88: 5f                          	pop	rdi
140008c89: c3                          	ret
140008c8a: cc                          	int3
140008c8b: cc                          	int3
140008c8c: 45 33 c9                    	xor	r9d, r9d
140008c8f: e9 78 fe ff ff              	jmp	0x140008b0c <.text+0x7b0c>
140008c94: 40 53                       	push	rbx
140008c96: 48 83 ec 20                 	sub	rsp, 32
140008c9a: 48 8b 05 77 f7 00 00        	mov	rax, qword ptr [rip + 63351] # 0x140018418
140008ca1: 48 8b da                    	mov	rbx, rdx
140008ca4: 48 39 02                    	cmp	qword ptr [rdx], rax
140008ca7: 74 16                       	je	0x140008cbf <.text+0x7cbf>
140008ca9: 8b 81 a8 03 00 00           	mov	eax, dword ptr [rcx + 936]
140008caf: 85 05 fb ea 00 00           	test	dword ptr [rip + 60155], eax # 0x1400177b0
140008cb5: 75 08                       	jne	0x140008cbf <.text+0x7cbf>
140008cb7: e8 d8 ed ff ff              	call	0x140007a94 <.text+0x6a94>
140008cbc: 48 89 03                    	mov	qword ptr [rbx], rax
140008cbf: 48 83 c4 20                 	add	rsp, 32
140008cc3: 5b                          	pop	rbx
140008cc4: c3                          	ret
140008cc5: cc                          	int3
140008cc6: cc                          	int3
140008cc7: cc                          	int3
140008cc8: 40 53                       	push	rbx
140008cca: 48 83 ec 20                 	sub	rsp, 32
140008cce: 48 8b 05 e3 f0 00 00        	mov	rax, qword ptr [rip + 61667] # 0x140017db8
140008cd5: 48 8b da                    	mov	rbx, rdx
140008cd8: 48 39 02                    	cmp	qword ptr [rdx], rax
140008cdb: 74 16                       	je	0x140008cf3 <.text+0x7cf3>
140008cdd: 8b 81 a8 03 00 00           	mov	eax, dword ptr [rcx + 936]
140008ce3: 85 05 c7 ea 00 00           	test	dword ptr [rip + 60103], eax # 0x1400177b0
140008ce9: 75 08                       	jne	0x140008cf3 <.text+0x7cf3>
140008ceb: e8 48 d5 ff ff              	call	0x140006238 <.text+0x5238>
140008cf0: 48 89 03                    	mov	qword ptr [rbx], rax
140008cf3: 48 83 c4 20                 	add	rsp, 32
140008cf7: 5b                          	pop	rbx
140008cf8: c3                          	ret
140008cf9: cc                          	int3
140008cfa: cc                          	int3
140008cfb: cc                          	int3
140008cfc: 48 83 ec 28                 	sub	rsp, 40
140008d00: 48 85 c9                    	test	rcx, rcx
140008d03: 75 15                       	jne	0x140008d1a <.text+0x7d1a>
140008d05: e8 d6 c0 ff ff              	call	0x140004de0 <.text+0x3de0>
140008d0a: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140008d10: e8 ab bf ff ff              	call	0x140004cc0 <.text+0x3cc0>
140008d15: 83 c8 ff                    	or	eax, -1
140008d18: eb 03                       	jmp	0x140008d1d <.text+0x7d1d>
140008d1a: 8b 41 18                    	mov	eax, dword ptr [rcx + 24]
140008d1d: 48 83 c4 28                 	add	rsp, 40
140008d21: c3                          	ret
140008d22: cc                          	int3
140008d23: cc                          	int3
140008d24: cc                          	int3
140008d25: cc                          	int3
140008d26: cc                          	int3
140008d27: cc                          	int3
140008d28: cc                          	int3
140008d29: cc                          	int3
140008d2a: cc                          	int3
140008d2b: cc                          	int3
140008d2c: cc                          	int3
140008d2d: cc                          	int3
140008d2e: cc                          	int3
140008d2f: cc                          	int3
140008d30: 41 54                       	push	r12
140008d32: 41 55                       	push	r13
140008d34: 41 56                       	push	r14
140008d36: 48 81 ec 50 04 00 00        	sub	rsp, 1104
140008d3d: 48 8b 05 e4 e2 00 00        	mov	rax, qword ptr [rip + 58084] # 0x140017028
140008d44: 48 33 c4                    	xor	rax, rsp
140008d47: 48 89 84 24 10 04 00 00     	mov	qword ptr [rsp + 1040], rax
140008d4f: 4d 8b e1                    	mov	r12, r9
140008d52: 4d 8b f0                    	mov	r14, r8
140008d55: 4c 8b e9                    	mov	r13, rcx
140008d58: 48 85 c9                    	test	rcx, rcx
140008d5b: 75 1a                       	jne	0x140008d77 <.text+0x7d77>
140008d5d: 48 85 d2                    	test	rdx, rdx
140008d60: 74 15                       	je	0x140008d77 <.text+0x7d77>
140008d62: e8 79 c0 ff ff              	call	0x140004de0 <.text+0x3de0>
140008d67: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140008d6d: e8 4e bf ff ff              	call	0x140004cc0 <.text+0x3cc0>
140008d72: e9 38 03 00 00              	jmp	0x1400090af <.text+0x80af>
140008d77: 4d 85 f6                    	test	r14, r14
140008d7a: 74 e6                       	je	0x140008d62 <.text+0x7d62>
140008d7c: 4d 85 e4                    	test	r12, r12
140008d7f: 74 e1                       	je	0x140008d62 <.text+0x7d62>
140008d81: 48 83 fa 02                 	cmp	rdx, 2
140008d85: 0f 82 24 03 00 00           	jb	0x1400090af <.text+0x80af>
140008d8b: 48 89 9c 24 48 04 00 00     	mov	qword ptr [rsp + 1096], rbx
140008d93: 48 89 ac 24 40 04 00 00     	mov	qword ptr [rsp + 1088], rbp
140008d9b: 48 89 b4 24 38 04 00 00     	mov	qword ptr [rsp + 1080], rsi
140008da3: 48 89 bc 24 30 04 00 00     	mov	qword ptr [rsp + 1072], rdi
140008dab: 4c 89 bc 24 28 04 00 00     	mov	qword ptr [rsp + 1064], r15
140008db3: 4c 8d 7a ff                 	lea	r15, [rdx - 1]
140008db7: 4d 0f af fe                 	imul	r15, r14
140008dbb: 4c 03 f9                    	add	r15, rcx
140008dbe: 33 c9                       	xor	ecx, ecx
140008dc0: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
140008dc5: 66 66 66 0f 1f 84 00 00 00 00 00    	nop	word ptr [rax + rax]
140008dd0: 33 d2                       	xor	edx, edx
140008dd2: 49 8b c7                    	mov	rax, r15
140008dd5: 49 2b c5                    	sub	rax, r13
140008dd8: 49 f7 f6                    	div	r14
140008ddb: 48 8d 58 01                 	lea	rbx, [rax + 1]
140008ddf: 48 83 fb 08                 	cmp	rbx, 8
140008de3: 0f 87 8b 00 00 00           	ja	0x140008e74 <.text+0x7e74>
140008de9: 4d 3b fd                    	cmp	r15, r13
140008dec: 76 65                       	jbe	0x140008e53 <.text+0x7e53>
140008dee: 4b 8d 34 2e                 	lea	rsi, [r14 + r13]
140008df2: 49 8b dd                    	mov	rbx, r13
140008df5: 48 8b fe                    	mov	rdi, rsi
140008df8: 49 3b f7                    	cmp	rsi, r15
140008dfb: 77 20                       	ja	0x140008e1d <.text+0x7e1d>
140008dfd: 0f 1f 00                    	nop	dword ptr [rax]
140008e00: 48 8b d3                    	mov	rdx, rbx
140008e03: 48 8b cf                    	mov	rcx, rdi
140008e06: 49 8b c4                    	mov	rax, r12
140008e09: ff 15 21 54 00 00           	call	qword ptr [rip + 21537] # 0x14000e230
140008e0f: 85 c0                       	test	eax, eax
140008e11: 48 0f 4f df                 	cmovg	rbx, rdi
140008e15: 49 03 fe                    	add	rdi, r14
140008e18: 49 3b ff                    	cmp	rdi, r15
140008e1b: 76 e3                       	jbe	0x140008e00 <.text+0x7e00>
140008e1d: 4d 8b c6                    	mov	r8, r14
140008e20: 49 8b d7                    	mov	rdx, r15
140008e23: 49 3b df                    	cmp	rbx, r15
140008e26: 74 1e                       	je	0x140008e46 <.text+0x7e46>
140008e28: 49 2b df                    	sub	rbx, r15
140008e2b: 0f 1f 44 00 00              	nop	dword ptr [rax + rax]
140008e30: 0f b6 02                    	movzx	eax, byte ptr [rdx]
140008e33: 0f b6 0c 13                 	movzx	ecx, byte ptr [rbx + rdx]
140008e37: 88 04 13                    	mov	byte ptr [rbx + rdx], al
140008e3a: 88 0a                       	mov	byte ptr [rdx], cl
140008e3c: 48 8d 52 01                 	lea	rdx, [rdx + 1]
140008e40: 49 83 e8 01                 	sub	r8, 1
140008e44: 75 ea                       	jne	0x140008e30 <.text+0x7e30>
140008e46: 4d 2b fe                    	sub	r15, r14
140008e49: 4d 3b fd                    	cmp	r15, r13
140008e4c: 77 a4                       	ja	0x140008df2 <.text+0x7df2>
140008e4e: 48 8b 4c 24 20              	mov	rcx, qword ptr [rsp + 32]
140008e53: 48 83 e9 01                 	sub	rcx, 1
140008e57: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
140008e5c: 0f 88 25 02 00 00           	js	0x140009087 <.text+0x8087>
140008e62: 4c 8b 6c cc 30              	mov	r13, qword ptr [rsp + 8*rcx + 48]
140008e67: 4c 8b bc cc 20 02 00 00     	mov	r15, qword ptr [rsp + 8*rcx + 544]
140008e6f: e9 5c ff ff ff              	jmp	0x140008dd0 <.text+0x7dd0>
140008e74: 48 d1 eb                    	shr	rbx
140008e77: 49 8b cd                    	mov	rcx, r13
140008e7a: 49 0f af de                 	imul	rbx, r14
140008e7e: 49 8b c4                    	mov	rax, r12
140008e81: 4a 8d 34 2b                 	lea	rsi, [rbx + r13]
140008e85: 48 8b d6                    	mov	rdx, rsi
140008e88: ff 15 a2 53 00 00           	call	qword ptr [rip + 21410] # 0x14000e230
140008e8e: 85 c0                       	test	eax, eax
140008e90: 7e 29                       	jle	0x140008ebb <.text+0x7ebb>
140008e92: 4d 8b ce                    	mov	r9, r14
140008e95: 4c 8b c6                    	mov	r8, rsi
140008e98: 4c 3b ee                    	cmp	r13, rsi
140008e9b: 74 1e                       	je	0x140008ebb <.text+0x7ebb>
140008e9d: 0f 1f 00                    	nop	dword ptr [rax]
140008ea0: 41 0f b6 00                 	movzx	eax, byte ptr [r8]
140008ea4: 49 8b d0                    	mov	rdx, r8
140008ea7: 48 2b d3                    	sub	rdx, rbx
140008eaa: 0f b6 0a                    	movzx	ecx, byte ptr [rdx]
140008ead: 88 02                       	mov	byte ptr [rdx], al
140008eaf: 41 88 08                    	mov	byte ptr [r8], cl
140008eb2: 49 ff c0                    	inc	r8
140008eb5: 49 83 e9 01                 	sub	r9, 1
140008eb9: 75 e5                       	jne	0x140008ea0 <.text+0x7ea0>
140008ebb: 49 8b d7                    	mov	rdx, r15
140008ebe: 49 8b cd                    	mov	rcx, r13
140008ec1: 49 8b c4                    	mov	rax, r12
140008ec4: ff 15 66 53 00 00           	call	qword ptr [rip + 21350] # 0x14000e230
140008eca: 85 c0                       	test	eax, eax
140008ecc: 7e 2a                       	jle	0x140008ef8 <.text+0x7ef8>
140008ece: 4d 8b c6                    	mov	r8, r14
140008ed1: 49 8b d7                    	mov	rdx, r15
140008ed4: 4d 3b ef                    	cmp	r13, r15
140008ed7: 74 1f                       	je	0x140008ef8 <.text+0x7ef8>
140008ed9: 4d 8b cd                    	mov	r9, r13
140008edc: 4d 2b cf                    	sub	r9, r15
140008edf: 90                          	nop
140008ee0: 0f b6 02                    	movzx	eax, byte ptr [rdx]
140008ee3: 41 0f b6 0c 11              	movzx	ecx, byte ptr [r9 + rdx]
140008ee8: 41 88 04 11                 	mov	byte ptr [r9 + rdx], al
140008eec: 88 0a                       	mov	byte ptr [rdx], cl
140008eee: 48 8d 52 01                 	lea	rdx, [rdx + 1]
140008ef2: 49 83 e8 01                 	sub	r8, 1
140008ef6: 75 e8                       	jne	0x140008ee0 <.text+0x7ee0>
140008ef8: 49 8b d7                    	mov	rdx, r15
140008efb: 48 8b ce                    	mov	rcx, rsi
140008efe: 49 8b c4                    	mov	rax, r12
140008f01: ff 15 29 53 00 00           	call	qword ptr [rip + 21289] # 0x14000e230
140008f07: 85 c0                       	test	eax, eax
140008f09: 7e 2d                       	jle	0x140008f38 <.text+0x7f38>
140008f0b: 4d 8b c6                    	mov	r8, r14
140008f0e: 49 8b d7                    	mov	rdx, r15
140008f11: 49 3b f7                    	cmp	rsi, r15
140008f14: 74 22                       	je	0x140008f38 <.text+0x7f38>
140008f16: 4c 8b ce                    	mov	r9, rsi
140008f19: 4d 2b cf                    	sub	r9, r15
140008f1c: 0f 1f 40 00                 	nop	dword ptr [rax]
140008f20: 0f b6 02                    	movzx	eax, byte ptr [rdx]
140008f23: 41 0f b6 0c 11              	movzx	ecx, byte ptr [r9 + rdx]
140008f28: 41 88 04 11                 	mov	byte ptr [r9 + rdx], al
140008f2c: 88 0a                       	mov	byte ptr [rdx], cl
140008f2e: 48 8d 52 01                 	lea	rdx, [rdx + 1]
140008f32: 49 83 e8 01                 	sub	r8, 1
140008f36: 75 e8                       	jne	0x140008f20 <.text+0x7f20>
140008f38: 49 8b dd                    	mov	rbx, r13
140008f3b: 49 8b ff                    	mov	rdi, r15
140008f3e: 66 90                       	nop
140008f40: 48 3b f3                    	cmp	rsi, rbx
140008f43: 76 1d                       	jbe	0x140008f62 <.text+0x7f62>
140008f45: 49 03 de                    	add	rbx, r14
140008f48: 48 3b de                    	cmp	rbx, rsi
140008f4b: 73 15                       	jae	0x140008f62 <.text+0x7f62>
140008f4d: 48 8b d6                    	mov	rdx, rsi
140008f50: 48 8b cb                    	mov	rcx, rbx
140008f53: 49 8b c4                    	mov	rax, r12
140008f56: ff 15 d4 52 00 00           	call	qword ptr [rip + 21204] # 0x14000e230
140008f5c: 85 c0                       	test	eax, eax
140008f5e: 7e e5                       	jle	0x140008f45 <.text+0x7f45>
140008f60: eb 1e                       	jmp	0x140008f80 <.text+0x7f80>
140008f62: 49 03 de                    	add	rbx, r14
140008f65: 49 3b df                    	cmp	rbx, r15
140008f68: 77 16                       	ja	0x140008f80 <.text+0x7f80>
140008f6a: 48 8b d6                    	mov	rdx, rsi
140008f6d: 48 8b cb                    	mov	rcx, rbx
140008f70: 49 8b c4                    	mov	rax, r12
140008f73: ff 15 b7 52 00 00           	call	qword ptr [rip + 21175] # 0x14000e230
140008f79: 85 c0                       	test	eax, eax
140008f7b: 7e e5                       	jle	0x140008f62 <.text+0x7f62>
140008f7d: 0f 1f 00                    	nop	dword ptr [rax]
140008f80: 48 8b ef                    	mov	rbp, rdi
140008f83: 49 2b fe                    	sub	rdi, r14
140008f86: 48 3b fe                    	cmp	rdi, rsi
140008f89: 76 13                       	jbe	0x140008f9e <.text+0x7f9e>
140008f8b: 48 8b d6                    	mov	rdx, rsi
140008f8e: 48 8b cf                    	mov	rcx, rdi
140008f91: 49 8b c4                    	mov	rax, r12
140008f94: ff 15 96 52 00 00           	call	qword ptr [rip + 21142] # 0x14000e230
140008f9a: 85 c0                       	test	eax, eax
140008f9c: 7f e2                       	jg	0x140008f80 <.text+0x7f80>
140008f9e: 48 3b fb                    	cmp	rdi, rbx
140008fa1: 72 38                       	jb	0x140008fdb <.text+0x7fdb>
140008fa3: 4d 8b c6                    	mov	r8, r14
140008fa6: 48 8b d7                    	mov	rdx, rdi
140008fa9: 74 1e                       	je	0x140008fc9 <.text+0x7fc9>
140008fab: 4c 8b cb                    	mov	r9, rbx
140008fae: 4c 2b cf                    	sub	r9, rdi
140008fb1: 0f b6 02                    	movzx	eax, byte ptr [rdx]
140008fb4: 41 0f b6 0c 11              	movzx	ecx, byte ptr [r9 + rdx]
140008fb9: 41 88 04 11                 	mov	byte ptr [r9 + rdx], al
140008fbd: 88 0a                       	mov	byte ptr [rdx], cl
140008fbf: 48 8d 52 01                 	lea	rdx, [rdx + 1]
140008fc3: 49 83 e8 01                 	sub	r8, 1
140008fc7: 75 e8                       	jne	0x140008fb1 <.text+0x7fb1>
140008fc9: 48 3b f7                    	cmp	rsi, rdi
140008fcc: 48 8b c3                    	mov	rax, rbx
140008fcf: 48 0f 45 c6                 	cmovne	rax, rsi
140008fd3: 48 8b f0                    	mov	rsi, rax
140008fd6: e9 65 ff ff ff              	jmp	0x140008f40 <.text+0x7f40>
140008fdb: 48 3b f5                    	cmp	rsi, rbp
140008fde: 73 20                       	jae	0x140009000 <.text+0x8000>
140008fe0: 49 2b ee                    	sub	rbp, r14
140008fe3: 48 3b ee                    	cmp	rbp, rsi
140008fe6: 76 18                       	jbe	0x140009000 <.text+0x8000>
140008fe8: 48 8b d6                    	mov	rdx, rsi
140008feb: 48 8b cd                    	mov	rcx, rbp
140008fee: 49 8b c4                    	mov	rax, r12
140008ff1: ff 15 39 52 00 00           	call	qword ptr [rip + 21049] # 0x14000e230
140008ff7: 85 c0                       	test	eax, eax
140008ff9: 74 e5                       	je	0x140008fe0 <.text+0x7fe0>
140008ffb: eb 1e                       	jmp	0x14000901b <.text+0x801b>
140008ffd: 0f 1f 00                    	nop	dword ptr [rax]
140009000: 49 2b ee                    	sub	rbp, r14
140009003: 49 3b ed                    	cmp	rbp, r13
140009006: 76 13                       	jbe	0x14000901b <.text+0x801b>
140009008: 48 8b d6                    	mov	rdx, rsi
14000900b: 48 8b cd                    	mov	rcx, rbp
14000900e: 49 8b c4                    	mov	rax, r12
140009011: ff 15 19 52 00 00           	call	qword ptr [rip + 21017] # 0x14000e230
140009017: 85 c0                       	test	eax, eax
140009019: 74 e5                       	je	0x140009000 <.text+0x8000>
14000901b: 49 8b cf                    	mov	rcx, r15
14000901e: 48 8b c5                    	mov	rax, rbp
140009021: 48 2b cb                    	sub	rcx, rbx
140009024: 49 2b c5                    	sub	rax, r13
140009027: 48 3b c1                    	cmp	rax, rcx
14000902a: 48 8b 4c 24 20              	mov	rcx, qword ptr [rsp + 32]
14000902f: 7c 2b                       	jl	0x14000905c <.text+0x805c>
140009031: 4c 3b ed                    	cmp	r13, rbp
140009034: 73 15                       	jae	0x14000904b <.text+0x804b>
140009036: 4c 89 6c cc 30              	mov	qword ptr [rsp + 8*rcx + 48], r13
14000903b: 48 89 ac cc 20 02 00 00     	mov	qword ptr [rsp + 8*rcx + 544], rbp
140009043: 48 ff c1                    	inc	rcx
140009046: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
14000904b: 49 3b df                    	cmp	rbx, r15
14000904e: 0f 83 ff fd ff ff           	jae	0x140008e53 <.text+0x7e53>
140009054: 4c 8b eb                    	mov	r13, rbx
140009057: e9 74 fd ff ff              	jmp	0x140008dd0 <.text+0x7dd0>
14000905c: 49 3b df                    	cmp	rbx, r15
14000905f: 73 15                       	jae	0x140009076 <.text+0x8076>
140009061: 48 89 5c cc 30              	mov	qword ptr [rsp + 8*rcx + 48], rbx
140009066: 4c 89 bc cc 20 02 00 00     	mov	qword ptr [rsp + 8*rcx + 544], r15
14000906e: 48 ff c1                    	inc	rcx
140009071: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
140009076: 4c 3b ed                    	cmp	r13, rbp
140009079: 0f 83 d4 fd ff ff           	jae	0x140008e53 <.text+0x7e53>
14000907f: 4c 8b fd                    	mov	r15, rbp
140009082: e9 49 fd ff ff              	jmp	0x140008dd0 <.text+0x7dd0>
140009087: 48 8b bc 24 30 04 00 00     	mov	rdi, qword ptr [rsp + 1072]
14000908f: 48 8b b4 24 38 04 00 00     	mov	rsi, qword ptr [rsp + 1080]
140009097: 48 8b ac 24 40 04 00 00     	mov	rbp, qword ptr [rsp + 1088]
14000909f: 48 8b 9c 24 48 04 00 00     	mov	rbx, qword ptr [rsp + 1096]
1400090a7: 4c 8b bc 24 28 04 00 00     	mov	r15, qword ptr [rsp + 1064]
1400090af: 48 8b 8c 24 10 04 00 00     	mov	rcx, qword ptr [rsp + 1040]
1400090b7: 48 33 cc                    	xor	rcx, rsp
1400090ba: e8 21 3a 00 00              	call	0x14000cae0 <.text+0xbae0>
1400090bf: 48 81 c4 50 04 00 00        	add	rsp, 1104
1400090c6: 41 5e                       	pop	r14
1400090c8: 41 5d                       	pop	r13
1400090ca: 41 5c                       	pop	r12
1400090cc: c3                          	ret
1400090cd: cc                          	int3
1400090ce: cc                          	int3
1400090cf: cc                          	int3
1400090d0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400090d5: 57                          	push	rdi
1400090d6: 48 83 ec 20                 	sub	rsp, 32
1400090da: 45 33 d2                    	xor	r10d, r10d
1400090dd: 49 8b d8                    	mov	rbx, r8
1400090e0: 4c 8b da                    	mov	r11, rdx
1400090e3: 4d 85 c9                    	test	r9, r9
1400090e6: 75 2c                       	jne	0x140009114 <.text+0x8114>
1400090e8: 48 85 c9                    	test	rcx, rcx
1400090eb: 75 2c                       	jne	0x140009119 <.text+0x8119>
1400090ed: 48 85 d2                    	test	rdx, rdx
1400090f0: 74 14                       	je	0x140009106 <.text+0x8106>
1400090f2: e8 e9 bc ff ff              	call	0x140004de0 <.text+0x3de0>
1400090f7: bb 16 00 00 00              	mov	ebx, 22
1400090fc: 89 18                       	mov	dword ptr [rax], ebx
1400090fe: e8 bd bb ff ff              	call	0x140004cc0 <.text+0x3cc0>
140009103: 44 8b d3                    	mov	r10d, ebx
140009106: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000910b: 41 8b c2                    	mov	eax, r10d
14000910e: 48 83 c4 20                 	add	rsp, 32
140009112: 5f                          	pop	rdi
140009113: c3                          	ret
140009114: 48 85 c9                    	test	rcx, rcx
140009117: 74 d9                       	je	0x1400090f2 <.text+0x80f2>
140009119: 4d 85 db                    	test	r11, r11
14000911c: 74 d4                       	je	0x1400090f2 <.text+0x80f2>
14000911e: 4d 85 c9                    	test	r9, r9
140009121: 75 05                       	jne	0x140009128 <.text+0x8128>
140009123: 44 88 11                    	mov	byte ptr [rcx], r10b
140009126: eb de                       	jmp	0x140009106 <.text+0x8106>
140009128: 48 85 db                    	test	rbx, rbx
14000912b: 75 05                       	jne	0x140009132 <.text+0x8132>
14000912d: 44 88 11                    	mov	byte ptr [rcx], r10b
140009130: eb c0                       	jmp	0x1400090f2 <.text+0x80f2>
140009132: 48 2b d9                    	sub	rbx, rcx
140009135: 48 8b d1                    	mov	rdx, rcx
140009138: 4d 8b c3                    	mov	r8, r11
14000913b: 49 8b f9                    	mov	rdi, r9
14000913e: 49 83 f9 ff                 	cmp	r9, -1
140009142: 75 14                       	jne	0x140009158 <.text+0x8158>
140009144: 8a 04 13                    	mov	al, byte ptr [rbx + rdx]
140009147: 88 02                       	mov	byte ptr [rdx], al
140009149: 48 ff c2                    	inc	rdx
14000914c: 84 c0                       	test	al, al
14000914e: 74 28                       	je	0x140009178 <.text+0x8178>
140009150: 49 83 e8 01                 	sub	r8, 1
140009154: 75 ee                       	jne	0x140009144 <.text+0x8144>
140009156: eb 20                       	jmp	0x140009178 <.text+0x8178>
140009158: 8a 04 13                    	mov	al, byte ptr [rbx + rdx]
14000915b: 88 02                       	mov	byte ptr [rdx], al
14000915d: 48 ff c2                    	inc	rdx
140009160: 84 c0                       	test	al, al
140009162: 74 0c                       	je	0x140009170 <.text+0x8170>
140009164: 49 83 e8 01                 	sub	r8, 1
140009168: 74 06                       	je	0x140009170 <.text+0x8170>
14000916a: 48 83 ef 01                 	sub	rdi, 1
14000916e: 75 e8                       	jne	0x140009158 <.text+0x8158>
140009170: 48 85 ff                    	test	rdi, rdi
140009173: 75 03                       	jne	0x140009178 <.text+0x8178>
140009175: 44 88 12                    	mov	byte ptr [rdx], r10b
140009178: 4d 85 c0                    	test	r8, r8
14000917b: 75 89                       	jne	0x140009106 <.text+0x8106>
14000917d: 49 83 f9 ff                 	cmp	r9, -1
140009181: 75 0e                       	jne	0x140009191 <.text+0x8191>
140009183: 46 88 54 19 ff              	mov	byte ptr [rcx + r11 - 1], r10b
140009188: 45 8d 50 50                 	lea	r10d, [r8 + 80]
14000918c: e9 75 ff ff ff              	jmp	0x140009106 <.text+0x8106>
140009191: 44 88 11                    	mov	byte ptr [rcx], r10b
140009194: e8 47 bc ff ff              	call	0x140004de0 <.text+0x3de0>
140009199: bb 22 00 00 00              	mov	ebx, 34
14000919e: e9 59 ff ff ff              	jmp	0x1400090fc <.text+0x80fc>
1400091a3: cc                          	int3
1400091a4: 48 83 ec 58                 	sub	rsp, 88
1400091a8: 48 8b 05 79 de 00 00        	mov	rax, qword ptr [rip + 56953] # 0x140017028
1400091af: 48 33 c4                    	xor	rax, rsp
1400091b2: 48 89 44 24 40              	mov	qword ptr [rsp + 64], rax
1400091b7: 33 c0                       	xor	eax, eax
1400091b9: 4c 8b ca                    	mov	r9, rdx
1400091bc: 48 83 f8 20                 	cmp	rax, 32
1400091c0: 4c 8b c1                    	mov	r8, rcx
1400091c3: 73 77                       	jae	0x14000923c <.text+0x823c>
1400091c5: c6 44 04 20 00              	mov	byte ptr [rsp + rax + 32], 0
1400091ca: 48 ff c0                    	inc	rax
1400091cd: 48 83 f8 20                 	cmp	rax, 32
1400091d1: 7c f0                       	jl	0x1400091c3 <.text+0x81c3>
1400091d3: 8a 02                       	mov	al, byte ptr [rdx]
1400091d5: eb 1f                       	jmp	0x1400091f6 <.text+0x81f6>
1400091d7: 0f b6 d0                    	movzx	edx, al
1400091da: 48 c1 ea 03                 	shr	rdx, 3
1400091de: 0f b6 c0                    	movzx	eax, al
1400091e1: 83 e0 07                    	and	eax, 7
1400091e4: 0f b6 4c 14 20              	movzx	ecx, byte ptr [rsp + rdx + 32]
1400091e9: 0f ab c1                    	bts	ecx, eax
1400091ec: 49 ff c1                    	inc	r9
1400091ef: 88 4c 14 20                 	mov	byte ptr [rsp + rdx + 32], cl
1400091f3: 41 8a 01                    	mov	al, byte ptr [r9]
1400091f6: 84 c0                       	test	al, al
1400091f8: 75 dd                       	jne	0x1400091d7 <.text+0x81d7>
1400091fa: eb 1f                       	jmp	0x14000921b <.text+0x821b>
1400091fc: 41 0f b6 c1                 	movzx	eax, r9b
140009200: ba 01 00 00 00              	mov	edx, 1
140009205: 41 0f b6 c9                 	movzx	ecx, r9b
140009209: 83 e1 07                    	and	ecx, 7
14000920c: 48 c1 e8 03                 	shr	rax, 3
140009210: d3 e2                       	shl	edx, cl
140009212: 84 54 04 20                 	test	byte ptr [rsp + rax + 32], dl
140009216: 75 1f                       	jne	0x140009237 <.text+0x8237>
140009218: 49 ff c0                    	inc	r8
14000921b: 45 8a 08                    	mov	r9b, byte ptr [r8]
14000921e: 45 84 c9                    	test	r9b, r9b
140009221: 75 d9                       	jne	0x1400091fc <.text+0x81fc>
140009223: 33 c0                       	xor	eax, eax
140009225: 48 8b 4c 24 40              	mov	rcx, qword ptr [rsp + 64]
14000922a: 48 33 cc                    	xor	rcx, rsp
14000922d: e8 ae 38 00 00              	call	0x14000cae0 <.text+0xbae0>
140009232: 48 83 c4 58                 	add	rsp, 88
140009236: c3                          	ret
140009237: 49 8b c0                    	mov	rax, r8
14000923a: eb e9                       	jmp	0x140009225 <.text+0x8225>
14000923c: e8 c7 39 00 00              	call	0x14000cc08 <.text+0xbc08>
140009241: cc                          	int3
140009242: cc                          	int3
140009243: cc                          	int3
140009244: cc                          	int3
140009245: cc                          	int3
140009246: cc                          	int3
140009247: cc                          	int3
140009248: cc                          	int3
140009249: cc                          	int3
14000924a: cc                          	int3
14000924b: cc                          	int3
14000924c: cc                          	int3
14000924d: cc                          	int3
14000924e: cc                          	int3
14000924f: cc                          	int3
140009250: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140009255: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000925a: 57                          	push	rdi
14000925b: 4c 8b d2                    	mov	r10, rdx
14000925e: 48 8d 35 9b 6d ff ff        	lea	rsi, [rip - 37477]      # 0x140000000
140009265: 41 83 e2 0f                 	and	r10d, 15
140009269: 48 8b fa                    	mov	rdi, rdx
14000926c: 49 2b fa                    	sub	rdi, r10
14000926f: 48 8b da                    	mov	rbx, rdx
140009272: 4c 8b c1                    	mov	r8, rcx
140009275: 0f 57 db                    	xorps	xmm3, xmm3
140009278: 49 8d 42 ff                 	lea	rax, [r10 - 1]
14000927c: f3 0f 6f 0f                 	movdqu	xmm1, xmmword ptr [rdi]
140009280: 48 83 f8 0e                 	cmp	rax, 14
140009284: 77 73                       	ja	0x1400092f9 <.text+0x82f9>
140009286: 8b 84 86 5c 95 00 00        	mov	eax, dword ptr [rsi + 4*rax + 38236]
14000928d: 48 03 c6                    	add	rax, rsi
140009290: ff e0                       	jmp	rax
140009292: 66 0f 73 d9 01              	psrldq	xmm1, 1                 # xmm1 = xmm1[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
140009297: eb 60                       	jmp	0x1400092f9 <.text+0x82f9>
140009299: 66 0f 73 d9 02              	psrldq	xmm1, 2                 # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
14000929e: eb 59                       	jmp	0x1400092f9 <.text+0x82f9>
1400092a0: 66 0f 73 d9 03              	psrldq	xmm1, 3                 # xmm1 = xmm1[3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero
1400092a5: eb 52                       	jmp	0x1400092f9 <.text+0x82f9>
1400092a7: 66 0f 73 d9 04              	psrldq	xmm1, 4                 # xmm1 = xmm1[4,5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero
1400092ac: eb 4b                       	jmp	0x1400092f9 <.text+0x82f9>
1400092ae: 66 0f 73 d9 05              	psrldq	xmm1, 5                 # xmm1 = xmm1[5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero
1400092b3: eb 44                       	jmp	0x1400092f9 <.text+0x82f9>
1400092b5: 66 0f 73 d9 06              	psrldq	xmm1, 6                 # xmm1 = xmm1[6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero
1400092ba: eb 3d                       	jmp	0x1400092f9 <.text+0x82f9>
1400092bc: 66 0f 73 d9 07              	psrldq	xmm1, 7                 # xmm1 = xmm1[7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero
1400092c1: eb 36                       	jmp	0x1400092f9 <.text+0x82f9>
1400092c3: 66 0f 73 d9 08              	psrldq	xmm1, 8                 # xmm1 = xmm1[8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero
1400092c8: eb 2f                       	jmp	0x1400092f9 <.text+0x82f9>
1400092ca: 66 0f 73 d9 09              	psrldq	xmm1, 9                 # xmm1 = xmm1[9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero
1400092cf: eb 28                       	jmp	0x1400092f9 <.text+0x82f9>
1400092d1: 66 0f 73 d9 0a              	psrldq	xmm1, 10                # xmm1 = xmm1[10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
1400092d6: eb 21                       	jmp	0x1400092f9 <.text+0x82f9>
1400092d8: 66 0f 73 d9 0b              	psrldq	xmm1, 11                # xmm1 = xmm1[11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
1400092dd: eb 1a                       	jmp	0x1400092f9 <.text+0x82f9>
1400092df: 66 0f 73 d9 0c              	psrldq	xmm1, 12                # xmm1 = xmm1[12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
1400092e4: eb 13                       	jmp	0x1400092f9 <.text+0x82f9>
1400092e6: 66 0f 73 d9 0d              	psrldq	xmm1, 13                # xmm1 = xmm1[13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
1400092eb: eb 0c                       	jmp	0x1400092f9 <.text+0x82f9>
1400092ed: 66 0f 73 d9 0e              	psrldq	xmm1, 14                # xmm1 = xmm1[14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
1400092f2: eb 05                       	jmp	0x1400092f9 <.text+0x82f9>
1400092f4: 66 0f 73 d9 0f              	psrldq	xmm1, 15                # xmm1 = xmm1[15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
1400092f9: 0f 57 c0                    	xorps	xmm0, xmm0
1400092fc: 41 b9 0f 00 00 00           	mov	r9d, 15
140009302: 66 0f 74 c1                 	pcmpeqb	xmm0, xmm1
140009306: 66 0f d7 c0                 	pmovmskb	eax, xmm0
14000930a: 85 c0                       	test	eax, eax
14000930c: 0f 84 33 01 00 00           	je	0x140009445 <.text+0x8445>
140009312: 0f bc d0                    	bsf	edx, eax
140009315: 4d 85 d2                    	test	r10, r10
140009318: 75 06                       	jne	0x140009320 <.text+0x8320>
14000931a: 45 8d 59 f2                 	lea	r11d, [r9 - 14]
14000931e: eb 14                       	jmp	0x140009334 <.text+0x8334>
140009320: 45 33 db                    	xor	r11d, r11d
140009323: 8b c2                       	mov	eax, edx
140009325: b9 10 00 00 00              	mov	ecx, 16
14000932a: 49 2b ca                    	sub	rcx, r10
14000932d: 48 3b c1                    	cmp	rax, rcx
140009330: 41 0f 92 c3                 	setb	r11b
140009334: 41 8b c1                    	mov	eax, r9d
140009337: 2b c2                       	sub	eax, edx
140009339: 41 3b c1                    	cmp	eax, r9d
14000933c: 0f 87 cf 00 00 00           	ja	0x140009411 <.text+0x8411>
140009342: 8b 8c 86 98 95 00 00        	mov	ecx, dword ptr [rsi + 4*rax + 38296]
140009349: 48 03 ce                    	add	rcx, rsi
14000934c: ff e1                       	jmp	rcx
14000934e: 66 0f 73 f9 01              	pslldq	xmm1, 1                 # xmm1 = zero,xmm1[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14]
140009353: 66 0f 73 d9 01              	psrldq	xmm1, 1                 # xmm1 = xmm1[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
140009358: e9 b4 00 00 00              	jmp	0x140009411 <.text+0x8411>
14000935d: 66 0f 73 f9 02              	pslldq	xmm1, 2                 # xmm1 = zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
140009362: 66 0f 73 d9 02              	psrldq	xmm1, 2                 # xmm1 = xmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero
140009367: e9 a5 00 00 00              	jmp	0x140009411 <.text+0x8411>
14000936c: 66 0f 73 f9 03              	pslldq	xmm1, 3                 # xmm1 = zero,zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9,10,11,12]
140009371: 66 0f 73 d9 03              	psrldq	xmm1, 3                 # xmm1 = xmm1[3,4,5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero
140009376: e9 96 00 00 00              	jmp	0x140009411 <.text+0x8411>
14000937b: 66 0f 73 f9 04              	pslldq	xmm1, 4                 # xmm1 = zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9,10,11]
140009380: 66 0f 73 d9 04              	psrldq	xmm1, 4                 # xmm1 = xmm1[4,5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero
140009385: e9 87 00 00 00              	jmp	0x140009411 <.text+0x8411>
14000938a: 66 0f 73 f9 05              	pslldq	xmm1, 5                 # xmm1 = zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9,10]
14000938f: 66 0f 73 d9 05              	psrldq	xmm1, 5                 # xmm1 = xmm1[5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero
140009394: eb 7b                       	jmp	0x140009411 <.text+0x8411>
140009396: 66 0f 73 f9 06              	pslldq	xmm1, 6                 # xmm1 = zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7,8,9]
14000939b: 66 0f 73 d9 06              	psrldq	xmm1, 6                 # xmm1 = xmm1[6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero
1400093a0: eb 6f                       	jmp	0x140009411 <.text+0x8411>
1400093a2: 66 0f 73 f9 07              	pslldq	xmm1, 7                 # xmm1 = zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7,8]
1400093a7: 66 0f 73 d9 07              	psrldq	xmm1, 7                 # xmm1 = xmm1[7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero
1400093ac: eb 63                       	jmp	0x140009411 <.text+0x8411>
1400093ae: 66 0f 73 f9 08              	pslldq	xmm1, 8                 # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6,7]
1400093b3: 66 0f 73 d9 08              	psrldq	xmm1, 8                 # xmm1 = xmm1[8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero
1400093b8: eb 57                       	jmp	0x140009411 <.text+0x8411>
1400093ba: 66 0f 73 f9 09              	pslldq	xmm1, 9                 # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5,6]
1400093bf: 66 0f 73 d9 09              	psrldq	xmm1, 9                 # xmm1 = xmm1[9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero
1400093c4: eb 4b                       	jmp	0x140009411 <.text+0x8411>
1400093c6: 66 0f 73 f9 0a              	pslldq	xmm1, 10                # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4,5]
1400093cb: 66 0f 73 d9 0a              	psrldq	xmm1, 10                # xmm1 = xmm1[10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
1400093d0: eb 3f                       	jmp	0x140009411 <.text+0x8411>
1400093d2: 66 0f 73 f9 0b              	pslldq	xmm1, 11                # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3,4]
1400093d7: 66 0f 73 d9 0b              	psrldq	xmm1, 11                # xmm1 = xmm1[11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
1400093dc: eb 33                       	jmp	0x140009411 <.text+0x8411>
1400093de: 66 0f 73 f9 0c              	pslldq	xmm1, 12                # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2,3]
1400093e3: 66 0f 73 d9 0c              	psrldq	xmm1, 12                # xmm1 = xmm1[12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
1400093e8: eb 27                       	jmp	0x140009411 <.text+0x8411>
1400093ea: 66 0f 73 f9 0d              	pslldq	xmm1, 13                # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1,2]
1400093ef: 66 0f 73 d9 0d              	psrldq	xmm1, 13                # xmm1 = xmm1[13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
1400093f4: eb 1b                       	jmp	0x140009411 <.text+0x8411>
1400093f6: 66 0f 73 f9 0e              	pslldq	xmm1, 14                # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0,1]
1400093fb: 66 0f 73 d9 0e              	psrldq	xmm1, 14                # xmm1 = xmm1[14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
140009400: eb 0f                       	jmp	0x140009411 <.text+0x8411>
140009402: 66 0f 73 f9 0f              	pslldq	xmm1, 15                # xmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm1[0]
140009407: 66 0f 73 d9 0f              	psrldq	xmm1, 15                # xmm1 = xmm1[15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
14000940c: eb 03                       	jmp	0x140009411 <.text+0x8411>
14000940e: 0f 57 c9                    	xorps	xmm1, xmm1
140009411: 45 85 db                    	test	r11d, r11d
140009414: 0f 85 e6 00 00 00           	jne	0x140009500 <.text+0x8500>
14000941a: f3 0f 6f 57 10              	movdqu	xmm2, xmmword ptr [rdi + 16]
14000941f: 66 0f 6f c2                 	movdqa	xmm0, xmm2
140009423: 66 0f 74 c3                 	pcmpeqb	xmm0, xmm3
140009427: 66 0f d7 c0                 	pmovmskb	eax, xmm0
14000942b: 85 c0                       	test	eax, eax
14000942d: 75 35                       	jne	0x140009464 <.text+0x8464>
14000942f: 48 8b d3                    	mov	rdx, rbx
140009432: 49 8b c8                    	mov	rcx, r8
140009435: 48 8b 5c 24 10              	mov	rbx, qword ptr [rsp + 16]
14000943a: 48 8b 74 24 18              	mov	rsi, qword ptr [rsp + 24]
14000943f: 5f                          	pop	rdi
140009440: e9 5f fd ff ff              	jmp	0x1400091a4 <.text+0x81a4>
140009445: 4d 85 d2                    	test	r10, r10
140009448: 75 d0                       	jne	0x14000941a <.text+0x841a>
14000944a: 44 38 57 01                 	cmp	byte ptr [rdi + 1], r10b
14000944e: 0f 84 ac 00 00 00           	je	0x140009500 <.text+0x8500>
140009454: 48 8b 5c 24 10              	mov	rbx, qword ptr [rsp + 16]
140009459: 48 8b 74 24 18              	mov	rsi, qword ptr [rsp + 24]
14000945e: 5f                          	pop	rdi
14000945f: e9 40 fd ff ff              	jmp	0x1400091a4 <.text+0x81a4>
140009464: 0f bc c8                    	bsf	ecx, eax
140009467: 8b c1                       	mov	eax, ecx
140009469: 49 2b c2                    	sub	rax, r10
14000946c: 48 83 c0 10                 	add	rax, 16
140009470: 48 83 f8 10                 	cmp	rax, 16
140009474: 77 b9                       	ja	0x14000942f <.text+0x842f>
140009476: 44 2b c9                    	sub	r9d, ecx
140009479: 41 83 f9 0f                 	cmp	r9d, 15
14000947d: 77 79                       	ja	0x1400094f8 <.text+0x84f8>
14000947f: 42 8b 8c 8e d8 95 00 00     	mov	ecx, dword ptr [rsi + 4*r9 + 38360]
140009487: 48 03 ce                    	add	rcx, rsi
14000948a: ff e1                       	jmp	rcx
14000948c: 66 0f 73 fa 01              	pslldq	xmm2, 1                 # xmm2 = zero,xmm2[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14]
140009491: eb 65                       	jmp	0x1400094f8 <.text+0x84f8>
140009493: 66 0f 73 fa 02              	pslldq	xmm2, 2                 # xmm2 = zero,zero,xmm2[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
140009498: eb 5e                       	jmp	0x1400094f8 <.text+0x84f8>
14000949a: 66 0f 73 fa 03              	pslldq	xmm2, 3                 # xmm2 = zero,zero,zero,xmm2[0,1,2,3,4,5,6,7,8,9,10,11,12]
14000949f: eb 57                       	jmp	0x1400094f8 <.text+0x84f8>
1400094a1: 66 0f 73 fa 04              	pslldq	xmm2, 4                 # xmm2 = zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7,8,9,10,11]
1400094a6: eb 50                       	jmp	0x1400094f8 <.text+0x84f8>
1400094a8: 66 0f 73 fa 05              	pslldq	xmm2, 5                 # xmm2 = zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7,8,9,10]
1400094ad: eb 49                       	jmp	0x1400094f8 <.text+0x84f8>
1400094af: 66 0f 73 fa 06              	pslldq	xmm2, 6                 # xmm2 = zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7,8,9]
1400094b4: eb 42                       	jmp	0x1400094f8 <.text+0x84f8>
1400094b6: 66 0f 73 fa 07              	pslldq	xmm2, 7                 # xmm2 = zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7,8]
1400094bb: eb 3b                       	jmp	0x1400094f8 <.text+0x84f8>
1400094bd: 66 0f 73 fa 08              	pslldq	xmm2, 8                 # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7]
1400094c2: eb 34                       	jmp	0x1400094f8 <.text+0x84f8>
1400094c4: 66 0f 73 fa 09              	pslldq	xmm2, 9                 # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6]
1400094c9: eb 2d                       	jmp	0x1400094f8 <.text+0x84f8>
1400094cb: 66 0f 73 fa 0a              	pslldq	xmm2, 10                # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5]
1400094d0: eb 26                       	jmp	0x1400094f8 <.text+0x84f8>
1400094d2: 66 0f 73 fa 0b              	pslldq	xmm2, 11                # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4]
1400094d7: eb 1f                       	jmp	0x1400094f8 <.text+0x84f8>
1400094d9: 66 0f 73 fa 0c              	pslldq	xmm2, 12                # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3]
1400094de: eb 18                       	jmp	0x1400094f8 <.text+0x84f8>
1400094e0: 66 0f 73 fa 0d              	pslldq	xmm2, 13                # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2]
1400094e5: eb 11                       	jmp	0x1400094f8 <.text+0x84f8>
1400094e7: 66 0f 73 fa 0e              	pslldq	xmm2, 14                # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1]
1400094ec: eb 0a                       	jmp	0x1400094f8 <.text+0x84f8>
1400094ee: 66 0f 73 fa 0f              	pslldq	xmm2, 15                # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0]
1400094f3: eb 03                       	jmp	0x1400094f8 <.text+0x84f8>
1400094f5: 0f 57 d2                    	xorps	xmm2, xmm2
1400094f8: 66 0f eb d1                 	por	xmm2, xmm1
1400094fc: 66 0f 6f ca                 	movdqa	xmm1, xmm2
140009500: 41 0f b6 00                 	movzx	eax, byte ptr [r8]
140009504: 84 c0                       	test	al, al
140009506: 74 34                       	je	0x14000953c <.text+0x853c>
140009508: 0f 1f 84 00 00 00 00 00     	nop	dword ptr [rax + rax]
140009510: 0f be c0                    	movsx	eax, al
140009513: 66 0f 6e c0                 	movd	xmm0, eax
140009517: 66 0f 60 c0                 	punpcklbw	xmm0, xmm0      # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
14000951b: 66 0f 60 c0                 	punpcklbw	xmm0, xmm0      # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
14000951f: 66 0f 70 c0 00              	pshufd	xmm0, xmm0, 0           # xmm0 = xmm0[0,0,0,0]
140009524: 66 0f 74 c1                 	pcmpeqb	xmm0, xmm1
140009528: 66 0f d7 c0                 	pmovmskb	eax, xmm0
14000952c: 85 c0                       	test	eax, eax
14000952e: 75 1a                       	jne	0x14000954a <.text+0x854a>
140009530: 41 0f b6 40 01              	movzx	eax, byte ptr [r8 + 1]
140009535: 49 ff c0                    	inc	r8
140009538: 84 c0                       	test	al, al
14000953a: 75 d4                       	jne	0x140009510 <.text+0x8510>
14000953c: 33 c0                       	xor	eax, eax
14000953e: 48 8b 5c 24 10              	mov	rbx, qword ptr [rsp + 16]
140009543: 48 8b 74 24 18              	mov	rsi, qword ptr [rsp + 24]
140009548: 5f                          	pop	rdi
140009549: c3                          	ret
14000954a: 48 8b 5c 24 10              	mov	rbx, qword ptr [rsp + 16]
14000954f: 49 8b c0                    	mov	rax, r8
140009552: 48 8b 74 24 18              	mov	rsi, qword ptr [rsp + 24]
140009557: 5f                          	pop	rdi
140009558: c3                          	ret
140009559: 0f 1f 00                    	nop	dword ptr [rax]
14000955c: 92                          	xchg	eax, edx
14000955d: 92                          	xchg	eax, edx
14000955e: 00 00                       	add	byte ptr [rax], al
140009560: 99                          	cdq
140009561: 92                          	xchg	eax, edx
140009562: 00 00                       	add	byte ptr [rax], al
140009564: a0 92 00 00 a7 92 00 00 ae  	movabs	al, byte ptr [-5908722081243070318]
14000956d: 92                          	xchg	eax, edx
14000956e: 00 00                       	add	byte ptr [rax], al
140009570: b5 92                       	mov	ch, -110
140009572: 00 00                       	add	byte ptr [rax], al
140009574: bc 92 00 00 c3              	mov	esp, 3271557266
140009579: 92                          	xchg	eax, edx
14000957a: 00 00                       	add	byte ptr [rax], al
14000957c: ca 92 00                    	retf	146
14000957f: 00 d1                       	add	cl, dl
140009581: 92                          	xchg	eax, edx
140009582: 00 00                       	add	byte ptr [rax], al
140009584: d8 92 00 00 df 92           	fcom	dword ptr [rdx - 1830879232]
14000958a: 00 00                       	add	byte ptr [rax], al
14000958c: e6 92                       	out	146, al
14000958e: 00 00                       	add	byte ptr [rax], al
140009590: ed                          	in	eax, dx
140009591: 92                          	xchg	eax, edx
140009592: 00 00                       	add	byte ptr [rax], al
140009594: f4                          	hlt
140009595: 92                          	xchg	eax, edx
140009596: 00 00                       	add	byte ptr [rax], al
140009598: 4e 93                       	xchg	rax, rbx
14000959a: 00 00                       	add	byte ptr [rax], al
14000959c: 5d                          	pop	rbp
14000959d: 93                          	xchg	eax, ebx
14000959e: 00 00                       	add	byte ptr [rax], al
1400095a0: 6c                          	insb	byte ptr es:[rdi], dx
1400095a1: 93                          	xchg	eax, ebx
1400095a2: 00 00                       	add	byte ptr [rax], al
1400095a4: 7b 93                       	jnp	0x140009539 <.text+0x8539>
1400095a6: 00 00                       	add	byte ptr [rax], al
1400095a8: 8a 93 00 00 96 93           	mov	dl, byte ptr [rbx - 1818886144]
1400095ae: 00 00                       	add	byte ptr [rax], al
1400095b0: a2 93 00 00 ae 93 00 00 ba  	movabs	byte ptr [-5044030948375527277], al
1400095b9: 93                          	xchg	eax, ebx
1400095ba: 00 00                       	add	byte ptr [rax], al
1400095bc: c6 93 00 00 d2 93           	<unknown>
1400095c2: 00 00                       	add	byte ptr [rax], al
1400095c4: de 93 00 00 ea 93           	ficom	word ptr [rbx - 1813381120]
1400095ca: 00 00                       	add	byte ptr [rax], al
1400095cc: f6 93 00 00 02 94           	not	byte ptr [rbx - 1811808256]
1400095d2: 00 00                       	add	byte ptr [rax], al
1400095d4: 0e                          	<unknown>
1400095d5: 94                          	xchg	eax, esp
1400095d6: 00 00                       	add	byte ptr [rax], al
1400095d8: 8c 94 00 00 93 94 00        	mov	word ptr [rax + rax + 9736960], ss
1400095df: 00 9a 94 00 00 a1           	add	byte ptr [rdx - 1593835372], bl
1400095e5: 94                          	xchg	eax, esp
1400095e6: 00 00                       	add	byte ptr [rax], al
1400095e8: a8 94                       	test	al, -108
1400095ea: 00 00                       	add	byte ptr [rax], al
1400095ec: af                          	scasd	eax, dword ptr es:[rdi]
1400095ed: 94                          	xchg	eax, esp
1400095ee: 00 00                       	add	byte ptr [rax], al
1400095f0: b6 94                       	mov	dh, -108
1400095f2: 00 00                       	add	byte ptr [rax], al
1400095f4: bd 94 00 00 c4              	mov	ebp, 3288334484
1400095f9: 94                          	xchg	eax, esp
1400095fa: 00 00                       	add	byte ptr [rax], al
1400095fc: cb                          	retf
1400095fd: 94                          	xchg	eax, esp
1400095fe: 00 00                       	add	byte ptr [rax], al
140009600: d2 94 00 00 d9 94 00        	rcl	byte ptr [rax + rax + 9754880], cl
140009607: 00 e0                       	add	al, ah
140009609: 94                          	xchg	eax, esp
14000960a: 00 00                       	add	byte ptr [rax], al
14000960c: e7 94                       	out	148, eax
14000960e: 00 00                       	add	byte ptr [rax], al
140009610: ee                          	out	dx, al
140009611: 94                          	xchg	eax, esp
140009612: 00 00                       	add	byte ptr [rax], al
140009614: f5                          	cmc
140009615: 94                          	xchg	eax, esp
140009616: 00 00                       	add	byte ptr [rax], al
140009618: 45 33 c0                    	xor	r8d, r8d
14000961b: e9 00 00 00 00              	jmp	0x140009620 <.text+0x8620>
140009620: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140009625: 57                          	push	rdi
140009626: 48 83 ec 40                 	sub	rsp, 64
14000962a: 48 8b da                    	mov	rbx, rdx
14000962d: 48 8b f9                    	mov	rdi, rcx
140009630: 48 85 c9                    	test	rcx, rcx
140009633: 75 14                       	jne	0x140009649 <.text+0x8649>
140009635: e8 a6 b7 ff ff              	call	0x140004de0 <.text+0x3de0>
14000963a: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140009640: e8 7b b6 ff ff              	call	0x140004cc0 <.text+0x3cc0>
140009645: 33 c0                       	xor	eax, eax
140009647: eb 60                       	jmp	0x1400096a9 <.text+0x86a9>
140009649: 48 85 db                    	test	rbx, rbx
14000964c: 74 e7                       	je	0x140009635 <.text+0x8635>
14000964e: 48 3b fb                    	cmp	rdi, rbx
140009651: 73 f2                       	jae	0x140009645 <.text+0x8645>
140009653: 49 8b d0                    	mov	rdx, r8
140009656: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
14000965b: e8 d4 ac ff ff              	call	0x140004334 <.text+0x3334>
140009660: 48 8b 4c 24 30              	mov	rcx, qword ptr [rsp + 48]
140009665: 48 8d 53 ff                 	lea	rdx, [rbx - 1]
140009669: 83 79 08 00                 	cmp	dword ptr [rcx + 8], 0
14000966d: 74 24                       	je	0x140009693 <.text+0x8693>
14000966f: 48 ff ca                    	dec	rdx
140009672: 48 3b fa                    	cmp	rdi, rdx
140009675: 77 0a                       	ja	0x140009681 <.text+0x8681>
140009677: 0f b6 02                    	movzx	eax, byte ptr [rdx]
14000967a: f6 44 08 19 04              	test	byte ptr [rax + rcx + 25], 4
14000967f: 75 ee                       	jne	0x14000966f <.text+0x866f>
140009681: 48 8b cb                    	mov	rcx, rbx
140009684: 48 2b ca                    	sub	rcx, rdx
140009687: 48 8b d3                    	mov	rdx, rbx
14000968a: 83 e1 01                    	and	ecx, 1
14000968d: 48 2b d1                    	sub	rdx, rcx
140009690: 48 ff ca                    	dec	rdx
140009693: 80 7c 24 38 00              	cmp	byte ptr [rsp + 56], 0
140009698: 74 0c                       	je	0x1400096a6 <.text+0x86a6>
14000969a: 48 8b 4c 24 20              	mov	rcx, qword ptr [rsp + 32]
14000969f: 83 a1 a8 03 00 00 fd        	and	dword ptr [rcx + 936], -3
1400096a6: 48 8b c2                    	mov	rax, rdx
1400096a9: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
1400096ae: 48 83 c4 40                 	add	rsp, 64
1400096b2: 5f                          	pop	rdi
1400096b3: c3                          	ret
1400096b4: 40 55                       	push	rbp
1400096b6: 41 54                       	push	r12
1400096b8: 41 55                       	push	r13
1400096ba: 41 56                       	push	r14
1400096bc: 41 57                       	push	r15
1400096be: 48 83 ec 60                 	sub	rsp, 96
1400096c2: 48 8d 6c 24 50              	lea	rbp, [rsp + 80]
1400096c7: 48 89 5d 40                 	mov	qword ptr [rbp + 64], rbx
1400096cb: 48 89 75 48                 	mov	qword ptr [rbp + 72], rsi
1400096cf: 48 89 7d 50                 	mov	qword ptr [rbp + 80], rdi
1400096d3: 48 8b 05 4e d9 00 00        	mov	rax, qword ptr [rip + 55630] # 0x140017028
1400096da: 48 33 c5                    	xor	rax, rbp
1400096dd: 48 89 45 08                 	mov	qword ptr [rbp + 8], rax
1400096e1: 48 63 5d 60                 	movsxd	rbx, dword ptr [rbp + 96]
1400096e5: 4d 8b f9                    	mov	r15, r9
1400096e8: 48 89 55 00                 	mov	qword ptr [rbp], rdx
1400096ec: 45 8b e8                    	mov	r13d, r8d
1400096ef: 48 8b f9                    	mov	rdi, rcx
1400096f2: 85 db                       	test	ebx, ebx
1400096f4: 7e 14                       	jle	0x14000970a <.text+0x870a>
1400096f6: 48 8b d3                    	mov	rdx, rbx
1400096f9: 49 8b c9                    	mov	rcx, r9
1400096fc: e8 9f 18 00 00              	call	0x14000afa0 <.text+0x9fa0>
140009701: 3b c3                       	cmp	eax, ebx
140009703: 8d 58 01                    	lea	ebx, [rax + 1]
140009706: 7c 02                       	jl	0x14000970a <.text+0x870a>
140009708: 8b d8                       	mov	ebx, eax
14000970a: 44 8b 75 78                 	mov	r14d, dword ptr [rbp + 120]
14000970e: 45 85 f6                    	test	r14d, r14d
140009711: 75 07                       	jne	0x14000971a <.text+0x871a>
140009713: 48 8b 07                    	mov	rax, qword ptr [rdi]
140009716: 44 8b 70 0c                 	mov	r14d, dword ptr [rax + 12]
14000971a: f7 9d 80 00 00 00           	neg	dword ptr [rbp + 128]
140009720: 44 8b cb                    	mov	r9d, ebx
140009723: 4d 8b c7                    	mov	r8, r15
140009726: 41 8b ce                    	mov	ecx, r14d
140009729: 1b d2                       	sbb	edx, edx
14000972b: 83 64 24 28 00              	and	dword ptr [rsp + 40], 0
140009730: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
140009736: 83 e2 08                    	and	edx, 8
140009739: ff c2                       	inc	edx
14000973b: e8 5c ce ff ff              	call	0x14000659c <.text+0x559c>
140009740: 4c 63 e0                    	movsxd	r12, eax
140009743: 85 c0                       	test	eax, eax
140009745: 0f 84 36 02 00 00           	je	0x140009981 <.text+0x8981>
14000974b: 49 8b c4                    	mov	rax, r12
14000974e: 49 b8 f0 ff ff ff ff ff ff 0f       	movabs	r8, 1152921504606846960
140009758: 48 03 c0                    	add	rax, rax
14000975b: 48 8d 48 10                 	lea	rcx, [rax + 16]
14000975f: 48 3b c1                    	cmp	rax, rcx
140009762: 48 1b d2                    	sbb	rdx, rdx
140009765: 48 23 d1                    	and	rdx, rcx
140009768: 74 53                       	je	0x1400097bd <.text+0x87bd>
14000976a: 48 81 fa 00 04 00 00        	cmp	rdx, 1024
140009771: 77 2e                       	ja	0x1400097a1 <.text+0x87a1>
140009773: 48 8d 42 0f                 	lea	rax, [rdx + 15]
140009777: 48 3b c2                    	cmp	rax, rdx
14000977a: 77 03                       	ja	0x14000977f <.text+0x877f>
14000977c: 49 8b c0                    	mov	rax, r8
14000977f: 48 83 e0 f0                 	and	rax, -16
140009783: e8 28 36 00 00              	call	0x14000cdb0 <.text+0xbdb0>
140009788: 48 2b e0                    	sub	rsp, rax
14000978b: 48 8d 74 24 50              	lea	rsi, [rsp + 80]
140009790: 48 85 f6                    	test	rsi, rsi
140009793: 0f 84 ce 01 00 00           	je	0x140009967 <.text+0x8967>
140009799: c7 06 cc cc 00 00           	mov	dword ptr [rsi], 52428
14000979f: eb 16                       	jmp	0x1400097b7 <.text+0x87b7>
1400097a1: 48 8b ca                    	mov	rcx, rdx
1400097a4: e8 c7 dd ff ff              	call	0x140007570 <.text+0x6570>
1400097a9: 48 8b f0                    	mov	rsi, rax
1400097ac: 48 85 c0                    	test	rax, rax
1400097af: 74 0e                       	je	0x1400097bf <.text+0x87bf>
1400097b1: c7 00 dd dd 00 00           	mov	dword ptr [rax], 56797
1400097b7: 48 83 c6 10                 	add	rsi, 16
1400097bb: eb 02                       	jmp	0x1400097bf <.text+0x87bf>
1400097bd: 33 f6                       	xor	esi, esi
1400097bf: 48 85 f6                    	test	rsi, rsi
1400097c2: 0f 84 9f 01 00 00           	je	0x140009967 <.text+0x8967>
1400097c8: 44 89 64 24 28              	mov	dword ptr [rsp + 40], r12d
1400097cd: 44 8b cb                    	mov	r9d, ebx
1400097d0: 4d 8b c7                    	mov	r8, r15
1400097d3: 48 89 74 24 20              	mov	qword ptr [rsp + 32], rsi
1400097d8: ba 01 00 00 00              	mov	edx, 1
1400097dd: 41 8b ce                    	mov	ecx, r14d
1400097e0: e8 b7 cd ff ff              	call	0x14000659c <.text+0x559c>
1400097e5: 85 c0                       	test	eax, eax
1400097e7: 0f 84 7a 01 00 00           	je	0x140009967 <.text+0x8967>
1400097ed: 48 83 64 24 40 00           	and	qword ptr [rsp + 64], 0
1400097f3: 45 8b cc                    	mov	r9d, r12d
1400097f6: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
1400097fc: 4c 8b c6                    	mov	r8, rsi
1400097ff: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
140009805: 41 8b d5                    	mov	edx, r13d
140009808: 4c 8b 7d 00                 	mov	r15, qword ptr [rbp]
14000980c: 83 64 24 28 00              	and	dword ptr [rsp + 40], 0
140009811: 49 8b cf                    	mov	rcx, r15
140009814: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000981a: e8 1d e8 ff ff              	call	0x14000803c <.text+0x703c>
14000981f: 48 63 f8                    	movsxd	rdi, eax
140009822: 85 c0                       	test	eax, eax
140009824: 0f 84 3d 01 00 00           	je	0x140009967 <.text+0x8967>
14000982a: ba 00 04 00 00              	mov	edx, 1024
14000982f: 44 85 ea                    	test	edx, r13d
140009832: 74 52                       	je	0x140009886 <.text+0x8886>
140009834: 8b 45 70                    	mov	eax, dword ptr [rbp + 112]
140009837: 85 c0                       	test	eax, eax
140009839: 0f 84 2a 01 00 00           	je	0x140009969 <.text+0x8969>
14000983f: 3b f8                       	cmp	edi, eax
140009841: 0f 8f 20 01 00 00           	jg	0x140009967 <.text+0x8967>
140009847: 48 83 64 24 40 00           	and	qword ptr [rsp + 64], 0
14000984d: 45 8b cc                    	mov	r9d, r12d
140009850: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
140009856: 4c 8b c6                    	mov	r8, rsi
140009859: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
14000985f: 41 8b d5                    	mov	edx, r13d
140009862: 89 44 24 28                 	mov	dword ptr [rsp + 40], eax
140009866: 49 8b cf                    	mov	rcx, r15
140009869: 48 8b 45 68                 	mov	rax, qword ptr [rbp + 104]
14000986d: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140009872: e8 c5 e7 ff ff              	call	0x14000803c <.text+0x703c>
140009877: 8b f8                       	mov	edi, eax
140009879: 85 c0                       	test	eax, eax
14000987b: 0f 85 e8 00 00 00           	jne	0x140009969 <.text+0x8969>
140009881: e9 e1 00 00 00              	jmp	0x140009967 <.text+0x8967>
140009886: 48 8b cf                    	mov	rcx, rdi
140009889: 48 03 c9                    	add	rcx, rcx
14000988c: 48 8d 41 10                 	lea	rax, [rcx + 16]
140009890: 48 3b c8                    	cmp	rcx, rax
140009893: 48 1b c9                    	sbb	rcx, rcx
140009896: 48 23 c8                    	and	rcx, rax
140009899: 74 53                       	je	0x1400098ee <.text+0x88ee>
14000989b: 48 3b ca                    	cmp	rcx, rdx
14000989e: 77 35                       	ja	0x1400098d5 <.text+0x88d5>
1400098a0: 48 8d 41 0f                 	lea	rax, [rcx + 15]
1400098a4: 48 3b c1                    	cmp	rax, rcx
1400098a7: 77 0a                       	ja	0x1400098b3 <.text+0x88b3>
1400098a9: 48 b8 f0 ff ff ff ff ff ff 0f       	movabs	rax, 1152921504606846960
1400098b3: 48 83 e0 f0                 	and	rax, -16
1400098b7: e8 f4 34 00 00              	call	0x14000cdb0 <.text+0xbdb0>
1400098bc: 48 2b e0                    	sub	rsp, rax
1400098bf: 48 8d 5c 24 50              	lea	rbx, [rsp + 80]
1400098c4: 48 85 db                    	test	rbx, rbx
1400098c7: 0f 84 9a 00 00 00           	je	0x140009967 <.text+0x8967>
1400098cd: c7 03 cc cc 00 00           	mov	dword ptr [rbx], 52428
1400098d3: eb 13                       	jmp	0x1400098e8 <.text+0x88e8>
1400098d5: e8 96 dc ff ff              	call	0x140007570 <.text+0x6570>
1400098da: 48 8b d8                    	mov	rbx, rax
1400098dd: 48 85 c0                    	test	rax, rax
1400098e0: 74 0e                       	je	0x1400098f0 <.text+0x88f0>
1400098e2: c7 00 dd dd 00 00           	mov	dword ptr [rax], 56797
1400098e8: 48 83 c3 10                 	add	rbx, 16
1400098ec: eb 02                       	jmp	0x1400098f0 <.text+0x88f0>
1400098ee: 33 db                       	xor	ebx, ebx
1400098f0: 48 85 db                    	test	rbx, rbx
1400098f3: 74 72                       	je	0x140009967 <.text+0x8967>
1400098f5: 48 83 64 24 40 00           	and	qword ptr [rsp + 64], 0
1400098fb: 45 8b cc                    	mov	r9d, r12d
1400098fe: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
140009904: 4c 8b c6                    	mov	r8, rsi
140009907: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
14000990d: 41 8b d5                    	mov	edx, r13d
140009910: 89 7c 24 28                 	mov	dword ptr [rsp + 40], edi
140009914: 49 8b cf                    	mov	rcx, r15
140009917: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000991c: e8 1b e7 ff ff              	call	0x14000803c <.text+0x703c>
140009921: 85 c0                       	test	eax, eax
140009923: 74 31                       	je	0x140009956 <.text+0x8956>
140009925: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
14000992b: 33 d2                       	xor	edx, edx
14000992d: 48 21 54 24 30              	and	qword ptr [rsp + 48], rdx
140009932: 44 8b cf                    	mov	r9d, edi
140009935: 8b 45 70                    	mov	eax, dword ptr [rbp + 112]
140009938: 4c 8b c3                    	mov	r8, rbx
14000993b: 41 8b ce                    	mov	ecx, r14d
14000993e: 85 c0                       	test	eax, eax
140009940: 75 65                       	jne	0x1400099a7 <.text+0x89a7>
140009942: 21 54 24 28                 	and	dword ptr [rsp + 40], edx
140009946: 48 21 54 24 20              	and	qword ptr [rsp + 32], rdx
14000994b: e8 a8 cc ff ff              	call	0x1400065f8 <.text+0x55f8>
140009950: 8b f8                       	mov	edi, eax
140009952: 85 c0                       	test	eax, eax
140009954: 75 60                       	jne	0x1400099b6 <.text+0x89b6>
140009956: 48 8d 4b f0                 	lea	rcx, [rbx - 16]
14000995a: 81 39 dd dd 00 00           	cmp	dword ptr [rcx], 56797
140009960: 75 05                       	jne	0x140009967 <.text+0x8967>
140009962: e8 11 b5 ff ff              	call	0x140004e78 <.text+0x3e78>
140009967: 33 ff                       	xor	edi, edi
140009969: 48 85 f6                    	test	rsi, rsi
14000996c: 74 11                       	je	0x14000997f <.text+0x897f>
14000996e: 48 8d 4e f0                 	lea	rcx, [rsi - 16]
140009972: 81 39 dd dd 00 00           	cmp	dword ptr [rcx], 56797
140009978: 75 05                       	jne	0x14000997f <.text+0x897f>
14000997a: e8 f9 b4 ff ff              	call	0x140004e78 <.text+0x3e78>
14000997f: 8b c7                       	mov	eax, edi
140009981: 48 8b 4d 08                 	mov	rcx, qword ptr [rbp + 8]
140009985: 48 33 cd                    	xor	rcx, rbp
140009988: e8 53 31 00 00              	call	0x14000cae0 <.text+0xbae0>
14000998d: 48 8b 5d 40                 	mov	rbx, qword ptr [rbp + 64]
140009991: 48 8b 75 48                 	mov	rsi, qword ptr [rbp + 72]
140009995: 48 8b 7d 50                 	mov	rdi, qword ptr [rbp + 80]
140009999: 48 8d 65 10                 	lea	rsp, [rbp + 16]
14000999d: 41 5f                       	pop	r15
14000999f: 41 5e                       	pop	r14
1400099a1: 41 5d                       	pop	r13
1400099a3: 41 5c                       	pop	r12
1400099a5: 5d                          	pop	rbp
1400099a6: c3                          	ret
1400099a7: 89 44 24 28                 	mov	dword ptr [rsp + 40], eax
1400099ab: 48 8b 45 68                 	mov	rax, qword ptr [rbp + 104]
1400099af: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
1400099b4: eb 95                       	jmp	0x14000994b <.text+0x894b>
1400099b6: 48 8d 4b f0                 	lea	rcx, [rbx - 16]
1400099ba: 81 39 dd dd 00 00           	cmp	dword ptr [rcx], 56797
1400099c0: 75 a7                       	jne	0x140009969 <.text+0x8969>
1400099c2: e8 b1 b4 ff ff              	call	0x140004e78 <.text+0x3e78>
1400099c7: eb a0                       	jmp	0x140009969 <.text+0x8969>
1400099c9: cc                          	int3
1400099ca: cc                          	int3
1400099cb: cc                          	int3
1400099cc: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
1400099d1: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
1400099d6: 57                          	push	rdi
1400099d7: 48 83 ec 70                 	sub	rsp, 112
1400099db: 48 8b f2                    	mov	rsi, rdx
1400099de: 49 8b d9                    	mov	rbx, r9
1400099e1: 48 8b d1                    	mov	rdx, rcx
1400099e4: 41 8b f8                    	mov	edi, r8d
1400099e7: 48 8d 4c 24 50              	lea	rcx, [rsp + 80]
1400099ec: e8 43 a9 ff ff              	call	0x140004334 <.text+0x3334>
1400099f1: 8b 84 24 c0 00 00 00        	mov	eax, dword ptr [rsp + 192]
1400099f8: 48 8d 4c 24 58              	lea	rcx, [rsp + 88]
1400099fd: 89 44 24 40                 	mov	dword ptr [rsp + 64], eax
140009a01: 4c 8b cb                    	mov	r9, rbx
140009a04: 8b 84 24 b8 00 00 00        	mov	eax, dword ptr [rsp + 184]
140009a0b: 44 8b c7                    	mov	r8d, edi
140009a0e: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
140009a12: 48 8b d6                    	mov	rdx, rsi
140009a15: 8b 84 24 b0 00 00 00        	mov	eax, dword ptr [rsp + 176]
140009a1c: 89 44 24 30                 	mov	dword ptr [rsp + 48], eax
140009a20: 48 8b 84 24 a8 00 00 00     	mov	rax, qword ptr [rsp + 168]
140009a28: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
140009a2d: 8b 84 24 a0 00 00 00        	mov	eax, dword ptr [rsp + 160]
140009a34: 89 44 24 20                 	mov	dword ptr [rsp + 32], eax
140009a38: e8 77 fc ff ff              	call	0x1400096b4 <.text+0x86b4>
140009a3d: 80 7c 24 68 00              	cmp	byte ptr [rsp + 104], 0
140009a42: 74 0c                       	je	0x140009a50 <.text+0x8a50>
140009a44: 48 8b 4c 24 50              	mov	rcx, qword ptr [rsp + 80]
140009a49: 83 a1 a8 03 00 00 fd        	and	dword ptr [rcx + 936], -3
140009a50: 4c 8d 5c 24 70              	lea	r11, [rsp + 112]
140009a55: 49 8b 5b 10                 	mov	rbx, qword ptr [r11 + 16]
140009a59: 49 8b 73 18                 	mov	rsi, qword ptr [r11 + 24]
140009a5d: 49 8b e3                    	mov	rsp, r11
140009a60: 5f                          	pop	rdi
140009a61: c3                          	ret
140009a62: cc                          	int3
140009a63: cc                          	int3
140009a64: 48 83 ec 28                 	sub	rsp, 40
140009a68: e8 6b c7 ff ff              	call	0x1400061d8 <.text+0x51d8>
140009a6d: 33 c9                       	xor	ecx, ecx
140009a6f: 84 c0                       	test	al, al
140009a71: 0f 94 c1                    	sete	cl
140009a74: 8b c1                       	mov	eax, ecx
140009a76: 48 83 c4 28                 	add	rsp, 40
140009a7a: c3                          	ret
140009a7b: cc                          	int3
140009a7c: 83 3d dd e2 00 00 00        	cmp	dword ptr [rip + 58077], 0 # 0x140017d60
140009a83: 0f 84 7b 15 00 00           	je	0x14000b004 <.text+0xa004>
140009a89: 45 33 c9                    	xor	r9d, r9d
140009a8c: e9 03 00 00 00              	jmp	0x140009a94 <.text+0x8a94>
140009a91: cc                          	int3
140009a92: cc                          	int3
140009a93: cc                          	int3
140009a94: 48 8b c4                    	mov	rax, rsp
140009a97: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
140009a9b: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
140009a9f: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
140009aa3: 57                          	push	rdi
140009aa4: 48 83 ec 60                 	sub	rsp, 96
140009aa8: 48 8b f2                    	mov	rsi, rdx
140009aab: 48 8b e9                    	mov	rbp, rcx
140009aae: 49 8b d1                    	mov	rdx, r9
140009ab1: 48 8d 48 d8                 	lea	rcx, [rax - 40]
140009ab5: 49 8b f8                    	mov	rdi, r8
140009ab8: e8 77 a8 ff ff              	call	0x140004334 <.text+0x3334>
140009abd: 48 85 ff                    	test	rdi, rdi
140009ac0: 75 07                       	jne	0x140009ac9 <.text+0x8ac9>
140009ac2: 33 db                       	xor	ebx, ebx
140009ac4: e9 a0 00 00 00              	jmp	0x140009b69 <.text+0x8b69>
140009ac9: 48 85 ed                    	test	rbp, rbp
140009acc: 74 05                       	je	0x140009ad3 <.text+0x8ad3>
140009ace: 48 85 f6                    	test	rsi, rsi
140009ad1: 75 17                       	jne	0x140009aea <.text+0x8aea>
140009ad3: e8 08 b3 ff ff              	call	0x140004de0 <.text+0x3de0>
140009ad8: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140009ade: e8 dd b1 ff ff              	call	0x140004cc0 <.text+0x3cc0>
140009ae3: bb ff ff ff 7f              	mov	ebx, 2147483647
140009ae8: eb 7f                       	jmp	0x140009b69 <.text+0x8b69>
140009aea: bb ff ff ff 7f              	mov	ebx, 2147483647
140009aef: 48 3b fb                    	cmp	rdi, rbx
140009af2: 76 12                       	jbe	0x140009b06 <.text+0x8b06>
140009af4: e8 e7 b2 ff ff              	call	0x140004de0 <.text+0x3de0>
140009af9: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140009aff: e8 bc b1 ff ff              	call	0x140004cc0 <.text+0x3cc0>
140009b04: eb 63                       	jmp	0x140009b69 <.text+0x8b69>
140009b06: 48 8b 44 24 48              	mov	rax, qword ptr [rsp + 72]
140009b0b: 48 8b 90 30 01 00 00        	mov	rdx, qword ptr [rax + 304]
140009b12: 48 85 d2                    	test	rdx, rdx
140009b15: 75 17                       	jne	0x140009b2e <.text+0x8b2e>
140009b17: 4c 8d 4c 24 48              	lea	r9, [rsp + 72]
140009b1c: 4c 8b c7                    	mov	r8, rdi
140009b1f: 48 8b d6                    	mov	rdx, rsi
140009b22: 48 8b cd                    	mov	rcx, rbp
140009b25: e8 2a 15 00 00              	call	0x14000b054 <.text+0xa054>
140009b2a: 8b d8                       	mov	ebx, eax
140009b2c: eb 3b                       	jmp	0x140009b69 <.text+0x8b69>
140009b2e: 8b 40 14                    	mov	eax, dword ptr [rax + 20]
140009b31: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
140009b36: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
140009b3a: 4c 8b cd                    	mov	r9, rbp
140009b3d: 89 7c 24 30                 	mov	dword ptr [rsp + 48], edi
140009b41: 41 b8 01 10 00 00           	mov	r8d, 4097
140009b47: 48 89 74 24 28              	mov	qword ptr [rsp + 40], rsi
140009b4c: 89 7c 24 20                 	mov	dword ptr [rsp + 32], edi
140009b50: e8 0f 19 00 00              	call	0x14000b464 <.text+0xa464>
140009b55: 85 c0                       	test	eax, eax
140009b57: 75 0d                       	jne	0x140009b66 <.text+0x8b66>
140009b59: e8 82 b2 ff ff              	call	0x140004de0 <.text+0x3de0>
140009b5e: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140009b64: eb 03                       	jmp	0x140009b69 <.text+0x8b69>
140009b66: 8d 58 fe                    	lea	ebx, [rax - 2]
140009b69: 80 7c 24 58 00              	cmp	byte ptr [rsp + 88], 0
140009b6e: 74 0c                       	je	0x140009b7c <.text+0x8b7c>
140009b70: 48 8b 44 24 40              	mov	rax, qword ptr [rsp + 64]
140009b75: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140009b7c: 4c 8d 5c 24 60              	lea	r11, [rsp + 96]
140009b81: 8b c3                       	mov	eax, ebx
140009b83: 49 8b 5b 10                 	mov	rbx, qword ptr [r11 + 16]
140009b87: 49 8b 6b 18                 	mov	rbp, qword ptr [r11 + 24]
140009b8b: 49 8b 73 20                 	mov	rsi, qword ptr [r11 + 32]
140009b8f: 49 8b e3                    	mov	rsp, r11
140009b92: 5f                          	pop	rdi
140009b93: c3                          	ret
140009b94: 48 8b c4                    	mov	rax, rsp
140009b97: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
140009b9b: 48 89 70 10                 	mov	qword ptr [rax + 16], rsi
140009b9f: 48 89 78 18                 	mov	qword ptr [rax + 24], rdi
140009ba3: 55                          	push	rbp
140009ba4: 41 56                       	push	r14
140009ba6: 41 57                       	push	r15
140009ba8: 48 8d 68 a1                 	lea	rbp, [rax - 95]
140009bac: 48 81 ec a0 00 00 00        	sub	rsp, 160
140009bb3: 45 33 ff                    	xor	r15d, r15d
140009bb6: 4c 8b f2                    	mov	r14, rdx
140009bb9: 48 8b f1                    	mov	rsi, rcx
140009bbc: 4c 89 7d 17                 	mov	qword ptr [rbp + 23], r15
140009bc0: 33 d2                       	xor	edx, edx
140009bc2: 4c 89 7d 1f                 	mov	qword ptr [rbp + 31], r15
140009bc6: 48 8d 4d c7                 	lea	rcx, [rbp - 57]
140009bca: 4c 89 7d 27                 	mov	qword ptr [rbp + 39], r15
140009bce: 4c 89 7d 2f                 	mov	qword ptr [rbp + 47], r15
140009bd2: 41 8b ff                    	mov	edi, r15d
140009bd5: 4c 89 7d 37                 	mov	qword ptr [rbp + 55], r15
140009bd9: 44 88 7d 3f                 	mov	byte ptr [rbp + 63], r15b
140009bdd: 4c 89 7d e7                 	mov	qword ptr [rbp - 25], r15
140009be1: 4c 89 7d ef                 	mov	qword ptr [rbp - 17], r15
140009be5: 4c 89 7d f7                 	mov	qword ptr [rbp - 9], r15
140009be9: 4c 89 7d ff                 	mov	qword ptr [rbp - 1], r15
140009bed: 4c 89 7d 07                 	mov	qword ptr [rbp + 7], r15
140009bf1: 44 88 7d 0f                 	mov	byte ptr [rbp + 15], r15b
140009bf5: e8 3a a7 ff ff              	call	0x140004334 <.text+0x3334>
140009bfa: 48 8b 45 cf                 	mov	rax, qword ptr [rbp - 49]
140009bfe: bb e9 fd 00 00              	mov	ebx, 65001
140009c03: 39 58 0c                    	cmp	dword ptr [rax + 12], ebx
140009c06: 75 16                       	jne	0x140009c1e <.text+0x8c1e>
140009c08: 44 38 7d df                 	cmp	byte ptr [rbp - 33], r15b
140009c0c: 74 0b                       	je	0x140009c19 <.text+0x8c19>
140009c0e: 48 8b 45 c7                 	mov	rax, qword ptr [rbp - 57]
140009c12: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140009c19: 44 8b c3                    	mov	r8d, ebx
140009c1c: eb 36                       	jmp	0x140009c54 <.text+0x8c54>
140009c1e: e8 71 e1 ff ff              	call	0x140007d94 <.text+0x6d94>
140009c23: 85 c0                       	test	eax, eax
140009c25: 75 19                       	jne	0x140009c40 <.text+0x8c40>
140009c27: 44 38 7d df                 	cmp	byte ptr [rbp - 33], r15b
140009c2b: 74 0b                       	je	0x140009c38 <.text+0x8c38>
140009c2d: 48 8b 45 c7                 	mov	rax, qword ptr [rbp - 57]
140009c31: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140009c38: 41 b8 01 00 00 00           	mov	r8d, 1
140009c3e: eb 14                       	jmp	0x140009c54 <.text+0x8c54>
140009c40: 44 38 7d df                 	cmp	byte ptr [rbp - 33], r15b
140009c44: 74 0b                       	je	0x140009c51 <.text+0x8c51>
140009c46: 48 8b 45 c7                 	mov	rax, qword ptr [rbp - 57]
140009c4a: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140009c51: 45 8b c7                    	mov	r8d, r15d
140009c54: 48 8d 55 17                 	lea	rdx, [rbp + 23]
140009c58: 48 8b ce                    	mov	rcx, rsi
140009c5b: e8 6c b2 ff ff              	call	0x140004ecc <.text+0x3ecc>
140009c60: 85 c0                       	test	eax, eax
140009c62: 0f 85 84 00 00 00           	jne	0x140009cec <.text+0x8cec>
140009c68: 33 d2                       	xor	edx, edx
140009c6a: 48 8d 4d c7                 	lea	rcx, [rbp - 57]
140009c6e: e8 c1 a6 ff ff              	call	0x140004334 <.text+0x3334>
140009c73: 48 8b 45 cf                 	mov	rax, qword ptr [rbp - 49]
140009c77: 39 58 0c                    	cmp	dword ptr [rax + 12], ebx
140009c7a: 75 13                       	jne	0x140009c8f <.text+0x8c8f>
140009c7c: 44 38 7d df                 	cmp	byte ptr [rbp - 33], r15b
140009c80: 74 42                       	je	0x140009cc4 <.text+0x8cc4>
140009c82: 48 8b 45 c7                 	mov	rax, qword ptr [rbp - 57]
140009c86: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140009c8d: eb 35                       	jmp	0x140009cc4 <.text+0x8cc4>
140009c8f: e8 00 e1 ff ff              	call	0x140007d94 <.text+0x6d94>
140009c94: 85 c0                       	test	eax, eax
140009c96: 75 18                       	jne	0x140009cb0 <.text+0x8cb0>
140009c98: 44 38 7d df                 	cmp	byte ptr [rbp - 33], r15b
140009c9c: 74 0b                       	je	0x140009ca9 <.text+0x8ca9>
140009c9e: 48 8b 45 c7                 	mov	rax, qword ptr [rbp - 57]
140009ca2: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140009ca9: bb 01 00 00 00              	mov	ebx, 1
140009cae: eb 14                       	jmp	0x140009cc4 <.text+0x8cc4>
140009cb0: 44 38 7d df                 	cmp	byte ptr [rbp - 33], r15b
140009cb4: 74 0b                       	je	0x140009cc1 <.text+0x8cc1>
140009cb6: 48 8b 45 c7                 	mov	rax, qword ptr [rbp - 57]
140009cba: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
140009cc1: 41 8b df                    	mov	ebx, r15d
140009cc4: 44 8b c3                    	mov	r8d, ebx
140009cc7: 48 8d 55 e7                 	lea	rdx, [rbp - 25]
140009ccb: 49 8b ce                    	mov	rcx, r14
140009cce: e8 f9 b1 ff ff              	call	0x140004ecc <.text+0x3ecc>
140009cd3: 48 8b 7d f7                 	mov	rdi, qword ptr [rbp - 9]
140009cd7: 85 c0                       	test	eax, eax
140009cd9: 75 11                       	jne	0x140009cec <.text+0x8cec>
140009cdb: 48 8b 4d 27                 	mov	rcx, qword ptr [rbp + 39]
140009cdf: 48 8b d7                    	mov	rdx, rdi
140009ce2: ff 15 b8 44 00 00           	call	qword ptr [rip + 17592] # 0x14000e1a0
140009ce8: 8b d8                       	mov	ebx, eax
140009cea: eb 03                       	jmp	0x140009cef <.text+0x8cef>
140009cec: 41 8b df                    	mov	ebx, r15d
140009cef: 44 38 7d 0f                 	cmp	byte ptr [rbp + 15], r15b
140009cf3: 74 08                       	je	0x140009cfd <.text+0x8cfd>
140009cf5: 48 8b cf                    	mov	rcx, rdi
140009cf8: e8 7b b1 ff ff              	call	0x140004e78 <.text+0x3e78>
140009cfd: 44 38 7d 3f                 	cmp	byte ptr [rbp + 63], r15b
140009d01: 74 09                       	je	0x140009d0c <.text+0x8d0c>
140009d03: 48 8b 4d 27                 	mov	rcx, qword ptr [rbp + 39]
140009d07: e8 6c b1 ff ff              	call	0x140004e78 <.text+0x3e78>
140009d0c: 4c 8d 9c 24 a0 00 00 00     	lea	r11, [rsp + 160]
140009d14: 8b c3                       	mov	eax, ebx
140009d16: 49 8b 5b 20                 	mov	rbx, qword ptr [r11 + 32]
140009d1a: 49 8b 73 28                 	mov	rsi, qword ptr [r11 + 40]
140009d1e: 49 8b 7b 30                 	mov	rdi, qword ptr [r11 + 48]
140009d22: 49 8b e3                    	mov	rsp, r11
140009d25: 41 5f                       	pop	r15
140009d27: 41 5e                       	pop	r14
140009d29: 5d                          	pop	rbp
140009d2a: c3                          	ret
140009d2b: cc                          	int3
140009d2c: 4c 8b da                    	mov	r11, rdx
140009d2f: 4c 8b d1                    	mov	r10, rcx
140009d32: 4d 85 c0                    	test	r8, r8
140009d35: 75 03                       	jne	0x140009d3a <.text+0x8d3a>
140009d37: 33 c0                       	xor	eax, eax
140009d39: c3                          	ret
140009d3a: 41 0f b7 0a                 	movzx	ecx, word ptr [r10]
140009d3e: 4d 8d 52 02                 	lea	r10, [r10 + 2]
140009d42: 41 0f b7 13                 	movzx	edx, word ptr [r11]
140009d46: 4d 8d 5b 02                 	lea	r11, [r11 + 2]
140009d4a: 8d 41 bf                    	lea	eax, [rcx - 65]
140009d4d: 83 f8 19                    	cmp	eax, 25
140009d50: 44 8d 49 20                 	lea	r9d, [rcx + 32]
140009d54: 8d 42 bf                    	lea	eax, [rdx - 65]
140009d57: 44 0f 47 c9                 	cmova	r9d, ecx
140009d5b: 83 f8 19                    	cmp	eax, 25
140009d5e: 8d 4a 20                    	lea	ecx, [rdx + 32]
140009d61: 41 8b c1                    	mov	eax, r9d
140009d64: 0f 47 ca                    	cmova	ecx, edx
140009d67: 2b c1                       	sub	eax, ecx
140009d69: 75 0b                       	jne	0x140009d76 <.text+0x8d76>
140009d6b: 45 85 c9                    	test	r9d, r9d
140009d6e: 74 06                       	je	0x140009d76 <.text+0x8d76>
140009d70: 49 83 e8 01                 	sub	r8, 1
140009d74: 75 c4                       	jne	0x140009d3a <.text+0x8d3a>
140009d76: c3                          	ret
140009d77: cc                          	int3
140009d78: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140009d7d: 48 89 6c 24 10              	mov	qword ptr [rsp + 16], rbp
140009d82: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
140009d87: 57                          	push	rdi
140009d88: 41 56                       	push	r14
140009d8a: 41 57                       	push	r15
140009d8c: 48 83 ec 20                 	sub	rsp, 32
140009d90: 4c 8b f1                    	mov	r14, rcx
140009d93: 48 85 c9                    	test	rcx, rcx
140009d96: 74 74                       	je	0x140009e0c <.text+0x8e0c>
140009d98: 33 db                       	xor	ebx, ebx
140009d9a: 4c 8d 3d 5f 62 ff ff        	lea	r15, [rip - 40353]      # 0x140000000
140009da1: bf e3 00 00 00              	mov	edi, 227
140009da6: 8d 04 1f                    	lea	eax, [rdi + rbx]
140009da9: 41 b8 55 00 00 00           	mov	r8d, 85
140009daf: 99                          	cdq
140009db0: 49 8b ce                    	mov	rcx, r14
140009db3: 2b c2                       	sub	eax, edx
140009db5: d1 f8                       	sar	eax
140009db7: 48 63 e8                    	movsxd	rbp, eax
140009dba: 48 8b d5                    	mov	rdx, rbp
140009dbd: 48 8b f5                    	mov	rsi, rbp
140009dc0: 48 03 d2                    	add	rdx, rdx
140009dc3: 49 8b 94 d7 b0 22 01 00     	mov	rdx, qword ptr [r15 + 8*rdx + 74416]
140009dcb: e8 5c ff ff ff              	call	0x140009d2c <.text+0x8d2c>
140009dd0: 85 c0                       	test	eax, eax
140009dd2: 74 13                       	je	0x140009de7 <.text+0x8de7>
140009dd4: 79 05                       	jns	0x140009ddb <.text+0x8ddb>
140009dd6: 8d 7d ff                    	lea	edi, [rbp - 1]
140009dd9: eb 03                       	jmp	0x140009dde <.text+0x8dde>
140009ddb: 8d 5d 01                    	lea	ebx, [rbp + 1]
140009dde: 3b df                       	cmp	ebx, edi
140009de0: 7e c4                       	jle	0x140009da6 <.text+0x8da6>
140009de2: 83 c8 ff                    	or	eax, -1
140009de5: eb 0b                       	jmp	0x140009df2 <.text+0x8df2>
140009de7: 48 03 f6                    	add	rsi, rsi
140009dea: 41 8b 84 f7 b8 22 01 00     	mov	eax, dword ptr [r15 + 8*rsi + 74424]
140009df2: 85 c0                       	test	eax, eax
140009df4: 78 16                       	js	0x140009e0c <.text+0x8e0c>
140009df6: 3d e4 00 00 00              	cmp	eax, 228
140009dfb: 73 0f                       	jae	0x140009e0c <.text+0x8e0c>
140009dfd: 48 98                       	cdqe
140009dff: 48 03 c0                    	add	rax, rax
140009e02: 41 8b 84 c7 50 08 01 00     	mov	eax, dword ptr [r15 + 8*rax + 67664]
140009e0a: eb 02                       	jmp	0x140009e0e <.text+0x8e0e>
140009e0c: 33 c0                       	xor	eax, eax
140009e0e: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
140009e13: 48 8b 6c 24 48              	mov	rbp, qword ptr [rsp + 72]
140009e18: 48 8b 74 24 50              	mov	rsi, qword ptr [rsp + 80]
140009e1d: 48 83 c4 20                 	add	rsp, 32
140009e21: 41 5f                       	pop	r15
140009e23: 41 5e                       	pop	r14
140009e25: 5f                          	pop	rdi
140009e26: c3                          	ret
140009e27: cc                          	int3
140009e28: 48 83 ec 28                 	sub	rsp, 40
140009e2c: 48 85 c9                    	test	rcx, rcx
140009e2f: 75 19                       	jne	0x140009e4a <.text+0x8e4a>
140009e31: e8 aa af ff ff              	call	0x140004de0 <.text+0x3de0>
140009e36: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
140009e3c: e8 7f ae ff ff              	call	0x140004cc0 <.text+0x3cc0>
140009e41: 48 83 c8 ff                 	or	rax, -1
140009e45: 48 83 c4 28                 	add	rsp, 40
140009e49: c3                          	ret
140009e4a: 4c 8b c1                    	mov	r8, rcx
140009e4d: 33 d2                       	xor	edx, edx
140009e4f: 48 8b 0d 82 e7 00 00        	mov	rcx, qword ptr [rip + 59266] # 0x1400185d8
140009e56: 48 83 c4 28                 	add	rsp, 40
140009e5a: 48 ff 25 77 43 00 00        	jmp	qword ptr [rip + 17271] # 0x14000e1d8
140009e61: cc                          	int3
140009e62: cc                          	int3
140009e63: cc                          	int3
140009e64: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140009e69: 57                          	push	rdi
140009e6a: 48 83 ec 20                 	sub	rsp, 32
140009e6e: 48 8b da                    	mov	rbx, rdx
140009e71: 48 8b f9                    	mov	rdi, rcx
140009e74: 48 85 c9                    	test	rcx, rcx
140009e77: 75 0a                       	jne	0x140009e83 <.text+0x8e83>
140009e79: 48 8b ca                    	mov	rcx, rdx
140009e7c: e8 ef d6 ff ff              	call	0x140007570 <.text+0x6570>
140009e81: eb 1f                       	jmp	0x140009ea2 <.text+0x8ea2>
140009e83: 48 85 db                    	test	rbx, rbx
140009e86: 75 07                       	jne	0x140009e8f <.text+0x8e8f>
140009e88: e8 eb af ff ff              	call	0x140004e78 <.text+0x3e78>
140009e8d: eb 11                       	jmp	0x140009ea0 <.text+0x8ea0>
140009e8f: 48 83 fb e0                 	cmp	rbx, -32
140009e93: 76 2d                       	jbe	0x140009ec2 <.text+0x8ec2>
140009e95: e8 46 af ff ff              	call	0x140004de0 <.text+0x3de0>
140009e9a: c7 00 0c 00 00 00           	mov	dword ptr [rax], 12
140009ea0: 33 c0                       	xor	eax, eax
140009ea2: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140009ea7: 48 83 c4 20                 	add	rsp, 32
140009eab: 5f                          	pop	rdi
140009eac: c3                          	ret
140009ead: e8 de 9d ff ff              	call	0x140003c90 <.text+0x2c90>
140009eb2: 85 c0                       	test	eax, eax
140009eb4: 74 df                       	je	0x140009e95 <.text+0x8e95>
140009eb6: 48 8b cb                    	mov	rcx, rbx
140009eb9: e8 a6 e4 ff ff              	call	0x140008364 <.text+0x7364>
140009ebe: 85 c0                       	test	eax, eax
140009ec0: 74 d3                       	je	0x140009e95 <.text+0x8e95>
140009ec2: 48 8b 0d 0f e7 00 00        	mov	rcx, qword ptr [rip + 59151] # 0x1400185d8
140009ec9: 4c 8b cb                    	mov	r9, rbx
140009ecc: 4c 8b c7                    	mov	r8, rdi
140009ecf: 33 d2                       	xor	edx, edx
140009ed1: ff 15 09 43 00 00           	call	qword ptr [rip + 17161] # 0x14000e1e0
140009ed7: 48 85 c0                    	test	rax, rax
140009eda: 74 d1                       	je	0x140009ead <.text+0x8ead>
140009edc: eb c4                       	jmp	0x140009ea2 <.text+0x8ea2>
140009ede: cc                          	int3
140009edf: cc                          	int3
140009ee0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
140009ee5: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
140009eea: 57                          	push	rdi
140009eeb: 48 83 ec 20                 	sub	rsp, 32
140009eef: 49 8b f9                    	mov	rdi, r9
140009ef2: 49 8b d8                    	mov	rbx, r8
140009ef5: 8b 0a                       	mov	ecx, dword ptr [rdx]
140009ef7: e8 54 cf ff ff              	call	0x140006e50 <.text+0x5e50>
140009efc: 90                          	nop
140009efd: 48 8b 03                    	mov	rax, qword ptr [rbx]
140009f00: 48 63 08                    	movsxd	rcx, dword ptr [rax]
140009f03: 48 8b d1                    	mov	rdx, rcx
140009f06: 48 8b c1                    	mov	rax, rcx
140009f09: 48 c1 f8 06                 	sar	rax, 6
140009f0d: 4c 8d 05 fc e0 00 00        	lea	r8, [rip + 57596]       # 0x140018010
140009f14: 83 e2 3f                    	and	edx, 63
140009f17: 48 8d 14 d2                 	lea	rdx, [rdx + 8*rdx]
140009f1b: 49 8b 04 c0                 	mov	rax, qword ptr [r8 + 8*rax]
140009f1f: f6 44 d0 38 01              	test	byte ptr [rax + 8*rdx + 56], 1
140009f24: 74 24                       	je	0x140009f4a <.text+0x8f4a>
140009f26: e8 31 d0 ff ff              	call	0x140006f5c <.text+0x5f5c>
140009f2b: 48 8b c8                    	mov	rcx, rax
140009f2e: ff 15 b4 42 00 00           	call	qword ptr [rip + 17076] # 0x14000e1e8
140009f34: 33 db                       	xor	ebx, ebx
140009f36: 85 c0                       	test	eax, eax
140009f38: 75 1e                       	jne	0x140009f58 <.text+0x8f58>
140009f3a: e8 81 ae ff ff              	call	0x140004dc0 <.text+0x3dc0>
140009f3f: 48 8b d8                    	mov	rbx, rax
140009f42: ff 15 38 41 00 00           	call	qword ptr [rip + 16696] # 0x14000e080
140009f48: 89 03                       	mov	dword ptr [rbx], eax
140009f4a: e8 91 ae ff ff              	call	0x140004de0 <.text+0x3de0>
140009f4f: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
140009f55: 83 cb ff                    	or	ebx, -1
140009f58: 8b 0f                       	mov	ecx, dword ptr [rdi]
140009f5a: e8 19 cf ff ff              	call	0x140006e78 <.text+0x5e78>
140009f5f: 8b c3                       	mov	eax, ebx
140009f61: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
140009f66: 48 83 c4 20                 	add	rsp, 32
140009f6a: 5f                          	pop	rdi
140009f6b: c3                          	ret
140009f6c: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
140009f70: 48 83 ec 38                 	sub	rsp, 56
140009f74: 48 63 d1                    	movsxd	rdx, ecx
140009f77: 83 fa fe                    	cmp	edx, -2
140009f7a: 75 0d                       	jne	0x140009f89 <.text+0x8f89>
140009f7c: e8 5f ae ff ff              	call	0x140004de0 <.text+0x3de0>
140009f81: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
140009f87: eb 6c                       	jmp	0x140009ff5 <.text+0x8ff5>
140009f89: 85 c9                       	test	ecx, ecx
140009f8b: 78 58                       	js	0x140009fe5 <.text+0x8fe5>
140009f8d: 3b 15 7d e4 00 00           	cmp	edx, dword ptr [rip + 58493] # 0x140018410
140009f93: 73 50                       	jae	0x140009fe5 <.text+0x8fe5>
140009f95: 48 8b ca                    	mov	rcx, rdx
140009f98: 4c 8d 05 71 e0 00 00        	lea	r8, [rip + 57457]       # 0x140018010
140009f9f: 83 e1 3f                    	and	ecx, 63
140009fa2: 48 8b c2                    	mov	rax, rdx
140009fa5: 48 c1 f8 06                 	sar	rax, 6
140009fa9: 48 8d 0c c9                 	lea	rcx, [rcx + 8*rcx]
140009fad: 49 8b 04 c0                 	mov	rax, qword ptr [r8 + 8*rax]
140009fb1: f6 44 c8 38 01              	test	byte ptr [rax + 8*rcx + 56], 1
140009fb6: 74 2d                       	je	0x140009fe5 <.text+0x8fe5>
140009fb8: 48 8d 44 24 40              	lea	rax, [rsp + 64]
140009fbd: 89 54 24 50                 	mov	dword ptr [rsp + 80], edx
140009fc1: 89 54 24 58                 	mov	dword ptr [rsp + 88], edx
140009fc5: 4c 8d 4c 24 50              	lea	r9, [rsp + 80]
140009fca: 48 8d 54 24 58              	lea	rdx, [rsp + 88]
140009fcf: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
140009fd4: 4c 8d 44 24 20              	lea	r8, [rsp + 32]
140009fd9: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
140009fde: e8 fd fe ff ff              	call	0x140009ee0 <.text+0x8ee0>
140009fe3: eb 13                       	jmp	0x140009ff8 <.text+0x8ff8>
140009fe5: e8 f6 ad ff ff              	call	0x140004de0 <.text+0x3de0>
140009fea: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
140009ff0: e8 cb ac ff ff              	call	0x140004cc0 <.text+0x3cc0>
140009ff5: 83 c8 ff                    	or	eax, -1
140009ff8: 48 83 c4 38                 	add	rsp, 56
140009ffc: c3                          	ret
140009ffd: cc                          	int3
140009ffe: cc                          	int3
140009fff: cc                          	int3
14000a000: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000a005: 55                          	push	rbp
14000a006: 56                          	push	rsi
14000a007: 57                          	push	rdi
14000a008: 41 54                       	push	r12
14000a00a: 41 55                       	push	r13
14000a00c: 41 56                       	push	r14
14000a00e: 41 57                       	push	r15
14000a010: 48 8d 6c 24 d9              	lea	rbp, [rsp - 39]
14000a015: 48 81 ec 00 01 00 00        	sub	rsp, 256
14000a01c: 48 8b 05 05 d0 00 00        	mov	rax, qword ptr [rip + 53253] # 0x140017028
14000a023: 48 33 c4                    	xor	rax, rsp
14000a026: 48 89 45 17                 	mov	qword ptr [rbp + 23], rax
14000a02a: 48 63 f2                    	movsxd	rsi, edx
14000a02d: 4d 8b f8                    	mov	r15, r8
14000a030: 48 8b c6                    	mov	rax, rsi
14000a033: 48 89 4d f7                 	mov	qword ptr [rbp - 9], rcx
14000a037: 48 89 45 ef                 	mov	qword ptr [rbp - 17], rax
14000a03b: 48 8d 0d be 5f ff ff        	lea	rcx, [rip - 41026]      # 0x140000000
14000a042: 83 e0 3f                    	and	eax, 63
14000a045: 45 8b e9                    	mov	r13d, r9d
14000a048: 4d 03 e8                    	add	r13, r8
14000a04b: 4c 89 45 df                 	mov	qword ptr [rbp - 33], r8
14000a04f: 4c 8b e6                    	mov	r12, rsi
14000a052: 4c 89 6d af                 	mov	qword ptr [rbp - 81], r13
14000a056: 49 c1 fc 06                 	sar	r12, 6
14000a05a: 4c 8d 34 c0                 	lea	r14, [rax + 8*rax]
14000a05e: 4a 8b 84 e1 10 80 01 00     	mov	rax, qword ptr [rcx + 8*r12 + 98320]
14000a066: 4a 8b 44 f0 28              	mov	rax, qword ptr [rax + 8*r14 + 40]
14000a06b: 48 89 45 b7                 	mov	qword ptr [rbp - 73], rax
14000a06f: ff 15 7b 41 00 00           	call	qword ptr [rip + 16763] # 0x14000e1f0
14000a075: 33 d2                       	xor	edx, edx
14000a077: 48 8d 4c 24 50              	lea	rcx, [rsp + 80]
14000a07c: 89 45 a7                    	mov	dword ptr [rbp - 89], eax
14000a07f: e8 b0 a2 ff ff              	call	0x140004334 <.text+0x3334>
14000a084: 48 8b 4c 24 58              	mov	rcx, qword ptr [rsp + 88]
14000a089: 45 33 db                    	xor	r11d, r11d
14000a08c: 44 89 5d 97                 	mov	dword ptr [rbp - 105], r11d
14000a090: 41 8b db                    	mov	ebx, r11d
14000a093: 89 5d 9b                    	mov	dword ptr [rbp - 101], ebx
14000a096: 49 8b ff                    	mov	rdi, r15
14000a099: 8b 51 0c                    	mov	edx, dword ptr [rcx + 12]
14000a09c: 41 8b cb                    	mov	ecx, r11d
14000a09f: 89 4c 24 40                 	mov	dword ptr [rsp + 64], ecx
14000a0a3: 89 55 ab                    	mov	dword ptr [rbp - 85], edx
14000a0a6: 4d 3b fd                    	cmp	r15, r13
14000a0a9: 0f 83 e2 03 00 00           	jae	0x14000a491 <.text+0x9491>
14000a0af: 48 8b c6                    	mov	rax, rsi
14000a0b2: 49 8b f7                    	mov	rsi, r15
14000a0b5: 48 c1 f8 06                 	sar	rax, 6
14000a0b9: 48 89 45 e7                 	mov	qword ptr [rbp - 25], rax
14000a0bd: 8a 0f                       	mov	cl, byte ptr [rdi]
14000a0bf: 41 bf 01 00 00 00           	mov	r15d, 1
14000a0c5: 88 4c 24 44                 	mov	byte ptr [rsp + 68], cl
14000a0c9: 44 89 5c 24 48              	mov	dword ptr [rsp + 72], r11d
14000a0ce: 81 fa e9 fd 00 00           	cmp	edx, 65001
14000a0d4: 0f 85 70 01 00 00           	jne	0x14000a24a <.text+0x924a>
14000a0da: 4c 8d 3d 1f 5f ff ff        	lea	r15, [rip - 41185]      # 0x140000000
14000a0e1: 41 8b d3                    	mov	edx, r11d
14000a0e4: 4d 8b 8c c7 10 80 01 00     	mov	r9, qword ptr [r15 + 8*rax + 98320]
14000a0ec: 49 8b f3                    	mov	rsi, r11
14000a0ef: 4b 8d 04 f1                 	lea	rax, [r9 + 8*r14]
14000a0f3: 44 38 5c 30 3e              	cmp	byte ptr [rax + rsi + 62], r11b
14000a0f8: 74 0b                       	je	0x14000a105 <.text+0x9105>
14000a0fa: ff c2                       	inc	edx
14000a0fc: 48 ff c6                    	inc	rsi
14000a0ff: 48 83 fe 05                 	cmp	rsi, 5
14000a103: 7c ee                       	jl	0x14000a0f3 <.text+0x90f3>
14000a105: 48 85 f6                    	test	rsi, rsi
14000a108: 0f 8e e0 00 00 00           	jle	0x14000a1ee <.text+0x91ee>
14000a10e: 4b 8b 84 e7 10 80 01 00     	mov	rax, qword ptr [r15 + 8*r12 + 98320]
14000a116: 4c 8b 45 af                 	mov	r8, qword ptr [rbp - 81]
14000a11a: 4c 2b c7                    	sub	r8, rdi
14000a11d: 42 0f b6 4c f0 3e           	movzx	ecx, byte ptr [rax + 8*r14 + 62]
14000a123: 46 0f be bc 39 d0 78 01 00  	movsx	r15d, byte ptr [rcx + r15 + 96464]
14000a12c: 41 ff c7                    	inc	r15d
14000a12f: 45 8b ef                    	mov	r13d, r15d
14000a132: 44 2b ea                    	sub	r13d, edx
14000a135: 4d 63 d5                    	movsxd	r10, r13d
14000a138: 4d 3b d0                    	cmp	r10, r8
14000a13b: 0f 8f 78 02 00 00           	jg	0x14000a3b9 <.text+0x93b9>
14000a141: 48 8d 45 ff                 	lea	rax, [rbp - 1]
14000a145: 49 8b d3                    	mov	rdx, r11
14000a148: 4c 2b c8                    	sub	r9, rax
14000a14b: 4f 8d 04 f1                 	lea	r8, [r9 + 8*r14]
14000a14f: 48 8d 4d ff                 	lea	rcx, [rbp - 1]
14000a153: 48 03 ca                    	add	rcx, rdx
14000a156: 48 ff c2                    	inc	rdx
14000a159: 42 8a 44 01 3e              	mov	al, byte ptr [rcx + r8 + 62]
14000a15e: 88 01                       	mov	byte ptr [rcx], al
14000a160: 48 3b d6                    	cmp	rdx, rsi
14000a163: 7c ea                       	jl	0x14000a14f <.text+0x914f>
14000a165: 45 85 ed                    	test	r13d, r13d
14000a168: 7e 15                       	jle	0x14000a17f <.text+0x917f>
14000a16a: 48 8d 4d ff                 	lea	rcx, [rbp - 1]
14000a16e: 4d 8b c2                    	mov	r8, r10
14000a171: 48 03 ce                    	add	rcx, rsi
14000a174: 48 8b d7                    	mov	rdx, rdi
14000a177: e8 24 85 ff ff              	call	0x1400026a0 <.text+0x16a0>
14000a17c: 45 33 db                    	xor	r11d, r11d
14000a17f: 49 8b d3                    	mov	rdx, r11
14000a182: 4c 8d 05 77 5e ff ff        	lea	r8, [rip - 41353]       # 0x140000000
14000a189: 4b 8b 8c e0 10 80 01 00     	mov	rcx, qword ptr [r8 + 8*r12 + 98320]
14000a191: 48 03 ca                    	add	rcx, rdx
14000a194: 48 ff c2                    	inc	rdx
14000a197: 46 88 5c f1 3e              	mov	byte ptr [rcx + 8*r14 + 62], r11b
14000a19c: 48 3b d6                    	cmp	rdx, rsi
14000a19f: 7c e8                       	jl	0x14000a189 <.text+0x9189>
14000a1a1: 48 8d 45 ff                 	lea	rax, [rbp - 1]
14000a1a5: 4c 89 5d bf                 	mov	qword ptr [rbp - 65], r11
14000a1a9: 48 89 45 c7                 	mov	qword ptr [rbp - 57], rax
14000a1ad: 4c 8d 4d bf                 	lea	r9, [rbp - 65]
14000a1b1: 41 8b c3                    	mov	eax, r11d
14000a1b4: 48 8d 55 c7                 	lea	rdx, [rbp - 57]
14000a1b8: 41 83 ff 04                 	cmp	r15d, 4
14000a1bc: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
14000a1c1: 0f 94 c0                    	sete	al
14000a1c4: ff c0                       	inc	eax
14000a1c6: 44 8b c0                    	mov	r8d, eax
14000a1c9: 44 8b f8                    	mov	r15d, eax
14000a1cc: e8 57 0c 00 00              	call	0x14000ae28 <.text+0x9e28>
14000a1d1: 48 83 f8 ff                 	cmp	rax, -1
14000a1d5: 0f 84 d7 00 00 00           	je	0x14000a2b2 <.text+0x92b2>
14000a1db: 41 8d 45 ff                 	lea	eax, [r13 - 1]
14000a1df: 4c 8b 6d af                 	mov	r13, qword ptr [rbp - 81]
14000a1e3: 48 63 f0                    	movsxd	rsi, eax
14000a1e6: 48 03 f7                    	add	rsi, rdi
14000a1e9: e9 e6 00 00 00              	jmp	0x14000a2d4 <.text+0x92d4>
14000a1ee: 0f b6 07                    	movzx	eax, byte ptr [rdi]
14000a1f1: 49 8b d5                    	mov	rdx, r13
14000a1f4: 48 2b d7                    	sub	rdx, rdi
14000a1f7: 4a 0f be b4 38 d0 78 01 00  	movsx	rsi, byte ptr [rax + r15 + 96464]
14000a200: 8d 4e 01                    	lea	ecx, [rsi + 1]
14000a203: 48 63 c1                    	movsxd	rax, ecx
14000a206: 48 3b c2                    	cmp	rax, rdx
14000a209: 0f 8f e4 01 00 00           	jg	0x14000a3f3 <.text+0x93f3>
14000a20f: 83 f9 04                    	cmp	ecx, 4
14000a212: 4c 89 5d cf                 	mov	qword ptr [rbp - 49], r11
14000a216: 41 8b c3                    	mov	eax, r11d
14000a219: 48 89 7d d7                 	mov	qword ptr [rbp - 41], rdi
14000a21d: 0f 94 c0                    	sete	al
14000a220: 4c 8d 4d cf                 	lea	r9, [rbp - 49]
14000a224: ff c0                       	inc	eax
14000a226: 48 8d 55 d7                 	lea	rdx, [rbp - 41]
14000a22a: 44 8b c0                    	mov	r8d, eax
14000a22d: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
14000a232: 8b d8                       	mov	ebx, eax
14000a234: e8 ef 0b 00 00              	call	0x14000ae28 <.text+0x9e28>
14000a239: 48 83 f8 ff                 	cmp	rax, -1
14000a23d: 74 73                       	je	0x14000a2b2 <.text+0x92b2>
14000a23f: 48 03 f7                    	add	rsi, rdi
14000a242: 44 8b fb                    	mov	r15d, ebx
14000a245: e9 8a 00 00 00              	jmp	0x14000a2d4 <.text+0x92d4>
14000a24a: 48 8d 05 af 5d ff ff        	lea	rax, [rip - 41553]      # 0x140000000
14000a251: 4a 8b 94 e0 10 80 01 00     	mov	rdx, qword ptr [rax + 8*r12 + 98320]
14000a259: 42 8a 4c f2 3d              	mov	cl, byte ptr [rdx + 8*r14 + 61]
14000a25e: f6 c1 04                    	test	cl, 4
14000a261: 74 1b                       	je	0x14000a27e <.text+0x927e>
14000a263: 42 8a 44 f2 3e              	mov	al, byte ptr [rdx + 8*r14 + 62]
14000a268: 80 e1 fb                    	and	cl, -5
14000a26b: 88 45 07                    	mov	byte ptr [rbp + 7], al
14000a26e: 8a 07                       	mov	al, byte ptr [rdi]
14000a270: 42 88 4c f2 3d              	mov	byte ptr [rdx + 8*r14 + 61], cl
14000a275: 48 8d 55 07                 	lea	rdx, [rbp + 7]
14000a279: 88 45 08                    	mov	byte ptr [rbp + 8], al
14000a27c: eb 1f                       	jmp	0x14000a29d <.text+0x929d>
14000a27e: e8 bd d2 ff ff              	call	0x140007540 <.text+0x6540>
14000a283: 0f b6 0f                    	movzx	ecx, byte ptr [rdi]
14000a286: 33 d2                       	xor	edx, edx
14000a288: 66 39 14 48                 	cmp	word ptr [rax + 2*rcx], dx
14000a28c: 7d 2d                       	jge	0x14000a2bb <.text+0x92bb>
14000a28e: 48 ff c6                    	inc	rsi
14000a291: 49 3b f5                    	cmp	rsi, r13
14000a294: 0f 83 b2 01 00 00           	jae	0x14000a44c <.text+0x944c>
14000a29a: 48 8b d7                    	mov	rdx, rdi
14000a29d: 41 b8 02 00 00 00           	mov	r8d, 2
14000a2a3: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
14000a2a8: e8 df e9 ff ff              	call	0x140008c8c <.text+0x7c8c>
14000a2ad: 83 f8 ff                    	cmp	eax, -1
14000a2b0: 75 22                       	jne	0x14000a2d4 <.text+0x92d4>
14000a2b2: 80 7d 8f 00                 	cmp	byte ptr [rbp - 113], 0
14000a2b6: e9 8b 01 00 00              	jmp	0x14000a446 <.text+0x9446>
14000a2bb: 4d 8b c7                    	mov	r8, r15
14000a2be: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
14000a2c3: 48 8b d7                    	mov	rdx, rdi
14000a2c6: e8 c1 e9 ff ff              	call	0x140008c8c <.text+0x7c8c>
14000a2cb: 83 f8 ff                    	cmp	eax, -1
14000a2ce: 0f 84 af 01 00 00           	je	0x14000a483 <.text+0x9483>
14000a2d4: 8b 4d a7                    	mov	ecx, dword ptr [rbp - 89]
14000a2d7: 48 8d 45 0f                 	lea	rax, [rbp + 15]
14000a2db: 33 db                       	xor	ebx, ebx
14000a2dd: 4c 8d 44 24 48              	lea	r8, [rsp + 72]
14000a2e2: 48 89 5c 24 38              	mov	qword ptr [rsp + 56], rbx
14000a2e7: 48 8d 7e 01                 	lea	rdi, [rsi + 1]
14000a2eb: 48 89 5c 24 30              	mov	qword ptr [rsp + 48], rbx
14000a2f0: 45 8b cf                    	mov	r9d, r15d
14000a2f3: c7 44 24 28 05 00 00 00     	mov	dword ptr [rsp + 40], 5
14000a2fb: 33 d2                       	xor	edx, edx
14000a2fd: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000a302: e8 f1 c2 ff ff              	call	0x1400065f8 <.text+0x55f8>
14000a307: 8b f0                       	mov	esi, eax
14000a309: 85 c0                       	test	eax, eax
14000a30b: 0f 84 d2 01 00 00           	je	0x14000a4e3 <.text+0x94e3>
14000a311: 48 8b 4d b7                 	mov	rcx, qword ptr [rbp - 73]
14000a315: 4c 8d 4c 24 4c              	lea	r9, [rsp + 76]
14000a31a: 44 8b c0                    	mov	r8d, eax
14000a31d: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000a322: 48 8d 55 0f                 	lea	rdx, [rbp + 15]
14000a326: ff 15 cc 3d 00 00           	call	qword ptr [rip + 15820] # 0x14000e0f8
14000a32c: 45 33 db                    	xor	r11d, r11d
14000a32f: 85 c0                       	test	eax, eax
14000a331: 0f 84 a3 01 00 00           	je	0x14000a4da <.text+0x94da>
14000a337: 44 8b 7c 24 40              	mov	r15d, dword ptr [rsp + 64]
14000a33c: 8b df                       	mov	ebx, edi
14000a33e: 2b 5d df                    	sub	ebx, dword ptr [rbp - 33]
14000a341: 41 03 df                    	add	ebx, r15d
14000a344: 89 5d 9b                    	mov	dword ptr [rbp - 101], ebx
14000a347: 39 74 24 4c                 	cmp	dword ptr [rsp + 76], esi
14000a34b: 0f 82 f1 00 00 00           	jb	0x14000a442 <.text+0x9442>
14000a351: 80 7c 24 44 0a              	cmp	byte ptr [rsp + 68], 10
14000a356: 75 49                       	jne	0x14000a3a1 <.text+0x93a1>
14000a358: 48 8b 4d b7                 	mov	rcx, qword ptr [rbp - 73]
14000a35c: 41 8d 43 0d                 	lea	eax, [r11 + 13]
14000a360: 4c 8d 4c 24 4c              	lea	r9, [rsp + 76]
14000a365: 66 89 44 24 44              	mov	word ptr [rsp + 68], ax
14000a36a: 45 8d 43 01                 	lea	r8d, [r11 + 1]
14000a36e: 4c 89 5c 24 20              	mov	qword ptr [rsp + 32], r11
14000a373: 48 8d 54 24 44              	lea	rdx, [rsp + 68]
14000a378: ff 15 7a 3d 00 00           	call	qword ptr [rip + 15738] # 0x14000e0f8
14000a37e: 45 33 db                    	xor	r11d, r11d
14000a381: 85 c0                       	test	eax, eax
14000a383: 0f 84 f1 00 00 00           	je	0x14000a47a <.text+0x947a>
14000a389: 83 7c 24 4c 01              	cmp	dword ptr [rsp + 76], 1
14000a38e: 0f 82 ae 00 00 00           	jb	0x14000a442 <.text+0x9442>
14000a394: 41 ff c7                    	inc	r15d
14000a397: ff c3                       	inc	ebx
14000a399: 44 89 7c 24 40              	mov	dword ptr [rsp + 64], r15d
14000a39e: 89 5d 9b                    	mov	dword ptr [rbp - 101], ebx
14000a3a1: 48 8b f7                    	mov	rsi, rdi
14000a3a4: 49 3b fd                    	cmp	rdi, r13
14000a3a7: 0f 83 e0 00 00 00           	jae	0x14000a48d <.text+0x948d>
14000a3ad: 48 8b 45 e7                 	mov	rax, qword ptr [rbp - 25]
14000a3b1: 8b 55 ab                    	mov	edx, dword ptr [rbp - 85]
14000a3b4: e9 04 fd ff ff              	jmp	0x14000a0bd <.text+0x90bd>
14000a3b9: 41 8b d3                    	mov	edx, r11d
14000a3bc: 4d 85 c0                    	test	r8, r8
14000a3bf: 7e 2d                       	jle	0x14000a3ee <.text+0x93ee>
14000a3c1: 48 2b fe                    	sub	rdi, rsi
14000a3c4: 48 8d 1d 35 5c ff ff        	lea	rbx, [rip - 41931]      # 0x140000000
14000a3cb: 8a 04 37                    	mov	al, byte ptr [rdi + rsi]
14000a3ce: ff c2                       	inc	edx
14000a3d0: 4a 8b 8c e3 10 80 01 00     	mov	rcx, qword ptr [rbx + 8*r12 + 98320]
14000a3d8: 48 03 ce                    	add	rcx, rsi
14000a3db: 48 ff c6                    	inc	rsi
14000a3de: 42 88 44 f1 3e              	mov	byte ptr [rcx + 8*r14 + 62], al
14000a3e3: 48 63 c2                    	movsxd	rax, edx
14000a3e6: 49 3b c0                    	cmp	rax, r8
14000a3e9: 7c e0                       	jl	0x14000a3cb <.text+0x93cb>
14000a3eb: 8b 5d 9b                    	mov	ebx, dword ptr [rbp - 101]
14000a3ee: 41 03 d8                    	add	ebx, r8d
14000a3f1: eb 4c                       	jmp	0x14000a43f <.text+0x943f>
14000a3f3: 45 8b cb                    	mov	r9d, r11d
14000a3f6: 48 85 d2                    	test	rdx, rdx
14000a3f9: 7e 42                       	jle	0x14000a43d <.text+0x943d>
14000a3fb: 4c 8b 6d ef                 	mov	r13, qword ptr [rbp - 17]
14000a3ff: 4d 8b c3                    	mov	r8, r11
14000a402: 4d 8b d5                    	mov	r10, r13
14000a405: 41 83 e5 3f                 	and	r13d, 63
14000a409: 49 c1 fa 06                 	sar	r10, 6
14000a40d: 4e 8d 1c ed 00 00 00 00     	lea	r11, [8*r13]
14000a415: 4d 03 dd                    	add	r11, r13
14000a418: 41 8a 04 38                 	mov	al, byte ptr [r8 + rdi]
14000a41c: 41 ff c1                    	inc	r9d
14000a41f: 4b 8b 8c d7 10 80 01 00     	mov	rcx, qword ptr [r15 + 8*r10 + 98320]
14000a427: 49 03 c8                    	add	rcx, r8
14000a42a: 49 ff c0                    	inc	r8
14000a42d: 42 88 44 d9 3e              	mov	byte ptr [rcx + 8*r11 + 62], al
14000a432: 49 63 c1                    	movsxd	rax, r9d
14000a435: 48 3b c2                    	cmp	rax, rdx
14000a438: 7c de                       	jl	0x14000a418 <.text+0x9418>
14000a43a: 45 33 db                    	xor	r11d, r11d
14000a43d: 03 da                       	add	ebx, edx
14000a43f: 89 5d 9b                    	mov	dword ptr [rbp - 101], ebx
14000a442: 44 38 5d 8f                 	cmp	byte ptr [rbp - 113], r11b
14000a446: 8b 4c 24 40                 	mov	ecx, dword ptr [rsp + 64]
14000a44a: eb 49                       	jmp	0x14000a495 <.text+0x9495>
14000a44c: 8a 07                       	mov	al, byte ptr [rdi]
14000a44e: 4c 8d 05 ab 5b ff ff        	lea	r8, [rip - 42069]       # 0x140000000
14000a455: 4b 8b 8c e0 10 80 01 00     	mov	rcx, qword ptr [r8 + 8*r12 + 98320]
14000a45d: ff c3                       	inc	ebx
14000a45f: 89 5d 9b                    	mov	dword ptr [rbp - 101], ebx
14000a462: 42 88 44 f1 3e              	mov	byte ptr [rcx + 8*r14 + 62], al
14000a467: 4b 8b 84 e0 10 80 01 00     	mov	rax, qword ptr [r8 + 8*r12 + 98320]
14000a46f: 42 80 4c f0 3d 04           	or	byte ptr [rax + 8*r14 + 61], 4
14000a475: 38 55 8f                    	cmp	byte ptr [rbp - 113], dl
14000a478: eb cc                       	jmp	0x14000a446 <.text+0x9446>
14000a47a: ff 15 00 3c 00 00           	call	qword ptr [rip + 15360] # 0x14000e080
14000a480: 89 45 97                    	mov	dword ptr [rbp - 105], eax
14000a483: 8b 4c 24 40                 	mov	ecx, dword ptr [rsp + 64]
14000a487: 80 7d 8f 00                 	cmp	byte ptr [rbp - 113], 0
14000a48b: eb 08                       	jmp	0x14000a495 <.text+0x9495>
14000a48d: 8b 4c 24 40                 	mov	ecx, dword ptr [rsp + 64]
14000a491: 44 38 5d 8f                 	cmp	byte ptr [rbp - 113], r11b
14000a495: 74 0c                       	je	0x14000a4a3 <.text+0x94a3>
14000a497: 48 8b 44 24 50              	mov	rax, qword ptr [rsp + 80]
14000a49c: 83 a0 a8 03 00 00 fd        	and	dword ptr [rax + 936], -3
14000a4a3: 48 8b 45 f7                 	mov	rax, qword ptr [rbp - 9]
14000a4a7: f2 0f 10 45 97              	movsd	xmm0, qword ptr [rbp - 105] # xmm0 = mem[0],zero
14000a4ac: f2 0f 11 00                 	movsd	qword ptr [rax], xmm0
14000a4b0: 89 48 08                    	mov	dword ptr [rax + 8], ecx
14000a4b3: 48 8b 4d 17                 	mov	rcx, qword ptr [rbp + 23]
14000a4b7: 48 33 cc                    	xor	rcx, rsp
14000a4ba: e8 21 26 00 00              	call	0x14000cae0 <.text+0xbae0>
14000a4bf: 48 8b 9c 24 40 01 00 00     	mov	rbx, qword ptr [rsp + 320]
14000a4c7: 48 81 c4 00 01 00 00        	add	rsp, 256
14000a4ce: 41 5f                       	pop	r15
14000a4d0: 41 5e                       	pop	r14
14000a4d2: 41 5d                       	pop	r13
14000a4d4: 41 5c                       	pop	r12
14000a4d6: 5f                          	pop	rdi
14000a4d7: 5e                          	pop	rsi
14000a4d8: 5d                          	pop	rbp
14000a4d9: c3                          	ret
14000a4da: ff 15 a0 3b 00 00           	call	qword ptr [rip + 15264] # 0x14000e080
14000a4e0: 89 45 97                    	mov	dword ptr [rbp - 105], eax
14000a4e3: 8b 4c 24 40                 	mov	ecx, dword ptr [rsp + 64]
14000a4e7: 38 5d 8f                    	cmp	byte ptr [rbp - 113], bl
14000a4ea: eb a9                       	jmp	0x14000a495 <.text+0x9495>
14000a4ec: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000a4f1: 48 89 6c 24 18              	mov	qword ptr [rsp + 24], rbp
14000a4f6: 56                          	push	rsi
14000a4f7: 57                          	push	rdi
14000a4f8: 41 56                       	push	r14
14000a4fa: b8 50 14 00 00              	mov	eax, 5200
14000a4ff: e8 ac 28 00 00              	call	0x14000cdb0 <.text+0xbdb0>
14000a504: 48 2b e0                    	sub	rsp, rax
14000a507: 48 8b 05 1a cb 00 00        	mov	rax, qword ptr [rip + 51994] # 0x140017028
14000a50e: 48 33 c4                    	xor	rax, rsp
14000a511: 48 89 84 24 40 14 00 00     	mov	qword ptr [rsp + 5184], rax
14000a519: 4c 63 d2                    	movsxd	r10, edx
14000a51c: 48 8b f9                    	mov	rdi, rcx
14000a51f: 49 8b c2                    	mov	rax, r10
14000a522: 41 8b e9                    	mov	ebp, r9d
14000a525: 48 c1 f8 06                 	sar	rax, 6
14000a529: 48 8d 0d e0 da 00 00        	lea	rcx, [rip + 56032]      # 0x140018010
14000a530: 41 83 e2 3f                 	and	r10d, 63
14000a534: 49 03 e8                    	add	rbp, r8
14000a537: 49 8b f0                    	mov	rsi, r8
14000a53a: 48 8b 04 c1                 	mov	rax, qword ptr [rcx + 8*rax]
14000a53e: 4b 8d 14 d2                 	lea	rdx, [r10 + 8*r10]
14000a542: 4c 8b 74 d0 28              	mov	r14, qword ptr [rax + 8*rdx + 40]
14000a547: 33 c0                       	xor	eax, eax
14000a549: 48 89 07                    	mov	qword ptr [rdi], rax
14000a54c: 89 47 08                    	mov	dword ptr [rdi + 8], eax
14000a54f: 4c 3b c5                    	cmp	r8, rbp
14000a552: 73 6f                       	jae	0x14000a5c3 <.text+0x95c3>
14000a554: 48 8d 5c 24 40              	lea	rbx, [rsp + 64]
14000a559: 48 3b f5                    	cmp	rsi, rbp
14000a55c: 73 24                       	jae	0x14000a582 <.text+0x9582>
14000a55e: 8a 06                       	mov	al, byte ptr [rsi]
14000a560: 48 ff c6                    	inc	rsi
14000a563: 3c 0a                       	cmp	al, 10
14000a565: 75 09                       	jne	0x14000a570 <.text+0x9570>
14000a567: ff 47 08                    	inc	dword ptr [rdi + 8]
14000a56a: c6 03 0d                    	mov	byte ptr [rbx], 13
14000a56d: 48 ff c3                    	inc	rbx
14000a570: 88 03                       	mov	byte ptr [rbx], al
14000a572: 48 ff c3                    	inc	rbx
14000a575: 48 8d 84 24 3f 14 00 00     	lea	rax, [rsp + 5183]
14000a57d: 48 3b d8                    	cmp	rbx, rax
14000a580: 72 d7                       	jb	0x14000a559 <.text+0x9559>
14000a582: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000a588: 48 8d 44 24 40              	lea	rax, [rsp + 64]
14000a58d: 2b d8                       	sub	ebx, eax
14000a58f: 4c 8d 4c 24 30              	lea	r9, [rsp + 48]
14000a594: 44 8b c3                    	mov	r8d, ebx
14000a597: 48 8d 54 24 40              	lea	rdx, [rsp + 64]
14000a59c: 49 8b ce                    	mov	rcx, r14
14000a59f: ff 15 53 3b 00 00           	call	qword ptr [rip + 15187] # 0x14000e0f8
14000a5a5: 85 c0                       	test	eax, eax
14000a5a7: 74 12                       	je	0x14000a5bb <.text+0x95bb>
14000a5a9: 8b 44 24 30                 	mov	eax, dword ptr [rsp + 48]
14000a5ad: 01 47 04                    	add	dword ptr [rdi + 4], eax
14000a5b0: 3b c3                       	cmp	eax, ebx
14000a5b2: 72 0f                       	jb	0x14000a5c3 <.text+0x95c3>
14000a5b4: 48 3b f5                    	cmp	rsi, rbp
14000a5b7: 72 9b                       	jb	0x14000a554 <.text+0x9554>
14000a5b9: eb 08                       	jmp	0x14000a5c3 <.text+0x95c3>
14000a5bb: ff 15 bf 3a 00 00           	call	qword ptr [rip + 15039] # 0x14000e080
14000a5c1: 89 07                       	mov	dword ptr [rdi], eax
14000a5c3: 48 8b c7                    	mov	rax, rdi
14000a5c6: 48 8b 8c 24 40 14 00 00     	mov	rcx, qword ptr [rsp + 5184]
14000a5ce: 48 33 cc                    	xor	rcx, rsp
14000a5d1: e8 0a 25 00 00              	call	0x14000cae0 <.text+0xbae0>
14000a5d6: 4c 8d 9c 24 50 14 00 00     	lea	r11, [rsp + 5200]
14000a5de: 49 8b 5b 20                 	mov	rbx, qword ptr [r11 + 32]
14000a5e2: 49 8b 6b 30                 	mov	rbp, qword ptr [r11 + 48]
14000a5e6: 49 8b e3                    	mov	rsp, r11
14000a5e9: 41 5e                       	pop	r14
14000a5eb: 5f                          	pop	rdi
14000a5ec: 5e                          	pop	rsi
14000a5ed: c3                          	ret
14000a5ee: cc                          	int3
14000a5ef: cc                          	int3
14000a5f0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000a5f5: 48 89 6c 24 18              	mov	qword ptr [rsp + 24], rbp
14000a5fa: 56                          	push	rsi
14000a5fb: 57                          	push	rdi
14000a5fc: 41 56                       	push	r14
14000a5fe: b8 50 14 00 00              	mov	eax, 5200
14000a603: e8 a8 27 00 00              	call	0x14000cdb0 <.text+0xbdb0>
14000a608: 48 2b e0                    	sub	rsp, rax
14000a60b: 48 8b 05 16 ca 00 00        	mov	rax, qword ptr [rip + 51734] # 0x140017028
14000a612: 48 33 c4                    	xor	rax, rsp
14000a615: 48 89 84 24 40 14 00 00     	mov	qword ptr [rsp + 5184], rax
14000a61d: 4c 63 d2                    	movsxd	r10, edx
14000a620: 48 8b f9                    	mov	rdi, rcx
14000a623: 49 8b c2                    	mov	rax, r10
14000a626: 41 8b e9                    	mov	ebp, r9d
14000a629: 48 c1 f8 06                 	sar	rax, 6
14000a62d: 48 8d 0d dc d9 00 00        	lea	rcx, [rip + 55772]      # 0x140018010
14000a634: 41 83 e2 3f                 	and	r10d, 63
14000a638: 49 03 e8                    	add	rbp, r8
14000a63b: 49 8b f0                    	mov	rsi, r8
14000a63e: 48 8b 04 c1                 	mov	rax, qword ptr [rcx + 8*rax]
14000a642: 4b 8d 14 d2                 	lea	rdx, [r10 + 8*r10]
14000a646: 4c 8b 74 d0 28              	mov	r14, qword ptr [rax + 8*rdx + 40]
14000a64b: 33 c0                       	xor	eax, eax
14000a64d: 48 89 07                    	mov	qword ptr [rdi], rax
14000a650: 89 47 08                    	mov	dword ptr [rdi + 8], eax
14000a653: 4c 3b c5                    	cmp	r8, rbp
14000a656: 0f 83 82 00 00 00           	jae	0x14000a6de <.text+0x96de>
14000a65c: 48 8d 5c 24 40              	lea	rbx, [rsp + 64]
14000a661: 48 3b f5                    	cmp	rsi, rbp
14000a664: 73 31                       	jae	0x14000a697 <.text+0x9697>
14000a666: 0f b7 06                    	movzx	eax, word ptr [rsi]
14000a669: 48 83 c6 02                 	add	rsi, 2
14000a66d: 66 83 f8 0a                 	cmp	ax, 10
14000a671: 75 10                       	jne	0x14000a683 <.text+0x9683>
14000a673: 83 47 08 02                 	add	dword ptr [rdi + 8], 2
14000a677: b9 0d 00 00 00              	mov	ecx, 13
14000a67c: 66 89 0b                    	mov	word ptr [rbx], cx
14000a67f: 48 83 c3 02                 	add	rbx, 2
14000a683: 66 89 03                    	mov	word ptr [rbx], ax
14000a686: 48 83 c3 02                 	add	rbx, 2
14000a68a: 48 8d 84 24 3e 14 00 00     	lea	rax, [rsp + 5182]
14000a692: 48 3b d8                    	cmp	rbx, rax
14000a695: 72 ca                       	jb	0x14000a661 <.text+0x9661>
14000a697: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000a69d: 48 8d 44 24 40              	lea	rax, [rsp + 64]
14000a6a2: 48 2b d8                    	sub	rbx, rax
14000a6a5: 4c 8d 4c 24 30              	lea	r9, [rsp + 48]
14000a6aa: 48 d1 fb                    	sar	rbx
14000a6ad: 48 8d 54 24 40              	lea	rdx, [rsp + 64]
14000a6b2: 03 db                       	add	ebx, ebx
14000a6b4: 49 8b ce                    	mov	rcx, r14
14000a6b7: 44 8b c3                    	mov	r8d, ebx
14000a6ba: ff 15 38 3a 00 00           	call	qword ptr [rip + 14904] # 0x14000e0f8
14000a6c0: 85 c0                       	test	eax, eax
14000a6c2: 74 12                       	je	0x14000a6d6 <.text+0x96d6>
14000a6c4: 8b 44 24 30                 	mov	eax, dword ptr [rsp + 48]
14000a6c8: 01 47 04                    	add	dword ptr [rdi + 4], eax
14000a6cb: 3b c3                       	cmp	eax, ebx
14000a6cd: 72 0f                       	jb	0x14000a6de <.text+0x96de>
14000a6cf: 48 3b f5                    	cmp	rsi, rbp
14000a6d2: 72 88                       	jb	0x14000a65c <.text+0x965c>
14000a6d4: eb 08                       	jmp	0x14000a6de <.text+0x96de>
14000a6d6: ff 15 a4 39 00 00           	call	qword ptr [rip + 14756] # 0x14000e080
14000a6dc: 89 07                       	mov	dword ptr [rdi], eax
14000a6de: 48 8b c7                    	mov	rax, rdi
14000a6e1: 48 8b 8c 24 40 14 00 00     	mov	rcx, qword ptr [rsp + 5184]
14000a6e9: 48 33 cc                    	xor	rcx, rsp
14000a6ec: e8 ef 23 00 00              	call	0x14000cae0 <.text+0xbae0>
14000a6f1: 4c 8d 9c 24 50 14 00 00     	lea	r11, [rsp + 5200]
14000a6f9: 49 8b 5b 20                 	mov	rbx, qword ptr [r11 + 32]
14000a6fd: 49 8b 6b 30                 	mov	rbp, qword ptr [r11 + 48]
14000a701: 49 8b e3                    	mov	rsp, r11
14000a704: 41 5e                       	pop	r14
14000a706: 5f                          	pop	rdi
14000a707: 5e                          	pop	rsi
14000a708: c3                          	ret
14000a709: cc                          	int3
14000a70a: cc                          	int3
14000a70b: cc                          	int3
14000a70c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000a711: 48 89 6c 24 18              	mov	qword ptr [rsp + 24], rbp
14000a716: 56                          	push	rsi
14000a717: 57                          	push	rdi
14000a718: 41 54                       	push	r12
14000a71a: 41 56                       	push	r14
14000a71c: 41 57                       	push	r15
14000a71e: b8 70 14 00 00              	mov	eax, 5232
14000a723: e8 88 26 00 00              	call	0x14000cdb0 <.text+0xbdb0>
14000a728: 48 2b e0                    	sub	rsp, rax
14000a72b: 48 8b 05 f6 c8 00 00        	mov	rax, qword ptr [rip + 51446] # 0x140017028
14000a732: 48 33 c4                    	xor	rax, rsp
14000a735: 48 89 84 24 60 14 00 00     	mov	qword ptr [rsp + 5216], rax
14000a73d: 4c 63 d2                    	movsxd	r10, edx
14000a740: 48 8b d9                    	mov	rbx, rcx
14000a743: 49 8b c2                    	mov	rax, r10
14000a746: 45 8b f1                    	mov	r14d, r9d
14000a749: 48 c1 f8 06                 	sar	rax, 6
14000a74d: 48 8d 0d bc d8 00 00        	lea	rcx, [rip + 55484]      # 0x140018010
14000a754: 41 83 e2 3f                 	and	r10d, 63
14000a758: 4d 03 f0                    	add	r14, r8
14000a75b: 4d 8b f8                    	mov	r15, r8
14000a75e: 49 8b f8                    	mov	rdi, r8
14000a761: 48 8b 04 c1                 	mov	rax, qword ptr [rcx + 8*rax]
14000a765: 4b 8d 14 d2                 	lea	rdx, [r10 + 8*r10]
14000a769: 4c 8b 64 d0 28              	mov	r12, qword ptr [rax + 8*rdx + 40]
14000a76e: 33 c0                       	xor	eax, eax
14000a770: 48 89 03                    	mov	qword ptr [rbx], rax
14000a773: 4d 3b c6                    	cmp	r8, r14
14000a776: 89 43 08                    	mov	dword ptr [rbx + 8], eax
14000a779: 0f 83 ce 00 00 00           	jae	0x14000a84d <.text+0x984d>
14000a77f: 48 8d 44 24 50              	lea	rax, [rsp + 80]
14000a784: 49 3b fe                    	cmp	rdi, r14
14000a787: 73 2d                       	jae	0x14000a7b6 <.text+0x97b6>
14000a789: 0f b7 0f                    	movzx	ecx, word ptr [rdi]
14000a78c: 48 83 c7 02                 	add	rdi, 2
14000a790: 66 83 f9 0a                 	cmp	cx, 10
14000a794: 75 0c                       	jne	0x14000a7a2 <.text+0x97a2>
14000a796: ba 0d 00 00 00              	mov	edx, 13
14000a79b: 66 89 10                    	mov	word ptr [rax], dx
14000a79e: 48 83 c0 02                 	add	rax, 2
14000a7a2: 66 89 08                    	mov	word ptr [rax], cx
14000a7a5: 48 83 c0 02                 	add	rax, 2
14000a7a9: 48 8d 8c 24 f8 06 00 00     	lea	rcx, [rsp + 1784]
14000a7b1: 48 3b c1                    	cmp	rax, rcx
14000a7b4: 72 ce                       	jb	0x14000a784 <.text+0x9784>
14000a7b6: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
14000a7bc: 48 8d 4c 24 50              	lea	rcx, [rsp + 80]
14000a7c1: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
14000a7c7: 4c 8d 44 24 50              	lea	r8, [rsp + 80]
14000a7cc: 48 2b c1                    	sub	rax, rcx
14000a7cf: c7 44 24 28 55 0d 00 00     	mov	dword ptr [rsp + 40], 3413
14000a7d7: 48 8d 8c 24 00 07 00 00     	lea	rcx, [rsp + 1792]
14000a7df: 48 d1 f8                    	sar	rax
14000a7e2: 48 89 4c 24 20              	mov	qword ptr [rsp + 32], rcx
14000a7e7: 44 8b c8                    	mov	r9d, eax
14000a7ea: b9 e9 fd 00 00              	mov	ecx, 65001
14000a7ef: 33 d2                       	xor	edx, edx
14000a7f1: e8 02 be ff ff              	call	0x1400065f8 <.text+0x55f8>
14000a7f6: 8b e8                       	mov	ebp, eax
14000a7f8: 85 c0                       	test	eax, eax
14000a7fa: 74 49                       	je	0x14000a845 <.text+0x9845>
14000a7fc: 33 f6                       	xor	esi, esi
14000a7fe: 85 c0                       	test	eax, eax
14000a800: 74 33                       	je	0x14000a835 <.text+0x9835>
14000a802: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000a808: 48 8d 94 24 00 07 00 00     	lea	rdx, [rsp + 1792]
14000a810: 8b ce                       	mov	ecx, esi
14000a812: 4c 8d 4c 24 40              	lea	r9, [rsp + 64]
14000a817: 44 8b c5                    	mov	r8d, ebp
14000a81a: 48 03 d1                    	add	rdx, rcx
14000a81d: 49 8b cc                    	mov	rcx, r12
14000a820: 44 2b c6                    	sub	r8d, esi
14000a823: ff 15 cf 38 00 00           	call	qword ptr [rip + 14543] # 0x14000e0f8
14000a829: 85 c0                       	test	eax, eax
14000a82b: 74 18                       	je	0x14000a845 <.text+0x9845>
14000a82d: 03 74 24 40                 	add	esi, dword ptr [rsp + 64]
14000a831: 3b f5                       	cmp	esi, ebp
14000a833: 72 cd                       	jb	0x14000a802 <.text+0x9802>
14000a835: 8b c7                       	mov	eax, edi
14000a837: 41 2b c7                    	sub	eax, r15d
14000a83a: 89 43 04                    	mov	dword ptr [rbx + 4], eax
14000a83d: 49 3b fe                    	cmp	rdi, r14
14000a840: e9 34 ff ff ff              	jmp	0x14000a779 <.text+0x9779>
14000a845: ff 15 35 38 00 00           	call	qword ptr [rip + 14389] # 0x14000e080
14000a84b: 89 03                       	mov	dword ptr [rbx], eax
14000a84d: 48 8b c3                    	mov	rax, rbx
14000a850: 48 8b 8c 24 60 14 00 00     	mov	rcx, qword ptr [rsp + 5216]
14000a858: 48 33 cc                    	xor	rcx, rsp
14000a85b: e8 80 22 00 00              	call	0x14000cae0 <.text+0xbae0>
14000a860: 4c 8d 9c 24 70 14 00 00     	lea	r11, [rsp + 5232]
14000a868: 49 8b 5b 30                 	mov	rbx, qword ptr [r11 + 48]
14000a86c: 49 8b 6b 40                 	mov	rbp, qword ptr [r11 + 64]
14000a870: 49 8b e3                    	mov	rsp, r11
14000a873: 41 5f                       	pop	r15
14000a875: 41 5e                       	pop	r14
14000a877: 41 5c                       	pop	r12
14000a879: 5f                          	pop	rdi
14000a87a: 5e                          	pop	rsi
14000a87b: c3                          	ret
14000a87c: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
14000a881: 48 89 74 24 18              	mov	qword ptr [rsp + 24], rsi
14000a886: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
14000a88a: 57                          	push	rdi
14000a88b: 41 54                       	push	r12
14000a88d: 41 55                       	push	r13
14000a88f: 41 56                       	push	r14
14000a891: 41 57                       	push	r15
14000a893: 48 83 ec 20                 	sub	rsp, 32
14000a897: 45 8b f0                    	mov	r14d, r8d
14000a89a: 4c 8b fa                    	mov	r15, rdx
14000a89d: 48 63 d9                    	movsxd	rbx, ecx
14000a8a0: 83 fb fe                    	cmp	ebx, -2
14000a8a3: 75 18                       	jne	0x14000a8bd <.text+0x98bd>
14000a8a5: e8 16 a5 ff ff              	call	0x140004dc0 <.text+0x3dc0>
14000a8aa: 83 20 00                    	and	dword ptr [rax], 0
14000a8ad: e8 2e a5 ff ff              	call	0x140004de0 <.text+0x3de0>
14000a8b2: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000a8b8: e9 8f 00 00 00              	jmp	0x14000a94c <.text+0x994c>
14000a8bd: 85 c9                       	test	ecx, ecx
14000a8bf: 78 73                       	js	0x14000a934 <.text+0x9934>
14000a8c1: 3b 1d 49 db 00 00           	cmp	ebx, dword ptr [rip + 56137] # 0x140018410
14000a8c7: 73 6b                       	jae	0x14000a934 <.text+0x9934>
14000a8c9: 48 8b c3                    	mov	rax, rbx
14000a8cc: 48 8b f3                    	mov	rsi, rbx
14000a8cf: 48 c1 fe 06                 	sar	rsi, 6
14000a8d3: 4c 8d 2d 36 d7 00 00        	lea	r13, [rip + 55094]      # 0x140018010
14000a8da: 83 e0 3f                    	and	eax, 63
14000a8dd: 4c 8d 24 c0                 	lea	r12, [rax + 8*rax]
14000a8e1: 49 8b 44 f5 00              	mov	rax, qword ptr [r13 + 8*rsi]
14000a8e6: 42 f6 44 e0 38 01           	test	byte ptr [rax + 8*r12 + 56], 1
14000a8ec: 74 46                       	je	0x14000a934 <.text+0x9934>
14000a8ee: 8b cb                       	mov	ecx, ebx
14000a8f0: e8 5b c5 ff ff              	call	0x140006e50 <.text+0x5e50>
14000a8f5: 83 cf ff                    	or	edi, -1
14000a8f8: 49 8b 44 f5 00              	mov	rax, qword ptr [r13 + 8*rsi]
14000a8fd: 42 f6 44 e0 38 01           	test	byte ptr [rax + 8*r12 + 56], 1
14000a903: 75 15                       	jne	0x14000a91a <.text+0x991a>
14000a905: e8 d6 a4 ff ff              	call	0x140004de0 <.text+0x3de0>
14000a90a: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000a910: e8 ab a4 ff ff              	call	0x140004dc0 <.text+0x3dc0>
14000a915: 83 20 00                    	and	dword ptr [rax], 0
14000a918: eb 0f                       	jmp	0x14000a929 <.text+0x9929>
14000a91a: 45 8b c6                    	mov	r8d, r14d
14000a91d: 49 8b d7                    	mov	rdx, r15
14000a920: 8b cb                       	mov	ecx, ebx
14000a922: e8 41 00 00 00              	call	0x14000a968 <.text+0x9968>
14000a927: 8b f8                       	mov	edi, eax
14000a929: 8b cb                       	mov	ecx, ebx
14000a92b: e8 48 c5 ff ff              	call	0x140006e78 <.text+0x5e78>
14000a930: 8b c7                       	mov	eax, edi
14000a932: eb 1b                       	jmp	0x14000a94f <.text+0x994f>
14000a934: e8 87 a4 ff ff              	call	0x140004dc0 <.text+0x3dc0>
14000a939: 83 20 00                    	and	dword ptr [rax], 0
14000a93c: e8 9f a4 ff ff              	call	0x140004de0 <.text+0x3de0>
14000a941: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000a947: e8 74 a3 ff ff              	call	0x140004cc0 <.text+0x3cc0>
14000a94c: 83 c8 ff                    	or	eax, -1
14000a94f: 48 8b 5c 24 58              	mov	rbx, qword ptr [rsp + 88]
14000a954: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
14000a959: 48 83 c4 20                 	add	rsp, 32
14000a95d: 41 5f                       	pop	r15
14000a95f: 41 5e                       	pop	r14
14000a961: 41 5d                       	pop	r13
14000a963: 41 5c                       	pop	r12
14000a965: 5f                          	pop	rdi
14000a966: c3                          	ret
14000a967: cc                          	int3
14000a968: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000a96d: 55                          	push	rbp
14000a96e: 56                          	push	rsi
14000a96f: 57                          	push	rdi
14000a970: 41 54                       	push	r12
14000a972: 41 55                       	push	r13
14000a974: 41 56                       	push	r14
14000a976: 41 57                       	push	r15
14000a978: 48 8b ec                    	mov	rbp, rsp
14000a97b: 48 83 ec 60                 	sub	rsp, 96
14000a97f: 33 db                       	xor	ebx, ebx
14000a981: 45 8b f0                    	mov	r14d, r8d
14000a984: 4c 63 e1                    	movsxd	r12, ecx
14000a987: 48 8b fa                    	mov	rdi, rdx
14000a98a: 45 85 c0                    	test	r8d, r8d
14000a98d: 0f 84 9e 02 00 00           	je	0x14000ac31 <.text+0x9c31>
14000a993: 48 85 d2                    	test	rdx, rdx
14000a996: 75 1f                       	jne	0x14000a9b7 <.text+0x99b7>
14000a998: e8 23 a4 ff ff              	call	0x140004dc0 <.text+0x3dc0>
14000a99d: 89 18                       	mov	dword ptr [rax], ebx
14000a99f: e8 3c a4 ff ff              	call	0x140004de0 <.text+0x3de0>
14000a9a4: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
14000a9aa: e8 11 a3 ff ff              	call	0x140004cc0 <.text+0x3cc0>
14000a9af: 83 c8 ff                    	or	eax, -1
14000a9b2: e9 7c 02 00 00              	jmp	0x14000ac33 <.text+0x9c33>
14000a9b7: 49 8b c4                    	mov	rax, r12
14000a9ba: 48 8d 0d 4f d6 00 00        	lea	rcx, [rip + 54863]      # 0x140018010
14000a9c1: 83 e0 3f                    	and	eax, 63
14000a9c4: 4d 8b ec                    	mov	r13, r12
14000a9c7: 49 c1 fd 06                 	sar	r13, 6
14000a9cb: 4c 8d 3c c0                 	lea	r15, [rax + 8*rax]
14000a9cf: 4a 8b 0c e9                 	mov	rcx, qword ptr [rcx + 8*r13]
14000a9d3: 42 0f be 74 f9 39           	movsx	esi, byte ptr [rcx + 8*r15 + 57]
14000a9d9: 8d 46 ff                    	lea	eax, [rsi - 1]
14000a9dc: 3c 01                       	cmp	al, 1
14000a9de: 77 09                       	ja	0x14000a9e9 <.text+0x99e9>
14000a9e0: 41 8b c6                    	mov	eax, r14d
14000a9e3: f7 d0                       	not	eax
14000a9e5: a8 01                       	test	al, 1
14000a9e7: 74 af                       	je	0x14000a998 <.text+0x9998>
14000a9e9: 42 f6 44 f9 38 20           	test	byte ptr [rcx + 8*r15 + 56], 32
14000a9ef: 74 0e                       	je	0x14000a9ff <.text+0x99ff>
14000a9f1: 33 d2                       	xor	edx, edx
14000a9f3: 41 8b cc                    	mov	ecx, r12d
14000a9f6: 44 8d 42 02                 	lea	r8d, [rdx + 2]
14000a9fa: e8 8d 0b 00 00              	call	0x14000b58c <.text+0xa58c>
14000a9ff: 41 8b cc                    	mov	ecx, r12d
14000aa02: 48 89 5d e0                 	mov	qword ptr [rbp - 32], rbx
14000aa06: e8 35 03 00 00              	call	0x14000ad40 <.text+0x9d40>
14000aa0b: 85 c0                       	test	eax, eax
14000aa0d: 0f 84 0b 01 00 00           	je	0x14000ab1e <.text+0x9b1e>
14000aa13: 48 8d 05 f6 d5 00 00        	lea	rax, [rip + 54774]      # 0x140018010
14000aa1a: 4a 8b 04 e8                 	mov	rax, qword ptr [rax + 8*r13]
14000aa1e: 42 38 5c f8 38              	cmp	byte ptr [rax + 8*r15 + 56], bl
14000aa23: 0f 8d f5 00 00 00           	jge	0x14000ab1e <.text+0x9b1e>
14000aa29: e8 d6 9d ff ff              	call	0x140004804 <.text+0x3804>
14000aa2e: 48 8b 88 90 00 00 00        	mov	rcx, qword ptr [rax + 144]
14000aa35: 48 39 99 38 01 00 00        	cmp	qword ptr [rcx + 312], rbx
14000aa3c: 75 16                       	jne	0x14000aa54 <.text+0x9a54>
14000aa3e: 48 8d 05 cb d5 00 00        	lea	rax, [rip + 54731]      # 0x140018010
14000aa45: 4a 8b 04 e8                 	mov	rax, qword ptr [rax + 8*r13]
14000aa49: 42 38 5c f8 39              	cmp	byte ptr [rax + 8*r15 + 57], bl
14000aa4e: 0f 84 ca 00 00 00           	je	0x14000ab1e <.text+0x9b1e>
14000aa54: 48 8d 05 b5 d5 00 00        	lea	rax, [rip + 54709]      # 0x140018010
14000aa5b: 4a 8b 0c e8                 	mov	rcx, qword ptr [rax + 8*r13]
14000aa5f: 48 8d 55 f0                 	lea	rdx, [rbp - 16]
14000aa63: 4a 8b 4c f9 28              	mov	rcx, qword ptr [rcx + 8*r15 + 40]
14000aa68: ff 15 8a 37 00 00           	call	qword ptr [rip + 14218] # 0x14000e1f8
14000aa6e: 85 c0                       	test	eax, eax
14000aa70: 0f 84 a8 00 00 00           	je	0x14000ab1e <.text+0x9b1e>
14000aa76: 40 84 f6                    	test	sil, sil
14000aa79: 0f 84 81 00 00 00           	je	0x14000ab00 <.text+0x9b00>
14000aa7f: 40 fe ce                    	dec	sil
14000aa82: 40 80 fe 01                 	cmp	sil, 1
14000aa86: 0f 87 2e 01 00 00           	ja	0x14000abba <.text+0x9bba>
14000aa8c: 4e 8d 24 37                 	lea	r12, [rdi + r14]
14000aa90: 48 89 5d d0                 	mov	qword ptr [rbp - 48], rbx
14000aa94: 4c 8b f7                    	mov	r14, rdi
14000aa97: 49 3b fc                    	cmp	rdi, r12
14000aa9a: 0f 83 10 01 00 00           	jae	0x14000abb0 <.text+0x9bb0>
14000aaa0: 8b 75 d4                    	mov	esi, dword ptr [rbp - 44]
14000aaa3: 41 0f b7 06                 	movzx	eax, word ptr [r14]
14000aaa7: 0f b7 c8                    	movzx	ecx, ax
14000aaaa: 66 89 45 f0                 	mov	word ptr [rbp - 16], ax
14000aaae: e8 e1 0a 00 00              	call	0x14000b594 <.text+0xa594>
14000aab3: 0f b7 4d f0                 	movzx	ecx, word ptr [rbp - 16]
14000aab7: 66 3b c1                    	cmp	ax, cx
14000aaba: 75 36                       	jne	0x14000aaf2 <.text+0x9af2>
14000aabc: 83 c6 02                    	add	esi, 2
14000aabf: 89 75 d4                    	mov	dword ptr [rbp - 44], esi
14000aac2: 66 83 f9 0a                 	cmp	cx, 10
14000aac6: 75 1b                       	jne	0x14000aae3 <.text+0x9ae3>
14000aac8: b9 0d 00 00 00              	mov	ecx, 13
14000aacd: e8 c2 0a 00 00              	call	0x14000b594 <.text+0xa594>
14000aad2: b9 0d 00 00 00              	mov	ecx, 13
14000aad7: 66 3b c1                    	cmp	ax, cx
14000aada: 75 16                       	jne	0x14000aaf2 <.text+0x9af2>
14000aadc: ff c6                       	inc	esi
14000aade: 89 75 d4                    	mov	dword ptr [rbp - 44], esi
14000aae1: ff c3                       	inc	ebx
14000aae3: 49 83 c6 02                 	add	r14, 2
14000aae7: 4d 3b f4                    	cmp	r14, r12
14000aaea: 0f 83 c0 00 00 00           	jae	0x14000abb0 <.text+0x9bb0>
14000aaf0: eb b1                       	jmp	0x14000aaa3 <.text+0x9aa3>
14000aaf2: ff 15 88 35 00 00           	call	qword ptr [rip + 13704] # 0x14000e080
14000aaf8: 89 45 d0                    	mov	dword ptr [rbp - 48], eax
14000aafb: e9 b0 00 00 00              	jmp	0x14000abb0 <.text+0x9bb0>
14000ab00: 45 8b ce                    	mov	r9d, r14d
14000ab03: 48 8d 4d d0                 	lea	rcx, [rbp - 48]
14000ab07: 4c 8b c7                    	mov	r8, rdi
14000ab0a: 41 8b d4                    	mov	edx, r12d
14000ab0d: e8 ee f4 ff ff              	call	0x14000a000 <.text+0x9000>
14000ab12: f2 0f 10 00                 	movsd	xmm0, qword ptr [rax]   # xmm0 = mem[0],zero
14000ab16: 8b 58 08                    	mov	ebx, dword ptr [rax + 8]
14000ab19: e9 97 00 00 00              	jmp	0x14000abb5 <.text+0x9bb5>
14000ab1e: 48 8d 05 eb d4 00 00        	lea	rax, [rip + 54507]      # 0x140018010
14000ab25: 4a 8b 0c e8                 	mov	rcx, qword ptr [rax + 8*r13]
14000ab29: 42 38 5c f9 38              	cmp	byte ptr [rcx + 8*r15 + 56], bl
14000ab2e: 7d 4d                       	jge	0x14000ab7d <.text+0x9b7d>
14000ab30: 8b ce                       	mov	ecx, esi
14000ab32: 40 84 f6                    	test	sil, sil
14000ab35: 74 32                       	je	0x14000ab69 <.text+0x9b69>
14000ab37: 83 e9 01                    	sub	ecx, 1
14000ab3a: 74 19                       	je	0x14000ab55 <.text+0x9b55>
14000ab3c: 83 f9 01                    	cmp	ecx, 1
14000ab3f: 75 79                       	jne	0x14000abba <.text+0x9bba>
14000ab41: 45 8b ce                    	mov	r9d, r14d
14000ab44: 48 8d 4d d0                 	lea	rcx, [rbp - 48]
14000ab48: 4c 8b c7                    	mov	r8, rdi
14000ab4b: 41 8b d4                    	mov	edx, r12d
14000ab4e: e8 9d fa ff ff              	call	0x14000a5f0 <.text+0x95f0>
14000ab53: eb bd                       	jmp	0x14000ab12 <.text+0x9b12>
14000ab55: 45 8b ce                    	mov	r9d, r14d
14000ab58: 48 8d 4d d0                 	lea	rcx, [rbp - 48]
14000ab5c: 4c 8b c7                    	mov	r8, rdi
14000ab5f: 41 8b d4                    	mov	edx, r12d
14000ab62: e8 a5 fb ff ff              	call	0x14000a70c <.text+0x970c>
14000ab67: eb a9                       	jmp	0x14000ab12 <.text+0x9b12>
14000ab69: 45 8b ce                    	mov	r9d, r14d
14000ab6c: 48 8d 4d d0                 	lea	rcx, [rbp - 48]
14000ab70: 4c 8b c7                    	mov	r8, rdi
14000ab73: 41 8b d4                    	mov	edx, r12d
14000ab76: e8 71 f9 ff ff              	call	0x14000a4ec <.text+0x94ec>
14000ab7b: eb 95                       	jmp	0x14000ab12 <.text+0x9b12>
14000ab7d: 4a 8b 4c f9 28              	mov	rcx, qword ptr [rcx + 8*r15 + 40]
14000ab82: 4c 8d 4d d4                 	lea	r9, [rbp - 44]
14000ab86: 33 c0                       	xor	eax, eax
14000ab88: 45 8b c6                    	mov	r8d, r14d
14000ab8b: 48 21 44 24 20              	and	qword ptr [rsp + 32], rax
14000ab90: 48 8b d7                    	mov	rdx, rdi
14000ab93: 48 89 45 d0                 	mov	qword ptr [rbp - 48], rax
14000ab97: 89 45 d8                    	mov	dword ptr [rbp - 40], eax
14000ab9a: ff 15 58 35 00 00           	call	qword ptr [rip + 13656] # 0x14000e0f8
14000aba0: 85 c0                       	test	eax, eax
14000aba2: 75 09                       	jne	0x14000abad <.text+0x9bad>
14000aba4: ff 15 d6 34 00 00           	call	qword ptr [rip + 13526] # 0x14000e080
14000abaa: 89 45 d0                    	mov	dword ptr [rbp - 48], eax
14000abad: 8b 5d d8                    	mov	ebx, dword ptr [rbp - 40]
14000abb0: f2 0f 10 45 d0              	movsd	xmm0, qword ptr [rbp - 48] # xmm0 = mem[0],zero
14000abb5: f2 0f 11 45 e0              	movsd	qword ptr [rbp - 32], xmm0
14000abba: 48 8b 45 e0                 	mov	rax, qword ptr [rbp - 32]
14000abbe: 48 c1 e8 20                 	shr	rax, 32
14000abc2: 85 c0                       	test	eax, eax
14000abc4: 75 64                       	jne	0x14000ac2a <.text+0x9c2a>
14000abc6: 8b 45 e0                    	mov	eax, dword ptr [rbp - 32]
14000abc9: 85 c0                       	test	eax, eax
14000abcb: 74 2d                       	je	0x14000abfa <.text+0x9bfa>
14000abcd: 83 f8 05                    	cmp	eax, 5
14000abd0: 75 1b                       	jne	0x14000abed <.text+0x9bed>
14000abd2: e8 09 a2 ff ff              	call	0x140004de0 <.text+0x3de0>
14000abd7: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000abdd: e8 de a1 ff ff              	call	0x140004dc0 <.text+0x3dc0>
14000abe2: c7 00 05 00 00 00           	mov	dword ptr [rax], 5
14000abe8: e9 c2 fd ff ff              	jmp	0x14000a9af <.text+0x99af>
14000abed: 8b 4d e0                    	mov	ecx, dword ptr [rbp - 32]
14000abf0: e8 7b a1 ff ff              	call	0x140004d70 <.text+0x3d70>
14000abf5: e9 b5 fd ff ff              	jmp	0x14000a9af <.text+0x99af>
14000abfa: 48 8d 05 0f d4 00 00        	lea	rax, [rip + 54287]      # 0x140018010
14000ac01: 4a 8b 04 e8                 	mov	rax, qword ptr [rax + 8*r13]
14000ac05: 42 f6 44 f8 38 40           	test	byte ptr [rax + 8*r15 + 56], 64
14000ac0b: 74 05                       	je	0x14000ac12 <.text+0x9c12>
14000ac0d: 80 3f 1a                    	cmp	byte ptr [rdi], 26
14000ac10: 74 1f                       	je	0x14000ac31 <.text+0x9c31>
14000ac12: e8 c9 a1 ff ff              	call	0x140004de0 <.text+0x3de0>
14000ac17: c7 00 1c 00 00 00           	mov	dword ptr [rax], 28
14000ac1d: e8 9e a1 ff ff              	call	0x140004dc0 <.text+0x3dc0>
14000ac22: 83 20 00                    	and	dword ptr [rax], 0
14000ac25: e9 85 fd ff ff              	jmp	0x14000a9af <.text+0x99af>
14000ac2a: 8b 45 e4                    	mov	eax, dword ptr [rbp - 28]
14000ac2d: 2b c3                       	sub	eax, ebx
14000ac2f: eb 02                       	jmp	0x14000ac33 <.text+0x9c33>
14000ac31: 33 c0                       	xor	eax, eax
14000ac33: 48 8b 9c 24 b8 00 00 00     	mov	rbx, qword ptr [rsp + 184]
14000ac3b: 48 83 c4 60                 	add	rsp, 96
14000ac3f: 41 5f                       	pop	r15
14000ac41: 41 5e                       	pop	r14
14000ac43: 41 5d                       	pop	r13
14000ac45: 41 5c                       	pop	r12
14000ac47: 5f                          	pop	rdi
14000ac48: 5e                          	pop	rsi
14000ac49: 5d                          	pop	rbp
14000ac4a: c3                          	ret
14000ac4b: cc                          	int3
14000ac4c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000ac51: 57                          	push	rdi
14000ac52: 48 83 ec 30                 	sub	rsp, 48
14000ac56: 83 64 24 20 00              	and	dword ptr [rsp + 32], 0
14000ac5b: b9 08 00 00 00              	mov	ecx, 8
14000ac60: e8 9f bf ff ff              	call	0x140006c04 <.text+0x5c04>
14000ac65: 90                          	nop
14000ac66: bb 03 00 00 00              	mov	ebx, 3
14000ac6b: 89 5c 24 24                 	mov	dword ptr [rsp + 36], ebx
14000ac6f: 3b 1d 93 d9 00 00           	cmp	ebx, dword ptr [rip + 55699] # 0x140018608
14000ac75: 74 6d                       	je	0x14000ace4 <.text+0x9ce4>
14000ac77: 48 63 fb                    	movsxd	rdi, ebx
14000ac7a: 48 8b 05 8f d9 00 00        	mov	rax, qword ptr [rip + 55695] # 0x140018610
14000ac81: 48 8b 0c f8                 	mov	rcx, qword ptr [rax + 8*rdi]
14000ac85: 48 85 c9                    	test	rcx, rcx
14000ac88: 75 02                       	jne	0x14000ac8c <.text+0x9c8c>
14000ac8a: eb 54                       	jmp	0x14000ace0 <.text+0x9ce0>
14000ac8c: 8b 41 14                    	mov	eax, dword ptr [rcx + 20]
14000ac8f: c1 e8 0d                    	shr	eax, 13
14000ac92: a8 01                       	test	al, 1
14000ac94: 74 19                       	je	0x14000acaf <.text+0x9caf>
14000ac96: 48 8b 0d 73 d9 00 00        	mov	rcx, qword ptr [rip + 55667] # 0x140018610
14000ac9d: 48 8b 0c f9                 	mov	rcx, qword ptr [rcx + 8*rdi]
14000aca1: e8 ae 09 00 00              	call	0x14000b654 <.text+0xa654>
14000aca6: 83 f8 ff                    	cmp	eax, -1
14000aca9: 74 04                       	je	0x14000acaf <.text+0x9caf>
14000acab: ff 44 24 20                 	inc	dword ptr [rsp + 32]
14000acaf: 48 8b 05 5a d9 00 00        	mov	rax, qword ptr [rip + 55642] # 0x140018610
14000acb6: 48 8b 0c f8                 	mov	rcx, qword ptr [rax + 8*rdi]
14000acba: 48 83 c1 30                 	add	rcx, 48
14000acbe: ff 15 dc 33 00 00           	call	qword ptr [rip + 13276] # 0x14000e0a0
14000acc4: 48 8b 0d 45 d9 00 00        	mov	rcx, qword ptr [rip + 55621] # 0x140018610
14000accb: 48 8b 0c f9                 	mov	rcx, qword ptr [rcx + 8*rdi]
14000accf: e8 a4 a1 ff ff              	call	0x140004e78 <.text+0x3e78>
14000acd4: 48 8b 05 35 d9 00 00        	mov	rax, qword ptr [rip + 55605] # 0x140018610
14000acdb: 48 83 24 f8 00              	and	qword ptr [rax + 8*rdi], 0
14000ace0: ff c3                       	inc	ebx
14000ace2: eb 87                       	jmp	0x14000ac6b <.text+0x9c6b>
14000ace4: b9 08 00 00 00              	mov	ecx, 8
14000ace9: e8 6a bf ff ff              	call	0x140006c58 <.text+0x5c58>
14000acee: 8b 44 24 20                 	mov	eax, dword ptr [rsp + 32]
14000acf2: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
14000acf7: 48 83 c4 30                 	add	rsp, 48
14000acfb: 5f                          	pop	rdi
14000acfc: c3                          	ret
14000acfd: cc                          	int3
14000acfe: cc                          	int3
14000acff: cc                          	int3
14000ad00: 40 53                       	push	rbx
14000ad02: 48 83 ec 20                 	sub	rsp, 32
14000ad06: 8b 41 14                    	mov	eax, dword ptr [rcx + 20]
14000ad09: 48 8b d9                    	mov	rbx, rcx
14000ad0c: c1 e8 0d                    	shr	eax, 13
14000ad0f: a8 01                       	test	al, 1
14000ad11: 74 27                       	je	0x14000ad3a <.text+0x9d3a>
14000ad13: 8b 41 14                    	mov	eax, dword ptr [rcx + 20]
14000ad16: c1 e8 06                    	shr	eax, 6
14000ad19: a8 01                       	test	al, 1
14000ad1b: 74 1d                       	je	0x14000ad3a <.text+0x9d3a>
14000ad1d: 48 8b 49 08                 	mov	rcx, qword ptr [rcx + 8]
14000ad21: e8 52 a1 ff ff              	call	0x140004e78 <.text+0x3e78>
14000ad26: f0                          	lock
14000ad27: 81 63 14 bf fe ff ff        	and	dword ptr [rbx + 20], 4294966975
14000ad2e: 33 c0                       	xor	eax, eax
14000ad30: 48 89 43 08                 	mov	qword ptr [rbx + 8], rax
14000ad34: 48 89 03                    	mov	qword ptr [rbx], rax
14000ad37: 89 43 10                    	mov	dword ptr [rbx + 16], eax
14000ad3a: 48 83 c4 20                 	add	rsp, 32
14000ad3e: 5b                          	pop	rbx
14000ad3f: c3                          	ret
14000ad40: 48 83 ec 28                 	sub	rsp, 40
14000ad44: 83 f9 fe                    	cmp	ecx, -2
14000ad47: 75 0d                       	jne	0x14000ad56 <.text+0x9d56>
14000ad49: e8 92 a0 ff ff              	call	0x140004de0 <.text+0x3de0>
14000ad4e: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000ad54: eb 42                       	jmp	0x14000ad98 <.text+0x9d98>
14000ad56: 85 c9                       	test	ecx, ecx
14000ad58: 78 2e                       	js	0x14000ad88 <.text+0x9d88>
14000ad5a: 3b 0d b0 d6 00 00           	cmp	ecx, dword ptr [rip + 54960] # 0x140018410
14000ad60: 73 26                       	jae	0x14000ad88 <.text+0x9d88>
14000ad62: 48 63 c9                    	movsxd	rcx, ecx
14000ad65: 48 8d 15 a4 d2 00 00        	lea	rdx, [rip + 53924]      # 0x140018010
14000ad6c: 48 8b c1                    	mov	rax, rcx
14000ad6f: 83 e1 3f                    	and	ecx, 63
14000ad72: 48 c1 f8 06                 	sar	rax, 6
14000ad76: 48 8d 0c c9                 	lea	rcx, [rcx + 8*rcx]
14000ad7a: 48 8b 04 c2                 	mov	rax, qword ptr [rdx + 8*rax]
14000ad7e: 0f b6 44 c8 38              	movzx	eax, byte ptr [rax + 8*rcx + 56]
14000ad83: 83 e0 40                    	and	eax, 64
14000ad86: eb 12                       	jmp	0x14000ad9a <.text+0x9d9a>
14000ad88: e8 53 a0 ff ff              	call	0x140004de0 <.text+0x3de0>
14000ad8d: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000ad93: e8 28 9f ff ff              	call	0x140004cc0 <.text+0x3cc0>
14000ad98: 33 c0                       	xor	eax, eax
14000ad9a: 48 83 c4 28                 	add	rsp, 40
14000ad9e: c3                          	ret
14000ad9f: cc                          	int3
14000ada0: 40 53                       	push	rbx
14000ada2: 48 83 ec 40                 	sub	rsp, 64
14000ada6: 48 63 d9                    	movsxd	rbx, ecx
14000ada9: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
14000adae: e8 81 95 ff ff              	call	0x140004334 <.text+0x3334>
14000adb3: 8d 43 01                    	lea	eax, [rbx + 1]
14000adb6: 3d 00 01 00 00              	cmp	eax, 256
14000adbb: 77 13                       	ja	0x14000add0 <.text+0x9dd0>
14000adbd: 48 8b 44 24 28              	mov	rax, qword ptr [rsp + 40]
14000adc2: 48 8b 08                    	mov	rcx, qword ptr [rax]
14000adc5: 0f b7 04 59                 	movzx	eax, word ptr [rcx + 2*rbx]
14000adc9: 25 00 80 00 00              	and	eax, 32768
14000adce: eb 02                       	jmp	0x14000add2 <.text+0x9dd2>
14000add0: 33 c0                       	xor	eax, eax
14000add2: 80 7c 24 38 00              	cmp	byte ptr [rsp + 56], 0
14000add7: 74 0c                       	je	0x14000ade5 <.text+0x9de5>
14000add9: 48 8b 4c 24 20              	mov	rcx, qword ptr [rsp + 32]
14000adde: 83 a1 a8 03 00 00 fd        	and	dword ptr [rcx + 936], -3
14000ade5: 48 83 c4 40                 	add	rsp, 64
14000ade9: 5b                          	pop	rbx
14000adea: c3                          	ret
14000adeb: cc                          	int3
14000adec: 40 53                       	push	rbx
14000adee: 48 83 ec 30                 	sub	rsp, 48
14000adf2: 48 8b d9                    	mov	rbx, rcx
14000adf5: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
14000adfa: e8 b9 08 00 00              	call	0x14000b6b8 <.text+0xa6b8>
14000adff: 48 83 f8 04                 	cmp	rax, 4
14000ae03: 77 1a                       	ja	0x14000ae1f <.text+0x9e1f>
14000ae05: 8b 54 24 20                 	mov	edx, dword ptr [rsp + 32]
14000ae09: b9 fd ff 00 00              	mov	ecx, 65533
14000ae0e: 81 fa ff ff 00 00           	cmp	edx, 65535
14000ae14: 0f 47 d1                    	cmova	edx, ecx
14000ae17: 48 85 db                    	test	rbx, rbx
14000ae1a: 74 03                       	je	0x14000ae1f <.text+0x9e1f>
14000ae1c: 66 89 13                    	mov	word ptr [rbx], dx
14000ae1f: 48 83 c4 30                 	add	rsp, 48
14000ae23: 5b                          	pop	rbx
14000ae24: c3                          	ret
14000ae25: cc                          	int3
14000ae26: cc                          	int3
14000ae27: cc                          	int3
14000ae28: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
14000ae2d: 48 89 6c 24 18              	mov	qword ptr [rsp + 24], rbp
14000ae32: 57                          	push	rdi
14000ae33: 41 54                       	push	r12
14000ae35: 41 55                       	push	r13
14000ae37: 41 56                       	push	r14
14000ae39: 41 57                       	push	r15
14000ae3b: 48 83 ec 20                 	sub	rsp, 32
14000ae3f: 48 8b 3a                    	mov	rdi, qword ptr [rdx]
14000ae42: 45 33 ed                    	xor	r13d, r13d
14000ae45: 4d 8b e1                    	mov	r12, r9
14000ae48: 49 8b e8                    	mov	rbp, r8
14000ae4b: 4c 8b f2                    	mov	r14, rdx
14000ae4e: 4c 8b f9                    	mov	r15, rcx
14000ae51: 48 85 c9                    	test	rcx, rcx
14000ae54: 0f 84 ee 00 00 00           	je	0x14000af48 <.text+0x9f48>
14000ae5a: 48 8b d9                    	mov	rbx, rcx
14000ae5d: 4d 85 c0                    	test	r8, r8
14000ae60: 0f 84 a1 00 00 00           	je	0x14000af07 <.text+0x9f07>
14000ae66: 44 38 2f                    	cmp	byte ptr [rdi], r13b
14000ae69: 75 08                       	jne	0x14000ae73 <.text+0x9e73>
14000ae6b: 41 b8 01 00 00 00           	mov	r8d, 1
14000ae71: eb 1d                       	jmp	0x14000ae90 <.text+0x9e90>
14000ae73: 44 38 6f 01                 	cmp	byte ptr [rdi + 1], r13b
14000ae77: 75 08                       	jne	0x14000ae81 <.text+0x9e81>
14000ae79: 41 b8 02 00 00 00           	mov	r8d, 2
14000ae7f: eb 0f                       	jmp	0x14000ae90 <.text+0x9e90>
14000ae81: 8a 47 02                    	mov	al, byte ptr [rdi + 2]
14000ae84: f6 d8                       	neg	al
14000ae86: 4d 1b c0                    	sbb	r8, r8
14000ae89: 49 f7 d8                    	neg	r8
14000ae8c: 49 83 c0 03                 	add	r8, 3
14000ae90: 4d 8b cc                    	mov	r9, r12
14000ae93: 48 8d 4c 24 50              	lea	rcx, [rsp + 80]
14000ae98: 48 8b d7                    	mov	rdx, rdi
14000ae9b: e8 18 08 00 00              	call	0x14000b6b8 <.text+0xa6b8>
14000aea0: 48 8b d0                    	mov	rdx, rax
14000aea3: 48 83 f8 ff                 	cmp	rax, -1
14000aea7: 74 75                       	je	0x14000af1e <.text+0x9f1e>
14000aea9: 48 85 c0                    	test	rax, rax
14000aeac: 74 67                       	je	0x14000af15 <.text+0x9f15>
14000aeae: 8b 4c 24 50                 	mov	ecx, dword ptr [rsp + 80]
14000aeb2: 81 f9 ff ff 00 00           	cmp	ecx, 65535
14000aeb8: 76 39                       	jbe	0x14000aef3 <.text+0x9ef3>
14000aeba: 48 83 fd 01                 	cmp	rbp, 1
14000aebe: 76 47                       	jbe	0x14000af07 <.text+0x9f07>
14000aec0: 81 c1 00 00 ff ff           	add	ecx, 4294901760
14000aec6: 41 b8 00 d8 00 00           	mov	r8d, 55296
14000aecc: 8b c1                       	mov	eax, ecx
14000aece: 89 4c 24 50                 	mov	dword ptr [rsp + 80], ecx
14000aed2: c1 e8 0a                    	shr	eax, 10
14000aed5: 48 ff cd                    	dec	rbp
14000aed8: 66 41 0b c0                 	or	ax, r8w
14000aedc: 66 89 03                    	mov	word ptr [rbx], ax
14000aedf: b8 ff 03 00 00              	mov	eax, 1023
14000aee4: 66 23 c8                    	and	cx, ax
14000aee7: 48 83 c3 02                 	add	rbx, 2
14000aeeb: b8 00 dc 00 00              	mov	eax, 56320
14000aef0: 66 0b c8                    	or	cx, ax
14000aef3: 66 89 0b                    	mov	word ptr [rbx], cx
14000aef6: 48 03 fa                    	add	rdi, rdx
14000aef9: 48 83 c3 02                 	add	rbx, 2
14000aefd: 48 83 ed 01                 	sub	rbp, 1
14000af01: 0f 85 5f ff ff ff           	jne	0x14000ae66 <.text+0x9e66>
14000af07: 49 2b df                    	sub	rbx, r15
14000af0a: 49 89 3e                    	mov	qword ptr [r14], rdi
14000af0d: 48 d1 fb                    	sar	rbx
14000af10: 48 8b c3                    	mov	rax, rbx
14000af13: eb 1b                       	jmp	0x14000af30 <.text+0x9f30>
14000af15: 49 8b fd                    	mov	rdi, r13
14000af18: 66 44 89 2b                 	mov	word ptr [rbx], r13w
14000af1c: eb e9                       	jmp	0x14000af07 <.text+0x9f07>
14000af1e: 49 89 3e                    	mov	qword ptr [r14], rdi
14000af21: e8 ba 9e ff ff              	call	0x140004de0 <.text+0x3de0>
14000af26: c7 00 2a 00 00 00           	mov	dword ptr [rax], 42
14000af2c: 48 83 c8 ff                 	or	rax, -1
14000af30: 48 8b 5c 24 58              	mov	rbx, qword ptr [rsp + 88]
14000af35: 48 8b 6c 24 60              	mov	rbp, qword ptr [rsp + 96]
14000af3a: 48 83 c4 20                 	add	rsp, 32
14000af3e: 41 5f                       	pop	r15
14000af40: 41 5e                       	pop	r14
14000af42: 41 5d                       	pop	r13
14000af44: 41 5c                       	pop	r12
14000af46: 5f                          	pop	rdi
14000af47: c3                          	ret
14000af48: 49 8b dd                    	mov	rbx, r13
14000af4b: 44 38 2f                    	cmp	byte ptr [rdi], r13b
14000af4e: 75 08                       	jne	0x14000af58 <.text+0x9f58>
14000af50: 41 b8 01 00 00 00           	mov	r8d, 1
14000af56: eb 1d                       	jmp	0x14000af75 <.text+0x9f75>
14000af58: 44 38 6f 01                 	cmp	byte ptr [rdi + 1], r13b
14000af5c: 75 08                       	jne	0x14000af66 <.text+0x9f66>
14000af5e: 41 b8 02 00 00 00           	mov	r8d, 2
14000af64: eb 0f                       	jmp	0x14000af75 <.text+0x9f75>
14000af66: 8a 47 02                    	mov	al, byte ptr [rdi + 2]
14000af69: f6 d8                       	neg	al
14000af6b: 4d 1b c0                    	sbb	r8, r8
14000af6e: 49 f7 d8                    	neg	r8
14000af71: 49 83 c0 03                 	add	r8, 3
14000af75: 4d 8b cc                    	mov	r9, r12
14000af78: 48 8b d7                    	mov	rdx, rdi
14000af7b: 33 c9                       	xor	ecx, ecx
14000af7d: e8 36 07 00 00              	call	0x14000b6b8 <.text+0xa6b8>
14000af82: 48 83 f8 ff                 	cmp	rax, -1
14000af86: 74 99                       	je	0x14000af21 <.text+0x9f21>
14000af88: 48 85 c0                    	test	rax, rax
14000af8b: 74 83                       	je	0x14000af10 <.text+0x9f10>
14000af8d: 48 83 f8 04                 	cmp	rax, 4
14000af91: 75 03                       	jne	0x14000af96 <.text+0x9f96>
14000af93: 48 ff c3                    	inc	rbx
14000af96: 48 03 f8                    	add	rdi, rax
14000af99: 48 ff c3                    	inc	rbx
14000af9c: eb ad                       	jmp	0x14000af4b <.text+0x9f4b>
14000af9e: cc                          	int3
14000af9f: cc                          	int3
14000afa0: 33 c0                       	xor	eax, eax
14000afa2: 38 01                       	cmp	byte ptr [rcx], al
14000afa4: 74 0e                       	je	0x14000afb4 <.text+0x9fb4>
14000afa6: 48 3b c2                    	cmp	rax, rdx
14000afa9: 74 09                       	je	0x14000afb4 <.text+0x9fb4>
14000afab: 48 ff c0                    	inc	rax
14000afae: 80 3c 08 00                 	cmp	byte ptr [rax + rcx], 0
14000afb2: 75 f2                       	jne	0x14000afa6 <.text+0x9fa6>
14000afb4: c3                          	ret
14000afb5: cc                          	int3
14000afb6: cc                          	int3
14000afb7: cc                          	int3
14000afb8: 4c 8b da                    	mov	r11, rdx
14000afbb: 4c 8b d1                    	mov	r10, rcx
14000afbe: 4d 85 c0                    	test	r8, r8
14000afc1: 75 03                       	jne	0x14000afc6 <.text+0x9fc6>
14000afc3: 33 c0                       	xor	eax, eax
14000afc5: c3                          	ret
14000afc6: 41 0f b6 0a                 	movzx	ecx, byte ptr [r10]
14000afca: 41 0f b6 13                 	movzx	edx, byte ptr [r11]
14000afce: 8d 41 bf                    	lea	eax, [rcx - 65]
14000afd1: 83 f8 19                    	cmp	eax, 25
14000afd4: 44 8d 49 20                 	lea	r9d, [rcx + 32]
14000afd8: 8d 42 bf                    	lea	eax, [rdx - 65]
14000afdb: 44 0f 47 c9                 	cmova	r9d, ecx
14000afdf: 49 ff c2                    	inc	r10
14000afe2: 49 ff c3                    	inc	r11
14000afe5: 8d 4a 20                    	lea	ecx, [rdx + 32]
14000afe8: 83 f8 19                    	cmp	eax, 25
14000afeb: 41 8b c1                    	mov	eax, r9d
14000afee: 0f 47 ca                    	cmova	ecx, edx
14000aff1: 2b c1                       	sub	eax, ecx
14000aff3: 75 0b                       	jne	0x14000b000 <.text+0xa000>
14000aff5: 45 85 c9                    	test	r9d, r9d
14000aff8: 74 06                       	je	0x14000b000 <.text+0xa000>
14000affa: 49 83 e8 01                 	sub	r8, 1
14000affe: 75 c6                       	jne	0x14000afc6 <.text+0x9fc6>
14000b000: c3                          	ret
14000b001: cc                          	int3
14000b002: cc                          	int3
14000b003: cc                          	int3
14000b004: 48 83 ec 28                 	sub	rsp, 40
14000b008: 83 3d 51 cd 00 00 00        	cmp	dword ptr [rip + 52561], 0 # 0x140017d60
14000b00f: 75 36                       	jne	0x14000b047 <.text+0xa047>
14000b011: 48 85 c9                    	test	rcx, rcx
14000b014: 75 1a                       	jne	0x14000b030 <.text+0xa030>
14000b016: e8 c5 9d ff ff              	call	0x140004de0 <.text+0x3de0>
14000b01b: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
14000b021: e8 9a 9c ff ff              	call	0x140004cc0 <.text+0x3cc0>
14000b026: b8 ff ff ff 7f              	mov	eax, 2147483647
14000b02b: 48 83 c4 28                 	add	rsp, 40
14000b02f: c3                          	ret
14000b030: 48 85 d2                    	test	rdx, rdx
14000b033: 74 e1                       	je	0x14000b016 <.text+0xa016>
14000b035: 49 81 f8 ff ff ff 7f        	cmp	r8, 2147483647
14000b03c: 77 d8                       	ja	0x14000b016 <.text+0xa016>
14000b03e: 48 83 c4 28                 	add	rsp, 40
14000b042: e9 71 ff ff ff              	jmp	0x14000afb8 <.text+0x9fb8>
14000b047: 45 33 c9                    	xor	r9d, r9d
14000b04a: 48 83 c4 28                 	add	rsp, 40
14000b04e: e9 01 00 00 00              	jmp	0x14000b054 <.text+0xa054>
14000b053: cc                          	int3
14000b054: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000b059: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000b05e: 57                          	push	rdi
14000b05f: 48 83 ec 40                 	sub	rsp, 64
14000b063: 49 8b d8                    	mov	rbx, r8
14000b066: 48 8b fa                    	mov	rdi, rdx
14000b069: 48 8b f1                    	mov	rsi, rcx
14000b06c: 48 85 c9                    	test	rcx, rcx
14000b06f: 75 17                       	jne	0x14000b088 <.text+0xa088>
14000b071: e8 6a 9d ff ff              	call	0x140004de0 <.text+0x3de0>
14000b076: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
14000b07c: e8 3f 9c ff ff              	call	0x140004cc0 <.text+0x3cc0>
14000b081: b8 ff ff ff 7f              	mov	eax, 2147483647
14000b086: eb 69                       	jmp	0x14000b0f1 <.text+0xa0f1>
14000b088: 48 85 d2                    	test	rdx, rdx
14000b08b: 74 e4                       	je	0x14000b071 <.text+0xa071>
14000b08d: 48 81 fb ff ff ff 7f        	cmp	rbx, 2147483647
14000b094: 77 db                       	ja	0x14000b071 <.text+0xa071>
14000b096: 48 85 db                    	test	rbx, rbx
14000b099: 75 04                       	jne	0x14000b09f <.text+0xa09f>
14000b09b: 33 c0                       	xor	eax, eax
14000b09d: eb 52                       	jmp	0x14000b0f1 <.text+0xa0f1>
14000b09f: 49 8b d1                    	mov	rdx, r9
14000b0a2: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
14000b0a7: e8 88 92 ff ff              	call	0x140004334 <.text+0x3334>
14000b0ac: 48 8b 44 24 28              	mov	rax, qword ptr [rsp + 40]
14000b0b1: 4c 8b 80 10 01 00 00        	mov	r8, qword ptr [rax + 272]
14000b0b8: 0f b6 06                    	movzx	eax, byte ptr [rsi]
14000b0bb: 48 ff c6                    	inc	rsi
14000b0be: 42 0f b6 14 00              	movzx	edx, byte ptr [rax + r8]
14000b0c3: 0f b6 07                    	movzx	eax, byte ptr [rdi]
14000b0c6: 48 ff c7                    	inc	rdi
14000b0c9: 42 0f b6 0c 00              	movzx	ecx, byte ptr [rax + r8]
14000b0ce: 8b c2                       	mov	eax, edx
14000b0d0: 2b c1                       	sub	eax, ecx
14000b0d2: 75 0a                       	jne	0x14000b0de <.text+0xa0de>
14000b0d4: 85 d2                       	test	edx, edx
14000b0d6: 74 06                       	je	0x14000b0de <.text+0xa0de>
14000b0d8: 48 83 eb 01                 	sub	rbx, 1
14000b0dc: 75 da                       	jne	0x14000b0b8 <.text+0xa0b8>
14000b0de: 80 7c 24 38 00              	cmp	byte ptr [rsp + 56], 0
14000b0e3: 74 0c                       	je	0x14000b0f1 <.text+0xa0f1>
14000b0e5: 48 8b 4c 24 20              	mov	rcx, qword ptr [rsp + 32]
14000b0ea: 83 a1 a8 03 00 00 fd        	and	dword ptr [rcx + 936], -3
14000b0f1: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
14000b0f6: 48 8b 74 24 58              	mov	rsi, qword ptr [rsp + 88]
14000b0fb: 48 83 c4 40                 	add	rsp, 64
14000b0ff: 5f                          	pop	rdi
14000b100: c3                          	ret
14000b101: cc                          	int3
14000b102: cc                          	int3
14000b103: cc                          	int3
14000b104: 40 55                       	push	rbp
14000b106: 53                          	push	rbx
14000b107: 56                          	push	rsi
14000b108: 57                          	push	rdi
14000b109: 41 54                       	push	r12
14000b10b: 41 55                       	push	r13
14000b10d: 41 56                       	push	r14
14000b10f: 41 57                       	push	r15
14000b111: 48 81 ec 88 00 00 00        	sub	rsp, 136
14000b118: 48 8d 6c 24 50              	lea	rbp, [rsp + 80]
14000b11d: 48 8b 05 04 bf 00 00        	mov	rax, qword ptr [rip + 48900] # 0x140017028
14000b124: 48 33 c5                    	xor	rax, rbp
14000b127: 48 89 45 28                 	mov	qword ptr [rbp + 40], rax
14000b12b: 48 63 9d a0 00 00 00        	movsxd	rbx, dword ptr [rbp + 160]
14000b132: 45 33 e4                    	xor	r12d, r12d
14000b135: 4c 8b ad a8 00 00 00        	mov	r13, qword ptr [rbp + 168]
14000b13c: 4d 8b f9                    	mov	r15, r9
14000b13f: 44 89 45 00                 	mov	dword ptr [rbp], r8d
14000b143: 48 8b f9                    	mov	rdi, rcx
14000b146: 48 89 55 08                 	mov	qword ptr [rbp + 8], rdx
14000b14a: 85 db                       	test	ebx, ebx
14000b14c: 7e 10                       	jle	0x14000b15e <.text+0xa15e>
14000b14e: 48 8b d3                    	mov	rdx, rbx
14000b151: 49 8b c9                    	mov	rcx, r9
14000b154: e8 47 fe ff ff              	call	0x14000afa0 <.text+0x9fa0>
14000b159: 48 8b d8                    	mov	rbx, rax
14000b15c: eb 09                       	jmp	0x14000b167 <.text+0xa167>
14000b15e: 83 fb ff                    	cmp	ebx, -1
14000b161: 0f 8c db 02 00 00           	jl	0x14000b442 <.text+0xa442>
14000b167: 48 63 b5 b0 00 00 00        	movsxd	rsi, dword ptr [rbp + 176]
14000b16e: 85 f6                       	test	esi, esi
14000b170: 7e 10                       	jle	0x14000b182 <.text+0xa182>
14000b172: 48 8b d6                    	mov	rdx, rsi
14000b175: 49 8b cd                    	mov	rcx, r13
14000b178: e8 23 fe ff ff              	call	0x14000afa0 <.text+0x9fa0>
14000b17d: 48 8b f0                    	mov	rsi, rax
14000b180: eb 09                       	jmp	0x14000b18b <.text+0xa18b>
14000b182: 83 fe ff                    	cmp	esi, -1
14000b185: 0f 8c b7 02 00 00           	jl	0x14000b442 <.text+0xa442>
14000b18b: 44 8b b5 b8 00 00 00        	mov	r14d, dword ptr [rbp + 184]
14000b192: 45 85 f6                    	test	r14d, r14d
14000b195: 75 07                       	jne	0x14000b19e <.text+0xa19e>
14000b197: 48 8b 07                    	mov	rax, qword ptr [rdi]
14000b19a: 44 8b 70 0c                 	mov	r14d, dword ptr [rax + 12]
14000b19e: 85 db                       	test	ebx, ebx
14000b1a0: 74 08                       	je	0x14000b1aa <.text+0xa1aa>
14000b1a2: 85 f6                       	test	esi, esi
14000b1a4: 0f 85 a6 00 00 00           	jne	0x14000b250 <.text+0xa250>
14000b1aa: 3b de                       	cmp	ebx, esi
14000b1ac: 0f 84 89 02 00 00           	je	0x14000b43b <.text+0xa43b>
14000b1b2: 83 fe 01                    	cmp	esi, 1
14000b1b5: 0f 8f 8b 00 00 00           	jg	0x14000b246 <.text+0xa246>
14000b1bb: 83 fb 01                    	cmp	ebx, 1
14000b1be: 7f 48                       	jg	0x14000b208 <.text+0xa208>
14000b1c0: 48 8d 55 10                 	lea	rdx, [rbp + 16]
14000b1c4: 41 8b ce                    	mov	ecx, r14d
14000b1c7: ff 15 ab 2f 00 00           	call	qword ptr [rip + 12203] # 0x14000e178
14000b1cd: 85 c0                       	test	eax, eax
14000b1cf: 0f 84 6d 02 00 00           	je	0x14000b442 <.text+0xa442>
14000b1d5: 85 db                       	test	ebx, ebx
14000b1d7: 7e 39                       	jle	0x14000b212 <.text+0xa212>
14000b1d9: 83 7d 10 02                 	cmp	dword ptr [rbp + 16], 2
14000b1dd: 72 29                       	jb	0x14000b208 <.text+0xa208>
14000b1df: 48 8d 45 16                 	lea	rax, [rbp + 22]
14000b1e3: 44 38 65 16                 	cmp	byte ptr [rbp + 22], r12b
14000b1e7: 74 1f                       	je	0x14000b208 <.text+0xa208>
14000b1e9: 44 38 60 01                 	cmp	byte ptr [rax + 1], r12b
14000b1ed: 74 19                       	je	0x14000b208 <.text+0xa208>
14000b1ef: 41 8a 0f                    	mov	cl, byte ptr [r15]
14000b1f2: 3a 08                       	cmp	cl, byte ptr [rax]
14000b1f4: 72 09                       	jb	0x14000b1ff <.text+0xa1ff>
14000b1f6: 3a 48 01                    	cmp	cl, byte ptr [rax + 1]
14000b1f9: 0f 86 3c 02 00 00           	jbe	0x14000b43b <.text+0xa43b>
14000b1ff: 48 83 c0 02                 	add	rax, 2
14000b203: 44 38 20                    	cmp	byte ptr [rax], r12b
14000b206: 75 e1                       	jne	0x14000b1e9 <.text+0xa1e9>
14000b208: b8 03 00 00 00              	mov	eax, 3
14000b20d: e9 32 02 00 00              	jmp	0x14000b444 <.text+0xa444>
14000b212: 85 f6                       	test	esi, esi
14000b214: 7e 3a                       	jle	0x14000b250 <.text+0xa250>
14000b216: 83 7d 10 02                 	cmp	dword ptr [rbp + 16], 2
14000b21a: 72 2a                       	jb	0x14000b246 <.text+0xa246>
14000b21c: 48 8d 45 16                 	lea	rax, [rbp + 22]
14000b220: 44 38 65 16                 	cmp	byte ptr [rbp + 22], r12b
14000b224: 74 20                       	je	0x14000b246 <.text+0xa246>
14000b226: 44 38 60 01                 	cmp	byte ptr [rax + 1], r12b
14000b22a: 74 1a                       	je	0x14000b246 <.text+0xa246>
14000b22c: 41 8a 4d 00                 	mov	cl, byte ptr [r13]
14000b230: 3a 08                       	cmp	cl, byte ptr [rax]
14000b232: 72 09                       	jb	0x14000b23d <.text+0xa23d>
14000b234: 3a 48 01                    	cmp	cl, byte ptr [rax + 1]
14000b237: 0f 86 fe 01 00 00           	jbe	0x14000b43b <.text+0xa43b>
14000b23d: 48 83 c0 02                 	add	rax, 2
14000b241: 44 38 20                    	cmp	byte ptr [rax], r12b
14000b244: 75 e0                       	jne	0x14000b226 <.text+0xa226>
14000b246: b8 01 00 00 00              	mov	eax, 1
14000b24b: e9 f4 01 00 00              	jmp	0x14000b444 <.text+0xa444>
14000b250: 44 89 64 24 28              	mov	dword ptr [rsp + 40], r12d
14000b255: 44 8b cb                    	mov	r9d, ebx
14000b258: 4d 8b c7                    	mov	r8, r15
14000b25b: 4c 89 64 24 20              	mov	qword ptr [rsp + 32], r12
14000b260: ba 09 00 00 00              	mov	edx, 9
14000b265: 41 8b ce                    	mov	ecx, r14d
14000b268: e8 2f b3 ff ff              	call	0x14000659c <.text+0x559c>
14000b26d: 4c 63 e0                    	movsxd	r12, eax
14000b270: 85 c0                       	test	eax, eax
14000b272: 0f 84 ca 01 00 00           	je	0x14000b442 <.text+0xa442>
14000b278: 49 8b cc                    	mov	rcx, r12
14000b27b: 49 b8 f0 ff ff ff ff ff ff 0f       	movabs	r8, 1152921504606846960
14000b285: 48 03 c9                    	add	rcx, rcx
14000b288: 48 8d 51 10                 	lea	rdx, [rcx + 16]
14000b28c: 48 3b ca                    	cmp	rcx, rdx
14000b28f: 48 1b c9                    	sbb	rcx, rcx
14000b292: 48 23 ca                    	and	rcx, rdx
14000b295: 74 50                       	je	0x14000b2e7 <.text+0xa2e7>
14000b297: 48 81 f9 00 04 00 00        	cmp	rcx, 1024
14000b29e: 77 2e                       	ja	0x14000b2ce <.text+0xa2ce>
14000b2a0: 48 8d 41 0f                 	lea	rax, [rcx + 15]
14000b2a4: 48 3b c1                    	cmp	rax, rcx
14000b2a7: 77 03                       	ja	0x14000b2ac <.text+0xa2ac>
14000b2a9: 49 8b c0                    	mov	rax, r8
14000b2ac: 48 83 e0 f0                 	and	rax, -16
14000b2b0: e8 fb 1a 00 00              	call	0x14000cdb0 <.text+0xbdb0>
14000b2b5: 48 2b e0                    	sub	rsp, rax
14000b2b8: 48 8d 7c 24 50              	lea	rdi, [rsp + 80]
14000b2bd: 48 85 ff                    	test	rdi, rdi
14000b2c0: 0f 84 59 01 00 00           	je	0x14000b41f <.text+0xa41f>
14000b2c6: c7 07 cc cc 00 00           	mov	dword ptr [rdi], 52428
14000b2cc: eb 13                       	jmp	0x14000b2e1 <.text+0xa2e1>
14000b2ce: e8 9d c2 ff ff              	call	0x140007570 <.text+0x6570>
14000b2d3: 48 8b f8                    	mov	rdi, rax
14000b2d6: 48 85 c0                    	test	rax, rax
14000b2d9: 74 0e                       	je	0x14000b2e9 <.text+0xa2e9>
14000b2db: c7 00 dd dd 00 00           	mov	dword ptr [rax], 56797
14000b2e1: 48 83 c7 10                 	add	rdi, 16
14000b2e5: eb 02                       	jmp	0x14000b2e9 <.text+0xa2e9>
14000b2e7: 33 ff                       	xor	edi, edi
14000b2e9: 48 85 ff                    	test	rdi, rdi
14000b2ec: 0f 84 2d 01 00 00           	je	0x14000b41f <.text+0xa41f>
14000b2f2: 44 89 64 24 28              	mov	dword ptr [rsp + 40], r12d
14000b2f7: 44 8b cb                    	mov	r9d, ebx
14000b2fa: 4d 8b c7                    	mov	r8, r15
14000b2fd: 48 89 7c 24 20              	mov	qword ptr [rsp + 32], rdi
14000b302: ba 01 00 00 00              	mov	edx, 1
14000b307: 41 8b ce                    	mov	ecx, r14d
14000b30a: e8 8d b2 ff ff              	call	0x14000659c <.text+0x559c>
14000b30f: 85 c0                       	test	eax, eax
14000b311: 0f 84 08 01 00 00           	je	0x14000b41f <.text+0xa41f>
14000b317: 83 64 24 28 00              	and	dword ptr [rsp + 40], 0
14000b31c: 44 8b ce                    	mov	r9d, esi
14000b31f: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000b325: 4d 8b c5                    	mov	r8, r13
14000b328: ba 09 00 00 00              	mov	edx, 9
14000b32d: 41 8b ce                    	mov	ecx, r14d
14000b330: e8 67 b2 ff ff              	call	0x14000659c <.text+0x559c>
14000b335: 4c 63 f8                    	movsxd	r15, eax
14000b338: 85 c0                       	test	eax, eax
14000b33a: 0f 84 df 00 00 00           	je	0x14000b41f <.text+0xa41f>
14000b340: 49 8b d7                    	mov	rdx, r15
14000b343: 48 03 d2                    	add	rdx, rdx
14000b346: 48 8d 4a 10                 	lea	rcx, [rdx + 16]
14000b34a: 48 3b d1                    	cmp	rdx, rcx
14000b34d: 48 1b d2                    	sbb	rdx, rdx
14000b350: 48 23 d1                    	and	rdx, rcx
14000b353: 74 56                       	je	0x14000b3ab <.text+0xa3ab>
14000b355: 48 81 fa 00 04 00 00        	cmp	rdx, 1024
14000b35c: 77 31                       	ja	0x14000b38f <.text+0xa38f>
14000b35e: 48 8d 42 0f                 	lea	rax, [rdx + 15]
14000b362: 48 3b c2                    	cmp	rax, rdx
14000b365: 77 0a                       	ja	0x14000b371 <.text+0xa371>
14000b367: 48 b8 f0 ff ff ff ff ff ff 0f       	movabs	rax, 1152921504606846960
14000b371: 48 83 e0 f0                 	and	rax, -16
14000b375: e8 36 1a 00 00              	call	0x14000cdb0 <.text+0xbdb0>
14000b37a: 48 2b e0                    	sub	rsp, rax
14000b37d: 48 8d 5c 24 50              	lea	rbx, [rsp + 80]
14000b382: 48 85 db                    	test	rbx, rbx
14000b385: 74 7e                       	je	0x14000b405 <.text+0xa405>
14000b387: c7 03 cc cc 00 00           	mov	dword ptr [rbx], 52428
14000b38d: eb 16                       	jmp	0x14000b3a5 <.text+0xa3a5>
14000b38f: 48 8b ca                    	mov	rcx, rdx
14000b392: e8 d9 c1 ff ff              	call	0x140007570 <.text+0x6570>
14000b397: 48 8b d8                    	mov	rbx, rax
14000b39a: 48 85 c0                    	test	rax, rax
14000b39d: 74 0e                       	je	0x14000b3ad <.text+0xa3ad>
14000b39f: c7 00 dd dd 00 00           	mov	dword ptr [rax], 56797
14000b3a5: 48 83 c3 10                 	add	rbx, 16
14000b3a9: eb 02                       	jmp	0x14000b3ad <.text+0xa3ad>
14000b3ab: 33 db                       	xor	ebx, ebx
14000b3ad: 48 85 db                    	test	rbx, rbx
14000b3b0: 74 53                       	je	0x14000b405 <.text+0xa405>
14000b3b2: 44 89 7c 24 28              	mov	dword ptr [rsp + 40], r15d
14000b3b7: 44 8b ce                    	mov	r9d, esi
14000b3ba: 4d 8b c5                    	mov	r8, r13
14000b3bd: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000b3c2: ba 01 00 00 00              	mov	edx, 1
14000b3c7: 41 8b ce                    	mov	ecx, r14d
14000b3ca: e8 cd b1 ff ff              	call	0x14000659c <.text+0x559c>
14000b3cf: 85 c0                       	test	eax, eax
14000b3d1: 74 32                       	je	0x14000b405 <.text+0xa405>
14000b3d3: 48 83 64 24 40 00           	and	qword ptr [rsp + 64], 0
14000b3d9: 45 8b cc                    	mov	r9d, r12d
14000b3dc: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
14000b3e2: 4c 8b c7                    	mov	r8, rdi
14000b3e5: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
14000b3eb: 8b 55 00                    	mov	edx, dword ptr [rbp]
14000b3ee: 48 8b 4d 08                 	mov	rcx, qword ptr [rbp + 8]
14000b3f2: 44 89 7c 24 28              	mov	dword ptr [rsp + 40], r15d
14000b3f7: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000b3fc: e8 cf c9 ff ff              	call	0x140007dd0 <.text+0x6dd0>
14000b401: 8b f0                       	mov	esi, eax
14000b403: eb 02                       	jmp	0x14000b407 <.text+0xa407>
14000b405: 33 f6                       	xor	esi, esi
14000b407: 48 85 db                    	test	rbx, rbx
14000b40a: 74 15                       	je	0x14000b421 <.text+0xa421>
14000b40c: 48 8d 4b f0                 	lea	rcx, [rbx - 16]
14000b410: 81 39 dd dd 00 00           	cmp	dword ptr [rcx], 56797
14000b416: 75 09                       	jne	0x14000b421 <.text+0xa421>
14000b418: e8 5b 9a ff ff              	call	0x140004e78 <.text+0x3e78>
14000b41d: eb 02                       	jmp	0x14000b421 <.text+0xa421>
14000b41f: 33 f6                       	xor	esi, esi
14000b421: 48 85 ff                    	test	rdi, rdi
14000b424: 74 11                       	je	0x14000b437 <.text+0xa437>
14000b426: 48 8d 4f f0                 	lea	rcx, [rdi - 16]
14000b42a: 81 39 dd dd 00 00           	cmp	dword ptr [rcx], 56797
14000b430: 75 05                       	jne	0x14000b437 <.text+0xa437>
14000b432: e8 41 9a ff ff              	call	0x140004e78 <.text+0x3e78>
14000b437: 8b c6                       	mov	eax, esi
14000b439: eb 09                       	jmp	0x14000b444 <.text+0xa444>
14000b43b: b8 02 00 00 00              	mov	eax, 2
14000b440: eb 02                       	jmp	0x14000b444 <.text+0xa444>
14000b442: 33 c0                       	xor	eax, eax
14000b444: 48 8b 4d 28                 	mov	rcx, qword ptr [rbp + 40]
14000b448: 48 33 cd                    	xor	rcx, rbp
14000b44b: e8 90 16 00 00              	call	0x14000cae0 <.text+0xbae0>
14000b450: 48 8d 65 38                 	lea	rsp, [rbp + 56]
14000b454: 41 5f                       	pop	r15
14000b456: 41 5e                       	pop	r14
14000b458: 41 5d                       	pop	r13
14000b45a: 41 5c                       	pop	r12
14000b45c: 5f                          	pop	rdi
14000b45d: 5e                          	pop	rsi
14000b45e: 5b                          	pop	rbx
14000b45f: 5d                          	pop	rbp
14000b460: c3                          	ret
14000b461: cc                          	int3
14000b462: cc                          	int3
14000b463: cc                          	int3
14000b464: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000b469: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000b46e: 57                          	push	rdi
14000b46f: 48 83 ec 60                 	sub	rsp, 96
14000b473: 48 8b f2                    	mov	rsi, rdx
14000b476: 49 8b d9                    	mov	rbx, r9
14000b479: 48 8b d1                    	mov	rdx, rcx
14000b47c: 41 8b f8                    	mov	edi, r8d
14000b47f: 48 8d 4c 24 40              	lea	rcx, [rsp + 64]
14000b484: e8 ab 8e ff ff              	call	0x140004334 <.text+0x3334>
14000b489: 8b 84 24 a8 00 00 00        	mov	eax, dword ptr [rsp + 168]
14000b490: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
14000b495: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
14000b499: 4c 8b cb                    	mov	r9, rbx
14000b49c: 8b 84 24 a0 00 00 00        	mov	eax, dword ptr [rsp + 160]
14000b4a3: 44 8b c7                    	mov	r8d, edi
14000b4a6: 89 44 24 30                 	mov	dword ptr [rsp + 48], eax
14000b4aa: 48 8b d6                    	mov	rdx, rsi
14000b4ad: 48 8b 84 24 98 00 00 00     	mov	rax, qword ptr [rsp + 152]
14000b4b5: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
14000b4ba: 8b 84 24 90 00 00 00        	mov	eax, dword ptr [rsp + 144]
14000b4c1: 89 44 24 20                 	mov	dword ptr [rsp + 32], eax
14000b4c5: e8 3a fc ff ff              	call	0x14000b104 <.text+0xa104>
14000b4ca: 80 7c 24 58 00              	cmp	byte ptr [rsp + 88], 0
14000b4cf: 74 0c                       	je	0x14000b4dd <.text+0xa4dd>
14000b4d1: 48 8b 4c 24 40              	mov	rcx, qword ptr [rsp + 64]
14000b4d6: 83 a1 a8 03 00 00 fd        	and	dword ptr [rcx + 936], -3
14000b4dd: 48 8b 5c 24 70              	mov	rbx, qword ptr [rsp + 112]
14000b4e2: 48 8b 74 24 78              	mov	rsi, qword ptr [rsp + 120]
14000b4e7: 48 83 c4 60                 	add	rsp, 96
14000b4eb: 5f                          	pop	rdi
14000b4ec: c3                          	ret
14000b4ed: cc                          	int3
14000b4ee: cc                          	int3
14000b4ef: cc                          	int3
14000b4f0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000b4f5: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000b4fa: 57                          	push	rdi
14000b4fb: 48 83 ec 20                 	sub	rsp, 32
14000b4ff: 48 63 d9                    	movsxd	rbx, ecx
14000b502: 41 8b f8                    	mov	edi, r8d
14000b505: 8b cb                       	mov	ecx, ebx
14000b507: 48 8b f2                    	mov	rsi, rdx
14000b50a: e8 4d ba ff ff              	call	0x140006f5c <.text+0x5f5c>
14000b50f: 48 83 f8 ff                 	cmp	rax, -1
14000b513: 75 11                       	jne	0x14000b526 <.text+0xa526>
14000b515: e8 c6 98 ff ff              	call	0x140004de0 <.text+0x3de0>
14000b51a: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000b520: 48 83 c8 ff                 	or	rax, -1
14000b524: eb 53                       	jmp	0x14000b579 <.text+0xa579>
14000b526: 44 8b cf                    	mov	r9d, edi
14000b529: 4c 8d 44 24 48              	lea	r8, [rsp + 72]
14000b52e: 48 8b d6                    	mov	rdx, rsi
14000b531: 48 8b c8                    	mov	rcx, rax
14000b534: ff 15 c6 2c 00 00           	call	qword ptr [rip + 11462] # 0x14000e200
14000b53a: 85 c0                       	test	eax, eax
14000b53c: 75 0f                       	jne	0x14000b54d <.text+0xa54d>
14000b53e: ff 15 3c 2b 00 00           	call	qword ptr [rip + 11068] # 0x14000e080
14000b544: 8b c8                       	mov	ecx, eax
14000b546: e8 25 98 ff ff              	call	0x140004d70 <.text+0x3d70>
14000b54b: eb d3                       	jmp	0x14000b520 <.text+0xa520>
14000b54d: 48 8b 44 24 48              	mov	rax, qword ptr [rsp + 72]
14000b552: 48 83 f8 ff                 	cmp	rax, -1
14000b556: 74 c8                       	je	0x14000b520 <.text+0xa520>
14000b558: 48 8b d3                    	mov	rdx, rbx
14000b55b: 4c 8d 05 ae ca 00 00        	lea	r8, [rip + 51886]       # 0x140018010
14000b562: 83 e2 3f                    	and	edx, 63
14000b565: 48 8b cb                    	mov	rcx, rbx
14000b568: 48 c1 f9 06                 	sar	rcx, 6
14000b56c: 48 8d 14 d2                 	lea	rdx, [rdx + 8*rdx]
14000b570: 49 8b 0c c8                 	mov	rcx, qword ptr [r8 + 8*rcx]
14000b574: 80 64 d1 38 fd              	and	byte ptr [rcx + 8*rdx + 56], -3
14000b579: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000b57e: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
14000b583: 48 83 c4 20                 	add	rsp, 32
14000b587: 5f                          	pop	rdi
14000b588: c3                          	ret
14000b589: cc                          	int3
14000b58a: cc                          	int3
14000b58b: cc                          	int3
14000b58c: e9 5f ff ff ff              	jmp	0x14000b4f0 <.text+0xa4f0>
14000b591: cc                          	int3
14000b592: cc                          	int3
14000b593: cc                          	int3
14000b594: 66 89 4c 24 08              	mov	word ptr [rsp + 8], cx
14000b599: 48 83 ec 28                 	sub	rsp, 40
14000b59d: e8 9a 08 00 00              	call	0x14000be3c <.text+0xae3c>
14000b5a2: 85 c0                       	test	eax, eax
14000b5a4: 74 1f                       	je	0x14000b5c5 <.text+0xa5c5>
14000b5a6: 4c 8d 44 24 38              	lea	r8, [rsp + 56]
14000b5ab: ba 01 00 00 00              	mov	edx, 1
14000b5b0: 48 8d 4c 24 30              	lea	rcx, [rsp + 48]
14000b5b5: e8 f2 08 00 00              	call	0x14000beac <.text+0xaeac>
14000b5ba: 85 c0                       	test	eax, eax
14000b5bc: 74 07                       	je	0x14000b5c5 <.text+0xa5c5>
14000b5be: 0f b7 44 24 30              	movzx	eax, word ptr [rsp + 48]
14000b5c3: eb 05                       	jmp	0x14000b5ca <.text+0xa5ca>
14000b5c5: b8 ff ff 00 00              	mov	eax, 65535
14000b5ca: 48 83 c4 28                 	add	rsp, 40
14000b5ce: c3                          	ret
14000b5cf: cc                          	int3
14000b5d0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000b5d5: 57                          	push	rdi
14000b5d6: 48 83 ec 20                 	sub	rsp, 32
14000b5da: 48 8b d9                    	mov	rbx, rcx
14000b5dd: 48 85 c9                    	test	rcx, rcx
14000b5e0: 75 15                       	jne	0x14000b5f7 <.text+0xa5f7>
14000b5e2: e8 f9 97 ff ff              	call	0x140004de0 <.text+0x3de0>
14000b5e7: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
14000b5ed: e8 ce 96 ff ff              	call	0x140004cc0 <.text+0x3cc0>
14000b5f2: 83 c8 ff                    	or	eax, -1
14000b5f5: eb 51                       	jmp	0x14000b648 <.text+0xa648>
14000b5f7: 8b 41 14                    	mov	eax, dword ptr [rcx + 20]
14000b5fa: 83 cf ff                    	or	edi, -1
14000b5fd: c1 e8 0d                    	shr	eax, 13
14000b600: a8 01                       	test	al, 1
14000b602: 74 3a                       	je	0x14000b63e <.text+0xa63e>
14000b604: e8 9f d2 ff ff              	call	0x1400088a8 <.text+0x78a8>
14000b609: 48 8b cb                    	mov	rcx, rbx
14000b60c: 8b f8                       	mov	edi, eax
14000b60e: e8 ed f6 ff ff              	call	0x14000ad00 <.text+0x9d00>
14000b613: 48 8b cb                    	mov	rcx, rbx
14000b616: e8 e1 d6 ff ff              	call	0x140008cfc <.text+0x7cfc>
14000b61b: 8b c8                       	mov	ecx, eax
14000b61d: e8 be 09 00 00              	call	0x14000bfe0 <.text+0xafe0>
14000b622: 85 c0                       	test	eax, eax
14000b624: 79 05                       	jns	0x14000b62b <.text+0xa62b>
14000b626: 83 cf ff                    	or	edi, -1
14000b629: eb 13                       	jmp	0x14000b63e <.text+0xa63e>
14000b62b: 48 8b 4b 28                 	mov	rcx, qword ptr [rbx + 40]
14000b62f: 48 85 c9                    	test	rcx, rcx
14000b632: 74 0a                       	je	0x14000b63e <.text+0xa63e>
14000b634: e8 3f 98 ff ff              	call	0x140004e78 <.text+0x3e78>
14000b639: 48 83 63 28 00              	and	qword ptr [rbx + 40], 0
14000b63e: 48 8b cb                    	mov	rcx, rbx
14000b641: e8 fe 0a 00 00              	call	0x14000c144 <.text+0xb144>
14000b646: 8b c7                       	mov	eax, edi
14000b648: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000b64d: 48 83 c4 20                 	add	rsp, 32
14000b651: 5f                          	pop	rdi
14000b652: c3                          	ret
14000b653: cc                          	int3
14000b654: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
14000b659: 48 89 4c 24 08              	mov	qword ptr [rsp + 8], rcx
14000b65e: 57                          	push	rdi
14000b65f: 48 83 ec 20                 	sub	rsp, 32
14000b663: 48 8b d9                    	mov	rbx, rcx
14000b666: 48 85 c9                    	test	rcx, rcx
14000b669: 75 1e                       	jne	0x14000b689 <.text+0xa689>
14000b66b: e8 70 97 ff ff              	call	0x140004de0 <.text+0x3de0>
14000b670: c7 00 16 00 00 00           	mov	dword ptr [rax], 22
14000b676: e8 45 96 ff ff              	call	0x140004cc0 <.text+0x3cc0>
14000b67b: 83 c8 ff                    	or	eax, -1
14000b67e: 48 8b 5c 24 38              	mov	rbx, qword ptr [rsp + 56]
14000b683: 48 83 c4 20                 	add	rsp, 32
14000b687: 5f                          	pop	rdi
14000b688: c3                          	ret
14000b689: 8b 41 14                    	mov	eax, dword ptr [rcx + 20]
14000b68c: c1 e8 0c                    	shr	eax, 12
14000b68f: a8 01                       	test	al, 1
14000b691: 74 07                       	je	0x14000b69a <.text+0xa69a>
14000b693: e8 ac 0a 00 00              	call	0x14000c144 <.text+0xb144>
14000b698: eb e1                       	jmp	0x14000b67b <.text+0xa67b>
14000b69a: e8 55 d4 ff ff              	call	0x140008af4 <.text+0x7af4>
14000b69f: 90                          	nop
14000b6a0: 48 8b cb                    	mov	rcx, rbx
14000b6a3: e8 28 ff ff ff              	call	0x14000b5d0 <.text+0xa5d0>
14000b6a8: 8b f8                       	mov	edi, eax
14000b6aa: 48 8b cb                    	mov	rcx, rbx
14000b6ad: e8 4e d4 ff ff              	call	0x140008b00 <.text+0x7b00>
14000b6b2: 8b c7                       	mov	eax, edi
14000b6b4: eb c8                       	jmp	0x14000b67e <.text+0xa67e>
14000b6b6: cc                          	int3
14000b6b7: cc                          	int3
14000b6b8: 48 89 5c 24 10              	mov	qword ptr [rsp + 16], rbx
14000b6bd: 55                          	push	rbp
14000b6be: 56                          	push	rsi
14000b6bf: 57                          	push	rdi
14000b6c0: 41 56                       	push	r14
14000b6c2: 41 57                       	push	r15
14000b6c4: 48 83 ec 40                 	sub	rsp, 64
14000b6c8: 48 8b 05 59 b9 00 00        	mov	rax, qword ptr [rip + 47449] # 0x140017028
14000b6cf: 48 33 c4                    	xor	rax, rsp
14000b6d2: 48 89 44 24 30              	mov	qword ptr [rsp + 48], rax
14000b6d7: 45 33 d2                    	xor	r10d, r10d
14000b6da: 4c 8d 1d 4f cf 00 00        	lea	r11, [rip + 53071]      # 0x140018630
14000b6e1: 4d 85 c9                    	test	r9, r9
14000b6e4: 48 8d 3d 17 34 00 00        	lea	rdi, [rip + 13335]      # 0x14000eb02
14000b6eb: 48 8b c2                    	mov	rax, rdx
14000b6ee: 4c 8b fa                    	mov	r15, rdx
14000b6f1: 4d 0f 45 d9                 	cmovne	r11, r9
14000b6f5: 48 85 d2                    	test	rdx, rdx
14000b6f8: 41 8d 6a 01                 	lea	ebp, [r10 + 1]
14000b6fc: 48 0f 45 fa                 	cmovne	rdi, rdx
14000b700: 44 8b f5                    	mov	r14d, ebp
14000b703: 4d 0f 45 f0                 	cmovne	r14, r8
14000b707: 48 f7 d8                    	neg	rax
14000b70a: 48 1b f6                    	sbb	rsi, rsi
14000b70d: 48 23 f1                    	and	rsi, rcx
14000b710: 4d 85 f6                    	test	r14, r14
14000b713: 75 0c                       	jne	0x14000b721 <.text+0xa721>
14000b715: 48 c7 c0 fe ff ff ff        	mov	rax, -2
14000b71c: e9 4e 01 00 00              	jmp	0x14000b86f <.text+0xa86f>
14000b721: 66 45 39 53 06              	cmp	word ptr [r11 + 6], r10w
14000b726: 75 68                       	jne	0x14000b790 <.text+0xa790>
14000b728: 44 0f b6 0f                 	movzx	r9d, byte ptr [rdi]
14000b72c: 48 ff c7                    	inc	rdi
14000b72f: 45 84 c9                    	test	r9b, r9b
14000b732: 78 17                       	js	0x14000b74b <.text+0xa74b>
14000b734: 48 85 f6                    	test	rsi, rsi
14000b737: 74 03                       	je	0x14000b73c <.text+0xa73c>
14000b739: 44 89 0e                    	mov	dword ptr [rsi], r9d
14000b73c: 45 84 c9                    	test	r9b, r9b
14000b73f: 41 0f 95 c2                 	setne	r10b
14000b743: 49 8b c2                    	mov	rax, r10
14000b746: e9 24 01 00 00              	jmp	0x14000b86f <.text+0xa86f>
14000b74b: 41 8a c1                    	mov	al, r9b
14000b74e: 24 e0                       	and	al, -32
14000b750: 3c c0                       	cmp	al, -64
14000b752: 75 05                       	jne	0x14000b759 <.text+0xa759>
14000b754: 41 b0 02                    	mov	r8b, 2
14000b757: eb 1e                       	jmp	0x14000b777 <.text+0xa777>
14000b759: 41 8a c1                    	mov	al, r9b
14000b75c: 24 f0                       	and	al, -16
14000b75e: 3c e0                       	cmp	al, -32
14000b760: 75 05                       	jne	0x14000b767 <.text+0xa767>
14000b762: 41 b0 03                    	mov	r8b, 3
14000b765: eb 10                       	jmp	0x14000b777 <.text+0xa777>
14000b767: 41 8a c1                    	mov	al, r9b
14000b76a: 24 f8                       	and	al, -8
14000b76c: 3c f0                       	cmp	al, -16
14000b76e: 0f 85 e9 00 00 00           	jne	0x14000b85d <.text+0xa85d>
14000b774: 41 b0 04                    	mov	r8b, 4
14000b777: 41 0f b6 c0                 	movzx	eax, r8b
14000b77b: b9 07 00 00 00              	mov	ecx, 7
14000b780: 2b c8                       	sub	ecx, eax
14000b782: 8b d5                       	mov	edx, ebp
14000b784: d3 e2                       	shl	edx, cl
14000b786: 41 8a d8                    	mov	bl, r8b
14000b789: 2b d5                       	sub	edx, ebp
14000b78b: 41 23 d1                    	and	edx, r9d
14000b78e: eb 29                       	jmp	0x14000b7b9 <.text+0xa7b9>
14000b790: 45 8a 43 04                 	mov	r8b, byte ptr [r11 + 4]
14000b794: 41 8b 13                    	mov	edx, dword ptr [r11]
14000b797: 41 8a 5b 06                 	mov	bl, byte ptr [r11 + 6]
14000b79b: 41 8d 40 fe                 	lea	eax, [r8 - 2]
14000b79f: 3c 02                       	cmp	al, 2
14000b7a1: 0f 87 b6 00 00 00           	ja	0x14000b85d <.text+0xa85d>
14000b7a7: 40 3a dd                    	cmp	bl, bpl
14000b7aa: 0f 82 ad 00 00 00           	jb	0x14000b85d <.text+0xa85d>
14000b7b0: 41 3a d8                    	cmp	bl, r8b
14000b7b3: 0f 83 a4 00 00 00           	jae	0x14000b85d <.text+0xa85d>
14000b7b9: 0f b6 eb                    	movzx	ebp, bl
14000b7bc: 49 3b ee                    	cmp	rbp, r14
14000b7bf: 44 8b cd                    	mov	r9d, ebp
14000b7c2: 4d 0f 43 ce                 	cmovae	r9, r14
14000b7c6: eb 1e                       	jmp	0x14000b7e6 <.text+0xa7e6>
14000b7c8: 0f b6 0f                    	movzx	ecx, byte ptr [rdi]
14000b7cb: 48 ff c7                    	inc	rdi
14000b7ce: 8a c1                       	mov	al, cl
14000b7d0: 24 c0                       	and	al, -64
14000b7d2: 3c 80                       	cmp	al, -128
14000b7d4: 0f 85 83 00 00 00           	jne	0x14000b85d <.text+0xa85d>
14000b7da: 8b c2                       	mov	eax, edx
14000b7dc: 83 e1 3f                    	and	ecx, 63
14000b7df: c1 e0 06                    	shl	eax, 6
14000b7e2: 8b d1                       	mov	edx, ecx
14000b7e4: 0b d0                       	or	edx, eax
14000b7e6: 48 8b c7                    	mov	rax, rdi
14000b7e9: 49 2b c7                    	sub	rax, r15
14000b7ec: 49 3b c1                    	cmp	rax, r9
14000b7ef: 72 d7                       	jb	0x14000b7c8 <.text+0xa7c8>
14000b7f1: 4c 3b cd                    	cmp	r9, rbp
14000b7f4: 73 1c                       	jae	0x14000b812 <.text+0xa812>
14000b7f6: 41 0f b6 c0                 	movzx	eax, r8b
14000b7fa: 41 2a d9                    	sub	bl, r9b
14000b7fd: 66 41 89 43 04              	mov	word ptr [r11 + 4], ax
14000b802: 0f b6 c3                    	movzx	eax, bl
14000b805: 66 41 89 43 06              	mov	word ptr [r11 + 6], ax
14000b80a: 41 89 13                    	mov	dword ptr [r11], edx
14000b80d: e9 03 ff ff ff              	jmp	0x14000b715 <.text+0xa715>
14000b812: 8d 82 00 28 ff ff           	lea	eax, [rdx - 55296]
14000b818: 3d ff 07 00 00              	cmp	eax, 2047
14000b81d: 76 3e                       	jbe	0x14000b85d <.text+0xa85d>
14000b81f: 81 fa 00 00 11 00           	cmp	edx, 1114112
14000b825: 73 36                       	jae	0x14000b85d <.text+0xa85d>
14000b827: 41 0f b6 c0                 	movzx	eax, r8b
14000b82b: c7 44 24 20 80 00 00 00     	mov	dword ptr [rsp + 32], 128
14000b833: c7 44 24 24 00 08 00 00     	mov	dword ptr [rsp + 36], 2048
14000b83b: c7 44 24 28 00 00 01 00     	mov	dword ptr [rsp + 40], 65536
14000b843: 3b 54 84 18                 	cmp	edx, dword ptr [rsp + 4*rax + 24]
14000b847: 72 14                       	jb	0x14000b85d <.text+0xa85d>
14000b849: 48 85 f6                    	test	rsi, rsi
14000b84c: 74 02                       	je	0x14000b850 <.text+0xa850>
14000b84e: 89 16                       	mov	dword ptr [rsi], edx
14000b850: f7 da                       	neg	edx
14000b852: 4d 89 13                    	mov	qword ptr [r11], r10
14000b855: 48 1b c0                    	sbb	rax, rax
14000b858: 48 23 c5                    	and	rax, rbp
14000b85b: eb 12                       	jmp	0x14000b86f <.text+0xa86f>
14000b85d: 4d 89 13                    	mov	qword ptr [r11], r10
14000b860: e8 7b 95 ff ff              	call	0x140004de0 <.text+0x3de0>
14000b865: c7 00 2a 00 00 00           	mov	dword ptr [rax], 42
14000b86b: 48 83 c8 ff                 	or	rax, -1
14000b86f: 48 8b 4c 24 30              	mov	rcx, qword ptr [rsp + 48]
14000b874: 48 33 cc                    	xor	rcx, rsp
14000b877: e8 64 12 00 00              	call	0x14000cae0 <.text+0xbae0>
14000b87c: 48 8b 5c 24 78              	mov	rbx, qword ptr [rsp + 120]
14000b881: 48 83 c4 40                 	add	rsp, 64
14000b885: 41 5f                       	pop	r15
14000b887: 41 5e                       	pop	r14
14000b889: 5f                          	pop	rdi
14000b88a: 5e                          	pop	rsi
14000b88b: 5d                          	pop	rbp
14000b88c: c3                          	ret
14000b88d: cc                          	int3
14000b88e: cc                          	int3
14000b88f: cc                          	int3
14000b890: 48 83 ec 58                 	sub	rsp, 88
14000b894: 66 0f 7f 74 24 20           	movdqa	xmmword ptr [rsp + 32], xmm6
14000b89a: 83 3d 9b cd 00 00 00        	cmp	dword ptr [rip + 52635], 0 # 0x14001863c
14000b8a1: 0f 85 e9 02 00 00           	jne	0x14000bb90 <.text+0xab90>
14000b8a7: 66 0f 28 d8                 	movapd	xmm3, xmm0
14000b8ab: 66 0f 28 e0                 	movapd	xmm4, xmm0
14000b8af: 66 0f 73 d3 34              	psrlq	xmm3, 52
14000b8b4: 66 48 0f 7e c0              	movq	rax, xmm0
14000b8b9: 66 0f fb 1d cf 82 00 00     	psubq	xmm3, xmmword ptr [rip + 33487] # 0x140013b90
14000b8c1: 66 0f 28 e8                 	movapd	xmm5, xmm0
14000b8c5: 66 0f 54 2d 93 82 00 00     	andpd	xmm5, xmmword ptr [rip + 33427] # 0x140013b60
14000b8cd: 66 0f 2f 2d 8b 82 00 00     	comisd	xmm5, qword ptr [rip + 33419] # 0x140013b60
14000b8d5: 0f 84 85 02 00 00           	je	0x14000bb60 <.text+0xab60>
14000b8db: 66 0f 28 d0                 	movapd	xmm2, xmm0
14000b8df: f3 0f e6 f3                 	cvtdq2pd	xmm6, xmm3
14000b8e3: 66 0f 57 ed                 	xorpd	xmm5, xmm5
14000b8e7: 66 0f 2f c5                 	comisd	xmm0, xmm5
14000b8eb: 0f 86 2f 02 00 00           	jbe	0x14000bb20 <.text+0xab20>
14000b8f1: 66 0f db 15 b7 82 00 00     	pand	xmm2, xmmword ptr [rip + 33463] # 0x140013bb0
14000b8f9: f2 0f 5c 25 3f 83 00 00     	subsd	xmm4, qword ptr [rip + 33599] # 0x140013c40
14000b901: 66 0f 2f 35 c7 83 00 00     	comisd	xmm6, qword ptr [rip + 33735] # 0x140013cd0
14000b909: 0f 84 d8 01 00 00           	je	0x14000bae7 <.text+0xaae7>
14000b90f: 66 0f 54 25 19 84 00 00     	andpd	xmm4, xmmword ptr [rip + 33817] # 0x140013d30
14000b917: 4c 8b c8                    	mov	r9, rax
14000b91a: 48 23 05 9f 82 00 00        	and	rax, qword ptr [rip + 33439] # 0x140013bc0
14000b921: 4c 23 0d a8 82 00 00        	and	r9, qword ptr [rip + 33448] # 0x140013bd0
14000b928: 49 d1 e1                    	shl	r9
14000b92b: 49 03 c1                    	add	rax, r9
14000b92e: 66 48 0f 6e c8              	movq	xmm1, rax
14000b933: 66 0f 2f 25 b5 83 00 00     	comisd	xmm4, qword ptr [rip + 33717] # 0x140013cf0
14000b93b: 0f 82 df 00 00 00           	jb	0x14000ba20 <.text+0xaa20>
14000b941: 48 c1 e8 2c                 	shr	rax, 44
14000b945: 66 0f eb 15 03 83 00 00     	por	xmm2, xmmword ptr [rip + 33539] # 0x140013c50
14000b94d: 66 0f eb 0d fb 82 00 00     	por	xmm1, xmmword ptr [rip + 33531] # 0x140013c50
14000b955: 4c 8d 0d 74 94 00 00        	lea	r9, [rip + 38004]       # 0x140014dd0
14000b95c: f2 0f 5c ca                 	subsd	xmm1, xmm2
14000b960: f2 41 0f 59 0c c1           	mulsd	xmm1, qword ptr [r9 + 8*rax]
14000b966: 66 0f 28 d1                 	movapd	xmm2, xmm1
14000b96a: 66 0f 28 c1                 	movapd	xmm0, xmm1
14000b96e: 4c 8d 0d 3b 84 00 00        	lea	r9, [rip + 33851]       # 0x140013db0
14000b975: f2 0f 10 1d 43 83 00 00     	movsd	xmm3, qword ptr [rip + 33603] # xmm3 = mem[0],zero
                                                                        # 0x140013cc0
14000b97d: f2 0f 10 0d 0b 83 00 00     	movsd	xmm1, qword ptr [rip + 33547] # xmm1 = mem[0],zero
                                                                        # 0x140013c90
14000b985: f2 0f 59 da                 	mulsd	xmm3, xmm2
14000b989: f2 0f 59 ca                 	mulsd	xmm1, xmm2
14000b98d: f2 0f 59 c2                 	mulsd	xmm0, xmm2
14000b991: 66 0f 28 e0                 	movapd	xmm4, xmm0
14000b995: f2 0f 58 1d 13 83 00 00     	addsd	xmm3, qword ptr [rip + 33555] # 0x140013cb0
14000b99d: f2 0f 58 0d db 82 00 00     	addsd	xmm1, qword ptr [rip + 33499] # 0x140013c80
14000b9a5: f2 0f 59 e0                 	mulsd	xmm4, xmm0
14000b9a9: f2 0f 59 da                 	mulsd	xmm3, xmm2
14000b9ad: f2 0f 59 c8                 	mulsd	xmm1, xmm0
14000b9b1: f2 0f 58 1d e7 82 00 00     	addsd	xmm3, qword ptr [rip + 33511] # 0x140013ca0
14000b9b9: f2 0f 58 ca                 	addsd	xmm1, xmm2
14000b9bd: f2 0f 59 dc                 	mulsd	xmm3, xmm4
14000b9c1: f2 0f 58 cb                 	addsd	xmm1, xmm3
14000b9c5: f2 0f 10 2d 53 82 00 00     	movsd	xmm5, qword ptr [rip + 33363] # xmm5 = mem[0],zero
                                                                        # 0x140013c20
14000b9cd: f2 0f 59 0d 0b 82 00 00     	mulsd	xmm1, qword ptr [rip + 33291] # 0x140013be0
14000b9d5: f2 0f 59 ee                 	mulsd	xmm5, xmm6
14000b9d9: f2 0f 5c e9                 	subsd	xmm5, xmm1
14000b9dd: f2 41 0f 10 04 c1           	movsd	xmm0, qword ptr [r9 + 8*rax] # xmm0 = mem[0],zero
14000b9e3: 48 8d 15 d6 8b 00 00        	lea	rdx, [rip + 35798]      # 0x1400145c0
14000b9ea: f2 0f 10 14 c2              	movsd	xmm2, qword ptr [rdx + 8*rax] # xmm2 = mem[0],zero
14000b9ef: f2 0f 10 25 19 82 00 00     	movsd	xmm4, qword ptr [rip + 33305] # xmm4 = mem[0],zero
                                                                        # 0x140013c10
14000b9f7: f2 0f 59 e6                 	mulsd	xmm4, xmm6
14000b9fb: f2 0f 58 c4                 	addsd	xmm0, xmm4
14000b9ff: f2 0f 58 d5                 	addsd	xmm2, xmm5
14000ba03: f2 0f 58 c2                 	addsd	xmm0, xmm2
14000ba07: 66 0f 6f 74 24 20           	movdqa	xmm6, xmmword ptr [rsp + 32]
14000ba0d: 48 83 c4 58                 	add	rsp, 88
14000ba11: c3                          	ret
14000ba12: 66 66 66 66 66 66 0f 1f 84 00 00 00 00 00   	nop	word ptr [rax + rax]
14000ba20: f2 0f 10 15 08 82 00 00     	movsd	xmm2, qword ptr [rip + 33288] # xmm2 = mem[0],zero
                                                                        # 0x140013c30
14000ba28: f2 0f 5c 05 10 82 00 00     	subsd	xmm0, qword ptr [rip + 33296] # 0x140013c40
14000ba30: f2 0f 58 d0                 	addsd	xmm2, xmm0
14000ba34: 66 0f 28 c8                 	movapd	xmm1, xmm0
14000ba38: f2 0f 5e ca                 	divsd	xmm1, xmm2
14000ba3c: f2 0f 10 25 0c 83 00 00     	movsd	xmm4, qword ptr [rip + 33548] # xmm4 = mem[0],zero
                                                                        # 0x140013d50
14000ba44: f2 0f 10 2d 24 83 00 00     	movsd	xmm5, qword ptr [rip + 33572] # xmm5 = mem[0],zero
                                                                        # 0x140013d70
14000ba4c: 66 0f 28 f0                 	movapd	xmm6, xmm0
14000ba50: f2 0f 59 f1                 	mulsd	xmm6, xmm1
14000ba54: f2 0f 58 c9                 	addsd	xmm1, xmm1
14000ba58: 66 0f 28 d1                 	movapd	xmm2, xmm1
14000ba5c: f2 0f 59 d1                 	mulsd	xmm2, xmm1
14000ba60: f2 0f 59 e2                 	mulsd	xmm4, xmm2
14000ba64: f2 0f 59 ea                 	mulsd	xmm5, xmm2
14000ba68: f2 0f 58 25 d0 82 00 00     	addsd	xmm4, qword ptr [rip + 33488] # 0x140013d40
14000ba70: f2 0f 58 2d e8 82 00 00     	addsd	xmm5, qword ptr [rip + 33512] # 0x140013d60
14000ba78: f2 0f 59 d1                 	mulsd	xmm2, xmm1
14000ba7c: f2 0f 59 e2                 	mulsd	xmm4, xmm2
14000ba80: f2 0f 59 d2                 	mulsd	xmm2, xmm2
14000ba84: f2 0f 59 d1                 	mulsd	xmm2, xmm1
14000ba88: f2 0f 59 ea                 	mulsd	xmm5, xmm2
14000ba8c: f2 0f 10 15 6c 81 00 00     	movsd	xmm2, qword ptr [rip + 33132] # xmm2 = mem[0],zero
                                                                        # 0x140013c00
14000ba94: f2 0f 58 e5                 	addsd	xmm4, xmm5
14000ba98: f2 0f 5c e6                 	subsd	xmm4, xmm6
14000ba9c: f2 0f 10 35 4c 81 00 00     	movsd	xmm6, qword ptr [rip + 33100] # xmm6 = mem[0],zero
                                                                        # 0x140013bf0
14000baa4: 66 0f 28 d8                 	movapd	xmm3, xmm0
14000baa8: 66 0f db 1d d0 82 00 00     	pand	xmm3, xmmword ptr [rip + 33488] # 0x140013d80
14000bab0: f2 0f 5c c3                 	subsd	xmm0, xmm3
14000bab4: f2 0f 58 e0                 	addsd	xmm4, xmm0
14000bab8: 66 0f 28 c3                 	movapd	xmm0, xmm3
14000babc: 66 0f 28 cc                 	movapd	xmm1, xmm4
14000bac0: f2 0f 59 e2                 	mulsd	xmm4, xmm2
14000bac4: f2 0f 59 c2                 	mulsd	xmm0, xmm2
14000bac8: f2 0f 59 ce                 	mulsd	xmm1, xmm6
14000bacc: f2 0f 59 de                 	mulsd	xmm3, xmm6
14000bad0: f2 0f 58 c4                 	addsd	xmm0, xmm4
14000bad4: f2 0f 58 c1                 	addsd	xmm0, xmm1
14000bad8: f2 0f 58 c3                 	addsd	xmm0, xmm3
14000badc: 66 0f 6f 74 24 20           	movdqa	xmm6, xmmword ptr [rsp + 32]
14000bae2: 48 83 c4 58                 	add	rsp, 88
14000bae6: c3                          	ret
14000bae7: 66 0f eb 15 51 81 00 00     	por	xmm2, xmmword ptr [rip + 33105] # 0x140013c40
14000baef: f2 0f 5c 15 49 81 00 00     	subsd	xmm2, qword ptr [rip + 33097] # 0x140013c40
14000baf7: f2 0f 10 ea                 	movsd	xmm5, xmm2              # xmm5 = xmm2[0],xmm5[1]
14000bafb: 66 0f db 15 ad 80 00 00     	pand	xmm2, xmmword ptr [rip + 32941] # 0x140013bb0
14000bb03: 66 48 0f 7e d0              	movq	rax, xmm2
14000bb08: 66 0f 73 d5 34              	psrlq	xmm5, 52
14000bb0d: 66 0f fa 2d cb 81 00 00     	psubd	xmm5, xmmword ptr [rip + 33227] # 0x140013ce0
14000bb15: f3 0f e6 f5                 	cvtdq2pd	xmm6, xmm5
14000bb19: e9 f1 fd ff ff              	jmp	0x14000b90f <.text+0xa90f>
14000bb1e: 66 90                       	nop
14000bb20: 75 1e                       	jne	0x14000bb40 <.text+0xab40>
14000bb22: f2 0f 10 0d 26 80 00 00     	movsd	xmm1, qword ptr [rip + 32806] # xmm1 = mem[0],zero
                                                                        # 0x140013b50
14000bb2a: 44 8b 05 5f 82 00 00        	mov	r8d, dword ptr [rip + 33375] # 0x140013d90
14000bb31: e8 ea 08 00 00              	call	0x14000c420 <.text+0xb420>
14000bb36: eb 48                       	jmp	0x14000bb80 <.text+0xab80>
14000bb38: 0f 1f 84 00 00 00 00 00     	nop	dword ptr [rax + rax]
14000bb40: f2 0f 10 0d 28 80 00 00     	movsd	xmm1, qword ptr [rip + 32808] # xmm1 = mem[0],zero
                                                                        # 0x140013b70
14000bb48: 44 8b 05 45 82 00 00        	mov	r8d, dword ptr [rip + 33349] # 0x140013d94
14000bb4f: e8 cc 08 00 00              	call	0x14000c420 <.text+0xb420>
14000bb54: eb 2a                       	jmp	0x14000bb80 <.text+0xab80>
14000bb56: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
14000bb60: 48 3b 05 f9 7f 00 00        	cmp	rax, qword ptr [rip + 32761] # 0x140013b60
14000bb67: 74 17                       	je	0x14000bb80 <.text+0xab80>
14000bb69: 48 3b 05 e0 7f 00 00        	cmp	rax, qword ptr [rip + 32736] # 0x140013b50
14000bb70: 74 ce                       	je	0x14000bb40 <.text+0xab40>
14000bb72: 48 0b 05 07 80 00 00        	or	rax, qword ptr [rip + 32775] # 0x140013b80
14000bb79: 66 48 0f 6e c0              	movq	xmm0, rax
14000bb7e: 66 90                       	nop
14000bb80: 66 0f 6f 74 24 20           	movdqa	xmm6, xmmword ptr [rsp + 32]
14000bb86: 48 83 c4 58                 	add	rsp, 88
14000bb8a: c3                          	ret
14000bb8b: 0f 1f 44 00 00              	nop	dword ptr [rax + rax]
14000bb90: 48 33 c0                    	xor	rax, rax
14000bb93: c5 e1 73 d0 34              	vpsrlq	xmm3, xmm0, 52
14000bb98: c4 e1 f9 7e c0              	vmovq	rax, xmm0
14000bb9d: c5 e1 fb 1d eb 7f 00 00     	vpsubq	xmm3, xmm3, xmmword ptr [rip + 32747] # 0x140013b90
14000bba5: c5 fa e6 f3                 	vcvtdq2pd	xmm6, xmm3
14000bba9: c5 f9 db 2d af 7f 00 00     	vpand	xmm5, xmm0, xmmword ptr [rip + 32687] # 0x140013b60
14000bbb1: c5 f9 2f 2d a7 7f 00 00     	vcomisd	xmm5, qword ptr [rip + 32679] # 0x140013b60
14000bbb9: 0f 84 41 02 00 00           	je	0x14000be00 <.text+0xae00>
14000bbbf: c5 d1 ef ed                 	vpxor	xmm5, xmm5, xmm5
14000bbc3: c5 f9 2f c5                 	vcomisd	xmm0, xmm5
14000bbc7: 0f 86 e3 01 00 00           	jbe	0x14000bdb0 <.text+0xadb0>
14000bbcd: c5 f9 db 15 db 7f 00 00     	vpand	xmm2, xmm0, xmmword ptr [rip + 32731] # 0x140013bb0
14000bbd5: c5 fb 5c 25 63 80 00 00     	vsubsd	xmm4, xmm0, qword ptr [rip + 32867] # 0x140013c40
14000bbdd: c5 f9 2f 35 eb 80 00 00     	vcomisd	xmm6, qword ptr [rip + 33003] # 0x140013cd0
14000bbe5: 0f 84 8e 01 00 00           	je	0x14000bd79 <.text+0xad79>
14000bbeb: c5 f9 db 0d cd 7f 00 00     	vpand	xmm1, xmm0, xmmword ptr [rip + 32717] # 0x140013bc0
14000bbf3: c5 f9 db 1d d5 7f 00 00     	vpand	xmm3, xmm0, xmmword ptr [rip + 32725] # 0x140013bd0
14000bbfb: c5 e1 73 f3 01              	vpsllq	xmm3, xmm3, 1
14000bc00: c5 e1 d4 c9                 	vpaddq	xmm1, xmm3, xmm1
14000bc04: c4 e1 f9 7e c8              	vmovq	rax, xmm1
14000bc09: c5 d9 db 25 1f 81 00 00     	vpand	xmm4, xmm4, xmmword ptr [rip + 33055] # 0x140013d30
14000bc11: c5 f9 2f 25 d7 80 00 00     	vcomisd	xmm4, qword ptr [rip + 32983] # 0x140013cf0
14000bc19: 0f 82 b1 00 00 00           	jb	0x14000bcd0 <.text+0xacd0>
14000bc1f: 48 c1 e8 2c                 	shr	rax, 44
14000bc23: c5 e9 eb 15 25 80 00 00     	vpor	xmm2, xmm2, xmmword ptr [rip + 32805] # 0x140013c50
14000bc2b: c5 f1 eb 0d 1d 80 00 00     	vpor	xmm1, xmm1, xmmword ptr [rip + 32797] # 0x140013c50
14000bc33: 4c 8d 0d 96 91 00 00        	lea	r9, [rip + 37270]       # 0x140014dd0
14000bc3a: c5 f3 5c ca                 	vsubsd	xmm1, xmm1, xmm2
14000bc3e: c4 c1 73 59 0c c1           	vmulsd	xmm1, xmm1, qword ptr [r9 + 8*rax]
14000bc44: 4c 8d 0d 65 81 00 00        	lea	r9, [rip + 33125]       # 0x140013db0
14000bc4b: c5 f3 59 c1                 	vmulsd	xmm0, xmm1, xmm1
14000bc4f: c5 fb 10 1d 69 80 00 00     	vmovsd	xmm3, qword ptr [rip + 32873] # xmm3 = mem[0],zero
                                                                        # 0x140013cc0
14000bc57: c5 fb 10 2d 31 80 00 00     	vmovsd	xmm5, qword ptr [rip + 32817] # xmm5 = mem[0],zero
                                                                        # 0x140013c90
14000bc5f: c4 e2 f1 a9 1d 48 80 00 00  	vfmadd213sd	xmm3, xmm1, qword ptr [rip + 32840] # xmm3 = (xmm1 * xmm3) + mem0x140013cb0
14000bc68: c4 e2 f1 a9 2d df 7f 00 00  	vfmadd213sd	xmm5, xmm1, qword ptr [rip + 32735] # xmm5 = (xmm1 * xmm5) + mem0x140013c50
14000bc71: f2 0f 10 e0                 	movsd	xmm4, xmm0              # xmm4 = xmm0[0],xmm4[1]
14000bc75: c4 e2 f1 a9 1d 22 80 00 00  	vfmadd213sd	xmm3, xmm1, qword ptr [rip + 32802] # xmm3 = (xmm1 * xmm3) + mem0x140013ca0
14000bc7e: c5 fb 59 e0                 	vmulsd	xmm4, xmm0, xmm0
14000bc82: c4 e2 d1 b9 c8              	vfmadd231sd	xmm1, xmm5, xmm0 # xmm1 = (xmm5 * xmm0) + xmm1
14000bc87: c4 e2 e1 b9 cc              	vfmadd231sd	xmm1, xmm3, xmm4 # xmm1 = (xmm3 * xmm4) + xmm1
14000bc8c: c5 f3 59 0d 4c 7f 00 00     	vmulsd	xmm1, xmm1, qword ptr [rip + 32588] # 0x140013be0
14000bc94: c5 fb 10 2d 84 7f 00 00     	vmovsd	xmm5, qword ptr [rip + 32644] # xmm5 = mem[0],zero
                                                                        # 0x140013c20
14000bc9c: c4 e2 c9 ab e9              	vfmsub213sd	xmm5, xmm6, xmm1 # xmm5 = (xmm6 * xmm5) - xmm1
14000bca1: f2 41 0f 10 04 c1           	movsd	xmm0, qword ptr [r9 + 8*rax] # xmm0 = mem[0],zero
14000bca7: 48 8d 15 12 89 00 00        	lea	rdx, [rip + 35090]      # 0x1400145c0
14000bcae: f2 0f 10 14 c2              	movsd	xmm2, qword ptr [rdx + 8*rax] # xmm2 = mem[0],zero
14000bcb3: c5 eb 58 d5                 	vaddsd	xmm2, xmm2, xmm5
14000bcb7: c4 e2 c9 b9 05 50 7f 00 00  	vfmadd231sd	xmm0, xmm6, qword ptr [rip + 32592] # xmm0 = (xmm6 * mem) + xmm00x140013c10
14000bcc0: c5 fb 58 c2                 	vaddsd	xmm0, xmm0, xmm2
14000bcc4: c5 f9 6f 74 24 20           	vmovdqa	xmm6, xmmword ptr [rsp + 32]
14000bcca: 48 83 c4 58                 	add	rsp, 88
14000bcce: c3                          	ret
14000bccf: 90                          	nop
14000bcd0: c5 fb 10 15 58 7f 00 00     	vmovsd	xmm2, qword ptr [rip + 32600] # xmm2 = mem[0],zero
                                                                        # 0x140013c30
14000bcd8: c5 fb 5c 05 60 7f 00 00     	vsubsd	xmm0, xmm0, qword ptr [rip + 32608] # 0x140013c40
14000bce0: c5 eb 58 d0                 	vaddsd	xmm2, xmm2, xmm0
14000bce4: c5 fb 5e ca                 	vdivsd	xmm1, xmm0, xmm2
14000bce8: c5 fb 10 25 60 80 00 00     	vmovsd	xmm4, qword ptr [rip + 32864] # xmm4 = mem[0],zero
                                                                        # 0x140013d50
14000bcf0: c5 fb 10 2d 78 80 00 00     	vmovsd	xmm5, qword ptr [rip + 32888] # xmm5 = mem[0],zero
                                                                        # 0x140013d70
14000bcf8: c5 fb 59 f1                 	vmulsd	xmm6, xmm0, xmm1
14000bcfc: c5 f3 58 c9                 	vaddsd	xmm1, xmm1, xmm1
14000bd00: c5 f3 59 d1                 	vmulsd	xmm2, xmm1, xmm1
14000bd04: c4 e2 e9 a9 25 33 80 00 00  	vfmadd213sd	xmm4, xmm2, qword ptr [rip + 32819] # xmm4 = (xmm2 * xmm4) + mem0x140013d40
14000bd0d: c4 e2 e9 a9 2d 4a 80 00 00  	vfmadd213sd	xmm5, xmm2, qword ptr [rip + 32842] # xmm5 = (xmm2 * xmm5) + mem0x140013d60
14000bd16: c5 eb 59 d1                 	vmulsd	xmm2, xmm2, xmm1
14000bd1a: c5 db 59 e2                 	vmulsd	xmm4, xmm4, xmm2
14000bd1e: c5 eb 59 d2                 	vmulsd	xmm2, xmm2, xmm2
14000bd22: c5 eb 59 d1                 	vmulsd	xmm2, xmm2, xmm1
14000bd26: c5 d3 59 ea                 	vmulsd	xmm5, xmm5, xmm2
14000bd2a: c5 db 58 e5                 	vaddsd	xmm4, xmm4, xmm5
14000bd2e: c5 db 5c e6                 	vsubsd	xmm4, xmm4, xmm6
14000bd32: c5 f9 db 1d 46 80 00 00     	vpand	xmm3, xmm0, xmmword ptr [rip + 32838] # 0x140013d80
14000bd3a: c5 fb 5c c3                 	vsubsd	xmm0, xmm0, xmm3
14000bd3e: c5 db 58 e0                 	vaddsd	xmm4, xmm4, xmm0
14000bd42: c5 db 59 0d a6 7e 00 00     	vmulsd	xmm1, xmm4, qword ptr [rip + 32422] # 0x140013bf0
14000bd4a: c5 db 59 25 ae 7e 00 00     	vmulsd	xmm4, xmm4, qword ptr [rip + 32430] # 0x140013c00
14000bd52: c5 e3 59 05 a6 7e 00 00     	vmulsd	xmm0, xmm3, qword ptr [rip + 32422] # 0x140013c00
14000bd5a: c5 e3 59 1d 8e 7e 00 00     	vmulsd	xmm3, xmm3, qword ptr [rip + 32398] # 0x140013bf0
14000bd62: c5 fb 58 c4                 	vaddsd	xmm0, xmm0, xmm4
14000bd66: c5 fb 58 c1                 	vaddsd	xmm0, xmm0, xmm1
14000bd6a: c5 fb 58 c3                 	vaddsd	xmm0, xmm0, xmm3
14000bd6e: c5 f9 6f 74 24 20           	vmovdqa	xmm6, xmmword ptr [rsp + 32]
14000bd74: 48 83 c4 58                 	add	rsp, 88
14000bd78: c3                          	ret
14000bd79: c5 e9 eb 15 bf 7e 00 00     	vpor	xmm2, xmm2, xmmword ptr [rip + 32447] # 0x140013c40
14000bd81: c5 eb 5c 15 b7 7e 00 00     	vsubsd	xmm2, xmm2, qword ptr [rip + 32439] # 0x140013c40
14000bd89: c5 d1 73 d2 34              	vpsrlq	xmm5, xmm2, 52
14000bd8e: c5 e9 db 15 1a 7e 00 00     	vpand	xmm2, xmm2, xmmword ptr [rip + 32282] # 0x140013bb0
14000bd96: c5 f9 28 c2                 	vmovapd	xmm0, xmm2
14000bd9a: c5 d1 fa 2d 3e 7f 00 00     	vpsubd	xmm5, xmm5, xmmword ptr [rip + 32574] # 0x140013ce0
14000bda2: c5 fa e6 f5                 	vcvtdq2pd	xmm6, xmm5
14000bda6: e9 40 fe ff ff              	jmp	0x14000bbeb <.text+0xabeb>
14000bdab: 0f 1f 44 00 00              	nop	dword ptr [rax + rax]
14000bdb0: 75 2e                       	jne	0x14000bde0 <.text+0xade0>
14000bdb2: c5 fb 10 0d 96 7d 00 00     	vmovsd	xmm1, qword ptr [rip + 32150] # xmm1 = mem[0],zero
                                                                        # 0x140013b50
14000bdba: 44 8b 05 cf 7f 00 00        	mov	r8d, dword ptr [rip + 32719] # 0x140013d90
14000bdc1: e8 5a 06 00 00              	call	0x14000c420 <.text+0xb420>
14000bdc6: c5 f9 6f 74 24 20           	vmovdqa	xmm6, xmmword ptr [rsp + 32]
14000bdcc: 48 83 c4 58                 	add	rsp, 88
14000bdd0: c3                          	ret
14000bdd1: 66 66 66 66 66 66 66 0f 1f 84 00 00 00 00 00	nop	word ptr [rax + rax]
14000bde0: c5 fb 10 0d 88 7d 00 00     	vmovsd	xmm1, qword ptr [rip + 32136] # xmm1 = mem[0],zero
                                                                        # 0x140013b70
14000bde8: 44 8b 05 a5 7f 00 00        	mov	r8d, dword ptr [rip + 32677] # 0x140013d94
14000bdef: e8 2c 06 00 00              	call	0x14000c420 <.text+0xb420>
14000bdf4: c5 f9 6f 74 24 20           	vmovdqa	xmm6, xmmword ptr [rsp + 32]
14000bdfa: 48 83 c4 58                 	add	rsp, 88
14000bdfe: c3                          	ret
14000bdff: 90                          	nop
14000be00: 48 3b 05 59 7d 00 00        	cmp	rax, qword ptr [rip + 32089] # 0x140013b60
14000be07: 74 27                       	je	0x14000be30 <.text+0xae30>
14000be09: 48 3b 05 40 7d 00 00        	cmp	rax, qword ptr [rip + 32064] # 0x140013b50
14000be10: 74 ce                       	je	0x14000bde0 <.text+0xade0>
14000be12: 48 0b 05 67 7d 00 00        	or	rax, qword ptr [rip + 32103] # 0x140013b80
14000be19: 66 48 0f 6e c8              	movq	xmm1, rax
14000be1e: 44 8b 05 73 7f 00 00        	mov	r8d, dword ptr [rip + 32627] # 0x140013d98
14000be25: e8 f6 05 00 00              	call	0x14000c420 <.text+0xb420>
14000be2a: eb 04                       	jmp	0x14000be30 <.text+0xae30>
14000be2c: 0f 1f 40 00                 	nop	dword ptr [rax]
14000be30: c5 f9 6f 74 24 20           	vmovdqa	xmm6, xmmword ptr [rsp + 32]
14000be36: 48 83 c4 58                 	add	rsp, 88
14000be3a: c3                          	ret
14000be3b: cc                          	int3
14000be3c: 40 53                       	push	rbx
14000be3e: 48 83 ec 40                 	sub	rsp, 64
14000be42: 48 8b 05 87 bb 00 00        	mov	rax, qword ptr [rip + 48007] # 0x1400179d0
14000be49: 33 db                       	xor	ebx, ebx
14000be4b: 48 83 f8 fe                 	cmp	rax, -2
14000be4f: 75 2e                       	jne	0x14000be7f <.text+0xae7f>
14000be51: 48 89 5c 24 30              	mov	qword ptr [rsp + 48], rbx
14000be56: 44 8d 43 03                 	lea	r8d, [rbx + 3]
14000be5a: 89 5c 24 28                 	mov	dword ptr [rsp + 40], ebx
14000be5e: 48 8d 0d 3b 7f 00 00        	lea	rcx, [rip + 32571]      # 0x140013da0
14000be65: 45 33 c9                    	xor	r9d, r9d
14000be68: 44 89 44 24 20              	mov	dword ptr [rsp + 32], r8d
14000be6d: ba 00 00 00 40              	mov	edx, 1073741824
14000be72: ff 15 90 23 00 00           	call	qword ptr [rip + 9104]  # 0x14000e208
14000be78: 48 89 05 51 bb 00 00        	mov	qword ptr [rip + 47953], rax # 0x1400179d0
14000be7f: 48 83 f8 ff                 	cmp	rax, -1
14000be83: 0f 95 c3                    	setne	bl
14000be86: 8b c3                       	mov	eax, ebx
14000be88: 48 83 c4 40                 	add	rsp, 64
14000be8c: 5b                          	pop	rbx
14000be8d: c3                          	ret
14000be8e: cc                          	int3
14000be8f: cc                          	int3
14000be90: 48 83 ec 28                 	sub	rsp, 40
14000be94: 48 8b 0d 35 bb 00 00        	mov	rcx, qword ptr [rip + 47925] # 0x1400179d0
14000be9b: 48 83 f9 fd                 	cmp	rcx, -3
14000be9f: 77 06                       	ja	0x14000bea7 <.text+0xaea7>
14000bea1: ff 15 69 23 00 00           	call	qword ptr [rip + 9065]  # 0x14000e210
14000bea7: 48 83 c4 28                 	add	rsp, 40
14000beab: c3                          	ret
14000beac: 48 8b c4                    	mov	rax, rsp
14000beaf: 48 89 58 08                 	mov	qword ptr [rax + 8], rbx
14000beb3: 48 89 68 10                 	mov	qword ptr [rax + 16], rbp
14000beb7: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
14000bebb: 57                          	push	rdi
14000bebc: 48 83 ec 40                 	sub	rsp, 64
14000bec0: 48 83 60 d8 00              	and	qword ptr [rax - 40], 0
14000bec5: 49 8b f8                    	mov	rdi, r8
14000bec8: 4d 8b c8                    	mov	r9, r8
14000becb: 8b f2                       	mov	esi, edx
14000becd: 44 8b c2                    	mov	r8d, edx
14000bed0: 48 8b e9                    	mov	rbp, rcx
14000bed3: 48 8b d1                    	mov	rdx, rcx
14000bed6: 48 8b 0d f3 ba 00 00        	mov	rcx, qword ptr [rip + 47859] # 0x1400179d0
14000bedd: ff 15 8d 21 00 00           	call	qword ptr [rip + 8589]  # 0x14000e070
14000bee3: 8b d8                       	mov	ebx, eax
14000bee5: 85 c0                       	test	eax, eax
14000bee7: 75 6a                       	jne	0x14000bf53 <.text+0xaf53>
14000bee9: ff 15 91 21 00 00           	call	qword ptr [rip + 8593]  # 0x14000e080
14000beef: 83 f8 06                    	cmp	eax, 6
14000bef2: 75 5f                       	jne	0x14000bf53 <.text+0xaf53>
14000bef4: 48 8b 0d d5 ba 00 00        	mov	rcx, qword ptr [rip + 47829] # 0x1400179d0
14000befb: 48 83 f9 fd                 	cmp	rcx, -3
14000beff: 77 06                       	ja	0x14000bf07 <.text+0xaf07>
14000bf01: ff 15 09 23 00 00           	call	qword ptr [rip + 8969]  # 0x14000e210
14000bf07: 48 83 64 24 30 00           	and	qword ptr [rsp + 48], 0
14000bf0d: 48 8d 0d 8c 7e 00 00        	lea	rcx, [rip + 32396]      # 0x140013da0
14000bf14: 83 64 24 28 00              	and	dword ptr [rsp + 40], 0
14000bf19: 41 b8 03 00 00 00           	mov	r8d, 3
14000bf1f: 45 33 c9                    	xor	r9d, r9d
14000bf22: 44 89 44 24 20              	mov	dword ptr [rsp + 32], r8d
14000bf27: ba 00 00 00 40              	mov	edx, 1073741824
14000bf2c: ff 15 d6 22 00 00           	call	qword ptr [rip + 8918]  # 0x14000e208
14000bf32: 48 83 64 24 20 00           	and	qword ptr [rsp + 32], 0
14000bf38: 4c 8b cf                    	mov	r9, rdi
14000bf3b: 48 8b c8                    	mov	rcx, rax
14000bf3e: 48 89 05 8b ba 00 00        	mov	qword ptr [rip + 47755], rax # 0x1400179d0
14000bf45: 44 8b c6                    	mov	r8d, esi
14000bf48: 48 8b d5                    	mov	rdx, rbp
14000bf4b: ff 15 1f 21 00 00           	call	qword ptr [rip + 8479]  # 0x14000e070
14000bf51: 8b d8                       	mov	ebx, eax
14000bf53: 48 8b 6c 24 58              	mov	rbp, qword ptr [rsp + 88]
14000bf58: 8b c3                       	mov	eax, ebx
14000bf5a: 48 8b 5c 24 50              	mov	rbx, qword ptr [rsp + 80]
14000bf5f: 48 8b 74 24 60              	mov	rsi, qword ptr [rsp + 96]
14000bf64: 48 83 c4 40                 	add	rsp, 64
14000bf68: 5f                          	pop	rdi
14000bf69: c3                          	ret
14000bf6a: cc                          	int3
14000bf6b: cc                          	int3
14000bf6c: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000bf71: 4c 89 4c 24 20              	mov	qword ptr [rsp + 32], r9
14000bf76: 57                          	push	rdi
14000bf77: 48 83 ec 20                 	sub	rsp, 32
14000bf7b: 49 8b f9                    	mov	rdi, r9
14000bf7e: 49 8b d8                    	mov	rbx, r8
14000bf81: 8b 0a                       	mov	ecx, dword ptr [rdx]
14000bf83: e8 c8 ae ff ff              	call	0x140006e50 <.text+0x5e50>
14000bf88: 90                          	nop
14000bf89: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000bf8c: 48 63 08                    	movsxd	rcx, dword ptr [rax]
14000bf8f: 48 8b d1                    	mov	rdx, rcx
14000bf92: 48 8b c1                    	mov	rax, rcx
14000bf95: 48 c1 f8 06                 	sar	rax, 6
14000bf99: 4c 8d 05 70 c0 00 00        	lea	r8, [rip + 49264]       # 0x140018010
14000bfa0: 83 e2 3f                    	and	edx, 63
14000bfa3: 48 8d 14 d2                 	lea	rdx, [rdx + 8*rdx]
14000bfa7: 49 8b 04 c0                 	mov	rax, qword ptr [r8 + 8*rax]
14000bfab: f6 44 d0 38 01              	test	byte ptr [rax + 8*rdx + 56], 1
14000bfb0: 74 09                       	je	0x14000bfbb <.text+0xafbb>
14000bfb2: e8 cd 00 00 00              	call	0x14000c084 <.text+0xb084>
14000bfb7: 8b d8                       	mov	ebx, eax
14000bfb9: eb 0e                       	jmp	0x14000bfc9 <.text+0xafc9>
14000bfbb: e8 20 8e ff ff              	call	0x140004de0 <.text+0x3de0>
14000bfc0: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000bfc6: 83 cb ff                    	or	ebx, -1
14000bfc9: 8b 0f                       	mov	ecx, dword ptr [rdi]
14000bfcb: e8 a8 ae ff ff              	call	0x140006e78 <.text+0x5e78>
14000bfd0: 8b c3                       	mov	eax, ebx
14000bfd2: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000bfd7: 48 83 c4 20                 	add	rsp, 32
14000bfdb: 5f                          	pop	rdi
14000bfdc: c3                          	ret
14000bfdd: cc                          	int3
14000bfde: cc                          	int3
14000bfdf: cc                          	int3
14000bfe0: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
14000bfe4: 48 83 ec 38                 	sub	rsp, 56
14000bfe8: 48 63 d1                    	movsxd	rdx, ecx
14000bfeb: 83 fa fe                    	cmp	edx, -2
14000bfee: 75 15                       	jne	0x14000c005 <.text+0xb005>
14000bff0: e8 cb 8d ff ff              	call	0x140004dc0 <.text+0x3dc0>
14000bff5: 83 20 00                    	and	dword ptr [rax], 0
14000bff8: e8 e3 8d ff ff              	call	0x140004de0 <.text+0x3de0>
14000bffd: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000c003: eb 74                       	jmp	0x14000c079 <.text+0xb079>
14000c005: 85 c9                       	test	ecx, ecx
14000c007: 78 58                       	js	0x14000c061 <.text+0xb061>
14000c009: 3b 15 01 c4 00 00           	cmp	edx, dword ptr [rip + 50177] # 0x140018410
14000c00f: 73 50                       	jae	0x14000c061 <.text+0xb061>
14000c011: 48 8b ca                    	mov	rcx, rdx
14000c014: 4c 8d 05 f5 bf 00 00        	lea	r8, [rip + 49141]       # 0x140018010
14000c01b: 83 e1 3f                    	and	ecx, 63
14000c01e: 48 8b c2                    	mov	rax, rdx
14000c021: 48 c1 f8 06                 	sar	rax, 6
14000c025: 48 8d 0c c9                 	lea	rcx, [rcx + 8*rcx]
14000c029: 49 8b 04 c0                 	mov	rax, qword ptr [r8 + 8*rax]
14000c02d: f6 44 c8 38 01              	test	byte ptr [rax + 8*rcx + 56], 1
14000c032: 74 2d                       	je	0x14000c061 <.text+0xb061>
14000c034: 48 8d 44 24 40              	lea	rax, [rsp + 64]
14000c039: 89 54 24 50                 	mov	dword ptr [rsp + 80], edx
14000c03d: 89 54 24 58                 	mov	dword ptr [rsp + 88], edx
14000c041: 4c 8d 4c 24 50              	lea	r9, [rsp + 80]
14000c046: 48 8d 54 24 58              	lea	rdx, [rsp + 88]
14000c04b: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000c050: 4c 8d 44 24 20              	lea	r8, [rsp + 32]
14000c055: 48 8d 4c 24 48              	lea	rcx, [rsp + 72]
14000c05a: e8 0d ff ff ff              	call	0x14000bf6c <.text+0xaf6c>
14000c05f: eb 1b                       	jmp	0x14000c07c <.text+0xb07c>
14000c061: e8 5a 8d ff ff              	call	0x140004dc0 <.text+0x3dc0>
14000c066: 83 20 00                    	and	dword ptr [rax], 0
14000c069: e8 72 8d ff ff              	call	0x140004de0 <.text+0x3de0>
14000c06e: c7 00 09 00 00 00           	mov	dword ptr [rax], 9
14000c074: e8 47 8c ff ff              	call	0x140004cc0 <.text+0x3cc0>
14000c079: 83 c8 ff                    	or	eax, -1
14000c07c: 48 83 c4 38                 	add	rsp, 56
14000c080: c3                          	ret
14000c081: cc                          	int3
14000c082: cc                          	int3
14000c083: cc                          	int3
14000c084: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000c089: 57                          	push	rdi
14000c08a: 48 83 ec 20                 	sub	rsp, 32
14000c08e: 48 63 f9                    	movsxd	rdi, ecx
14000c091: 8b cf                       	mov	ecx, edi
14000c093: e8 c4 ae ff ff              	call	0x140006f5c <.text+0x5f5c>
14000c098: 48 83 f8 ff                 	cmp	rax, -1
14000c09c: 75 04                       	jne	0x14000c0a2 <.text+0xb0a2>
14000c09e: 33 db                       	xor	ebx, ebx
14000c0a0: eb 5a                       	jmp	0x14000c0fc <.text+0xb0fc>
14000c0a2: 48 8b 05 67 bf 00 00        	mov	rax, qword ptr [rip + 48999] # 0x140018010
14000c0a9: b9 02 00 00 00              	mov	ecx, 2
14000c0ae: 83 ff 01                    	cmp	edi, 1
14000c0b1: 75 09                       	jne	0x14000c0bc <.text+0xb0bc>
14000c0b3: 40 84 b8 c8 00 00 00        	test	byte ptr [rax + 200], dil
14000c0ba: 75 0d                       	jne	0x14000c0c9 <.text+0xb0c9>
14000c0bc: 3b f9                       	cmp	edi, ecx
14000c0be: 75 20                       	jne	0x14000c0e0 <.text+0xb0e0>
14000c0c0: f6 80 80 00 00 00 01        	test	byte ptr [rax + 128], 1
14000c0c7: 74 17                       	je	0x14000c0e0 <.text+0xb0e0>
14000c0c9: e8 8e ae ff ff              	call	0x140006f5c <.text+0x5f5c>
14000c0ce: b9 01 00 00 00              	mov	ecx, 1
14000c0d3: 48 8b d8                    	mov	rbx, rax
14000c0d6: e8 81 ae ff ff              	call	0x140006f5c <.text+0x5f5c>
14000c0db: 48 3b c3                    	cmp	rax, rbx
14000c0de: 74 be                       	je	0x14000c09e <.text+0xb09e>
14000c0e0: 8b cf                       	mov	ecx, edi
14000c0e2: e8 75 ae ff ff              	call	0x140006f5c <.text+0x5f5c>
14000c0e7: 48 8b c8                    	mov	rcx, rax
14000c0ea: ff 15 20 21 00 00           	call	qword ptr [rip + 8480]  # 0x14000e210
14000c0f0: 85 c0                       	test	eax, eax
14000c0f2: 75 aa                       	jne	0x14000c09e <.text+0xb09e>
14000c0f4: ff 15 86 1f 00 00           	call	qword ptr [rip + 8070]  # 0x14000e080
14000c0fa: 8b d8                       	mov	ebx, eax
14000c0fc: 8b cf                       	mov	ecx, edi
14000c0fe: e8 9d ad ff ff              	call	0x140006ea0 <.text+0x5ea0>
14000c103: 48 8b d7                    	mov	rdx, rdi
14000c106: 4c 8d 05 03 bf 00 00        	lea	r8, [rip + 48899]       # 0x140018010
14000c10d: 83 e2 3f                    	and	edx, 63
14000c110: 48 8b cf                    	mov	rcx, rdi
14000c113: 48 c1 f9 06                 	sar	rcx, 6
14000c117: 48 8d 14 d2                 	lea	rdx, [rdx + 8*rdx]
14000c11b: 49 8b 0c c8                 	mov	rcx, qword ptr [r8 + 8*rcx]
14000c11f: c6 44 d1 38 00              	mov	byte ptr [rcx + 8*rdx + 56], 0
14000c124: 85 db                       	test	ebx, ebx
14000c126: 74 0c                       	je	0x14000c134 <.text+0xb134>
14000c128: 8b cb                       	mov	ecx, ebx
14000c12a: e8 41 8c ff ff              	call	0x140004d70 <.text+0x3d70>
14000c12f: 83 c8 ff                    	or	eax, -1
14000c132: eb 02                       	jmp	0x14000c136 <.text+0xb136>
14000c134: 33 c0                       	xor	eax, eax
14000c136: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000c13b: 48 83 c4 20                 	add	rsp, 32
14000c13f: 5f                          	pop	rdi
14000c140: c3                          	ret
14000c141: cc                          	int3
14000c142: cc                          	int3
14000c143: cc                          	int3
14000c144: 83 49 18 ff                 	or	dword ptr [rcx + 24], -1
14000c148: 33 c0                       	xor	eax, eax
14000c14a: 48 89 01                    	mov	qword ptr [rcx], rax
14000c14d: 48 89 41 08                 	mov	qword ptr [rcx + 8], rax
14000c151: 89 41 10                    	mov	dword ptr [rcx + 16], eax
14000c154: 48 89 41 1c                 	mov	qword ptr [rcx + 28], rax
14000c158: 48 89 41 28                 	mov	qword ptr [rcx + 40], rax
14000c15c: 87 41 14                    	xchg	dword ptr [rcx + 20], eax
14000c15f: c3                          	ret
14000c160: 48 8b c4                    	mov	rax, rsp
14000c163: 53                          	push	rbx
14000c164: 48 83 ec 50                 	sub	rsp, 80
14000c168: f2 0f 10 84 24 80 00 00 00  	movsd	xmm0, qword ptr [rsp + 128] # xmm0 = mem[0],zero
14000c171: 8b d9                       	mov	ebx, ecx
14000c173: f2 0f 10 8c 24 88 00 00 00  	movsd	xmm1, qword ptr [rsp + 136] # xmm1 = mem[0],zero
14000c17c: ba c0 ff 00 00              	mov	edx, 65472
14000c181: 89 48 c8                    	mov	dword ptr [rax - 56], ecx
14000c184: 48 8b 8c 24 90 00 00 00     	mov	rcx, qword ptr [rsp + 144]
14000c18c: f2 0f 11 40 e0              	movsd	qword ptr [rax - 32], xmm0
14000c191: f2 0f 11 48 e8              	movsd	qword ptr [rax - 24], xmm1
14000c196: f2 0f 11 58 d8              	movsd	qword ptr [rax - 40], xmm3
14000c19b: 4c 89 40 d0                 	mov	qword ptr [rax - 48], r8
14000c19f: e8 24 07 00 00              	call	0x14000c8c8 <.text+0xb8c8>
14000c1a4: 48 8d 4c 24 20              	lea	rcx, [rsp + 32]
14000c1a9: e8 36 6e ff ff              	call	0x140002fe4 <.text+0x1fe4>
14000c1ae: 85 c0                       	test	eax, eax
14000c1b0: 75 07                       	jne	0x14000c1b9 <.text+0xb1b9>
14000c1b2: 8b cb                       	mov	ecx, ebx
14000c1b4: e8 bf 06 00 00              	call	0x14000c878 <.text+0xb878>
14000c1b9: f2 0f 10 44 24 40           	movsd	xmm0, qword ptr [rsp + 64] # xmm0 = mem[0],zero
14000c1bf: 48 83 c4 50                 	add	rsp, 80
14000c1c3: 5b                          	pop	rbx
14000c1c4: c3                          	ret
14000c1c5: cc                          	int3
14000c1c6: cc                          	int3
14000c1c7: cc                          	int3
14000c1c8: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000c1cd: 48 89 74 24 10              	mov	qword ptr [rsp + 16], rsi
14000c1d2: 57                          	push	rdi
14000c1d3: 48 83 ec 20                 	sub	rsp, 32
14000c1d7: 8b d9                       	mov	ebx, ecx
14000c1d9: 48 8b f2                    	mov	rsi, rdx
14000c1dc: 83 e3 1f                    	and	ebx, 31
14000c1df: 8b f9                       	mov	edi, ecx
14000c1e1: f6 c1 08                    	test	cl, 8
14000c1e4: 74 14                       	je	0x14000c1fa <.text+0xb1fa>
14000c1e6: 40 84 f6                    	test	sil, sil
14000c1e9: 79 0f                       	jns	0x14000c1fa <.text+0xb1fa>
14000c1eb: b9 01 00 00 00              	mov	ecx, 1
14000c1f0: e8 4f 07 00 00              	call	0x14000c944 <.text+0xb944>
14000c1f5: 83 e3 f7                    	and	ebx, -9
14000c1f8: eb 57                       	jmp	0x14000c251 <.text+0xb251>
14000c1fa: b9 04 00 00 00              	mov	ecx, 4
14000c1ff: 40 84 f9                    	test	cl, dil
14000c202: 74 11                       	je	0x14000c215 <.text+0xb215>
14000c204: 48 0f ba e6 09              	bt	rsi, 9
14000c209: 73 0a                       	jae	0x14000c215 <.text+0xb215>
14000c20b: e8 34 07 00 00              	call	0x14000c944 <.text+0xb944>
14000c210: 83 e3 fb                    	and	ebx, -5
14000c213: eb 3c                       	jmp	0x14000c251 <.text+0xb251>
14000c215: 40 f6 c7 01                 	test	dil, 1
14000c219: 74 16                       	je	0x14000c231 <.text+0xb231>
14000c21b: 48 0f ba e6 0a              	bt	rsi, 10
14000c220: 73 0f                       	jae	0x14000c231 <.text+0xb231>
14000c222: b9 08 00 00 00              	mov	ecx, 8
14000c227: e8 18 07 00 00              	call	0x14000c944 <.text+0xb944>
14000c22c: 83 e3 fe                    	and	ebx, -2
14000c22f: eb 20                       	jmp	0x14000c251 <.text+0xb251>
14000c231: 40 f6 c7 02                 	test	dil, 2
14000c235: 74 1a                       	je	0x14000c251 <.text+0xb251>
14000c237: 48 0f ba e6 0b              	bt	rsi, 11
14000c23c: 73 13                       	jae	0x14000c251 <.text+0xb251>
14000c23e: 40 f6 c7 10                 	test	dil, 16
14000c242: 74 0a                       	je	0x14000c24e <.text+0xb24e>
14000c244: b9 10 00 00 00              	mov	ecx, 16
14000c249: e8 f6 06 00 00              	call	0x14000c944 <.text+0xb944>
14000c24e: 83 e3 fd                    	and	ebx, -3
14000c251: 40 f6 c7 10                 	test	dil, 16
14000c255: 74 14                       	je	0x14000c26b <.text+0xb26b>
14000c257: 48 0f ba e6 0c              	bt	rsi, 12
14000c25c: 73 0d                       	jae	0x14000c26b <.text+0xb26b>
14000c25e: b9 20 00 00 00              	mov	ecx, 32
14000c263: e8 dc 06 00 00              	call	0x14000c944 <.text+0xb944>
14000c268: 83 e3 ef                    	and	ebx, -17
14000c26b: 48 8b 74 24 38              	mov	rsi, qword ptr [rsp + 56]
14000c270: 33 c0                       	xor	eax, eax
14000c272: 85 db                       	test	ebx, ebx
14000c274: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000c279: 0f 94 c0                    	sete	al
14000c27c: 48 83 c4 20                 	add	rsp, 32
14000c280: 5f                          	pop	rdi
14000c281: c3                          	ret
14000c282: cc                          	int3
14000c283: cc                          	int3
14000c284: 48 8b c4                    	mov	rax, rsp
14000c287: 55                          	push	rbp
14000c288: 53                          	push	rbx
14000c289: 56                          	push	rsi
14000c28a: 57                          	push	rdi
14000c28b: 41 56                       	push	r14
14000c28d: 48 8d 68 c9                 	lea	rbp, [rax - 55]
14000c291: 48 81 ec f0 00 00 00        	sub	rsp, 240
14000c298: 0f 29 70 c8                 	movaps	xmmword ptr [rax - 56], xmm6
14000c29c: 48 8b 05 85 ad 00 00        	mov	rax, qword ptr [rip + 44421] # 0x140017028
14000c2a3: 48 33 c4                    	xor	rax, rsp
14000c2a6: 48 89 45 ef                 	mov	qword ptr [rbp - 17], rax
14000c2aa: 8b f2                       	mov	esi, edx
14000c2ac: 4c 8b f1                    	mov	r14, rcx
14000c2af: ba c0 ff 00 00              	mov	edx, 65472
14000c2b4: b9 80 1f 00 00              	mov	ecx, 8064
14000c2b9: 41 8b f9                    	mov	edi, r9d
14000c2bc: 49 8b d8                    	mov	rbx, r8
14000c2bf: e8 04 06 00 00              	call	0x14000c8c8 <.text+0xb8c8>
14000c2c4: 8b 4d 5f                    	mov	ecx, dword ptr [rbp + 95]
14000c2c7: 48 89 44 24 40              	mov	qword ptr [rsp + 64], rax
14000c2cc: 48 89 5c 24 50              	mov	qword ptr [rsp + 80], rbx
14000c2d1: f2 0f 10 44 24 50           	movsd	xmm0, qword ptr [rsp + 80] # xmm0 = mem[0],zero
14000c2d7: 48 8b 54 24 40              	mov	rdx, qword ptr [rsp + 64]
14000c2dc: f2 0f 11 44 24 48           	movsd	qword ptr [rsp + 72], xmm0
14000c2e2: e8 e1 fe ff ff              	call	0x14000c1c8 <.text+0xb1c8>
14000c2e7: f2 0f 10 75 77              	movsd	xmm6, qword ptr [rbp + 119] # xmm6 = mem[0],zero
14000c2ec: 85 c0                       	test	eax, eax
14000c2ee: 75 40                       	jne	0x14000c330 <.text+0xb330>
14000c2f0: 83 7d 7f 02                 	cmp	dword ptr [rbp + 127], 2
14000c2f4: 75 11                       	jne	0x14000c307 <.text+0xb307>
14000c2f6: 8b 45 bf                    	mov	eax, dword ptr [rbp - 65]
14000c2f9: 83 e0 e3                    	and	eax, -29
14000c2fc: f2 0f 11 75 af              	movsd	qword ptr [rbp - 81], xmm6
14000c301: 83 c8 03                    	or	eax, 3
14000c304: 89 45 bf                    	mov	dword ptr [rbp - 65], eax
14000c307: 44 8b 45 5f                 	mov	r8d, dword ptr [rbp + 95]
14000c30b: 48 8d 44 24 48              	lea	rax, [rsp + 72]
14000c310: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
14000c315: 48 8d 54 24 40              	lea	rdx, [rsp + 64]
14000c31a: 48 8d 45 6f                 	lea	rax, [rbp + 111]
14000c31e: 44 8b ce                    	mov	r9d, esi
14000c321: 48 8d 4c 24 60              	lea	rcx, [rsp + 96]
14000c326: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000c32b: e8 10 02 00 00              	call	0x14000c540 <.text+0xb540>
14000c330: e8 87 6c ff ff              	call	0x140002fbc <.text+0x1fbc>
14000c335: 84 c0                       	test	al, al
14000c337: 74 34                       	je	0x14000c36d <.text+0xb36d>
14000c339: 85 ff                       	test	edi, edi
14000c33b: 74 30                       	je	0x14000c36d <.text+0xb36d>
14000c33d: 48 8b 44 24 40              	mov	rax, qword ptr [rsp + 64]
14000c342: 4d 8b c6                    	mov	r8, r14
14000c345: f2 0f 10 44 24 48           	movsd	xmm0, qword ptr [rsp + 72] # xmm0 = mem[0],zero
14000c34b: 8b cf                       	mov	ecx, edi
14000c34d: f2 0f 10 5d 6f              	movsd	xmm3, qword ptr [rbp + 111] # xmm3 = mem[0],zero
14000c352: 8b 55 67                    	mov	edx, dword ptr [rbp + 103]
14000c355: 48 89 44 24 30              	mov	qword ptr [rsp + 48], rax
14000c35a: f2 0f 11 44 24 28           	movsd	qword ptr [rsp + 40], xmm0
14000c360: f2 0f 11 74 24 20           	movsd	qword ptr [rsp + 32], xmm6
14000c366: e8 f5 fd ff ff              	call	0x14000c160 <.text+0xb160>
14000c36b: eb 1c                       	jmp	0x14000c389 <.text+0xb389>
14000c36d: 8b cf                       	mov	ecx, edi
14000c36f: e8 04 05 00 00              	call	0x14000c878 <.text+0xb878>
14000c374: 48 8b 4c 24 40              	mov	rcx, qword ptr [rsp + 64]
14000c379: ba c0 ff 00 00              	mov	edx, 65472
14000c37e: e8 45 05 00 00              	call	0x14000c8c8 <.text+0xb8c8>
14000c383: f2 0f 10 44 24 48           	movsd	xmm0, qword ptr [rsp + 72] # xmm0 = mem[0],zero
14000c389: 48 8b 4d ef                 	mov	rcx, qword ptr [rbp - 17]
14000c38d: 48 33 cc                    	xor	rcx, rsp
14000c390: e8 4b 07 00 00              	call	0x14000cae0 <.text+0xbae0>
14000c395: 0f 28 b4 24 e0 00 00 00     	movaps	xmm6, xmmword ptr [rsp + 224]
14000c39d: 48 81 c4 f0 00 00 00        	add	rsp, 240
14000c3a4: 41 5e                       	pop	r14
14000c3a6: 5f                          	pop	rdi
14000c3a7: 5e                          	pop	rsi
14000c3a8: 5b                          	pop	rbx
14000c3a9: 5d                          	pop	rbp
14000c3aa: c3                          	ret
14000c3ab: cc                          	int3
14000c3ac: cc                          	int3
14000c3ad: cc                          	int3
14000c3ae: cc                          	int3
14000c3af: cc                          	int3
14000c3b0: 40 53                       	push	rbx
14000c3b2: 48 83 ec 10                 	sub	rsp, 16
14000c3b6: 45 33 c0                    	xor	r8d, r8d
14000c3b9: 33 c9                       	xor	ecx, ecx
14000c3bb: 44 89 05 76 c2 00 00        	mov	dword ptr [rip + 49782], r8d # 0x140018638
14000c3c2: 45 8d 48 01                 	lea	r9d, [r8 + 1]
14000c3c6: 41 8b c1                    	mov	eax, r9d
14000c3c9: 0f a2                       	cpuid
14000c3cb: 89 04 24                    	mov	dword ptr [rsp], eax
14000c3ce: b8 00 10 00 18              	mov	eax, 402657280
14000c3d3: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
14000c3d7: 23 c8                       	and	ecx, eax
14000c3d9: 89 5c 24 04                 	mov	dword ptr [rsp + 4], ebx
14000c3dd: 89 54 24 0c                 	mov	dword ptr [rsp + 12], edx
14000c3e1: 3b c8                       	cmp	ecx, eax
14000c3e3: 75 2c                       	jne	0x14000c411 <.text+0xb411>
14000c3e5: 33 c9                       	xor	ecx, ecx
14000c3e7: 0f 01 d0                    	xgetbv
14000c3ea: 48 c1 e2 20                 	shl	rdx, 32
14000c3ee: 48 0b d0                    	or	rdx, rax
14000c3f1: 48 89 54 24 20              	mov	qword ptr [rsp + 32], rdx
14000c3f6: 48 8b 44 24 20              	mov	rax, qword ptr [rsp + 32]
14000c3fb: 44 8b 05 36 c2 00 00        	mov	r8d, dword ptr [rip + 49718] # 0x140018638
14000c402: 24 06                       	and	al, 6
14000c404: 3c 06                       	cmp	al, 6
14000c406: 45 0f 44 c1                 	cmove	r8d, r9d
14000c40a: 44 89 05 27 c2 00 00        	mov	dword ptr [rip + 49703], r8d # 0x140018638
14000c411: 44 89 05 24 c2 00 00        	mov	dword ptr [rip + 49700], r8d # 0x14001863c
14000c418: 33 c0                       	xor	eax, eax
14000c41a: 48 83 c4 10                 	add	rsp, 16
14000c41e: 5b                          	pop	rbx
14000c41f: c3                          	ret
14000c420: 48 83 ec 38                 	sub	rsp, 56
14000c424: 48 8d 05 b5 91 00 00        	lea	rax, [rip + 37301]      # 0x1400155e0
14000c42b: 41 b9 1b 00 00 00           	mov	r9d, 27
14000c431: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000c436: e8 05 00 00 00              	call	0x14000c440 <.text+0xb440>
14000c43b: 48 83 c4 38                 	add	rsp, 56
14000c43f: c3                          	ret
14000c440: 48 8b c4                    	mov	rax, rsp
14000c443: 48 83 ec 68                 	sub	rsp, 104
14000c447: 0f 29 70 e8                 	movaps	xmmword ptr [rax - 24], xmm6
14000c44b: 0f 28 f1                    	movaps	xmm6, xmm1
14000c44e: 41 8b d1                    	mov	edx, r9d
14000c451: 0f 28 d8                    	movaps	xmm3, xmm0
14000c454: 41 83 e8 01                 	sub	r8d, 1
14000c458: 74 2a                       	je	0x14000c484 <.text+0xb484>
14000c45a: 41 83 f8 01                 	cmp	r8d, 1
14000c45e: 75 69                       	jne	0x14000c4c9 <.text+0xb4c9>
14000c460: 44 89 40 d8                 	mov	dword ptr [rax - 40], r8d
14000c464: 0f 57 d2                    	xorps	xmm2, xmm2
14000c467: f2 0f 11 50 d0              	movsd	qword ptr [rax - 48], xmm2
14000c46c: 45 8b c8                    	mov	r9d, r8d
14000c46f: f2 0f 11 40 c8              	movsd	qword ptr [rax - 56], xmm0
14000c474: c7 40 c0 21 00 00 00        	mov	dword ptr [rax - 64], 33
14000c47b: c7 40 b8 08 00 00 00        	mov	dword ptr [rax - 72], 8
14000c482: eb 2d                       	jmp	0x14000c4b1 <.text+0xb4b1>
14000c484: c7 44 24 40 01 00 00 00     	mov	dword ptr [rsp + 64], 1
14000c48c: 0f 57 c0                    	xorps	xmm0, xmm0
14000c48f: f2 0f 11 44 24 38           	movsd	qword ptr [rsp + 56], xmm0
14000c495: 41 b9 02 00 00 00           	mov	r9d, 2
14000c49b: f2 0f 11 5c 24 30           	movsd	qword ptr [rsp + 48], xmm3
14000c4a1: c7 44 24 28 22 00 00 00     	mov	dword ptr [rsp + 40], 34
14000c4a9: c7 44 24 20 04 00 00 00     	mov	dword ptr [rsp + 32], 4
14000c4b1: 48 8b 8c 24 90 00 00 00     	mov	rcx, qword ptr [rsp + 144]
14000c4b9: f2 0f 11 74 24 78           	movsd	qword ptr [rsp + 120], xmm6
14000c4bf: 4c 8b 44 24 78              	mov	r8, qword ptr [rsp + 120]
14000c4c4: e8 bb fd ff ff              	call	0x14000c284 <.text+0xb284>
14000c4c9: 0f 28 c6                    	movaps	xmm0, xmm6
14000c4cc: 0f 28 74 24 50              	movaps	xmm6, xmmword ptr [rsp + 80]
14000c4d1: 48 83 c4 68                 	add	rsp, 104
14000c4d5: c3                          	ret
14000c4d6: cc                          	int3
14000c4d7: cc                          	int3
14000c4d8: cc                          	int3
14000c4d9: cc                          	int3
14000c4da: cc                          	int3
14000c4db: cc                          	int3
14000c4dc: cc                          	int3
14000c4dd: cc                          	int3
14000c4de: cc                          	int3
14000c4df: cc                          	int3
14000c4e0: cc                          	int3
14000c4e1: cc                          	int3
14000c4e2: cc                          	int3
14000c4e3: cc                          	int3
14000c4e4: cc                          	int3
14000c4e5: cc                          	int3
14000c4e6: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
14000c4f0: 48 83 ec 08                 	sub	rsp, 8
14000c4f4: 0f ae 1c 24                 	stmxcsr	dword ptr [rsp]
14000c4f8: 8b 04 24                    	mov	eax, dword ptr [rsp]
14000c4fb: 48 83 c4 08                 	add	rsp, 8
14000c4ff: c3                          	ret
14000c500: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
14000c504: 0f ae 54 24 08              	ldmxcsr	dword ptr [rsp + 8]
14000c509: c3                          	ret
14000c50a: 0f ae 5c 24 08              	stmxcsr	dword ptr [rsp + 8]
14000c50f: b9 c0 ff ff ff              	mov	ecx, 4294967232
14000c514: 21 4c 24 08                 	and	dword ptr [rsp + 8], ecx
14000c518: 0f ae 54 24 08              	ldmxcsr	dword ptr [rsp + 8]
14000c51d: c3                          	ret
14000c51e: 66 0f 2e 05 ca 90 00 00     	ucomisd	xmm0, qword ptr [rip + 37066] # 0x1400155f0
14000c526: 73 14                       	jae	0x14000c53c <.text+0xb53c>
14000c528: 66 0f 2e 05 c8 90 00 00     	ucomisd	xmm0, qword ptr [rip + 37064] # 0x1400155f8
14000c530: 76 0a                       	jbe	0x14000c53c <.text+0xb53c>
14000c532: f2 48 0f 2d c8              	cvtsd2si	rcx, xmm0
14000c537: f2 48 0f 2a c1              	cvtsi2sd	xmm0, rcx
14000c53c: c3                          	ret
14000c53d: cc                          	int3
14000c53e: cc                          	int3
14000c53f: cc                          	int3
14000c540: 48 83 ec 48                 	sub	rsp, 72
14000c544: 83 64 24 30 00              	and	dword ptr [rsp + 48], 0
14000c549: 48 8b 44 24 78              	mov	rax, qword ptr [rsp + 120]
14000c54e: 48 89 44 24 28              	mov	qword ptr [rsp + 40], rax
14000c553: 48 8b 44 24 70              	mov	rax, qword ptr [rsp + 112]
14000c558: 48 89 44 24 20              	mov	qword ptr [rsp + 32], rax
14000c55d: e8 06 00 00 00              	call	0x14000c568 <.text+0xb568>
14000c562: 48 83 c4 48                 	add	rsp, 72
14000c566: c3                          	ret
14000c567: cc                          	int3
14000c568: 48 8b c4                    	mov	rax, rsp
14000c56b: 48 89 58 10                 	mov	qword ptr [rax + 16], rbx
14000c56f: 48 89 70 18                 	mov	qword ptr [rax + 24], rsi
14000c573: 48 89 78 20                 	mov	qword ptr [rax + 32], rdi
14000c577: 48 89 48 08                 	mov	qword ptr [rax + 8], rcx
14000c57b: 55                          	push	rbp
14000c57c: 48 8b ec                    	mov	rbp, rsp
14000c57f: 48 83 ec 20                 	sub	rsp, 32
14000c583: 48 8b da                    	mov	rbx, rdx
14000c586: 41 8b f1                    	mov	esi, r9d
14000c589: 33 d2                       	xor	edx, edx
14000c58b: bf 0d 00 00 c0              	mov	edi, 3221225485
14000c590: 89 51 04                    	mov	dword ptr [rcx + 4], edx
14000c593: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c597: 89 50 08                    	mov	dword ptr [rax + 8], edx
14000c59a: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c59e: 89 50 0c                    	mov	dword ptr [rax + 12], edx
14000c5a1: 41 f6 c0 10                 	test	r8b, 16
14000c5a5: 74 0d                       	je	0x14000c5b4 <.text+0xb5b4>
14000c5a7: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c5ab: bf 8f 00 00 c0              	mov	edi, 3221225615
14000c5b0: 83 48 04 01                 	or	dword ptr [rax + 4], 1
14000c5b4: 41 f6 c0 02                 	test	r8b, 2
14000c5b8: 74 0d                       	je	0x14000c5c7 <.text+0xb5c7>
14000c5ba: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c5be: bf 93 00 00 c0              	mov	edi, 3221225619
14000c5c3: 83 48 04 02                 	or	dword ptr [rax + 4], 2
14000c5c7: 41 f6 c0 01                 	test	r8b, 1
14000c5cb: 74 0d                       	je	0x14000c5da <.text+0xb5da>
14000c5cd: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c5d1: bf 91 00 00 c0              	mov	edi, 3221225617
14000c5d6: 83 48 04 04                 	or	dword ptr [rax + 4], 4
14000c5da: 41 f6 c0 04                 	test	r8b, 4
14000c5de: 74 0d                       	je	0x14000c5ed <.text+0xb5ed>
14000c5e0: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c5e4: bf 8e 00 00 c0              	mov	edi, 3221225614
14000c5e9: 83 48 04 08                 	or	dword ptr [rax + 4], 8
14000c5ed: 41 f6 c0 08                 	test	r8b, 8
14000c5f1: 74 0d                       	je	0x14000c600 <.text+0xb600>
14000c5f3: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c5f7: bf 90 00 00 c0              	mov	edi, 3221225616
14000c5fc: 83 48 04 10                 	or	dword ptr [rax + 4], 16
14000c600: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c604: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000c607: 48 c1 e8 07                 	shr	rax, 7
14000c60b: c1 e0 04                    	shl	eax, 4
14000c60e: f7 d0                       	not	eax
14000c610: 33 41 08                    	xor	eax, dword ptr [rcx + 8]
14000c613: 83 e0 10                    	and	eax, 16
14000c616: 31 41 08                    	xor	dword ptr [rcx + 8], eax
14000c619: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c61d: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000c620: 48 c1 e8 09                 	shr	rax, 9
14000c624: c1 e0 03                    	shl	eax, 3
14000c627: f7 d0                       	not	eax
14000c629: 33 41 08                    	xor	eax, dword ptr [rcx + 8]
14000c62c: 83 e0 08                    	and	eax, 8
14000c62f: 31 41 08                    	xor	dword ptr [rcx + 8], eax
14000c632: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c636: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000c639: 48 c1 e8 0a                 	shr	rax, 10
14000c63d: c1 e0 02                    	shl	eax, 2
14000c640: f7 d0                       	not	eax
14000c642: 33 41 08                    	xor	eax, dword ptr [rcx + 8]
14000c645: 83 e0 04                    	and	eax, 4
14000c648: 31 41 08                    	xor	dword ptr [rcx + 8], eax
14000c64b: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c64f: 48 8b 03                    	mov	rax, qword ptr [rbx]
14000c652: 48 c1 e8 0b                 	shr	rax, 11
14000c656: 03 c0                       	add	eax, eax
14000c658: f7 d0                       	not	eax
14000c65a: 33 41 08                    	xor	eax, dword ptr [rcx + 8]
14000c65d: 83 e0 02                    	and	eax, 2
14000c660: 31 41 08                    	xor	dword ptr [rcx + 8], eax
14000c663: 8b 03                       	mov	eax, dword ptr [rbx]
14000c665: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c669: 48 c1 e8 0c                 	shr	rax, 12
14000c66d: f7 d0                       	not	eax
14000c66f: 33 41 08                    	xor	eax, dword ptr [rcx + 8]
14000c672: 83 e0 01                    	and	eax, 1
14000c675: 31 41 08                    	xor	dword ptr [rcx + 8], eax
14000c678: e8 e7 02 00 00              	call	0x14000c964 <.text+0xb964>
14000c67d: 48 8b d0                    	mov	rdx, rax
14000c680: a8 01                       	test	al, 1
14000c682: 74 08                       	je	0x14000c68c <.text+0xb68c>
14000c684: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c688: 83 49 0c 10                 	or	dword ptr [rcx + 12], 16
14000c68c: f6 c2 04                    	test	dl, 4
14000c68f: 74 08                       	je	0x14000c699 <.text+0xb699>
14000c691: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c695: 83 49 0c 08                 	or	dword ptr [rcx + 12], 8
14000c699: f6 c2 08                    	test	dl, 8
14000c69c: 74 08                       	je	0x14000c6a6 <.text+0xb6a6>
14000c69e: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c6a2: 83 48 0c 04                 	or	dword ptr [rax + 12], 4
14000c6a6: f6 c2 10                    	test	dl, 16
14000c6a9: 74 08                       	je	0x14000c6b3 <.text+0xb6b3>
14000c6ab: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c6af: 83 48 0c 02                 	or	dword ptr [rax + 12], 2
14000c6b3: f6 c2 20                    	test	dl, 32
14000c6b6: 74 08                       	je	0x14000c6c0 <.text+0xb6c0>
14000c6b8: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c6bc: 83 48 0c 01                 	or	dword ptr [rax + 12], 1
14000c6c0: 8b 03                       	mov	eax, dword ptr [rbx]
14000c6c2: b9 00 60 00 00              	mov	ecx, 24576
14000c6c7: 48 23 c1                    	and	rax, rcx
14000c6ca: 74 3e                       	je	0x14000c70a <.text+0xb70a>
14000c6cc: 48 3d 00 20 00 00           	cmp	rax, 8192
14000c6d2: 74 26                       	je	0x14000c6fa <.text+0xb6fa>
14000c6d4: 48 3d 00 40 00 00           	cmp	rax, 16384
14000c6da: 74 0e                       	je	0x14000c6ea <.text+0xb6ea>
14000c6dc: 48 3b c1                    	cmp	rax, rcx
14000c6df: 75 30                       	jne	0x14000c711 <.text+0xb711>
14000c6e1: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c6e5: 83 08 03                    	or	dword ptr [rax], 3
14000c6e8: eb 27                       	jmp	0x14000c711 <.text+0xb711>
14000c6ea: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c6ee: 83 20 fe                    	and	dword ptr [rax], -2
14000c6f1: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c6f5: 83 08 02                    	or	dword ptr [rax], 2
14000c6f8: eb 17                       	jmp	0x14000c711 <.text+0xb711>
14000c6fa: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c6fe: 83 20 fd                    	and	dword ptr [rax], -3
14000c701: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c705: 83 08 01                    	or	dword ptr [rax], 1
14000c708: eb 07                       	jmp	0x14000c711 <.text+0xb711>
14000c70a: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c70e: 83 20 fc                    	and	dword ptr [rax], -4
14000c711: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c715: 81 e6 ff 0f 00 00           	and	esi, 4095
14000c71b: c1 e6 05                    	shl	esi, 5
14000c71e: 81 20 1f 00 fe ff           	and	dword ptr [rax], 4294836255
14000c724: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c728: 09 30                       	or	dword ptr [rax], esi
14000c72a: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c72e: 48 8b 75 38                 	mov	rsi, qword ptr [rbp + 56]
14000c732: 83 48 20 01                 	or	dword ptr [rax + 32], 1
14000c736: 83 7d 40 00                 	cmp	dword ptr [rbp + 64], 0
14000c73a: 74 33                       	je	0x14000c76f <.text+0xb76f>
14000c73c: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c740: ba e1 ff ff ff              	mov	edx, 4294967265
14000c745: 21 50 20                    	and	dword ptr [rax + 32], edx
14000c748: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
14000c74c: 8b 08                       	mov	ecx, dword ptr [rax]
14000c74e: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c752: 89 48 10                    	mov	dword ptr [rax + 16], ecx
14000c755: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c759: 83 48 60 01                 	or	dword ptr [rax + 96], 1
14000c75d: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c761: 21 50 60                    	and	dword ptr [rax + 96], edx
14000c764: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c768: 8b 0e                       	mov	ecx, dword ptr [rsi]
14000c76a: 89 48 50                    	mov	dword ptr [rax + 80], ecx
14000c76d: eb 48                       	jmp	0x14000c7b7 <.text+0xb7b7>
14000c76f: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c773: 41 b8 e3 ff ff ff           	mov	r8d, 4294967267
14000c779: 8b 41 20                    	mov	eax, dword ptr [rcx + 32]
14000c77c: 41 23 c0                    	and	eax, r8d
14000c77f: 83 c8 02                    	or	eax, 2
14000c782: 89 41 20                    	mov	dword ptr [rcx + 32], eax
14000c785: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
14000c789: 48 8b 08                    	mov	rcx, qword ptr [rax]
14000c78c: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c790: 48 89 48 10                 	mov	qword ptr [rax + 16], rcx
14000c794: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c798: 83 48 60 01                 	or	dword ptr [rax + 96], 1
14000c79c: 48 8b 55 10                 	mov	rdx, qword ptr [rbp + 16]
14000c7a0: 8b 42 60                    	mov	eax, dword ptr [rdx + 96]
14000c7a3: 41 23 c0                    	and	eax, r8d
14000c7a6: 83 c8 02                    	or	eax, 2
14000c7a9: 89 42 60                    	mov	dword ptr [rdx + 96], eax
14000c7ac: 48 8b 45 10                 	mov	rax, qword ptr [rbp + 16]
14000c7b0: 48 8b 16                    	mov	rdx, qword ptr [rsi]
14000c7b3: 48 89 50 50                 	mov	qword ptr [rax + 80], rdx
14000c7b7: e8 ec 00 00 00              	call	0x14000c8a8 <.text+0xb8a8>
14000c7bc: 33 d2                       	xor	edx, edx
14000c7be: 4c 8d 4d 10                 	lea	r9, [rbp + 16]
14000c7c2: 8b cf                       	mov	ecx, edi
14000c7c4: 44 8d 42 01                 	lea	r8d, [rdx + 1]
14000c7c8: ff 15 1a 19 00 00           	call	qword ptr [rip + 6426]  # 0x14000e0e8
14000c7ce: 48 8b 4d 10                 	mov	rcx, qword ptr [rbp + 16]
14000c7d2: 8b 41 08                    	mov	eax, dword ptr [rcx + 8]
14000c7d5: a8 10                       	test	al, 16
14000c7d7: 74 08                       	je	0x14000c7e1 <.text+0xb7e1>
14000c7d9: 48 0f ba 33 07              	btr	qword ptr [rbx], 7
14000c7de: 8b 41 08                    	mov	eax, dword ptr [rcx + 8]
14000c7e1: a8 08                       	test	al, 8
14000c7e3: 74 08                       	je	0x14000c7ed <.text+0xb7ed>
14000c7e5: 48 0f ba 33 09              	btr	qword ptr [rbx], 9
14000c7ea: 8b 41 08                    	mov	eax, dword ptr [rcx + 8]
14000c7ed: a8 04                       	test	al, 4
14000c7ef: 74 08                       	je	0x14000c7f9 <.text+0xb7f9>
14000c7f1: 48 0f ba 33 0a              	btr	qword ptr [rbx], 10
14000c7f6: 8b 41 08                    	mov	eax, dword ptr [rcx + 8]
14000c7f9: a8 02                       	test	al, 2
14000c7fb: 74 08                       	je	0x14000c805 <.text+0xb805>
14000c7fd: 48 0f ba 33 0b              	btr	qword ptr [rbx], 11
14000c802: 8b 41 08                    	mov	eax, dword ptr [rcx + 8]
14000c805: a8 01                       	test	al, 1
14000c807: 74 05                       	je	0x14000c80e <.text+0xb80e>
14000c809: 48 0f ba 33 0c              	btr	qword ptr [rbx], 12
14000c80e: 8b 01                       	mov	eax, dword ptr [rcx]
14000c810: 83 e0 03                    	and	eax, 3
14000c813: 74 30                       	je	0x14000c845 <.text+0xb845>
14000c815: 83 e8 01                    	sub	eax, 1
14000c818: 74 1f                       	je	0x14000c839 <.text+0xb839>
14000c81a: 83 e8 01                    	sub	eax, 1
14000c81d: 74 0e                       	je	0x14000c82d <.text+0xb82d>
14000c81f: 83 f8 01                    	cmp	eax, 1
14000c822: 75 28                       	jne	0x14000c84c <.text+0xb84c>
14000c824: 48 81 0b 00 60 00 00        	or	qword ptr [rbx], 24576
14000c82b: eb 1f                       	jmp	0x14000c84c <.text+0xb84c>
14000c82d: 48 0f ba 33 0d              	btr	qword ptr [rbx], 13
14000c832: 48 0f ba 2b 0e              	bts	qword ptr [rbx], 14
14000c837: eb 13                       	jmp	0x14000c84c <.text+0xb84c>
14000c839: 48 0f ba 33 0e              	btr	qword ptr [rbx], 14
14000c83e: 48 0f ba 2b 0d              	bts	qword ptr [rbx], 13
14000c843: eb 07                       	jmp	0x14000c84c <.text+0xb84c>
14000c845: 48 81 23 ff 9f ff ff        	and	qword ptr [rbx], -24577
14000c84c: 83 7d 40 00                 	cmp	dword ptr [rbp + 64], 0
14000c850: 74 07                       	je	0x14000c859 <.text+0xb859>
14000c852: 8b 41 50                    	mov	eax, dword ptr [rcx + 80]
14000c855: 89 06                       	mov	dword ptr [rsi], eax
14000c857: eb 07                       	jmp	0x14000c860 <.text+0xb860>
14000c859: 48 8b 41 50                 	mov	rax, qword ptr [rcx + 80]
14000c85d: 48 89 06                    	mov	qword ptr [rsi], rax
14000c860: 48 8b 5c 24 38              	mov	rbx, qword ptr [rsp + 56]
14000c865: 48 8b 74 24 40              	mov	rsi, qword ptr [rsp + 64]
14000c86a: 48 8b 7c 24 48              	mov	rdi, qword ptr [rsp + 72]
14000c86f: 48 83 c4 20                 	add	rsp, 32
14000c873: 5d                          	pop	rbp
14000c874: c3                          	ret
14000c875: cc                          	int3
14000c876: cc                          	int3
14000c877: cc                          	int3
14000c878: 48 83 ec 28                 	sub	rsp, 40
14000c87c: 83 f9 01                    	cmp	ecx, 1
14000c87f: 74 15                       	je	0x14000c896 <.text+0xb896>
14000c881: 8d 41 fe                    	lea	eax, [rcx - 2]
14000c884: 83 f8 01                    	cmp	eax, 1
14000c887: 77 18                       	ja	0x14000c8a1 <.text+0xb8a1>
14000c889: e8 52 85 ff ff              	call	0x140004de0 <.text+0x3de0>
14000c88e: c7 00 22 00 00 00           	mov	dword ptr [rax], 34
14000c894: eb 0b                       	jmp	0x14000c8a1 <.text+0xb8a1>
14000c896: e8 45 85 ff ff              	call	0x140004de0 <.text+0x3de0>
14000c89b: c7 00 21 00 00 00           	mov	dword ptr [rax], 33
14000c8a1: 48 83 c4 28                 	add	rsp, 40
14000c8a5: c3                          	ret
14000c8a6: cc                          	int3
14000c8a7: cc                          	int3
14000c8a8: 40 53                       	push	rbx
14000c8aa: 48 83 ec 20                 	sub	rsp, 32
14000c8ae: e8 3d fc ff ff              	call	0x14000c4f0 <.text+0xb4f0>
14000c8b3: 8b d8                       	mov	ebx, eax
14000c8b5: 83 e3 3f                    	and	ebx, 63
14000c8b8: e8 4d fc ff ff              	call	0x14000c50a <.text+0xb50a>
14000c8bd: 8b c3                       	mov	eax, ebx
14000c8bf: 48 83 c4 20                 	add	rsp, 32
14000c8c3: 5b                          	pop	rbx
14000c8c4: c3                          	ret
14000c8c5: cc                          	int3
14000c8c6: cc                          	int3
14000c8c7: cc                          	int3
14000c8c8: 48 89 5c 24 18              	mov	qword ptr [rsp + 24], rbx
14000c8cd: 48 89 74 24 20              	mov	qword ptr [rsp + 32], rsi
14000c8d2: 57                          	push	rdi
14000c8d3: 48 83 ec 20                 	sub	rsp, 32
14000c8d7: 48 8b da                    	mov	rbx, rdx
14000c8da: 48 8b f9                    	mov	rdi, rcx
14000c8dd: e8 0e fc ff ff              	call	0x14000c4f0 <.text+0xb4f0>
14000c8e2: 8b f0                       	mov	esi, eax
14000c8e4: 89 44 24 38                 	mov	dword ptr [rsp + 56], eax
14000c8e8: 8b cb                       	mov	ecx, ebx
14000c8ea: f7 d1                       	not	ecx
14000c8ec: 81 c9 7f 80 ff ff           	or	ecx, 4294934655
14000c8f2: 23 c8                       	and	ecx, eax
14000c8f4: 23 fb                       	and	edi, ebx
14000c8f6: 0b cf                       	or	ecx, edi
14000c8f8: 89 4c 24 30                 	mov	dword ptr [rsp + 48], ecx
14000c8fc: 80 3d dd b0 00 00 00        	cmp	byte ptr [rip + 45277], 0 # 0x1400179e0
14000c903: 74 25                       	je	0x14000c92a <.text+0xb92a>
14000c905: f6 c1 40                    	test	cl, 64
14000c908: 74 20                       	je	0x14000c92a <.text+0xb92a>
14000c90a: e8 f1 fb ff ff              	call	0x14000c500 <.text+0xb500>
14000c90f: eb 21                       	jmp	0x14000c932 <.text+0xb932>
14000c911: c6 05 c8 b0 00 00 00        	mov	byte ptr [rip + 45256], 0 # 0x1400179e0
14000c918: 8b 4c 24 30                 	mov	ecx, dword ptr [rsp + 48]
14000c91c: 83 e1 bf                    	and	ecx, -65
14000c91f: e8 dc fb ff ff              	call	0x14000c500 <.text+0xb500>
14000c924: 8b 74 24 38                 	mov	esi, dword ptr [rsp + 56]
14000c928: eb 08                       	jmp	0x14000c932 <.text+0xb932>
14000c92a: 83 e1 bf                    	and	ecx, -65
14000c92d: e8 ce fb ff ff              	call	0x14000c500 <.text+0xb500>
14000c932: 8b c6                       	mov	eax, esi
14000c934: 48 8b 5c 24 40              	mov	rbx, qword ptr [rsp + 64]
14000c939: 48 8b 74 24 48              	mov	rsi, qword ptr [rsp + 72]
14000c93e: 48 83 c4 20                 	add	rsp, 32
14000c942: 5f                          	pop	rdi
14000c943: c3                          	ret
14000c944: 40 53                       	push	rbx
14000c946: 48 83 ec 20                 	sub	rsp, 32
14000c94a: 48 8b d9                    	mov	rbx, rcx
14000c94d: e8 9e fb ff ff              	call	0x14000c4f0 <.text+0xb4f0>
14000c952: 83 e3 3f                    	and	ebx, 63
14000c955: 0b c3                       	or	eax, ebx
14000c957: 8b c8                       	mov	ecx, eax
14000c959: 48 83 c4 20                 	add	rsp, 32
14000c95d: 5b                          	pop	rbx
14000c95e: e9 9d fb ff ff              	jmp	0x14000c500 <.text+0xb500>
14000c963: cc                          	int3
14000c964: 48 83 ec 28                 	sub	rsp, 40
14000c968: e8 83 fb ff ff              	call	0x14000c4f0 <.text+0xb4f0>
14000c96d: 83 e0 3f                    	and	eax, 63
14000c970: 48 83 c4 28                 	add	rsp, 40
14000c974: c3                          	ret
14000c975: cc                          	int3
14000c976: cc                          	int3
14000c977: cc                          	int3
14000c978: cc                          	int3
14000c979: cc                          	int3
14000c97a: cc                          	int3
14000c97b: cc                          	int3
14000c97c: cc                          	int3
14000c97d: cc                          	int3
14000c97e: cc                          	int3
14000c97f: cc                          	int3
14000c980: 4c 63 41 3c                 	movsxd	r8, dword ptr [rcx + 60]
14000c984: 45 33 c9                    	xor	r9d, r9d
14000c987: 4c 03 c1                    	add	r8, rcx
14000c98a: 4c 8b d2                    	mov	r10, rdx
14000c98d: 41 0f b7 40 14              	movzx	eax, word ptr [r8 + 20]
14000c992: 45 0f b7 58 06              	movzx	r11d, word ptr [r8 + 6]
14000c997: 48 83 c0 18                 	add	rax, 24
14000c99b: 49 03 c0                    	add	rax, r8
14000c99e: 45 85 db                    	test	r11d, r11d
14000c9a1: 74 1e                       	je	0x14000c9c1 <.text+0xb9c1>
14000c9a3: 8b 50 0c                    	mov	edx, dword ptr [rax + 12]
14000c9a6: 4c 3b d2                    	cmp	r10, rdx
14000c9a9: 72 0a                       	jb	0x14000c9b5 <.text+0xb9b5>
14000c9ab: 8b 48 08                    	mov	ecx, dword ptr [rax + 8]
14000c9ae: 03 ca                       	add	ecx, edx
14000c9b0: 4c 3b d1                    	cmp	r10, rcx
14000c9b3: 72 0e                       	jb	0x14000c9c3 <.text+0xb9c3>
14000c9b5: 41 ff c1                    	inc	r9d
14000c9b8: 48 83 c0 28                 	add	rax, 40
14000c9bc: 45 3b cb                    	cmp	r9d, r11d
14000c9bf: 72 e2                       	jb	0x14000c9a3 <.text+0xb9a3>
14000c9c1: 33 c0                       	xor	eax, eax
14000c9c3: c3                          	ret
14000c9c4: cc                          	int3
14000c9c5: cc                          	int3
14000c9c6: cc                          	int3
14000c9c7: cc                          	int3
14000c9c8: cc                          	int3
14000c9c9: cc                          	int3
14000c9ca: cc                          	int3
14000c9cb: cc                          	int3
14000c9cc: cc                          	int3
14000c9cd: cc                          	int3
14000c9ce: cc                          	int3
14000c9cf: cc                          	int3
14000c9d0: 48 89 5c 24 08              	mov	qword ptr [rsp + 8], rbx
14000c9d5: 57                          	push	rdi
14000c9d6: 48 83 ec 20                 	sub	rsp, 32
14000c9da: 48 8b d9                    	mov	rbx, rcx
14000c9dd: 48 8d 3d 1c 36 ff ff        	lea	rdi, [rip - 51684]      # 0x140000000
14000c9e4: 48 8b cf                    	mov	rcx, rdi
14000c9e7: e8 34 00 00 00              	call	0x14000ca20 <.text+0xba20>
14000c9ec: 85 c0                       	test	eax, eax
14000c9ee: 74 22                       	je	0x14000ca12 <.text+0xba12>
14000c9f0: 48 2b df                    	sub	rbx, rdi
14000c9f3: 48 8b d3                    	mov	rdx, rbx
14000c9f6: 48 8b cf                    	mov	rcx, rdi
14000c9f9: e8 82 ff ff ff              	call	0x14000c980 <.text+0xb980>
14000c9fe: 48 85 c0                    	test	rax, rax
14000ca01: 74 0f                       	je	0x14000ca12 <.text+0xba12>
14000ca03: 8b 40 24                    	mov	eax, dword ptr [rax + 36]
14000ca06: c1 e8 1f                    	shr	eax, 31
14000ca09: f7 d0                       	not	eax
14000ca0b: 83 e0 01                    	and	eax, 1
14000ca0e: eb 02                       	jmp	0x14000ca12 <.text+0xba12>
14000ca10: 33 c0                       	xor	eax, eax
14000ca12: 48 8b 5c 24 30              	mov	rbx, qword ptr [rsp + 48]
14000ca17: 48 83 c4 20                 	add	rsp, 32
14000ca1b: 5f                          	pop	rdi
14000ca1c: c3                          	ret
14000ca1d: cc                          	int3
14000ca1e: cc                          	int3
14000ca1f: cc                          	int3
14000ca20: b8 4d 5a 00 00              	mov	eax, 23117
14000ca25: 66 39 01                    	cmp	word ptr [rcx], ax
14000ca28: 75 1e                       	jne	0x14000ca48 <.text+0xba48>
14000ca2a: 48 63 51 3c                 	movsxd	rdx, dword ptr [rcx + 60]
14000ca2e: 48 03 d1                    	add	rdx, rcx
14000ca31: 81 3a 50 45 00 00           	cmp	dword ptr [rdx], 17744
14000ca37: 75 0f                       	jne	0x14000ca48 <.text+0xba48>
14000ca39: 33 c0                       	xor	eax, eax
14000ca3b: b9 0b 02 00 00              	mov	ecx, 523
14000ca40: 66 39 4a 18                 	cmp	word ptr [rdx + 24], cx
14000ca44: 0f 94 c0                    	sete	al
14000ca47: c3                          	ret
14000ca48: 33 c0                       	xor	eax, eax
14000ca4a: c3                          	ret
14000ca4b: cc                          	int3
14000ca4c: 48 83 ec 28                 	sub	rsp, 40
14000ca50: 4d 8b 41 38                 	mov	r8, qword ptr [r9 + 56]
14000ca54: 48 8b ca                    	mov	rcx, rdx
14000ca57: 49 8b d1                    	mov	rdx, r9
14000ca5a: e8 0d 00 00 00              	call	0x14000ca6c <.text+0xba6c>
14000ca5f: b8 01 00 00 00              	mov	eax, 1
14000ca64: 48 83 c4 28                 	add	rsp, 40
14000ca68: c3                          	ret
14000ca69: cc                          	int3
14000ca6a: cc                          	int3
14000ca6b: cc                          	int3
14000ca6c: 40 53                       	push	rbx
14000ca6e: 45 8b 18                    	mov	r11d, dword ptr [r8]
14000ca71: 48 8b da                    	mov	rbx, rdx
14000ca74: 41 83 e3 f8                 	and	r11d, -8
14000ca78: 4c 8b c9                    	mov	r9, rcx
14000ca7b: 41 f6 00 04                 	test	byte ptr [r8], 4
14000ca7f: 4c 8b d1                    	mov	r10, rcx
14000ca82: 74 13                       	je	0x14000ca97 <.text+0xba97>
14000ca84: 41 8b 40 08                 	mov	eax, dword ptr [r8 + 8]
14000ca88: 4d 63 50 04                 	movsxd	r10, dword ptr [r8 + 4]
14000ca8c: f7 d8                       	neg	eax
14000ca8e: 4c 03 d1                    	add	r10, rcx
14000ca91: 48 63 c8                    	movsxd	rcx, eax
14000ca94: 4c 23 d1                    	and	r10, rcx
14000ca97: 49 63 c3                    	movsxd	rax, r11d
14000ca9a: 4a 8b 14 10                 	mov	rdx, qword ptr [rax + r10]
14000ca9e: 48 8b 43 10                 	mov	rax, qword ptr [rbx + 16]
14000caa2: 8b 48 08                    	mov	ecx, dword ptr [rax + 8]
14000caa5: 48 8b 43 08                 	mov	rax, qword ptr [rbx + 8]
14000caa9: f6 44 01 03 0f              	test	byte ptr [rcx + rax + 3], 15
14000caae: 74 0b                       	je	0x14000cabb <.text+0xbabb>
14000cab0: 0f b6 44 01 03              	movzx	eax, byte ptr [rcx + rax + 3]
14000cab5: 83 e0 f0                    	and	eax, -16
14000cab8: 4c 03 c8                    	add	r9, rax
14000cabb: 4c 33 ca                    	xor	r9, rdx
14000cabe: 49 8b c9                    	mov	rcx, r9
14000cac1: 5b                          	pop	rbx
14000cac2: e9 19 00 00 00              	jmp	0x14000cae0 <.text+0xbae0>
14000cac7: cc                          	int3
14000cac8: cc                          	int3
14000cac9: cc                          	int3
14000caca: cc                          	int3
14000cacb: cc                          	int3
14000cacc: cc                          	int3
14000cacd: cc                          	int3
14000cace: cc                          	int3
14000cacf: cc                          	int3
14000cad0: cc                          	int3
14000cad1: cc                          	int3
14000cad2: cc                          	int3
14000cad3: cc                          	int3
14000cad4: cc                          	int3
14000cad5: cc                          	int3
14000cad6: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
14000cae0: 48 3b 0d 41 a5 00 00        	cmp	rcx, qword ptr [rip + 42305] # 0x140017028
14000cae7: 75 10                       	jne	0x14000caf9 <.text+0xbaf9>
14000cae9: 48 c1 c1 10                 	rol	rcx, 16
14000caed: 66 f7 c1 ff ff              	test	cx, 65535
14000caf2: 75 01                       	jne	0x14000caf5 <.text+0xbaf5>
14000caf4: c3                          	ret
14000caf5: 48 c1 c9 10                 	ror	rcx, 16
14000caf9: e9 36 00 00 00              	jmp	0x14000cb34 <.text+0xbb34>
14000cafe: cc                          	int3
14000caff: cc                          	int3
14000cb00: 40 53                       	push	rbx
14000cb02: 48 83 ec 20                 	sub	rsp, 32
14000cb06: 48 8b d9                    	mov	rbx, rcx
14000cb09: 33 c9                       	xor	ecx, ecx
14000cb0b: ff 15 3f 15 00 00           	call	qword ptr [rip + 5439]  # 0x14000e050
14000cb11: 48 8b cb                    	mov	rcx, rbx
14000cb14: ff 15 2e 15 00 00           	call	qword ptr [rip + 5422]  # 0x14000e048
14000cb1a: ff 15 e8 15 00 00           	call	qword ptr [rip + 5608]  # 0x14000e108
14000cb20: 48 8b c8                    	mov	rcx, rax
14000cb23: ba 09 04 00 c0              	mov	edx, 3221226505
14000cb28: 48 83 c4 20                 	add	rsp, 32
14000cb2c: 5b                          	pop	rbx
14000cb2d: 48 ff 25 e4 15 00 00        	jmp	qword ptr [rip + 5604]  # 0x14000e118
14000cb34: 48 89 4c 24 08              	mov	qword ptr [rsp + 8], rcx
14000cb39: 48 83 ec 38                 	sub	rsp, 56
14000cb3d: b9 17 00 00 00              	mov	ecx, 23
14000cb42: ff 15 18 15 00 00           	call	qword ptr [rip + 5400]  # 0x14000e060
14000cb48: 85 c0                       	test	eax, eax
14000cb4a: 74 07                       	je	0x14000cb53 <.text+0xbb53>
14000cb4c: b9 02 00 00 00              	mov	ecx, 2
14000cb51: cd 29                       	int	41
14000cb53: 48 8d 0d 86 bb 00 00        	lea	rcx, [rip + 48006]      # 0x1400186e0
14000cb5a: e8 c9 01 00 00              	call	0x14000cd28 <.text+0xbd28>
14000cb5f: 48 8b 44 24 38              	mov	rax, qword ptr [rsp + 56]
14000cb64: 48 89 05 6d bc 00 00        	mov	qword ptr [rip + 48237], rax # 0x1400187d8
14000cb6b: 48 8d 44 24 38              	lea	rax, [rsp + 56]
14000cb70: 48 83 c0 08                 	add	rax, 8
14000cb74: 48 89 05 fd bb 00 00        	mov	qword ptr [rip + 48125], rax # 0x140018778
14000cb7b: 48 8b 05 56 bc 00 00        	mov	rax, qword ptr [rip + 48214] # 0x1400187d8
14000cb82: 48 89 05 c7 ba 00 00        	mov	qword ptr [rip + 47815], rax # 0x140018650
14000cb89: 48 8b 44 24 40              	mov	rax, qword ptr [rsp + 64]
14000cb8e: 48 89 05 cb bb 00 00        	mov	qword ptr [rip + 48075], rax # 0x140018760
14000cb95: c7 05 a1 ba 00 00 09 04 00 c0       	mov	dword ptr [rip + 47777], 3221226505 # 0x140018640
14000cb9f: c7 05 9b ba 00 00 01 00 00 00       	mov	dword ptr [rip + 47771], 1 # 0x140018644
14000cba9: c7 05 a5 ba 00 00 01 00 00 00       	mov	dword ptr [rip + 47781], 1 # 0x140018658
14000cbb3: b8 08 00 00 00              	mov	eax, 8
14000cbb8: 48 6b c0 00                 	imul	rax, rax, 0
14000cbbc: 48 8d 0d 9d ba 00 00        	lea	rcx, [rip + 47773]      # 0x140018660
14000cbc3: 48 c7 04 01 02 00 00 00     	mov	qword ptr [rcx + rax], 2
14000cbcb: b8 08 00 00 00              	mov	eax, 8
14000cbd0: 48 6b c0 00                 	imul	rax, rax, 0
14000cbd4: 48 8b 0d 4d a4 00 00        	mov	rcx, qword ptr [rip + 42061] # 0x140017028
14000cbdb: 48 89 4c 04 20              	mov	qword ptr [rsp + rax + 32], rcx
14000cbe0: b8 08 00 00 00              	mov	eax, 8
14000cbe5: 48 6b c0 01                 	imul	rax, rax, 1
14000cbe9: 48 8b 0d 30 a4 00 00        	mov	rcx, qword ptr [rip + 42032] # 0x140017020
14000cbf0: 48 89 4c 04 20              	mov	qword ptr [rsp + rax + 32], rcx
14000cbf5: 48 8d 0d 04 8a 00 00        	lea	rcx, [rip + 35332]      # 0x140015600
14000cbfc: e8 ff fe ff ff              	call	0x14000cb00 <.text+0xbb00>
14000cc01: 48 83 c4 38                 	add	rsp, 56
14000cc05: c3                          	ret
14000cc06: cc                          	int3
14000cc07: cc                          	int3
14000cc08: 48 83 ec 28                 	sub	rsp, 40
14000cc0c: b9 08 00 00 00              	mov	ecx, 8
14000cc11: e8 06 00 00 00              	call	0x14000cc1c <.text+0xbc1c>
14000cc16: 48 83 c4 28                 	add	rsp, 40
14000cc1a: c3                          	ret
14000cc1b: cc                          	int3
14000cc1c: 89 4c 24 08                 	mov	dword ptr [rsp + 8], ecx
14000cc20: 48 83 ec 28                 	sub	rsp, 40
14000cc24: b9 17 00 00 00              	mov	ecx, 23
14000cc29: ff 15 31 14 00 00           	call	qword ptr [rip + 5169]  # 0x14000e060
14000cc2f: 85 c0                       	test	eax, eax
14000cc31: 74 08                       	je	0x14000cc3b <.text+0xbc3b>
14000cc33: 8b 44 24 30                 	mov	eax, dword ptr [rsp + 48]
14000cc37: 8b c8                       	mov	ecx, eax
14000cc39: cd 29                       	int	41
14000cc3b: 48 8d 0d 9e ba 00 00        	lea	rcx, [rip + 47774]      # 0x1400186e0
14000cc42: e8 71 00 00 00              	call	0x14000ccb8 <.text+0xbcb8>
14000cc47: 48 8b 44 24 28              	mov	rax, qword ptr [rsp + 40]
14000cc4c: 48 89 05 85 bb 00 00        	mov	qword ptr [rip + 48005], rax # 0x1400187d8
14000cc53: 48 8d 44 24 28              	lea	rax, [rsp + 40]
14000cc58: 48 83 c0 08                 	add	rax, 8
14000cc5c: 48 89 05 15 bb 00 00        	mov	qword ptr [rip + 47893], rax # 0x140018778
14000cc63: 48 8b 05 6e bb 00 00        	mov	rax, qword ptr [rip + 47982] # 0x1400187d8
14000cc6a: 48 89 05 df b9 00 00        	mov	qword ptr [rip + 47583], rax # 0x140018650
14000cc71: c7 05 c5 b9 00 00 09 04 00 c0       	mov	dword ptr [rip + 47557], 3221226505 # 0x140018640
14000cc7b: c7 05 bf b9 00 00 01 00 00 00       	mov	dword ptr [rip + 47551], 1 # 0x140018644
14000cc85: c7 05 c9 b9 00 00 01 00 00 00       	mov	dword ptr [rip + 47561], 1 # 0x140018658
14000cc8f: b8 08 00 00 00              	mov	eax, 8
14000cc94: 48 6b c0 00                 	imul	rax, rax, 0
14000cc98: 48 8d 0d c1 b9 00 00        	lea	rcx, [rip + 47553]      # 0x140018660
14000cc9f: 8b 54 24 30                 	mov	edx, dword ptr [rsp + 48]
14000cca3: 48 89 14 01                 	mov	qword ptr [rcx + rax], rdx
14000cca7: 48 8d 0d 52 89 00 00        	lea	rcx, [rip + 35154]      # 0x140015600
14000ccae: e8 4d fe ff ff              	call	0x14000cb00 <.text+0xbb00>
14000ccb3: 48 83 c4 28                 	add	rsp, 40
14000ccb7: c3                          	ret
14000ccb8: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000ccbd: 57                          	push	rdi
14000ccbe: 48 83 ec 40                 	sub	rsp, 64
14000ccc2: 48 8b d9                    	mov	rbx, rcx
14000ccc5: ff 15 5d 13 00 00           	call	qword ptr [rip + 4957]  # 0x14000e028
14000cccb: 48 8b bb f8 00 00 00        	mov	rdi, qword ptr [rbx + 248]
14000ccd2: 48 8d 54 24 50              	lea	rdx, [rsp + 80]
14000ccd7: 48 8b cf                    	mov	rcx, rdi
14000ccda: 45 33 c0                    	xor	r8d, r8d
14000ccdd: ff 15 4d 13 00 00           	call	qword ptr [rip + 4941]  # 0x14000e030
14000cce3: 48 85 c0                    	test	rax, rax
14000cce6: 74 32                       	je	0x14000cd1a <.text+0xbd1a>
14000cce8: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
14000ccee: 48 8d 4c 24 58              	lea	rcx, [rsp + 88]
14000ccf3: 48 8b 54 24 50              	mov	rdx, qword ptr [rsp + 80]
14000ccf8: 4c 8b c8                    	mov	r9, rax
14000ccfb: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
14000cd00: 4c 8b c7                    	mov	r8, rdi
14000cd03: 48 8d 4c 24 60              	lea	rcx, [rsp + 96]
14000cd08: 48 89 4c 24 28              	mov	qword ptr [rsp + 40], rcx
14000cd0d: 33 c9                       	xor	ecx, ecx
14000cd0f: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000cd14: ff 15 1e 13 00 00           	call	qword ptr [rip + 4894]  # 0x14000e038
14000cd1a: 48 8b 5c 24 68              	mov	rbx, qword ptr [rsp + 104]
14000cd1f: 48 83 c4 40                 	add	rsp, 64
14000cd23: 5f                          	pop	rdi
14000cd24: c3                          	ret
14000cd25: cc                          	int3
14000cd26: cc                          	int3
14000cd27: cc                          	int3
14000cd28: 40 53                       	push	rbx
14000cd2a: 56                          	push	rsi
14000cd2b: 57                          	push	rdi
14000cd2c: 48 83 ec 40                 	sub	rsp, 64
14000cd30: 48 8b d9                    	mov	rbx, rcx
14000cd33: ff 15 ef 12 00 00           	call	qword ptr [rip + 4847]  # 0x14000e028
14000cd39: 48 8b b3 f8 00 00 00        	mov	rsi, qword ptr [rbx + 248]
14000cd40: 33 ff                       	xor	edi, edi
14000cd42: 45 33 c0                    	xor	r8d, r8d
14000cd45: 48 8d 54 24 60              	lea	rdx, [rsp + 96]
14000cd4a: 48 8b ce                    	mov	rcx, rsi
14000cd4d: ff 15 dd 12 00 00           	call	qword ptr [rip + 4829]  # 0x14000e030
14000cd53: 48 85 c0                    	test	rax, rax
14000cd56: 74 39                       	je	0x14000cd91 <.text+0xbd91>
14000cd58: 48 83 64 24 38 00           	and	qword ptr [rsp + 56], 0
14000cd5e: 48 8d 4c 24 68              	lea	rcx, [rsp + 104]
14000cd63: 48 8b 54 24 60              	mov	rdx, qword ptr [rsp + 96]
14000cd68: 4c 8b c8                    	mov	r9, rax
14000cd6b: 48 89 4c 24 30              	mov	qword ptr [rsp + 48], rcx
14000cd70: 4c 8b c6                    	mov	r8, rsi
14000cd73: 48 8d 4c 24 70              	lea	rcx, [rsp + 112]
14000cd78: 48 89 4c 24 28              	mov	qword ptr [rsp + 40], rcx
14000cd7d: 33 c9                       	xor	ecx, ecx
14000cd7f: 48 89 5c 24 20              	mov	qword ptr [rsp + 32], rbx
14000cd84: ff 15 ae 12 00 00           	call	qword ptr [rip + 4782]  # 0x14000e038
14000cd8a: ff c7                       	inc	edi
14000cd8c: 83 ff 02                    	cmp	edi, 2
14000cd8f: 7c b1                       	jl	0x14000cd42 <.text+0xbd42>
14000cd91: 48 83 c4 40                 	add	rsp, 64
14000cd95: 5f                          	pop	rdi
14000cd96: 5e                          	pop	rsi
14000cd97: 5b                          	pop	rbx
14000cd98: c3                          	ret
14000cd99: cc                          	int3
14000cd9a: cc                          	int3
14000cd9b: cc                          	int3
14000cd9c: cc                          	int3
14000cd9d: cc                          	int3
14000cd9e: cc                          	int3
14000cd9f: cc                          	int3
14000cda0: cc                          	int3
14000cda1: cc                          	int3
14000cda2: cc                          	int3
14000cda3: cc                          	int3
14000cda4: cc                          	int3
14000cda5: cc                          	int3
14000cda6: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
14000cdb0: 48 83 ec 10                 	sub	rsp, 16
14000cdb4: 4c 89 14 24                 	mov	qword ptr [rsp], r10
14000cdb8: 4c 89 5c 24 08              	mov	qword ptr [rsp + 8], r11
14000cdbd: 4d 33 db                    	xor	r11, r11
14000cdc0: 4c 8d 54 24 18              	lea	r10, [rsp + 24]
14000cdc5: 4c 2b d0                    	sub	r10, rax
14000cdc8: 4d 0f 42 d3                 	cmovb	r10, r11
14000cdcc: 65 4c 8b 1c 25 10 00 00 00  	mov	r11, qword ptr gs:[16]
14000cdd5: 4d 3b d3                    	cmp	r10, r11
14000cdd8: 73 16                       	jae	0x14000cdf0 <.text+0xbdf0>
14000cdda: 66 41 81 e2 00 f0           	and	r10w, 61440
14000cde0: 4d 8d 9b 00 f0 ff ff        	lea	r11, [r11 - 4096]
14000cde7: 41 c6 03 00                 	mov	byte ptr [r11], 0
14000cdeb: 4d 3b d3                    	cmp	r10, r11
14000cdee: 75 f0                       	jne	0x14000cde0 <.text+0xbde0>
14000cdf0: 4c 8b 14 24                 	mov	r10, qword ptr [rsp]
14000cdf4: 4c 8b 5c 24 08              	mov	r11, qword ptr [rsp + 8]
14000cdf9: 48 83 c4 10                 	add	rsp, 16
14000cdfd: c3                          	ret
14000cdfe: cc                          	int3
14000cdff: cc                          	int3
14000ce00: cc                          	int3
14000ce01: cc                          	int3
14000ce02: cc                          	int3
14000ce03: cc                          	int3
14000ce04: cc                          	int3
14000ce05: cc                          	int3
14000ce06: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
14000ce10: 48 2b d1                    	sub	rdx, rcx
14000ce13: 49 83 f8 08                 	cmp	r8, 8
14000ce17: 72 22                       	jb	0x14000ce3b <.text+0xbe3b>
14000ce19: f6 c1 07                    	test	cl, 7
14000ce1c: 74 14                       	je	0x14000ce32 <.text+0xbe32>
14000ce1e: 66 90                       	nop
14000ce20: 8a 01                       	mov	al, byte ptr [rcx]
14000ce22: 3a 04 11                    	cmp	al, byte ptr [rcx + rdx]
14000ce25: 75 2c                       	jne	0x14000ce53 <.text+0xbe53>
14000ce27: 48 ff c1                    	inc	rcx
14000ce2a: 49 ff c8                    	dec	r8
14000ce2d: f6 c1 07                    	test	cl, 7
14000ce30: 75 ee                       	jne	0x14000ce20 <.text+0xbe20>
14000ce32: 4d 8b c8                    	mov	r9, r8
14000ce35: 49 c1 e9 03                 	shr	r9, 3
14000ce39: 75 1f                       	jne	0x14000ce5a <.text+0xbe5a>
14000ce3b: 4d 85 c0                    	test	r8, r8
14000ce3e: 74 0f                       	je	0x14000ce4f <.text+0xbe4f>
14000ce40: 8a 01                       	mov	al, byte ptr [rcx]
14000ce42: 3a 04 11                    	cmp	al, byte ptr [rcx + rdx]
14000ce45: 75 0c                       	jne	0x14000ce53 <.text+0xbe53>
14000ce47: 48 ff c1                    	inc	rcx
14000ce4a: 49 ff c8                    	dec	r8
14000ce4d: 75 f1                       	jne	0x14000ce40 <.text+0xbe40>
14000ce4f: 48 33 c0                    	xor	rax, rax
14000ce52: c3                          	ret
14000ce53: 1b c0                       	sbb	eax, eax
14000ce55: 83 d8 ff                    	sbb	eax, -1
14000ce58: c3                          	ret
14000ce59: 90                          	nop
14000ce5a: 49 c1 e9 02                 	shr	r9, 2
14000ce5e: 74 37                       	je	0x14000ce97 <.text+0xbe97>
14000ce60: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000ce63: 48 3b 04 11                 	cmp	rax, qword ptr [rcx + rdx]
14000ce67: 75 5b                       	jne	0x14000cec4 <.text+0xbec4>
14000ce69: 48 8b 41 08                 	mov	rax, qword ptr [rcx + 8]
14000ce6d: 48 3b 44 11 08              	cmp	rax, qword ptr [rcx + rdx + 8]
14000ce72: 75 4c                       	jne	0x14000cec0 <.text+0xbec0>
14000ce74: 48 8b 41 10                 	mov	rax, qword ptr [rcx + 16]
14000ce78: 48 3b 44 11 10              	cmp	rax, qword ptr [rcx + rdx + 16]
14000ce7d: 75 3d                       	jne	0x14000cebc <.text+0xbebc>
14000ce7f: 48 8b 41 18                 	mov	rax, qword ptr [rcx + 24]
14000ce83: 48 3b 44 11 18              	cmp	rax, qword ptr [rcx + rdx + 24]
14000ce88: 75 2e                       	jne	0x14000ceb8 <.text+0xbeb8>
14000ce8a: 48 83 c1 20                 	add	rcx, 32
14000ce8e: 49 ff c9                    	dec	r9
14000ce91: 75 cd                       	jne	0x14000ce60 <.text+0xbe60>
14000ce93: 49 83 e0 1f                 	and	r8, 31
14000ce97: 4d 8b c8                    	mov	r9, r8
14000ce9a: 49 c1 e9 03                 	shr	r9, 3
14000ce9e: 74 9b                       	je	0x14000ce3b <.text+0xbe3b>
14000cea0: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000cea3: 48 3b 04 11                 	cmp	rax, qword ptr [rcx + rdx]
14000cea7: 75 1b                       	jne	0x14000cec4 <.text+0xbec4>
14000cea9: 48 83 c1 08                 	add	rcx, 8
14000cead: 49 ff c9                    	dec	r9
14000ceb0: 75 ee                       	jne	0x14000cea0 <.text+0xbea0>
14000ceb2: 49 83 e0 07                 	and	r8, 7
14000ceb6: eb 83                       	jmp	0x14000ce3b <.text+0xbe3b>
14000ceb8: 48 83 c1 08                 	add	rcx, 8
14000cebc: 48 83 c1 08                 	add	rcx, 8
14000cec0: 48 83 c1 08                 	add	rcx, 8
14000cec4: 48 8b 0c 0a                 	mov	rcx, qword ptr [rdx + rcx]
14000cec8: 48 0f c8                    	bswap	rax
14000cecb: 48 0f c9                    	bswap	rcx
14000cece: 48 3b c1                    	cmp	rax, rcx
14000ced1: 1b c0                       	sbb	eax, eax
14000ced3: 83 d8 ff                    	sbb	eax, -1
14000ced6: c3                          	ret
14000ced7: cc                          	int3
14000ced8: 0f b6 c2                    	movzx	eax, dl
14000cedb: 4c 8b c1                    	mov	r8, rcx
14000cede: 44 8b d0                    	mov	r10d, eax
14000cee1: 49 83 e0 f0                 	and	r8, -16
14000cee5: 41 c1 e2 08                 	shl	r10d, 8
14000cee9: 83 e1 0f                    	and	ecx, 15
14000ceec: 44 0b d0                    	or	r10d, eax
14000ceef: 45 33 c9                    	xor	r9d, r9d
14000cef2: 83 c8 ff                    	or	eax, -1
14000cef5: d3 e0                       	shl	eax, cl
14000cef7: 66 41 0f 6e c2              	movd	xmm0, r10d
14000cefc: f2 0f 70 c8 00              	pshuflw	xmm1, xmm0, 0           # xmm1 = xmm0[0,0,0,0,4,5,6,7]
14000cf01: 0f 57 c0                    	xorps	xmm0, xmm0
14000cf04: 66 41 0f 74 00              	pcmpeqb	xmm0, xmmword ptr [r8]
14000cf09: 66 0f 70 d1 00              	pshufd	xmm2, xmm1, 0           # xmm2 = xmm1[0,0,0,0]
14000cf0e: 66 0f 6f ca                 	movdqa	xmm1, xmm2
14000cf12: 66 41 0f 74 08              	pcmpeqb	xmm1, xmmword ptr [r8]
14000cf17: 66 0f eb c8                 	por	xmm1, xmm0
14000cf1b: 66 0f d7 d1                 	pmovmskb	edx, xmm1
14000cf1f: 23 d0                       	and	edx, eax
14000cf21: 75 21                       	jne	0x14000cf44 <.text+0xbf44>
14000cf23: 49 83 c0 10                 	add	r8, 16
14000cf27: 66 0f 6f ca                 	movdqa	xmm1, xmm2
14000cf2b: 0f 57 c0                    	xorps	xmm0, xmm0
14000cf2e: 66 41 0f 74 08              	pcmpeqb	xmm1, xmmword ptr [r8]
14000cf33: 66 41 0f 74 00              	pcmpeqb	xmm0, xmmword ptr [r8]
14000cf38: 66 0f eb c8                 	por	xmm1, xmm0
14000cf3c: 66 0f d7 d1                 	pmovmskb	edx, xmm1
14000cf40: 85 d2                       	test	edx, edx
14000cf42: 74 df                       	je	0x14000cf23 <.text+0xbf23>
14000cf44: 0f bc d2                    	bsf	edx, edx
14000cf47: 49 03 d0                    	add	rdx, r8
14000cf4a: 44 38 12                    	cmp	byte ptr [rdx], r10b
14000cf4d: 4c 0f 44 ca                 	cmove	r9, rdx
14000cf51: 49 8b c1                    	mov	rax, r9
14000cf54: c3                          	ret
14000cf55: cc                          	int3
14000cf56: cc                          	int3
14000cf57: cc                          	int3
14000cf58: cc                          	int3
14000cf59: cc                          	int3
14000cf5a: cc                          	int3
14000cf5b: cc                          	int3
14000cf5c: cc                          	int3
14000cf5d: cc                          	int3
14000cf5e: cc                          	int3
14000cf5f: cc                          	int3
14000cf60: cc                          	int3
14000cf61: cc                          	int3
14000cf62: cc                          	int3
14000cf63: cc                          	int3
14000cf64: cc                          	int3
14000cf65: cc                          	int3
14000cf66: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
14000cf70: ff e0                       	jmp	rax
14000cf72: cc                          	int3
14000cf73: cc                          	int3
14000cf74: cc                          	int3
14000cf75: cc                          	int3
14000cf76: cc                          	int3
14000cf77: cc                          	int3
14000cf78: cc                          	int3
14000cf79: cc                          	int3
14000cf7a: cc                          	int3
14000cf7b: cc                          	int3
14000cf7c: cc                          	int3
14000cf7d: cc                          	int3
14000cf7e: cc                          	int3
14000cf7f: cc                          	int3
14000cf80: cc                          	int3
14000cf81: cc                          	int3
14000cf82: cc                          	int3
14000cf83: cc                          	int3
14000cf84: cc                          	int3
14000cf85: cc                          	int3
14000cf86: 66 66 0f 1f 84 00 00 00 00 00       	nop	word ptr [rax + rax]
14000cf90: ff 25 9a 12 00 00           	jmp	qword ptr [rip + 4762]  # 0x14000e230
14000cf96: cc                          	int3
14000cf97: cc                          	int3
14000cf98: cc                          	int3
14000cf99: cc                          	int3
14000cf9a: cc                          	int3
14000cf9b: cc                          	int3
14000cf9c: cc                          	int3
14000cf9d: cc                          	int3
14000cf9e: cc                          	int3
14000cf9f: cc                          	int3
14000cfa0: 40 55                       	push	rbp
14000cfa2: 48 83 ec 20                 	sub	rsp, 32
14000cfa6: 48 8b ea                    	mov	rbp, rdx
14000cfa9: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000cfac: 48 8b d1                    	mov	rdx, rcx
14000cfaf: 8b 08                       	mov	ecx, dword ptr [rax]
14000cfb1: e8 72 5e ff ff              	call	0x140002e28 <.text+0x1e28>
14000cfb6: 90                          	nop
14000cfb7: 48 83 c4 20                 	add	rsp, 32
14000cfbb: 5d                          	pop	rbp
14000cfbc: c3                          	ret
14000cfbd: cc                          	int3
14000cfbe: 40 55                       	push	rbp
14000cfc0: 48 8b ea                    	mov	rbp, rdx
14000cfc3: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000cfc6: 33 c9                       	xor	ecx, ecx
14000cfc8: 81 38 05 00 00 c0           	cmp	dword ptr [rax], 3221225477
14000cfce: 0f 94 c1                    	sete	cl
14000cfd1: 8b c1                       	mov	eax, ecx
14000cfd3: 5d                          	pop	rbp
14000cfd4: c3                          	ret
14000cfd5: cc                          	int3
14000cfd6: 40 53                       	push	rbx
14000cfd8: 55                          	push	rbp
14000cfd9: 48 83 ec 28                 	sub	rsp, 40
14000cfdd: 48 8b ea                    	mov	rbp, rdx
14000cfe0: 48 89 4d 38                 	mov	qword ptr [rbp + 56], rcx
14000cfe4: 48 89 4d 30                 	mov	qword ptr [rbp + 48], rcx
14000cfe8: 80 7d 58 00                 	cmp	byte ptr [rbp + 88], 0
14000cfec: 74 6c                       	je	0x14000d05a <.text+0xc05a>
14000cfee: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
14000cff2: 48 8b 08                    	mov	rcx, qword ptr [rax]
14000cff5: 48 89 4d 28                 	mov	qword ptr [rbp + 40], rcx
14000cff9: 48 8b 45 28                 	mov	rax, qword ptr [rbp + 40]
14000cffd: 81 38 63 73 6d e0           	cmp	dword ptr [rax], 3765269347
14000d003: 75 55                       	jne	0x14000d05a <.text+0xc05a>
14000d005: 48 8b 45 28                 	mov	rax, qword ptr [rbp + 40]
14000d009: 83 78 18 04                 	cmp	dword ptr [rax + 24], 4
14000d00d: 75 4b                       	jne	0x14000d05a <.text+0xc05a>
14000d00f: 48 8b 45 28                 	mov	rax, qword ptr [rbp + 40]
14000d013: 81 78 20 20 05 93 19        	cmp	dword ptr [rax + 32], 429065504
14000d01a: 74 1a                       	je	0x14000d036 <.text+0xc036>
14000d01c: 48 8b 45 28                 	mov	rax, qword ptr [rbp + 40]
14000d020: 81 78 20 21 05 93 19        	cmp	dword ptr [rax + 32], 429065505
14000d027: 74 0d                       	je	0x14000d036 <.text+0xc036>
14000d029: 48 8b 45 28                 	mov	rax, qword ptr [rbp + 40]
14000d02d: 81 78 20 22 05 93 19        	cmp	dword ptr [rax + 32], 429065506
14000d034: 75 24                       	jne	0x14000d05a <.text+0xc05a>
14000d036: e8 81 51 ff ff              	call	0x1400021bc <.text+0x11bc>
14000d03b: 48 8b 4d 28                 	mov	rcx, qword ptr [rbp + 40]
14000d03f: 48 89 48 20                 	mov	qword ptr [rax + 32], rcx
14000d043: 48 8b 45 30                 	mov	rax, qword ptr [rbp + 48]
14000d047: 48 8b 58 08                 	mov	rbx, qword ptr [rax + 8]
14000d04b: e8 6c 51 ff ff              	call	0x1400021bc <.text+0x11bc>
14000d050: 48 89 58 28                 	mov	qword ptr [rax + 40], rbx
14000d054: e8 e7 71 ff ff              	call	0x140004240 <.text+0x3240>
14000d059: 90                          	nop
14000d05a: c7 45 20 00 00 00 00        	mov	dword ptr [rbp + 32], 0
14000d061: 8b 45 20                    	mov	eax, dword ptr [rbp + 32]
14000d064: 48 83 c4 28                 	add	rsp, 40
14000d068: 5d                          	pop	rbp
14000d069: 5b                          	pop	rbx
14000d06a: c3                          	ret
14000d06b: cc                          	int3
14000d06c: 40 55                       	push	rbp
14000d06e: 48 83 ec 20                 	sub	rsp, 32
14000d072: 48 8b ea                    	mov	rbp, rdx
14000d075: 48 8b 45 48                 	mov	rax, qword ptr [rbp + 72]
14000d079: 8b 08                       	mov	ecx, dword ptr [rax]
14000d07b: 48 83 c4 20                 	add	rsp, 32
14000d07f: 5d                          	pop	rbp
14000d080: e9 d3 9b ff ff              	jmp	0x140006c58 <.text+0x5c58>
14000d085: cc                          	int3
14000d086: 40 55                       	push	rbp
14000d088: 48 83 ec 20                 	sub	rsp, 32
14000d08c: 48 8b ea                    	mov	rbp, rdx
14000d08f: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000d092: 8b 08                       	mov	ecx, dword ptr [rax]
14000d094: e8 7b 68 ff ff              	call	0x140003914 <.text+0x2914>
14000d099: 90                          	nop
14000d09a: 48 83 c4 20                 	add	rsp, 32
14000d09e: 5d                          	pop	rbp
14000d09f: c3                          	ret
14000d0a0: cc                          	int3
14000d0a1: 40 55                       	push	rbp
14000d0a3: 48 83 ec 20                 	sub	rsp, 32
14000d0a7: 48 8b ea                    	mov	rbp, rdx
14000d0aa: 48 8b 45 58                 	mov	rax, qword ptr [rbp + 88]
14000d0ae: 8b 08                       	mov	ecx, dword ptr [rax]
14000d0b0: 48 83 c4 20                 	add	rsp, 32
14000d0b4: 5d                          	pop	rbp
14000d0b5: e9 9e 9b ff ff              	jmp	0x140006c58 <.text+0x5c58>
14000d0ba: cc                          	int3
14000d0bb: 40 55                       	push	rbp
14000d0bd: 48 83 ec 20                 	sub	rsp, 32
14000d0c1: 48 8b ea                    	mov	rbp, rdx
14000d0c4: b9 05 00 00 00              	mov	ecx, 5
14000d0c9: 48 83 c4 20                 	add	rsp, 32
14000d0cd: 5d                          	pop	rbp
14000d0ce: e9 85 9b ff ff              	jmp	0x140006c58 <.text+0x5c58>
14000d0d3: cc                          	int3
14000d0d4: 40 55                       	push	rbp
14000d0d6: 48 83 ec 20                 	sub	rsp, 32
14000d0da: 48 8b ea                    	mov	rbp, rdx
14000d0dd: b9 07 00 00 00              	mov	ecx, 7
14000d0e2: 48 83 c4 20                 	add	rsp, 32
14000d0e6: 5d                          	pop	rbp
14000d0e7: e9 6c 9b ff ff              	jmp	0x140006c58 <.text+0x5c58>
14000d0ec: cc                          	int3
14000d0ed: 40 55                       	push	rbp
14000d0ef: 48 83 ec 20                 	sub	rsp, 32
14000d0f3: 48 8b ea                    	mov	rbp, rdx
14000d0f6: b9 04 00 00 00              	mov	ecx, 4
14000d0fb: 48 83 c4 20                 	add	rsp, 32
14000d0ff: 5d                          	pop	rbp
14000d100: e9 53 9b ff ff              	jmp	0x140006c58 <.text+0x5c58>
14000d105: cc                          	int3
14000d106: 40 55                       	push	rbp
14000d108: 48 83 ec 20                 	sub	rsp, 32
14000d10c: 48 8b ea                    	mov	rbp, rdx
14000d10f: 33 c9                       	xor	ecx, ecx
14000d111: 48 83 c4 20                 	add	rsp, 32
14000d115: 5d                          	pop	rbp
14000d116: e9 3d 9b ff ff              	jmp	0x140006c58 <.text+0x5c58>
14000d11b: cc                          	int3
14000d11c: 40 55                       	push	rbp
14000d11e: 48 83 ec 20                 	sub	rsp, 32
14000d122: 48 8b ea                    	mov	rbp, rdx
14000d125: 80 7d 70 00                 	cmp	byte ptr [rbp + 112], 0
14000d129: 74 0b                       	je	0x14000d136 <.text+0xc136>
14000d12b: b9 03 00 00 00              	mov	ecx, 3
14000d130: e8 23 9b ff ff              	call	0x140006c58 <.text+0x5c58>
14000d135: 90                          	nop
14000d136: 48 83 c4 20                 	add	rsp, 32
14000d13a: 5d                          	pop	rbp
14000d13b: c3                          	ret
14000d13c: cc                          	int3
14000d13d: 40 55                       	push	rbp
14000d13f: 48 83 ec 20                 	sub	rsp, 32
14000d143: 48 8b ea                    	mov	rbp, rdx
14000d146: 48 8b 4d 48                 	mov	rcx, qword ptr [rbp + 72]
14000d14a: 48 8b 09                    	mov	rcx, qword ptr [rcx]
14000d14d: 48 83 c4 20                 	add	rsp, 32
14000d151: 5d                          	pop	rbp
14000d152: e9 a9 b9 ff ff              	jmp	0x140008b00 <.text+0x7b00>
14000d157: cc                          	int3
14000d158: 40 55                       	push	rbp
14000d15a: 48 83 ec 20                 	sub	rsp, 32
14000d15e: 48 8b ea                    	mov	rbp, rdx
14000d161: 48 8b 85 98 00 00 00        	mov	rax, qword ptr [rbp + 152]
14000d168: 8b 08                       	mov	ecx, dword ptr [rax]
14000d16a: 48 83 c4 20                 	add	rsp, 32
14000d16e: 5d                          	pop	rbp
14000d16f: e9 e4 9a ff ff              	jmp	0x140006c58 <.text+0x5c58>
14000d174: cc                          	int3
14000d175: 40 55                       	push	rbp
14000d177: 48 83 ec 20                 	sub	rsp, 32
14000d17b: 48 8b ea                    	mov	rbp, rdx
14000d17e: 48 8b 45 48                 	mov	rax, qword ptr [rbp + 72]
14000d182: 8b 08                       	mov	ecx, dword ptr [rax]
14000d184: 48 83 c4 20                 	add	rsp, 32
14000d188: 5d                          	pop	rbp
14000d189: e9 ea 9c ff ff              	jmp	0x140006e78 <.text+0x5e78>
14000d18e: cc                          	int3
14000d18f: 40 55                       	push	rbp
14000d191: 48 83 ec 20                 	sub	rsp, 32
14000d195: 48 8b ea                    	mov	rbp, rdx
14000d198: 8b 4d 50                    	mov	ecx, dword ptr [rbp + 80]
14000d19b: 48 83 c4 20                 	add	rsp, 32
14000d19f: 5d                          	pop	rbp
14000d1a0: e9 d3 9c ff ff              	jmp	0x140006e78 <.text+0x5e78>
14000d1a5: cc                          	int3
14000d1a6: 40 55                       	push	rbp
14000d1a8: 48 83 ec 20                 	sub	rsp, 32
14000d1ac: 48 8b ea                    	mov	rbp, rdx
14000d1af: b9 08 00 00 00              	mov	ecx, 8
14000d1b4: 48 83 c4 20                 	add	rsp, 32
14000d1b8: 5d                          	pop	rbp
14000d1b9: e9 9a 9a ff ff              	jmp	0x140006c58 <.text+0x5c58>
14000d1be: cc                          	int3
14000d1bf: 40 55                       	push	rbp
14000d1c1: 48 83 ec 20                 	sub	rsp, 32
14000d1c5: 48 8b ea                    	mov	rbp, rdx
14000d1c8: 48 8b 4d 30                 	mov	rcx, qword ptr [rbp + 48]
14000d1cc: 48 83 c4 20                 	add	rsp, 32
14000d1d0: 5d                          	pop	rbp
14000d1d1: e9 2a b9 ff ff              	jmp	0x140008b00 <.text+0x7b00>
14000d1d6: cc                          	int3
14000d1d7: 40 55                       	push	rbp
14000d1d9: 48 83 ec 20                 	sub	rsp, 32
14000d1dd: 48 8b ea                    	mov	rbp, rdx
14000d1e0: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000d1e3: 81 38 05 00 00 c0           	cmp	dword ptr [rax], 3221225477
14000d1e9: 74 0c                       	je	0x14000d1f7 <.text+0xc1f7>
14000d1eb: 81 38 1d 00 00 c0           	cmp	dword ptr [rax], 3221225501
14000d1f1: 74 04                       	je	0x14000d1f7 <.text+0xc1f7>
14000d1f3: 33 c0                       	xor	eax, eax
14000d1f5: eb 05                       	jmp	0x14000d1fc <.text+0xc1fc>
14000d1f7: b8 01 00 00 00              	mov	eax, 1
14000d1fc: 48 83 c4 20                 	add	rsp, 32
14000d200: 5d                          	pop	rbp
14000d201: c3                          	ret
14000d202: cc                          	int3
14000d203: cc                          	int3
14000d204: cc                          	int3
14000d205: cc                          	int3
14000d206: cc                          	int3
14000d207: cc                          	int3
14000d208: cc                          	int3
14000d209: cc                          	int3
14000d20a: cc                          	int3
14000d20b: cc                          	int3
14000d20c: cc                          	int3
14000d20d: cc                          	int3
14000d20e: cc                          	int3
14000d20f: cc                          	int3
14000d210: 40 55                       	push	rbp
14000d212: 48 83 ec 20                 	sub	rsp, 32
14000d216: 48 8b ea                    	mov	rbp, rdx
14000d219: 48 8b 01                    	mov	rax, qword ptr [rcx]
14000d21c: 33 c9                       	xor	ecx, ecx
14000d21e: 81 38 05 00 00 c0           	cmp	dword ptr [rax], 3221225477
14000d224: 0f 94 c1                    	sete	cl
14000d227: 8b c1                       	mov	eax, ecx
14000d229: 48 83 c4 20                 	add	rsp, 32
14000d22d: 5d                          	pop	rbp
14000d22e: c3                          	ret
14000d22f: cc                          	int3
