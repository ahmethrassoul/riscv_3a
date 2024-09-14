EXEC=riscv_logo.elf

all: build_riscv_cmod_a7

build_riscv_cmod_a7:
	rm -rf ./proj
	vivado -mode batch -nolog -nojournal -source ./scripts/cmod_a7_build.tcl

load_riscv_cmod_a7:
	#openFPGALoader -b cmoda7_35t riscv_soc_cmod_a7.bit
	vivado -mode batch -nolog -nojournal -source ./scripts/cmod_a7_load.tcl


flash_riscv_cmod_a7:
	openFPGALoader -b cmoda7_35t riscv_soc_cmod_a7.bit -f

build_riscv_nexys_a7:
	rm -rf ./proj
	vivado -mode batch -nolog -nojournal -source ./scripts/nexys_a7_build.tcl

load_riscv_nexys_a7:
	#openFPGALoader -b nexys_a7_100 riscv_soc_nexys_a7.bit
	vivado -mode batch -nolog -nojournal -source ./scripts/nexys_a7_load.tcl

flash_riscv_nexys_a7:
	openFPGALoader -b nexys_a7_100 riscv_soc_nexys_a7.bit -f

clean:
	rm -rf ./proj
	rm -rf *.bit
	rm -rf *.txt
	rm -rf *.zip
