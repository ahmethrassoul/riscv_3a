library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity decoder_tb is
end;

architecture bench of decoder_tb is

  component decoder
  Port ( 
      instr_i       : in  STD_LOGIC_VECTOR (31 downto 0);
      isLoad_o      : out STD_LOGIC;
      isStore_o     : out STD_LOGIC;
      isALUreg_o    : out STD_LOGIC;
      isBranch_o    : out STD_LOGIC;
      isSYSTEM_o    : out STD_LOGIC;
      isJAL_o       : out STD_LOGIC;
      isJALR_o      : out STD_LOGIC;
      isJALorJALR_o : out STD_LOGIC;
      isAuipc_o     : out STD_LOGIC;
      isLui_o       : out STD_LOGIC;
      isCSRRS_o     : out STD_LOGIC;
      isEBreak_o    : out STD_LOGIC;
      isByte_o      : out STD_LOGIC;
      isHalf_o      : out STD_LOGIC;
      funct3_o      : out STD_LOGIC_VECTOR ( 2 downto 0);
      funct7_o      : out STD_LOGIC_VECTOR ( 6 downto 0);
      csrId_o       : out STD_LOGIC_VECTOR ( 1 downto 0);
      rs1_o         : out STD_LOGIC_VECTOR ( 4 downto 0);
      rs2_o         : out STD_LOGIC_VECTOR ( 4 downto 0);
      rdId_o        : out STD_LOGIC_VECTOR ( 4 downto 0)
   );
  end component;

  signal instr_i: STD_LOGIC_VECTOR (31 downto 0);
  signal isLoad_o: STD_LOGIC;
  signal isStore_o: STD_LOGIC;
  signal isALUreg_o: STD_LOGIC;
  signal isBranch_o: STD_LOGIC;
  signal isSYSTEM_o: STD_LOGIC;
  signal isJAL_o: STD_LOGIC;
  signal isJALR_o: STD_LOGIC;
  signal isJALorJALR_o: STD_LOGIC;
  signal isAuipc_o: STD_LOGIC;
  signal isLui_o: STD_LOGIC;
  signal isCSRRS_o: STD_LOGIC;
  signal isEBreak_o: STD_LOGIC;
  signal isByte_o: STD_LOGIC;
  signal isHalf_o: STD_LOGIC;
  signal funct3_o: STD_LOGIC_VECTOR ( 2 downto 0);
  signal funct7_o: STD_LOGIC_VECTOR ( 6 downto 0);
  signal csrId_o: STD_LOGIC_VECTOR ( 1 downto 0);
  signal rs1_o: STD_LOGIC_VECTOR ( 4 downto 0);
  signal rs2_o: STD_LOGIC_VECTOR ( 4 downto 0);
  signal rdId_o: STD_LOGIC_VECTOR ( 4 downto 0) ;

begin

  uut: decoder port map ( instr_i       => instr_i,
                          isLoad_o      => isLoad_o,
                          isStore_o     => isStore_o,
                          isALUreg_o    => isALUreg_o,
                          isBranch_o    => isBranch_o,
                          isSYSTEM_o    => isSYSTEM_o,
                          isJAL_o       => isJAL_o,
                          isJALR_o      => isJALR_o,
                          isJALorJALR_o => isJALorJALR_o,
                          isAuipc_o     => isAuipc_o,
                          isLui_o       => isLui_o,
                          isCSRRS_o     => isCSRRS_o,
                          isEBreak_o    => isEBreak_o,
                          isByte_o      => isByte_o,
                          isHalf_o      => isHalf_o,
                          funct3_o      => funct3_o,
                          funct7_o      => funct7_o,
                          csrId_o       => csrId_o,
                          rs1_o         => rs1_o,
                          rs2_o         => rs2_o,
                          rdId_o        => rdId_o );

  stimulus: process
  begin
    -- add x28, x28, x29
    instr_i <= x"01de0e33";
    wait for 100 ns;
    assert isALUreg_o = '1' report "ADD instruction failed: isALUreg_o register" severity error;
    assert rs1_o = "11100" and rs2_o = "11101" and rdId_o = "11100" report "ADD instruction failed: rs1, rs2, or rdId" severity error;

    -- addi x28, x28, 546
    instr_i <= x"222e0e13";
    wait for 100 ns;
    assert isALUreg_o = '0' report "ADDI instruction failed: isALUreg_o immediat " severity error;
    assert rs1_o = "11100" and rdId_o = "11100" report "ADDI instruction failed: rs1 or rdId" severity error;

    -- lb x30, 1024(x0)
    instr_i <= x"40000f03";
    wait for 100 ns;
    assert isLoad_o = '1' report "LB instruction failed: isLoad_o" severity error;
    assert rs1_o = "00000" and rdId_o = "11110" report "LB instruction failed: rs1 or rdId" severity error;

    -- sw x29, 0(x0)
    instr_i <= x"01d02023";
    wait for 100 ns;
    assert isStore_o = '1' report "SW instruction failed: isStore_o" severity error;
    assert rs1_o = "00000" and rs2_o = "11101" report "SW instruction failed: rs1 or rs2" severity error;

    -- bge x28, x29, 0
    instr_i <= x"01de5063";
    wait for 100 ns;
    assert isBranch_o = '1' report "BGE instruction failed: isBranch_o" severity error;
    assert rs1_o = "11100" and rs2_o = "11101" report "BGE instruction failed: rs1 or rs2" severity error;

    wait;
  end process;

end bench;
