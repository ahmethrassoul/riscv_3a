Dans l'archive libfemtoc.a :

print.o:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <putchar>:
   0:	004007b7          	lui	a5,0x400
   4:	00a7a423          	sw	a0,8(a5) # 400008 <.L28+0x3ffe9c>
   8:	00008067          	ret

0000000c <print_string>:
   c:	00054783          	lbu	a5,0(a0)
  10:	00078c63          	beqz	a5,28 <.L3>
  14:	00400737          	lui	a4,0x400

00000018 <.L5>:
  18:	00f72423          	sw	a5,8(a4) # 400008 <.L28+0x3ffe9c>
  1c:	00154783          	lbu	a5,1(a0)
  20:	00150513          	addi	a0,a0,1
  24:	fe079ae3          	bnez	a5,18 <.L5>

00000028 <.L3>:
  28:	00008067          	ret

0000002c <puts>:
  2c:	00054783          	lbu	a5,0(a0)
  30:	00078c63          	beqz	a5,48 <.L11>
  34:	00400737          	lui	a4,0x400

00000038 <.L12>:
  38:	00f72423          	sw	a5,8(a4) # 400008 <.L28+0x3ffe9c>
  3c:	00154783          	lbu	a5,1(a0)
  40:	00150513          	addi	a0,a0,1
  44:	fe079ae3          	bnez	a5,38 <.L12>

00000048 <.L11>:
  48:	004007b7          	lui	a5,0x400
  4c:	00a00713          	li	a4,10
  50:	00e7a423          	sw	a4,8(a5) # 400008 <.L28+0x3ffe9c>
  54:	00100513          	li	a0,1
  58:	00008067          	ret

0000005c <print_dec>:
  5c:	ef010113          	addi	sp,sp,-272
  60:	10812423          	sw	s0,264(sp)
  64:	10112623          	sw	ra,268(sp)
  68:	10912223          	sw	s1,260(sp)
  6c:	11212023          	sw	s2,256(sp)
  70:	00050413          	mv	s0,a0
  74:	00055a63          	bgez	a0,88 <.L20>
  78:	004007b7          	lui	a5,0x400
  7c:	02d00713          	li	a4,45
  80:	00e7a423          	sw	a4,8(a5) # 400008 <.L28+0x3ffe9c>
  84:	40a00433          	neg	s0,a0

00000088 <.L20>:
  88:	00010913          	mv	s2,sp
  8c:	00090493          	mv	s1,s2
  90:	02c0006f          	j	bc <.L19>

00000094 <.L21>:
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.L21>
  9c:	00050793          	mv	a5,a0
  a0:	00f48023          	sb	a5,0(s1)
  a4:	00040513          	mv	a0,s0
  a8:	00a00593          	li	a1,10
  ac:	00000097          	auipc	ra,0x0
  b0:	000080e7          	jalr	ra # ac <.L21+0x18>
  b4:	00148493          	addi	s1,s1,1
  b8:	00050413          	mv	s0,a0

000000bc <.L19>:
  bc:	00a00593          	li	a1,10
  c0:	00040513          	mv	a0,s0
  c4:	fc0418e3          	bnez	s0,94 <.L21>
  c8:	fd2486e3          	beq	s1,s2,94 <.L21>
  cc:	00400737          	lui	a4,0x400

000000d0 <.L22>:
  d0:	fff4c783          	lbu	a5,-1(s1)
  d4:	fff48493          	addi	s1,s1,-1
  d8:	03078793          	addi	a5,a5,48
  dc:	0ff7f793          	zext.b	a5,a5
  e0:	00f72423          	sw	a5,8(a4) # 400008 <.L28+0x3ffe9c>
  e4:	ff2496e3          	bne	s1,s2,d0 <.L22>
  e8:	10c12083          	lw	ra,268(sp)
  ec:	10812403          	lw	s0,264(sp)
  f0:	10412483          	lw	s1,260(sp)
  f4:	10012903          	lw	s2,256(sp)
  f8:	11010113          	addi	sp,sp,272
  fc:	00008067          	ret

00000100 <print_hex>:
 100:	01c00713          	li	a4,28
 104:	00000597          	auipc	a1,0x0
 108:	00058593          	mv	a1,a1
 10c:	00400637          	lui	a2,0x400
 110:	ffc00693          	li	a3,-4

00000114 <.L26>:
 114:	00e557b3          	srl	a5,a0,a4
 118:	00f7f793          	andi	a5,a5,15
 11c:	00f587b3          	add	a5,a1,a5
 120:	0007c783          	lbu	a5,0(a5)
 124:	ffc70713          	addi	a4,a4,-4
 128:	00f62423          	sw	a5,8(a2) # 400008 <.L28+0x3ffe9c>
 12c:	fed714e3          	bne	a4,a3,114 <.L26>
 130:	00008067          	ret

00000134 <print_hex_digits>:
 134:	fff58593          	addi	a1,a1,-1 # 103 <print_hex+0x3>
 138:	00259593          	slli	a1,a1,0x2
 13c:	0205c863          	bltz	a1,16c <.L28>
 140:	00000617          	auipc	a2,0x0
 144:	00060613          	mv	a2,a2
 148:	004006b7          	lui	a3,0x400
 14c:	ffc00713          	li	a4,-4

00000150 <.L30>:
 150:	00b557b3          	srl	a5,a0,a1
 154:	00f7f793          	andi	a5,a5,15
 158:	00f607b3          	add	a5,a2,a5
 15c:	0007c783          	lbu	a5,0(a5)
 160:	ffc58593          	addi	a1,a1,-4
 164:	00f6a423          	sw	a5,8(a3) # 400008 <.L28+0x3ffe9c>
 168:	fee594e3          	bne	a1,a4,150 <.L30>

0000016c <.L28>:
 16c:	00008067          	ret

Déassemblage de la section .rodata.str1.4 :

00000000 <.LC0>:
   0:	3130                	.2byte	0x3130
   2:	3332                	.2byte	0x3332
   4:	3534                	.2byte	0x3534
   6:	3736                	.2byte	0x3736
   8:	3938                	.2byte	0x3938
   a:	4241                	.2byte	0x4241
   c:	46454443          	.4byte	0x46454443
	...

Déassemblage de la section .comment :

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	5528                	.2byte	0x5528
   8:	7562                	.2byte	0x7562
   a:	746e                	.2byte	0x746e
   c:	2075                	.2byte	0x2075
   e:	3231                	.2byte	0x3231
  10:	332e                	.2byte	0x332e
  12:	302e                	.2byte	0x302e
  14:	312d                	.2byte	0x312d
  16:	6275                	.2byte	0x6275
  18:	6e75                	.2byte	0x6e75
  1a:	7574                	.2byte	0x7574
  1c:	7e31                	.2byte	0x7e31
  1e:	3232                	.2byte	0x3232
  20:	302e                	.2byte	0x302e
  22:	2934                	.2byte	0x2934
  24:	3120                	.2byte	0x3120
  26:	2e32                	.2byte	0x2e32
  28:	00302e33          	sgtz	t3,gp

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

printf.o:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <printf>:
   0:	fb010113          	addi	sp,sp,-80
   4:	02812423          	sw	s0,40(sp)
   8:	04f12223          	sw	a5,68(sp)
   c:	02112623          	sw	ra,44(sp)
  10:	02912223          	sw	s1,36(sp)
  14:	03212023          	sw	s2,32(sp)
  18:	01312e23          	sw	s3,28(sp)
  1c:	01412c23          	sw	s4,24(sp)
  20:	01512a23          	sw	s5,20(sp)
  24:	02b12a23          	sw	a1,52(sp)
  28:	02c12c23          	sw	a2,56(sp)
  2c:	02d12e23          	sw	a3,60(sp)
  30:	04e12023          	sw	a4,64(sp)
  34:	05012423          	sw	a6,72(sp)
  38:	05112623          	sw	a7,76(sp)
  3c:	00050413          	mv	s0,a0
  40:	00054503          	lbu	a0,0(a0)
  44:	03410793          	addi	a5,sp,52
  48:	00f12623          	sw	a5,12(sp)
  4c:	04050463          	beqz	a0,94 <.L13>
  50:	02500493          	li	s1,37
  54:	07300913          	li	s2,115
  58:	07800993          	li	s3,120
  5c:	06400a13          	li	s4,100
  60:	06300a93          	li	s5,99

00000064 <.L2>:
  64:	04951c63          	bne	a0,s1,bc <.L3>
  68:	00144503          	lbu	a0,1(s0)
  6c:	07250063          	beq	a0,s2,cc <.L16>
  70:	09350a63          	beq	a0,s3,104 <.L17>
  74:	0b450663          	beq	a0,s4,120 <.L18>
  78:	07550863          	beq	a0,s5,e8 <.L19>
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.L2+0x18>

00000084 <.L7>:
  84:	00140793          	addi	a5,s0,1

00000088 <.L5>:
  88:	0017c503          	lbu	a0,1(a5)
  8c:	00178413          	addi	s0,a5,1
  90:	fc051ae3          	bnez	a0,64 <.L2>

00000094 <.L13>:
  94:	02c12083          	lw	ra,44(sp)
  98:	02812403          	lw	s0,40(sp)
  9c:	02412483          	lw	s1,36(sp)
  a0:	02012903          	lw	s2,32(sp)
  a4:	01c12983          	lw	s3,28(sp)
  a8:	01812a03          	lw	s4,24(sp)
  ac:	01412a83          	lw	s5,20(sp)
  b0:	00000513          	li	a0,0
  b4:	05010113          	addi	sp,sp,80
  b8:	00008067          	ret

000000bc <.L3>:
  bc:	00000097          	auipc	ra,0x0
  c0:	000080e7          	jalr	ra # bc <.L3>
  c4:	00040793          	mv	a5,s0
  c8:	fc1ff06f          	j	88 <.L5>

000000cc <.L16>:
  cc:	00c12783          	lw	a5,12(sp)
  d0:	0007a503          	lw	a0,0(a5)
  d4:	00478793          	addi	a5,a5,4
  d8:	00f12623          	sw	a5,12(sp)
  dc:	00000097          	auipc	ra,0x0
  e0:	000080e7          	jalr	ra # dc <.L16+0x10>
  e4:	fa1ff06f          	j	84 <.L7>

000000e8 <.L19>:
  e8:	00c12783          	lw	a5,12(sp)
  ec:	0007a503          	lw	a0,0(a5)
  f0:	00478793          	addi	a5,a5,4
  f4:	00f12623          	sw	a5,12(sp)
  f8:	00000097          	auipc	ra,0x0
  fc:	000080e7          	jalr	ra # f8 <.L19+0x10>
 100:	f85ff06f          	j	84 <.L7>

00000104 <.L17>:
 104:	00c12783          	lw	a5,12(sp)
 108:	0007a503          	lw	a0,0(a5)
 10c:	00478793          	addi	a5,a5,4
 110:	00f12623          	sw	a5,12(sp)
 114:	00000097          	auipc	ra,0x0
 118:	000080e7          	jalr	ra # 114 <.L17+0x10>
 11c:	f69ff06f          	j	84 <.L7>

00000120 <.L18>:
 120:	00c12783          	lw	a5,12(sp)
 124:	0007a503          	lw	a0,0(a5)
 128:	00478793          	addi	a5,a5,4
 12c:	00f12623          	sw	a5,12(sp)
 130:	00000097          	auipc	ra,0x0
 134:	000080e7          	jalr	ra # 130 <.L18+0x10>
 138:	f4dff06f          	j	84 <.L7>

Déassemblage de la section .comment :

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	5528                	.2byte	0x5528
   8:	7562                	.2byte	0x7562
   a:	746e                	.2byte	0x746e
   c:	2075                	.2byte	0x2075
   e:	3231                	.2byte	0x3231
  10:	332e                	.2byte	0x332e
  12:	302e                	.2byte	0x302e
  14:	312d                	.2byte	0x312d
  16:	6275                	.2byte	0x6275
  18:	6e75                	.2byte	0x6e75
  1a:	7574                	.2byte	0x7574
  1c:	7e31                	.2byte	0x7e31
  1e:	3232                	.2byte	0x3232
  20:	302e                	.2byte	0x302e
  22:	2934                	.2byte	0x2934
  24:	3120                	.2byte	0x3120
  26:	2e32                	.2byte	0x2e32
  28:	00302e33          	sgtz	t3,gp

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

clz.o:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <__clzsi2>:
   0:	00050693          	mv	a3,a0
   4:	00000513          	li	a0,0
   8:	0206c063          	bltz	a3,28 <.L1>
   c:	800007b7          	lui	a5,0x80000
  10:	02000613          	li	a2,32

00000014 <.L3>:
  14:	0017d793          	srli	a5,a5,0x1
  18:	00150513          	addi	a0,a0,1
  1c:	00f6f733          	and	a4,a3,a5
  20:	00c50663          	beq	a0,a2,2c <.L7>
  24:	fe0708e3          	beqz	a4,14 <.L3>

00000028 <.L1>:
  28:	00008067          	ret

0000002c <.L7>:
  2c:	00008067          	ret

Déassemblage de la section .comment :

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	5528                	.2byte	0x5528
   8:	7562                	.2byte	0x7562
   a:	746e                	.2byte	0x746e
   c:	2075                	.2byte	0x2075
   e:	3231                	.2byte	0x3231
  10:	332e                	.2byte	0x332e
  12:	302e                	.2byte	0x302e
  14:	312d                	.2byte	0x312d
  16:	6275                	.2byte	0x6275
  18:	6e75                	.2byte	0x6e75
  1a:	7574                	.2byte	0x7574
  1c:	7e31                	.2byte	0x7e31
  1e:	3232                	.2byte	0x3232
  20:	302e                	.2byte	0x302e
  22:	2934                	.2byte	0x2934
  24:	3120                	.2byte	0x3120
  26:	2e32                	.2byte	0x2e32
  28:	00302e33          	sgtz	t3,gp

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

memcpy.o:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <memcpy>:
   0:	00b567b3          	or	a5,a0,a1
   4:	0037f713          	andi	a4,a5,3
   8:	00050793          	mv	a5,a0
   c:	02070263          	beqz	a4,30 <.L13>

00000010 <.L2>:
  10:	00c786b3          	add	a3,a5,a2
  14:	06060063          	beqz	a2,74 <.L14>

00000018 <.L7>:
  18:	0005c703          	lbu	a4,0(a1)
  1c:	00178793          	addi	a5,a5,1
  20:	00158593          	addi	a1,a1,1
  24:	fee78fa3          	sb	a4,-1(a5)
  28:	fef698e3          	bne	a3,a5,18 <.L7>
  2c:	00008067          	ret

00000030 <.L13>:
  30:	00300713          	li	a4,3
  34:	fcc77ee3          	bgeu	a4,a2,10 <.L2>
  38:	ffc60893          	addi	a7,a2,-4
  3c:	ffc8f893          	andi	a7,a7,-4
  40:	00488893          	addi	a7,a7,4
  44:	011507b3          	add	a5,a0,a7
  48:	00058693          	mv	a3,a1
  4c:	00050713          	mv	a4,a0

00000050 <.L6>:
  50:	0006a803          	lw	a6,0(a3)
  54:	00470713          	addi	a4,a4,4
  58:	00468693          	addi	a3,a3,4
  5c:	ff072e23          	sw	a6,-4(a4)
  60:	fee798e3          	bne	a5,a4,50 <.L6>
  64:	00367613          	andi	a2,a2,3
  68:	011585b3          	add	a1,a1,a7
  6c:	00c786b3          	add	a3,a5,a2
  70:	fa0614e3          	bnez	a2,18 <.L7>

00000074 <.L14>:
  74:	00008067          	ret

Déassemblage de la section .comment :

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	5528                	.2byte	0x5528
   8:	7562                	.2byte	0x7562
   a:	746e                	.2byte	0x746e
   c:	2075                	.2byte	0x2075
   e:	3231                	.2byte	0x3231
  10:	332e                	.2byte	0x332e
  12:	302e                	.2byte	0x302e
  14:	312d                	.2byte	0x312d
  16:	6275                	.2byte	0x6275
  18:	6e75                	.2byte	0x6e75
  1a:	7574                	.2byte	0x7574
  1c:	7e31                	.2byte	0x7e31
  1e:	3232                	.2byte	0x3232
  20:	302e                	.2byte	0x302e
  22:	2934                	.2byte	0x2934
  24:	3120                	.2byte	0x3120
  26:	2e32                	.2byte	0x2e32
  28:	00302e33          	sgtz	t3,gp

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

strcmp.o:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <strcmp>:
   0:	00054783          	lbu	a5,0(a0)
   4:	00158593          	addi	a1,a1,1
   8:	00150513          	addi	a0,a0,1
   c:	fff5c703          	lbu	a4,-1(a1)
  10:	00078863          	beqz	a5,20 <.L7>
  14:	fee786e3          	beq	a5,a4,0 <strcmp>
  18:	40e78533          	sub	a0,a5,a4
  1c:	00008067          	ret

00000020 <.L7>:
  20:	40e00533          	neg	a0,a4
  24:	00008067          	ret

Déassemblage de la section .comment :

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	5528                	.2byte	0x5528
   8:	7562                	.2byte	0x7562
   a:	746e                	.2byte	0x746e
   c:	2075                	.2byte	0x2075
   e:	3231                	.2byte	0x3231
  10:	332e                	.2byte	0x332e
  12:	302e                	.2byte	0x302e
  14:	312d                	.2byte	0x312d
  16:	6275                	.2byte	0x6275
  18:	6e75                	.2byte	0x6e75
  1a:	7574                	.2byte	0x7574
  1c:	7e31                	.2byte	0x7e31
  1e:	3232                	.2byte	0x3232
  20:	302e                	.2byte	0x302e
  22:	2934                	.2byte	0x2934
  24:	3120                	.2byte	0x3120
  26:	2e32                	.2byte	0x2e32
  28:	00302e33          	sgtz	t3,gp

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

strlen.o:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <strlen>:
   0:	00054783          	lbu	a5,0(a0)
   4:	02078463          	beqz	a5,2c <.L8>
   8:	ff010113          	addi	sp,sp,-16
   c:	00150513          	addi	a0,a0,1
  10:	00112623          	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <strlen+0x14>
  1c:	00c12083          	lw	ra,12(sp)
  20:	00150513          	addi	a0,a0,1
  24:	01010113          	addi	sp,sp,16
  28:	00008067          	ret

0000002c <.L8>:
  2c:	00000513          	li	a0,0
  30:	00008067          	ret

Déassemblage de la section .comment :

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	5528                	.2byte	0x5528
   8:	7562                	.2byte	0x7562
   a:	746e                	.2byte	0x746e
   c:	2075                	.2byte	0x2075
   e:	3231                	.2byte	0x3231
  10:	332e                	.2byte	0x332e
  12:	302e                	.2byte	0x302e
  14:	312d                	.2byte	0x312d
  16:	6275                	.2byte	0x6275
  18:	6e75                	.2byte	0x6e75
  1a:	7574                	.2byte	0x7574
  1c:	7e31                	.2byte	0x7e31
  1e:	3232                	.2byte	0x3232
  20:	302e                	.2byte	0x302e
  22:	2934                	.2byte	0x2934
  24:	3120                	.2byte	0x3120
  26:	2e32                	.2byte	0x2e32
  28:	00302e33          	sgtz	t3,gp

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

strncpy.o:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <strncpy>:
   0:	ff010113          	addi	sp,sp,-16
   4:	00812423          	sw	s0,8(sp)
   8:	00112623          	sw	ra,12(sp)
   c:	00050413          	mv	s0,a0
  10:	00000513          	li	a0,0
  14:	00061a63          	bnez	a2,28 <.L2>
  18:	0380006f          	j	50 <.L6>

0000001c <.L4>:
  1c:	00e68023          	sb	a4,0(a3)
  20:	00150513          	addi	a0,a0,1
  24:	02a60663          	beq	a2,a0,50 <.L6>

00000028 <.L2>:
  28:	00a58733          	add	a4,a1,a0
  2c:	00074703          	lbu	a4,0(a4)
  30:	00a406b3          	add	a3,s0,a0
  34:	fe0714e3          	bnez	a4,1c <.L4>
  38:	00c57c63          	bgeu	a0,a2,50 <.L6>
  3c:	40a60633          	sub	a2,a2,a0
  40:	00000593          	li	a1,0
  44:	00068513          	mv	a0,a3
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.L2+0x20>

00000050 <.L6>:
  50:	00c12083          	lw	ra,12(sp)
  54:	00040513          	mv	a0,s0
  58:	00812403          	lw	s0,8(sp)
  5c:	01010113          	addi	sp,sp,16
  60:	00008067          	ret

Déassemblage de la section .comment :

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	5528                	.2byte	0x5528
   8:	7562                	.2byte	0x7562
   a:	746e                	.2byte	0x746e
   c:	2075                	.2byte	0x2075
   e:	3231                	.2byte	0x3231
  10:	332e                	.2byte	0x332e
  12:	302e                	.2byte	0x302e
  14:	312d                	.2byte	0x312d
  16:	6275                	.2byte	0x6275
  18:	6e75                	.2byte	0x6e75
  1a:	7574                	.2byte	0x7574
  1c:	7e31                	.2byte	0x7e31
  1e:	3232                	.2byte	0x3232
  20:	302e                	.2byte	0x302e
  22:	2934                	.2byte	0x2934
  24:	3120                	.2byte	0x3120
  26:	2e32                	.2byte	0x2e32
  28:	00302e33          	sgtz	t3,gp

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

memset.o:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <memset>:
   0:	0ff5f593          	zext.b	a1,a1
   4:	00c50733          	add	a4,a0,a2
   8:	00050793          	mv	a5,a0
   c:	00060863          	beqz	a2,1c <.L7>

00000010 <.L3>:
  10:	00b78023          	sb	a1,0(a5)
  14:	00178793          	addi	a5,a5,1
  18:	fee79ce3          	bne	a5,a4,10 <.L3>

0000001c <.L7>:
  1c:	00008067          	ret

Déassemblage de la section .comment :

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	5528                	.2byte	0x5528
   8:	7562                	.2byte	0x7562
   a:	746e                	.2byte	0x746e
   c:	2075                	.2byte	0x2075
   e:	3231                	.2byte	0x3231
  10:	332e                	.2byte	0x332e
  12:	302e                	.2byte	0x302e
  14:	312d                	.2byte	0x312d
  16:	6275                	.2byte	0x6275
  18:	6e75                	.2byte	0x6e75
  1a:	7574                	.2byte	0x7574
  1c:	7e31                	.2byte	0x7e31
  1e:	3232                	.2byte	0x3232
  20:	302e                	.2byte	0x302e
  22:	2934                	.2byte	0x2934
  24:	3120                	.2byte	0x3120
  26:	2e32                	.2byte	0x2e32
  28:	00302e33          	sgtz	t3,gp

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

random.o:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <random>:
   0:	ff010113          	addi	sp,sp,-16
   4:	00812423          	sw	s0,8(sp)
   8:	00000417          	auipc	s0,0x0
   c:	00040413          	mv	s0,s0
  10:	00042783          	lw	a5,0(s0) # 8 <random+0x8>
  14:	000ae5b7          	lui	a1,0xae
  18:	52958593          	addi	a1,a1,1321 # ae529 <random+0xae529>
  1c:	00279513          	slli	a0,a5,0x2
  20:	00f50533          	add	a0,a0,a5
  24:	00251513          	slli	a0,a0,0x2
  28:	00f50533          	add	a0,a0,a5
  2c:	00651713          	slli	a4,a0,0x6
  30:	00e50533          	add	a0,a0,a4
  34:	00f50533          	add	a0,a0,a5
  38:	000257b7          	lui	a5,0x25
  3c:	d6978793          	addi	a5,a5,-663 # 24d69 <random+0x24d69>
  40:	00f50533          	add	a0,a0,a5
  44:	00112623          	sw	ra,12(sp)
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <random+0x48>
  50:	00c12083          	lw	ra,12(sp)
  54:	00a42023          	sw	a0,0(s0)
  58:	00812403          	lw	s0,8(sp)
  5c:	01010113          	addi	sp,sp,16
  60:	00008067          	ret

Déassemblage de la section .data :

00000000 <randomseed>:
   0:	0001                	.2byte	0x1
	...

Déassemblage de la section .comment :

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	5528                	.2byte	0x5528
   8:	7562                	.2byte	0x7562
   a:	746e                	.2byte	0x746e
   c:	2075                	.2byte	0x2075
   e:	3231                	.2byte	0x3231
  10:	332e                	.2byte	0x332e
  12:	302e                	.2byte	0x302e
  14:	312d                	.2byte	0x312d
  16:	6275                	.2byte	0x6275
  18:	6e75                	.2byte	0x6e75
  1a:	7574                	.2byte	0x7574
  1c:	7e31                	.2byte	0x7e31
  1e:	3232                	.2byte	0x3232
  20:	302e                	.2byte	0x302e
  22:	2934                	.2byte	0x2934
  24:	3120                	.2byte	0x3120
  26:	2e32                	.2byte	0x2e32
  28:	00302e33          	sgtz	t3,gp

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

strcpy.o:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <strcpy>:
   0:	00050793          	mv	a5,a0

00000004 <.L2>:
   4:	0005c703          	lbu	a4,0(a1)
   8:	00178793          	addi	a5,a5,1
   c:	00158593          	addi	a1,a1,1
  10:	fee78fa3          	sb	a4,-1(a5)
  14:	fe0718e3          	bnez	a4,4 <.L2>
  18:	00008067          	ret

Déassemblage de la section .comment :

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	5528                	.2byte	0x5528
   8:	7562                	.2byte	0x7562
   a:	746e                	.2byte	0x746e
   c:	2075                	.2byte	0x2075
   e:	3231                	.2byte	0x3231
  10:	332e                	.2byte	0x332e
  12:	302e                	.2byte	0x302e
  14:	312d                	.2byte	0x312d
  16:	6275                	.2byte	0x6275
  18:	6e75                	.2byte	0x6e75
  1a:	7574                	.2byte	0x7574
  1c:	7e31                	.2byte	0x7e31
  1e:	3232                	.2byte	0x3232
  20:	302e                	.2byte	0x302e
  22:	2934                	.2byte	0x2934
  24:	3120                	.2byte	0x3120
  26:	2e32                	.2byte	0x2e32
  28:	00302e33          	sgtz	t3,gp

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

strncmp.o:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <strncmp>:
   0:	02060263          	beqz	a2,24 <.L6>

00000004 <.L14>:
   4:	00054783          	lbu	a5,0(a0)
   8:	fff60613          	addi	a2,a2,-1
   c:	02078063          	beqz	a5,2c <.L4>
  10:	0005c703          	lbu	a4,0(a1)
  14:	00f71c63          	bne	a4,a5,2c <.L4>
  18:	00150513          	addi	a0,a0,1
  1c:	00158593          	addi	a1,a1,1
  20:	fe0612e3          	bnez	a2,4 <.L14>

00000024 <.L6>:
  24:	00000513          	li	a0,0
  28:	00008067          	ret

0000002c <.L4>:
  2c:	00054503          	lbu	a0,0(a0)
  30:	0005c783          	lbu	a5,0(a1)
  34:	40f50533          	sub	a0,a0,a5
  38:	00008067          	ret

Déassemblage de la section .comment :

00000000 <.comment>:
   0:	4700                	.2byte	0x4700
   2:	203a4343          	.4byte	0x203a4343
   6:	5528                	.2byte	0x5528
   8:	7562                	.2byte	0x7562
   a:	746e                	.2byte	0x746e
   c:	2075                	.2byte	0x2075
   e:	3231                	.2byte	0x3231
  10:	332e                	.2byte	0x332e
  12:	302e                	.2byte	0x302e
  14:	312d                	.2byte	0x312d
  16:	6275                	.2byte	0x6275
  18:	6e75                	.2byte	0x6e75
  1a:	7574                	.2byte	0x7574
  1c:	7e31                	.2byte	0x7e31
  1e:	3232                	.2byte	0x3232
  20:	302e                	.2byte	0x302e
  22:	2934                	.2byte	0x2934
  24:	3120                	.2byte	0x3120
  26:	2e32                	.2byte	0x2e32
  28:	00302e33          	sgtz	t3,gp

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

mul.o:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <__mulsi3>:
   0:	00050613          	mv	a2,a0
   4:	00000513          	li	a0,0

00000008 <.L1>:
   8:	0015f693          	andi	a3,a1,1
   c:	00068463          	beqz	a3,14 <.L2>
  10:	00c50533          	add	a0,a0,a2

00000014 <.L2>:
  14:	0015d593          	srli	a1,a1,0x1
  18:	00161613          	slli	a2,a2,0x1
  1c:	fe0596e3          	bnez	a1,8 <.L1>
  20:	00008067          	ret

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1941                	.2byte	0x1941
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0000000f          	fence	unknown,unknown
  10:	7205                	.2byte	0x7205
  12:	3376                	.2byte	0x3376
  14:	6932                	.2byte	0x6932
  16:	7032                	.2byte	0x7032
  18:	0031                	.2byte	0x31

div.o:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <__divsi3>:
   0:	06054063          	bltz	a0,60 <.L10>
   4:	0605c663          	bltz	a1,70 <.L11>

00000008 <__udivsi3>:
   8:	00058613          	mv	a2,a1
   c:	00050593          	mv	a1,a0
  10:	fff00513          	li	a0,-1
  14:	02060c63          	beqz	a2,4c <.L5>
  18:	00100693          	li	a3,1
  1c:	00b67a63          	bgeu	a2,a1,30 <.L2>

00000020 <.L1>:
  20:	00c05863          	blez	a2,30 <.L2>
  24:	00161613          	slli	a2,a2,0x1
  28:	00169693          	slli	a3,a3,0x1
  2c:	feb66ae3          	bltu	a2,a1,20 <.L1>

00000030 <.L2>:
  30:	00000513          	li	a0,0

00000034 <.L3>:
  34:	00c5e663          	bltu	a1,a2,40 <.L4>
  38:	40c585b3          	sub	a1,a1,a2
  3c:	00d56533          	or	a0,a0,a3

00000040 <.L4>:
  40:	0016d693          	srli	a3,a3,0x1
  44:	00165613          	srli	a2,a2,0x1
  48:	fe0696e3          	bnez	a3,34 <.L3>

0000004c <.L5>:
  4c:	00008067          	ret

00000050 <__umodsi3>:
  50:	00008293          	mv	t0,ra
  54:	fb5ff0ef          	jal	ra,8 <__udivsi3>
  58:	00058513          	mv	a0,a1
  5c:	00028067          	jr	t0

00000060 <.L10>:
  60:	40a00533          	neg	a0,a0
  64:	0005d863          	bgez	a1,74 <.L12>
  68:	40b005b3          	neg	a1,a1
  6c:	f95ff06f          	j	0 <__divsi3>

00000070 <.L11>:
  70:	40b005b3          	neg	a1,a1

00000074 <.L12>:
  74:	00008293          	mv	t0,ra
  78:	f89ff0ef          	jal	ra,0 <__divsi3>
  7c:	40a00533          	neg	a0,a0
  80:	00028067          	jr	t0

00000084 <__modsi3>:
  84:	00008293          	mv	t0,ra
  88:	0005ca63          	bltz	a1,9c <.L31>
  8c:	00054c63          	bltz	a0,a4 <.L32>

00000090 <.L30>:
  90:	f79ff0ef          	jal	ra,8 <__udivsi3>
  94:	00058513          	mv	a0,a1
  98:	00028067          	jr	t0

0000009c <.L31>:
  9c:	40b005b3          	neg	a1,a1
  a0:	fe0558e3          	bgez	a0,90 <.L30>

000000a4 <.L32>:
  a4:	40a00533          	neg	a0,a0
  a8:	f61ff0ef          	jal	ra,8 <__udivsi3>
  ac:	40b00533          	neg	a0,a1
  b0:	00028067          	jr	t0

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1941                	.2byte	0x1941
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0000000f          	fence	unknown,unknown
  10:	7205                	.2byte	0x7205
  12:	3376                	.2byte	0x3376
  14:	6932                	.2byte	0x6932
  16:	7032                	.2byte	0x7032
  18:	0031                	.2byte	0x31
