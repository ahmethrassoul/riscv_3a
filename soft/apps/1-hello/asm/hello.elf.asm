
./bin/hello.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <start>:
   0:	004007b7          	lui	a5,0x400
   4:	04800713          	li	a4,72
   8:	00e7a423          	sw	a4,8(a5) # 400008 <start+0x400008>
   c:	06500713          	li	a4,101
  10:	00e7a423          	sw	a4,8(a5)
  14:	06c00713          	li	a4,108
  18:	00e7a423          	sw	a4,8(a5)
  1c:	00e7a423          	sw	a4,8(a5)
  20:	06f00713          	li	a4,111
  24:	00e7a423          	sw	a4,8(a5)
  28:	00a00713          	li	a4,10
  2c:	00e7a423          	sw	a4,8(a5)
  30:	00100073          	ebreak
  34:	00008067          	ret

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

Déassemblage de la section .riscv.attributes :

00000000 <.riscv.attributes>:
   0:	1b41                	.2byte	0x1b41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <start+0x14>
   c:	0011                	.2byte	0x11
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	0031                	.2byte	0x31
