-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity immediate_tb is
end;

architecture bench of immediate_tb is

  component immediate
  Port ( 
     INSTR    : in  STD_LOGIC_VECTOR (31 downto 0);
     isStore  : in  STD_LOGIC;
     isLoad   : in  STD_LOGIC;
     isBranch : in  STD_LOGIC;
     isJAL    : in  STD_LOGIC;
     isAuipc  : in  STD_LOGIC;
     isLui    : in  STD_LOGIC;
     imm      : out STD_LOGIC_VECTOR (31 downto 0)
   );
  end component;

  signal INSTR: STD_LOGIC_VECTOR (31 downto 0);
  signal isStore: STD_LOGIC;
  signal isLoad: STD_LOGIC;
  signal isBranch: STD_LOGIC;
  signal isJAL: STD_LOGIC;
  signal isAuipc: STD_LOGIC;
  signal isLui: STD_LOGIC;
  signal imm: STD_LOGIC_VECTOR (31 downto 0) ;

begin

  uut: immediate port map ( INSTR    => INSTR,
                            isStore  => isStore,
                            isLoad   => isLoad,
                            isBranch => isBranch,
                            isJAL    => isJAL,
                            isAuipc  => isAuipc,
                            isLui    => isLui,
                            imm      => imm );

  stimulus: process
  begin
    
    isStore <= '0';
    isLoad <= '0';
    isBranch <= '0';
    isJAL <= '0';
    isAuipc <= '0';
    isLui <= '0';
    wait for 100 ns;
    -- beq x28, x29, 512
    INSTR <= x"21de0063";
    isBranch <= '1'; -- the instr above is a banch
    -- imm should be 512
    wait for 100 ns;

    isBranch <= '0';

    wait for 10 ns;
    -- sb x28, 1024(x0)
    INSTR <= x"41c00023";
    isStore <= '1';
    -- imm should be 1024
    wait for 100 ns;
    isStore <= '0';
    -- lui x28, 8132
    INSTR <= x"01fc4e37";
    isLUI <= '1';
    -- imm should be 8132*2^12 = 33 308 672
    wait for 100 ns;
    isLUI <= '0';


    -- lb x26, -15(x28)
    INSTR <= x"ff1e0d03";
    isLoad <= '1';
    wait for 100 ns;
    -- immediate should be -15 
    isLoad <= '0';


    -- jal x25, -4570
    INSTR <= x"e27fecef";
    isJAL <= '1';
    wait for 100 ns;
    -- immediate should be -4570
    isJAL <= '0';
  wait for 100 ns;


    -- addi x14, x0, 72
    INSTR <= x"04800713";
    wait for 100 ns;
    -- immediate should be 72
    wait for 100 ns;


    -- lui x15, x15, 1024
    INSTR <= x"004007b7";
    wait for 100 ns;
    -- immediate should be 72
    wait for 100 ns;



    wait;
  end process;


end;
