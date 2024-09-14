library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity riscv_soc is
GENERIC(
    file_prog  : STRING  := "../firmware/PROGROM.mem";
    file_data  : STRING  := "../firmware/DATARAM.mem";
    uart_tx_en : INTEGER := 1;
    uart_rx_en : INTEGER := 0;
    termial_en : INTEGER := 1
); 
Port ( 
   CLK100MHZ    : in  STD_LOGIC;
   RESET        : in  STD_LOGIC;
   LED 		    : out STD_LOGIC_VECTOR (15 downto 0);
   UART_RXD_OUT : out STD_LOGIC;
   UART_TXD_IN  : in  STD_LOGIC
);
end riscv_soc;

architecture arch of riscv_soc is

    COMPONENT riscv IS
    GENERIC(
        file_prog : STRING  := "../../soft/PROGROM.hex32";
        file_data : STRING  := "../../soft/DATARAM.hex32" 
    ); 
    PORT ( 
       CLK           : in  STD_LOGIC;
       resetn        : in  STD_LOGIC;
       IO_mem_addr   : out STD_LOGIC_VECTOR (31 downto 0);
       IO_mem_rdata  : in  STD_LOGIC_VECTOR (31 downto 0);
       IO_mem_wdata  : out STD_LOGIC_VECTOR (31 downto 0);
       IO_mem_rd     : out STD_LOGIC;
       IO_mem_wr     : out STD_LOGIC
    );
    END COMPONENT;
    
    COMPONENT uart_send is
        Generic ( fifo_size             : integer := 64;
                  fifo_almost           : integer := 60;
                  drop_oldest_when_full : boolean := False;
                  asynch_fifo_full      : boolean := True);
        Port ( clk_100MHz : in  STD_LOGIC;
               reset      : in  STD_LOGIC;
               dat_en     : in  STD_LOGIC;
               dat        : in  STD_LOGIC_VECTOR (7 downto 0);
               TX         : out STD_LOGIC;
               fifo_empty : out STD_LOGIC;
               fifo_afull : out STD_LOGIC;
               fifo_full  : out STD_LOGIC);
    end COMPONENT;

    COMPONENT UART_recv is
       Port ( clk    : in  STD_LOGIC;
              reset  : in  STD_LOGIC;
              rx     : in  STD_LOGIC;
              dat    : out STD_LOGIC_VECTOR (7 downto 0);
              dat_en : out STD_LOGIC);
    end COMPONENT;
        
-- synthesis translate_off
    COMPONENT observer is
    Port (
        clk    : in  STD_LOGIC;
        reset  : in  STD_LOGIC;
        dat_en : in  STD_LOGIC;
        dat    : in  STD_LOGIC_VECTOR (7 downto 0)
    );
    end COMPONENT;
-- synthesis translate_on

    SIGNAL resetn_cpu : STD_LOGIC;
   
    SIGNAL IO_mem_addr  : STD_LOGIC_VECTOR (31 downto 0);
    SIGNAL IO_mem_rdata : STD_LOGIC_VECTOR (31 downto 0);
    SIGNAL IO_mem_wdata : STD_LOGIC_VECTOR (31 downto 0);
    SIGNAL IO_mem_wr    : STD_LOGIC;
    SIGNAL IO_mem_rd    : STD_LOGIC;

    SIGNAL IO_wordaddr  : STD_LOGIC_VECTOR (13 downto 0);

    SIGNAL uart_valid : STD_LOGIC;
    SIGNAL uart_ready : STD_LOGIC;
    SIGNAL uart_full  : STD_LOGIC;

    CONSTANT IO_LEDS_bit       : INTEGER := 0;  -- W four leds
    CONSTANT IO_UART_DAT_bit   : INTEGER := 1;  -- W data to send (8 bits) 
    CONSTANT IO_UART_CNTL_bit  : INTEGER := 2;  -- R status. bit 9: busy sending
    CONSTANT IO_rcvUART        : INTEGER := 3;  -- W data to send (8 bits) 

	SIGNAL   input_data        : UNSIGNED (15 downto 0) := (others=>'0');
	SIGNAL   output_data       : UNSIGNED (15 downto 0) := (others=>'0');

    SIGNAL data_to_uart_en : STD_LOGIC;
    SIGNAL data_to_uart    : STD_LOGIC_VECTOR (7 downto 0);
    SIGNAL uart_for_debug  : STD_LOGIC_VECTOR (7 downto 0);

    SIGNAL data_from_uart_en : STD_LOGIC;
    SIGNAL data_from_uart    : STD_LOGIC_VECTOR (7 downto 0);
    SIGNAL data_from_uart_s  : STD_LOGIC;
    SIGNAL data_from_uart_b  : STD_LOGIC_VECTOR (7 downto 0);

	SIGNAL   leds_buffer                    : STD_LOGIC_VECTOR (15 downto 0);

begin

   ---------------------------------------------------------------------------------------------------

    resetn_cpu <= not reset;

   CPU : riscv
    GENERIC MAP(
        file_prog => file_prog, 
        file_data => file_data
    )
   PORT MAP(
      clk          => CLK100MHZ,
      resetn       => resetn_cpu,
      IO_mem_addr  => IO_mem_addr,
      IO_mem_rdata => IO_mem_rdata,
      IO_mem_wdata => IO_mem_wdata,
      IO_mem_rd    => IO_mem_rd,
      IO_mem_wr    => IO_mem_wr
   );

   ---------------------------------------------------------------------------------------------------

   IO_wordaddr <= IO_mem_addr(15 downto 2);

   ---------------------------------------------------------------------------------------------------

   --
   -- Memory-mapped IO in IO page, 1-hot addressing in word address.   
   --

   process(CLK100MHZ)
   begin   
      if rising_edge(CLK100MHZ) then
         IF RESET = '1' THEN
            leds_buffer <= x"1FF8";
         ELSIF IO_mem_wr = '1' and IO_wordaddr(IO_LEDS_bit) = '1' then
            leds_buffer <= IO_mem_wdata(15 downto 0);
         end if;
      end if;
   end process;

   LED <= leds_buffer;

   ---------------------------------------------------------------------------------------------------

   uart_valid      <= IO_mem_wr AND IO_wordaddr(IO_UART_DAT_bit);
   uart_ready      <= NOT uart_full;
   data_to_uart_en <= uart_valid;
   data_to_uart    <= IO_mem_wdata(7 downto 0) WHEN uart_valid = '1' ELSE x"00";


-- synthesis translate_off
   process(CLK100MHZ)
   begin   
      if rising_edge(CLK100MHZ) then
        IF RESET = '1' THEN
           uart_for_debug <= x"00";
        ELSIF data_to_uart_en = '1' THEN 
           uart_for_debug <= data_to_uart;
        END IF;
      end if;
    end process;
-- synthesis translate_on


   uart_snd : if uart_tx_en = 1 generate
      UART_s_custom : uart_send
         Generic MAP(
            fifo_size        => 2048,
            fifo_almost      => 2000,
            asynch_fifo_full => True
         )
         PORT MAP(
            clk_100MHz => CLK100MHZ,
            reset      => reset,
            dat_en     => data_to_uart_en,
            dat        => data_to_uart,
            TX         => UART_RXD_OUT,
            fifo_empty => open,
            fifo_afull => uart_full,
            fifo_full  => open);
   else generate
      data_to_uart_en  <= '0';
      data_to_uart     <= "00000000";
      uart_full        <= '0';
   end generate;
   
   ---------------------------------------------------------
   
   UART_rcv : if uart_rx_en = 1 generate
      UART_r_custom : UART_recv
         PORT MAP(
            clk        => CLK100MHZ,
            reset      => reset,
            rx         => UART_TXD_IN,
            dat        => data_from_uart,
            dat_en     => data_from_uart_en
         );
   else generate
      data_from_uart_en <= '0';
      data_from_uart    <= "00000000";
   end generate;
      

   process(CLK100MHZ)
   begin   
      if rising_edge(CLK100MHZ) then
        IF RESET = '1' THEN
           data_from_uart_b <= x"00";
           data_from_uart_s <= '0'; 

        ELSIF data_from_uart_en = '1' THEN 
           data_from_uart_b <= data_from_uart;
           data_from_uart_s <= data_from_uart_en; 

        ELSIF (IO_wordaddr(IO_rcvUART) = '1') and (IO_mem_rd = '1') THEN 
           data_from_uart_b <= x"00";
           data_from_uart_s <= '0'; 
        END IF;
      end if;
    end process;

	----------------------------------------------------------
	------                                             -------
	----------------------------------------------------------

-- synthesis translate_off
   terminal : observer
   PORT MAP(
               clk        => CLK100MHZ,
               reset      => reset,
               dat_en     => data_to_uart_en,
               dat        => data_to_uart);
-- synthesis translate_on

	----------------------------------------------------------
	------                LED Control                  -------
	----------------------------------------------------------


    PROCESS(CLK100MHZ)
    BEGIN
        IF CLK100MHZ'event AND CLK100MHZ = '1' THEN
            IF RESET = '1' THEN
                output_data <= (others=>'0');
            ELSIF uart_valid = '1' THEN
                output_data <= output_data + TO_UNSIGNED(1, 1);
            END IF;
        END IF;
    END PROCESS;


	----------------------------------------------------------
	------                LED Control                  -------
	----------------------------------------------------------

   IO_mem_rdata <= x"0000" & leds_buffer                                     when IO_wordaddr(IO_LEDS_bit)      = '1'
              else x"0000" & "0000000" & (NOT uart_ready) & "00000000"       when IO_wordaddr(IO_UART_CNTL_bit) = '1'
              else x"0000" & "0000000" & data_from_uart_s & data_from_uart_b when IO_wordaddr(IO_rcvUART)       = '1'
              else x"00000000";
   
   ---------------------------------------------------------------------------------------------------


end arch;

