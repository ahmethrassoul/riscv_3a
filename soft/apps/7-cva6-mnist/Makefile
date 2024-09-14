include ../Makefile.inc 

EXEC=mnist.elf

all: $(EXEC)
	$(firmware_words) ./bin/$(EXEC) -ram 0x20000 -max_addr 0x20000 -out hex/PROGROM.mem  -from_addr 0x00000 -to_addr 0x1FFFF
	$(firmware_words) ./bin/$(EXEC) -ram 0x20000 -max_addr 0x20000 -out hex/DATARAM.mem  -from_addr 0x20000 -to_addr 0x3FFFF
	$(firmware_words) ./bin/$(EXEC) -ram 0x40000 -max_addr 0x40000 -out hex/firmware.mem -from_addr 0x00000 -to_addr 0x3FFFF
	cp hex/PROGROM.mem ../../../firmware/PROGROM.mem
	cp hex/DATARAM.mem ../../../firmware/DATARAM.mem

mnist.elf:	obj/boot.o               \
			obj/NetworkPropagate.o   \
			obj/cpp_utils.o          \
			obj/main.o

	$(RV_LD) -o ./bin/$@ $^ $(LDFLAGS) -L../../libs/LIBFEMTOC -lfemtoc
	$(RV_OBJ) -D ./bin/$(EXEC) > ./asm/$(EXEC).asm

obj/cpp_utils.o: src/cpp_utils.c
	$(RV_CCC) $(GCCFLAGS) src/cpp_utils.c -c -o obj/cpp_utils.o -I../../libs/LIBFEMTOC -I../../libs/LIBFEMTORV32

obj/main.o: src/main.c
	$(RV_CCC) $(GCCFLAGS) src/main.c -c -o obj/main.o -I../../libs/LIBFEMTOC -I../../libs/LIBFEMTORV32

obj/NetworkPropagate.o: src/NetworkPropagate.c
	$(RV_CCC) $(GCCFLAGS) src/NetworkPropagate.c -c -o obj/NetworkPropagate.o -I../../libs/LIBFEMTOC -I../../libs/LIBFEMTORV32

obj/boot.o : src/boot.S
	$(RV_AS) $(ASFLAGS) src/boot.S -o obj/boot.o

clean:
	rm -rf obj/*.o
	rm -rf hex/*.mem
	rm -rf bin/$(EXEC)
	rm -rf asm/$(EXEC).asm
