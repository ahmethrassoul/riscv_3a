
./bin/hello_world.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <start>:
   0:	004001b7          	lui	gp,0x400
   4:	00020137          	lui	sp,0x20
   8:	008000ef          	jal	ra,10 <main>
   c:	00100073          	ebreak

00000010 <main>:
  10:	ff010113          	addi	sp,sp,-16 # 1fff0 <val.0+0xff58>
  14:	00812423          	sw	s0,8(sp)
  18:	00010437          	lui	s0,0x10
  1c:	00040513          	mv	a0,s0
  20:	00112623          	sw	ra,12(sp)
  24:	098000ef          	jal	ra,bc <print_string>
  28:	00010537          	lui	a0,0x10
  2c:	00850513          	addi	a0,a0,8 # 10008 <__modsi3+0xfcb0>
  30:	08c000ef          	jal	ra,bc <print_string>
  34:	00010537          	lui	a0,0x10
  38:	01c50513          	addi	a0,a0,28 # 1001c <__modsi3+0xfcc4>
  3c:	080000ef          	jal	ra,bc <print_string>
  40:	00010537          	lui	a0,0x10
  44:	05450513          	addi	a0,a0,84 # 10054 <__modsi3+0xfcfc>
  48:	074000ef          	jal	ra,bc <print_string>
  4c:	00010537          	lui	a0,0x10
  50:	06450513          	addi	a0,a0,100 # 10064 <__modsi3+0xfd0c>
  54:	068000ef          	jal	ra,bc <print_string>
  58:	00010537          	lui	a0,0x10
  5c:	06c50513          	addi	a0,a0,108 # 1006c <__modsi3+0xfd14>
  60:	05c000ef          	jal	ra,bc <print_string>
  64:	00010537          	lui	a0,0x10
  68:	06850513          	addi	a0,a0,104 # 10068 <__modsi3+0xfd10>
  6c:	050000ef          	jal	ra,bc <print_string>
  70:	00010537          	lui	a0,0x10
  74:	07850513          	addi	a0,a0,120 # 10078 <__modsi3+0xfd20>
  78:	044000ef          	jal	ra,bc <print_string>
  7c:	00010537          	lui	a0,0x10
  80:	00450513          	addi	a0,a0,4 # 10004 <__modsi3+0xfcac>
  84:	038000ef          	jal	ra,bc <print_string>
  88:	00040513          	mv	a0,s0
  8c:	030000ef          	jal	ra,bc <print_string>
  90:	00c12083          	lw	ra,12(sp)
  94:	00812403          	lw	s0,8(sp)
  98:	00000513          	li	a0,0
  9c:	01010113          	addi	sp,sp,16
  a0:	00008067          	ret

000000a4 <putchar>:
  a4:	00a1a423          	sw	a0,8(gp) # 400008 <IO_BASE+0x8>
  a8:	20000293          	li	t0,512
  ac:	0101a303          	lw	t1,16(gp)
  b0:	00537333          	and	t1,t1,t0
  b4:	fe031ce3          	bnez	t1,ac <putchar+0x8>
  b8:	00008067          	ret

000000bc <print_string>:
  bc:	00054783          	lbu	a5,0(a0)
  c0:	00078c63          	beqz	a5,d8 <print_string+0x1c>
  c4:	00400737          	lui	a4,0x400
  c8:	00f72423          	sw	a5,8(a4) # 400008 <IO_BASE+0x8>
  cc:	00154783          	lbu	a5,1(a0)
  d0:	00150513          	addi	a0,a0,1
  d4:	fe079ae3          	bnez	a5,c8 <print_string+0xc>
  d8:	00008067          	ret

000000dc <puts>:
  dc:	00054783          	lbu	a5,0(a0)
  e0:	00078c63          	beqz	a5,f8 <puts+0x1c>
  e4:	00400737          	lui	a4,0x400
  e8:	00f72423          	sw	a5,8(a4) # 400008 <IO_BASE+0x8>
  ec:	00154783          	lbu	a5,1(a0)
  f0:	00150513          	addi	a0,a0,1
  f4:	fe079ae3          	bnez	a5,e8 <puts+0xc>
  f8:	004007b7          	lui	a5,0x400
  fc:	00a00713          	li	a4,10
 100:	00e7a423          	sw	a4,8(a5) # 400008 <IO_BASE+0x8>
 104:	00100513          	li	a0,1
 108:	00008067          	ret

0000010c <print_dec>:
 10c:	ef010113          	addi	sp,sp,-272
 110:	10812423          	sw	s0,264(sp)
 114:	10112623          	sw	ra,268(sp)
 118:	10912223          	sw	s1,260(sp)
 11c:	11212023          	sw	s2,256(sp)
 120:	00050413          	mv	s0,a0
 124:	00055a63          	bgez	a0,138 <print_dec+0x2c>
 128:	004007b7          	lui	a5,0x400
 12c:	02d00713          	li	a4,45
 130:	00e7a423          	sw	a4,8(a5) # 400008 <IO_BASE+0x8>
 134:	40a00433          	neg	s0,a0
 138:	00010913          	mv	s2,sp
 13c:	00090493          	mv	s1,s2
 140:	0240006f          	j	164 <print_dec+0x58>
 144:	214000ef          	jal	ra,358 <__modsi3>
 148:	00050793          	mv	a5,a0
 14c:	00f48023          	sb	a5,0(s1)
 150:	00040513          	mv	a0,s0
 154:	00a00593          	li	a1,10
 158:	17c000ef          	jal	ra,2d4 <__divsi3>
 15c:	00148493          	addi	s1,s1,1
 160:	00050413          	mv	s0,a0
 164:	00a00593          	li	a1,10
 168:	00040513          	mv	a0,s0
 16c:	fc041ce3          	bnez	s0,144 <print_dec+0x38>
 170:	fd248ae3          	beq	s1,s2,144 <print_dec+0x38>
 174:	00400737          	lui	a4,0x400
 178:	fff4c783          	lbu	a5,-1(s1)
 17c:	fff48493          	addi	s1,s1,-1
 180:	03078793          	addi	a5,a5,48
 184:	0ff7f793          	zext.b	a5,a5
 188:	00f72423          	sw	a5,8(a4) # 400008 <IO_BASE+0x8>
 18c:	ff2496e3          	bne	s1,s2,178 <print_dec+0x6c>
 190:	10c12083          	lw	ra,268(sp)
 194:	10812403          	lw	s0,264(sp)
 198:	10412483          	lw	s1,260(sp)
 19c:	10012903          	lw	s2,256(sp)
 1a0:	11010113          	addi	sp,sp,272
 1a4:	00008067          	ret

000001a8 <print_hex>:
 1a8:	000106b7          	lui	a3,0x10
 1ac:	01c00713          	li	a4,28
 1b0:	08468693          	addi	a3,a3,132 # 10084 <__modsi3+0xfd2c>
 1b4:	004005b7          	lui	a1,0x400
 1b8:	ffc00613          	li	a2,-4
 1bc:	00e557b3          	srl	a5,a0,a4
 1c0:	00f7f793          	andi	a5,a5,15
 1c4:	00f687b3          	add	a5,a3,a5
 1c8:	0007c783          	lbu	a5,0(a5)
 1cc:	ffc70713          	addi	a4,a4,-4
 1d0:	00f5a423          	sw	a5,8(a1) # 400008 <IO_BASE+0x8>
 1d4:	fec714e3          	bne	a4,a2,1bc <print_hex+0x14>
 1d8:	00008067          	ret

000001dc <print_hex_digits>:
 1dc:	fff58593          	addi	a1,a1,-1
 1e0:	00259593          	slli	a1,a1,0x2
 1e4:	0205c863          	bltz	a1,214 <print_hex_digits+0x38>
 1e8:	00010737          	lui	a4,0x10
 1ec:	08470713          	addi	a4,a4,132 # 10084 <__modsi3+0xfd2c>
 1f0:	00400637          	lui	a2,0x400
 1f4:	ffc00693          	li	a3,-4
 1f8:	00b557b3          	srl	a5,a0,a1
 1fc:	00f7f793          	andi	a5,a5,15
 200:	00f707b3          	add	a5,a4,a5
 204:	0007c783          	lbu	a5,0(a5)
 208:	ffc58593          	addi	a1,a1,-4
 20c:	00f62423          	sw	a5,8(a2) # 400008 <IO_BASE+0x8>
 210:	fed594e3          	bne	a1,a3,1f8 <print_hex_digits+0x1c>
 214:	00008067          	ret

00000218 <memcpy>:
 218:	00b567b3          	or	a5,a0,a1
 21c:	0037f713          	andi	a4,a5,3
 220:	00050793          	mv	a5,a0
 224:	02070263          	beqz	a4,248 <memcpy+0x30>
 228:	00c786b3          	add	a3,a5,a2
 22c:	06060063          	beqz	a2,28c <memcpy+0x74>
 230:	0005c703          	lbu	a4,0(a1)
 234:	00178793          	addi	a5,a5,1
 238:	00158593          	addi	a1,a1,1
 23c:	fee78fa3          	sb	a4,-1(a5)
 240:	fef698e3          	bne	a3,a5,230 <memcpy+0x18>
 244:	00008067          	ret
 248:	00300713          	li	a4,3
 24c:	fcc77ee3          	bgeu	a4,a2,228 <memcpy+0x10>
 250:	ffc60893          	addi	a7,a2,-4
 254:	ffc8f893          	andi	a7,a7,-4
 258:	00488893          	addi	a7,a7,4
 25c:	011507b3          	add	a5,a0,a7
 260:	00058693          	mv	a3,a1
 264:	00050713          	mv	a4,a0
 268:	0006a803          	lw	a6,0(a3)
 26c:	00470713          	addi	a4,a4,4
 270:	00468693          	addi	a3,a3,4
 274:	ff072e23          	sw	a6,-4(a4)
 278:	fee798e3          	bne	a5,a4,268 <memcpy+0x50>
 27c:	00367613          	andi	a2,a2,3
 280:	011585b3          	add	a1,a1,a7
 284:	00c786b3          	add	a3,a5,a2
 288:	fa0614e3          	bnez	a2,230 <memcpy+0x18>
 28c:	00008067          	ret

00000290 <__errno>:
 290:	00010537          	lui	a0,0x10
 294:	09850513          	addi	a0,a0,152 # 10098 <val.0>
 298:	00008067          	ret

0000029c <wait>:
 29c:	00100293          	li	t0,1
 2a0:	01129293          	slli	t0,t0,0x11
 2a4:	fff28293          	addi	t0,t0,-1
 2a8:	fe029ee3          	bnez	t0,2a4 <wait+0x8>
 2ac:	00008067          	ret

000002b0 <__mulsi3>:
 2b0:	00050613          	mv	a2,a0
 2b4:	00000513          	li	a0,0
 2b8:	0015f693          	andi	a3,a1,1
 2bc:	00068463          	beqz	a3,2c4 <__mulsi3+0x14>
 2c0:	00c50533          	add	a0,a0,a2
 2c4:	0015d593          	srli	a1,a1,0x1
 2c8:	00161613          	slli	a2,a2,0x1
 2cc:	fe0596e3          	bnez	a1,2b8 <__mulsi3+0x8>
 2d0:	00008067          	ret

000002d4 <__divsi3>:
 2d4:	06054063          	bltz	a0,334 <__umodsi3+0x10>
 2d8:	0605c663          	bltz	a1,344 <__umodsi3+0x20>

000002dc <__udivsi3>:
 2dc:	00058613          	mv	a2,a1
 2e0:	00050593          	mv	a1,a0
 2e4:	fff00513          	li	a0,-1
 2e8:	02060c63          	beqz	a2,320 <__udivsi3+0x44>
 2ec:	00100693          	li	a3,1
 2f0:	00b67a63          	bgeu	a2,a1,304 <__udivsi3+0x28>
 2f4:	00c05863          	blez	a2,304 <__udivsi3+0x28>
 2f8:	00161613          	slli	a2,a2,0x1
 2fc:	00169693          	slli	a3,a3,0x1
 300:	feb66ae3          	bltu	a2,a1,2f4 <__udivsi3+0x18>
 304:	00000513          	li	a0,0
 308:	00c5e663          	bltu	a1,a2,314 <__udivsi3+0x38>
 30c:	40c585b3          	sub	a1,a1,a2
 310:	00d56533          	or	a0,a0,a3
 314:	0016d693          	srli	a3,a3,0x1
 318:	00165613          	srli	a2,a2,0x1
 31c:	fe0696e3          	bnez	a3,308 <__udivsi3+0x2c>
 320:	00008067          	ret

00000324 <__umodsi3>:
 324:	00008293          	mv	t0,ra
 328:	fb5ff0ef          	jal	ra,2dc <__udivsi3>
 32c:	00058513          	mv	a0,a1
 330:	00028067          	jr	t0
 334:	40a00533          	neg	a0,a0
 338:	0005d863          	bgez	a1,348 <__umodsi3+0x24>
 33c:	40b005b3          	neg	a1,a1
 340:	f95ff06f          	j	2d4 <__divsi3>
 344:	40b005b3          	neg	a1,a1
 348:	00008293          	mv	t0,ra
 34c:	f89ff0ef          	jal	ra,2d4 <__divsi3>
 350:	40a00533          	neg	a0,a0
 354:	00028067          	jr	t0

00000358 <__modsi3>:
 358:	00008293          	mv	t0,ra
 35c:	0005ca63          	bltz	a1,370 <__modsi3+0x18>
 360:	00054c63          	bltz	a0,378 <__modsi3+0x20>
 364:	f79ff0ef          	jal	ra,2dc <__udivsi3>
 368:	00058513          	mv	a0,a1
 36c:	00028067          	jr	t0
 370:	40b005b3          	neg	a1,a1
 374:	fe0558e3          	bgez	a0,364 <__modsi3+0xc>
 378:	40a00533          	neg	a0,a0
 37c:	f61ff0ef          	jal	ra,2dc <__udivsi3>
 380:	40b00533          	neg	a0,a1
 384:	00028067          	jr	t0

Déassemblage de la section .data :

00010000 <val.0-0x98>:
   10000:	6928                	.2byte	0x6928
   10002:	2969                	.2byte	0x2969
   10004:	000a                	.2byte	0xa
   10006:	0000                	.2byte	0x0
   10008:	6928                	.2byte	0x6928
   1000a:	2969                	.2byte	0x2969
   1000c:	4820                	.2byte	0x4820
   1000e:	4c45                	.2byte	0x4c45
   10010:	4f4c                	.2byte	0x4f4c
   10012:	7720                	.2byte	0x7720
   10014:	646c726f          	jal	tp,d765a <val.0+0xc75c2>
   10018:	2120                	.2byte	0x2120
   1001a:	000a                	.2byte	0xa
   1001c:	6928                	.2byte	0x6928
   1001e:	2969                	.2byte	0x2969
   10020:	4c20                	.2byte	0x4c20
   10022:	7465                	.2byte	0x7465
   10024:	6d20                	.2byte	0x6d20
   10026:	2065                	.2byte	0x2065
   10028:	6e69                	.2byte	0x6e69
   1002a:	7274                	.2byte	0x7274
   1002c:	6375646f          	jal	s0,66e62 <val.0+0x56dca>
   10030:	2065                	.2byte	0x2065
   10032:	796d                	.2byte	0x796d
   10034:	666c6573          	.4byte	0x666c6573
   10038:	202c                	.2byte	0x202c
   1003a:	2049                	.2byte	0x2049
   1003c:	6d61                	.2byte	0x6d61
   1003e:	7420                	.2byte	0x7420
   10040:	6568                	.2byte	0x6568
   10042:	4220                	.2byte	0x4220
   10044:	6572                	.2byte	0x6572
   10046:	5a69                	.2byte	0x5a69
   10048:	2048                	.2byte	0x2048
   1004a:	4952                	.2byte	0x4952
   1004c:	562d4353          	.4byte	0x562d4353
   10050:	0a2e                	.2byte	0xa2e
   10052:	0000                	.2byte	0x0
   10054:	6928                	.2byte	0x6928
   10056:	2969                	.2byte	0x2969
   10058:	7220                	.2byte	0x7220
   1005a:	6c65                	.2byte	0x6c65
   1005c:	6165                	.2byte	0x6165
   1005e:	3a206573          	.4byte	0x3a206573
   10062:	000a                	.2byte	0xa
   10064:	6928                	.2byte	0x6928
   10066:	2969                	.2byte	0x2969
   10068:	0020                	.2byte	0x20
   1006a:	0000                	.2byte	0x0
   1006c:	614d                	.2byte	0x614d
   1006e:	2079                	.2byte	0x2079
   10070:	3731                	.2byte	0x3731
   10072:	3220                	.2byte	0x3220
   10074:	3230                	.2byte	0x3230
   10076:	0034                	.2byte	0x34
   10078:	3831                	.2byte	0x3831
   1007a:	303a                	.2byte	0x303a
   1007c:	36313a33          	.4byte	0x36313a33
   10080:	0000                	.2byte	0x0
   10082:	0000                	.2byte	0x0
   10084:	3130                	.2byte	0x3130
   10086:	3332                	.2byte	0x3332
   10088:	3534                	.2byte	0x3534
   1008a:	3736                	.2byte	0x3736
   1008c:	3938                	.2byte	0x3938
   1008e:	4241                	.2byte	0x4241
   10090:	46454443          	.4byte	0x46454443
   10094:	0000                	.2byte	0x0
	...

00010098 <val.0>:
   10098:	0000                	.2byte	0x0
	...

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <main+0x4>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31

Déassemblage de la section .comment :

00000000 <.comment>:
   0:	3a434347          	.4byte	0x3a434347
   4:	2820                	.2byte	0x2820
   6:	6255                	.2byte	0x6255
   8:	6e75                	.2byte	0x6e75
   a:	7574                	.2byte	0x7574
   c:	3120                	.2byte	0x3120
   e:	2e32                	.2byte	0x2e32
  10:	2d302e33          	.4byte	0x2d302e33
  14:	7531                	.2byte	0x7531
  16:	7562                	.2byte	0x7562
  18:	746e                	.2byte	0x746e
  1a:	3175                	.2byte	0x3175
  1c:	327e                	.2byte	0x327e
  1e:	2e32                	.2byte	0x2e32
  20:	3430                	.2byte	0x3430
  22:	2029                	.2byte	0x2029
  24:	3231                	.2byte	0x3231
  26:	332e                	.2byte	0x332e
  28:	302e                	.2byte	0x302e
	...
