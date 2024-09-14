
./bin/dhrystone.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <start>:
       0:	004001b7          	lui	gp,0x400
       4:	00020137          	lui	sp,0x20
       8:	23c000ef          	jal	ra,244 <main>
       c:	00100073          	ebreak

00000010 <time>:
      10:	c0002573          	rdcycle	a0
      14:	00008067          	ret

00000018 <insn>:
      18:	c0202573          	rdinstret	a0
      1c:	00008067          	ret

00000020 <has_counters>:
      20:	00100513          	li	a0,1
      24:	00008067          	ret

00000028 <Proc_1>:
      28:	ff010113          	addi	sp,sp,-16 # 1fff0 <Ptr_Glob+0xd1d8>
      2c:	01212023          	sw	s2,0(sp)
      30:	00013937          	lui	s2,0x13
      34:	e1892783          	lw	a5,-488(s2) # 12e18 <Ptr_Glob>
      38:	00812423          	sw	s0,8(sp)
      3c:	00052403          	lw	s0,0(a0)
      40:	0007a683          	lw	a3,0(a5)
      44:	0047af03          	lw	t5,4(a5)
      48:	0087ae83          	lw	t4,8(a5)
      4c:	0107ae03          	lw	t3,16(a5)
      50:	0147a303          	lw	t1,20(a5)
      54:	0187a883          	lw	a7,24(a5)
      58:	01c7a803          	lw	a6,28(a5)
      5c:	0287a603          	lw	a2,40(a5)
      60:	02c7a703          	lw	a4,44(a5)
      64:	0247a583          	lw	a1,36(a5)
      68:	00112623          	sw	ra,12(sp)
      6c:	00912223          	sw	s1,4(sp)
      70:	00050493          	mv	s1,a0
      74:	0207a503          	lw	a0,32(a5)
      78:	00d42023          	sw	a3,0(s0)
      7c:	0004a683          	lw	a3,0(s1)
      80:	01e42223          	sw	t5,4(s0)
      84:	01d42423          	sw	t4,8(s0)
      88:	01c42823          	sw	t3,16(s0)
      8c:	00642a23          	sw	t1,20(s0)
      90:	01142c23          	sw	a7,24(s0)
      94:	01042e23          	sw	a6,28(s0)
      98:	02a42023          	sw	a0,32(s0)
      9c:	02c42423          	sw	a2,40(s0)
      a0:	02e42623          	sw	a4,44(s0)
      a4:	02b42223          	sw	a1,36(s0)
      a8:	00500713          	li	a4,5
      ac:	00e4a623          	sw	a4,12(s1)
      b0:	00d42023          	sw	a3,0(s0)
      b4:	0007a783          	lw	a5,0(a5)
      b8:	000136b7          	lui	a3,0x13
      bc:	e106a583          	lw	a1,-496(a3) # 12e10 <Int_Glob>
      c0:	00f42023          	sw	a5,0(s0)
      c4:	e1892603          	lw	a2,-488(s2)
      c8:	00e42623          	sw	a4,12(s0)
      cc:	00a00513          	li	a0,10
      d0:	00c60613          	addi	a2,a2,12
      d4:	25d000ef          	jal	ra,b30 <Proc_7>
      d8:	00442783          	lw	a5,4(s0)
      dc:	08078063          	beqz	a5,15c <Proc_1+0x134>
      e0:	0004a783          	lw	a5,0(s1)
      e4:	00c12083          	lw	ra,12(sp)
      e8:	00812403          	lw	s0,8(sp)
      ec:	0007af83          	lw	t6,0(a5)
      f0:	0047af03          	lw	t5,4(a5)
      f4:	0087ae83          	lw	t4,8(a5)
      f8:	00c7ae03          	lw	t3,12(a5)
      fc:	0107a303          	lw	t1,16(a5)
     100:	0147a883          	lw	a7,20(a5)
     104:	0187a803          	lw	a6,24(a5)
     108:	01c7a583          	lw	a1,28(a5)
     10c:	0207a603          	lw	a2,32(a5)
     110:	0247a683          	lw	a3,36(a5)
     114:	0287a703          	lw	a4,40(a5)
     118:	02c7a783          	lw	a5,44(a5)
     11c:	01f4a023          	sw	t6,0(s1)
     120:	01e4a223          	sw	t5,4(s1)
     124:	01d4a423          	sw	t4,8(s1)
     128:	01c4a623          	sw	t3,12(s1)
     12c:	0064a823          	sw	t1,16(s1)
     130:	0114aa23          	sw	a7,20(s1)
     134:	0104ac23          	sw	a6,24(s1)
     138:	00b4ae23          	sw	a1,28(s1)
     13c:	02c4a023          	sw	a2,32(s1)
     140:	02d4a223          	sw	a3,36(s1)
     144:	02e4a423          	sw	a4,40(s1)
     148:	02f4a623          	sw	a5,44(s1)
     14c:	00012903          	lw	s2,0(sp)
     150:	00412483          	lw	s1,4(sp)
     154:	01010113          	addi	sp,sp,16
     158:	00008067          	ret
     15c:	0084a503          	lw	a0,8(s1)
     160:	00600793          	li	a5,6
     164:	00840593          	addi	a1,s0,8
     168:	00f42623          	sw	a5,12(s0)
     16c:	171000ef          	jal	ra,adc <Proc_6>
     170:	e1892783          	lw	a5,-488(s2)
     174:	00c42503          	lw	a0,12(s0)
     178:	00c40613          	addi	a2,s0,12
     17c:	0007a783          	lw	a5,0(a5)
     180:	00c12083          	lw	ra,12(sp)
     184:	00412483          	lw	s1,4(sp)
     188:	00f42023          	sw	a5,0(s0)
     18c:	00812403          	lw	s0,8(sp)
     190:	00012903          	lw	s2,0(sp)
     194:	00a00593          	li	a1,10
     198:	01010113          	addi	sp,sp,16
     19c:	1950006f          	j	b30 <Proc_7>

000001a0 <Proc_2>:
     1a0:	000137b7          	lui	a5,0x13
     1a4:	e097c703          	lbu	a4,-503(a5) # 12e09 <Ch_1_Glob>
     1a8:	04100793          	li	a5,65
     1ac:	00f70463          	beq	a4,a5,1b4 <Proc_2+0x14>
     1b0:	00008067          	ret
     1b4:	00052783          	lw	a5,0(a0)
     1b8:	00013737          	lui	a4,0x13
     1bc:	e1072703          	lw	a4,-496(a4) # 12e10 <Int_Glob>
     1c0:	00978793          	addi	a5,a5,9
     1c4:	40e787b3          	sub	a5,a5,a4
     1c8:	00f52023          	sw	a5,0(a0)
     1cc:	00008067          	ret

000001d0 <Proc_3>:
     1d0:	000137b7          	lui	a5,0x13
     1d4:	e187a603          	lw	a2,-488(a5) # 12e18 <Ptr_Glob>
     1d8:	00060863          	beqz	a2,1e8 <Proc_3+0x18>
     1dc:	00062703          	lw	a4,0(a2)
     1e0:	00e52023          	sw	a4,0(a0)
     1e4:	e187a603          	lw	a2,-488(a5)
     1e8:	000137b7          	lui	a5,0x13
     1ec:	e107a583          	lw	a1,-496(a5) # 12e10 <Int_Glob>
     1f0:	00c60613          	addi	a2,a2,12
     1f4:	00a00513          	li	a0,10
     1f8:	1390006f          	j	b30 <Proc_7>

000001fc <Proc_4>:
     1fc:	000137b7          	lui	a5,0x13
     200:	e097c783          	lbu	a5,-503(a5) # 12e09 <Ch_1_Glob>
     204:	00013737          	lui	a4,0x13
     208:	e0c72683          	lw	a3,-500(a4) # 12e0c <Bool_Glob>
     20c:	fbf78793          	addi	a5,a5,-65
     210:	0017b793          	seqz	a5,a5
     214:	00d7e7b3          	or	a5,a5,a3
     218:	e0f72623          	sw	a5,-500(a4)
     21c:	000137b7          	lui	a5,0x13
     220:	04200713          	li	a4,66
     224:	e0e78423          	sb	a4,-504(a5) # 12e08 <Ch_2_Glob>
     228:	00008067          	ret

0000022c <Proc_5>:
     22c:	000137b7          	lui	a5,0x13
     230:	04100713          	li	a4,65
     234:	e0e784a3          	sb	a4,-503(a5) # 12e09 <Ch_1_Glob>
     238:	000137b7          	lui	a5,0x13
     23c:	e007a623          	sw	zero,-500(a5) # 12e0c <Bool_Glob>
     240:	00008067          	ret

00000244 <main>:
     244:	ef010113          	addi	sp,sp,-272
     248:	07010793          	addi	a5,sp,112
     24c:	00013737          	lui	a4,0x13
     250:	0f712623          	sw	s7,236(sp)
     254:	e0f72a23          	sw	a5,-492(a4) # 12e14 <Next_Ptr_Glob>
     258:	00013bb7          	lui	s7,0x13
     25c:	0a010793          	addi	a5,sp,160
     260:	10112623          	sw	ra,268(sp)
     264:	10812423          	sw	s0,264(sp)
     268:	10912223          	sw	s1,260(sp)
     26c:	11212023          	sw	s2,256(sp)
     270:	0f312e23          	sw	s3,252(sp)
     274:	0f412c23          	sw	s4,248(sp)
     278:	0f512a23          	sw	s5,244(sp)
     27c:	0f612823          	sw	s6,240(sp)
     280:	0f812423          	sw	s8,232(sp)
     284:	0f912223          	sw	s9,228(sp)
     288:	0fa12023          	sw	s10,224(sp)
     28c:	0db12e23          	sw	s11,220(sp)
     290:	e0fbac23          	sw	a5,-488(s7) # 12e18 <Ptr_Glob>
     294:	d8dff0ef          	jal	ra,20 <has_counters>
     298:	020508e3          	beqz	a0,ac8 <main+0x884>
     29c:	000137b7          	lui	a5,0x13
     2a0:	e18ba503          	lw	a0,-488(s7)
     2a4:	e147a783          	lw	a5,-492(a5) # 12e14 <Next_Ptr_Glob>
     2a8:	000105b7          	lui	a1,0x10
     2ac:	01f00613          	li	a2,31
     2b0:	00f52023          	sw	a5,0(a0)
     2b4:	00200793          	li	a5,2
     2b8:	00f52423          	sw	a5,8(a0)
     2bc:	02800793          	li	a5,40
     2c0:	00f52623          	sw	a5,12(a0)
     2c4:	03c58593          	addi	a1,a1,60 # 1003c <__modsi3+0xf048>
     2c8:	00052223          	sw	zero,4(a0)
     2cc:	01050513          	addi	a0,a0,16
     2d0:	401000ef          	jal	ra,ed0 <memcpy>
     2d4:	000107b7          	lui	a5,0x10
     2d8:	59878793          	addi	a5,a5,1432 # 10598 <__modsi3+0xf5a4>
     2dc:	0007ae03          	lw	t3,0(a5)
     2e0:	0047a303          	lw	t1,4(a5)
     2e4:	0087a883          	lw	a7,8(a5)
     2e8:	00c7a803          	lw	a6,12(a5)
     2ec:	0107a583          	lw	a1,16(a5)
     2f0:	0147a603          	lw	a2,20(a5)
     2f4:	0187a683          	lw	a3,24(a5)
     2f8:	01c7d703          	lhu	a4,28(a5)
     2fc:	01e7c783          	lbu	a5,30(a5)
     300:	00010cb7          	lui	s9,0x10
     304:	04e11623          	sh	a4,76(sp)
     308:	04f10723          	sb	a5,78(sp)
     30c:	6d4c8713          	addi	a4,s9,1748 # 106d4 <Arr_2_Glob>
     310:	00a00793          	li	a5,10
     314:	00a00513          	li	a0,10
     318:	64f72e23          	sw	a5,1628(a4)
     31c:	03c12823          	sw	t3,48(sp)
     320:	02612a23          	sw	t1,52(sp)
     324:	03112c23          	sw	a7,56(sp)
     328:	03012e23          	sw	a6,60(sp)
     32c:	04b12023          	sw	a1,64(sp)
     330:	04c12223          	sw	a2,68(sp)
     334:	04d12423          	sw	a3,72(sp)
     338:	10d000ef          	jal	ra,c44 <putchar>
     33c:	00010537          	lui	a0,0x10
     340:	05c50513          	addi	a0,a0,92 # 1005c <__modsi3+0xf068>
     344:	12d000ef          	jal	ra,c70 <puts>
     348:	00a00513          	li	a0,10
     34c:	0f9000ef          	jal	ra,c44 <putchar>
     350:	000137b7          	lui	a5,0x13
     354:	e047a783          	lw	a5,-508(a5) # 12e04 <Reg>
     358:	74079863          	bnez	a5,aa8 <main+0x864>
     35c:	00010537          	lui	a0,0x10
     360:	0b850513          	addi	a0,a0,184 # 100b8 <__modsi3+0xf0c4>
     364:	10d000ef          	jal	ra,c70 <puts>
     368:	00a00513          	li	a0,10
     36c:	0d9000ef          	jal	ra,c44 <putchar>
     370:	00010537          	lui	a0,0x10
     374:	0e850513          	addi	a0,a0,232 # 100e8 <__modsi3+0xf0f4>
     378:	235000ef          	jal	ra,dac <printf>
     37c:	00a00513          	li	a0,10
     380:	0c5000ef          	jal	ra,c44 <putchar>
     384:	00010537          	lui	a0,0x10
     388:	06400593          	li	a1,100
     38c:	12050513          	addi	a0,a0,288 # 10120 <__modsi3+0xf12c>
     390:	21d000ef          	jal	ra,dac <printf>
     394:	00000513          	li	a0,0
     398:	c79ff0ef          	jal	ra,10 <time>
     39c:	00050793          	mv	a5,a0
     3a0:	00013737          	lui	a4,0x13
     3a4:	00000513          	li	a0,0
     3a8:	e0f72023          	sw	a5,-512(a4) # 12e00 <Begin_Time>
     3ac:	c6dff0ef          	jal	ra,18 <insn>
     3b0:	000107b7          	lui	a5,0x10
     3b4:	5b878793          	addi	a5,a5,1464 # 105b8 <__modsi3+0xf5c4>
     3b8:	0047a703          	lw	a4,4(a5)
     3bc:	0007ad83          	lw	s11,0(a5)
     3c0:	00100493          	li	s1,1
     3c4:	00e12023          	sw	a4,0(sp)
     3c8:	0087a703          	lw	a4,8(a5)
     3cc:	000139b7          	lui	s3,0x13
     3d0:	00013a37          	lui	s4,0x13
     3d4:	00e12223          	sw	a4,4(sp)
     3d8:	00c7a703          	lw	a4,12(a5)
     3dc:	00013437          	lui	s0,0x13
     3e0:	00010c37          	lui	s8,0x10
     3e4:	00e12423          	sw	a4,8(sp)
     3e8:	0107a703          	lw	a4,16(a5)
     3ec:	00013b37          	lui	s6,0x13
     3f0:	00e12623          	sw	a4,12(sp)
     3f4:	0147a703          	lw	a4,20(a5)
     3f8:	00e12823          	sw	a4,16(sp)
     3fc:	0187a703          	lw	a4,24(a5)
     400:	00e12a23          	sw	a4,20(sp)
     404:	01c7d703          	lhu	a4,28(a5)
     408:	01e7c783          	lbu	a5,30(a5)
     40c:	00e12c23          	sw	a4,24(sp)
     410:	00f12e23          	sw	a5,28(sp)
     414:	00010737          	lui	a4,0x10
     418:	000137b7          	lui	a5,0x13
     41c:	dea7aa23          	sw	a0,-524(a5) # 12df4 <Begin_Insn>
     420:	5d870d13          	addi	s10,a4,1496 # 105d8 <__modsi3+0xf5e4>
     424:	04100713          	li	a4,65
     428:	e0e984a3          	sb	a4,-503(s3) # 12e09 <Ch_1_Glob>
     42c:	04200713          	li	a4,66
     430:	e0e40423          	sb	a4,-504(s0) # 12e08 <Ch_2_Glob>
     434:	00012703          	lw	a4,0(sp)
     438:	00100793          	li	a5,1
     43c:	05010593          	addi	a1,sp,80
     440:	04e12a23          	sw	a4,84(sp)
     444:	00412703          	lw	a4,4(sp)
     448:	03010513          	addi	a0,sp,48
     44c:	e0fa2623          	sw	a5,-500(s4) # 12e0c <Bool_Glob>
     450:	04e12c23          	sw	a4,88(sp)
     454:	00812703          	lw	a4,8(sp)
     458:	02f12623          	sw	a5,44(sp)
     45c:	05b12823          	sw	s11,80(sp)
     460:	04e12e23          	sw	a4,92(sp)
     464:	00c12703          	lw	a4,12(sp)
     468:	06e12023          	sw	a4,96(sp)
     46c:	01012703          	lw	a4,16(sp)
     470:	06e12223          	sw	a4,100(sp)
     474:	01412703          	lw	a4,20(sp)
     478:	06e12423          	sw	a4,104(sp)
     47c:	01812703          	lw	a4,24(sp)
     480:	06e11623          	sh	a4,108(sp)
     484:	01c12703          	lw	a4,28(sp)
     488:	06e10723          	sb	a4,110(sp)
     48c:	74c000ef          	jal	ra,bd8 <Func_2>
     490:	00153793          	seqz	a5,a0
     494:	02810613          	addi	a2,sp,40
     498:	00300593          	li	a1,3
     49c:	e0fa2623          	sw	a5,-500(s4)
     4a0:	00200513          	li	a0,2
     4a4:	00700793          	li	a5,7
     4a8:	02f12423          	sw	a5,40(sp)
     4ac:	684000ef          	jal	ra,b30 <Proc_7>
     4b0:	02812683          	lw	a3,40(sp)
     4b4:	00300613          	li	a2,3
     4b8:	6d4c8593          	addi	a1,s9,1748
     4bc:	60cc0513          	addi	a0,s8,1548 # 1060c <Arr_1_Glob>
     4c0:	680000ef          	jal	ra,b40 <Proc_8>
     4c4:	e18ba503          	lw	a0,-488(s7)
     4c8:	b61ff0ef          	jal	ra,28 <Proc_1>
     4cc:	e0844703          	lbu	a4,-504(s0)
     4d0:	04000793          	li	a5,64
     4d4:	5ee7f663          	bgeu	a5,a4,ac0 <main+0x87c>
     4d8:	04100913          	li	s2,65
     4dc:	00300a93          	li	s5,3
     4e0:	0140006f          	j	4f4 <main+0x2b0>
     4e4:	e0844783          	lbu	a5,-504(s0)
     4e8:	00190913          	addi	s2,s2,1
     4ec:	0ff97913          	zext.b	s2,s2
     4f0:	0927e263          	bltu	a5,s2,574 <main+0x330>
     4f4:	04300593          	li	a1,67
     4f8:	00090513          	mv	a0,s2
     4fc:	6b8000ef          	jal	ra,bb4 <Func_1>
     500:	02c12783          	lw	a5,44(sp)
     504:	fef510e3          	bne	a0,a5,4e4 <main+0x2a0>
     508:	02c10593          	addi	a1,sp,44
     50c:	00000513          	li	a0,0
     510:	5cc000ef          	jal	ra,adc <Proc_6>
     514:	01ed4783          	lbu	a5,30(s10)
     518:	000d2303          	lw	t1,0(s10)
     51c:	004d2883          	lw	a7,4(s10)
     520:	008d2803          	lw	a6,8(s10)
     524:	00cd2503          	lw	a0,12(s10)
     528:	010d2583          	lw	a1,16(s10)
     52c:	014d2603          	lw	a2,20(s10)
     530:	018d2683          	lw	a3,24(s10)
     534:	01cd5703          	lhu	a4,28(s10)
     538:	06f10723          	sb	a5,110(sp)
     53c:	e0844783          	lbu	a5,-504(s0)
     540:	00190913          	addi	s2,s2,1
     544:	04612823          	sw	t1,80(sp)
     548:	05112a23          	sw	a7,84(sp)
     54c:	05012c23          	sw	a6,88(sp)
     550:	04a12e23          	sw	a0,92(sp)
     554:	06b12023          	sw	a1,96(sp)
     558:	06c12223          	sw	a2,100(sp)
     55c:	06d12423          	sw	a3,104(sp)
     560:	06e11623          	sh	a4,108(sp)
     564:	e09b2823          	sw	s1,-496(s6) # 12e10 <Int_Glob>
     568:	0ff97913          	zext.b	s2,s2
     56c:	00048a93          	mv	s5,s1
     570:	f927f2e3          	bgeu	a5,s2,4f4 <main+0x2b0>
     574:	001a9913          	slli	s2,s5,0x1
     578:	01590933          	add	s2,s2,s5
     57c:	02812a83          	lw	s5,40(sp)
     580:	00090513          	mv	a0,s2
     584:	000a8593          	mv	a1,s5
     588:	1e9000ef          	jal	ra,f70 <__divsi3>
     58c:	e099c703          	lbu	a4,-503(s3)
     590:	04100793          	li	a5,65
     594:	00050693          	mv	a3,a0
     598:	00f71863          	bne	a4,a5,5a8 <main+0x364>
     59c:	e10b2783          	lw	a5,-496(s6)
     5a0:	00950693          	addi	a3,a0,9
     5a4:	40f686b3          	sub	a3,a3,a5
     5a8:	00148493          	addi	s1,s1,1
     5ac:	06500793          	li	a5,101
     5b0:	e6f49ae3          	bne	s1,a5,424 <main+0x1e0>
     5b4:	00a12223          	sw	a0,4(sp)
     5b8:	00000513          	li	a0,0
     5bc:	00d12023          	sw	a3,0(sp)
     5c0:	a51ff0ef          	jal	ra,10 <time>
     5c4:	00013737          	lui	a4,0x13
     5c8:	00050613          	mv	a2,a0
     5cc:	00000513          	li	a0,0
     5d0:	dec72e23          	sw	a2,-516(a4) # 12dfc <End_Time>
     5d4:	a45ff0ef          	jal	ra,18 <insn>
     5d8:	00050613          	mv	a2,a0
     5dc:	00010537          	lui	a0,0x10
     5e0:	00013db7          	lui	s11,0x13
     5e4:	15050513          	addi	a0,a0,336 # 10150 <__modsi3+0xf15c>
     5e8:	decda823          	sw	a2,-528(s11) # 12df0 <End_Insn>
     5ec:	684000ef          	jal	ra,c70 <puts>
     5f0:	00a00513          	li	a0,10
     5f4:	650000ef          	jal	ra,c44 <putchar>
     5f8:	00010537          	lui	a0,0x10
     5fc:	16050513          	addi	a0,a0,352 # 10160 <__modsi3+0xf16c>
     600:	670000ef          	jal	ra,c70 <puts>
     604:	00a00513          	li	a0,10
     608:	63c000ef          	jal	ra,c44 <putchar>
     60c:	e10b2583          	lw	a1,-496(s6)
     610:	00010537          	lui	a0,0x10
     614:	19850513          	addi	a0,a0,408 # 10198 <__modsi3+0xf1a4>
     618:	000104b7          	lui	s1,0x10
     61c:	790000ef          	jal	ra,dac <printf>
     620:	00500593          	li	a1,5
     624:	1b448513          	addi	a0,s1,436 # 101b4 <__modsi3+0xf1c0>
     628:	784000ef          	jal	ra,dac <printf>
     62c:	e0ca2583          	lw	a1,-500(s4)
     630:	00010537          	lui	a0,0x10
     634:	1d050513          	addi	a0,a0,464 # 101d0 <__modsi3+0xf1dc>
     638:	774000ef          	jal	ra,dac <printf>
     63c:	00100593          	li	a1,1
     640:	1b448513          	addi	a0,s1,436
     644:	768000ef          	jal	ra,dac <printf>
     648:	e099c583          	lbu	a1,-503(s3)
     64c:	00010537          	lui	a0,0x10
     650:	1ec50513          	addi	a0,a0,492 # 101ec <__modsi3+0xf1f8>
     654:	758000ef          	jal	ra,dac <printf>
     658:	000109b7          	lui	s3,0x10
     65c:	04100593          	li	a1,65
     660:	20898513          	addi	a0,s3,520 # 10208 <__modsi3+0xf214>
     664:	748000ef          	jal	ra,dac <printf>
     668:	e0844583          	lbu	a1,-504(s0)
     66c:	00010537          	lui	a0,0x10
     670:	22450513          	addi	a0,a0,548 # 10224 <__modsi3+0xf230>
     674:	738000ef          	jal	ra,dac <printf>
     678:	04200593          	li	a1,66
     67c:	20898513          	addi	a0,s3,520
     680:	72c000ef          	jal	ra,dac <printf>
     684:	60cc0c13          	addi	s8,s8,1548
     688:	020c2583          	lw	a1,32(s8)
     68c:	00010537          	lui	a0,0x10
     690:	24050513          	addi	a0,a0,576 # 10240 <__modsi3+0xf24c>
     694:	718000ef          	jal	ra,dac <printf>
     698:	00700593          	li	a1,7
     69c:	1b448513          	addi	a0,s1,436
     6a0:	70c000ef          	jal	ra,dac <printf>
     6a4:	000107b7          	lui	a5,0x10
     6a8:	6d478793          	addi	a5,a5,1748 # 106d4 <Arr_2_Glob>
     6ac:	65c7a583          	lw	a1,1628(a5)
     6b0:	00010537          	lui	a0,0x10
     6b4:	25c50513          	addi	a0,a0,604 # 1025c <__modsi3+0xf268>
     6b8:	6f4000ef          	jal	ra,dac <printf>
     6bc:	00010537          	lui	a0,0x10
     6c0:	27850513          	addi	a0,a0,632 # 10278 <__modsi3+0xf284>
     6c4:	5ac000ef          	jal	ra,c70 <puts>
     6c8:	00010537          	lui	a0,0x10
     6cc:	2a450513          	addi	a0,a0,676 # 102a4 <__modsi3+0xf2b0>
     6d0:	5a0000ef          	jal	ra,c70 <puts>
     6d4:	e18ba583          	lw	a1,-488(s7)
     6d8:	00010637          	lui	a2,0x10
     6dc:	2b060513          	addi	a0,a2,688 # 102b0 <__modsi3+0xf2bc>
     6e0:	0005a583          	lw	a1,0(a1)
     6e4:	00010d37          	lui	s10,0x10
     6e8:	00010cb7          	lui	s9,0x10
     6ec:	6c0000ef          	jal	ra,dac <printf>
     6f0:	00010537          	lui	a0,0x10
     6f4:	2cc50513          	addi	a0,a0,716 # 102cc <__modsi3+0xf2d8>
     6f8:	578000ef          	jal	ra,c70 <puts>
     6fc:	e18ba583          	lw	a1,-488(s7)
     700:	2fcd0513          	addi	a0,s10,764 # 102fc <__modsi3+0xf308>
     704:	00010c37          	lui	s8,0x10
     708:	0045a583          	lw	a1,4(a1)
     70c:	00010b37          	lui	s6,0x10
     710:	00010a37          	lui	s4,0x10
     714:	698000ef          	jal	ra,dac <printf>
     718:	00000593          	li	a1,0
     71c:	1b448513          	addi	a0,s1,436
     720:	68c000ef          	jal	ra,dac <printf>
     724:	e18ba583          	lw	a1,-488(s7)
     728:	318c8513          	addi	a0,s9,792 # 10318 <__modsi3+0xf324>
     72c:	41590933          	sub	s2,s2,s5
     730:	0085a583          	lw	a1,8(a1)
     734:	00013437          	lui	s0,0x13
     738:	000139b7          	lui	s3,0x13
     73c:	670000ef          	jal	ra,dac <printf>
     740:	00200593          	li	a1,2
     744:	1b448513          	addi	a0,s1,436
     748:	664000ef          	jal	ra,dac <printf>
     74c:	e18ba583          	lw	a1,-488(s7)
     750:	334c0513          	addi	a0,s8,820 # 10334 <__modsi3+0xf340>
     754:	00c5a583          	lw	a1,12(a1)
     758:	654000ef          	jal	ra,dac <printf>
     75c:	01100593          	li	a1,17
     760:	1b448513          	addi	a0,s1,436
     764:	648000ef          	jal	ra,dac <printf>
     768:	e18ba583          	lw	a1,-488(s7)
     76c:	350b0513          	addi	a0,s6,848 # 10350 <__modsi3+0xf35c>
     770:	00013bb7          	lui	s7,0x13
     774:	01058593          	addi	a1,a1,16
     778:	634000ef          	jal	ra,dac <printf>
     77c:	36ca0513          	addi	a0,s4,876 # 1036c <__modsi3+0xf378>
     780:	4f0000ef          	jal	ra,c70 <puts>
     784:	00010537          	lui	a0,0x10
     788:	3a050513          	addi	a0,a0,928 # 103a0 <__modsi3+0xf3ac>
     78c:	4e4000ef          	jal	ra,c70 <puts>
     790:	e14ba583          	lw	a1,-492(s7) # 12e14 <Next_Ptr_Glob>
     794:	00010637          	lui	a2,0x10
     798:	2b060513          	addi	a0,a2,688 # 102b0 <__modsi3+0xf2bc>
     79c:	0005a583          	lw	a1,0(a1)
     7a0:	60c000ef          	jal	ra,dac <printf>
     7a4:	00010537          	lui	a0,0x10
     7a8:	3b050513          	addi	a0,a0,944 # 103b0 <__modsi3+0xf3bc>
     7ac:	4c4000ef          	jal	ra,c70 <puts>
     7b0:	e14ba603          	lw	a2,-492(s7)
     7b4:	2fcd0513          	addi	a0,s10,764
     7b8:	00462583          	lw	a1,4(a2)
     7bc:	5f0000ef          	jal	ra,dac <printf>
     7c0:	00000593          	li	a1,0
     7c4:	1b448513          	addi	a0,s1,436
     7c8:	5e4000ef          	jal	ra,dac <printf>
     7cc:	e14ba603          	lw	a2,-492(s7)
     7d0:	318c8513          	addi	a0,s9,792
     7d4:	00862583          	lw	a1,8(a2)
     7d8:	5d4000ef          	jal	ra,dac <printf>
     7dc:	00100593          	li	a1,1
     7e0:	1b448513          	addi	a0,s1,436
     7e4:	5c8000ef          	jal	ra,dac <printf>
     7e8:	e14ba603          	lw	a2,-492(s7)
     7ec:	334c0513          	addi	a0,s8,820
     7f0:	00c62583          	lw	a1,12(a2)
     7f4:	5b8000ef          	jal	ra,dac <printf>
     7f8:	01200593          	li	a1,18
     7fc:	1b448513          	addi	a0,s1,436
     800:	5ac000ef          	jal	ra,dac <printf>
     804:	e14ba583          	lw	a1,-492(s7)
     808:	350b0513          	addi	a0,s6,848
     80c:	01058593          	addi	a1,a1,16
     810:	59c000ef          	jal	ra,dac <printf>
     814:	36ca0513          	addi	a0,s4,876
     818:	458000ef          	jal	ra,c70 <puts>
     81c:	00012683          	lw	a3,0(sp)
     820:	00010537          	lui	a0,0x10
     824:	3f050513          	addi	a0,a0,1008 # 103f0 <__modsi3+0xf3fc>
     828:	00068593          	mv	a1,a3
     82c:	580000ef          	jal	ra,dac <printf>
     830:	00500593          	li	a1,5
     834:	1b448513          	addi	a0,s1,436
     838:	574000ef          	jal	ra,dac <printf>
     83c:	00412783          	lw	a5,4(sp)
     840:	00391593          	slli	a1,s2,0x3
     844:	412585b3          	sub	a1,a1,s2
     848:	00010537          	lui	a0,0x10
     84c:	40f585b3          	sub	a1,a1,a5
     850:	40c50513          	addi	a0,a0,1036 # 1040c <__modsi3+0xf418>
     854:	558000ef          	jal	ra,dac <printf>
     858:	00d00593          	li	a1,13
     85c:	1b448513          	addi	a0,s1,436
     860:	54c000ef          	jal	ra,dac <printf>
     864:	02812583          	lw	a1,40(sp)
     868:	00010537          	lui	a0,0x10
     86c:	42850513          	addi	a0,a0,1064 # 10428 <__modsi3+0xf434>
     870:	53c000ef          	jal	ra,dac <printf>
     874:	00700593          	li	a1,7
     878:	1b448513          	addi	a0,s1,436
     87c:	530000ef          	jal	ra,dac <printf>
     880:	02c12583          	lw	a1,44(sp)
     884:	00010537          	lui	a0,0x10
     888:	44450513          	addi	a0,a0,1092 # 10444 <__modsi3+0xf450>
     88c:	520000ef          	jal	ra,dac <printf>
     890:	00100593          	li	a1,1
     894:	1b448513          	addi	a0,s1,436
     898:	514000ef          	jal	ra,dac <printf>
     89c:	00010537          	lui	a0,0x10
     8a0:	03010593          	addi	a1,sp,48
     8a4:	46050513          	addi	a0,a0,1120 # 10460 <__modsi3+0xf46c>
     8a8:	504000ef          	jal	ra,dac <printf>
     8ac:	00010537          	lui	a0,0x10
     8b0:	47c50513          	addi	a0,a0,1148 # 1047c <__modsi3+0xf488>
     8b4:	3bc000ef          	jal	ra,c70 <puts>
     8b8:	00010537          	lui	a0,0x10
     8bc:	05010593          	addi	a1,sp,80
     8c0:	4b050513          	addi	a0,a0,1200 # 104b0 <__modsi3+0xf4bc>
     8c4:	4e8000ef          	jal	ra,dac <printf>
     8c8:	00010537          	lui	a0,0x10
     8cc:	4cc50513          	addi	a0,a0,1228 # 104cc <__modsi3+0xf4d8>
     8d0:	3a0000ef          	jal	ra,c70 <puts>
     8d4:	00a00513          	li	a0,10
     8d8:	36c000ef          	jal	ra,c44 <putchar>
     8dc:	000137b7          	lui	a5,0x13
     8e0:	00013737          	lui	a4,0x13
     8e4:	000136b7          	lui	a3,0x13
     8e8:	df46a683          	lw	a3,-524(a3) # 12df4 <Begin_Insn>
     8ec:	e007a603          	lw	a2,-512(a5) # 12e00 <Begin_Time>
     8f0:	dfc72703          	lw	a4,-516(a4) # 12dfc <End_Time>
     8f4:	df0da783          	lw	a5,-528(s11)
     8f8:	00010537          	lui	a0,0x10
     8fc:	40c70733          	sub	a4,a4,a2
     900:	40d787b3          	sub	a5,a5,a3
     904:	06400593          	li	a1,100
     908:	50050513          	addi	a0,a0,1280 # 10500 <__modsi3+0xf50c>
     90c:	dee42c23          	sw	a4,-520(s0) # 12df8 <User_Time>
     910:	def9a623          	sw	a5,-532(s3) # 12dec <User_Insn>
     914:	498000ef          	jal	ra,dac <printf>
     918:	dec9a603          	lw	a2,-532(s3)
     91c:	df842583          	lw	a1,-520(s0)
     920:	00010537          	lui	a0,0x10
     924:	51450513          	addi	a0,a0,1300 # 10514 <__modsi3+0xf520>
     928:	484000ef          	jal	ra,dac <printf>
     92c:	df842783          	lw	a5,-520(s0)
     930:	dec9a583          	lw	a1,-532(s3)
     934:	00579513          	slli	a0,a5,0x5
     938:	40f50533          	sub	a0,a0,a5
     93c:	00251513          	slli	a0,a0,0x2
     940:	00f50533          	add	a0,a0,a5
     944:	00351513          	slli	a0,a0,0x3
     948:	628000ef          	jal	ra,f70 <__divsi3>
     94c:	00a00593          	li	a1,10
     950:	00050493          	mv	s1,a0
     954:	6a0000ef          	jal	ra,ff4 <__modsi3>
     958:	00050a13          	mv	s4,a0
     95c:	00a00593          	li	a1,10
     960:	00048513          	mv	a0,s1
     964:	60c000ef          	jal	ra,f70 <__divsi3>
     968:	00a00593          	li	a1,10
     96c:	688000ef          	jal	ra,ff4 <__modsi3>
     970:	00050993          	mv	s3,a0
     974:	06400593          	li	a1,100
     978:	00048513          	mv	a0,s1
     97c:	5f4000ef          	jal	ra,f70 <__divsi3>
     980:	00a00593          	li	a1,10
     984:	670000ef          	jal	ra,ff4 <__modsi3>
     988:	00050913          	mv	s2,a0
     98c:	3e800593          	li	a1,1000
     990:	00048513          	mv	a0,s1
     994:	5dc000ef          	jal	ra,f70 <__divsi3>
     998:	00050593          	mv	a1,a0
     99c:	00010537          	lui	a0,0x10
     9a0:	00098693          	mv	a3,s3
     9a4:	00090613          	mv	a2,s2
     9a8:	000a0713          	mv	a4,s4
     9ac:	53450513          	addi	a0,a0,1332 # 10534 <__modsi3+0xf540>
     9b0:	3fc000ef          	jal	ra,dac <printf>
     9b4:	df842583          	lw	a1,-520(s0)
     9b8:	05f5e537          	lui	a0,0x5f5e
     9bc:	10050513          	addi	a0,a0,256 # 5f5e100 <IO_BASE+0x5b5e100>
     9c0:	5b0000ef          	jal	ra,f70 <__divsi3>
     9c4:	00050413          	mv	s0,a0
     9c8:	00050593          	mv	a1,a0
     9cc:	00010537          	lui	a0,0x10
     9d0:	55850513          	addi	a0,a0,1368 # 10558 <__modsi3+0xf564>
     9d4:	3d8000ef          	jal	ra,dac <printf>
     9d8:	00541793          	slli	a5,s0,0x5
     9dc:	408787b3          	sub	a5,a5,s0
     9e0:	00279793          	slli	a5,a5,0x2
     9e4:	008787b3          	add	a5,a5,s0
     9e8:	00379413          	slli	s0,a5,0x3
     9ec:	6dd00593          	li	a1,1757
     9f0:	00040513          	mv	a0,s0
     9f4:	57c000ef          	jal	ra,f70 <__divsi3>
     9f8:	00a00593          	li	a1,10
     9fc:	00050493          	mv	s1,a0
     a00:	5f4000ef          	jal	ra,ff4 <__modsi3>
     a04:	00050993          	mv	s3,a0
     a08:	00a00593          	li	a1,10
     a0c:	00048513          	mv	a0,s1
     a10:	560000ef          	jal	ra,f70 <__divsi3>
     a14:	00a00593          	li	a1,10
     a18:	5dc000ef          	jal	ra,ff4 <__modsi3>
     a1c:	0002b5b7          	lui	a1,0x2b
     a20:	00050913          	mv	s2,a0
     a24:	e5458593          	addi	a1,a1,-428 # 2ae54 <Ptr_Glob+0x1803c>
     a28:	00040513          	mv	a0,s0
     a2c:	544000ef          	jal	ra,f70 <__divsi3>
     a30:	00a00593          	li	a1,10
     a34:	5c0000ef          	jal	ra,ff4 <__modsi3>
     a38:	001ad5b7          	lui	a1,0x1ad
     a3c:	00050493          	mv	s1,a0
     a40:	f4858593          	addi	a1,a1,-184 # 1acf48 <Ptr_Glob+0x19a130>
     a44:	00040513          	mv	a0,s0
     a48:	528000ef          	jal	ra,f70 <__divsi3>
     a4c:	00050593          	mv	a1,a0
     a50:	00010537          	lui	a0,0x10
     a54:	00098713          	mv	a4,s3
     a58:	00090693          	mv	a3,s2
     a5c:	00048613          	mv	a2,s1
     a60:	57c50513          	addi	a0,a0,1404 # 1057c <__modsi3+0xf588>
     a64:	348000ef          	jal	ra,dac <printf>
     a68:	00000513          	li	a0,0
     a6c:	10c12083          	lw	ra,268(sp)
     a70:	10812403          	lw	s0,264(sp)
     a74:	10412483          	lw	s1,260(sp)
     a78:	10012903          	lw	s2,256(sp)
     a7c:	0fc12983          	lw	s3,252(sp)
     a80:	0f812a03          	lw	s4,248(sp)
     a84:	0f412a83          	lw	s5,244(sp)
     a88:	0f012b03          	lw	s6,240(sp)
     a8c:	0ec12b83          	lw	s7,236(sp)
     a90:	0e812c03          	lw	s8,232(sp)
     a94:	0e412c83          	lw	s9,228(sp)
     a98:	0e012d03          	lw	s10,224(sp)
     a9c:	0dc12d83          	lw	s11,220(sp)
     aa0:	11010113          	addi	sp,sp,272
     aa4:	00008067          	ret
     aa8:	00010537          	lui	a0,0x10
     aac:	08c50513          	addi	a0,a0,140 # 1008c <__modsi3+0xf098>
     ab0:	1c0000ef          	jal	ra,c70 <puts>
     ab4:	00a00513          	li	a0,10
     ab8:	18c000ef          	jal	ra,c44 <putchar>
     abc:	8b5ff06f          	j	370 <main+0x12c>
     ac0:	00900913          	li	s2,9
     ac4:	ab9ff06f          	j	57c <main+0x338>
     ac8:	00010537          	lui	a0,0x10
     acc:	00050513          	mv	a0,a0
     ad0:	2dc000ef          	jal	ra,dac <printf>
     ad4:	fff00513          	li	a0,-1
     ad8:	f95ff06f          	j	a6c <main+0x828>

00000adc <Proc_6>:
     adc:	00200793          	li	a5,2
     ae0:	04f50263          	beq	a0,a5,b24 <Proc_6+0x48>
     ae4:	00300713          	li	a4,3
     ae8:	00e5a023          	sw	a4,0(a1)
     aec:	00100713          	li	a4,1
     af0:	00e50a63          	beq	a0,a4,b04 <Proc_6+0x28>
     af4:	00400713          	li	a4,4
     af8:	02e50263          	beq	a0,a4,b1c <Proc_6+0x40>
     afc:	00050c63          	beqz	a0,b14 <Proc_6+0x38>
     b00:	00008067          	ret
     b04:	000137b7          	lui	a5,0x13
     b08:	e107a703          	lw	a4,-496(a5) # 12e10 <Int_Glob>
     b0c:	06400793          	li	a5,100
     b10:	fee7d8e3          	bge	a5,a4,b00 <Proc_6+0x24>
     b14:	0005a023          	sw	zero,0(a1)
     b18:	00008067          	ret
     b1c:	00f5a023          	sw	a5,0(a1)
     b20:	00008067          	ret
     b24:	00100793          	li	a5,1
     b28:	00f5a023          	sw	a5,0(a1)
     b2c:	00008067          	ret

00000b30 <Proc_7>:
     b30:	00250513          	addi	a0,a0,2 # 10002 <__modsi3+0xf00e>
     b34:	00b505b3          	add	a1,a0,a1
     b38:	00b62023          	sw	a1,0(a2)
     b3c:	00008067          	ret

00000b40 <Proc_8>:
     b40:	00560713          	addi	a4,a2,5
     b44:	00171793          	slli	a5,a4,0x1
     b48:	00e787b3          	add	a5,a5,a4
     b4c:	00379793          	slli	a5,a5,0x3
     b50:	00e787b3          	add	a5,a5,a4
     b54:	00379793          	slli	a5,a5,0x3
     b58:	00261613          	slli	a2,a2,0x2
     b5c:	00271813          	slli	a6,a4,0x2
     b60:	01050533          	add	a0,a0,a6
     b64:	00f60833          	add	a6,a2,a5
     b68:	00d52023          	sw	a3,0(a0)
     b6c:	00d52223          	sw	a3,4(a0)
     b70:	06e52c23          	sw	a4,120(a0)
     b74:	010586b3          	add	a3,a1,a6
     b78:	0106a803          	lw	a6,16(a3)
     b7c:	00e6aa23          	sw	a4,20(a3)
     b80:	00e6ac23          	sw	a4,24(a3)
     b84:	00180713          	addi	a4,a6,1
     b88:	00e6a823          	sw	a4,16(a3)
     b8c:	00052703          	lw	a4,0(a0)
     b90:	00c585b3          	add	a1,a1,a2
     b94:	00f585b3          	add	a1,a1,a5
     b98:	000017b7          	lui	a5,0x1
     b9c:	00b787b3          	add	a5,a5,a1
     ba0:	fae7aa23          	sw	a4,-76(a5) # fb4 <__udivsi3+0x3c>
     ba4:	000137b7          	lui	a5,0x13
     ba8:	00500713          	li	a4,5
     bac:	e0e7a823          	sw	a4,-496(a5) # 12e10 <Int_Glob>
     bb0:	00008067          	ret

00000bb4 <Func_1>:
     bb4:	0ff57513          	zext.b	a0,a0
     bb8:	0ff5f593          	zext.b	a1,a1
     bbc:	00b50663          	beq	a0,a1,bc8 <Func_1+0x14>
     bc0:	00000513          	li	a0,0
     bc4:	00008067          	ret
     bc8:	000137b7          	lui	a5,0x13
     bcc:	e0a784a3          	sb	a0,-503(a5) # 12e09 <Ch_1_Glob>
     bd0:	00100513          	li	a0,1
     bd4:	00008067          	ret

00000bd8 <Func_2>:
     bd8:	ff010113          	addi	sp,sp,-16
     bdc:	00112623          	sw	ra,12(sp)
     be0:	00254783          	lbu	a5,2(a0)
     be4:	0035c703          	lbu	a4,3(a1)
     be8:	00000613          	li	a2,0
     bec:	00000693          	li	a3,0
     bf0:	02e78e63          	beq	a5,a4,c2c <Func_2+0x54>
     bf4:	00068663          	beqz	a3,c00 <Func_2+0x28>
     bf8:	000137b7          	lui	a5,0x13
     bfc:	e0c784a3          	sb	a2,-503(a5) # 12e09 <Ch_1_Glob>
     c00:	348000ef          	jal	ra,f48 <strcmp>
     c04:	00000793          	li	a5,0
     c08:	00a05a63          	blez	a0,c1c <Func_2+0x44>
     c0c:	000137b7          	lui	a5,0x13
     c10:	00a00713          	li	a4,10
     c14:	e0e7a823          	sw	a4,-496(a5) # 12e10 <Int_Glob>
     c18:	00100793          	li	a5,1
     c1c:	00c12083          	lw	ra,12(sp)
     c20:	00078513          	mv	a0,a5
     c24:	01010113          	addi	sp,sp,16
     c28:	00008067          	ret
     c2c:	00100693          	li	a3,1
     c30:	00078613          	mv	a2,a5
     c34:	fbdff06f          	j	bf0 <Func_2+0x18>

00000c38 <Func_3>:
     c38:	ffe50513          	addi	a0,a0,-2
     c3c:	00153513          	seqz	a0,a0
     c40:	00008067          	ret

00000c44 <putchar>:
     c44:	004007b7          	lui	a5,0x400
     c48:	00a7a423          	sw	a0,8(a5) # 400008 <IO_BASE+0x8>
     c4c:	00008067          	ret

00000c50 <print_string>:
     c50:	00054783          	lbu	a5,0(a0)
     c54:	00078c63          	beqz	a5,c6c <print_string+0x1c>
     c58:	00400737          	lui	a4,0x400
     c5c:	00f72423          	sw	a5,8(a4) # 400008 <IO_BASE+0x8>
     c60:	00154783          	lbu	a5,1(a0)
     c64:	00150513          	addi	a0,a0,1
     c68:	fe079ae3          	bnez	a5,c5c <print_string+0xc>
     c6c:	00008067          	ret

00000c70 <puts>:
     c70:	00054783          	lbu	a5,0(a0)
     c74:	00078c63          	beqz	a5,c8c <puts+0x1c>
     c78:	00400737          	lui	a4,0x400
     c7c:	00f72423          	sw	a5,8(a4) # 400008 <IO_BASE+0x8>
     c80:	00154783          	lbu	a5,1(a0)
     c84:	00150513          	addi	a0,a0,1
     c88:	fe079ae3          	bnez	a5,c7c <puts+0xc>
     c8c:	004007b7          	lui	a5,0x400
     c90:	00a00713          	li	a4,10
     c94:	00e7a423          	sw	a4,8(a5) # 400008 <IO_BASE+0x8>
     c98:	00100513          	li	a0,1
     c9c:	00008067          	ret

00000ca0 <print_dec>:
     ca0:	ef010113          	addi	sp,sp,-272
     ca4:	10812423          	sw	s0,264(sp)
     ca8:	10112623          	sw	ra,268(sp)
     cac:	10912223          	sw	s1,260(sp)
     cb0:	11212023          	sw	s2,256(sp)
     cb4:	00050413          	mv	s0,a0
     cb8:	00055a63          	bgez	a0,ccc <print_dec+0x2c>
     cbc:	004007b7          	lui	a5,0x400
     cc0:	02d00713          	li	a4,45
     cc4:	00e7a423          	sw	a4,8(a5) # 400008 <IO_BASE+0x8>
     cc8:	40a00433          	neg	s0,a0
     ccc:	00010913          	mv	s2,sp
     cd0:	00090493          	mv	s1,s2
     cd4:	0240006f          	j	cf8 <print_dec+0x58>
     cd8:	31c000ef          	jal	ra,ff4 <__modsi3>
     cdc:	00050793          	mv	a5,a0
     ce0:	00f48023          	sb	a5,0(s1)
     ce4:	00040513          	mv	a0,s0
     ce8:	00a00593          	li	a1,10
     cec:	284000ef          	jal	ra,f70 <__divsi3>
     cf0:	00148493          	addi	s1,s1,1
     cf4:	00050413          	mv	s0,a0
     cf8:	00a00593          	li	a1,10
     cfc:	00040513          	mv	a0,s0
     d00:	fc041ce3          	bnez	s0,cd8 <print_dec+0x38>
     d04:	fd248ae3          	beq	s1,s2,cd8 <print_dec+0x38>
     d08:	00400737          	lui	a4,0x400
     d0c:	fff4c783          	lbu	a5,-1(s1)
     d10:	fff48493          	addi	s1,s1,-1
     d14:	03078793          	addi	a5,a5,48
     d18:	0ff7f793          	zext.b	a5,a5
     d1c:	00f72423          	sw	a5,8(a4) # 400008 <IO_BASE+0x8>
     d20:	ff2496e3          	bne	s1,s2,d0c <print_dec+0x6c>
     d24:	10c12083          	lw	ra,268(sp)
     d28:	10812403          	lw	s0,264(sp)
     d2c:	10412483          	lw	s1,260(sp)
     d30:	10012903          	lw	s2,256(sp)
     d34:	11010113          	addi	sp,sp,272
     d38:	00008067          	ret

00000d3c <print_hex>:
     d3c:	01c00713          	li	a4,28
     d40:	00010597          	auipc	a1,0x10
     d44:	8b858593          	addi	a1,a1,-1864 # 105f8 <__modsi3+0xf604>
     d48:	00400637          	lui	a2,0x400
     d4c:	ffc00693          	li	a3,-4
     d50:	00e557b3          	srl	a5,a0,a4
     d54:	00f7f793          	andi	a5,a5,15
     d58:	00f587b3          	add	a5,a1,a5
     d5c:	0007c783          	lbu	a5,0(a5)
     d60:	ffc70713          	addi	a4,a4,-4
     d64:	00f62423          	sw	a5,8(a2) # 400008 <IO_BASE+0x8>
     d68:	fed714e3          	bne	a4,a3,d50 <print_hex+0x14>
     d6c:	00008067          	ret

00000d70 <print_hex_digits>:
     d70:	fff58593          	addi	a1,a1,-1
     d74:	00259593          	slli	a1,a1,0x2
     d78:	0205c863          	bltz	a1,da8 <print_hex_digits+0x38>
     d7c:	00010617          	auipc	a2,0x10
     d80:	87c60613          	addi	a2,a2,-1924 # 105f8 <__modsi3+0xf604>
     d84:	004006b7          	lui	a3,0x400
     d88:	ffc00713          	li	a4,-4
     d8c:	00b557b3          	srl	a5,a0,a1
     d90:	00f7f793          	andi	a5,a5,15
     d94:	00f607b3          	add	a5,a2,a5
     d98:	0007c783          	lbu	a5,0(a5)
     d9c:	ffc58593          	addi	a1,a1,-4
     da0:	00f6a423          	sw	a5,8(a3) # 400008 <IO_BASE+0x8>
     da4:	fee594e3          	bne	a1,a4,d8c <print_hex_digits+0x1c>
     da8:	00008067          	ret

00000dac <printf>:
     dac:	fb010113          	addi	sp,sp,-80
     db0:	02812423          	sw	s0,40(sp)
     db4:	04f12223          	sw	a5,68(sp)
     db8:	02112623          	sw	ra,44(sp)
     dbc:	02912223          	sw	s1,36(sp)
     dc0:	03212023          	sw	s2,32(sp)
     dc4:	01312e23          	sw	s3,28(sp)
     dc8:	01412c23          	sw	s4,24(sp)
     dcc:	01512a23          	sw	s5,20(sp)
     dd0:	02b12a23          	sw	a1,52(sp)
     dd4:	02c12c23          	sw	a2,56(sp)
     dd8:	02d12e23          	sw	a3,60(sp)
     ddc:	04e12023          	sw	a4,64(sp)
     de0:	05012423          	sw	a6,72(sp)
     de4:	05112623          	sw	a7,76(sp)
     de8:	00050413          	mv	s0,a0
     dec:	00054503          	lbu	a0,0(a0)
     df0:	03410793          	addi	a5,sp,52
     df4:	00f12623          	sw	a5,12(sp)
     df8:	04050263          	beqz	a0,e3c <printf+0x90>
     dfc:	02500493          	li	s1,37
     e00:	07300913          	li	s2,115
     e04:	07800993          	li	s3,120
     e08:	06400a13          	li	s4,100
     e0c:	06300a93          	li	s5,99
     e10:	04951a63          	bne	a0,s1,e64 <printf+0xb8>
     e14:	00144503          	lbu	a0,1(s0)
     e18:	05250c63          	beq	a0,s2,e70 <printf+0xc4>
     e1c:	09350263          	beq	a0,s3,ea0 <printf+0xf4>
     e20:	09450c63          	beq	a0,s4,eb8 <printf+0x10c>
     e24:	07550263          	beq	a0,s5,e88 <printf+0xdc>
     e28:	e1dff0ef          	jal	ra,c44 <putchar>
     e2c:	00140793          	addi	a5,s0,1
     e30:	0017c503          	lbu	a0,1(a5)
     e34:	00178413          	addi	s0,a5,1
     e38:	fc051ce3          	bnez	a0,e10 <printf+0x64>
     e3c:	02c12083          	lw	ra,44(sp)
     e40:	02812403          	lw	s0,40(sp)
     e44:	02412483          	lw	s1,36(sp)
     e48:	02012903          	lw	s2,32(sp)
     e4c:	01c12983          	lw	s3,28(sp)
     e50:	01812a03          	lw	s4,24(sp)
     e54:	01412a83          	lw	s5,20(sp)
     e58:	00000513          	li	a0,0
     e5c:	05010113          	addi	sp,sp,80
     e60:	00008067          	ret
     e64:	de1ff0ef          	jal	ra,c44 <putchar>
     e68:	00040793          	mv	a5,s0
     e6c:	fc5ff06f          	j	e30 <printf+0x84>
     e70:	00c12783          	lw	a5,12(sp)
     e74:	0007a503          	lw	a0,0(a5)
     e78:	00478793          	addi	a5,a5,4
     e7c:	00f12623          	sw	a5,12(sp)
     e80:	dd1ff0ef          	jal	ra,c50 <print_string>
     e84:	fa9ff06f          	j	e2c <printf+0x80>
     e88:	00c12783          	lw	a5,12(sp)
     e8c:	0007a503          	lw	a0,0(a5)
     e90:	00478793          	addi	a5,a5,4
     e94:	00f12623          	sw	a5,12(sp)
     e98:	dadff0ef          	jal	ra,c44 <putchar>
     e9c:	f91ff06f          	j	e2c <printf+0x80>
     ea0:	00c12783          	lw	a5,12(sp)
     ea4:	0007a503          	lw	a0,0(a5)
     ea8:	00478793          	addi	a5,a5,4
     eac:	00f12623          	sw	a5,12(sp)
     eb0:	e8dff0ef          	jal	ra,d3c <print_hex>
     eb4:	f79ff06f          	j	e2c <printf+0x80>
     eb8:	00c12783          	lw	a5,12(sp)
     ebc:	0007a503          	lw	a0,0(a5)
     ec0:	00478793          	addi	a5,a5,4
     ec4:	00f12623          	sw	a5,12(sp)
     ec8:	dd9ff0ef          	jal	ra,ca0 <print_dec>
     ecc:	f61ff06f          	j	e2c <printf+0x80>

00000ed0 <memcpy>:
     ed0:	00b567b3          	or	a5,a0,a1
     ed4:	0037f713          	andi	a4,a5,3
     ed8:	00050793          	mv	a5,a0
     edc:	02070263          	beqz	a4,f00 <memcpy+0x30>
     ee0:	00c786b3          	add	a3,a5,a2
     ee4:	06060063          	beqz	a2,f44 <memcpy+0x74>
     ee8:	0005c703          	lbu	a4,0(a1)
     eec:	00178793          	addi	a5,a5,1
     ef0:	00158593          	addi	a1,a1,1
     ef4:	fee78fa3          	sb	a4,-1(a5)
     ef8:	fef698e3          	bne	a3,a5,ee8 <memcpy+0x18>
     efc:	00008067          	ret
     f00:	00300713          	li	a4,3
     f04:	fcc77ee3          	bgeu	a4,a2,ee0 <memcpy+0x10>
     f08:	ffc60893          	addi	a7,a2,-4
     f0c:	ffc8f893          	andi	a7,a7,-4
     f10:	00488893          	addi	a7,a7,4
     f14:	011507b3          	add	a5,a0,a7
     f18:	00058693          	mv	a3,a1
     f1c:	00050713          	mv	a4,a0
     f20:	0006a803          	lw	a6,0(a3)
     f24:	00470713          	addi	a4,a4,4
     f28:	00468693          	addi	a3,a3,4
     f2c:	ff072e23          	sw	a6,-4(a4)
     f30:	fee798e3          	bne	a5,a4,f20 <memcpy+0x50>
     f34:	00367613          	andi	a2,a2,3
     f38:	011585b3          	add	a1,a1,a7
     f3c:	00c786b3          	add	a3,a5,a2
     f40:	fa0614e3          	bnez	a2,ee8 <memcpy+0x18>
     f44:	00008067          	ret

00000f48 <strcmp>:
     f48:	00054783          	lbu	a5,0(a0)
     f4c:	00158593          	addi	a1,a1,1
     f50:	00150513          	addi	a0,a0,1
     f54:	fff5c703          	lbu	a4,-1(a1)
     f58:	00078863          	beqz	a5,f68 <strcmp+0x20>
     f5c:	fee786e3          	beq	a5,a4,f48 <strcmp>
     f60:	40e78533          	sub	a0,a5,a4
     f64:	00008067          	ret
     f68:	40e00533          	neg	a0,a4
     f6c:	00008067          	ret

00000f70 <__divsi3>:
     f70:	06054063          	bltz	a0,fd0 <__umodsi3+0x10>
     f74:	0605c663          	bltz	a1,fe0 <__umodsi3+0x20>

00000f78 <__udivsi3>:
     f78:	00058613          	mv	a2,a1
     f7c:	00050593          	mv	a1,a0
     f80:	fff00513          	li	a0,-1
     f84:	02060c63          	beqz	a2,fbc <__udivsi3+0x44>
     f88:	00100693          	li	a3,1
     f8c:	00b67a63          	bgeu	a2,a1,fa0 <__udivsi3+0x28>
     f90:	00c05863          	blez	a2,fa0 <__udivsi3+0x28>
     f94:	00161613          	slli	a2,a2,0x1
     f98:	00169693          	slli	a3,a3,0x1
     f9c:	feb66ae3          	bltu	a2,a1,f90 <__udivsi3+0x18>
     fa0:	00000513          	li	a0,0
     fa4:	00c5e663          	bltu	a1,a2,fb0 <__udivsi3+0x38>
     fa8:	40c585b3          	sub	a1,a1,a2
     fac:	00d56533          	or	a0,a0,a3
     fb0:	0016d693          	srli	a3,a3,0x1
     fb4:	00165613          	srli	a2,a2,0x1
     fb8:	fe0696e3          	bnez	a3,fa4 <__udivsi3+0x2c>
     fbc:	00008067          	ret

00000fc0 <__umodsi3>:
     fc0:	00008293          	mv	t0,ra
     fc4:	fb5ff0ef          	jal	ra,f78 <__udivsi3>
     fc8:	00058513          	mv	a0,a1
     fcc:	00028067          	jr	t0
     fd0:	40a00533          	neg	a0,a0
     fd4:	0005d863          	bgez	a1,fe4 <__umodsi3+0x24>
     fd8:	40b005b3          	neg	a1,a1
     fdc:	f95ff06f          	j	f70 <__divsi3>
     fe0:	40b005b3          	neg	a1,a1
     fe4:	00008293          	mv	t0,ra
     fe8:	f89ff0ef          	jal	ra,f70 <__divsi3>
     fec:	40a00533          	neg	a0,a0
     ff0:	00028067          	jr	t0

00000ff4 <__modsi3>:
     ff4:	00008293          	mv	t0,ra
     ff8:	0005ca63          	bltz	a1,100c <__modsi3+0x18>
     ffc:	00054c63          	bltz	a0,1014 <__modsi3+0x20>
    1000:	f79ff0ef          	jal	ra,f78 <__udivsi3>
    1004:	00058513          	mv	a0,a1
    1008:	00028067          	jr	t0
    100c:	40b005b3          	neg	a1,a1
    1010:	fe0558e3          	bgez	a0,1000 <__modsi3+0xc>
    1014:	40a00533          	neg	a0,a0
    1018:	f61ff0ef          	jal	ra,f78 <__udivsi3>
    101c:	40b00533          	neg	a0,a1
    1020:	00028067          	jr	t0

Déassemblage de la section .data :

00010000 <Arr_1_Glob-0x60c>:
   10000:	6854                	.2byte	0x6854
   10002:	7369                	.2byte	0x7369
   10004:	6620                	.2byte	0x6620
   10006:	6d65                	.2byte	0x6d65
   10008:	6f74                	.2byte	0x6f74
   1000a:	7672                	.2byte	0x7672
   1000c:	63203233          	.4byte	0x63203233
   10010:	2065726f          	jal	tp,67216 <Ptr_Glob+0x543fe>
   10014:	6f64                	.2byte	0x6f64
   10016:	7365                	.2byte	0x7365
   10018:	6e20                	.2byte	0x6e20
   1001a:	6820746f          	jal	s0,1769c <Ptr_Glob+0x4884>
   1001e:	7661                	.2byte	0x7661
   10020:	2065                	.2byte	0x2065
   10022:	6e756f63          	bltu	a0,t2,10720 <Arr_2_Glob+0x4c>
   10026:	6574                	.2byte	0x6574
   10028:	7372                	.2byte	0x7372
   1002a:	2820                	.2byte	0x2820
   1002c:	20656573          	.4byte	0x20656573
   10030:	6566                	.2byte	0x6566
   10032:	746d                	.2byte	0x746d
   10034:	636f736f          	jal	t1,10766a <Ptr_Glob+0xf4852>
   10038:	762e                	.2byte	0x762e
   1003a:	0029                	.2byte	0x29
   1003c:	4844                	.2byte	0x4844
   1003e:	5952                	.2byte	0x5952
   10040:	4e4f5453          	.4byte	0x4e4f5453
   10044:	2045                	.2byte	0x2045
   10046:	5250                	.2byte	0x5250
   10048:	4152474f          	.4byte	0x4152474f
   1004c:	2c4d                	.2byte	0x2c4d
   1004e:	5320                	.2byte	0x5320
   10050:	20454d4f          	.4byte	0x20454d4f
   10054:	49525453          	.4byte	0x49525453
   10058:	474e                	.2byte	0x474e
   1005a:	0000                	.2byte	0x0
   1005c:	6844                	.2byte	0x6844
   1005e:	7972                	.2byte	0x7972
   10060:	6e6f7473          	.4byte	0x6e6f7473
   10064:	2065                	.2byte	0x2065
   10066:	6542                	.2byte	0x6542
   10068:	636e                	.2byte	0x636e
   1006a:	6d68                	.2byte	0x6d68
   1006c:	7261                	.2byte	0x7261
   1006e:	56202c6b          	.4byte	0x56202c6b
   10072:	7265                	.2byte	0x7265
   10074:	6e6f6973          	.4byte	0x6e6f6973
   10078:	3220                	.2byte	0x3220
   1007a:	312e                	.2byte	0x312e
   1007c:	2820                	.2byte	0x2820
   1007e:	614c                	.2byte	0x614c
   10080:	676e                	.2byte	0x676e
   10082:	6175                	.2byte	0x6175
   10084:	203a6567          	.4byte	0x203a6567
   10088:	00002943          	.4byte	0x2943
   1008c:	7250                	.2byte	0x7250
   1008e:	6172676f          	jal	a4,36ea4 <Ptr_Glob+0x2408c>
   10092:	206d                	.2byte	0x206d
   10094:	706d6f63          	bltu	s10,t1,107b2 <Arr_2_Glob+0xde>
   10098:	6c69                	.2byte	0x6c69
   1009a:	6465                	.2byte	0x6465
   1009c:	7720                	.2byte	0x7720
   1009e:	7469                	.2byte	0x7469
   100a0:	2068                	.2byte	0x2068
   100a2:	67657227          	.4byte	0x67657227
   100a6:	7369                	.2byte	0x7369
   100a8:	6574                	.2byte	0x6574
   100aa:	2772                	.2byte	0x2772
   100ac:	6120                	.2byte	0x6120
   100ae:	7474                	.2byte	0x7474
   100b0:	6972                	.2byte	0x6972
   100b2:	7562                	.2byte	0x7562
   100b4:	6574                	.2byte	0x6574
   100b6:	0000                	.2byte	0x0
   100b8:	7250                	.2byte	0x7250
   100ba:	6172676f          	jal	a4,36ed0 <Ptr_Glob+0x240b8>
   100be:	206d                	.2byte	0x206d
   100c0:	706d6f63          	bltu	s10,t1,107de <Arr_2_Glob+0x10a>
   100c4:	6c69                	.2byte	0x6c69
   100c6:	6465                	.2byte	0x6465
   100c8:	7720                	.2byte	0x7720
   100ca:	7469                	.2byte	0x7469
   100cc:	6f68                	.2byte	0x6f68
   100ce:	7475                	.2byte	0x7475
   100d0:	2720                	.2byte	0x2720
   100d2:	6572                	.2byte	0x6572
   100d4:	74736967          	.4byte	0x74736967
   100d8:	7265                	.2byte	0x7265
   100da:	74612027          	.4byte	0x74612027
   100de:	7274                	.2byte	0x7274
   100e0:	6269                	.2byte	0x6269
   100e2:	7475                	.2byte	0x7475
   100e4:	0065                	.2byte	0x65
   100e6:	0000                	.2byte	0x0
   100e8:	6c50                	.2byte	0x6c50
   100ea:	6165                	.2byte	0x6165
   100ec:	67206573          	.4byte	0x67206573
   100f0:	7669                	.2byte	0x7669
   100f2:	2065                	.2byte	0x2065
   100f4:	6874                	.2byte	0x6874
   100f6:	2065                	.2byte	0x2065
   100f8:	756e                	.2byte	0x756e
   100fa:	626d                	.2byte	0x626d
   100fc:	7265                	.2byte	0x7265
   100fe:	6f20                	.2byte	0x6f20
   10100:	2066                	.2byte	0x2066
   10102:	7572                	.2byte	0x7572
   10104:	736e                	.2byte	0x736e
   10106:	7420                	.2byte	0x7420
   10108:	7268                	.2byte	0x7268
   1010a:	6867756f          	jal	a0,87790 <Ptr_Glob+0x74978>
   1010e:	7420                	.2byte	0x7420
   10110:	6568                	.2byte	0x6568
   10112:	6220                	.2byte	0x6220
   10114:	6e65                	.2byte	0x6e65
   10116:	616d6863          	bltu	s10,s6,10726 <Arr_2_Glob+0x52>
   1011a:	6b72                	.2byte	0x6b72
   1011c:	203a                	.2byte	0x203a
   1011e:	0000                	.2byte	0x0
   10120:	7845                	.2byte	0x7845
   10122:	6365                	.2byte	0x6365
   10124:	7475                	.2byte	0x7475
   10126:	6f69                	.2byte	0x6f69
   10128:	206e                	.2byte	0x206e
   1012a:	72617473          	.4byte	0x72617473
   1012e:	7374                	.2byte	0x7374
   10130:	202c                	.2byte	0x202c
   10132:	6425                	.2byte	0x6425
   10134:	7220                	.2byte	0x7220
   10136:	6e75                	.2byte	0x6e75
   10138:	68742073          	.4byte	0x68742073
   1013c:	6f72                	.2byte	0x6f72
   1013e:	6775                	.2byte	0x6775
   10140:	2068                	.2byte	0x2068
   10142:	6844                	.2byte	0x6844
   10144:	7972                	.2byte	0x7972
   10146:	6e6f7473          	.4byte	0x6e6f7473
   1014a:	0a65                	.2byte	0xa65
   1014c:	0000                	.2byte	0x0
   1014e:	0000                	.2byte	0x0
   10150:	7845                	.2byte	0x7845
   10152:	6365                	.2byte	0x6365
   10154:	7475                	.2byte	0x7475
   10156:	6f69                	.2byte	0x6f69
   10158:	206e                	.2byte	0x206e
   1015a:	6e65                	.2byte	0x6e65
   1015c:	7364                	.2byte	0x7364
   1015e:	0000                	.2byte	0x0
   10160:	6946                	.2byte	0x6946
   10162:	616e                	.2byte	0x616e
   10164:	206c                	.2byte	0x206c
   10166:	6176                	.2byte	0x6176
   10168:	756c                	.2byte	0x756c
   1016a:	7365                	.2byte	0x7365
   1016c:	6f20                	.2byte	0x6f20
   1016e:	2066                	.2byte	0x2066
   10170:	6874                	.2byte	0x6874
   10172:	2065                	.2byte	0x2065
   10174:	6176                	.2byte	0x6176
   10176:	6972                	.2byte	0x6972
   10178:	6261                	.2byte	0x6261
   1017a:	656c                	.2byte	0x656c
   1017c:	73752073          	.4byte	0x73752073
   10180:	6465                	.2byte	0x6465
   10182:	6920                	.2byte	0x6920
   10184:	206e                	.2byte	0x206e
   10186:	6874                	.2byte	0x6874
   10188:	2065                	.2byte	0x2065
   1018a:	6562                	.2byte	0x6562
   1018c:	636e                	.2byte	0x636e
   1018e:	6d68                	.2byte	0x6d68
   10190:	7261                	.2byte	0x7261
   10192:	00003a6b          	.4byte	0x3a6b
   10196:	0000                	.2byte	0x0
   10198:	6e49                	.2byte	0x6e49
   1019a:	5f74                	.2byte	0x5f74
   1019c:	626f6c47          	.4byte	0x626f6c47
   101a0:	203a                	.2byte	0x203a
   101a2:	2020                	.2byte	0x2020
   101a4:	2020                	.2byte	0x2020
   101a6:	2020                	.2byte	0x2020
   101a8:	2020                	.2byte	0x2020
   101aa:	2020                	.2byte	0x2020
   101ac:	2520                	.2byte	0x2520
   101ae:	0a64                	.2byte	0xa64
   101b0:	0000                	.2byte	0x0
   101b2:	0000                	.2byte	0x0
   101b4:	2020                	.2byte	0x2020
   101b6:	2020                	.2byte	0x2020
   101b8:	2020                	.2byte	0x2020
   101ba:	2020                	.2byte	0x2020
   101bc:	756f6873          	.4byte	0x756f6873
   101c0:	646c                	.2byte	0x646c
   101c2:	6220                	.2byte	0x6220
   101c4:	3a65                	.2byte	0x3a65
   101c6:	2020                	.2byte	0x2020
   101c8:	2520                	.2byte	0x2520
   101ca:	0a64                	.2byte	0xa64
   101cc:	0000                	.2byte	0x0
   101ce:	0000                	.2byte	0x0
   101d0:	6f42                	.2byte	0x6f42
   101d2:	475f6c6f          	jal	s8,106e46 <Ptr_Glob+0xf402e>
   101d6:	6f6c                	.2byte	0x6f6c
   101d8:	3a62                	.2byte	0x3a62
   101da:	2020                	.2byte	0x2020
   101dc:	2020                	.2byte	0x2020
   101de:	2020                	.2byte	0x2020
   101e0:	2020                	.2byte	0x2020
   101e2:	2020                	.2byte	0x2020
   101e4:	2520                	.2byte	0x2520
   101e6:	0a64                	.2byte	0xa64
   101e8:	0000                	.2byte	0x0
   101ea:	0000                	.2byte	0x0
   101ec:	315f6843          	.4byte	0x315f6843
   101f0:	475f 6f6c 3a62      	.byte	0x5f, 0x47, 0x6c, 0x6f, 0x62, 0x3a
   101f6:	2020                	.2byte	0x2020
   101f8:	2020                	.2byte	0x2020
   101fa:	2020                	.2byte	0x2020
   101fc:	2020                	.2byte	0x2020
   101fe:	2020                	.2byte	0x2020
   10200:	2520                	.2byte	0x2520
   10202:	00000a63          	beqz	zero,10216 <__modsi3+0xf222>
   10206:	0000                	.2byte	0x0
   10208:	2020                	.2byte	0x2020
   1020a:	2020                	.2byte	0x2020
   1020c:	2020                	.2byte	0x2020
   1020e:	2020                	.2byte	0x2020
   10210:	756f6873          	.4byte	0x756f6873
   10214:	646c                	.2byte	0x646c
   10216:	6220                	.2byte	0x6220
   10218:	3a65                	.2byte	0x3a65
   1021a:	2020                	.2byte	0x2020
   1021c:	2520                	.2byte	0x2520
   1021e:	00000a63          	beqz	zero,10232 <__modsi3+0xf23e>
   10222:	0000                	.2byte	0x0
   10224:	325f6843          	.4byte	0x325f6843
   10228:	475f 6f6c 3a62      	.byte	0x5f, 0x47, 0x6c, 0x6f, 0x62, 0x3a
   1022e:	2020                	.2byte	0x2020
   10230:	2020                	.2byte	0x2020
   10232:	2020                	.2byte	0x2020
   10234:	2020                	.2byte	0x2020
   10236:	2020                	.2byte	0x2020
   10238:	2520                	.2byte	0x2520
   1023a:	00000a63          	beqz	zero,1024e <__modsi3+0xf25a>
   1023e:	0000                	.2byte	0x0
   10240:	7241                	.2byte	0x7241
   10242:	5f72                	.2byte	0x5f72
   10244:	5f31                	.2byte	0x5f31
   10246:	626f6c47          	.4byte	0x626f6c47
   1024a:	3a5d385b          	.4byte	0x3a5d385b
   1024e:	2020                	.2byte	0x2020
   10250:	2020                	.2byte	0x2020
   10252:	2020                	.2byte	0x2020
   10254:	2520                	.2byte	0x2520
   10256:	0a64                	.2byte	0xa64
   10258:	0000                	.2byte	0x0
   1025a:	0000                	.2byte	0x0
   1025c:	7241                	.2byte	0x7241
   1025e:	5f72                	.2byte	0x5f72
   10260:	5f32                	.2byte	0x5f32
   10262:	626f6c47          	.4byte	0x626f6c47
   10266:	5b5d385b          	.4byte	0x5b5d385b
   1026a:	203a5d37          	lui	s10,0x203a5
   1026e:	2020                	.2byte	0x2020
   10270:	2520                	.2byte	0x2520
   10272:	0a64                	.2byte	0xa64
   10274:	0000                	.2byte	0x0
   10276:	0000                	.2byte	0x0
   10278:	2020                	.2byte	0x2020
   1027a:	2020                	.2byte	0x2020
   1027c:	2020                	.2byte	0x2020
   1027e:	2020                	.2byte	0x2020
   10280:	756f6873          	.4byte	0x756f6873
   10284:	646c                	.2byte	0x646c
   10286:	6220                	.2byte	0x6220
   10288:	3a65                	.2byte	0x3a65
   1028a:	2020                	.2byte	0x2020
   1028c:	4e20                	.2byte	0x4e20
   1028e:	6d75                	.2byte	0x6d75
   10290:	6562                	.2byte	0x6562
   10292:	5f72                	.2byte	0x5f72
   10294:	525f664f          	.4byte	0x525f664f
   10298:	6e75                	.2byte	0x6e75
   1029a:	202b2073          	.4byte	0x202b2073
   1029e:	3031                	.2byte	0x3031
   102a0:	0000                	.2byte	0x0
   102a2:	0000                	.2byte	0x0
   102a4:	7450                	.2byte	0x7450
   102a6:	5f72                	.2byte	0x5f72
   102a8:	626f6c47          	.4byte	0x626f6c47
   102ac:	3e2d                	.2byte	0x3e2d
   102ae:	0000                	.2byte	0x0
   102b0:	2020                	.2byte	0x2020
   102b2:	7450                	.2byte	0x7450
   102b4:	5f72                	.2byte	0x5f72
   102b6:	706d6f43          	.4byte	0x706d6f43
   102ba:	203a                	.2byte	0x203a
   102bc:	2020                	.2byte	0x2020
   102be:	2020                	.2byte	0x2020
   102c0:	2020                	.2byte	0x2020
   102c2:	2020                	.2byte	0x2020
   102c4:	2520                	.2byte	0x2520
   102c6:	0a64                	.2byte	0xa64
   102c8:	0000                	.2byte	0x0
   102ca:	0000                	.2byte	0x0
   102cc:	2020                	.2byte	0x2020
   102ce:	2020                	.2byte	0x2020
   102d0:	2020                	.2byte	0x2020
   102d2:	2020                	.2byte	0x2020
   102d4:	756f6873          	.4byte	0x756f6873
   102d8:	646c                	.2byte	0x646c
   102da:	6220                	.2byte	0x6220
   102dc:	3a65                	.2byte	0x3a65
   102de:	2020                	.2byte	0x2020
   102e0:	2820                	.2byte	0x2820
   102e2:	6d69                	.2byte	0x6d69
   102e4:	6c70                	.2byte	0x6c70
   102e6:	6d65                	.2byte	0x6d65
   102e8:	6e65                	.2byte	0x6e65
   102ea:	6174                	.2byte	0x6174
   102ec:	6974                	.2byte	0x6974
   102ee:	642d6e6f          	jal	t3,e6930 <Ptr_Glob+0xd3b18>
   102f2:	7065                	.2byte	0x7065
   102f4:	6e65                	.2byte	0x6e65
   102f6:	6564                	.2byte	0x6564
   102f8:	746e                	.2byte	0x746e
   102fa:	0029                	.2byte	0x29
   102fc:	2020                	.2byte	0x2020
   102fe:	6944                	.2byte	0x6944
   10300:	3a726373          	.4byte	0x3a726373
   10304:	2020                	.2byte	0x2020
   10306:	2020                	.2byte	0x2020
   10308:	2020                	.2byte	0x2020
   1030a:	2020                	.2byte	0x2020
   1030c:	2020                	.2byte	0x2020
   1030e:	2020                	.2byte	0x2020
   10310:	2520                	.2byte	0x2520
   10312:	0a64                	.2byte	0xa64
   10314:	0000                	.2byte	0x0
   10316:	0000                	.2byte	0x0
   10318:	2020                	.2byte	0x2020
   1031a:	6e45                	.2byte	0x6e45
   1031c:	6d75                	.2byte	0x6d75
   1031e:	435f 6d6f 3a70      	.byte	0x5f, 0x43, 0x6f, 0x6d, 0x70, 0x3a
   10324:	2020                	.2byte	0x2020
   10326:	2020                	.2byte	0x2020
   10328:	2020                	.2byte	0x2020
   1032a:	2020                	.2byte	0x2020
   1032c:	2520                	.2byte	0x2520
   1032e:	0a64                	.2byte	0xa64
   10330:	0000                	.2byte	0x0
   10332:	0000                	.2byte	0x0
   10334:	2020                	.2byte	0x2020
   10336:	6e49                	.2byte	0x6e49
   10338:	5f74                	.2byte	0x5f74
   1033a:	706d6f43          	.4byte	0x706d6f43
   1033e:	203a                	.2byte	0x203a
   10340:	2020                	.2byte	0x2020
   10342:	2020                	.2byte	0x2020
   10344:	2020                	.2byte	0x2020
   10346:	2020                	.2byte	0x2020
   10348:	2520                	.2byte	0x2520
   1034a:	0a64                	.2byte	0xa64
   1034c:	0000                	.2byte	0x0
   1034e:	0000                	.2byte	0x0
   10350:	2020                	.2byte	0x2020
   10352:	5f727453          	.4byte	0x5f727453
   10356:	706d6f43          	.4byte	0x706d6f43
   1035a:	203a                	.2byte	0x203a
   1035c:	2020                	.2byte	0x2020
   1035e:	2020                	.2byte	0x2020
   10360:	2020                	.2byte	0x2020
   10362:	2020                	.2byte	0x2020
   10364:	2520                	.2byte	0x2520
   10366:	00000a73          	.4byte	0xa73
   1036a:	0000                	.2byte	0x0
   1036c:	2020                	.2byte	0x2020
   1036e:	2020                	.2byte	0x2020
   10370:	2020                	.2byte	0x2020
   10372:	2020                	.2byte	0x2020
   10374:	756f6873          	.4byte	0x756f6873
   10378:	646c                	.2byte	0x646c
   1037a:	6220                	.2byte	0x6220
   1037c:	3a65                	.2byte	0x3a65
   1037e:	2020                	.2byte	0x2020
   10380:	4420                	.2byte	0x4420
   10382:	5248                	.2byte	0x5248
   10384:	5359                	.2byte	0x5359
   10386:	4f54                	.2byte	0x4f54
   10388:	454e                	.2byte	0x454e
   1038a:	5020                	.2byte	0x5020
   1038c:	4f52                	.2byte	0x4f52
   1038e:	4d415247          	.4byte	0x4d415247
   10392:	202c                	.2byte	0x202c
   10394:	454d4f53          	.4byte	0x454d4f53
   10398:	5320                	.2byte	0x5320
   1039a:	5254                	.2byte	0x5254
   1039c:	4e49                	.2byte	0x4e49
   1039e:	654e0047          	.4byte	0x654e0047
   103a2:	7478                	.2byte	0x7478
   103a4:	505f 7274 475f      	.byte	0x5f, 0x50, 0x74, 0x72, 0x5f, 0x47
   103aa:	6f6c                	.2byte	0x6f6c
   103ac:	2d62                	.2byte	0x2d62
   103ae:	003e                	.2byte	0x3e
   103b0:	2020                	.2byte	0x2020
   103b2:	2020                	.2byte	0x2020
   103b4:	2020                	.2byte	0x2020
   103b6:	2020                	.2byte	0x2020
   103b8:	756f6873          	.4byte	0x756f6873
   103bc:	646c                	.2byte	0x646c
   103be:	6220                	.2byte	0x6220
   103c0:	3a65                	.2byte	0x3a65
   103c2:	2020                	.2byte	0x2020
   103c4:	2820                	.2byte	0x2820
   103c6:	6d69                	.2byte	0x6d69
   103c8:	6c70                	.2byte	0x6c70
   103ca:	6d65                	.2byte	0x6d65
   103cc:	6e65                	.2byte	0x6e65
   103ce:	6174                	.2byte	0x6174
   103d0:	6974                	.2byte	0x6974
   103d2:	642d6e6f          	jal	t3,e6a14 <Ptr_Glob+0xd3bfc>
   103d6:	7065                	.2byte	0x7065
   103d8:	6e65                	.2byte	0x6e65
   103da:	6564                	.2byte	0x6564
   103dc:	746e                	.2byte	0x746e
   103de:	2c29                	.2byte	0x2c29
   103e0:	7320                	.2byte	0x7320
   103e2:	6d61                	.2byte	0x6d61
   103e4:	2065                	.2byte	0x2065
   103e6:	7361                	.2byte	0x7361
   103e8:	6120                	.2byte	0x6120
   103ea:	6f62                	.2byte	0x6f62
   103ec:	6576                	.2byte	0x6576
   103ee:	0000                	.2byte	0x0
   103f0:	6e49                	.2byte	0x6e49
   103f2:	5f74                	.2byte	0x5f74
   103f4:	5f31                	.2byte	0x5f31
   103f6:	6f4c                	.2byte	0x6f4c
   103f8:	20203a63          	.4byte	0x20203a63
   103fc:	2020                	.2byte	0x2020
   103fe:	2020                	.2byte	0x2020
   10400:	2020                	.2byte	0x2020
   10402:	2020                	.2byte	0x2020
   10404:	2520                	.2byte	0x2520
   10406:	0a64                	.2byte	0xa64
   10408:	0000                	.2byte	0x0
   1040a:	0000                	.2byte	0x0
   1040c:	6e49                	.2byte	0x6e49
   1040e:	5f74                	.2byte	0x5f74
   10410:	5f32                	.2byte	0x5f32
   10412:	6f4c                	.2byte	0x6f4c
   10414:	20203a63          	.4byte	0x20203a63
   10418:	2020                	.2byte	0x2020
   1041a:	2020                	.2byte	0x2020
   1041c:	2020                	.2byte	0x2020
   1041e:	2020                	.2byte	0x2020
   10420:	2520                	.2byte	0x2520
   10422:	0a64                	.2byte	0xa64
   10424:	0000                	.2byte	0x0
   10426:	0000                	.2byte	0x0
   10428:	6e49                	.2byte	0x6e49
   1042a:	5f74                	.2byte	0x5f74
   1042c:	6f4c5f33          	.4byte	0x6f4c5f33
   10430:	20203a63          	.4byte	0x20203a63
   10434:	2020                	.2byte	0x2020
   10436:	2020                	.2byte	0x2020
   10438:	2020                	.2byte	0x2020
   1043a:	2020                	.2byte	0x2020
   1043c:	2520                	.2byte	0x2520
   1043e:	0a64                	.2byte	0xa64
   10440:	0000                	.2byte	0x0
   10442:	0000                	.2byte	0x0
   10444:	6e45                	.2byte	0x6e45
   10446:	6d75                	.2byte	0x6d75
   10448:	4c5f 636f 203a      	.byte	0x5f, 0x4c, 0x6f, 0x63, 0x3a, 0x20
   1044e:	2020                	.2byte	0x2020
   10450:	2020                	.2byte	0x2020
   10452:	2020                	.2byte	0x2020
   10454:	2020                	.2byte	0x2020
   10456:	2020                	.2byte	0x2020
   10458:	2520                	.2byte	0x2520
   1045a:	0a64                	.2byte	0xa64
   1045c:	0000                	.2byte	0x0
   1045e:	0000                	.2byte	0x0
   10460:	5f727453          	.4byte	0x5f727453
   10464:	5f31                	.2byte	0x5f31
   10466:	6f4c                	.2byte	0x6f4c
   10468:	20203a63          	.4byte	0x20203a63
   1046c:	2020                	.2byte	0x2020
   1046e:	2020                	.2byte	0x2020
   10470:	2020                	.2byte	0x2020
   10472:	2020                	.2byte	0x2020
   10474:	2520                	.2byte	0x2520
   10476:	00000a73          	.4byte	0xa73
   1047a:	0000                	.2byte	0x0
   1047c:	2020                	.2byte	0x2020
   1047e:	2020                	.2byte	0x2020
   10480:	2020                	.2byte	0x2020
   10482:	2020                	.2byte	0x2020
   10484:	756f6873          	.4byte	0x756f6873
   10488:	646c                	.2byte	0x646c
   1048a:	6220                	.2byte	0x6220
   1048c:	3a65                	.2byte	0x3a65
   1048e:	2020                	.2byte	0x2020
   10490:	4420                	.2byte	0x4420
   10492:	5248                	.2byte	0x5248
   10494:	5359                	.2byte	0x5359
   10496:	4f54                	.2byte	0x4f54
   10498:	454e                	.2byte	0x454e
   1049a:	5020                	.2byte	0x5020
   1049c:	4f52                	.2byte	0x4f52
   1049e:	4d415247          	.4byte	0x4d415247
   104a2:	202c                	.2byte	0x202c
   104a4:	2731                	.2byte	0x2731
   104a6:	53205453          	.4byte	0x53205453
   104aa:	5254                	.2byte	0x5254
   104ac:	4e49                	.2byte	0x4e49
   104ae:	74530047          	.4byte	0x74530047
   104b2:	5f72                	.2byte	0x5f72
   104b4:	5f32                	.2byte	0x5f32
   104b6:	6f4c                	.2byte	0x6f4c
   104b8:	20203a63          	.4byte	0x20203a63
   104bc:	2020                	.2byte	0x2020
   104be:	2020                	.2byte	0x2020
   104c0:	2020                	.2byte	0x2020
   104c2:	2020                	.2byte	0x2020
   104c4:	2520                	.2byte	0x2520
   104c6:	00000a73          	.4byte	0xa73
   104ca:	0000                	.2byte	0x0
   104cc:	2020                	.2byte	0x2020
   104ce:	2020                	.2byte	0x2020
   104d0:	2020                	.2byte	0x2020
   104d2:	2020                	.2byte	0x2020
   104d4:	756f6873          	.4byte	0x756f6873
   104d8:	646c                	.2byte	0x646c
   104da:	6220                	.2byte	0x6220
   104dc:	3a65                	.2byte	0x3a65
   104de:	2020                	.2byte	0x2020
   104e0:	4420                	.2byte	0x4420
   104e2:	5248                	.2byte	0x5248
   104e4:	5359                	.2byte	0x5359
   104e6:	4f54                	.2byte	0x4f54
   104e8:	454e                	.2byte	0x454e
   104ea:	5020                	.2byte	0x5020
   104ec:	4f52                	.2byte	0x4f52
   104ee:	4d415247          	.4byte	0x4d415247
   104f2:	202c                	.2byte	0x202c
   104f4:	2732                	.2byte	0x2732
   104f6:	444e                	.2byte	0x444e
   104f8:	5320                	.2byte	0x5320
   104fa:	5254                	.2byte	0x5254
   104fc:	4e49                	.2byte	0x4e49
   104fe:	754e0047          	.4byte	0x754e0047
   10502:	626d                	.2byte	0x626d
   10504:	7265                	.2byte	0x7265
   10506:	4f5f 5f66 7552      	.byte	0x5f, 0x4f, 0x66, 0x5f, 0x52, 0x75
   1050c:	736e                	.2byte	0x736e
   1050e:	203a                	.2byte	0x203a
   10510:	6425                	.2byte	0x6425
   10512:	000a                	.2byte	0xa
   10514:	7355                	.2byte	0x7355
   10516:	7265                	.2byte	0x7265
   10518:	545f 6d69 3a65      	.byte	0x5f, 0x54, 0x69, 0x6d, 0x65, 0x3a
   1051e:	2520                	.2byte	0x2520
   10520:	2064                	.2byte	0x2064
   10522:	6c637963          	bgeu	t1,t1,10bf4 <Arr_2_Glob+0x520>
   10526:	7365                	.2byte	0x7365
   10528:	202c                	.2byte	0x202c
   1052a:	6425                	.2byte	0x6425
   1052c:	6920                	.2byte	0x6920
   1052e:	736e                	.2byte	0x736e
   10530:	0a6e                	.2byte	0xa6e
   10532:	0000                	.2byte	0x0
   10534:	6c637943          	.4byte	0x6c637943
   10538:	7365                	.2byte	0x7365
   1053a:	505f 7265 495f      	.byte	0x5f, 0x50, 0x65, 0x72, 0x5f, 0x49
   10540:	736e                	.2byte	0x736e
   10542:	7274                	.2byte	0x7274
   10544:	6375                	.2byte	0x6375
   10546:	6974                	.2byte	0x6974
   10548:	203a6e6f          	jal	t3,b6f4a <Ptr_Glob+0xa4132>
   1054c:	6425                	.2byte	0x6425
   1054e:	252e                	.2byte	0x252e
   10550:	2564                	.2byte	0x2564
   10552:	2564                	.2byte	0x2564
   10554:	0a64                	.2byte	0xa64
   10556:	0000                	.2byte	0x0
   10558:	6844                	.2byte	0x6844
   1055a:	7972                	.2byte	0x7972
   1055c:	6e6f7473          	.4byte	0x6e6f7473
   10560:	7365                	.2byte	0x7365
   10562:	505f 7265 535f      	.byte	0x5f, 0x50, 0x65, 0x72, 0x5f, 0x53
   10568:	6365                	.2byte	0x6365
   1056a:	5f646e6f          	jal	t3,56b60 <Ptr_Glob+0x43d48>
   1056e:	6550                	.2byte	0x6550
   10570:	5f72                	.2byte	0x5f72
   10572:	484d                	.2byte	0x484d
   10574:	3a7a                	.2byte	0x3a7a
   10576:	2520                	.2byte	0x2520
   10578:	0a64                	.2byte	0xa64
   1057a:	0000                	.2byte	0x0
   1057c:	4d44                	.2byte	0x4d44
   1057e:	5049                	.2byte	0x5049
   10580:	65505f53          	.4byte	0x65505f53
   10584:	5f72                	.2byte	0x5f72
   10586:	484d                	.2byte	0x484d
   10588:	3a7a                	.2byte	0x3a7a
   1058a:	2520                	.2byte	0x2520
   1058c:	2e64                	.2byte	0x2e64
   1058e:	6425                	.2byte	0x6425
   10590:	6425                	.2byte	0x6425
   10592:	6425                	.2byte	0x6425
   10594:	000a                	.2byte	0xa
   10596:	0000                	.2byte	0x0
   10598:	4844                	.2byte	0x4844
   1059a:	5952                	.2byte	0x5952
   1059c:	4e4f5453          	.4byte	0x4e4f5453
   105a0:	2045                	.2byte	0x2045
   105a2:	5250                	.2byte	0x5250
   105a4:	4152474f          	.4byte	0x4152474f
   105a8:	2c4d                	.2byte	0x2c4d
   105aa:	3120                	.2byte	0x3120
   105ac:	20545327          	.4byte	0x20545327
   105b0:	49525453          	.4byte	0x49525453
   105b4:	474e                	.2byte	0x474e
   105b6:	0000                	.2byte	0x0
   105b8:	4844                	.2byte	0x4844
   105ba:	5952                	.2byte	0x5952
   105bc:	4e4f5453          	.4byte	0x4e4f5453
   105c0:	2045                	.2byte	0x2045
   105c2:	5250                	.2byte	0x5250
   105c4:	4152474f          	.4byte	0x4152474f
   105c8:	2c4d                	.2byte	0x2c4d
   105ca:	3220                	.2byte	0x3220
   105cc:	20444e27          	.4byte	0x20444e27
   105d0:	49525453          	.4byte	0x49525453
   105d4:	474e                	.2byte	0x474e
   105d6:	0000                	.2byte	0x0
   105d8:	4844                	.2byte	0x4844
   105da:	5952                	.2byte	0x5952
   105dc:	4e4f5453          	.4byte	0x4e4f5453
   105e0:	2045                	.2byte	0x2045
   105e2:	5250                	.2byte	0x5250
   105e4:	4152474f          	.4byte	0x4152474f
   105e8:	2c4d                	.2byte	0x2c4d
   105ea:	3320                	.2byte	0x3320
   105ec:	20445227          	.4byte	0x20445227
   105f0:	49525453          	.4byte	0x49525453
   105f4:	474e                	.2byte	0x474e
   105f6:	0000                	.2byte	0x0
   105f8:	3130                	.2byte	0x3130
   105fa:	3332                	.2byte	0x3332
   105fc:	3534                	.2byte	0x3534
   105fe:	3736                	.2byte	0x3736
   10600:	3938                	.2byte	0x3938
   10602:	4241                	.2byte	0x4241
   10604:	46454443          	.4byte	0x46454443
   10608:	0000                	.2byte	0x0
	...

0001060c <Arr_1_Glob>:
	...

000106d4 <Arr_2_Glob>:
	...

00012de4 <Dhrystones_Per_Second>:
   12de4:	0000                	.2byte	0x0
	...

00012de8 <Microseconds>:
   12de8:	0000                	.2byte	0x0
	...

00012dec <User_Insn>:
   12dec:	0000                	.2byte	0x0
	...

00012df0 <End_Insn>:
   12df0:	0000                	.2byte	0x0
	...

00012df4 <Begin_Insn>:
   12df4:	0000                	.2byte	0x0
	...

00012df8 <User_Time>:
   12df8:	0000                	.2byte	0x0
	...

00012dfc <End_Time>:
   12dfc:	0000                	.2byte	0x0
	...

00012e00 <Begin_Time>:
   12e00:	0000                	.2byte	0x0
	...

00012e04 <Reg>:
   12e04:	0000                	.2byte	0x0
	...

00012e08 <Ch_2_Glob>:
	...

00012e09 <Ch_1_Glob>:
   12e09:	0000                	.2byte	0x0
	...

00012e0c <Bool_Glob>:
   12e0c:	0000                	.2byte	0x0
	...

00012e10 <Int_Glob>:
   12e10:	0000                	.2byte	0x0
	...

00012e14 <Next_Ptr_Glob>:
   12e14:	0000                	.2byte	0x0
	...

00012e18 <Ptr_Glob>:
   12e18:	0000                	.2byte	0x0
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
