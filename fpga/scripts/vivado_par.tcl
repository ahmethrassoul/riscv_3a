# You can then run your build script in the same shell:
# 
# > vivado -mode batch -source build.tcl
# 
# If you’d rather Vivado not generate a journal and log files:
# 
# > vivado -mode batch -nolog -nojournal -source build.tcl
# 
# 
# build settings
# 
set design_name "riscv_soc"
set arch "xc7"
set board_name "arty"
set fpga_part "xc7a100tcsg324-1"

# set reference directories for source files
set lib_dir [file normalize "./../../../../lib"]
set origin_dir [file normalize "./../../"]

# read design sources
read_vhdl -vhdl2008 ../../src/riscv_types.vhd
read_vhdl -vhdl2008 ../../src/riscv.vhd
read_vhdl -vhdl2008 ../../src/riscv_soc.vhd
read_vhdl -vhdl2008 ../../testbench/riscv_soc_tb.vhd
read_vhdl -vhdl2008 ../../src/mem_rom.vhd
read_vhdl -vhdl2008 ../../src/mem_ram.vhd
read_vhdl -vhdl2008 ../../src/alu.vhd
read_vhdl -vhdl2008 ../../src/decoder.vhd
read_vhdl -vhdl2008 ../../src/registers.vhd
read_vhdl -vhdl2008 ../../src/immediate.vhd
read_vhdl -vhdl2008 ../../src/mem_store.vhd
read_vhdl -vhdl2008 ../../src/mem_load.vhd
read_vhdl -vhdl2008 ../../src/cnt_cycles.vhd
read_vhdl -vhdl2008 ../../src/cnt_instr.vhd
read_vhdl -vhdl2008 ../../src/csr_registers.vhd
read_vhdl -vhdl2008 ../../src/fetch.vhd
read_vhdl -vhdl2008 ../../src/uart_recv.vhd
read_vhdl -vhdl2008 ../../src/uart_send.vhd

# read constraints
#read_xdc "${origin_dir}/${arch}/${board_name}.xdc"
read_xdc "../xdc/Nexys-A7-100T.xdc"

# synth
#synth_design -top "top_${design_name}" -part ${fpga_part}
synth_design -top "${design_name}" -part ${fpga_part}

# place and route
opt_design
place_design
route_design

# write bitstream
#write_bitstream -force "${origin_dir}/${arch}/${design_name}.bit"
write_bitstream -force "${design_name}.bit"
