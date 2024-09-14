
./bin/riscv_basic_test.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <start>:
       0:	004001b7          	lui	gp,0x400
       4:	00020137          	lui	sp,0x20
       8:	058000ef          	jal	ra,60 <main>
       c:	00100073          	ebreak

00000010 <time>:
      10:	fe010113          	addi	sp,sp,-32 # 1ffe0 <__modsi3+0x1dc50>
      14:	00812e23          	sw	s0,28(sp)
      18:	02010413          	addi	s0,sp,32
      1c:	c00027f3          	rdcycle	a5
      20:	fef42623          	sw	a5,-20(s0)
      24:	fec42783          	lw	a5,-20(s0)
      28:	00078513          	mv	a0,a5
      2c:	01c12403          	lw	s0,28(sp)
      30:	02010113          	addi	sp,sp,32
      34:	00008067          	ret

00000038 <insn>:
      38:	fe010113          	addi	sp,sp,-32
      3c:	00812e23          	sw	s0,28(sp)
      40:	02010413          	addi	s0,sp,32
      44:	c02027f3          	rdinstret	a5
      48:	fef42623          	sw	a5,-20(s0)
      4c:	fec42783          	lw	a5,-20(s0)
      50:	00078513          	mv	a0,a5
      54:	01c12403          	lw	s0,28(sp)
      58:	02010113          	addi	sp,sp,32
      5c:	00008067          	ret

00000060 <main>:
      60:	a9010113          	addi	sp,sp,-1392
      64:	56112623          	sw	ra,1388(sp)
      68:	56812423          	sw	s0,1384(sp)
      6c:	57010413          	addi	s0,sp,1392
      70:	000107b7          	lui	a5,0x10
      74:	00078513          	mv	a0,a5
      78:	114020ef          	jal	ra,218c <print_string>
      7c:	fe042623          	sw	zero,-20(s0)
      80:	fe042423          	sw	zero,-24(s0)
      84:	fec42783          	lw	a5,-20(s0)
      88:	fe842703          	lw	a4,-24(s0)
      8c:	00e787b3          	add	a5,a5,a4
      90:	fef42223          	sw	a5,-28(s0)
      94:	fe442783          	lw	a5,-28(s0)
      98:	00078c63          	beqz	a5,b0 <main+0x50>
      9c:	00000513          	li	a0,0
      a0:	13c020ef          	jal	ra,21dc <print_dec>
      a4:	000107b7          	lui	a5,0x10
      a8:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
      ac:	100020ef          	jal	ra,21ac <puts>
      b0:	00100793          	li	a5,1
      b4:	fef42023          	sw	a5,-32(s0)
      b8:	00100793          	li	a5,1
      bc:	fcf42e23          	sw	a5,-36(s0)
      c0:	fe042783          	lw	a5,-32(s0)
      c4:	fdc42703          	lw	a4,-36(s0)
      c8:	00e787b3          	add	a5,a5,a4
      cc:	fcf42c23          	sw	a5,-40(s0)
      d0:	fd842703          	lw	a4,-40(s0)
      d4:	00200793          	li	a5,2
      d8:	00f70c63          	beq	a4,a5,f0 <main+0x90>
      dc:	00100513          	li	a0,1
      e0:	0fc020ef          	jal	ra,21dc <print_dec>
      e4:	000107b7          	lui	a5,0x10
      e8:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
      ec:	0c0020ef          	jal	ra,21ac <puts>
      f0:	00300793          	li	a5,3
      f4:	fcf42a23          	sw	a5,-44(s0)
      f8:	00700793          	li	a5,7
      fc:	fcf42823          	sw	a5,-48(s0)
     100:	fd442783          	lw	a5,-44(s0)
     104:	fd042703          	lw	a4,-48(s0)
     108:	00e787b3          	add	a5,a5,a4
     10c:	fcf42623          	sw	a5,-52(s0)
     110:	fcc42703          	lw	a4,-52(s0)
     114:	00a00793          	li	a5,10
     118:	00f70c63          	beq	a4,a5,130 <main+0xd0>
     11c:	00200513          	li	a0,2
     120:	0bc020ef          	jal	ra,21dc <print_dec>
     124:	000107b7          	lui	a5,0x10
     128:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     12c:	080020ef          	jal	ra,21ac <puts>
     130:	fc042423          	sw	zero,-56(s0)
     134:	fc842783          	lw	a5,-56(s0)
     138:	00078793          	mv	a5,a5
     13c:	fcf42223          	sw	a5,-60(s0)
     140:	fc442783          	lw	a5,-60(s0)
     144:	00078c63          	beqz	a5,15c <main+0xfc>
     148:	00300513          	li	a0,3
     14c:	090020ef          	jal	ra,21dc <print_dec>
     150:	000107b7          	lui	a5,0x10
     154:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     158:	054020ef          	jal	ra,21ac <puts>
     15c:	00100793          	li	a5,1
     160:	fcf42023          	sw	a5,-64(s0)
     164:	fc042783          	lw	a5,-64(s0)
     168:	00178793          	addi	a5,a5,1
     16c:	faf42e23          	sw	a5,-68(s0)
     170:	fbc42703          	lw	a4,-68(s0)
     174:	00200793          	li	a5,2
     178:	00f70c63          	beq	a4,a5,190 <main+0x130>
     17c:	00400513          	li	a0,4
     180:	05c020ef          	jal	ra,21dc <print_dec>
     184:	000107b7          	lui	a5,0x10
     188:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     18c:	020020ef          	jal	ra,21ac <puts>
     190:	00300793          	li	a5,3
     194:	faf42c23          	sw	a5,-72(s0)
     198:	fb842783          	lw	a5,-72(s0)
     19c:	00778793          	addi	a5,a5,7
     1a0:	faf42a23          	sw	a5,-76(s0)
     1a4:	fb442703          	lw	a4,-76(s0)
     1a8:	00a00793          	li	a5,10
     1ac:	00f70c63          	beq	a4,a5,1c4 <main+0x164>
     1b0:	00500513          	li	a0,5
     1b4:	028020ef          	jal	ra,21dc <print_dec>
     1b8:	000107b7          	lui	a5,0x10
     1bc:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     1c0:	7ed010ef          	jal	ra,21ac <puts>
     1c4:	ff0107b7          	lui	a5,0xff010
     1c8:	f0078793          	addi	a5,a5,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
     1cc:	faf42823          	sw	a5,-80(s0)
     1d0:	0f0f17b7          	lui	a5,0xf0f1
     1d4:	f0f78793          	addi	a5,a5,-241 # f0f0f0f <IO_BASE+0xecf0f0f>
     1d8:	faf42623          	sw	a5,-84(s0)
     1dc:	fb042783          	lw	a5,-80(s0)
     1e0:	fac42703          	lw	a4,-84(s0)
     1e4:	00e7f7b3          	and	a5,a5,a4
     1e8:	faf42423          	sw	a5,-88(s0)
     1ec:	fa842703          	lw	a4,-88(s0)
     1f0:	0f0017b7          	lui	a5,0xf001
     1f4:	f0078793          	addi	a5,a5,-256 # f000f00 <IO_BASE+0xec00f00>
     1f8:	00f70c63          	beq	a4,a5,210 <main+0x1b0>
     1fc:	00600513          	li	a0,6
     200:	7dd010ef          	jal	ra,21dc <print_dec>
     204:	000107b7          	lui	a5,0x10
     208:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     20c:	7a1010ef          	jal	ra,21ac <puts>
     210:	0ff017b7          	lui	a5,0xff01
     214:	ff078793          	addi	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
     218:	faf42223          	sw	a5,-92(s0)
     21c:	f0f0f7b7          	lui	a5,0xf0f0f
     220:	0f078793          	addi	a5,a5,240 # f0f0f0f0 <IO_BASE+0xf0b0f0f0>
     224:	faf42023          	sw	a5,-96(s0)
     228:	fa442783          	lw	a5,-92(s0)
     22c:	fa042703          	lw	a4,-96(s0)
     230:	00e7f7b3          	and	a5,a5,a4
     234:	f8f42e23          	sw	a5,-100(s0)
     238:	f9c42703          	lw	a4,-100(s0)
     23c:	00f007b7          	lui	a5,0xf00
     240:	0f078793          	addi	a5,a5,240 # f000f0 <IO_BASE+0xb000f0>
     244:	00f70c63          	beq	a4,a5,25c <main+0x1fc>
     248:	00700513          	li	a0,7
     24c:	791010ef          	jal	ra,21dc <print_dec>
     250:	000107b7          	lui	a5,0x10
     254:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     258:	755010ef          	jal	ra,21ac <puts>
     25c:	00ff07b7          	lui	a5,0xff0
     260:	0ff78793          	addi	a5,a5,255 # ff00ff <IO_BASE+0xbf00ff>
     264:	f8f42c23          	sw	a5,-104(s0)
     268:	0f0f17b7          	lui	a5,0xf0f1
     26c:	f0f78793          	addi	a5,a5,-241 # f0f0f0f <IO_BASE+0xecf0f0f>
     270:	f8f42a23          	sw	a5,-108(s0)
     274:	f9842783          	lw	a5,-104(s0)
     278:	f9442703          	lw	a4,-108(s0)
     27c:	00e7f7b3          	and	a5,a5,a4
     280:	f8f42823          	sw	a5,-112(s0)
     284:	f9042703          	lw	a4,-112(s0)
     288:	000f07b7          	lui	a5,0xf0
     28c:	00f78793          	addi	a5,a5,15 # f000f <__modsi3+0xedc7f>
     290:	00f70c63          	beq	a4,a5,2a8 <main+0x248>
     294:	00800513          	li	a0,8
     298:	745010ef          	jal	ra,21dc <print_dec>
     29c:	000107b7          	lui	a5,0x10
     2a0:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     2a4:	709010ef          	jal	ra,21ac <puts>
     2a8:	f00ff7b7          	lui	a5,0xf00ff
     2ac:	00f78793          	addi	a5,a5,15 # f00ff00f <IO_BASE+0xefcff00f>
     2b0:	f8f42623          	sw	a5,-116(s0)
     2b4:	f0f0f7b7          	lui	a5,0xf0f0f
     2b8:	0f078793          	addi	a5,a5,240 # f0f0f0f0 <IO_BASE+0xf0b0f0f0>
     2bc:	f8f42423          	sw	a5,-120(s0)
     2c0:	f8c42783          	lw	a5,-116(s0)
     2c4:	f8842703          	lw	a4,-120(s0)
     2c8:	00e7f7b3          	and	a5,a5,a4
     2cc:	f8f42223          	sw	a5,-124(s0)
     2d0:	f8442703          	lw	a4,-124(s0)
     2d4:	f000f7b7          	lui	a5,0xf000f
     2d8:	00f70c63          	beq	a4,a5,2f0 <main+0x290>
     2dc:	00900513          	li	a0,9
     2e0:	6fd010ef          	jal	ra,21dc <print_dec>
     2e4:	000107b7          	lui	a5,0x10
     2e8:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     2ec:	6c1010ef          	jal	ra,21ac <puts>
     2f0:	ff0107b7          	lui	a5,0xff010
     2f4:	f0078793          	addi	a5,a5,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
     2f8:	f8f42023          	sw	a5,-128(s0)
     2fc:	f8042783          	lw	a5,-128(s0)
     300:	f0f7f793          	andi	a5,a5,-241
     304:	f6f42e23          	sw	a5,-132(s0)
     308:	f7c42703          	lw	a4,-132(s0)
     30c:	ff0107b7          	lui	a5,0xff010
     310:	f0078793          	addi	a5,a5,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
     314:	00f70c63          	beq	a4,a5,32c <main+0x2cc>
     318:	00a00513          	li	a0,10
     31c:	6c1010ef          	jal	ra,21dc <print_dec>
     320:	000107b7          	lui	a5,0x10
     324:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     328:	685010ef          	jal	ra,21ac <puts>
     32c:	0ff017b7          	lui	a5,0xff01
     330:	ff078793          	addi	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
     334:	f6f42c23          	sw	a5,-136(s0)
     338:	f7842783          	lw	a5,-136(s0)
     33c:	0f07f793          	andi	a5,a5,240
     340:	f6f42a23          	sw	a5,-140(s0)
     344:	f7442703          	lw	a4,-140(s0)
     348:	0f000793          	li	a5,240
     34c:	00f70c63          	beq	a4,a5,364 <main+0x304>
     350:	00b00513          	li	a0,11
     354:	689010ef          	jal	ra,21dc <print_dec>
     358:	000107b7          	lui	a5,0x10
     35c:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     360:	64d010ef          	jal	ra,21ac <puts>
     364:	00ff07b7          	lui	a5,0xff0
     368:	0ff78793          	addi	a5,a5,255 # ff00ff <IO_BASE+0xbf00ff>
     36c:	f6f42823          	sw	a5,-144(s0)
     370:	f7042783          	lw	a5,-144(s0)
     374:	70f7f793          	andi	a5,a5,1807
     378:	f6f42623          	sw	a5,-148(s0)
     37c:	f6c42703          	lw	a4,-148(s0)
     380:	00f00793          	li	a5,15
     384:	00f70c63          	beq	a4,a5,39c <main+0x33c>
     388:	00c00513          	li	a0,12
     38c:	651010ef          	jal	ra,21dc <print_dec>
     390:	000107b7          	lui	a5,0x10
     394:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     398:	615010ef          	jal	ra,21ac <puts>
     39c:	f00ff7b7          	lui	a5,0xf00ff
     3a0:	00f78793          	addi	a5,a5,15 # f00ff00f <IO_BASE+0xefcff00f>
     3a4:	f6f42423          	sw	a5,-152(s0)
     3a8:	f6842783          	lw	a5,-152(s0)
     3ac:	0f07f793          	andi	a5,a5,240
     3b0:	f6f42223          	sw	a5,-156(s0)
     3b4:	f6442783          	lw	a5,-156(s0)
     3b8:	00078c63          	beqz	a5,3d0 <main+0x370>
     3bc:	00d00513          	li	a0,13
     3c0:	61d010ef          	jal	ra,21dc <print_dec>
     3c4:	000107b7          	lui	a5,0x10
     3c8:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     3cc:	5e1010ef          	jal	ra,21ac <puts>
     3d0:	ff0107b7          	lui	a5,0xff010
     3d4:	f0078793          	addi	a5,a5,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
     3d8:	f6f42023          	sw	a5,-160(s0)
     3dc:	0f0f17b7          	lui	a5,0xf0f1
     3e0:	f0f78793          	addi	a5,a5,-241 # f0f0f0f <IO_BASE+0xecf0f0f>
     3e4:	f4f42e23          	sw	a5,-164(s0)
     3e8:	f6042783          	lw	a5,-160(s0)
     3ec:	f5c42703          	lw	a4,-164(s0)
     3f0:	00e7e7b3          	or	a5,a5,a4
     3f4:	f4f42c23          	sw	a5,-168(s0)
     3f8:	f5842703          	lw	a4,-168(s0)
     3fc:	ff1007b7          	lui	a5,0xff100
     400:	f0f78793          	addi	a5,a5,-241 # ff0fff0f <IO_BASE+0xfecfff0f>
     404:	00f70c63          	beq	a4,a5,41c <main+0x3bc>
     408:	00e00513          	li	a0,14
     40c:	5d1010ef          	jal	ra,21dc <print_dec>
     410:	000107b7          	lui	a5,0x10
     414:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     418:	595010ef          	jal	ra,21ac <puts>
     41c:	0ff017b7          	lui	a5,0xff01
     420:	ff078793          	addi	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
     424:	f4f42a23          	sw	a5,-172(s0)
     428:	f0f0f7b7          	lui	a5,0xf0f0f
     42c:	0f078793          	addi	a5,a5,240 # f0f0f0f0 <IO_BASE+0xf0b0f0f0>
     430:	f4f42823          	sw	a5,-176(s0)
     434:	f5442783          	lw	a5,-172(s0)
     438:	f5042703          	lw	a4,-176(s0)
     43c:	00e7e7b3          	or	a5,a5,a4
     440:	f4f42623          	sw	a5,-180(s0)
     444:	f4c42703          	lw	a4,-180(s0)
     448:	fff107b7          	lui	a5,0xfff10
     44c:	ff078793          	addi	a5,a5,-16 # fff0fff0 <IO_BASE+0xffb0fff0>
     450:	00f70c63          	beq	a4,a5,468 <main+0x408>
     454:	00f00513          	li	a0,15
     458:	585010ef          	jal	ra,21dc <print_dec>
     45c:	000107b7          	lui	a5,0x10
     460:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     464:	549010ef          	jal	ra,21ac <puts>
     468:	00ff07b7          	lui	a5,0xff0
     46c:	0ff78793          	addi	a5,a5,255 # ff00ff <IO_BASE+0xbf00ff>
     470:	f4f42423          	sw	a5,-184(s0)
     474:	0f0f17b7          	lui	a5,0xf0f1
     478:	f0f78793          	addi	a5,a5,-241 # f0f0f0f <IO_BASE+0xecf0f0f>
     47c:	f4f42223          	sw	a5,-188(s0)
     480:	f4842783          	lw	a5,-184(s0)
     484:	f4442703          	lw	a4,-188(s0)
     488:	00e7e7b3          	or	a5,a5,a4
     48c:	f4f42023          	sw	a5,-192(s0)
     490:	f4042703          	lw	a4,-192(s0)
     494:	0fff17b7          	lui	a5,0xfff1
     498:	fff78793          	addi	a5,a5,-1 # fff0fff <IO_BASE+0xfbf0fff>
     49c:	00f70c63          	beq	a4,a5,4b4 <main+0x454>
     4a0:	01000513          	li	a0,16
     4a4:	539010ef          	jal	ra,21dc <print_dec>
     4a8:	000107b7          	lui	a5,0x10
     4ac:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     4b0:	4fd010ef          	jal	ra,21ac <puts>
     4b4:	f00ff7b7          	lui	a5,0xf00ff
     4b8:	00f78793          	addi	a5,a5,15 # f00ff00f <IO_BASE+0xefcff00f>
     4bc:	f2f42e23          	sw	a5,-196(s0)
     4c0:	f0f0f7b7          	lui	a5,0xf0f0f
     4c4:	0f078793          	addi	a5,a5,240 # f0f0f0f0 <IO_BASE+0xf0b0f0f0>
     4c8:	f2f42c23          	sw	a5,-200(s0)
     4cc:	f3c42783          	lw	a5,-196(s0)
     4d0:	f3842703          	lw	a4,-200(s0)
     4d4:	00e7e7b3          	or	a5,a5,a4
     4d8:	f2f42a23          	sw	a5,-204(s0)
     4dc:	f3442703          	lw	a4,-204(s0)
     4e0:	f0fff7b7          	lui	a5,0xf0fff
     4e4:	0ff78793          	addi	a5,a5,255 # f0fff0ff <IO_BASE+0xf0bff0ff>
     4e8:	00f70c63          	beq	a4,a5,500 <main+0x4a0>
     4ec:	01100513          	li	a0,17
     4f0:	4ed010ef          	jal	ra,21dc <print_dec>
     4f4:	000107b7          	lui	a5,0x10
     4f8:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     4fc:	4b1010ef          	jal	ra,21ac <puts>
     500:	ff0107b7          	lui	a5,0xff010
     504:	f0078793          	addi	a5,a5,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
     508:	f2f42823          	sw	a5,-208(s0)
     50c:	f3042783          	lw	a5,-208(s0)
     510:	f0f7e793          	ori	a5,a5,-241
     514:	f2f42623          	sw	a5,-212(s0)
     518:	f2c42703          	lw	a4,-212(s0)
     51c:	f0f00793          	li	a5,-241
     520:	00f70c63          	beq	a4,a5,538 <main+0x4d8>
     524:	01200513          	li	a0,18
     528:	4b5010ef          	jal	ra,21dc <print_dec>
     52c:	000107b7          	lui	a5,0x10
     530:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     534:	479010ef          	jal	ra,21ac <puts>
     538:	0ff017b7          	lui	a5,0xff01
     53c:	ff078793          	addi	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
     540:	f2f42423          	sw	a5,-216(s0)
     544:	f2842783          	lw	a5,-216(s0)
     548:	0f07e793          	ori	a5,a5,240
     54c:	f2f42223          	sw	a5,-220(s0)
     550:	f2442703          	lw	a4,-220(s0)
     554:	0ff017b7          	lui	a5,0xff01
     558:	ff078793          	addi	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
     55c:	00f70c63          	beq	a4,a5,574 <main+0x514>
     560:	01300513          	li	a0,19
     564:	479010ef          	jal	ra,21dc <print_dec>
     568:	000107b7          	lui	a5,0x10
     56c:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     570:	43d010ef          	jal	ra,21ac <puts>
     574:	00ff07b7          	lui	a5,0xff0
     578:	0ff78793          	addi	a5,a5,255 # ff00ff <IO_BASE+0xbf00ff>
     57c:	f2f42023          	sw	a5,-224(s0)
     580:	f2042783          	lw	a5,-224(s0)
     584:	70f7e793          	ori	a5,a5,1807
     588:	f0f42e23          	sw	a5,-228(s0)
     58c:	f1c42703          	lw	a4,-228(s0)
     590:	00ff07b7          	lui	a5,0xff0
     594:	7ff78793          	addi	a5,a5,2047 # ff07ff <IO_BASE+0xbf07ff>
     598:	00f70c63          	beq	a4,a5,5b0 <main+0x550>
     59c:	01400513          	li	a0,20
     5a0:	43d010ef          	jal	ra,21dc <print_dec>
     5a4:	000107b7          	lui	a5,0x10
     5a8:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     5ac:	401010ef          	jal	ra,21ac <puts>
     5b0:	f00ff7b7          	lui	a5,0xf00ff
     5b4:	00f78793          	addi	a5,a5,15 # f00ff00f <IO_BASE+0xefcff00f>
     5b8:	f0f42c23          	sw	a5,-232(s0)
     5bc:	f1842783          	lw	a5,-232(s0)
     5c0:	0f07e793          	ori	a5,a5,240
     5c4:	f0f42a23          	sw	a5,-236(s0)
     5c8:	f1442703          	lw	a4,-236(s0)
     5cc:	f00ff7b7          	lui	a5,0xf00ff
     5d0:	0ff78793          	addi	a5,a5,255 # f00ff0ff <IO_BASE+0xefcff0ff>
     5d4:	00f70c63          	beq	a4,a5,5ec <main+0x58c>
     5d8:	01500513          	li	a0,21
     5dc:	401010ef          	jal	ra,21dc <print_dec>
     5e0:	000107b7          	lui	a5,0x10
     5e4:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     5e8:	3c5010ef          	jal	ra,21ac <puts>
     5ec:	00100793          	li	a5,1
     5f0:	f0f42823          	sw	a5,-240(s0)
     5f4:	f0042623          	sw	zero,-244(s0)
     5f8:	f1042783          	lw	a5,-240(s0)
     5fc:	f0c42703          	lw	a4,-244(s0)
     600:	00e797b3          	sll	a5,a5,a4
     604:	f0f42423          	sw	a5,-248(s0)
     608:	f0842703          	lw	a4,-248(s0)
     60c:	00100793          	li	a5,1
     610:	00f70c63          	beq	a4,a5,628 <main+0x5c8>
     614:	01700513          	li	a0,23
     618:	3c5010ef          	jal	ra,21dc <print_dec>
     61c:	000107b7          	lui	a5,0x10
     620:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     624:	389010ef          	jal	ra,21ac <puts>
     628:	00100793          	li	a5,1
     62c:	f0f42223          	sw	a5,-252(s0)
     630:	00100793          	li	a5,1
     634:	f0f42023          	sw	a5,-256(s0)
     638:	f0442783          	lw	a5,-252(s0)
     63c:	f0042703          	lw	a4,-256(s0)
     640:	00e797b3          	sll	a5,a5,a4
     644:	eef42e23          	sw	a5,-260(s0)
     648:	efc42703          	lw	a4,-260(s0)
     64c:	00200793          	li	a5,2
     650:	00f70c63          	beq	a4,a5,668 <main+0x608>
     654:	01800513          	li	a0,24
     658:	385010ef          	jal	ra,21dc <print_dec>
     65c:	000107b7          	lui	a5,0x10
     660:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     664:	349010ef          	jal	ra,21ac <puts>
     668:	00100793          	li	a5,1
     66c:	eef42c23          	sw	a5,-264(s0)
     670:	00700793          	li	a5,7
     674:	eef42a23          	sw	a5,-268(s0)
     678:	ef842783          	lw	a5,-264(s0)
     67c:	ef442703          	lw	a4,-268(s0)
     680:	00e797b3          	sll	a5,a5,a4
     684:	eef42823          	sw	a5,-272(s0)
     688:	ef042703          	lw	a4,-272(s0)
     68c:	08000793          	li	a5,128
     690:	00f70c63          	beq	a4,a5,6a8 <main+0x648>
     694:	01900513          	li	a0,25
     698:	345010ef          	jal	ra,21dc <print_dec>
     69c:	000107b7          	lui	a5,0x10
     6a0:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     6a4:	309010ef          	jal	ra,21ac <puts>
     6a8:	00100793          	li	a5,1
     6ac:	eef42623          	sw	a5,-276(s0)
     6b0:	00e00793          	li	a5,14
     6b4:	eef42423          	sw	a5,-280(s0)
     6b8:	eec42783          	lw	a5,-276(s0)
     6bc:	ee842703          	lw	a4,-280(s0)
     6c0:	00e797b3          	sll	a5,a5,a4
     6c4:	eef42223          	sw	a5,-284(s0)
     6c8:	ee442703          	lw	a4,-284(s0)
     6cc:	000047b7          	lui	a5,0x4
     6d0:	00f70c63          	beq	a4,a5,6e8 <main+0x688>
     6d4:	01a00513          	li	a0,26
     6d8:	305010ef          	jal	ra,21dc <print_dec>
     6dc:	000107b7          	lui	a5,0x10
     6e0:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     6e4:	2c9010ef          	jal	ra,21ac <puts>
     6e8:	00100793          	li	a5,1
     6ec:	eef42023          	sw	a5,-288(s0)
     6f0:	01f00793          	li	a5,31
     6f4:	ecf42e23          	sw	a5,-292(s0)
     6f8:	ee042783          	lw	a5,-288(s0)
     6fc:	edc42703          	lw	a4,-292(s0)
     700:	00e797b3          	sll	a5,a5,a4
     704:	ecf42c23          	sw	a5,-296(s0)
     708:	ed842703          	lw	a4,-296(s0)
     70c:	800007b7          	lui	a5,0x80000
     710:	00f70c63          	beq	a4,a5,728 <main+0x6c8>
     714:	01b00513          	li	a0,27
     718:	2c5010ef          	jal	ra,21dc <print_dec>
     71c:	000107b7          	lui	a5,0x10
     720:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     724:	289010ef          	jal	ra,21ac <puts>
     728:	fff00793          	li	a5,-1
     72c:	ecf42a23          	sw	a5,-300(s0)
     730:	ec042823          	sw	zero,-304(s0)
     734:	ed442783          	lw	a5,-300(s0)
     738:	ed042703          	lw	a4,-304(s0)
     73c:	00e797b3          	sll	a5,a5,a4
     740:	ecf42623          	sw	a5,-308(s0)
     744:	ecc42703          	lw	a4,-308(s0)
     748:	fff00793          	li	a5,-1
     74c:	00f70c63          	beq	a4,a5,764 <main+0x704>
     750:	01c00513          	li	a0,28
     754:	289010ef          	jal	ra,21dc <print_dec>
     758:	000107b7          	lui	a5,0x10
     75c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     760:	24d010ef          	jal	ra,21ac <puts>
     764:	fff00793          	li	a5,-1
     768:	ecf42423          	sw	a5,-312(s0)
     76c:	00100793          	li	a5,1
     770:	ecf42223          	sw	a5,-316(s0)
     774:	ec842783          	lw	a5,-312(s0)
     778:	ec442703          	lw	a4,-316(s0)
     77c:	00e797b3          	sll	a5,a5,a4
     780:	ecf42023          	sw	a5,-320(s0)
     784:	ec042703          	lw	a4,-320(s0)
     788:	ffe00793          	li	a5,-2
     78c:	00f70c63          	beq	a4,a5,7a4 <main+0x744>
     790:	01d00513          	li	a0,29
     794:	249010ef          	jal	ra,21dc <print_dec>
     798:	000107b7          	lui	a5,0x10
     79c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     7a0:	20d010ef          	jal	ra,21ac <puts>
     7a4:	fff00793          	li	a5,-1
     7a8:	eaf42e23          	sw	a5,-324(s0)
     7ac:	00700793          	li	a5,7
     7b0:	eaf42c23          	sw	a5,-328(s0)
     7b4:	ebc42783          	lw	a5,-324(s0)
     7b8:	eb842703          	lw	a4,-328(s0)
     7bc:	00e797b3          	sll	a5,a5,a4
     7c0:	eaf42a23          	sw	a5,-332(s0)
     7c4:	eb442703          	lw	a4,-332(s0)
     7c8:	f8000793          	li	a5,-128
     7cc:	00f70c63          	beq	a4,a5,7e4 <main+0x784>
     7d0:	01e00513          	li	a0,30
     7d4:	209010ef          	jal	ra,21dc <print_dec>
     7d8:	000107b7          	lui	a5,0x10
     7dc:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     7e0:	1cd010ef          	jal	ra,21ac <puts>
     7e4:	fff00793          	li	a5,-1
     7e8:	eaf42823          	sw	a5,-336(s0)
     7ec:	00e00793          	li	a5,14
     7f0:	eaf42623          	sw	a5,-340(s0)
     7f4:	eb042783          	lw	a5,-336(s0)
     7f8:	eac42703          	lw	a4,-340(s0)
     7fc:	00e797b3          	sll	a5,a5,a4
     800:	eaf42423          	sw	a5,-344(s0)
     804:	ea842703          	lw	a4,-344(s0)
     808:	ffffc7b7          	lui	a5,0xffffc
     80c:	00f70c63          	beq	a4,a5,824 <main+0x7c4>
     810:	01f00513          	li	a0,31
     814:	1c9010ef          	jal	ra,21dc <print_dec>
     818:	000107b7          	lui	a5,0x10
     81c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     820:	18d010ef          	jal	ra,21ac <puts>
     824:	fff00793          	li	a5,-1
     828:	eaf42223          	sw	a5,-348(s0)
     82c:	01f00793          	li	a5,31
     830:	eaf42023          	sw	a5,-352(s0)
     834:	ea442783          	lw	a5,-348(s0)
     838:	ea042703          	lw	a4,-352(s0)
     83c:	00e797b3          	sll	a5,a5,a4
     840:	e8f42e23          	sw	a5,-356(s0)
     844:	e9c42703          	lw	a4,-356(s0)
     848:	800007b7          	lui	a5,0x80000
     84c:	00f70c63          	beq	a4,a5,864 <main+0x804>
     850:	02000513          	li	a0,32
     854:	189010ef          	jal	ra,21dc <print_dec>
     858:	000107b7          	lui	a5,0x10
     85c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     860:	14d010ef          	jal	ra,21ac <puts>
     864:	212127b7          	lui	a5,0x21212
     868:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     86c:	e8f42c23          	sw	a5,-360(s0)
     870:	e8042a23          	sw	zero,-364(s0)
     874:	e9842783          	lw	a5,-360(s0)
     878:	e9442703          	lw	a4,-364(s0)
     87c:	00e797b3          	sll	a5,a5,a4
     880:	e8f42823          	sw	a5,-368(s0)
     884:	e9042703          	lw	a4,-368(s0)
     888:	212127b7          	lui	a5,0x21212
     88c:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     890:	00f70c63          	beq	a4,a5,8a8 <main+0x848>
     894:	02100513          	li	a0,33
     898:	145010ef          	jal	ra,21dc <print_dec>
     89c:	000107b7          	lui	a5,0x10
     8a0:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     8a4:	109010ef          	jal	ra,21ac <puts>
     8a8:	212127b7          	lui	a5,0x21212
     8ac:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     8b0:	e8f42623          	sw	a5,-372(s0)
     8b4:	00100793          	li	a5,1
     8b8:	e8f42423          	sw	a5,-376(s0)
     8bc:	e8c42783          	lw	a5,-372(s0)
     8c0:	e8842703          	lw	a4,-376(s0)
     8c4:	00e797b3          	sll	a5,a5,a4
     8c8:	e8f42223          	sw	a5,-380(s0)
     8cc:	e8442703          	lw	a4,-380(s0)
     8d0:	424247b7          	lui	a5,0x42424
     8d4:	24278793          	addi	a5,a5,578 # 42424242 <IO_BASE+0x42024242>
     8d8:	00f70c63          	beq	a4,a5,8f0 <main+0x890>
     8dc:	02200513          	li	a0,34
     8e0:	0fd010ef          	jal	ra,21dc <print_dec>
     8e4:	000107b7          	lui	a5,0x10
     8e8:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     8ec:	0c1010ef          	jal	ra,21ac <puts>
     8f0:	212127b7          	lui	a5,0x21212
     8f4:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     8f8:	e8f42023          	sw	a5,-384(s0)
     8fc:	00700793          	li	a5,7
     900:	e6f42e23          	sw	a5,-388(s0)
     904:	e8042783          	lw	a5,-384(s0)
     908:	e7c42703          	lw	a4,-388(s0)
     90c:	00e797b3          	sll	a5,a5,a4
     910:	e6f42c23          	sw	a5,-392(s0)
     914:	e7842703          	lw	a4,-392(s0)
     918:	909097b7          	lui	a5,0x90909
     91c:	08078793          	addi	a5,a5,128 # 90909080 <IO_BASE+0x90509080>
     920:	00f70c63          	beq	a4,a5,938 <main+0x8d8>
     924:	02300513          	li	a0,35
     928:	0b5010ef          	jal	ra,21dc <print_dec>
     92c:	000107b7          	lui	a5,0x10
     930:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     934:	079010ef          	jal	ra,21ac <puts>
     938:	212127b7          	lui	a5,0x21212
     93c:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     940:	e6f42a23          	sw	a5,-396(s0)
     944:	00e00793          	li	a5,14
     948:	e6f42823          	sw	a5,-400(s0)
     94c:	e7442783          	lw	a5,-396(s0)
     950:	e7042703          	lw	a4,-400(s0)
     954:	00e797b3          	sll	a5,a5,a4
     958:	e6f42623          	sw	a5,-404(s0)
     95c:	e6c42703          	lw	a4,-404(s0)
     960:	484847b7          	lui	a5,0x48484
     964:	00f70c63          	beq	a4,a5,97c <main+0x91c>
     968:	02400513          	li	a0,36
     96c:	071010ef          	jal	ra,21dc <print_dec>
     970:	000107b7          	lui	a5,0x10
     974:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     978:	035010ef          	jal	ra,21ac <puts>
     97c:	212127b7          	lui	a5,0x21212
     980:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     984:	e6f42423          	sw	a5,-408(s0)
     988:	01f00793          	li	a5,31
     98c:	e6f42223          	sw	a5,-412(s0)
     990:	e6842783          	lw	a5,-408(s0)
     994:	e6442703          	lw	a4,-412(s0)
     998:	00e797b3          	sll	a5,a5,a4
     99c:	e6f42023          	sw	a5,-416(s0)
     9a0:	e6042703          	lw	a4,-416(s0)
     9a4:	800007b7          	lui	a5,0x80000
     9a8:	00f70c63          	beq	a4,a5,9c0 <main+0x960>
     9ac:	02500513          	li	a0,37
     9b0:	02d010ef          	jal	ra,21dc <print_dec>
     9b4:	000107b7          	lui	a5,0x10
     9b8:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     9bc:	7f0010ef          	jal	ra,21ac <puts>
     9c0:	212127b7          	lui	a5,0x21212
     9c4:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     9c8:	e4f42e23          	sw	a5,-420(s0)
     9cc:	fc000793          	li	a5,-64
     9d0:	e4f42c23          	sw	a5,-424(s0)
     9d4:	e5c42783          	lw	a5,-420(s0)
     9d8:	e5842703          	lw	a4,-424(s0)
     9dc:	00e797b3          	sll	a5,a5,a4
     9e0:	e4f42a23          	sw	a5,-428(s0)
     9e4:	e5442703          	lw	a4,-428(s0)
     9e8:	212127b7          	lui	a5,0x21212
     9ec:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     9f0:	00f70c63          	beq	a4,a5,a08 <main+0x9a8>
     9f4:	02600513          	li	a0,38
     9f8:	7e4010ef          	jal	ra,21dc <print_dec>
     9fc:	000107b7          	lui	a5,0x10
     a00:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     a04:	7a8010ef          	jal	ra,21ac <puts>
     a08:	212127b7          	lui	a5,0x21212
     a0c:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     a10:	e4f42823          	sw	a5,-432(s0)
     a14:	fc100793          	li	a5,-63
     a18:	e4f42623          	sw	a5,-436(s0)
     a1c:	e5042783          	lw	a5,-432(s0)
     a20:	e4c42703          	lw	a4,-436(s0)
     a24:	00e797b3          	sll	a5,a5,a4
     a28:	e4f42423          	sw	a5,-440(s0)
     a2c:	e4842703          	lw	a4,-440(s0)
     a30:	424247b7          	lui	a5,0x42424
     a34:	24278793          	addi	a5,a5,578 # 42424242 <IO_BASE+0x42024242>
     a38:	00f70c63          	beq	a4,a5,a50 <main+0x9f0>
     a3c:	02700513          	li	a0,39
     a40:	79c010ef          	jal	ra,21dc <print_dec>
     a44:	000107b7          	lui	a5,0x10
     a48:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     a4c:	760010ef          	jal	ra,21ac <puts>
     a50:	212127b7          	lui	a5,0x21212
     a54:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     a58:	e4f42223          	sw	a5,-444(s0)
     a5c:	fc700793          	li	a5,-57
     a60:	e4f42023          	sw	a5,-448(s0)
     a64:	e4442783          	lw	a5,-444(s0)
     a68:	e4042703          	lw	a4,-448(s0)
     a6c:	00e797b3          	sll	a5,a5,a4
     a70:	e2f42e23          	sw	a5,-452(s0)
     a74:	e3c42703          	lw	a4,-452(s0)
     a78:	909097b7          	lui	a5,0x90909
     a7c:	08078793          	addi	a5,a5,128 # 90909080 <IO_BASE+0x90509080>
     a80:	00f70c63          	beq	a4,a5,a98 <main+0xa38>
     a84:	02800513          	li	a0,40
     a88:	754010ef          	jal	ra,21dc <print_dec>
     a8c:	000107b7          	lui	a5,0x10
     a90:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     a94:	718010ef          	jal	ra,21ac <puts>
     a98:	212127b7          	lui	a5,0x21212
     a9c:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     aa0:	e2f42c23          	sw	a5,-456(s0)
     aa4:	fce00793          	li	a5,-50
     aa8:	e2f42a23          	sw	a5,-460(s0)
     aac:	e3842783          	lw	a5,-456(s0)
     ab0:	e3442703          	lw	a4,-460(s0)
     ab4:	00e797b3          	sll	a5,a5,a4
     ab8:	e2f42823          	sw	a5,-464(s0)
     abc:	e3042703          	lw	a4,-464(s0)
     ac0:	484847b7          	lui	a5,0x48484
     ac4:	00f70c63          	beq	a4,a5,adc <main+0xa7c>
     ac8:	02900513          	li	a0,41
     acc:	710010ef          	jal	ra,21dc <print_dec>
     ad0:	000107b7          	lui	a5,0x10
     ad4:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     ad8:	6d4010ef          	jal	ra,21ac <puts>
     adc:	00100793          	li	a5,1
     ae0:	e2f42623          	sw	a5,-468(s0)
     ae4:	e2c42783          	lw	a5,-468(s0)
     ae8:	00079793          	slli	a5,a5,0x0
     aec:	e2f42423          	sw	a5,-472(s0)
     af0:	e2842703          	lw	a4,-472(s0)
     af4:	00100793          	li	a5,1
     af8:	00f70c63          	beq	a4,a5,b10 <main+0xab0>
     afc:	02a00513          	li	a0,42
     b00:	6dc010ef          	jal	ra,21dc <print_dec>
     b04:	000107b7          	lui	a5,0x10
     b08:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     b0c:	6a0010ef          	jal	ra,21ac <puts>
     b10:	00100793          	li	a5,1
     b14:	e2f42223          	sw	a5,-476(s0)
     b18:	e2442783          	lw	a5,-476(s0)
     b1c:	00179793          	slli	a5,a5,0x1
     b20:	e2f42023          	sw	a5,-480(s0)
     b24:	e2042703          	lw	a4,-480(s0)
     b28:	00200793          	li	a5,2
     b2c:	00f70c63          	beq	a4,a5,b44 <main+0xae4>
     b30:	02b00513          	li	a0,43
     b34:	6a8010ef          	jal	ra,21dc <print_dec>
     b38:	000107b7          	lui	a5,0x10
     b3c:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     b40:	66c010ef          	jal	ra,21ac <puts>
     b44:	00100793          	li	a5,1
     b48:	e0f42e23          	sw	a5,-484(s0)
     b4c:	e1c42783          	lw	a5,-484(s0)
     b50:	00779793          	slli	a5,a5,0x7
     b54:	e0f42c23          	sw	a5,-488(s0)
     b58:	e1842703          	lw	a4,-488(s0)
     b5c:	08000793          	li	a5,128
     b60:	00f70c63          	beq	a4,a5,b78 <main+0xb18>
     b64:	02c00513          	li	a0,44
     b68:	674010ef          	jal	ra,21dc <print_dec>
     b6c:	000107b7          	lui	a5,0x10
     b70:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     b74:	638010ef          	jal	ra,21ac <puts>
     b78:	00100793          	li	a5,1
     b7c:	e0f42a23          	sw	a5,-492(s0)
     b80:	e1442783          	lw	a5,-492(s0)
     b84:	00e79793          	slli	a5,a5,0xe
     b88:	e0f42823          	sw	a5,-496(s0)
     b8c:	e1042703          	lw	a4,-496(s0)
     b90:	000047b7          	lui	a5,0x4
     b94:	00f70c63          	beq	a4,a5,bac <main+0xb4c>
     b98:	02d00513          	li	a0,45
     b9c:	640010ef          	jal	ra,21dc <print_dec>
     ba0:	000107b7          	lui	a5,0x10
     ba4:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     ba8:	604010ef          	jal	ra,21ac <puts>
     bac:	00100793          	li	a5,1
     bb0:	e0f42623          	sw	a5,-500(s0)
     bb4:	e0c42783          	lw	a5,-500(s0)
     bb8:	01f79793          	slli	a5,a5,0x1f
     bbc:	e0f42423          	sw	a5,-504(s0)
     bc0:	e0842703          	lw	a4,-504(s0)
     bc4:	800007b7          	lui	a5,0x80000
     bc8:	00f70c63          	beq	a4,a5,be0 <main+0xb80>
     bcc:	02e00513          	li	a0,46
     bd0:	60c010ef          	jal	ra,21dc <print_dec>
     bd4:	000107b7          	lui	a5,0x10
     bd8:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     bdc:	5d0010ef          	jal	ra,21ac <puts>
     be0:	fff00793          	li	a5,-1
     be4:	e0f42223          	sw	a5,-508(s0)
     be8:	e0442783          	lw	a5,-508(s0)
     bec:	00079793          	slli	a5,a5,0x0
     bf0:	e0f42023          	sw	a5,-512(s0)
     bf4:	e0042703          	lw	a4,-512(s0)
     bf8:	fff00793          	li	a5,-1
     bfc:	00f70c63          	beq	a4,a5,c14 <main+0xbb4>
     c00:	02f00513          	li	a0,47
     c04:	5d8010ef          	jal	ra,21dc <print_dec>
     c08:	000107b7          	lui	a5,0x10
     c0c:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     c10:	59c010ef          	jal	ra,21ac <puts>
     c14:	fff00793          	li	a5,-1
     c18:	def42e23          	sw	a5,-516(s0)
     c1c:	dfc42783          	lw	a5,-516(s0)
     c20:	00179793          	slli	a5,a5,0x1
     c24:	def42c23          	sw	a5,-520(s0)
     c28:	df842703          	lw	a4,-520(s0)
     c2c:	ffe00793          	li	a5,-2
     c30:	00f70c63          	beq	a4,a5,c48 <main+0xbe8>
     c34:	03000513          	li	a0,48
     c38:	5a4010ef          	jal	ra,21dc <print_dec>
     c3c:	000107b7          	lui	a5,0x10
     c40:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     c44:	568010ef          	jal	ra,21ac <puts>
     c48:	fff00793          	li	a5,-1
     c4c:	def42a23          	sw	a5,-524(s0)
     c50:	df442783          	lw	a5,-524(s0)
     c54:	00779793          	slli	a5,a5,0x7
     c58:	def42823          	sw	a5,-528(s0)
     c5c:	df042703          	lw	a4,-528(s0)
     c60:	f8000793          	li	a5,-128
     c64:	00f70c63          	beq	a4,a5,c7c <main+0xc1c>
     c68:	03100513          	li	a0,49
     c6c:	570010ef          	jal	ra,21dc <print_dec>
     c70:	000107b7          	lui	a5,0x10
     c74:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     c78:	534010ef          	jal	ra,21ac <puts>
     c7c:	fff00793          	li	a5,-1
     c80:	def42623          	sw	a5,-532(s0)
     c84:	dec42783          	lw	a5,-532(s0)
     c88:	00e79793          	slli	a5,a5,0xe
     c8c:	def42423          	sw	a5,-536(s0)
     c90:	de842703          	lw	a4,-536(s0)
     c94:	ffffc7b7          	lui	a5,0xffffc
     c98:	00f70c63          	beq	a4,a5,cb0 <main+0xc50>
     c9c:	03200513          	li	a0,50
     ca0:	53c010ef          	jal	ra,21dc <print_dec>
     ca4:	000107b7          	lui	a5,0x10
     ca8:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     cac:	500010ef          	jal	ra,21ac <puts>
     cb0:	fff00793          	li	a5,-1
     cb4:	def42223          	sw	a5,-540(s0)
     cb8:	de442783          	lw	a5,-540(s0)
     cbc:	01f79793          	slli	a5,a5,0x1f
     cc0:	def42023          	sw	a5,-544(s0)
     cc4:	de042703          	lw	a4,-544(s0)
     cc8:	800007b7          	lui	a5,0x80000
     ccc:	00f70c63          	beq	a4,a5,ce4 <main+0xc84>
     cd0:	03300513          	li	a0,51
     cd4:	508010ef          	jal	ra,21dc <print_dec>
     cd8:	000107b7          	lui	a5,0x10
     cdc:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     ce0:	4cc010ef          	jal	ra,21ac <puts>
     ce4:	212127b7          	lui	a5,0x21212
     ce8:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     cec:	dcf42e23          	sw	a5,-548(s0)
     cf0:	ddc42783          	lw	a5,-548(s0)
     cf4:	00079793          	slli	a5,a5,0x0
     cf8:	dcf42c23          	sw	a5,-552(s0)
     cfc:	dd842703          	lw	a4,-552(s0)
     d00:	212127b7          	lui	a5,0x21212
     d04:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     d08:	00f70c63          	beq	a4,a5,d20 <main+0xcc0>
     d0c:	03400513          	li	a0,52
     d10:	4cc010ef          	jal	ra,21dc <print_dec>
     d14:	000107b7          	lui	a5,0x10
     d18:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     d1c:	490010ef          	jal	ra,21ac <puts>
     d20:	212127b7          	lui	a5,0x21212
     d24:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     d28:	dcf42a23          	sw	a5,-556(s0)
     d2c:	dd442783          	lw	a5,-556(s0)
     d30:	00179793          	slli	a5,a5,0x1
     d34:	dcf42823          	sw	a5,-560(s0)
     d38:	dd042703          	lw	a4,-560(s0)
     d3c:	424247b7          	lui	a5,0x42424
     d40:	24278793          	addi	a5,a5,578 # 42424242 <IO_BASE+0x42024242>
     d44:	00f70c63          	beq	a4,a5,d5c <main+0xcfc>
     d48:	03500513          	li	a0,53
     d4c:	490010ef          	jal	ra,21dc <print_dec>
     d50:	000107b7          	lui	a5,0x10
     d54:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     d58:	454010ef          	jal	ra,21ac <puts>
     d5c:	212127b7          	lui	a5,0x21212
     d60:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     d64:	dcf42623          	sw	a5,-564(s0)
     d68:	dcc42783          	lw	a5,-564(s0)
     d6c:	00779793          	slli	a5,a5,0x7
     d70:	dcf42423          	sw	a5,-568(s0)
     d74:	dc842703          	lw	a4,-568(s0)
     d78:	909097b7          	lui	a5,0x90909
     d7c:	08078793          	addi	a5,a5,128 # 90909080 <IO_BASE+0x90509080>
     d80:	00f70c63          	beq	a4,a5,d98 <main+0xd38>
     d84:	03600513          	li	a0,54
     d88:	454010ef          	jal	ra,21dc <print_dec>
     d8c:	000107b7          	lui	a5,0x10
     d90:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     d94:	418010ef          	jal	ra,21ac <puts>
     d98:	212127b7          	lui	a5,0x21212
     d9c:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     da0:	dcf42223          	sw	a5,-572(s0)
     da4:	dc442783          	lw	a5,-572(s0)
     da8:	00e79793          	slli	a5,a5,0xe
     dac:	dcf42023          	sw	a5,-576(s0)
     db0:	dc042703          	lw	a4,-576(s0)
     db4:	484847b7          	lui	a5,0x48484
     db8:	00f70c63          	beq	a4,a5,dd0 <main+0xd70>
     dbc:	03700513          	li	a0,55
     dc0:	41c010ef          	jal	ra,21dc <print_dec>
     dc4:	000107b7          	lui	a5,0x10
     dc8:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     dcc:	3e0010ef          	jal	ra,21ac <puts>
     dd0:	212127b7          	lui	a5,0x21212
     dd4:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
     dd8:	daf42e23          	sw	a5,-580(s0)
     ddc:	dbc42783          	lw	a5,-580(s0)
     de0:	01f79793          	slli	a5,a5,0x1f
     de4:	daf42c23          	sw	a5,-584(s0)
     de8:	db842703          	lw	a4,-584(s0)
     dec:	800007b7          	lui	a5,0x80000
     df0:	00f70c63          	beq	a4,a5,e08 <main+0xda8>
     df4:	03800513          	li	a0,56
     df8:	3e4010ef          	jal	ra,21dc <print_dec>
     dfc:	000107b7          	lui	a5,0x10
     e00:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
     e04:	3a8010ef          	jal	ra,21ac <puts>
     e08:	800007b7          	lui	a5,0x80000
     e0c:	daf42a23          	sw	a5,-588(s0)
     e10:	da042823          	sw	zero,-592(s0)
     e14:	db442783          	lw	a5,-588(s0)
     e18:	db042703          	lw	a4,-592(s0)
     e1c:	40e7d7b3          	sra	a5,a5,a4
     e20:	daf42623          	sw	a5,-596(s0)
     e24:	dac42703          	lw	a4,-596(s0)
     e28:	800007b7          	lui	a5,0x80000
     e2c:	00f70c63          	beq	a4,a5,e44 <main+0xde4>
     e30:	03900513          	li	a0,57
     e34:	3a8010ef          	jal	ra,21dc <print_dec>
     e38:	000107b7          	lui	a5,0x10
     e3c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     e40:	36c010ef          	jal	ra,21ac <puts>
     e44:	800007b7          	lui	a5,0x80000
     e48:	daf42423          	sw	a5,-600(s0)
     e4c:	00100793          	li	a5,1
     e50:	daf42223          	sw	a5,-604(s0)
     e54:	da842783          	lw	a5,-600(s0)
     e58:	da442703          	lw	a4,-604(s0)
     e5c:	40e7d7b3          	sra	a5,a5,a4
     e60:	daf42023          	sw	a5,-608(s0)
     e64:	da042703          	lw	a4,-608(s0)
     e68:	c00007b7          	lui	a5,0xc0000
     e6c:	00f70c63          	beq	a4,a5,e84 <main+0xe24>
     e70:	03a00513          	li	a0,58
     e74:	368010ef          	jal	ra,21dc <print_dec>
     e78:	000107b7          	lui	a5,0x10
     e7c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     e80:	32c010ef          	jal	ra,21ac <puts>
     e84:	800007b7          	lui	a5,0x80000
     e88:	d8f42e23          	sw	a5,-612(s0)
     e8c:	00700793          	li	a5,7
     e90:	d8f42c23          	sw	a5,-616(s0)
     e94:	d9c42783          	lw	a5,-612(s0)
     e98:	d9842703          	lw	a4,-616(s0)
     e9c:	40e7d7b3          	sra	a5,a5,a4
     ea0:	d8f42a23          	sw	a5,-620(s0)
     ea4:	d9442703          	lw	a4,-620(s0)
     ea8:	ff0007b7          	lui	a5,0xff000
     eac:	00f70c63          	beq	a4,a5,ec4 <main+0xe64>
     eb0:	03b00513          	li	a0,59
     eb4:	328010ef          	jal	ra,21dc <print_dec>
     eb8:	000107b7          	lui	a5,0x10
     ebc:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     ec0:	2ec010ef          	jal	ra,21ac <puts>
     ec4:	800007b7          	lui	a5,0x80000
     ec8:	d8f42823          	sw	a5,-624(s0)
     ecc:	00e00793          	li	a5,14
     ed0:	d8f42623          	sw	a5,-628(s0)
     ed4:	d9042783          	lw	a5,-624(s0)
     ed8:	d8c42703          	lw	a4,-628(s0)
     edc:	40e7d7b3          	sra	a5,a5,a4
     ee0:	d8f42423          	sw	a5,-632(s0)
     ee4:	d8842703          	lw	a4,-632(s0)
     ee8:	fffe07b7          	lui	a5,0xfffe0
     eec:	00f70c63          	beq	a4,a5,f04 <main+0xea4>
     ef0:	03c00513          	li	a0,60
     ef4:	2e8010ef          	jal	ra,21dc <print_dec>
     ef8:	000107b7          	lui	a5,0x10
     efc:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     f00:	2ac010ef          	jal	ra,21ac <puts>
     f04:	800007b7          	lui	a5,0x80000
     f08:	00178793          	addi	a5,a5,1 # 80000001 <IO_BASE+0x7fc00001>
     f0c:	d8f42223          	sw	a5,-636(s0)
     f10:	01f00793          	li	a5,31
     f14:	d8f42023          	sw	a5,-640(s0)
     f18:	d8442783          	lw	a5,-636(s0)
     f1c:	d8042703          	lw	a4,-640(s0)
     f20:	40e7d7b3          	sra	a5,a5,a4
     f24:	d6f42e23          	sw	a5,-644(s0)
     f28:	d7c42703          	lw	a4,-644(s0)
     f2c:	fff00793          	li	a5,-1
     f30:	00f70c63          	beq	a4,a5,f48 <main+0xee8>
     f34:	03d00513          	li	a0,61
     f38:	2a4010ef          	jal	ra,21dc <print_dec>
     f3c:	000107b7          	lui	a5,0x10
     f40:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     f44:	268010ef          	jal	ra,21ac <puts>
     f48:	800007b7          	lui	a5,0x80000
     f4c:	fff7c793          	not	a5,a5
     f50:	d6f42c23          	sw	a5,-648(s0)
     f54:	d6042a23          	sw	zero,-652(s0)
     f58:	d7842783          	lw	a5,-648(s0)
     f5c:	d7442703          	lw	a4,-652(s0)
     f60:	40e7d7b3          	sra	a5,a5,a4
     f64:	d6f42823          	sw	a5,-656(s0)
     f68:	d7042703          	lw	a4,-656(s0)
     f6c:	800007b7          	lui	a5,0x80000
     f70:	fff7c793          	not	a5,a5
     f74:	00f70c63          	beq	a4,a5,f8c <main+0xf2c>
     f78:	03e00513          	li	a0,62
     f7c:	260010ef          	jal	ra,21dc <print_dec>
     f80:	000107b7          	lui	a5,0x10
     f84:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     f88:	224010ef          	jal	ra,21ac <puts>
     f8c:	800007b7          	lui	a5,0x80000
     f90:	fff7c793          	not	a5,a5
     f94:	d6f42623          	sw	a5,-660(s0)
     f98:	00100793          	li	a5,1
     f9c:	d6f42423          	sw	a5,-664(s0)
     fa0:	d6c42783          	lw	a5,-660(s0)
     fa4:	d6842703          	lw	a4,-664(s0)
     fa8:	40e7d7b3          	sra	a5,a5,a4
     fac:	d6f42223          	sw	a5,-668(s0)
     fb0:	d6442703          	lw	a4,-668(s0)
     fb4:	400007b7          	lui	a5,0x40000
     fb8:	fff78793          	addi	a5,a5,-1 # 3fffffff <IO_BASE+0x3fbfffff>
     fbc:	00f70c63          	beq	a4,a5,fd4 <main+0xf74>
     fc0:	03f00513          	li	a0,63
     fc4:	218010ef          	jal	ra,21dc <print_dec>
     fc8:	000107b7          	lui	a5,0x10
     fcc:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
     fd0:	1dc010ef          	jal	ra,21ac <puts>
     fd4:	800007b7          	lui	a5,0x80000
     fd8:	fff7c793          	not	a5,a5
     fdc:	d6f42023          	sw	a5,-672(s0)
     fe0:	00700793          	li	a5,7
     fe4:	d4f42e23          	sw	a5,-676(s0)
     fe8:	d6042783          	lw	a5,-672(s0)
     fec:	d5c42703          	lw	a4,-676(s0)
     ff0:	40e7d7b3          	sra	a5,a5,a4
     ff4:	d4f42c23          	sw	a5,-680(s0)
     ff8:	d5842703          	lw	a4,-680(s0)
     ffc:	010007b7          	lui	a5,0x1000
    1000:	fff78793          	addi	a5,a5,-1 # ffffff <IO_BASE+0xbfffff>
    1004:	00f70c63          	beq	a4,a5,101c <main+0xfbc>
    1008:	04000513          	li	a0,64
    100c:	1d0010ef          	jal	ra,21dc <print_dec>
    1010:	000107b7          	lui	a5,0x10
    1014:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1018:	194010ef          	jal	ra,21ac <puts>
    101c:	800007b7          	lui	a5,0x80000
    1020:	fff7c793          	not	a5,a5
    1024:	d4f42a23          	sw	a5,-684(s0)
    1028:	00e00793          	li	a5,14
    102c:	d4f42823          	sw	a5,-688(s0)
    1030:	d5442783          	lw	a5,-684(s0)
    1034:	d5042703          	lw	a4,-688(s0)
    1038:	40e7d7b3          	sra	a5,a5,a4
    103c:	d4f42623          	sw	a5,-692(s0)
    1040:	d4c42703          	lw	a4,-692(s0)
    1044:	000207b7          	lui	a5,0x20
    1048:	fff78793          	addi	a5,a5,-1 # 1ffff <__modsi3+0x1dc6f>
    104c:	00f70c63          	beq	a4,a5,1064 <main+0x1004>
    1050:	04100513          	li	a0,65
    1054:	188010ef          	jal	ra,21dc <print_dec>
    1058:	000107b7          	lui	a5,0x10
    105c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1060:	14c010ef          	jal	ra,21ac <puts>
    1064:	800007b7          	lui	a5,0x80000
    1068:	fff7c793          	not	a5,a5
    106c:	d4f42423          	sw	a5,-696(s0)
    1070:	01f00793          	li	a5,31
    1074:	d4f42223          	sw	a5,-700(s0)
    1078:	d4842783          	lw	a5,-696(s0)
    107c:	d4442703          	lw	a4,-700(s0)
    1080:	40e7d7b3          	sra	a5,a5,a4
    1084:	d4f42023          	sw	a5,-704(s0)
    1088:	d4042783          	lw	a5,-704(s0)
    108c:	00078c63          	beqz	a5,10a4 <main+0x1044>
    1090:	04200513          	li	a0,66
    1094:	148010ef          	jal	ra,21dc <print_dec>
    1098:	000107b7          	lui	a5,0x10
    109c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    10a0:	10c010ef          	jal	ra,21ac <puts>
    10a4:	818187b7          	lui	a5,0x81818
    10a8:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    10ac:	d2f42e23          	sw	a5,-708(s0)
    10b0:	d2042c23          	sw	zero,-712(s0)
    10b4:	d3c42783          	lw	a5,-708(s0)
    10b8:	d3842703          	lw	a4,-712(s0)
    10bc:	40e7d7b3          	sra	a5,a5,a4
    10c0:	d2f42a23          	sw	a5,-716(s0)
    10c4:	d3442703          	lw	a4,-716(s0)
    10c8:	818187b7          	lui	a5,0x81818
    10cc:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    10d0:	00f70c63          	beq	a4,a5,10e8 <main+0x1088>
    10d4:	04300513          	li	a0,67
    10d8:	104010ef          	jal	ra,21dc <print_dec>
    10dc:	000107b7          	lui	a5,0x10
    10e0:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    10e4:	0c8010ef          	jal	ra,21ac <puts>
    10e8:	818187b7          	lui	a5,0x81818
    10ec:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    10f0:	d2f42823          	sw	a5,-720(s0)
    10f4:	00100793          	li	a5,1
    10f8:	d2f42623          	sw	a5,-724(s0)
    10fc:	d3042783          	lw	a5,-720(s0)
    1100:	d2c42703          	lw	a4,-724(s0)
    1104:	40e7d7b3          	sra	a5,a5,a4
    1108:	d2f42423          	sw	a5,-728(s0)
    110c:	d2842703          	lw	a4,-728(s0)
    1110:	c0c0c7b7          	lui	a5,0xc0c0c
    1114:	0c078793          	addi	a5,a5,192 # c0c0c0c0 <IO_BASE+0xc080c0c0>
    1118:	00f70c63          	beq	a4,a5,1130 <main+0x10d0>
    111c:	04400513          	li	a0,68
    1120:	0bc010ef          	jal	ra,21dc <print_dec>
    1124:	000107b7          	lui	a5,0x10
    1128:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    112c:	080010ef          	jal	ra,21ac <puts>
    1130:	818187b7          	lui	a5,0x81818
    1134:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1138:	d2f42223          	sw	a5,-732(s0)
    113c:	00700793          	li	a5,7
    1140:	d2f42023          	sw	a5,-736(s0)
    1144:	d2442783          	lw	a5,-732(s0)
    1148:	d2042703          	lw	a4,-736(s0)
    114c:	40e7d7b3          	sra	a5,a5,a4
    1150:	d0f42e23          	sw	a5,-740(s0)
    1154:	d1c42703          	lw	a4,-740(s0)
    1158:	ff0307b7          	lui	a5,0xff030
    115c:	30378793          	addi	a5,a5,771 # ff030303 <IO_BASE+0xfec30303>
    1160:	00f70c63          	beq	a4,a5,1178 <main+0x1118>
    1164:	04500513          	li	a0,69
    1168:	074010ef          	jal	ra,21dc <print_dec>
    116c:	000107b7          	lui	a5,0x10
    1170:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1174:	038010ef          	jal	ra,21ac <puts>
    1178:	818187b7          	lui	a5,0x81818
    117c:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1180:	d0f42c23          	sw	a5,-744(s0)
    1184:	00e00793          	li	a5,14
    1188:	d0f42a23          	sw	a5,-748(s0)
    118c:	d1842783          	lw	a5,-744(s0)
    1190:	d1442703          	lw	a4,-748(s0)
    1194:	40e7d7b3          	sra	a5,a5,a4
    1198:	d0f42823          	sw	a5,-752(s0)
    119c:	d1042703          	lw	a4,-752(s0)
    11a0:	fffe07b7          	lui	a5,0xfffe0
    11a4:	60678793          	addi	a5,a5,1542 # fffe0606 <IO_BASE+0xffbe0606>
    11a8:	00f70c63          	beq	a4,a5,11c0 <main+0x1160>
    11ac:	04600513          	li	a0,70
    11b0:	02c010ef          	jal	ra,21dc <print_dec>
    11b4:	000107b7          	lui	a5,0x10
    11b8:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    11bc:	7f1000ef          	jal	ra,21ac <puts>
    11c0:	818187b7          	lui	a5,0x81818
    11c4:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    11c8:	d0f42623          	sw	a5,-756(s0)
    11cc:	01f00793          	li	a5,31
    11d0:	d0f42423          	sw	a5,-760(s0)
    11d4:	d0c42783          	lw	a5,-756(s0)
    11d8:	d0842703          	lw	a4,-760(s0)
    11dc:	40e7d7b3          	sra	a5,a5,a4
    11e0:	d0f42223          	sw	a5,-764(s0)
    11e4:	d0442703          	lw	a4,-764(s0)
    11e8:	fff00793          	li	a5,-1
    11ec:	00f70c63          	beq	a4,a5,1204 <main+0x11a4>
    11f0:	04700513          	li	a0,71
    11f4:	7e9000ef          	jal	ra,21dc <print_dec>
    11f8:	000107b7          	lui	a5,0x10
    11fc:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1200:	7ad000ef          	jal	ra,21ac <puts>
    1204:	818187b7          	lui	a5,0x81818
    1208:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    120c:	d0f42023          	sw	a5,-768(s0)
    1210:	fc000793          	li	a5,-64
    1214:	cef42e23          	sw	a5,-772(s0)
    1218:	d0042783          	lw	a5,-768(s0)
    121c:	cfc42703          	lw	a4,-772(s0)
    1220:	40e7d7b3          	sra	a5,a5,a4
    1224:	cef42c23          	sw	a5,-776(s0)
    1228:	cf842703          	lw	a4,-776(s0)
    122c:	818187b7          	lui	a5,0x81818
    1230:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1234:	00f70c63          	beq	a4,a5,124c <main+0x11ec>
    1238:	04800513          	li	a0,72
    123c:	7a1000ef          	jal	ra,21dc <print_dec>
    1240:	000107b7          	lui	a5,0x10
    1244:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1248:	765000ef          	jal	ra,21ac <puts>
    124c:	818187b7          	lui	a5,0x81818
    1250:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1254:	cef42a23          	sw	a5,-780(s0)
    1258:	fc100793          	li	a5,-63
    125c:	cef42823          	sw	a5,-784(s0)
    1260:	cf442783          	lw	a5,-780(s0)
    1264:	cf042703          	lw	a4,-784(s0)
    1268:	40e7d7b3          	sra	a5,a5,a4
    126c:	cef42623          	sw	a5,-788(s0)
    1270:	cec42703          	lw	a4,-788(s0)
    1274:	c0c0c7b7          	lui	a5,0xc0c0c
    1278:	0c078793          	addi	a5,a5,192 # c0c0c0c0 <IO_BASE+0xc080c0c0>
    127c:	00f70c63          	beq	a4,a5,1294 <main+0x1234>
    1280:	04900513          	li	a0,73
    1284:	759000ef          	jal	ra,21dc <print_dec>
    1288:	000107b7          	lui	a5,0x10
    128c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1290:	71d000ef          	jal	ra,21ac <puts>
    1294:	818187b7          	lui	a5,0x81818
    1298:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    129c:	cef42423          	sw	a5,-792(s0)
    12a0:	fc700793          	li	a5,-57
    12a4:	cef42223          	sw	a5,-796(s0)
    12a8:	ce842783          	lw	a5,-792(s0)
    12ac:	ce442703          	lw	a4,-796(s0)
    12b0:	40e7d7b3          	sra	a5,a5,a4
    12b4:	cef42023          	sw	a5,-800(s0)
    12b8:	ce042703          	lw	a4,-800(s0)
    12bc:	ff0307b7          	lui	a5,0xff030
    12c0:	30378793          	addi	a5,a5,771 # ff030303 <IO_BASE+0xfec30303>
    12c4:	00f70c63          	beq	a4,a5,12dc <main+0x127c>
    12c8:	04a00513          	li	a0,74
    12cc:	711000ef          	jal	ra,21dc <print_dec>
    12d0:	000107b7          	lui	a5,0x10
    12d4:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    12d8:	6d5000ef          	jal	ra,21ac <puts>
    12dc:	818187b7          	lui	a5,0x81818
    12e0:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    12e4:	ccf42e23          	sw	a5,-804(s0)
    12e8:	fce00793          	li	a5,-50
    12ec:	ccf42c23          	sw	a5,-808(s0)
    12f0:	cdc42783          	lw	a5,-804(s0)
    12f4:	cd842703          	lw	a4,-808(s0)
    12f8:	40e7d7b3          	sra	a5,a5,a4
    12fc:	ccf42a23          	sw	a5,-812(s0)
    1300:	cd442703          	lw	a4,-812(s0)
    1304:	fffe07b7          	lui	a5,0xfffe0
    1308:	60678793          	addi	a5,a5,1542 # fffe0606 <IO_BASE+0xffbe0606>
    130c:	00f70c63          	beq	a4,a5,1324 <main+0x12c4>
    1310:	04b00513          	li	a0,75
    1314:	6c9000ef          	jal	ra,21dc <print_dec>
    1318:	000107b7          	lui	a5,0x10
    131c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1320:	68d000ef          	jal	ra,21ac <puts>
    1324:	818187b7          	lui	a5,0x81818
    1328:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    132c:	ccf42823          	sw	a5,-816(s0)
    1330:	fff00793          	li	a5,-1
    1334:	ccf42623          	sw	a5,-820(s0)
    1338:	cd042783          	lw	a5,-816(s0)
    133c:	ccc42703          	lw	a4,-820(s0)
    1340:	40e7d7b3          	sra	a5,a5,a4
    1344:	ccf42423          	sw	a5,-824(s0)
    1348:	cc842703          	lw	a4,-824(s0)
    134c:	fff00793          	li	a5,-1
    1350:	00f70c63          	beq	a4,a5,1368 <main+0x1308>
    1354:	04c00513          	li	a0,76
    1358:	685000ef          	jal	ra,21dc <print_dec>
    135c:	000107b7          	lui	a5,0x10
    1360:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1364:	649000ef          	jal	ra,21ac <puts>
    1368:	cc042223          	sw	zero,-828(s0)
    136c:	cc442783          	lw	a5,-828(s0)
    1370:	4007d793          	srai	a5,a5,0x0
    1374:	ccf42023          	sw	a5,-832(s0)
    1378:	cc042783          	lw	a5,-832(s0)
    137c:	00078c63          	beqz	a5,1394 <main+0x1334>
    1380:	04d00513          	li	a0,77
    1384:	659000ef          	jal	ra,21dc <print_dec>
    1388:	000107b7          	lui	a5,0x10
    138c:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1390:	61d000ef          	jal	ra,21ac <puts>
    1394:	800007b7          	lui	a5,0x80000
    1398:	caf42e23          	sw	a5,-836(s0)
    139c:	cbc42783          	lw	a5,-836(s0)
    13a0:	4017d793          	srai	a5,a5,0x1
    13a4:	caf42c23          	sw	a5,-840(s0)
    13a8:	cb842703          	lw	a4,-840(s0)
    13ac:	c00007b7          	lui	a5,0xc0000
    13b0:	00f70c63          	beq	a4,a5,13c8 <main+0x1368>
    13b4:	04e00513          	li	a0,78
    13b8:	625000ef          	jal	ra,21dc <print_dec>
    13bc:	000107b7          	lui	a5,0x10
    13c0:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    13c4:	5e9000ef          	jal	ra,21ac <puts>
    13c8:	800007b7          	lui	a5,0x80000
    13cc:	caf42a23          	sw	a5,-844(s0)
    13d0:	cb442783          	lw	a5,-844(s0)
    13d4:	4077d793          	srai	a5,a5,0x7
    13d8:	caf42823          	sw	a5,-848(s0)
    13dc:	cb042703          	lw	a4,-848(s0)
    13e0:	ff0007b7          	lui	a5,0xff000
    13e4:	00f70c63          	beq	a4,a5,13fc <main+0x139c>
    13e8:	04f00513          	li	a0,79
    13ec:	5f1000ef          	jal	ra,21dc <print_dec>
    13f0:	000107b7          	lui	a5,0x10
    13f4:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    13f8:	5b5000ef          	jal	ra,21ac <puts>
    13fc:	800007b7          	lui	a5,0x80000
    1400:	caf42623          	sw	a5,-852(s0)
    1404:	cac42783          	lw	a5,-852(s0)
    1408:	40e7d793          	srai	a5,a5,0xe
    140c:	caf42423          	sw	a5,-856(s0)
    1410:	ca842703          	lw	a4,-856(s0)
    1414:	fffe07b7          	lui	a5,0xfffe0
    1418:	00f70c63          	beq	a4,a5,1430 <main+0x13d0>
    141c:	05000513          	li	a0,80
    1420:	5bd000ef          	jal	ra,21dc <print_dec>
    1424:	000107b7          	lui	a5,0x10
    1428:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    142c:	581000ef          	jal	ra,21ac <puts>
    1430:	800007b7          	lui	a5,0x80000
    1434:	00178793          	addi	a5,a5,1 # 80000001 <IO_BASE+0x7fc00001>
    1438:	caf42223          	sw	a5,-860(s0)
    143c:	ca442783          	lw	a5,-860(s0)
    1440:	41f7d793          	srai	a5,a5,0x1f
    1444:	caf42023          	sw	a5,-864(s0)
    1448:	ca042703          	lw	a4,-864(s0)
    144c:	fff00793          	li	a5,-1
    1450:	00f70c63          	beq	a4,a5,1468 <main+0x1408>
    1454:	05100513          	li	a0,81
    1458:	585000ef          	jal	ra,21dc <print_dec>
    145c:	000107b7          	lui	a5,0x10
    1460:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1464:	549000ef          	jal	ra,21ac <puts>
    1468:	800007b7          	lui	a5,0x80000
    146c:	fff7c793          	not	a5,a5
    1470:	c8f42e23          	sw	a5,-868(s0)
    1474:	c9c42783          	lw	a5,-868(s0)
    1478:	4007d793          	srai	a5,a5,0x0
    147c:	c8f42c23          	sw	a5,-872(s0)
    1480:	c9842703          	lw	a4,-872(s0)
    1484:	800007b7          	lui	a5,0x80000
    1488:	fff7c793          	not	a5,a5
    148c:	00f70c63          	beq	a4,a5,14a4 <main+0x1444>
    1490:	05200513          	li	a0,82
    1494:	549000ef          	jal	ra,21dc <print_dec>
    1498:	000107b7          	lui	a5,0x10
    149c:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    14a0:	50d000ef          	jal	ra,21ac <puts>
    14a4:	800007b7          	lui	a5,0x80000
    14a8:	fff7c793          	not	a5,a5
    14ac:	c8f42a23          	sw	a5,-876(s0)
    14b0:	c9442783          	lw	a5,-876(s0)
    14b4:	4017d793          	srai	a5,a5,0x1
    14b8:	c8f42823          	sw	a5,-880(s0)
    14bc:	c9042703          	lw	a4,-880(s0)
    14c0:	400007b7          	lui	a5,0x40000
    14c4:	fff78793          	addi	a5,a5,-1 # 3fffffff <IO_BASE+0x3fbfffff>
    14c8:	00f70c63          	beq	a4,a5,14e0 <main+0x1480>
    14cc:	05300513          	li	a0,83
    14d0:	50d000ef          	jal	ra,21dc <print_dec>
    14d4:	000107b7          	lui	a5,0x10
    14d8:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    14dc:	4d1000ef          	jal	ra,21ac <puts>
    14e0:	800007b7          	lui	a5,0x80000
    14e4:	fff7c793          	not	a5,a5
    14e8:	c8f42623          	sw	a5,-884(s0)
    14ec:	c8c42783          	lw	a5,-884(s0)
    14f0:	4077d793          	srai	a5,a5,0x7
    14f4:	c8f42423          	sw	a5,-888(s0)
    14f8:	c8842703          	lw	a4,-888(s0)
    14fc:	010007b7          	lui	a5,0x1000
    1500:	fff78793          	addi	a5,a5,-1 # ffffff <IO_BASE+0xbfffff>
    1504:	00f70c63          	beq	a4,a5,151c <main+0x14bc>
    1508:	05400513          	li	a0,84
    150c:	4d1000ef          	jal	ra,21dc <print_dec>
    1510:	000107b7          	lui	a5,0x10
    1514:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1518:	495000ef          	jal	ra,21ac <puts>
    151c:	800007b7          	lui	a5,0x80000
    1520:	fff7c793          	not	a5,a5
    1524:	c8f42223          	sw	a5,-892(s0)
    1528:	c8442783          	lw	a5,-892(s0)
    152c:	40e7d793          	srai	a5,a5,0xe
    1530:	c8f42023          	sw	a5,-896(s0)
    1534:	c8042703          	lw	a4,-896(s0)
    1538:	000207b7          	lui	a5,0x20
    153c:	fff78793          	addi	a5,a5,-1 # 1ffff <__modsi3+0x1dc6f>
    1540:	00f70c63          	beq	a4,a5,1558 <main+0x14f8>
    1544:	05500513          	li	a0,85
    1548:	495000ef          	jal	ra,21dc <print_dec>
    154c:	000107b7          	lui	a5,0x10
    1550:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1554:	459000ef          	jal	ra,21ac <puts>
    1558:	800007b7          	lui	a5,0x80000
    155c:	fff7c793          	not	a5,a5
    1560:	c6f42e23          	sw	a5,-900(s0)
    1564:	c7c42783          	lw	a5,-900(s0)
    1568:	41f7d793          	srai	a5,a5,0x1f
    156c:	c6f42c23          	sw	a5,-904(s0)
    1570:	c7842783          	lw	a5,-904(s0)
    1574:	00078c63          	beqz	a5,158c <main+0x152c>
    1578:	05600513          	li	a0,86
    157c:	461000ef          	jal	ra,21dc <print_dec>
    1580:	000107b7          	lui	a5,0x10
    1584:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1588:	425000ef          	jal	ra,21ac <puts>
    158c:	818187b7          	lui	a5,0x81818
    1590:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1594:	c6f42a23          	sw	a5,-908(s0)
    1598:	c7442783          	lw	a5,-908(s0)
    159c:	4007d793          	srai	a5,a5,0x0
    15a0:	c6f42823          	sw	a5,-912(s0)
    15a4:	c7042703          	lw	a4,-912(s0)
    15a8:	818187b7          	lui	a5,0x81818
    15ac:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    15b0:	00f70c63          	beq	a4,a5,15c8 <main+0x1568>
    15b4:	05700513          	li	a0,87
    15b8:	425000ef          	jal	ra,21dc <print_dec>
    15bc:	000107b7          	lui	a5,0x10
    15c0:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    15c4:	3e9000ef          	jal	ra,21ac <puts>
    15c8:	818187b7          	lui	a5,0x81818
    15cc:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    15d0:	c6f42623          	sw	a5,-916(s0)
    15d4:	c6c42783          	lw	a5,-916(s0)
    15d8:	4017d793          	srai	a5,a5,0x1
    15dc:	c6f42423          	sw	a5,-920(s0)
    15e0:	c6842703          	lw	a4,-920(s0)
    15e4:	c0c0c7b7          	lui	a5,0xc0c0c
    15e8:	0c078793          	addi	a5,a5,192 # c0c0c0c0 <IO_BASE+0xc080c0c0>
    15ec:	00f70c63          	beq	a4,a5,1604 <main+0x15a4>
    15f0:	05800513          	li	a0,88
    15f4:	3e9000ef          	jal	ra,21dc <print_dec>
    15f8:	000107b7          	lui	a5,0x10
    15fc:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1600:	3ad000ef          	jal	ra,21ac <puts>
    1604:	818187b7          	lui	a5,0x81818
    1608:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    160c:	c6f42223          	sw	a5,-924(s0)
    1610:	c6442783          	lw	a5,-924(s0)
    1614:	4077d793          	srai	a5,a5,0x7
    1618:	c6f42023          	sw	a5,-928(s0)
    161c:	c6042703          	lw	a4,-928(s0)
    1620:	ff0307b7          	lui	a5,0xff030
    1624:	30378793          	addi	a5,a5,771 # ff030303 <IO_BASE+0xfec30303>
    1628:	00f70c63          	beq	a4,a5,1640 <main+0x15e0>
    162c:	05900513          	li	a0,89
    1630:	3ad000ef          	jal	ra,21dc <print_dec>
    1634:	000107b7          	lui	a5,0x10
    1638:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    163c:	371000ef          	jal	ra,21ac <puts>
    1640:	818187b7          	lui	a5,0x81818
    1644:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1648:	c4f42e23          	sw	a5,-932(s0)
    164c:	c5c42783          	lw	a5,-932(s0)
    1650:	40e7d793          	srai	a5,a5,0xe
    1654:	c4f42c23          	sw	a5,-936(s0)
    1658:	c5842703          	lw	a4,-936(s0)
    165c:	fffe07b7          	lui	a5,0xfffe0
    1660:	60678793          	addi	a5,a5,1542 # fffe0606 <IO_BASE+0xffbe0606>
    1664:	00f70c63          	beq	a4,a5,167c <main+0x161c>
    1668:	05a00513          	li	a0,90
    166c:	371000ef          	jal	ra,21dc <print_dec>
    1670:	000107b7          	lui	a5,0x10
    1674:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1678:	335000ef          	jal	ra,21ac <puts>
    167c:	818187b7          	lui	a5,0x81818
    1680:	18178793          	addi	a5,a5,385 # 81818181 <IO_BASE+0x81418181>
    1684:	c4f42a23          	sw	a5,-940(s0)
    1688:	c5442783          	lw	a5,-940(s0)
    168c:	41f7d793          	srai	a5,a5,0x1f
    1690:	c4f42823          	sw	a5,-944(s0)
    1694:	c5042703          	lw	a4,-944(s0)
    1698:	fff00793          	li	a5,-1
    169c:	00f70c63          	beq	a4,a5,16b4 <main+0x1654>
    16a0:	05b00513          	li	a0,91
    16a4:	339000ef          	jal	ra,21dc <print_dec>
    16a8:	000107b7          	lui	a5,0x10
    16ac:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    16b0:	2fd000ef          	jal	ra,21ac <puts>
    16b4:	212127b7          	lui	a5,0x21212
    16b8:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    16bc:	c4f42623          	sw	a5,-948(s0)
    16c0:	fc000793          	li	a5,-64
    16c4:	c4f42423          	sw	a5,-952(s0)
    16c8:	c4c42783          	lw	a5,-948(s0)
    16cc:	c4842703          	lw	a4,-952(s0)
    16d0:	00e7d7b3          	srl	a5,a5,a4
    16d4:	c4f42223          	sw	a5,-956(s0)
    16d8:	c4442703          	lw	a4,-956(s0)
    16dc:	212127b7          	lui	a5,0x21212
    16e0:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    16e4:	00f70c63          	beq	a4,a5,16fc <main+0x169c>
    16e8:	05c00513          	li	a0,92
    16ec:	2f1000ef          	jal	ra,21dc <print_dec>
    16f0:	000107b7          	lui	a5,0x10
    16f4:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    16f8:	2b5000ef          	jal	ra,21ac <puts>
    16fc:	212127b7          	lui	a5,0x21212
    1700:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    1704:	c4f42023          	sw	a5,-960(s0)
    1708:	fc100793          	li	a5,-63
    170c:	c2f42e23          	sw	a5,-964(s0)
    1710:	c4042783          	lw	a5,-960(s0)
    1714:	c3c42703          	lw	a4,-964(s0)
    1718:	00e7d7b3          	srl	a5,a5,a4
    171c:	c2f42c23          	sw	a5,-968(s0)
    1720:	c3842703          	lw	a4,-968(s0)
    1724:	109097b7          	lui	a5,0x10909
    1728:	09078793          	addi	a5,a5,144 # 10909090 <IO_BASE+0x10509090>
    172c:	00f70c63          	beq	a4,a5,1744 <main+0x16e4>
    1730:	05d00513          	li	a0,93
    1734:	2a9000ef          	jal	ra,21dc <print_dec>
    1738:	000107b7          	lui	a5,0x10
    173c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1740:	26d000ef          	jal	ra,21ac <puts>
    1744:	212127b7          	lui	a5,0x21212
    1748:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    174c:	c2f42a23          	sw	a5,-972(s0)
    1750:	fc700793          	li	a5,-57
    1754:	c2f42823          	sw	a5,-976(s0)
    1758:	c3442783          	lw	a5,-972(s0)
    175c:	c3042703          	lw	a4,-976(s0)
    1760:	00e7d7b3          	srl	a5,a5,a4
    1764:	c2f42623          	sw	a5,-980(s0)
    1768:	c2c42703          	lw	a4,-980(s0)
    176c:	004247b7          	lui	a5,0x424
    1770:	24278793          	addi	a5,a5,578 # 424242 <IO_BASE+0x24242>
    1774:	00f70c63          	beq	a4,a5,178c <main+0x172c>
    1778:	05e00513          	li	a0,94
    177c:	261000ef          	jal	ra,21dc <print_dec>
    1780:	000107b7          	lui	a5,0x10
    1784:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1788:	225000ef          	jal	ra,21ac <puts>
    178c:	212127b7          	lui	a5,0x21212
    1790:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    1794:	c2f42423          	sw	a5,-984(s0)
    1798:	fce00793          	li	a5,-50
    179c:	c2f42223          	sw	a5,-988(s0)
    17a0:	c2842783          	lw	a5,-984(s0)
    17a4:	c2442703          	lw	a4,-988(s0)
    17a8:	00e7d7b3          	srl	a5,a5,a4
    17ac:	c2f42023          	sw	a5,-992(s0)
    17b0:	c2042703          	lw	a4,-992(s0)
    17b4:	000087b7          	lui	a5,0x8
    17b8:	48478793          	addi	a5,a5,1156 # 8484 <__modsi3+0x60f4>
    17bc:	00f70c63          	beq	a4,a5,17d4 <main+0x1774>
    17c0:	05f00513          	li	a0,95
    17c4:	219000ef          	jal	ra,21dc <print_dec>
    17c8:	000107b7          	lui	a5,0x10
    17cc:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    17d0:	1dd000ef          	jal	ra,21ac <puts>
    17d4:	212127b7          	lui	a5,0x21212
    17d8:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    17dc:	c0f42e23          	sw	a5,-996(s0)
    17e0:	fff00793          	li	a5,-1
    17e4:	c0f42c23          	sw	a5,-1000(s0)
    17e8:	c1c42783          	lw	a5,-996(s0)
    17ec:	c1842703          	lw	a4,-1000(s0)
    17f0:	00e7d7b3          	srl	a5,a5,a4
    17f4:	c0f42a23          	sw	a5,-1004(s0)
    17f8:	c1442783          	lw	a5,-1004(s0)
    17fc:	00078c63          	beqz	a5,1814 <main+0x17b4>
    1800:	06000513          	li	a0,96
    1804:	1d9000ef          	jal	ra,21dc <print_dec>
    1808:	000107b7          	lui	a5,0x10
    180c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1810:	19d000ef          	jal	ra,21ac <puts>
    1814:	800007b7          	lui	a5,0x80000
    1818:	c0f42823          	sw	a5,-1008(s0)
    181c:	c1042783          	lw	a5,-1008(s0)
    1820:	0007d793          	srli	a5,a5,0x0
    1824:	c0f42623          	sw	a5,-1012(s0)
    1828:	c0c42703          	lw	a4,-1012(s0)
    182c:	800007b7          	lui	a5,0x80000
    1830:	00f70c63          	beq	a4,a5,1848 <main+0x17e8>
    1834:	06100513          	li	a0,97
    1838:	1a5000ef          	jal	ra,21dc <print_dec>
    183c:	000107b7          	lui	a5,0x10
    1840:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1844:	169000ef          	jal	ra,21ac <puts>
    1848:	800007b7          	lui	a5,0x80000
    184c:	c0f42423          	sw	a5,-1016(s0)
    1850:	c0842783          	lw	a5,-1016(s0)
    1854:	0017d793          	srli	a5,a5,0x1
    1858:	c0f42223          	sw	a5,-1020(s0)
    185c:	c0442703          	lw	a4,-1020(s0)
    1860:	400007b7          	lui	a5,0x40000
    1864:	00f70c63          	beq	a4,a5,187c <main+0x181c>
    1868:	06200513          	li	a0,98
    186c:	171000ef          	jal	ra,21dc <print_dec>
    1870:	000107b7          	lui	a5,0x10
    1874:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1878:	135000ef          	jal	ra,21ac <puts>
    187c:	800007b7          	lui	a5,0x80000
    1880:	c0f42023          	sw	a5,-1024(s0)
    1884:	c0042783          	lw	a5,-1024(s0)
    1888:	0077d793          	srli	a5,a5,0x7
    188c:	bef42e23          	sw	a5,-1028(s0)
    1890:	bfc42703          	lw	a4,-1028(s0)
    1894:	010007b7          	lui	a5,0x1000
    1898:	00f70c63          	beq	a4,a5,18b0 <main+0x1850>
    189c:	06300513          	li	a0,99
    18a0:	13d000ef          	jal	ra,21dc <print_dec>
    18a4:	000107b7          	lui	a5,0x10
    18a8:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    18ac:	101000ef          	jal	ra,21ac <puts>
    18b0:	800007b7          	lui	a5,0x80000
    18b4:	bef42c23          	sw	a5,-1032(s0)
    18b8:	bf842783          	lw	a5,-1032(s0)
    18bc:	00e7d793          	srli	a5,a5,0xe
    18c0:	bef42a23          	sw	a5,-1036(s0)
    18c4:	bf442703          	lw	a4,-1036(s0)
    18c8:	000207b7          	lui	a5,0x20
    18cc:	00f70c63          	beq	a4,a5,18e4 <main+0x1884>
    18d0:	06400513          	li	a0,100
    18d4:	109000ef          	jal	ra,21dc <print_dec>
    18d8:	000107b7          	lui	a5,0x10
    18dc:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    18e0:	0cd000ef          	jal	ra,21ac <puts>
    18e4:	800007b7          	lui	a5,0x80000
    18e8:	00178793          	addi	a5,a5,1 # 80000001 <IO_BASE+0x7fc00001>
    18ec:	bef42823          	sw	a5,-1040(s0)
    18f0:	bf042783          	lw	a5,-1040(s0)
    18f4:	01f7d793          	srli	a5,a5,0x1f
    18f8:	bef42623          	sw	a5,-1044(s0)
    18fc:	bec42703          	lw	a4,-1044(s0)
    1900:	00100793          	li	a5,1
    1904:	00f70c63          	beq	a4,a5,191c <main+0x18bc>
    1908:	06500513          	li	a0,101
    190c:	0d1000ef          	jal	ra,21dc <print_dec>
    1910:	000107b7          	lui	a5,0x10
    1914:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1918:	095000ef          	jal	ra,21ac <puts>
    191c:	fff00793          	li	a5,-1
    1920:	bef42423          	sw	a5,-1048(s0)
    1924:	be842783          	lw	a5,-1048(s0)
    1928:	0007d793          	srli	a5,a5,0x0
    192c:	bef42223          	sw	a5,-1052(s0)
    1930:	be442703          	lw	a4,-1052(s0)
    1934:	fff00793          	li	a5,-1
    1938:	00f70c63          	beq	a4,a5,1950 <main+0x18f0>
    193c:	06600513          	li	a0,102
    1940:	09d000ef          	jal	ra,21dc <print_dec>
    1944:	000107b7          	lui	a5,0x10
    1948:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    194c:	061000ef          	jal	ra,21ac <puts>
    1950:	fff00793          	li	a5,-1
    1954:	bef42023          	sw	a5,-1056(s0)
    1958:	be042783          	lw	a5,-1056(s0)
    195c:	0017d793          	srli	a5,a5,0x1
    1960:	bcf42e23          	sw	a5,-1060(s0)
    1964:	bdc42703          	lw	a4,-1060(s0)
    1968:	800007b7          	lui	a5,0x80000
    196c:	fff7c793          	not	a5,a5
    1970:	00f70c63          	beq	a4,a5,1988 <main+0x1928>
    1974:	06700513          	li	a0,103
    1978:	065000ef          	jal	ra,21dc <print_dec>
    197c:	000107b7          	lui	a5,0x10
    1980:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1984:	029000ef          	jal	ra,21ac <puts>
    1988:	fff00793          	li	a5,-1
    198c:	bcf42c23          	sw	a5,-1064(s0)
    1990:	bd842783          	lw	a5,-1064(s0)
    1994:	0077d793          	srli	a5,a5,0x7
    1998:	bcf42a23          	sw	a5,-1068(s0)
    199c:	bd442703          	lw	a4,-1068(s0)
    19a0:	020007b7          	lui	a5,0x2000
    19a4:	fff78793          	addi	a5,a5,-1 # 1ffffff <IO_BASE+0x1bfffff>
    19a8:	00f70c63          	beq	a4,a5,19c0 <main+0x1960>
    19ac:	06800513          	li	a0,104
    19b0:	02d000ef          	jal	ra,21dc <print_dec>
    19b4:	000107b7          	lui	a5,0x10
    19b8:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    19bc:	7f0000ef          	jal	ra,21ac <puts>
    19c0:	fff00793          	li	a5,-1
    19c4:	bcf42823          	sw	a5,-1072(s0)
    19c8:	bd042783          	lw	a5,-1072(s0)
    19cc:	00e7d793          	srli	a5,a5,0xe
    19d0:	bcf42623          	sw	a5,-1076(s0)
    19d4:	bcc42703          	lw	a4,-1076(s0)
    19d8:	000407b7          	lui	a5,0x40
    19dc:	fff78793          	addi	a5,a5,-1 # 3ffff <__modsi3+0x3dc6f>
    19e0:	00f70c63          	beq	a4,a5,19f8 <main+0x1998>
    19e4:	06900513          	li	a0,105
    19e8:	7f4000ef          	jal	ra,21dc <print_dec>
    19ec:	000107b7          	lui	a5,0x10
    19f0:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    19f4:	7b8000ef          	jal	ra,21ac <puts>
    19f8:	fff00793          	li	a5,-1
    19fc:	bcf42423          	sw	a5,-1080(s0)
    1a00:	bc842783          	lw	a5,-1080(s0)
    1a04:	01f7d793          	srli	a5,a5,0x1f
    1a08:	bcf42223          	sw	a5,-1084(s0)
    1a0c:	bc442703          	lw	a4,-1084(s0)
    1a10:	00100793          	li	a5,1
    1a14:	00f70c63          	beq	a4,a5,1a2c <main+0x19cc>
    1a18:	06a00513          	li	a0,106
    1a1c:	7c0000ef          	jal	ra,21dc <print_dec>
    1a20:	000107b7          	lui	a5,0x10
    1a24:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1a28:	784000ef          	jal	ra,21ac <puts>
    1a2c:	212127b7          	lui	a5,0x21212
    1a30:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    1a34:	bcf42023          	sw	a5,-1088(s0)
    1a38:	bc042783          	lw	a5,-1088(s0)
    1a3c:	0007d793          	srli	a5,a5,0x0
    1a40:	baf42e23          	sw	a5,-1092(s0)
    1a44:	bbc42703          	lw	a4,-1092(s0)
    1a48:	212127b7          	lui	a5,0x21212
    1a4c:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    1a50:	00f70c63          	beq	a4,a5,1a68 <main+0x1a08>
    1a54:	06b00513          	li	a0,107
    1a58:	784000ef          	jal	ra,21dc <print_dec>
    1a5c:	000107b7          	lui	a5,0x10
    1a60:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1a64:	748000ef          	jal	ra,21ac <puts>
    1a68:	212127b7          	lui	a5,0x21212
    1a6c:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    1a70:	baf42c23          	sw	a5,-1096(s0)
    1a74:	bb842783          	lw	a5,-1096(s0)
    1a78:	0017d793          	srli	a5,a5,0x1
    1a7c:	baf42a23          	sw	a5,-1100(s0)
    1a80:	bb442703          	lw	a4,-1100(s0)
    1a84:	109097b7          	lui	a5,0x10909
    1a88:	09078793          	addi	a5,a5,144 # 10909090 <IO_BASE+0x10509090>
    1a8c:	00f70c63          	beq	a4,a5,1aa4 <main+0x1a44>
    1a90:	06c00513          	li	a0,108
    1a94:	748000ef          	jal	ra,21dc <print_dec>
    1a98:	000107b7          	lui	a5,0x10
    1a9c:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1aa0:	70c000ef          	jal	ra,21ac <puts>
    1aa4:	212127b7          	lui	a5,0x21212
    1aa8:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    1aac:	baf42823          	sw	a5,-1104(s0)
    1ab0:	bb042783          	lw	a5,-1104(s0)
    1ab4:	0077d793          	srli	a5,a5,0x7
    1ab8:	baf42623          	sw	a5,-1108(s0)
    1abc:	bac42703          	lw	a4,-1108(s0)
    1ac0:	004247b7          	lui	a5,0x424
    1ac4:	24278793          	addi	a5,a5,578 # 424242 <IO_BASE+0x24242>
    1ac8:	00f70c63          	beq	a4,a5,1ae0 <main+0x1a80>
    1acc:	06d00513          	li	a0,109
    1ad0:	70c000ef          	jal	ra,21dc <print_dec>
    1ad4:	000107b7          	lui	a5,0x10
    1ad8:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1adc:	6d0000ef          	jal	ra,21ac <puts>
    1ae0:	212127b7          	lui	a5,0x21212
    1ae4:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    1ae8:	baf42423          	sw	a5,-1112(s0)
    1aec:	ba842783          	lw	a5,-1112(s0)
    1af0:	00e7d793          	srli	a5,a5,0xe
    1af4:	baf42223          	sw	a5,-1116(s0)
    1af8:	ba442703          	lw	a4,-1116(s0)
    1afc:	000087b7          	lui	a5,0x8
    1b00:	48478793          	addi	a5,a5,1156 # 8484 <__modsi3+0x60f4>
    1b04:	00f70c63          	beq	a4,a5,1b1c <main+0x1abc>
    1b08:	06e00513          	li	a0,110
    1b0c:	6d0000ef          	jal	ra,21dc <print_dec>
    1b10:	000107b7          	lui	a5,0x10
    1b14:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1b18:	694000ef          	jal	ra,21ac <puts>
    1b1c:	212127b7          	lui	a5,0x21212
    1b20:	12178793          	addi	a5,a5,289 # 21212121 <IO_BASE+0x20e12121>
    1b24:	baf42023          	sw	a5,-1120(s0)
    1b28:	ba042783          	lw	a5,-1120(s0)
    1b2c:	01f7d793          	srli	a5,a5,0x1f
    1b30:	b8f42e23          	sw	a5,-1124(s0)
    1b34:	b9c42783          	lw	a5,-1124(s0)
    1b38:	00078c63          	beqz	a5,1b50 <main+0x1af0>
    1b3c:	06f00513          	li	a0,111
    1b40:	69c000ef          	jal	ra,21dc <print_dec>
    1b44:	000107b7          	lui	a5,0x10
    1b48:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    1b4c:	660000ef          	jal	ra,21ac <puts>
    1b50:	b8042c23          	sw	zero,-1128(s0)
    1b54:	b8042a23          	sw	zero,-1132(s0)
    1b58:	b9842783          	lw	a5,-1128(s0)
    1b5c:	b9442703          	lw	a4,-1132(s0)
    1b60:	40e787b3          	sub	a5,a5,a4
    1b64:	b8f42823          	sw	a5,-1136(s0)
    1b68:	b9042783          	lw	a5,-1136(s0)
    1b6c:	00078c63          	beqz	a5,1b84 <main+0x1b24>
    1b70:	07000513          	li	a0,112
    1b74:	668000ef          	jal	ra,21dc <print_dec>
    1b78:	000107b7          	lui	a5,0x10
    1b7c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1b80:	62c000ef          	jal	ra,21ac <puts>
    1b84:	00100793          	li	a5,1
    1b88:	b8f42623          	sw	a5,-1140(s0)
    1b8c:	00100793          	li	a5,1
    1b90:	b8f42423          	sw	a5,-1144(s0)
    1b94:	b8c42783          	lw	a5,-1140(s0)
    1b98:	b8842703          	lw	a4,-1144(s0)
    1b9c:	40e787b3          	sub	a5,a5,a4
    1ba0:	b8f42223          	sw	a5,-1148(s0)
    1ba4:	b8442783          	lw	a5,-1148(s0)
    1ba8:	00078c63          	beqz	a5,1bc0 <main+0x1b60>
    1bac:	07100513          	li	a0,113
    1bb0:	62c000ef          	jal	ra,21dc <print_dec>
    1bb4:	000107b7          	lui	a5,0x10
    1bb8:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1bbc:	5f0000ef          	jal	ra,21ac <puts>
    1bc0:	00300793          	li	a5,3
    1bc4:	b8f42023          	sw	a5,-1152(s0)
    1bc8:	00700793          	li	a5,7
    1bcc:	b6f42e23          	sw	a5,-1156(s0)
    1bd0:	b8042783          	lw	a5,-1152(s0)
    1bd4:	b7c42703          	lw	a4,-1156(s0)
    1bd8:	40e787b3          	sub	a5,a5,a4
    1bdc:	b6f42c23          	sw	a5,-1160(s0)
    1be0:	b7842703          	lw	a4,-1160(s0)
    1be4:	ffc00793          	li	a5,-4
    1be8:	00f70c63          	beq	a4,a5,1c00 <main+0x1ba0>
    1bec:	07200513          	li	a0,114
    1bf0:	5ec000ef          	jal	ra,21dc <print_dec>
    1bf4:	000107b7          	lui	a5,0x10
    1bf8:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1bfc:	5b0000ef          	jal	ra,21ac <puts>
    1c00:	b6042a23          	sw	zero,-1164(s0)
    1c04:	ffff87b7          	lui	a5,0xffff8
    1c08:	b6f42823          	sw	a5,-1168(s0)
    1c0c:	b7442783          	lw	a5,-1164(s0)
    1c10:	b7042703          	lw	a4,-1168(s0)
    1c14:	40e787b3          	sub	a5,a5,a4
    1c18:	b6f42623          	sw	a5,-1172(s0)
    1c1c:	b6c42703          	lw	a4,-1172(s0)
    1c20:	000087b7          	lui	a5,0x8
    1c24:	00f70c63          	beq	a4,a5,1c3c <main+0x1bdc>
    1c28:	07300513          	li	a0,115
    1c2c:	5b0000ef          	jal	ra,21dc <print_dec>
    1c30:	000107b7          	lui	a5,0x10
    1c34:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1c38:	574000ef          	jal	ra,21ac <puts>
    1c3c:	800007b7          	lui	a5,0x80000
    1c40:	b6f42423          	sw	a5,-1176(s0)
    1c44:	b6042223          	sw	zero,-1180(s0)
    1c48:	b6842783          	lw	a5,-1176(s0)
    1c4c:	b6442703          	lw	a4,-1180(s0)
    1c50:	40e787b3          	sub	a5,a5,a4
    1c54:	b6f42023          	sw	a5,-1184(s0)
    1c58:	b6042703          	lw	a4,-1184(s0)
    1c5c:	800007b7          	lui	a5,0x80000
    1c60:	00f70c63          	beq	a4,a5,1c78 <main+0x1c18>
    1c64:	07400513          	li	a0,116
    1c68:	574000ef          	jal	ra,21dc <print_dec>
    1c6c:	000107b7          	lui	a5,0x10
    1c70:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1c74:	538000ef          	jal	ra,21ac <puts>
    1c78:	800007b7          	lui	a5,0x80000
    1c7c:	b4f42e23          	sw	a5,-1188(s0)
    1c80:	ffff87b7          	lui	a5,0xffff8
    1c84:	b4f42c23          	sw	a5,-1192(s0)
    1c88:	b5c42783          	lw	a5,-1188(s0)
    1c8c:	b5842703          	lw	a4,-1192(s0)
    1c90:	40e787b3          	sub	a5,a5,a4
    1c94:	b4f42a23          	sw	a5,-1196(s0)
    1c98:	b5442703          	lw	a4,-1196(s0)
    1c9c:	800087b7          	lui	a5,0x80008
    1ca0:	00f70c63          	beq	a4,a5,1cb8 <main+0x1c58>
    1ca4:	07500513          	li	a0,117
    1ca8:	534000ef          	jal	ra,21dc <print_dec>
    1cac:	000107b7          	lui	a5,0x10
    1cb0:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1cb4:	4f8000ef          	jal	ra,21ac <puts>
    1cb8:	b4042823          	sw	zero,-1200(s0)
    1cbc:	000087b7          	lui	a5,0x8
    1cc0:	fff78793          	addi	a5,a5,-1 # 7fff <__modsi3+0x5c6f>
    1cc4:	b4f42623          	sw	a5,-1204(s0)
    1cc8:	b5042783          	lw	a5,-1200(s0)
    1ccc:	b4c42703          	lw	a4,-1204(s0)
    1cd0:	40e787b3          	sub	a5,a5,a4
    1cd4:	b4f42423          	sw	a5,-1208(s0)
    1cd8:	b4842703          	lw	a4,-1208(s0)
    1cdc:	ffff87b7          	lui	a5,0xffff8
    1ce0:	00178793          	addi	a5,a5,1 # ffff8001 <IO_BASE+0xffbf8001>
    1ce4:	00f70c63          	beq	a4,a5,1cfc <main+0x1c9c>
    1ce8:	07600513          	li	a0,118
    1cec:	4f0000ef          	jal	ra,21dc <print_dec>
    1cf0:	000107b7          	lui	a5,0x10
    1cf4:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1cf8:	4b4000ef          	jal	ra,21ac <puts>
    1cfc:	800007b7          	lui	a5,0x80000
    1d00:	fff7c793          	not	a5,a5
    1d04:	b4f42223          	sw	a5,-1212(s0)
    1d08:	b4042023          	sw	zero,-1216(s0)
    1d0c:	b4442783          	lw	a5,-1212(s0)
    1d10:	b4042703          	lw	a4,-1216(s0)
    1d14:	40e787b3          	sub	a5,a5,a4
    1d18:	b2f42e23          	sw	a5,-1220(s0)
    1d1c:	b3c42703          	lw	a4,-1220(s0)
    1d20:	800007b7          	lui	a5,0x80000
    1d24:	fff7c793          	not	a5,a5
    1d28:	00f70c63          	beq	a4,a5,1d40 <main+0x1ce0>
    1d2c:	07700513          	li	a0,119
    1d30:	4ac000ef          	jal	ra,21dc <print_dec>
    1d34:	000107b7          	lui	a5,0x10
    1d38:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1d3c:	470000ef          	jal	ra,21ac <puts>
    1d40:	800007b7          	lui	a5,0x80000
    1d44:	fff7c793          	not	a5,a5
    1d48:	b2f42c23          	sw	a5,-1224(s0)
    1d4c:	000087b7          	lui	a5,0x8
    1d50:	fff78793          	addi	a5,a5,-1 # 7fff <__modsi3+0x5c6f>
    1d54:	b2f42a23          	sw	a5,-1228(s0)
    1d58:	b3842783          	lw	a5,-1224(s0)
    1d5c:	b3442703          	lw	a4,-1228(s0)
    1d60:	40e787b3          	sub	a5,a5,a4
    1d64:	b2f42823          	sw	a5,-1232(s0)
    1d68:	b3042703          	lw	a4,-1232(s0)
    1d6c:	7fff87b7          	lui	a5,0x7fff8
    1d70:	00f70c63          	beq	a4,a5,1d88 <main+0x1d28>
    1d74:	07800513          	li	a0,120
    1d78:	464000ef          	jal	ra,21dc <print_dec>
    1d7c:	000107b7          	lui	a5,0x10
    1d80:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1d84:	428000ef          	jal	ra,21ac <puts>
    1d88:	800007b7          	lui	a5,0x80000
    1d8c:	b2f42623          	sw	a5,-1236(s0)
    1d90:	000087b7          	lui	a5,0x8
    1d94:	fff78793          	addi	a5,a5,-1 # 7fff <__modsi3+0x5c6f>
    1d98:	b2f42423          	sw	a5,-1240(s0)
    1d9c:	b2c42783          	lw	a5,-1236(s0)
    1da0:	b2842703          	lw	a4,-1240(s0)
    1da4:	40e787b3          	sub	a5,a5,a4
    1da8:	b2f42223          	sw	a5,-1244(s0)
    1dac:	b2442703          	lw	a4,-1244(s0)
    1db0:	7fff87b7          	lui	a5,0x7fff8
    1db4:	00178793          	addi	a5,a5,1 # 7fff8001 <IO_BASE+0x7fbf8001>
    1db8:	00f70c63          	beq	a4,a5,1dd0 <main+0x1d70>
    1dbc:	07900513          	li	a0,121
    1dc0:	41c000ef          	jal	ra,21dc <print_dec>
    1dc4:	000107b7          	lui	a5,0x10
    1dc8:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1dcc:	3e0000ef          	jal	ra,21ac <puts>
    1dd0:	800007b7          	lui	a5,0x80000
    1dd4:	fff7c793          	not	a5,a5
    1dd8:	b2f42023          	sw	a5,-1248(s0)
    1ddc:	ffff87b7          	lui	a5,0xffff8
    1de0:	b0f42e23          	sw	a5,-1252(s0)
    1de4:	b2042783          	lw	a5,-1248(s0)
    1de8:	b1c42703          	lw	a4,-1252(s0)
    1dec:	40e787b3          	sub	a5,a5,a4
    1df0:	b0f42c23          	sw	a5,-1256(s0)
    1df4:	b1842703          	lw	a4,-1256(s0)
    1df8:	800087b7          	lui	a5,0x80008
    1dfc:	fff78793          	addi	a5,a5,-1 # 80007fff <IO_BASE+0x7fc07fff>
    1e00:	00f70c63          	beq	a4,a5,1e18 <main+0x1db8>
    1e04:	07a00513          	li	a0,122
    1e08:	3d4000ef          	jal	ra,21dc <print_dec>
    1e0c:	000107b7          	lui	a5,0x10
    1e10:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1e14:	398000ef          	jal	ra,21ac <puts>
    1e18:	b0042a23          	sw	zero,-1260(s0)
    1e1c:	fff00793          	li	a5,-1
    1e20:	b0f42823          	sw	a5,-1264(s0)
    1e24:	b1442783          	lw	a5,-1260(s0)
    1e28:	b1042703          	lw	a4,-1264(s0)
    1e2c:	40e787b3          	sub	a5,a5,a4
    1e30:	b0f42623          	sw	a5,-1268(s0)
    1e34:	b0c42703          	lw	a4,-1268(s0)
    1e38:	00100793          	li	a5,1
    1e3c:	00f70c63          	beq	a4,a5,1e54 <main+0x1df4>
    1e40:	07b00513          	li	a0,123
    1e44:	398000ef          	jal	ra,21dc <print_dec>
    1e48:	000107b7          	lui	a5,0x10
    1e4c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1e50:	35c000ef          	jal	ra,21ac <puts>
    1e54:	fff00793          	li	a5,-1
    1e58:	b0f42423          	sw	a5,-1272(s0)
    1e5c:	00100793          	li	a5,1
    1e60:	b0f42223          	sw	a5,-1276(s0)
    1e64:	b0842783          	lw	a5,-1272(s0)
    1e68:	b0442703          	lw	a4,-1276(s0)
    1e6c:	40e787b3          	sub	a5,a5,a4
    1e70:	b0f42023          	sw	a5,-1280(s0)
    1e74:	b0042703          	lw	a4,-1280(s0)
    1e78:	ffe00793          	li	a5,-2
    1e7c:	00f70c63          	beq	a4,a5,1e94 <main+0x1e34>
    1e80:	07c00513          	li	a0,124
    1e84:	358000ef          	jal	ra,21dc <print_dec>
    1e88:	000107b7          	lui	a5,0x10
    1e8c:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1e90:	31c000ef          	jal	ra,21ac <puts>
    1e94:	fff00793          	li	a5,-1
    1e98:	aef42e23          	sw	a5,-1284(s0)
    1e9c:	fff00793          	li	a5,-1
    1ea0:	aef42c23          	sw	a5,-1288(s0)
    1ea4:	afc42783          	lw	a5,-1284(s0)
    1ea8:	af842703          	lw	a4,-1288(s0)
    1eac:	40e787b3          	sub	a5,a5,a4
    1eb0:	aef42a23          	sw	a5,-1292(s0)
    1eb4:	af442783          	lw	a5,-1292(s0)
    1eb8:	00078c63          	beqz	a5,1ed0 <main+0x1e70>
    1ebc:	07d00513          	li	a0,125
    1ec0:	31c000ef          	jal	ra,21dc <print_dec>
    1ec4:	000107b7          	lui	a5,0x10
    1ec8:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1ecc:	2e0000ef          	jal	ra,21ac <puts>
    1ed0:	ff0107b7          	lui	a5,0xff010
    1ed4:	f0078793          	addi	a5,a5,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
    1ed8:	aef42823          	sw	a5,-1296(s0)
    1edc:	0f0f17b7          	lui	a5,0xf0f1
    1ee0:	f0f78793          	addi	a5,a5,-241 # f0f0f0f <IO_BASE+0xecf0f0f>
    1ee4:	aef42623          	sw	a5,-1300(s0)
    1ee8:	af042783          	lw	a5,-1296(s0)
    1eec:	aec42703          	lw	a4,-1300(s0)
    1ef0:	00e7c7b3          	xor	a5,a5,a4
    1ef4:	aef42423          	sw	a5,-1304(s0)
    1ef8:	ae842703          	lw	a4,-1304(s0)
    1efc:	f00ff7b7          	lui	a5,0xf00ff
    1f00:	00f78793          	addi	a5,a5,15 # f00ff00f <IO_BASE+0xefcff00f>
    1f04:	00f70c63          	beq	a4,a5,1f1c <main+0x1ebc>
    1f08:	07e00513          	li	a0,126
    1f0c:	2d0000ef          	jal	ra,21dc <print_dec>
    1f10:	000107b7          	lui	a5,0x10
    1f14:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1f18:	294000ef          	jal	ra,21ac <puts>
    1f1c:	0ff017b7          	lui	a5,0xff01
    1f20:	ff078793          	addi	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
    1f24:	aef42223          	sw	a5,-1308(s0)
    1f28:	f0f0f7b7          	lui	a5,0xf0f0f
    1f2c:	0f078793          	addi	a5,a5,240 # f0f0f0f0 <IO_BASE+0xf0b0f0f0>
    1f30:	aef42023          	sw	a5,-1312(s0)
    1f34:	ae442783          	lw	a5,-1308(s0)
    1f38:	ae042703          	lw	a4,-1312(s0)
    1f3c:	00e7c7b3          	xor	a5,a5,a4
    1f40:	acf42e23          	sw	a5,-1316(s0)
    1f44:	adc42703          	lw	a4,-1316(s0)
    1f48:	ff0107b7          	lui	a5,0xff010
    1f4c:	f0078793          	addi	a5,a5,-256 # ff00ff00 <IO_BASE+0xfec0ff00>
    1f50:	00f70c63          	beq	a4,a5,1f68 <main+0x1f08>
    1f54:	07f00513          	li	a0,127
    1f58:	284000ef          	jal	ra,21dc <print_dec>
    1f5c:	000107b7          	lui	a5,0x10
    1f60:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1f64:	248000ef          	jal	ra,21ac <puts>
    1f68:	00ff07b7          	lui	a5,0xff0
    1f6c:	0ff78793          	addi	a5,a5,255 # ff00ff <IO_BASE+0xbf00ff>
    1f70:	acf42c23          	sw	a5,-1320(s0)
    1f74:	0f0f17b7          	lui	a5,0xf0f1
    1f78:	f0f78793          	addi	a5,a5,-241 # f0f0f0f <IO_BASE+0xecf0f0f>
    1f7c:	acf42a23          	sw	a5,-1324(s0)
    1f80:	ad842783          	lw	a5,-1320(s0)
    1f84:	ad442703          	lw	a4,-1324(s0)
    1f88:	00e7c7b3          	xor	a5,a5,a4
    1f8c:	acf42823          	sw	a5,-1328(s0)
    1f90:	ad042703          	lw	a4,-1328(s0)
    1f94:	0ff017b7          	lui	a5,0xff01
    1f98:	ff078793          	addi	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
    1f9c:	00f70c63          	beq	a4,a5,1fb4 <main+0x1f54>
    1fa0:	08000513          	li	a0,128
    1fa4:	238000ef          	jal	ra,21dc <print_dec>
    1fa8:	000107b7          	lui	a5,0x10
    1fac:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1fb0:	1fc000ef          	jal	ra,21ac <puts>
    1fb4:	f00ff7b7          	lui	a5,0xf00ff
    1fb8:	00f78793          	addi	a5,a5,15 # f00ff00f <IO_BASE+0xefcff00f>
    1fbc:	acf42623          	sw	a5,-1332(s0)
    1fc0:	f0f0f7b7          	lui	a5,0xf0f0f
    1fc4:	0f078793          	addi	a5,a5,240 # f0f0f0f0 <IO_BASE+0xf0b0f0f0>
    1fc8:	acf42423          	sw	a5,-1336(s0)
    1fcc:	acc42783          	lw	a5,-1332(s0)
    1fd0:	ac842703          	lw	a4,-1336(s0)
    1fd4:	00e7c7b3          	xor	a5,a5,a4
    1fd8:	acf42223          	sw	a5,-1340(s0)
    1fdc:	ac442703          	lw	a4,-1340(s0)
    1fe0:	00ff07b7          	lui	a5,0xff0
    1fe4:	0ff78793          	addi	a5,a5,255 # ff00ff <IO_BASE+0xbf00ff>
    1fe8:	00f70c63          	beq	a4,a5,2000 <main+0x1fa0>
    1fec:	08100513          	li	a0,129
    1ff0:	1ec000ef          	jal	ra,21dc <print_dec>
    1ff4:	000107b7          	lui	a5,0x10
    1ff8:	02078513          	addi	a0,a5,32 # 10020 <__modsi3+0xdc90>
    1ffc:	1b0000ef          	jal	ra,21ac <puts>
    2000:	00ff17b7          	lui	a5,0xff1
    2004:	f0078793          	addi	a5,a5,-256 # ff0f00 <IO_BASE+0xbf0f00>
    2008:	acf42023          	sw	a5,-1344(s0)
    200c:	ac042783          	lw	a5,-1344(s0)
    2010:	f0f7c793          	xori	a5,a5,-241
    2014:	aaf42e23          	sw	a5,-1348(s0)
    2018:	abc42703          	lw	a4,-1348(s0)
    201c:	ff00f7b7          	lui	a5,0xff00f
    2020:	00f78793          	addi	a5,a5,15 # ff00f00f <IO_BASE+0xfec0f00f>
    2024:	00f70c63          	beq	a4,a5,203c <main+0x1fdc>
    2028:	08200513          	li	a0,130
    202c:	1b0000ef          	jal	ra,21dc <print_dec>
    2030:	000107b7          	lui	a5,0x10
    2034:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    2038:	174000ef          	jal	ra,21ac <puts>
    203c:	0ff017b7          	lui	a5,0xff01
    2040:	ff078793          	addi	a5,a5,-16 # ff00ff0 <IO_BASE+0xfb00ff0>
    2044:	aaf42c23          	sw	a5,-1352(s0)
    2048:	ab842783          	lw	a5,-1352(s0)
    204c:	0f07c793          	xori	a5,a5,240
    2050:	aaf42a23          	sw	a5,-1356(s0)
    2054:	ab442703          	lw	a4,-1356(s0)
    2058:	0ff017b7          	lui	a5,0xff01
    205c:	f0078793          	addi	a5,a5,-256 # ff00f00 <IO_BASE+0xfb00f00>
    2060:	00f70c63          	beq	a4,a5,2078 <main+0x2018>
    2064:	08300513          	li	a0,131
    2068:	174000ef          	jal	ra,21dc <print_dec>
    206c:	000107b7          	lui	a5,0x10
    2070:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    2074:	138000ef          	jal	ra,21ac <puts>
    2078:	00ff17b7          	lui	a5,0xff1
    207c:	8ff78793          	addi	a5,a5,-1793 # ff08ff <IO_BASE+0xbf08ff>
    2080:	aaf42823          	sw	a5,-1360(s0)
    2084:	ab042783          	lw	a5,-1360(s0)
    2088:	70f7c793          	xori	a5,a5,1807
    208c:	aaf42623          	sw	a5,-1364(s0)
    2090:	aac42703          	lw	a4,-1364(s0)
    2094:	00ff17b7          	lui	a5,0xff1
    2098:	ff078793          	addi	a5,a5,-16 # ff0ff0 <IO_BASE+0xbf0ff0>
    209c:	00f70c63          	beq	a4,a5,20b4 <main+0x2054>
    20a0:	08400513          	li	a0,132
    20a4:	138000ef          	jal	ra,21dc <print_dec>
    20a8:	000107b7          	lui	a5,0x10
    20ac:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    20b0:	0fc000ef          	jal	ra,21ac <puts>
    20b4:	f00ff7b7          	lui	a5,0xf00ff
    20b8:	00f78793          	addi	a5,a5,15 # f00ff00f <IO_BASE+0xefcff00f>
    20bc:	aaf42423          	sw	a5,-1368(s0)
    20c0:	aa842783          	lw	a5,-1368(s0)
    20c4:	0f07c793          	xori	a5,a5,240
    20c8:	aaf42223          	sw	a5,-1372(s0)
    20cc:	aa442703          	lw	a4,-1372(s0)
    20d0:	f00ff7b7          	lui	a5,0xf00ff
    20d4:	0ff78793          	addi	a5,a5,255 # f00ff0ff <IO_BASE+0xefcff0ff>
    20d8:	00f70c63          	beq	a4,a5,20f0 <main+0x2090>
    20dc:	08500513          	li	a0,133
    20e0:	0fc000ef          	jal	ra,21dc <print_dec>
    20e4:	000107b7          	lui	a5,0x10
    20e8:	02c78513          	addi	a0,a5,44 # 1002c <__modsi3+0xdc9c>
    20ec:	0c0000ef          	jal	ra,21ac <puts>
    20f0:	000107b7          	lui	a5,0x10
    20f4:	03878513          	addi	a0,a5,56 # 10038 <__modsi3+0xdca8>
    20f8:	094000ef          	jal	ra,218c <print_string>
    20fc:	f3dfd0ef          	jal	ra,38 <insn>
    2100:	aaa42023          	sw	a0,-1376(s0)
    2104:	f0dfd0ef          	jal	ra,10 <time>
    2108:	a8a42e23          	sw	a0,-1380(s0)
    210c:	000107b7          	lui	a5,0x10
    2110:	05478513          	addi	a0,a5,84 # 10054 <__modsi3+0xdcc4>
    2114:	078000ef          	jal	ra,218c <print_string>
    2118:	a9c42503          	lw	a0,-1380(s0)
    211c:	0c0000ef          	jal	ra,21dc <print_dec>
    2120:	000107b7          	lui	a5,0x10
    2124:	06078513          	addi	a0,a5,96 # 10060 <__modsi3+0xdcd0>
    2128:	064000ef          	jal	ra,218c <print_string>
    212c:	a9c42503          	lw	a0,-1380(s0)
    2130:	148000ef          	jal	ra,2278 <print_hex>
    2134:	000107b7          	lui	a5,0x10
    2138:	06478513          	addi	a0,a5,100 # 10064 <__modsi3+0xdcd4>
    213c:	050000ef          	jal	ra,218c <print_string>
    2140:	000107b7          	lui	a5,0x10
    2144:	06878513          	addi	a0,a5,104 # 10068 <__modsi3+0xdcd8>
    2148:	044000ef          	jal	ra,218c <print_string>
    214c:	aa042503          	lw	a0,-1376(s0)
    2150:	08c000ef          	jal	ra,21dc <print_dec>
    2154:	000107b7          	lui	a5,0x10
    2158:	06078513          	addi	a0,a5,96 # 10060 <__modsi3+0xdcd0>
    215c:	030000ef          	jal	ra,218c <print_string>
    2160:	aa042503          	lw	a0,-1376(s0)
    2164:	114000ef          	jal	ra,2278 <print_hex>
    2168:	000107b7          	lui	a5,0x10
    216c:	06478513          	addi	a0,a5,100 # 10064 <__modsi3+0xdcd4>
    2170:	01c000ef          	jal	ra,218c <print_string>
    2174:	00000793          	li	a5,0
    2178:	00078513          	mv	a0,a5
    217c:	56c12083          	lw	ra,1388(sp)
    2180:	56812403          	lw	s0,1384(sp)
    2184:	57010113          	addi	sp,sp,1392
    2188:	00008067          	ret

0000218c <print_string>:
    218c:	00054783          	lbu	a5,0(a0)
    2190:	00078c63          	beqz	a5,21a8 <print_string+0x1c>
    2194:	00400737          	lui	a4,0x400
    2198:	00f72423          	sw	a5,8(a4) # 400008 <IO_BASE+0x8>
    219c:	00154783          	lbu	a5,1(a0)
    21a0:	00150513          	addi	a0,a0,1
    21a4:	fe079ae3          	bnez	a5,2198 <print_string+0xc>
    21a8:	00008067          	ret

000021ac <puts>:
    21ac:	00054783          	lbu	a5,0(a0)
    21b0:	00078c63          	beqz	a5,21c8 <puts+0x1c>
    21b4:	00400737          	lui	a4,0x400
    21b8:	00f72423          	sw	a5,8(a4) # 400008 <IO_BASE+0x8>
    21bc:	00154783          	lbu	a5,1(a0)
    21c0:	00150513          	addi	a0,a0,1
    21c4:	fe079ae3          	bnez	a5,21b8 <puts+0xc>
    21c8:	004007b7          	lui	a5,0x400
    21cc:	00a00713          	li	a4,10
    21d0:	00e7a423          	sw	a4,8(a5) # 400008 <IO_BASE+0x8>
    21d4:	00100513          	li	a0,1
    21d8:	00008067          	ret

000021dc <print_dec>:
    21dc:	ef010113          	addi	sp,sp,-272
    21e0:	10812423          	sw	s0,264(sp)
    21e4:	10112623          	sw	ra,268(sp)
    21e8:	10912223          	sw	s1,260(sp)
    21ec:	11212023          	sw	s2,256(sp)
    21f0:	00050413          	mv	s0,a0
    21f4:	00055a63          	bgez	a0,2208 <print_dec+0x2c>
    21f8:	004007b7          	lui	a5,0x400
    21fc:	02d00713          	li	a4,45
    2200:	00e7a423          	sw	a4,8(a5) # 400008 <IO_BASE+0x8>
    2204:	40a00433          	neg	s0,a0
    2208:	00010913          	mv	s2,sp
    220c:	00090493          	mv	s1,s2
    2210:	0240006f          	j	2234 <print_dec+0x58>
    2214:	17c000ef          	jal	ra,2390 <__modsi3>
    2218:	00050793          	mv	a5,a0
    221c:	00f48023          	sb	a5,0(s1)
    2220:	00040513          	mv	a0,s0
    2224:	00a00593          	li	a1,10
    2228:	0e4000ef          	jal	ra,230c <__divsi3>
    222c:	00148493          	addi	s1,s1,1
    2230:	00050413          	mv	s0,a0
    2234:	00a00593          	li	a1,10
    2238:	00040513          	mv	a0,s0
    223c:	fc041ce3          	bnez	s0,2214 <print_dec+0x38>
    2240:	fd248ae3          	beq	s1,s2,2214 <print_dec+0x38>
    2244:	00400737          	lui	a4,0x400
    2248:	fff4c783          	lbu	a5,-1(s1)
    224c:	fff48493          	addi	s1,s1,-1
    2250:	03078793          	addi	a5,a5,48
    2254:	0ff7f793          	zext.b	a5,a5
    2258:	00f72423          	sw	a5,8(a4) # 400008 <IO_BASE+0x8>
    225c:	ff2496e3          	bne	s1,s2,2248 <print_dec+0x6c>
    2260:	10c12083          	lw	ra,268(sp)
    2264:	10812403          	lw	s0,264(sp)
    2268:	10412483          	lw	s1,260(sp)
    226c:	10012903          	lw	s2,256(sp)
    2270:	11010113          	addi	sp,sp,272
    2274:	00008067          	ret

00002278 <print_hex>:
    2278:	000106b7          	lui	a3,0x10
    227c:	01c00713          	li	a4,28
    2280:	07468693          	addi	a3,a3,116 # 10074 <__modsi3+0xdce4>
    2284:	004005b7          	lui	a1,0x400
    2288:	ffc00613          	li	a2,-4
    228c:	00e557b3          	srl	a5,a0,a4
    2290:	00f7f793          	andi	a5,a5,15
    2294:	00f687b3          	add	a5,a3,a5
    2298:	0007c783          	lbu	a5,0(a5)
    229c:	ffc70713          	addi	a4,a4,-4
    22a0:	00f5a423          	sw	a5,8(a1) # 400008 <IO_BASE+0x8>
    22a4:	fec714e3          	bne	a4,a2,228c <print_hex+0x14>
    22a8:	00008067          	ret

000022ac <print_hex_digits>:
    22ac:	fff58593          	addi	a1,a1,-1
    22b0:	00259593          	slli	a1,a1,0x2
    22b4:	0205c863          	bltz	a1,22e4 <print_hex_digits+0x38>
    22b8:	00010737          	lui	a4,0x10
    22bc:	07470713          	addi	a4,a4,116 # 10074 <__modsi3+0xdce4>
    22c0:	00400637          	lui	a2,0x400
    22c4:	ffc00693          	li	a3,-4
    22c8:	00b557b3          	srl	a5,a0,a1
    22cc:	00f7f793          	andi	a5,a5,15
    22d0:	00f707b3          	add	a5,a4,a5
    22d4:	0007c783          	lbu	a5,0(a5)
    22d8:	ffc58593          	addi	a1,a1,-4
    22dc:	00f62423          	sw	a5,8(a2) # 400008 <IO_BASE+0x8>
    22e0:	fed594e3          	bne	a1,a3,22c8 <print_hex_digits+0x1c>
    22e4:	00008067          	ret

000022e8 <__mulsi3>:
    22e8:	00050613          	mv	a2,a0
    22ec:	00000513          	li	a0,0
    22f0:	0015f693          	andi	a3,a1,1
    22f4:	00068463          	beqz	a3,22fc <__mulsi3+0x14>
    22f8:	00c50533          	add	a0,a0,a2
    22fc:	0015d593          	srli	a1,a1,0x1
    2300:	00161613          	slli	a2,a2,0x1
    2304:	fe0596e3          	bnez	a1,22f0 <__mulsi3+0x8>
    2308:	00008067          	ret

0000230c <__divsi3>:
    230c:	06054063          	bltz	a0,236c <__umodsi3+0x10>
    2310:	0605c663          	bltz	a1,237c <__umodsi3+0x20>

00002314 <__udivsi3>:
    2314:	00058613          	mv	a2,a1
    2318:	00050593          	mv	a1,a0
    231c:	fff00513          	li	a0,-1
    2320:	02060c63          	beqz	a2,2358 <__udivsi3+0x44>
    2324:	00100693          	li	a3,1
    2328:	00b67a63          	bgeu	a2,a1,233c <__udivsi3+0x28>
    232c:	00c05863          	blez	a2,233c <__udivsi3+0x28>
    2330:	00161613          	slli	a2,a2,0x1
    2334:	00169693          	slli	a3,a3,0x1
    2338:	feb66ae3          	bltu	a2,a1,232c <__udivsi3+0x18>
    233c:	00000513          	li	a0,0
    2340:	00c5e663          	bltu	a1,a2,234c <__udivsi3+0x38>
    2344:	40c585b3          	sub	a1,a1,a2
    2348:	00d56533          	or	a0,a0,a3
    234c:	0016d693          	srli	a3,a3,0x1
    2350:	00165613          	srli	a2,a2,0x1
    2354:	fe0696e3          	bnez	a3,2340 <__udivsi3+0x2c>
    2358:	00008067          	ret

0000235c <__umodsi3>:
    235c:	00008293          	mv	t0,ra
    2360:	fb5ff0ef          	jal	ra,2314 <__udivsi3>
    2364:	00058513          	mv	a0,a1
    2368:	00028067          	jr	t0
    236c:	40a00533          	neg	a0,a0
    2370:	0005d863          	bgez	a1,2380 <__umodsi3+0x24>
    2374:	40b005b3          	neg	a1,a1
    2378:	f95ff06f          	j	230c <__divsi3>
    237c:	40b005b3          	neg	a1,a1
    2380:	00008293          	mv	t0,ra
    2384:	f89ff0ef          	jal	ra,230c <__divsi3>
    2388:	40a00533          	neg	a0,a0
    238c:	00028067          	jr	t0

00002390 <__modsi3>:
    2390:	00008293          	mv	t0,ra
    2394:	0005ca63          	bltz	a1,23a8 <__modsi3+0x18>
    2398:	00054c63          	bltz	a0,23b0 <__modsi3+0x20>
    239c:	f79ff0ef          	jal	ra,2314 <__udivsi3>
    23a0:	00058513          	mv	a0,a1
    23a4:	00028067          	jr	t0
    23a8:	40b005b3          	neg	a1,a1
    23ac:	fe0558e3          	bgez	a0,239c <__modsi3+0xc>
    23b0:	40a00533          	neg	a0,a0
    23b4:	f61ff0ef          	jal	ra,2314 <__udivsi3>
    23b8:	40b00533          	neg	a0,a1
    23bc:	00028067          	jr	t0

Déassemblage de la section .data :

00010000 <.data>:
   10000:	6928                	.2byte	0x6928
   10002:	2969                	.2byte	0x2969
   10004:	5320                	.2byte	0x5320
   10006:	6174                	.2byte	0x6174
   10008:	7472                	.2byte	0x7472
   1000a:	6e69                	.2byte	0x6e69
   1000c:	49522067          	.4byte	0x49522067
   10010:	562d4353          	.4byte	0x562d4353
   10014:	7420                	.2byte	0x7420
   10016:	7365                	.2byte	0x7365
   10018:	2e74                	.2byte	0x2e74
   1001a:	2e2e                	.2byte	0x2e2e
   1001c:	000a                	.2byte	0xa
   1001e:	0000                	.2byte	0x0
   10020:	7245                	.2byte	0x7245
   10022:	6f72                	.2byte	0x6f72
   10024:	2072                	.2byte	0x2072
   10026:	3252                	.2byte	0x3252
   10028:	0052                	.2byte	0x52
   1002a:	0000                	.2byte	0x0
   1002c:	7245                	.2byte	0x7245
   1002e:	6f72                	.2byte	0x6f72
   10030:	2072                	.2byte	0x2072
   10032:	3252                	.2byte	0x3252
   10034:	0049                	.2byte	0x49
   10036:	0000                	.2byte	0x0
   10038:	6928                	.2byte	0x6928
   1003a:	2969                	.2byte	0x2969
   1003c:	4520                	.2byte	0x4520
   1003e:	646e                	.2byte	0x646e
   10040:	6f20                	.2byte	0x6f20
   10042:	2066                	.2byte	0x2066
   10044:	4952                	.2byte	0x4952
   10046:	562d4353          	.4byte	0x562d4353
   1004a:	7420                	.2byte	0x7420
   1004c:	7365                	.2byte	0x7365
   1004e:	2e74                	.2byte	0x2e74
   10050:	2e2e                	.2byte	0x2e2e
   10052:	000a                	.2byte	0xa
   10054:	203e                	.2byte	0x203e
   10056:	6974                	.2byte	0x6974
   10058:	656d                	.2byte	0x656d
   1005a:	3a20                	.2byte	0x3a20
   1005c:	0020                	.2byte	0x20
   1005e:	0000                	.2byte	0x0
   10060:	2820                	.2byte	0x2820
   10062:	0000                	.2byte	0x0
   10064:	0a29                	.2byte	0xa29
   10066:	0000                	.2byte	0x0
   10068:	203e                	.2byte	0x203e
   1006a:	6e69                	.2byte	0x6e69
   1006c:	3a206e73          	.4byte	0x3a206e73
   10070:	0020                	.2byte	0x20
   10072:	0000                	.2byte	0x0
   10074:	3130                	.2byte	0x3130
   10076:	3332                	.2byte	0x3332
   10078:	3534                	.2byte	0x3534
   1007a:	3736                	.2byte	0x3736
   1007c:	3938                	.2byte	0x3938
   1007e:	4241                	.2byte	0x4241
   10080:	46454443          	.4byte	0x46454443
	...

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <time+0x4>
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
