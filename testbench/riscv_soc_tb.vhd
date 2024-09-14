-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity riscv_soc_tb is
end;

architecture bench of riscv_soc_tb is

  component riscv_soc
    GENERIC(
         file_prog  : STRING  := "../firmware/PROGROM.mem";
         file_data  : STRING  := "../firmware/DATARAM.mem";
         uart_tx_en : INTEGER := 1;
         uart_rx_en : INTEGER := 1;
         termial_en : INTEGER := 0
    ); 
  Port ( 
     CLK100MHZ    : in  STD_LOGIC;
     RESET        : in  STD_LOGIC;
     LED 		   : out STD_LOGIC_VECTOR (15 downto 0);
     UART_RXD_OUT : out STD_LOGIC;
     UART_TXD_IN  : in  STD_LOGIC
  );
  end component;

  signal CLK100MHZ      : STD_LOGIC;
  signal RESET          : STD_LOGIC;
  signal LED            : STD_LOGIC_VECTOR (15 downto 0);
  signal UART_RXD_OUT   : STD_LOGIC ; 

  constant clock_period : time := 10 ns;
  signal stop_the_clock : boolean;

begin


   ------------------------------------------------------------------------------------


   uut: riscv_soc
    GENERIC MAP(
         file_prog  => "../firmware/PROGROM.mem", 
         file_data  => "../firmware/DATARAM.mem",
         uart_tx_en => 1,
         uart_rx_en => 0,
         termial_en => 1
    )
    port map (
        CLK100MHZ    => CLK100MHZ,
        RESET        => RESET,
        LED          => LED,
        UART_RXD_OUT => UART_RXD_OUT,
        UART_TXD_IN  => '0'
    );


   ------------------------------------------------------------------------------------


   clocking: process
   begin
      while not stop_the_clock loop
         CLK100MHZ <= '0', '1' after clock_period / 2;
         wait for clock_period;
      end loop;
      wait;
   end process;


   ------------------------------------------------------------------------------------


   stimulus: process
   begin
      -- Put initialisation code here
      RESET <= '1';
      wait for 4 * clock_period;

      RESET <= '0';
      wait for clock_period;

      -- Put test bench stimulus code here

      --stop_the_clock <= true;
      wait;
   end process;

end;
