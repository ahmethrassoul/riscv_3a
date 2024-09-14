include ../Makefile.inc 

EXEC=hello_world.elf

all: $(EXEC)
	$(firmware_words) ./bin/$(EXEC) -ram 0x20000 -max_addr 0x20000 -out hex/PROGROM.mem -from_addr 0x00000 -to_addr 0x0FFFF
	$(firmware_words) ./bin/$(EXEC) -ram 0x20000 -max_addr 0x20000 -out hex/DATARAM.mem -from_addr 0x10000 -to_addr 0x1FFFF
	cp hex/PROGROM.mem ../../../firmware/PROGROM.mem
	cp hex/DATARAM.mem ../../../firmware/DATARAM.mem

hello_world.elf: obj/boot.o    \
		obj/hello_world.o
	$(RV_LD)  -o ./bin/$@ $^ $(LDFLAGS) -L../../libs/libuc -luc
	$(RV_OBJ) -D ./bin/$(EXEC) > ./asm/$(EXEC).asm

obj/hello_world.o: src/hello_world.c
	$(RV_CCC) $(GCCFLAGS) src/hello_world.c -c -o obj/hello_world.o -I../../libs/libuc -DRISCV -DTIME -DUSE_MYSTDLIB -fno-pic

./obj/boot.o : ../shared/boot_leds.S
	$(RV_AS) $(ASFLAGS) ../shared/boot_leds.S -o ./obj/boot.o

clean:
	rm -rf obj/*.o
	rm -rf hex/*.mem
	rm -rf bin/$(EXEC)
	rm -rf asm/$(EXEC).asm
