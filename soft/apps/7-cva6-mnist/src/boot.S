.equ IO_BASE, 0x400000  
.section .text
.globl start
start:
    li   gp,IO_BASE
	li   sp,0x30000
	call main
	ebreak
	