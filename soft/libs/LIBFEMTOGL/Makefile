#include ../makefile.inc
CC=riscv-none-elf-gcc -I. -I../LIBFEMTORV32/src
AS=riscv-none-elf-as
LK=riscv-none-elf-ld

RVGCC=riscv-none-elf-gcc
RVAR=riscv-none-elf-ar
RVRANLIB=riscv-none-elf-ranlib

ASFLAGS= -march=rv32i -mabi=ilp32
GCCFLAGS=-march=rv32i -mabi=ilp32 -O2 -fno-stack-protector -w -Wl,--no-relax

OBJECTS= 	obj/font_8x16.o        \
			obj/font_8x8.o         \
			obj/font_5x6.o         \
			obj/font_3x5.o         \
         	obj/femtoGL.o          \
			obj/femtoGLtext.o      \
			obj/femtoGLfill_rect.o \
	     	obj/femtoGLsetpixel.o  \
			obj/femtoGLline.o      \
			obj/femtoGLfill_poly.o \
	     	obj/tty_init.o         \
			obj/max7219_text.o     \
	     	obj/FGA_mode.o         \
			obj/FGA.o              \
	     	obj/femto_GUI.o
	
all: libfemtoGL.a

libfemtoGL.a: $(OBJECTS) 
	$(RVAR) cq libfemtoGL.a $(OBJECTS) 
	$(RVRANLIB) libfemtoGL.a
	riscv-none-elf-objdump -D libfemtoGL.a > ./asm/libfemtoGL.asm

obj/font_8x16.o   : src/font_8x16.S
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/font_8x8.o   : src/font_8x8.S
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/font_5x6.o   : src/font_5x6.S
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/font_3x5.o   : src/font_3x5.S
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/femtoGL.o   : src/femtoGL.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/femtoGLtext.o   : src/femtoGLtext.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/femtoGLfill_rect.o   : src/femtoGLfill_rect.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/femtoGLsetpixel.o   : src/femtoGLsetpixel.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/femtoGLline.o   : src/femtoGLline.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/femtoGLfill_poly.o   : src/femtoGLfill_poly.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/tty_init.o   : src/tty_init.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/max7219_text.o   : src/max7219_text.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/FGA_mode.o   : src/FGA_mode.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/FGA.o   : src/FGA.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/femto_GUI.o   : src/femto_GUI.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

clean:
	rm -rf ./obj/*.o
	rm -rf libfemtoGL.a
	rm -rf ./asm/libfemtoGL.asm
