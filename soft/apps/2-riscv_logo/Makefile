include ../Makefile.inc 

EXEC=riscv_logo.elf

all: $(EXEC)
	$(firmware_words) ./bin/$(EXEC) -ram 0x20000 -max_addr 0x20000 -out hex/PROGROM.mem -from_addr 0x00000 -to_addr 0x0FFFF
	$(firmware_words) ./bin/$(EXEC) -ram 0x20000 -max_addr 0x20000 -out hex/DATARAM.mem -from_addr 0x10000 -to_addr 0x1FFFF
	cp hex/PROGROM.mem ../../../firmware/PROGROM.mem
	cp hex/DATARAM.mem ../../../firmware/DATARAM.mem

riscv_logo.elf: ./obj/boot.o       \
				./obj/riscv_logo.o
	$(RV_LD)  -o ./bin/$@ $^ $(LDFLAGS) -L../../libs/LIBFEMTOC -lfemtoc
	$(RV_OBJ) -D ./bin/$(EXEC) > ./asm/$(EXEC).asm

./obj/riscv_logo.o: ./src/riscv_logo.c
	$(RV_CCC) $(GCCFLAGS) ./src/riscv_logo.c -c -o ./obj/riscv_logo.o -I../../libs/LIBFEMTOC -DRISCV -DTIME -DUSE_MYSTDLIB -fno-pic

./obj/boot.o : ../shared/boot.S
	$(RV_AS) $(ASFLAGS) ../shared/boot.S -o ./obj/boot.o

clean:
	rm -rf obj/*.o
	rm -rf hex/*.mem
	rm -rf bin/$(EXEC)
	rm -rf asm/$(EXEC).asm
