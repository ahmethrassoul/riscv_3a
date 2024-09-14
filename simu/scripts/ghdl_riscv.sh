touch work-obj08.cf
rm work-obj08.cf

ghdl -a --std=08 -fsynopsys -Wno-hide -Wno-shared -frelaxed ../src/tools/strings_h.vhdl
ghdl -a --std=08 -fsynopsys -Wno-hide -Wno-shared -frelaxed ../src/tools/regexp_h.vhdl
ghdl -a --std=08 -fsynopsys -Wno-hide -Wno-shared -frelaxed ../src/tools/ctype_h.vhdl
ghdl -a --std=08 -fsynopsys -Wno-hide -Wno-shared -frelaxed ../src/tools/stdlib_h.vhdl
ghdl -a --std=08 -fsynopsys -Wno-hide -Wno-shared -frelaxed ../src/tools/stdio_h.vhdl

ghdl -a --std=08 -frelaxed ../src/riscv_types.vhd
ghdl -a --std=08 -frelaxed ../src/riscv.vhd
ghdl -a --std=08 -frelaxed ../src/riscv_soc.vhd
ghdl -a --std=08 -frelaxed ../testbench/riscv_soc_tb.vhd
ghdl -a --std=08 -frelaxed ../src/observer.vhd

ghdl -a --std=08 -frelaxed ../src/mem_rom.vhd
ghdl -a --std=08 -frelaxed ../src/mem_ram.vhd
ghdl -a --std=08 -frelaxed ../src/alu.vhd
ghdl -a --std=08 -frelaxed ../src/decoder.vhd
ghdl -a --std=08 -frelaxed ../src/registers.vhd
ghdl -a --std=08 -frelaxed ../src/immediate.vhd
ghdl -a --std=08 -frelaxed ../src/mem_store.vhd
ghdl -a --std=08 -frelaxed ../src/mem_load.vhd

ghdl -a --std=08 -frelaxed ../src/cnt_cycles.vhd
ghdl -a --std=08 -frelaxed ../src/cnt_instr.vhd
ghdl -a --std=08 -frelaxed ../src/csr_registers.vhd

ghdl -a --std=08 -frelaxed ../src/fetch.vhd

ghdl -a --std=08 -frelaxed ../src/uart_recv.vhd
ghdl -a --std=08 -frelaxed ../src/uart_send.vhd

ghdl -e --std=08 -frelaxed riscv_soc_tb

ghdl -r --std=08 -frelaxed riscv_soc_tb --ieee-asserts=disable --max-stack-alloc=0
