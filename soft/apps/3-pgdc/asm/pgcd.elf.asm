
./bin/pgcd.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <start>:
   0:	004001b7          	lui	gp,0x400
   4:	00020137          	lui	sp,0x20
   8:	00c000ef          	jal	ra,14 <main>
   c:	00100073          	ebreak

00000010 <function>:
  10:	00008067          	ret

00000014 <main>:
  14:	00002537          	lui	a0,0x2
  18:	000137b7          	lui	a5,0x13
  1c:	68950513          	addi	a0,a0,1673 # 2689 <main+0x2675>
  20:	97878793          	addi	a5,a5,-1672 # 12978 <main+0x12964>
  24:	00f55863          	bge	a0,a5,34 <main+0x20>
  28:	40a787b3          	sub	a5,a5,a0
  2c:	fef51ce3          	bne	a0,a5,24 <main+0x10>
  30:	00008067          	ret
  34:	40f50533          	sub	a0,a0,a5
  38:	fef516e3          	bne	a0,a5,24 <main+0x10>
  3c:	ff5ff06f          	j	30 <main+0x1c>

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <main>
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
