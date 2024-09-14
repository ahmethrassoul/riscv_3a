RV_CCC = riscv64-linux-gnu-gcc-12
RV_AS  = riscv64-linux-gnu-as
RV_LD  = riscv64-linux-gnu-ld
RV_OBJ = riscv64-linux-gnu-objdump

ASFLAGS= -march=rv32i -mabi=ilp32
GCCFLAGS=-march=rv32i -mabi=ilp32 -O2 -fno-stack-protector -w -Wl,--no-relax -DRISCV -DTIME -DUSE_MYSTDLIB -fno-pic
LDFLAGS=-T linker.ld -m elf32lriscv -nostdlib

firmware_words=../../tools/firmware_words/firmware_words

