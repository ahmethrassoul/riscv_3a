
./bin/riscv_logo.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <start>:
   0:	004001b7          	lui	gp,0x400
   4:	00020137          	lui	sp,0x20
   8:	008000ef          	jal	ra,10 <main>
   c:	00100073          	ebreak

00000010 <main>:
  10:	00010537          	lui	a0,0x10
  14:	fe010113          	addi	sp,sp,-32 # 1ffe0 <__modsi3+0x1fc48>
  18:	00050513          	mv	a0,a0
  1c:	00112e23          	sw	ra,28(sp)
  20:	00812c23          	sw	s0,24(sp)
  24:	00912a23          	sw	s1,20(sp)
  28:	01212823          	sw	s2,16(sp)
  2c:	01312623          	sw	s3,12(sp)
  30:	188000ef          	jal	ra,1b8 <print_string>
  34:	00010537          	lui	a0,0x10
  38:	03050513          	addi	a0,a0,48 # 10030 <__modsi3+0xfc98>
  3c:	17c000ef          	jal	ra,1b8 <print_string>
  40:	00010537          	lui	a0,0x10
  44:	06050513          	addi	a0,a0,96 # 10060 <__modsi3+0xfcc8>
  48:	170000ef          	jal	ra,1b8 <print_string>
  4c:	00010537          	lui	a0,0x10
  50:	09050513          	addi	a0,a0,144 # 10090 <__modsi3+0xfcf8>
  54:	00010437          	lui	s0,0x10
  58:	160000ef          	jal	ra,1b8 <print_string>
  5c:	0c040513          	addi	a0,s0,192 # 100c0 <__modsi3+0xfd28>
  60:	158000ef          	jal	ra,1b8 <print_string>
  64:	0c040513          	addi	a0,s0,192
  68:	150000ef          	jal	ra,1b8 <print_string>
  6c:	0c040513          	addi	a0,s0,192
  70:	148000ef          	jal	ra,1b8 <print_string>
  74:	00010537          	lui	a0,0x10
  78:	0f050513          	addi	a0,a0,240 # 100f0 <__modsi3+0xfd58>
  7c:	13c000ef          	jal	ra,1b8 <print_string>
  80:	00010537          	lui	a0,0x10
  84:	12050513          	addi	a0,a0,288 # 10120 <__modsi3+0xfd88>
  88:	130000ef          	jal	ra,1b8 <print_string>
  8c:	00010537          	lui	a0,0x10
  90:	15050513          	addi	a0,a0,336 # 10150 <__modsi3+0xfdb8>
  94:	124000ef          	jal	ra,1b8 <print_string>
  98:	00010537          	lui	a0,0x10
  9c:	18050513          	addi	a0,a0,384 # 10180 <__modsi3+0xfde8>
  a0:	118000ef          	jal	ra,1b8 <print_string>
  a4:	00010537          	lui	a0,0x10
  a8:	1b050513          	addi	a0,a0,432 # 101b0 <__modsi3+0xfe18>
  ac:	10c000ef          	jal	ra,1b8 <print_string>
  b0:	00010537          	lui	a0,0x10
  b4:	1e050513          	addi	a0,a0,480 # 101e0 <__modsi3+0xfe48>
  b8:	100000ef          	jal	ra,1b8 <print_string>
  bc:	00010537          	lui	a0,0x10
  c0:	21050513          	addi	a0,a0,528 # 10210 <__modsi3+0xfe78>
  c4:	0f4000ef          	jal	ra,1b8 <print_string>
  c8:	00010537          	lui	a0,0x10
  cc:	24050513          	addi	a0,a0,576 # 10240 <__modsi3+0xfea8>
  d0:	0e8000ef          	jal	ra,1b8 <print_string>
  d4:	00010537          	lui	a0,0x10
  d8:	27050513          	addi	a0,a0,624 # 10270 <__modsi3+0xfed8>
  dc:	0dc000ef          	jal	ra,1b8 <print_string>
  e0:	00010537          	lui	a0,0x10
  e4:	2a050513          	addi	a0,a0,672 # 102a0 <__modsi3+0xff08>
  e8:	0d0000ef          	jal	ra,1b8 <print_string>
  ec:	00010537          	lui	a0,0x10
  f0:	2d050513          	addi	a0,a0,720 # 102d0 <__modsi3+0xff38>
  f4:	0c4000ef          	jal	ra,1b8 <print_string>
  f8:	00010537          	lui	a0,0x10
  fc:	30050513          	addi	a0,a0,768 # 10300 <__modsi3+0xff68>
 100:	0b8000ef          	jal	ra,1b8 <print_string>
 104:	00010537          	lui	a0,0x10
 108:	33050513          	addi	a0,a0,816 # 10330 <__modsi3+0xff98>
 10c:	0ac000ef          	jal	ra,1b8 <print_string>
 110:	00010537          	lui	a0,0x10
 114:	36050513          	addi	a0,a0,864 # 10360 <__modsi3+0xffc8>
 118:	0a0000ef          	jal	ra,1b8 <print_string>
 11c:	c0202473          	rdinstret	s0
 120:	c0002973          	rdcycle	s2
 124:	000109b7          	lui	s3,0x10
 128:	39098513          	addi	a0,s3,912 # 10390 <__modsi3+0xfff8>
 12c:	08c000ef          	jal	ra,1b8 <print_string>
 130:	00090513          	mv	a0,s2
 134:	170000ef          	jal	ra,2a4 <print_hex>
 138:	00a00513          	li	a0,10
 13c:	070000ef          	jal	ra,1ac <putchar>
 140:	000104b7          	lui	s1,0x10
 144:	39c48513          	addi	a0,s1,924 # 1039c <__modsi3+0x10004>
 148:	070000ef          	jal	ra,1b8 <print_string>
 14c:	00040513          	mv	a0,s0
 150:	154000ef          	jal	ra,2a4 <print_hex>
 154:	00a00513          	li	a0,10
 158:	054000ef          	jal	ra,1ac <putchar>
 15c:	39098513          	addi	a0,s3,912
 160:	058000ef          	jal	ra,1b8 <print_string>
 164:	00090513          	mv	a0,s2
 168:	0a0000ef          	jal	ra,208 <print_dec>
 16c:	00a00513          	li	a0,10
 170:	03c000ef          	jal	ra,1ac <putchar>
 174:	39c48513          	addi	a0,s1,924
 178:	040000ef          	jal	ra,1b8 <print_string>
 17c:	00040513          	mv	a0,s0
 180:	088000ef          	jal	ra,208 <print_dec>
 184:	00a00513          	li	a0,10
 188:	024000ef          	jal	ra,1ac <putchar>
 18c:	01c12083          	lw	ra,28(sp)
 190:	01812403          	lw	s0,24(sp)
 194:	01412483          	lw	s1,20(sp)
 198:	01012903          	lw	s2,16(sp)
 19c:	00c12983          	lw	s3,12(sp)
 1a0:	00000513          	li	a0,0
 1a4:	02010113          	addi	sp,sp,32
 1a8:	00008067          	ret

000001ac <putchar>:
 1ac:	004007b7          	lui	a5,0x400
 1b0:	00a7a423          	sw	a0,8(a5) # 400008 <IO_BASE+0x8>
 1b4:	00008067          	ret

000001b8 <print_string>:
 1b8:	00054783          	lbu	a5,0(a0)
 1bc:	00078c63          	beqz	a5,1d4 <print_string+0x1c>
 1c0:	00400737          	lui	a4,0x400
 1c4:	00f72423          	sw	a5,8(a4) # 400008 <IO_BASE+0x8>
 1c8:	00154783          	lbu	a5,1(a0)
 1cc:	00150513          	addi	a0,a0,1
 1d0:	fe079ae3          	bnez	a5,1c4 <print_string+0xc>
 1d4:	00008067          	ret

000001d8 <puts>:
 1d8:	00054783          	lbu	a5,0(a0)
 1dc:	00078c63          	beqz	a5,1f4 <puts+0x1c>
 1e0:	00400737          	lui	a4,0x400
 1e4:	00f72423          	sw	a5,8(a4) # 400008 <IO_BASE+0x8>
 1e8:	00154783          	lbu	a5,1(a0)
 1ec:	00150513          	addi	a0,a0,1
 1f0:	fe079ae3          	bnez	a5,1e4 <puts+0xc>
 1f4:	004007b7          	lui	a5,0x400
 1f8:	00a00713          	li	a4,10
 1fc:	00e7a423          	sw	a4,8(a5) # 400008 <IO_BASE+0x8>
 200:	00100513          	li	a0,1
 204:	00008067          	ret

00000208 <print_dec>:
 208:	ef010113          	addi	sp,sp,-272
 20c:	10812423          	sw	s0,264(sp)
 210:	10112623          	sw	ra,268(sp)
 214:	10912223          	sw	s1,260(sp)
 218:	11212023          	sw	s2,256(sp)
 21c:	00050413          	mv	s0,a0
 220:	00055a63          	bgez	a0,234 <print_dec+0x2c>
 224:	004007b7          	lui	a5,0x400
 228:	02d00713          	li	a4,45
 22c:	00e7a423          	sw	a4,8(a5) # 400008 <IO_BASE+0x8>
 230:	40a00433          	neg	s0,a0
 234:	00010913          	mv	s2,sp
 238:	00090493          	mv	s1,s2
 23c:	0240006f          	j	260 <print_dec+0x58>
 240:	158000ef          	jal	ra,398 <__modsi3>
 244:	00050793          	mv	a5,a0
 248:	00f48023          	sb	a5,0(s1)
 24c:	00040513          	mv	a0,s0
 250:	00a00593          	li	a1,10
 254:	0c0000ef          	jal	ra,314 <__divsi3>
 258:	00148493          	addi	s1,s1,1
 25c:	00050413          	mv	s0,a0
 260:	00a00593          	li	a1,10
 264:	00040513          	mv	a0,s0
 268:	fc041ce3          	bnez	s0,240 <print_dec+0x38>
 26c:	fd248ae3          	beq	s1,s2,240 <print_dec+0x38>
 270:	00400737          	lui	a4,0x400
 274:	fff4c783          	lbu	a5,-1(s1)
 278:	fff48493          	addi	s1,s1,-1
 27c:	03078793          	addi	a5,a5,48
 280:	0ff7f793          	zext.b	a5,a5
 284:	00f72423          	sw	a5,8(a4) # 400008 <IO_BASE+0x8>
 288:	ff2496e3          	bne	s1,s2,274 <print_dec+0x6c>
 28c:	10c12083          	lw	ra,268(sp)
 290:	10812403          	lw	s0,264(sp)
 294:	10412483          	lw	s1,260(sp)
 298:	10012903          	lw	s2,256(sp)
 29c:	11010113          	addi	sp,sp,272
 2a0:	00008067          	ret

000002a4 <print_hex>:
 2a4:	01c00713          	li	a4,28
 2a8:	00010597          	auipc	a1,0x10
 2ac:	10058593          	addi	a1,a1,256 # 103a8 <__modsi3+0x10010>
 2b0:	00400637          	lui	a2,0x400
 2b4:	ffc00693          	li	a3,-4
 2b8:	00e557b3          	srl	a5,a0,a4
 2bc:	00f7f793          	andi	a5,a5,15
 2c0:	00f587b3          	add	a5,a1,a5
 2c4:	0007c783          	lbu	a5,0(a5)
 2c8:	ffc70713          	addi	a4,a4,-4
 2cc:	00f62423          	sw	a5,8(a2) # 400008 <IO_BASE+0x8>
 2d0:	fed714e3          	bne	a4,a3,2b8 <print_hex+0x14>
 2d4:	00008067          	ret

000002d8 <print_hex_digits>:
 2d8:	fff58593          	addi	a1,a1,-1
 2dc:	00259593          	slli	a1,a1,0x2
 2e0:	0205c863          	bltz	a1,310 <print_hex_digits+0x38>
 2e4:	00010617          	auipc	a2,0x10
 2e8:	0c460613          	addi	a2,a2,196 # 103a8 <__modsi3+0x10010>
 2ec:	004006b7          	lui	a3,0x400
 2f0:	ffc00713          	li	a4,-4
 2f4:	00b557b3          	srl	a5,a0,a1
 2f8:	00f7f793          	andi	a5,a5,15
 2fc:	00f607b3          	add	a5,a2,a5
 300:	0007c783          	lbu	a5,0(a5)
 304:	ffc58593          	addi	a1,a1,-4
 308:	00f6a423          	sw	a5,8(a3) # 400008 <IO_BASE+0x8>
 30c:	fee594e3          	bne	a1,a4,2f4 <print_hex_digits+0x1c>
 310:	00008067          	ret

00000314 <__divsi3>:
 314:	06054063          	bltz	a0,374 <__umodsi3+0x10>
 318:	0605c663          	bltz	a1,384 <__umodsi3+0x20>

0000031c <__udivsi3>:
 31c:	00058613          	mv	a2,a1
 320:	00050593          	mv	a1,a0
 324:	fff00513          	li	a0,-1
 328:	02060c63          	beqz	a2,360 <__udivsi3+0x44>
 32c:	00100693          	li	a3,1
 330:	00b67a63          	bgeu	a2,a1,344 <__udivsi3+0x28>
 334:	00c05863          	blez	a2,344 <__udivsi3+0x28>
 338:	00161613          	slli	a2,a2,0x1
 33c:	00169693          	slli	a3,a3,0x1
 340:	feb66ae3          	bltu	a2,a1,334 <__udivsi3+0x18>
 344:	00000513          	li	a0,0
 348:	00c5e663          	bltu	a1,a2,354 <__udivsi3+0x38>
 34c:	40c585b3          	sub	a1,a1,a2
 350:	00d56533          	or	a0,a0,a3
 354:	0016d693          	srli	a3,a3,0x1
 358:	00165613          	srli	a2,a2,0x1
 35c:	fe0696e3          	bnez	a3,348 <__udivsi3+0x2c>
 360:	00008067          	ret

00000364 <__umodsi3>:
 364:	00008293          	mv	t0,ra
 368:	fb5ff0ef          	jal	ra,31c <__udivsi3>
 36c:	00058513          	mv	a0,a1
 370:	00028067          	jr	t0
 374:	40a00533          	neg	a0,a0
 378:	0005d863          	bgez	a1,388 <__umodsi3+0x24>
 37c:	40b005b3          	neg	a1,a1
 380:	f95ff06f          	j	314 <__divsi3>
 384:	40b005b3          	neg	a1,a1
 388:	00008293          	mv	t0,ra
 38c:	f89ff0ef          	jal	ra,314 <__divsi3>
 390:	40a00533          	neg	a0,a0
 394:	00028067          	jr	t0

00000398 <__modsi3>:
 398:	00008293          	mv	t0,ra
 39c:	0005ca63          	bltz	a1,3b0 <__modsi3+0x18>
 3a0:	00054c63          	bltz	a0,3b8 <__modsi3+0x20>
 3a4:	f79ff0ef          	jal	ra,31c <__udivsi3>
 3a8:	00058513          	mv	a0,a1
 3ac:	00028067          	jr	t0
 3b0:	40b005b3          	neg	a1,a1
 3b4:	fe0558e3          	bgez	a0,3a4 <__modsi3+0xc>
 3b8:	40a00533          	neg	a0,a0
 3bc:	f61ff0ef          	jal	ra,31c <__udivsi3>
 3c0:	40b00533          	neg	a0,a1
 3c4:	00028067          	jr	t0

Déassemblage de la section .data :

00010000 <.data>:
   10000:	2020                	.2byte	0x2020
   10002:	2020                	.2byte	0x2020
   10004:	2020                	.2byte	0x2020
   10006:	2020                	.2byte	0x2020
   10008:	2020                	.2byte	0x2020
   1000a:	2020                	.2byte	0x2020
   1000c:	2020                	.2byte	0x2020
   1000e:	7676                	.2byte	0x7676
   10010:	7676                	.2byte	0x7676
   10012:	7676                	.2byte	0x7676
   10014:	7676                	.2byte	0x7676
   10016:	7676                	.2byte	0x7676
   10018:	7676                	.2byte	0x7676
   1001a:	7676                	.2byte	0x7676
   1001c:	7676                	.2byte	0x7676
   1001e:	7676                	.2byte	0x7676
   10020:	7676                	.2byte	0x7676
   10022:	7676                	.2byte	0x7676
   10024:	7676                	.2byte	0x7676
   10026:	7676                	.2byte	0x7676
   10028:	7676                	.2byte	0x7676
   1002a:	7676                	.2byte	0x7676
   1002c:	7676                	.2byte	0x7676
   1002e:	000a                	.2byte	0xa
   10030:	2020                	.2byte	0x2020
   10032:	2020                	.2byte	0x2020
   10034:	2020                	.2byte	0x2020
   10036:	2020                	.2byte	0x2020
   10038:	2020                	.2byte	0x2020
   1003a:	2020                	.2byte	0x2020
   1003c:	2020                	.2byte	0x2020
   1003e:	2020                	.2byte	0x2020
   10040:	2020                	.2byte	0x2020
   10042:	7676                	.2byte	0x7676
   10044:	7676                	.2byte	0x7676
   10046:	7676                	.2byte	0x7676
   10048:	7676                	.2byte	0x7676
   1004a:	7676                	.2byte	0x7676
   1004c:	7676                	.2byte	0x7676
   1004e:	7676                	.2byte	0x7676
   10050:	7676                	.2byte	0x7676
   10052:	7676                	.2byte	0x7676
   10054:	7676                	.2byte	0x7676
   10056:	7676                	.2byte	0x7676
   10058:	7676                	.2byte	0x7676
   1005a:	7676                	.2byte	0x7676
   1005c:	7676                	.2byte	0x7676
   1005e:	000a                	.2byte	0xa
   10060:	7272                	.2byte	0x7272
   10062:	7272                	.2byte	0x7272
   10064:	7272                	.2byte	0x7272
   10066:	7272                	.2byte	0x7272
   10068:	7272                	.2byte	0x7272
   1006a:	7272                	.2byte	0x7272
   1006c:	2072                	.2byte	0x2072
   1006e:	2020                	.2byte	0x2020
   10070:	2020                	.2byte	0x2020
   10072:	2020                	.2byte	0x2020
   10074:	7676                	.2byte	0x7676
   10076:	7676                	.2byte	0x7676
   10078:	7676                	.2byte	0x7676
   1007a:	7676                	.2byte	0x7676
   1007c:	7676                	.2byte	0x7676
   1007e:	7676                	.2byte	0x7676
   10080:	7676                	.2byte	0x7676
   10082:	7676                	.2byte	0x7676
   10084:	7676                	.2byte	0x7676
   10086:	7676                	.2byte	0x7676
   10088:	7676                	.2byte	0x7676
   1008a:	7676                	.2byte	0x7676
   1008c:	7676                	.2byte	0x7676
   1008e:	000a                	.2byte	0xa
   10090:	7272                	.2byte	0x7272
   10092:	7272                	.2byte	0x7272
   10094:	7272                	.2byte	0x7272
   10096:	7272                	.2byte	0x7272
   10098:	7272                	.2byte	0x7272
   1009a:	7272                	.2byte	0x7272
   1009c:	7272                	.2byte	0x7272
   1009e:	7272                	.2byte	0x7272
   100a0:	2020                	.2byte	0x2020
   100a2:	2020                	.2byte	0x2020
   100a4:	2020                	.2byte	0x2020
   100a6:	7676                	.2byte	0x7676
   100a8:	7676                	.2byte	0x7676
   100aa:	7676                	.2byte	0x7676
   100ac:	7676                	.2byte	0x7676
   100ae:	7676                	.2byte	0x7676
   100b0:	7676                	.2byte	0x7676
   100b2:	7676                	.2byte	0x7676
   100b4:	7676                	.2byte	0x7676
   100b6:	7676                	.2byte	0x7676
   100b8:	7676                	.2byte	0x7676
   100ba:	7676                	.2byte	0x7676
   100bc:	7676                	.2byte	0x7676
   100be:	000a                	.2byte	0xa
   100c0:	7272                	.2byte	0x7272
   100c2:	7272                	.2byte	0x7272
   100c4:	7272                	.2byte	0x7272
   100c6:	7272                	.2byte	0x7272
   100c8:	7272                	.2byte	0x7272
   100ca:	7272                	.2byte	0x7272
   100cc:	7272                	.2byte	0x7272
   100ce:	7272                	.2byte	0x7272
   100d0:	7272                	.2byte	0x7272
   100d2:	2020                	.2byte	0x2020
   100d4:	2020                	.2byte	0x2020
   100d6:	7676                	.2byte	0x7676
   100d8:	7676                	.2byte	0x7676
   100da:	7676                	.2byte	0x7676
   100dc:	7676                	.2byte	0x7676
   100de:	7676                	.2byte	0x7676
   100e0:	7676                	.2byte	0x7676
   100e2:	7676                	.2byte	0x7676
   100e4:	7676                	.2byte	0x7676
   100e6:	7676                	.2byte	0x7676
   100e8:	7676                	.2byte	0x7676
   100ea:	7676                	.2byte	0x7676
   100ec:	7676                	.2byte	0x7676
   100ee:	000a                	.2byte	0xa
   100f0:	7272                	.2byte	0x7272
   100f2:	7272                	.2byte	0x7272
   100f4:	7272                	.2byte	0x7272
   100f6:	7272                	.2byte	0x7272
   100f8:	7272                	.2byte	0x7272
   100fa:	7272                	.2byte	0x7272
   100fc:	7272                	.2byte	0x7272
   100fe:	7272                	.2byte	0x7272
   10100:	2020                	.2byte	0x2020
   10102:	2020                	.2byte	0x2020
   10104:	2020                	.2byte	0x2020
   10106:	7676                	.2byte	0x7676
   10108:	7676                	.2byte	0x7676
   1010a:	7676                	.2byte	0x7676
   1010c:	7676                	.2byte	0x7676
   1010e:	7676                	.2byte	0x7676
   10110:	7676                	.2byte	0x7676
   10112:	7676                	.2byte	0x7676
   10114:	7676                	.2byte	0x7676
   10116:	7676                	.2byte	0x7676
   10118:	7676                	.2byte	0x7676
   1011a:	7676                	.2byte	0x7676
   1011c:	2020                	.2byte	0x2020
   1011e:	000a                	.2byte	0xa
   10120:	7272                	.2byte	0x7272
   10122:	7272                	.2byte	0x7272
   10124:	7272                	.2byte	0x7272
   10126:	7272                	.2byte	0x7272
   10128:	7272                	.2byte	0x7272
   1012a:	7272                	.2byte	0x7272
   1012c:	2072                	.2byte	0x2072
   1012e:	2020                	.2byte	0x2020
   10130:	2020                	.2byte	0x2020
   10132:	2020                	.2byte	0x2020
   10134:	7676                	.2byte	0x7676
   10136:	7676                	.2byte	0x7676
   10138:	7676                	.2byte	0x7676
   1013a:	7676                	.2byte	0x7676
   1013c:	7676                	.2byte	0x7676
   1013e:	7676                	.2byte	0x7676
   10140:	7676                	.2byte	0x7676
   10142:	7676                	.2byte	0x7676
   10144:	7676                	.2byte	0x7676
   10146:	7676                	.2byte	0x7676
   10148:	7676                	.2byte	0x7676
   1014a:	2020                	.2byte	0x2020
   1014c:	2020                	.2byte	0x2020
   1014e:	000a                	.2byte	0xa
   10150:	7272                	.2byte	0x7272
   10152:	2020                	.2byte	0x2020
   10154:	2020                	.2byte	0x2020
   10156:	2020                	.2byte	0x2020
   10158:	2020                	.2byte	0x2020
   1015a:	2020                	.2byte	0x2020
   1015c:	2020                	.2byte	0x2020
   1015e:	2020                	.2byte	0x2020
   10160:	2020                	.2byte	0x2020
   10162:	7676                	.2byte	0x7676
   10164:	7676                	.2byte	0x7676
   10166:	7676                	.2byte	0x7676
   10168:	7676                	.2byte	0x7676
   1016a:	7676                	.2byte	0x7676
   1016c:	7676                	.2byte	0x7676
   1016e:	7676                	.2byte	0x7676
   10170:	7676                	.2byte	0x7676
   10172:	7676                	.2byte	0x7676
   10174:	7676                	.2byte	0x7676
   10176:	7676                	.2byte	0x7676
   10178:	2020                	.2byte	0x2020
   1017a:	2020                	.2byte	0x2020
   1017c:	2020                	.2byte	0x2020
   1017e:	000a                	.2byte	0xa
   10180:	7272                	.2byte	0x7272
   10182:	2020                	.2byte	0x2020
   10184:	2020                	.2byte	0x2020
   10186:	2020                	.2byte	0x2020
   10188:	2020                	.2byte	0x2020
   1018a:	2020                	.2byte	0x2020
   1018c:	2020                	.2byte	0x2020
   1018e:	7676                	.2byte	0x7676
   10190:	7676                	.2byte	0x7676
   10192:	7676                	.2byte	0x7676
   10194:	7676                	.2byte	0x7676
   10196:	7676                	.2byte	0x7676
   10198:	7676                	.2byte	0x7676
   1019a:	7676                	.2byte	0x7676
   1019c:	7676                	.2byte	0x7676
   1019e:	7676                	.2byte	0x7676
   101a0:	7676                	.2byte	0x7676
   101a2:	7676                	.2byte	0x7676
   101a4:	7676                	.2byte	0x7676
   101a6:	2020                	.2byte	0x2020
   101a8:	2020                	.2byte	0x2020
   101aa:	2020                	.2byte	0x2020
   101ac:	7272                	.2byte	0x7272
   101ae:	000a                	.2byte	0xa
   101b0:	7272                	.2byte	0x7272
   101b2:	7272                	.2byte	0x7272
   101b4:	2020                	.2byte	0x2020
   101b6:	2020                	.2byte	0x2020
   101b8:	2020                	.2byte	0x2020
   101ba:	7676                	.2byte	0x7676
   101bc:	7676                	.2byte	0x7676
   101be:	7676                	.2byte	0x7676
   101c0:	7676                	.2byte	0x7676
   101c2:	7676                	.2byte	0x7676
   101c4:	7676                	.2byte	0x7676
   101c6:	7676                	.2byte	0x7676
   101c8:	7676                	.2byte	0x7676
   101ca:	7676                	.2byte	0x7676
   101cc:	7676                	.2byte	0x7676
   101ce:	7676                	.2byte	0x7676
   101d0:	7676                	.2byte	0x7676
   101d2:	7676                	.2byte	0x7676
   101d4:	2020                	.2byte	0x2020
   101d6:	2020                	.2byte	0x2020
   101d8:	2020                	.2byte	0x2020
   101da:	7272                	.2byte	0x7272
   101dc:	7272                	.2byte	0x7272
   101de:	000a                	.2byte	0xa
   101e0:	7272                	.2byte	0x7272
   101e2:	7272                	.2byte	0x7272
   101e4:	7272                	.2byte	0x7272
   101e6:	2020                	.2byte	0x2020
   101e8:	2020                	.2byte	0x2020
   101ea:	2020                	.2byte	0x2020
   101ec:	7676                	.2byte	0x7676
   101ee:	7676                	.2byte	0x7676
   101f0:	7676                	.2byte	0x7676
   101f2:	7676                	.2byte	0x7676
   101f4:	7676                	.2byte	0x7676
   101f6:	7676                	.2byte	0x7676
   101f8:	7676                	.2byte	0x7676
   101fa:	7676                	.2byte	0x7676
   101fc:	7676                	.2byte	0x7676
   101fe:	7676                	.2byte	0x7676
   10200:	7676                	.2byte	0x7676
   10202:	2020                	.2byte	0x2020
   10204:	2020                	.2byte	0x2020
   10206:	2020                	.2byte	0x2020
   10208:	7272                	.2byte	0x7272
   1020a:	7272                	.2byte	0x7272
   1020c:	7272                	.2byte	0x7272
   1020e:	000a                	.2byte	0xa
   10210:	7272                	.2byte	0x7272
   10212:	7272                	.2byte	0x7272
   10214:	7272                	.2byte	0x7272
   10216:	7272                	.2byte	0x7272
   10218:	2020                	.2byte	0x2020
   1021a:	2020                	.2byte	0x2020
   1021c:	2020                	.2byte	0x2020
   1021e:	7676                	.2byte	0x7676
   10220:	7676                	.2byte	0x7676
   10222:	7676                	.2byte	0x7676
   10224:	7676                	.2byte	0x7676
   10226:	7676                	.2byte	0x7676
   10228:	7676                	.2byte	0x7676
   1022a:	7676                	.2byte	0x7676
   1022c:	7676                	.2byte	0x7676
   1022e:	7676                	.2byte	0x7676
   10230:	2020                	.2byte	0x2020
   10232:	2020                	.2byte	0x2020
   10234:	2020                	.2byte	0x2020
   10236:	7272                	.2byte	0x7272
   10238:	7272                	.2byte	0x7272
   1023a:	7272                	.2byte	0x7272
   1023c:	7272                	.2byte	0x7272
   1023e:	000a                	.2byte	0xa
   10240:	7272                	.2byte	0x7272
   10242:	7272                	.2byte	0x7272
   10244:	7272                	.2byte	0x7272
   10246:	7272                	.2byte	0x7272
   10248:	7272                	.2byte	0x7272
   1024a:	2020                	.2byte	0x2020
   1024c:	2020                	.2byte	0x2020
   1024e:	2020                	.2byte	0x2020
   10250:	7676                	.2byte	0x7676
   10252:	7676                	.2byte	0x7676
   10254:	7676                	.2byte	0x7676
   10256:	7676                	.2byte	0x7676
   10258:	7676                	.2byte	0x7676
   1025a:	7676                	.2byte	0x7676
   1025c:	7676                	.2byte	0x7676
   1025e:	2020                	.2byte	0x2020
   10260:	2020                	.2byte	0x2020
   10262:	2020                	.2byte	0x2020
   10264:	7272                	.2byte	0x7272
   10266:	7272                	.2byte	0x7272
   10268:	7272                	.2byte	0x7272
   1026a:	7272                	.2byte	0x7272
   1026c:	7272                	.2byte	0x7272
   1026e:	000a                	.2byte	0xa
   10270:	7272                	.2byte	0x7272
   10272:	7272                	.2byte	0x7272
   10274:	7272                	.2byte	0x7272
   10276:	7272                	.2byte	0x7272
   10278:	7272                	.2byte	0x7272
   1027a:	7272                	.2byte	0x7272
   1027c:	2020                	.2byte	0x2020
   1027e:	2020                	.2byte	0x2020
   10280:	2020                	.2byte	0x2020
   10282:	7676                	.2byte	0x7676
   10284:	7676                	.2byte	0x7676
   10286:	7676                	.2byte	0x7676
   10288:	7676                	.2byte	0x7676
   1028a:	7676                	.2byte	0x7676
   1028c:	2020                	.2byte	0x2020
   1028e:	2020                	.2byte	0x2020
   10290:	2020                	.2byte	0x2020
   10292:	7272                	.2byte	0x7272
   10294:	7272                	.2byte	0x7272
   10296:	7272                	.2byte	0x7272
   10298:	7272                	.2byte	0x7272
   1029a:	7272                	.2byte	0x7272
   1029c:	7272                	.2byte	0x7272
   1029e:	000a                	.2byte	0xa
   102a0:	7272                	.2byte	0x7272
   102a2:	7272                	.2byte	0x7272
   102a4:	7272                	.2byte	0x7272
   102a6:	7272                	.2byte	0x7272
   102a8:	7272                	.2byte	0x7272
   102aa:	7272                	.2byte	0x7272
   102ac:	7272                	.2byte	0x7272
   102ae:	2020                	.2byte	0x2020
   102b0:	2020                	.2byte	0x2020
   102b2:	2020                	.2byte	0x2020
   102b4:	7676                	.2byte	0x7676
   102b6:	7676                	.2byte	0x7676
   102b8:	7676                	.2byte	0x7676
   102ba:	2020                	.2byte	0x2020
   102bc:	2020                	.2byte	0x2020
   102be:	2020                	.2byte	0x2020
   102c0:	7272                	.2byte	0x7272
   102c2:	7272                	.2byte	0x7272
   102c4:	7272                	.2byte	0x7272
   102c6:	7272                	.2byte	0x7272
   102c8:	7272                	.2byte	0x7272
   102ca:	7272                	.2byte	0x7272
   102cc:	7272                	.2byte	0x7272
   102ce:	000a                	.2byte	0xa
   102d0:	7272                	.2byte	0x7272
   102d2:	7272                	.2byte	0x7272
   102d4:	7272                	.2byte	0x7272
   102d6:	7272                	.2byte	0x7272
   102d8:	7272                	.2byte	0x7272
   102da:	7272                	.2byte	0x7272
   102dc:	7272                	.2byte	0x7272
   102de:	7272                	.2byte	0x7272
   102e0:	2020                	.2byte	0x2020
   102e2:	2020                	.2byte	0x2020
   102e4:	2020                	.2byte	0x2020
   102e6:	7676                	.2byte	0x7676
   102e8:	2020                	.2byte	0x2020
   102ea:	2020                	.2byte	0x2020
   102ec:	2020                	.2byte	0x2020
   102ee:	7272                	.2byte	0x7272
   102f0:	7272                	.2byte	0x7272
   102f2:	7272                	.2byte	0x7272
   102f4:	7272                	.2byte	0x7272
   102f6:	7272                	.2byte	0x7272
   102f8:	7272                	.2byte	0x7272
   102fa:	7272                	.2byte	0x7272
   102fc:	7272                	.2byte	0x7272
   102fe:	000a                	.2byte	0xa
   10300:	7272                	.2byte	0x7272
   10302:	7272                	.2byte	0x7272
   10304:	7272                	.2byte	0x7272
   10306:	7272                	.2byte	0x7272
   10308:	7272                	.2byte	0x7272
   1030a:	7272                	.2byte	0x7272
   1030c:	7272                	.2byte	0x7272
   1030e:	7272                	.2byte	0x7272
   10310:	7272                	.2byte	0x7272
   10312:	2020                	.2byte	0x2020
   10314:	2020                	.2byte	0x2020
   10316:	2020                	.2byte	0x2020
   10318:	2020                	.2byte	0x2020
   1031a:	2020                	.2byte	0x2020
   1031c:	7272                	.2byte	0x7272
   1031e:	7272                	.2byte	0x7272
   10320:	7272                	.2byte	0x7272
   10322:	7272                	.2byte	0x7272
   10324:	7272                	.2byte	0x7272
   10326:	7272                	.2byte	0x7272
   10328:	7272                	.2byte	0x7272
   1032a:	7272                	.2byte	0x7272
   1032c:	7272                	.2byte	0x7272
   1032e:	000a                	.2byte	0xa
   10330:	7272                	.2byte	0x7272
   10332:	7272                	.2byte	0x7272
   10334:	7272                	.2byte	0x7272
   10336:	7272                	.2byte	0x7272
   10338:	7272                	.2byte	0x7272
   1033a:	7272                	.2byte	0x7272
   1033c:	7272                	.2byte	0x7272
   1033e:	7272                	.2byte	0x7272
   10340:	7272                	.2byte	0x7272
   10342:	7272                	.2byte	0x7272
   10344:	2020                	.2byte	0x2020
   10346:	2020                	.2byte	0x2020
   10348:	2020                	.2byte	0x2020
   1034a:	7272                	.2byte	0x7272
   1034c:	7272                	.2byte	0x7272
   1034e:	7272                	.2byte	0x7272
   10350:	7272                	.2byte	0x7272
   10352:	7272                	.2byte	0x7272
   10354:	7272                	.2byte	0x7272
   10356:	7272                	.2byte	0x7272
   10358:	7272                	.2byte	0x7272
   1035a:	7272                	.2byte	0x7272
   1035c:	7272                	.2byte	0x7272
   1035e:	000a                	.2byte	0xa
   10360:	7272                	.2byte	0x7272
   10362:	7272                	.2byte	0x7272
   10364:	7272                	.2byte	0x7272
   10366:	7272                	.2byte	0x7272
   10368:	7272                	.2byte	0x7272
   1036a:	7272                	.2byte	0x7272
   1036c:	7272                	.2byte	0x7272
   1036e:	7272                	.2byte	0x7272
   10370:	7272                	.2byte	0x7272
   10372:	7272                	.2byte	0x7272
   10374:	7272                	.2byte	0x7272
   10376:	2020                	.2byte	0x2020
   10378:	7272                	.2byte	0x7272
   1037a:	7272                	.2byte	0x7272
   1037c:	7272                	.2byte	0x7272
   1037e:	7272                	.2byte	0x7272
   10380:	7272                	.2byte	0x7272
   10382:	7272                	.2byte	0x7272
   10384:	7272                	.2byte	0x7272
   10386:	7272                	.2byte	0x7272
   10388:	7272                	.2byte	0x7272
   1038a:	7272                	.2byte	0x7272
   1038c:	7272                	.2byte	0x7272
   1038e:	000a                	.2byte	0xa
   10390:	203e                	.2byte	0x203e
   10392:	6974                	.2byte	0x6974
   10394:	656d                	.2byte	0x656d
   10396:	3a20                	.2byte	0x3a20
   10398:	0020                	.2byte	0x20
   1039a:	0000                	.2byte	0x0
   1039c:	203e                	.2byte	0x203e
   1039e:	6e69                	.2byte	0x6e69
   103a0:	3a206e73          	.4byte	0x3a206e73
   103a4:	0020                	.2byte	0x20
   103a6:	0000                	.2byte	0x0
   103a8:	3130                	.2byte	0x3130
   103aa:	3332                	.2byte	0x3332
   103ac:	3534                	.2byte	0x3534
   103ae:	3736                	.2byte	0x3736
   103b0:	3938                	.2byte	0x3938
   103b2:	4241                	.2byte	0x4241
   103b4:	46454443          	.4byte	0x46454443
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
