CC=riscv-none-elf-gcc -I.
AS=riscv-none-elf-as
LK=riscv-none-elf-ld

RVGCC=riscv-none-elf-gcc
RVAR=riscv-none-elf-ar
RVRANLIB=riscv-none-elf-ranlib

ASFLAGS= -march=rv32i -mabi=ilp32
GCCFLAGS=-march=rv32i -mabi=ilp32 -O2 -fno-stack-protector -w -Wl,--no-relax -DSTANDALONE_FEMTOELF
#LDFLAGS=-T linker.ld -m elf32lriscv -nostdlib
#include ../makefile.inc

FAT_IO_OBJS_WITH_DIR=obj/fat_access.o  obj/fat_cache.o                 \
                     obj/fat_filelib.o obj/fat_format.o obj/fat_misc.o \
                     obj/fat_string.o  obj/fat_table.o  obj/fat_write.o

#FAT_IO_OBJS_WITH_DIR=obj/fat_io_lib/fat_access.o  obj/fat_io_lib/fat_cache.o                            \
#                     obj/fat_io_lib/fat_filelib.o obj/fat_io_lib/fat_format.o obj/fat_io_lib/fat_misc.o \
#                     obj/fat_io_lib/fat_string.o  obj/fat_io_lib/fat_table.o  obj/fat_io_lib/fat_write.o

OBJECTS=    obj/femtorv32.o         \
            obj/max7219.o           \
            obj/ssd1351_1331.o      \
            obj/ssd1351_1331_init.o \
            obj/uart.o         \
            obj/keyboard.o     \
            obj/virtual_io.o   \
	        obj/wait_cycles.o  \
            obj/microwait.o    \
            obj/milliwait.o    \
            obj/milliseconds.o \
            obj/spi_sd.o       \
            obj/cycles_32.o    \
            obj/cycles_64.o    \
	        obj/filesystem.o   \
            obj/exec.o         \
            obj/femto_elf.o

all: libfemtorv32.a 

libfemtorv32.a: $(OBJECTS) $(FAT_IO_OBJS_WITH_DIR) 
	$(RVAR) cq libfemtorv32.a $(OBJECTS) $(FAT_IO_OBJS)
	$(RVRANLIB) libfemtorv32.a
	riscv-none-elf-objdump -D libfemtorv32.a > ./asm/libfemtorv32.asm

obj/fat_access.o   : src/fat_io_lib/fat_access.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/fat_cache.o    : src/fat_io_lib/fat_cache.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/fat_filelib.o  : src/fat_io_lib/fat_filelib.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/fat_format.o   : src/fat_io_lib/fat_format.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/fat_misc.o     : src/fat_io_lib/fat_misc.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/fat_string.o   : src/fat_io_lib/fat_string.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/fat_table.o    : src/fat_io_lib/fat_table.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/fat_write.o    : src/fat_io_lib/fat_write.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/femtorv32.o    : src/femtorv32.S
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/max7219.o      : src/max7219.S
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/ssd1351_1331_init.o : src/ssd1351_1331_init.S
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/ssd1351_1331.o : src/ssd1351_1331.S
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/uart.o         : src/uart.S
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/keyboard.o     : src/keyboard.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/virtual_io.o   : src/virtual_io.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/wait_cycles.o  : src/wait_cycles.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/microwait.o    : src/microwait.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/milliwait.o    : src/milliwait.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/milliseconds.o : src/milliseconds.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/spi_sd.o      : src/spi_sd.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/cycles_32.o   : src/cycles_32.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/cycles_64.o   : src/cycles_64.S
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/filesystem.o  : src/filesystem.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/exec.o        : src/exec.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

obj/femto_elf.o   : src/femto_elf.c
	$(CC) $(GCCFLAGS) $< -c -o $@ -I./src/ -I../../libs/LIBFEMTOC

clean:
	rm -rf ./obj/*.o
	rm -rf libfemtorv32.a
	rm -rf ./asm/libfemtorv32.asm
