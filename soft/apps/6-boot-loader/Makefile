CC=riscv64-elf-gcc
AS=riscv64-elf-as
LK=riscv64-elf-ld

ASFLAGS= -march=rv32i -mabi=ilp32
GCCFLAGS=-march=rv32i -mabi=ilp32 -O2 -fno-stack-protector -w -Wl,--no-relax
LDFLAGS=-T ../shared/dualbram.ld -m elf32lriscv -nostdlib

EXEC=bootloader.elf

all: $(EXEC)
	../../firmware_words/firmware_words $(EXEC) -ram 0x20000 -max_addr 0x20000 -out PROGROM.hex -from_addr 0x00000 -to_addr 0xFFFF
	../../firmware_words/firmware_words $(EXEC) -ram 0x20000 -max_addr 0x20000 -out DATARAM.hex -from_addr 0x10000 -to_addr 0x1FFFF
	cp PROGROM.hex   ../../PROGROM.hex
	cp DATARAM.hex   ../../DATARAM.hex
	cp PROGROM.hex32 ../../PROGROM.hex32
	cp DATARAM.hex32 ../../DATARAM.hex32
	rm PROGROM.he*
	rm DATARAM.he*

update_isim: all
	cp *.hex   ../../../fpga/nexys_a7/vivado/riscv-a7.sim/sim_1/behav/soft/
	cp *.hex32 ../../../fpga/nexys_a7/vivado/riscv-a7.sim/sim_1/behav/soft/

%.o : %.c#
	$(CC) $(GCCFLAGS) -c -o $@ $^

#%.o : %.S
#	$(AS) $(ASFLAGS) -c -o $@ $^

bootloader.elf: boot.o       \
				bootloader.o 
#				putchar.o    \
				print.o      \
				mul.o        \
				div.o
	$(LK) $(LDFLAGS) -o $@ $^
	riscv64-elf-objdump -D bootloader.elf > bootloader.asm

#riscv64-unknown-elf-gcc -Os -fno-pic -march=rv32i -mabi=ilp32 -fno-stack-protector -w -Wl,--no-relax -c hello.c

bootloader.o: bootloader.c
	$(CC) $(GCCFLAGS) bootloader.c -c -o bootloader.o

#riscv64-unknown-elf-as -march=rv32i -mabi=ilp32 ../shared/boot.S    -o boot.o

boot.o : ../shared/boot.S
	$(AS) $(ASFLAGS) ../shared/boot.S -o boot.o

#riscv64-unknown-elf-as -march=rv32i -mabi=ilp32 ../shared/putchar.S -o putchar.o

#putchar.o : ../shared/putchar.S
#	$(AS) $(ASFLAGS) ../shared/putchar.S -o putchar.o

#riscv64-unknown-elf-gcc -Os -fno-pic -march=rv32i -mabi=ilp32 -fno-stack-protector -w -Wl,--no-relax -c ../shared/print.c

#print.o : ../shared/print.c
#	$(CC) $(GCCFLAGS) ../shared/print.c -c -o print.o

#riscv64-unknown-elf-gcc -Os -fno-pic -march=rv32i -mabi=ilp32 -fno-stack-protector -w -Wl,--no-relax -c ../shared/memcpy.c

#memcpy.o : ../shared/memcpy.c
#	$(CC) $(GCCFLAGS) ../shared/memcpy.c -c -o memcpy.o

#riscv64-unknown-elf-gcc -Os -fno-pic -march=rv32i -mabi=ilp32 -fno-stack-protector -w -Wl,--no-relax -c ../shared/errno.c

#errno.o : ../shared/errno.c
#	$(CC) $(GCCFLAGS) ../shared/errno.c -c -o errno.o

#riscv64-unknown-elf-as -march=rv32i -mabi=ilp32 ../shared/wait.S    -o wait.o

#wait.o : ../shared/wait.S
#	$(AS) $(ASFLAGS) ../shared/wait.S -o wait.o

#riscv64-unknown-elf-as -march=rv32i -mabi=ilp32 ../shared/mul.S     -o mul.o

#mul.o : ../shared/mul.S
#	$(AS) $(ASFLAGS) ../shared/mul.S -o mul.o

#riscv64-unknown-elf-as -march=rv32i -mabi=ilp32 ../shared/div.S     -o div.o

#div.o : ../shared/div.S
#	$(AS) $(ASFLAGS) ../shared/div.S -o div.o

#saisie.o: saisie.h saisie.c
#	$(CC) -c $^ $(CFLAGS)

#affiche.o: affiche.h affiche.c    
#	$(CC) -c $^ $(CFLAGS)

clean:
	rm -rf *.o
	rm -rf *.hex
	rm -rf *.hex32
	rm -rf $(EXEC)
	rm -rf $(EXEC).asm
