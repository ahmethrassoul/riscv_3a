library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity alu_tb is
end;

architecture bench of alu_tb is

  component alu
  Port ( 
     rs1_v             : in  STD_LOGIC_VECTOR (31 downto 0);
     rs2_v             : in  STD_LOGIC_VECTOR (31 downto 0);
     isALUreg          : in  STD_LOGIC;
     isBranch          : in  STD_LOGIC;
     isAluSubstraction : in  STD_LOGIC;
     func3             : in  STD_LOGIC_VECTOR ( 2 downto 0);
     imm_v             : in  STD_LOGIC_VECTOR (31 downto 0);
     aluOut_v          : out STD_LOGIC_VECTOR (31 downto 0);
     aluPlus_v         : out STD_LOGIC_VECTOR (31 downto 0);
     takeBranch        : out STD_LOGIC
   );
  end component;

  signal rs1_v: STD_LOGIC_VECTOR (31 downto 0);
  signal rs2_v: STD_LOGIC_VECTOR (31 downto 0);
  signal isALUreg: STD_LOGIC;
  signal isBranch: STD_LOGIC;
  signal isAluSubstraction: STD_LOGIC;
  signal func3: STD_LOGIC_VECTOR ( 2 downto 0);
  signal imm_v: STD_LOGIC_VECTOR (31 downto 0);
  signal aluOut_v: STD_LOGIC_VECTOR (31 downto 0);
  signal aluPlus_v: STD_LOGIC_VECTOR (31 downto 0);
  signal takeBranch: STD_LOGIC ;

begin

  uut: alu port map ( rs1_v             => rs1_v,
                      rs2_v             => rs2_v,
                      isALUreg          => isALUreg,
                      isBranch          => isBranch,
                      isAluSubstraction => isAluSubstraction,
                      func3             => func3,
                      imm_v             => imm_v,
                      aluOut_v          => aluOut_v,
                      aluPlus_v         => aluPlus_v,
                      takeBranch        => takeBranch );

  stimulus: process
  begin
  
    wait for 10 ns;
    rs1_v <= x"ABCDA088";
    rs2_v <= x"00000001";
    isALUreg <= '1';
    isBranch <= '0';
    isAluSubstraction <= '1';
    func3 <= "000"; -- add between register
    imm_v <= x"FFFFFFFF"; -- 4294967295

    wait for 20 ns;
    assert aluOut_v = x"ABCDA087" report "Subtraction failed: rs1 - rs2" severity error;

    rs1_v <= x"00000001";
    rs2_v <= x"00000001";
    isALUreg <= '0';
    isBranch <= '0';
    isAluSubstraction <= '0';
    func3 <= "000"; -- -- add between register and
    imm_v <= x"00000001";

    wait for 20 ns;
    assert aluOut_v = x"00000002" report "Addition failed: rs1 + imm" severity error;


    rs1_v <= "10000000000000000000000000000001"; -- 2147483649
    rs2_v <= "00111111111111111111111111111110"; -- 1073741822
    isALUreg <= '1';
    isBranch <= '0';
    isAluSubstraction <= '0';
    func3 <= "100";
    imm_v <= x"AFF6FFFF";

    wait for 20 ns;
    assert aluOut_v = "10111111111111111111111111111111" report "XOR failed: rs1 ^ rs2" severity error;

    rs1_v <= x"00000001";
    rs2_v <= x"00001000";
    isALUreg <= '1';
    isBranch <= '0';
    isAluSubstraction <= '0';
    func3 <= "110";
    imm_v <= x"FF666FFF";

    wait for 20 ns;
    assert aluOut_v = x"00001001" report "OR failed: rs1 | rs2" severity error;

    rs1_v <= x"00000001";
    rs2_v <= x"00001000";
    isALUreg <= '0';
    isBranch <= '0';
    isAluSubstraction <= '0';
    func3 <= "110";
    imm_v <= x"00010001";

    wait for 20 ns;
    assert aluOut_v = x"00010001" report "OR failed: rs1 | imm" severity error;

    rs1_v <= x"00000001";
    rs2_v <= x"00000004";
    isALUreg <= '1';
    isBranch <= '0';
    isAluSubstraction <= '1';
    func3 <= "001";
    imm_v <= x"AFF6FFFF";

    wait for 20 ns;
    assert aluOut_v = x"00000000" report "SLL failed: rs1 << rs2" severity error;

    rs1_v <= x"00000001";
    rs2_v <= x"00000004";
    isALUreg <= '0';
    isBranch <= '0';
    isAluSubstraction <= '1';
    func3 <= "001";
    imm_v <= x"00000008";

    wait for 20 ns;
    assert aluOut_v = x"00000100" report "SLL failed: rs1 << imm" severity error;

    rs1_v <= x"01100001";
    rs2_v <= x"00000004";
    isALUreg <= '1';
    isBranch <= '0';
    isAluSubstraction <= '0';
    func3 <= "101";
    imm_v <= x"00000008";

    wait for 20 ns;
    assert aluOut_v = x"00000000" report "SRL failed: rs1 >> rs2" severity error;

    rs1_v <= x"F1100001";
    rs2_v <= x"00000004";
    isALUreg <= '1';
    isBranch <= '0';
    isAluSubstraction <= '1';
    func3 <= "101";
    imm_v <= x"00000008";

    wait for 20 ns;
    assert aluOut_v = x"0F110000" report "SRA failed: rs1 >> rs2" severity error;

    rs1_v <= x"F1100001";
    rs2_v <= x"00000004";
    isALUreg <= '0';
    isBranch <= '0';
    isAluSubstraction <= '0';
    func3 <= "101";
    imm_v <= x"00000008";

    wait for 20 ns;
    assert aluOut_v = x"00111000" report "SRL failed: rs1 >> imm" severity error;

    rs1_v <= x"F1100001";
    rs2_v <= x"00000004";
    isALUreg <= '1';
    isBranch <= '1';
    isAluSubstraction <= '0';
    func3 <= "000";
    imm_v <= x"00000008";

    wait for 20 ns;
    assert takeBranch = '0' report "Branch failed: rs1 == rs2" severity error;

    rs1_v <= x"F1100001";
    rs2_v <= x"00000004";
    isALUreg <= '1';
    isBranch <= '1';
    isAluSubstraction <= '0';
    func3 <= "001";
    imm_v <= x"00000008";

    wait for 20 ns;
    assert takeBranch = '0' report "Branch failed: rs1 != rs2" severity error;

    rs1_v <= x"F1100001";
    rs2_v <= x"00000004";
    isALUreg <= '1';
    isBranch <= '1';
    isAluSubstraction <= '0';
    func3 <= "100";
    imm_v <= x"00000008";

    wait for 20 ns;
    assert takeBranch = '1' report "Branch failed: rs1 < rs2" severity error;

    rs1_v <= x"F1100001";
    rs2_v <= x"00000004";
    isALUreg <= '1';
    isBranch <= '1';
    isAluSubstraction <= '0';
    func3 <= "101";
    imm_v <= x"00000008";

    wait for 20 ns;
    assert takeBranch = '1' report "Branch failed: rs1 >= rs2" severity error;

    rs1_v <= x"F1100001";
    rs2_v <= x"00000004";
    isALUreg <= '0';
    isBranch <= '1';
    isAluSubstraction <= '0';
    func3 <= "000";
    imm_v <= x"00000008";

    wait for 20 ns;
    assert takeBranch = '0' report "Branch failed: rs1 == imm" severity error;

    rs1_v <= x"F1100001";
    rs2_v <= x"00000004";
    isALUreg <= '0';
    isBranch <= '1';
    isAluSubstraction <= '0';
    func3 <= "001";
    imm_v <= x"00000008";

    wait for 20 ns;
    assert takeBranch = '0' report "Branch failed: rs1 != imm" severity error;

    rs1_v <= x"F1100001";
    rs2_v <= x"00000004";
    isALUreg <= '0';
    isBranch <= '1';
    isAluSubstraction <= '0';
    func3 <= "100";
    imm_v <= x"00000008";

    wait for 20 ns;
    assert takeBranch = '1' report "Branch failed: rs1 < imm" severity error;

    rs1_v <= x"F1100001";
    rs2_v <= x"00000004";
    isALUreg <= '0';
    isBranch <= '1';
    isAluSubstraction <= '0';
    func3 <= "101";
    imm_v <= x"FFFF0000";

    wait for 20 ns;
    assert takeBranch = '1' report "Branch failed: rs1 >= imm" severity error;

    wait;
  end process;

end bench;
