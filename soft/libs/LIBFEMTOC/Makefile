RVGCC=riscv64-linux-gnu-gcc-12
RVAR=riscv64-linux-gnu-ar
RVRANLIB=riscv64-linux-gnu-ranlib
CFLAGS=-march=rv32i -mabi=ilp32 -O2 -nostdlib -fno-stack-protector -w -Wl,--no-relax

#PATH_I=-I../../libs/LIBFEMTOC -DRISCV -DTIME -DUSE_MYSTDLIB
#PATH_L=-L../../libs/LIBFEMTOC -L../../libs/LIBFEMTORV32

%ASFLAGS= -march=rv32i -mabi=ilp32


#CC=riscv-none-elf-gcc
#AS=riscv-none-elf-as
#LK=riscv-none-elf-ld

#ASFLAGS= -march=rv32i -mabi=ilp32
#GCCFLAGS=-march=rv32i -mabi=ilp32 -O2 -fno-stack-protector -w -Wl,--no-relax  -fno-pic
#LDFLAGS=-T linker.ld -m elf32lriscv -nostdlib -L../../libs/LIBFEMTOC -L../../libs/LIBFEMTORV32 -L../../libs/LIBFEMTOGL -lfemtoc

all: libfemtoc.a 

libfemtoc.a: obj/print.o \
			obj/printf.o  \
			obj/clz.o     \
			obj/memcpy.o  \
			obj/strcmp.o  \
			obj/strlen.o  \
			obj/strncpy.o \
			obj/memset.o  \
			obj/random.o  \
			obj/strcpy.o  \
			obj/strncmp.o \
			obj/mul.o     \
			obj/div.o 
	$(RVAR) rcs libfemtoc.a $^
	$(RVRANLIB) libfemtoc.a
	riscv64-linux-gnu-objdump -D libfemtoc.a > ./asm/libfemtoc.asm

obj/print.o : ./src/print.c
	$(RVGCC) $(CFLAGS) ./src/print.c -c -o obj/print.o $(PATH_L)

obj/printf.o : ./src/printf.c
	$(RVGCC) $(CFLAGS) ./src/printf.c -c -o obj/printf.o $(PATH_L)

obj/clz.o : ./src/clz.c
	$(RVGCC) $(CFLAGS) ./src/clz.c -c -o obj/clz.o $(PATH_L)

obj/memcpy.o : ./src/memcpy.c
	$(RVGCC) $(CFLAGS) ./src/memcpy.c -c -o obj/memcpy.o $(PATH_L)

obj/strcmp.o : ./src/strcmp.c
	$(RVGCC) $(CFLAGS) ./src/strcmp.c -c -o obj/strcmp.o $(PATH_L)

obj/strlen.o : ./src/strlen.c
	$(RVGCC) $(CFLAGS) ./src/strlen.c -c -o obj/strlen.o $(PATH_L)

obj/strncpy.o : ./src/strncpy.c
	$(RVGCC) $(CFLAGS) ./src/strncpy.c -c -o obj/strncpy.o $(PATH_L)

obj/memset.o : ./src/memset.c
	$(RVGCC) $(CFLAGS) ./src/memset.c -c -o obj/memset.o $(PATH_L)

obj/random.o : ./src/random.c
	$(RVGCC) $(CFLAGS) ./src/random.c -c -o obj/random.o $(PATH_L)

obj/strcpy.o : ./src/strcpy.c
	$(RVGCC) $(CFLAGS) ./src/strcpy.c -c -o obj/strcpy.o $(PATH_L)

obj/strncmp.o : ./src/strncmp.c
	$(RVGCC) $(CFLAGS) ./src/strncmp.c -c -o obj/strncmp.o $(PATH_L)

obj/mul.o : ./src/mul.S
	$(RVGCC) $(CFLAGS) ./src/mul.S -c -o obj/mul.o $(PATH_L)

obj/div.o : ./src/div.S
	$(RVGCC) $(CFLAGS) ./src/div.S -c -o obj/div.o $(PATH_L)

clean:
	rm -rf ./obj/*.o
	rm -rf ./libfemtoc.a