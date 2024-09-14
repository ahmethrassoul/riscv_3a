-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity mem_store_tb is
end;

architecture bench of mem_store_tb is

  component mem_store 
      Port ( 
          ADDR_W     : IN  STD_LOGIC_VECTOR( 1 DOWNTO 0);
          DATA_W     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
          is_byte    : IN  STD_LOGIC;
          is_half    : IN  STD_LOGIC;
          data_mask  : OUT STD_LOGIC_VECTOR( 3 DOWNTO 0);
          data_value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
       );
  end component;

  signal ADDR_W: STD_LOGIC_VECTOR( 1 DOWNTO 0);
  signal DATA_W: STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal is_byte: STD_LOGIC;
  signal is_half: STD_LOGIC;
  signal data_mask: STD_LOGIC_VECTOR( 3 DOWNTO 0);
  signal data_value: STD_LOGIC_VECTOR(31 DOWNTO 0) ;

begin

  uut: mem_store port map ( ADDR_W     => ADDR_W,
                            DATA_W     => DATA_W,
                            is_byte    => is_byte,
                            is_half    => is_half,
                            data_mask  => data_mask,
                            data_value => data_value );

  stimulus: process
  begin
  
    wait for 10 ns;
    ADDR_W <= "10";
    DATA_W <= x"AA0000AF";
    is_byte <= '1';
    is_half <= '0';


    wait for 10 ns;
    ADDR_W <= "11";
    DATA_W <= x"AA0000AF";
    is_byte <= '1';
    is_half <= '0';


    wait for 10 ns;
    ADDR_W <= "10";
    DATA_W <= x"FADB0000";
    is_byte <= '0';
    is_half <= '1';


    wait for 10 ns;
    ADDR_W <= "10";
    DATA_W <= x"FADB0A00";
    is_byte <= '0';
    is_half <= '1';


    wait for 10 ns;
    ADDR_W <= "10";
    DATA_W <= x"A00AF0CD";
    is_byte <= '0';
    is_half <= '0';



    -- wait for 10 ns;
    -- ADDR_W <= "10";
    -- DATA_W <= x"00000000";
    -- is_byte <= '1';
    -- is_half <= '0';


    -- wait for 10 ns;
    -- ADDR_W <= "10";
    -- DATA_W <= x"00000000";
    -- is_byte <= '1';
    -- is_half <= '0';


    -- wait for 10 ns;
    -- ADDR_W <= "10";
    -- DATA_W <= x"00000000";
    -- is_byte <= '1';
    -- is_half <= '0';

    wait;
  end process;


end;
