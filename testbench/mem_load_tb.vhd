-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity mem_load_tb is
end;

architecture bench of mem_load_tb is

  component mem_load 
      Port ( 
          ADDR_R      : IN  STD_LOGIC_VECTOR( 1 DOWNTO 0);
          DATA_R      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
          is_byte     : IN  STD_LOGIC;
          is_half     : IN  STD_LOGIC;
          is_sign_ext : IN  STD_LOGIC;
          data_value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
       );
  end component;

  signal ADDR_R: STD_LOGIC_VECTOR( 1 DOWNTO 0);
  signal DATA_R: STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal is_byte: STD_LOGIC;
  signal is_half: STD_LOGIC;
  signal is_sign_ext: STD_LOGIC;
  signal data_value: STD_LOGIC_VECTOR(31 DOWNTO 0) ;

begin

  uut: mem_load port map ( ADDR_R      => ADDR_R,
                           DATA_R      => DATA_R,
                           is_byte     => is_byte,
                           is_half     => is_half,
                           is_sign_ext => is_sign_ext,
                           data_value  => data_value );

  stimulus: process
  begin
    
    wait for 10 ns;
    ADDR_R <= "01";
    DATA_R <= x"DF0000A3";
    is_byte <= '1';
    is_half <= '0';
    is_sign_ext <= '0';

    wait for 10 ns;
    ADDR_R <= "10";
    DATA_R <= x"0000CF00";
    is_byte <= '1';
    is_half <= '0';
    is_sign_ext <= '1';

    wait for 10 ns;
    ADDR_R <= "00";
    DATA_R <= x"A000FFA7";
    is_byte <= '0';
    is_half <= '1';
    is_sign_ext <= '1';


    wait for 10 ns;
    ADDR_R <= "00";
    DATA_R <= x"A000FFA7";
    is_byte <= '0';
    is_half <= '1';
    is_sign_ext <= '0';


    wait for 10 ns;
    ADDR_R <= "10";
    DATA_R <= x"CCDE000A";
    is_byte <= '0';
    is_half <= '1';
    is_sign_ext <= '0';


    wait for 10 ns;
    ADDR_R <= "10";
    DATA_R <= x"CCDE000A";
    is_byte <= '0';
    is_half <= '1';
    is_sign_ext <= '1';


    wait for 10 ns;
    ADDR_R <= "00";
    DATA_R <= x"A000FFA7";
    is_byte <= '0';
    is_half <= '0';
    is_sign_ext <= '1';

    wait for 10 ns;
    ADDR_R <= "00";
    DATA_R <= x"A000FFA7";
    is_byte <= '0';
    is_half <= '0';
    is_sign_ext <= '0';


    wait for 10 ns;
    ADDR_R <= "00";
    DATA_R <= x"A000CFA7";
    is_byte <= '0';
    is_half <= '1';
    is_sign_ext <= '1';

    wait;
  end process;


end;
