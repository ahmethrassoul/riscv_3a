library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity riscv_soc_nexys_a7 is
GENERIC(
    file_prog  : STRING  := "../firmware/PROGROM.mem";
    file_data  : STRING  := "../firmware/DATARAM.mem";
    uart_tx_en : INTEGER := 1;
    uart_rx_en : INTEGER := 0;
    termial_en : INTEGER := 1
); 
Port ( 
   CLK_100MHz    : in  STD_LOGIC; 
   RESET_i       : in  STD_LOGIC;
   
   LED 		     : out STD_LOGIC_VECTOR (15 downto 0);

   JA_PMOD_CS    : out STD_LOGIC;
   JA_PMOD_MOSI  : out STD_LOGIC;
   JA_PMOD_SCK   : out STD_LOGIC;
   JA_PMOD_DC    : out STD_LOGIC;
   JA_PMOD_RES   : out STD_LOGIC;
   JA_PMOD_VCCEN : out STD_LOGIC;
   JA_PMOD_EN    : out STD_LOGIC;

   led0_b        : out STD_LOGIC;
   led0_g        : out STD_LOGIC;
   led0_r        : out STD_LOGIC;

   led1_b        : out STD_LOGIC;
   led1_g        : out STD_LOGIC;
   led1_r        : out STD_LOGIC;

   UART_RXD_OUT  : out STD_LOGIC;
   UART_TXD_IN   : in  STD_LOGIC
);
end riscv_soc_nexys_a7; 


architecture arch of riscv_soc_nexys_a7 is

    CONSTANT OLED_BPP  : INTEGER := 16;
    CONSTANT rom_size  : integer := 16; -- 2^16 =  64 ko
    CONSTANT ram_size  : integer := 16; -- 2^16 =  64 ko
    CONSTANT mem_size  : integer := 17; -- 2^17 = 128 ko
  
   ---------------------------------------------------------------------------------------------------

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
  
   ---------------------------------------------------------------------------------------------------

   SIGNAL im_addr     : STD_LOGIC_VECTOR (31 downto 0);
   SIGNAL im_rdata    : STD_LOGIC_VECTOR (31 downto 0);

   SIGNAL dm_addr     : STD_LOGIC_VECTOR (31 downto 0);
   SIGNAL dm_rdata    : STD_LOGIC_VECTOR (31 downto 0);
   SIGNAL dm_wdata    : STD_LOGIC_VECTOR (31 downto 0);
   SIGNAL dm_wmask    : STD_LOGIC_VECTOR ( 3 downto 0);
   SIGNAL dm_wmask_v  : STD_LOGIC_VECTOR ( 3 downto 0);
   SIGNAL dm_rd       : STD_LOGIC;
   SIGNAL dm_wr       : STD_LOGIC;

    SIGNAL RESET      : STD_LOGIC;
    SIGNAL RESETN     : STD_LOGIC;
   
    SIGNAL IO_wordaddr  : STD_LOGIC_VECTOR (13 downto 0);

    SIGNAL led_r : STD_LOGIC;
    SIGNAL led_g : STD_LOGIC;
    SIGNAL led_b : STD_LOGIC;

    SIGNAL uart_ready : STD_LOGIC;
    SIGNAL uart_full  : STD_LOGIC;

    SIGNAL data_to_spi         : STD_LOGIC_VECTOR (7 downto 0);
    SIGNAL data_from_spi_en    : STD_LOGIC;
    SIGNAL data_from_spi       : STD_LOGIC_VECTOR (7 downto 0);
    SIGNAL data_from_spi_busy  : STD_LOGIC;

    SIGNAL data_from_oled_rgb  : STD_LOGIC_VECTOR (OLED_BPP-1 downto 0);

    SIGNAL data_to_uart         : STD_LOGIC_VECTOR (7 downto 0);
    SIGNAL uart_for_debug       : STD_LOGIC_VECTOR (7 downto 0);

    SIGNAL data_from_uart_en    : STD_LOGIC;
    SIGNAL data_from_uart       : STD_LOGIC_VECTOR (7 downto 0);
    SIGNAL data_from_uart_s     : STD_LOGIC;
    SIGNAL data_from_uart_b     : STD_LOGIC_VECTOR (7 downto 0);

	SIGNAL   leds_buffer        : STD_LOGIC_VECTOR (15 downto 0);

	SIGNAL data_to_ram_en       : STD_LOGIC;
	SIGNAL data_to_leds_en      : STD_LOGIC;
	SIGNAL data_to_switch_en    : STD_LOGIC;
	SIGNAL data_to_uart_en      : STD_LOGIC;
	SIGNAL data_to_spi_en       : STD_LOGIC;
	SIGNAL data_to_vga_en       : STD_LOGIC;
	SIGNAL data_to_sdcart_en    : STD_LOGIC;
	SIGNAL data_to_ethernet_en  : STD_LOGIC;
	SIGNAL data_to_oled_scr_en  : STD_LOGIC;
	SIGNAL data_to_timer_en     : STD_LOGIC;
	SIGNAL data_to_ledrgb_en    : STD_LOGIC;
	SIGNAL data_to_soc_id_en    : STD_LOGIC;

	SIGNAL data_to_ram_wen       : STD_LOGIC;
	SIGNAL data_to_leds_wen      : STD_LOGIC;
	SIGNAL data_to_switch_wen    : STD_LOGIC;
	SIGNAL data_to_uart_wen      : STD_LOGIC;
	SIGNAL data_to_spi_wen       : STD_LOGIC;
	SIGNAL data_to_vga_wen       : STD_LOGIC;
	SIGNAL data_to_sdcart_wen    : STD_LOGIC;
	SIGNAL data_to_ethernet_wen  : STD_LOGIC;
	SIGNAL data_to_oled_scr_wen  : STD_LOGIC;
	SIGNAL data_to_timer_wen     : STD_LOGIC;
	SIGNAL data_to_ledrgb_wen    : STD_LOGIC;

    SIGNAL d32b_from_leds       : STD_LOGIC_VECTOR (31 downto 0);
    SIGNAL d32b_from_swit       : STD_LOGIC_VECTOR (31 downto 0);
    SIGNAL d32b_from_uart       : STD_LOGIC_VECTOR (31 downto 0);
    SIGNAL d32b_from_spi        : STD_LOGIC_VECTOR (31 downto 0);
    SIGNAL d32b_from_vga_buff   : STD_LOGIC_VECTOR (31 downto 0);
    SIGNAL d32b_from_sd_card    : STD_LOGIC_VECTOR (31 downto 0);
    SIGNAL d32b_from_ethernet   : STD_LOGIC_VECTOR (31 downto 0);
    SIGNAL d32b_from_oled_rgb   : STD_LOGIC_VECTOR (31 downto 0);
    SIGNAL d32b_from_timer      : STD_LOGIC_VECTOR (31 downto 0);
    SIGNAL d32b_from_led_rgb    : STD_LOGIC_VECTOR (31 downto 0); 
	SIGNAL d32b_from_soc_id     : STD_LOGIC_VECTOR (31 downto 0);



    attribute syn_keep    : boolean;
    attribute mark_debug  : string;
    attribute syn_keep   of dm_addr: signal is true;
    attribute mark_debug of dm_addr: signal is "true";

    attribute syn_keep   of dm_wr : signal is true;
    attribute mark_debug of dm_wr : signal is "true";

    attribute syn_keep   of dm_rd: signal is true;
    attribute mark_debug of dm_rd: signal is "true";

    attribute syn_keep   of data_to_oled_scr_en: signal is true;
    attribute mark_debug of data_to_oled_scr_en: signal is "true";

    attribute syn_keep   of data_to_timer_en: signal is true;
    attribute mark_debug of data_to_timer_en: signal is "true";

    attribute syn_keep   of data_to_timer_wen: signal is true;
    attribute mark_debug of data_to_timer_wen: signal is "true";

    attribute syn_keep   of d32b_from_timer: signal is true;
    attribute mark_debug of d32b_from_timer: signal is "true";

    attribute syn_keep   of data_to_ledrgb_wen: signal is true;
    attribute mark_debug of data_to_ledrgb_wen: signal is "true";

    attribute syn_keep   of dm_wdata: signal is true;
    attribute mark_debug of dm_wdata: signal is "true";
    
    attribute syn_keep   of dm_rdata: signal is true;
    attribute mark_debug of dm_rdata: signal is "true";

begin

   -- 31   27   23   19    15   11    7    3  0
   -- 0000 0000 0000 0000  0000 0000  0000 0000 ROM      (0x00010000) -- 64 bytes max.
   -- 0000 0000 0000 0001  0000 0000  0000 0000 RAM      (0x00010000) -- 64 bytes max.
   -- 0000 0100 0000 0000  0000 0000  0000 0000 LEDS     (0x04000000)
   -- 0000 0101 0000 0000  0000 0000  0000 0000 SWITCH   (0x05000000)
   -- 0000 1010 0000 0000  0000 0000  0000 0000 UART     (0x06000000)
   -- 0000 0011 0000 0000  0000 0000  0000 0000 OLED SPI (0x07000000)
   -- 0000 0100 0000 0000  0000 0000  0000 0000 VGA      (0x08000000)
   -- 0000 0101 0000 0000  0000 0000  0000 0000 SD card  (0x09000000)
   -- 0000 0110 0000 0000  0000 0000  0000 0000 Ethernet (0x0A000000)
   -- 0000 0111 0000 0000  0000 0000  0000 0000 oled-scr (0x0B000000)
   -- 0000 1000 0000 0000  0000 0000  0000 0000 timer    (0x0C000000)
   -- 0000 1001 0000 0000  0000 0000  0000 0000 RGB-LED  (0x0D000000)

   data_to_ram_en       <= '1' WHEN dm_addr(27 downto 24) = "0000" else '0';
   data_to_leds_en      <= '1' WHEN dm_addr(27 downto 24) = "0100" else '0';
   data_to_switch_en    <= '1' WHEN dm_addr(27 downto 24) = "0101" else '0';
   data_to_uart_en      <= '1' WHEN dm_addr(27 downto 24) = "0110" else '0'; -- 0x06
   data_to_spi_en       <= '1' WHEN dm_addr(27 downto 24) = "0111" else '0'; -- 0x07
   data_to_vga_en       <= '1' WHEN dm_addr(27 downto 24) = "1000" else '0'; -- 0x08
   data_to_sdcart_en    <= '1' WHEN dm_addr(27 downto 24) = "1001" else '0'; -- 0x09
   data_to_ethernet_en  <= '1' WHEN dm_addr(27 downto 24) = "1010" else '0'; -- 0x0A
   data_to_oled_scr_en  <= '1' WHEN dm_addr(27 downto 24) = "1011" else '0'; -- 0x0B
   data_to_timer_en     <= '1' WHEN dm_addr(27 downto 24) = "1100" else '0'; -- 0x0C
   data_to_ledrgb_en    <= '1' WHEN dm_addr(27 downto 24) = "1101" else '0'; -- 0x0D
   data_to_soc_id_en    <= '1' WHEN dm_addr(27 downto 24) = "1110" else '0'; -- 0x0E

   data_to_ram_wen      <= data_to_ram_en      and dm_wr;
   data_to_leds_wen     <= data_to_leds_en     and dm_wr;
   data_to_switch_wen   <= data_to_switch_en   and dm_wr;
   data_to_uart_wen     <= data_to_uart_en     and dm_wr;
   data_to_spi_wen      <= data_to_spi_en      and dm_wr;
   data_to_vga_wen      <= data_to_vga_en      and dm_wr;
   data_to_sdcart_wen   <= data_to_sdcart_en   and dm_wr;
   data_to_ethernet_wen <= data_to_ethernet_en and dm_wr;
   data_to_oled_scr_wen <= data_to_oled_scr_en and dm_wr;
   data_to_timer_wen    <= data_to_timer_en    and dm_wr;
   data_to_ledrgb_wen   <= data_to_ledrgb_en   and dm_wr;

   ---------------------------------------------------------------------------------------------------

   time_ctrl : ENTITY work.timer_ctrl
   PORT MAP(
        clock     => CLK_100MHz,
        reset     => RESET,
        addr_lsb  => dm_addr(3 downto 0),
        data_i    => dm_wdata,
        data_o    => d32b_from_timer,
        write_en  => data_to_timer_wen
   );

   ---------------------------------------------------------------------------------------------------

   led_rgb_1 : ENTITY work.led_rgb_ctrl
   GENERIC MAP( light_v => '1' )
   PORT MAP(
        clock     => CLK_100MHz,
        reset     => RESET,
        data_i    => dm_wdata,
        data_o    => d32b_from_led_rgb,
        write_en  => data_to_ledrgb_wen,
        led_r_o   => led_r,
        led_g_o   => led_g,
        led_b_o   => led_b
   );

   led0_r <= led_r;
   led0_g <= led_g;
   led0_b <= led_b;

   led1_r <= led_r;
   led1_g <= led_g;
   led1_b <= led_b;

   ---------------------------------------------------------------------------------------------------

   PROCESS(CLK_100MHz)
   BEGIN
      if rising_edge(CLK_100MHZ) then
         RESET  <=     RESET_i;
         RESETN <= NOT RESET_i;
      END IF;
   END PROCESS;

   ---------------------------------------------------------------------------------------------------

   CPU : riscv
    GENERIC MAP(
        file_prog => file_prog, 
        file_data => file_data
    )
   PORT MAP(
      clk          => CLK_100MHZ,
      resetn       => RESETN,
      IO_mem_addr  => dm_addr,
      IO_mem_rdata => dm_rdata,
      IO_mem_wdata => dm_wdata,
      IO_mem_rd    => dm_rd,
      IO_mem_wr    => dm_wr
   );

   ---------------------------------------------------------------------------------------------------

   IO_wordaddr <= dm_addr(15 downto 2);

   ---------------------------------------------------------------------------------------------------

   process(CLK_100MHZ)
   begin   
      if rising_edge(CLK_100MHZ) then
         IF RESET = '1' THEN
            leds_buffer <= (others => '0');
         ELSIF data_to_leds_wen = '1' then
            leds_buffer <= dm_wdata(15 downto 0);
         end if;
      end if;
   end process;

   LED <= leds_buffer when RESET = '0' else x"5555";

   ---------------------------------------------------------------------------------------------------

   uart_ready     <= NOT uart_full;
   data_to_uart   <= dm_wdata(7 downto 0);
   data_to_spi    <= dm_wdata(7 downto 0);

	----------------------------------------------------------
	------                                             -------
	----------------------------------------------------------

   UART_s_custom : ENTITY work.uart_send
      Generic MAP(
         fifo_size        => 2048,
         fifo_almost      => 2000,
         asynch_fifo_full => True
      )
      PORT MAP(
         clk_100MHz => CLK_100MHZ,
         reset      => reset,
         dat_en     => data_to_uart_wen,
         dat        => data_to_uart,
         TX         => UART_RXD_OUT,
         fifo_empty => open,
         fifo_afull => uart_full,
         fifo_full  => open);
   
	----------------------------------------------------------
	------                                             -------
	----------------------------------------------------------
   
   UART_r_custom : ENTITY work.UART_recv
      PORT MAP(
         clk        => CLK_100MHZ,
         reset      => reset,
         rx         => UART_TXD_IN,
         dat        => data_from_uart,
         dat_en     => data_from_uart_en
      );
      
	----------------------------------------------------------
	------                                             -------
	----------------------------------------------------------

   process(CLK_100MHZ)
   begin   
      if rising_edge(CLK_100MHZ) then
        IF RESET = '1' THEN
           data_from_uart_b <= x"00";
           data_from_uart_s <= '0'; 

        ELSIF data_from_uart_en = '1' THEN 
           data_from_uart_b <= data_from_uart;
           data_from_uart_s <= data_from_uart_en; 

        ELSIF (data_from_uart_en = '1') and (dm_rd = '1') THEN 
           data_from_uart_b <= x"00";
           data_from_uart_s <= '0'; 
        END IF;
      end if;
    end process;
 
	----------------------------------------------------------
	------                                             -------
	----------------------------------------------------------

   oled_rgb_96x64 : ENTITY work.PmodOLEDrgb_bitmap
        GENERIC MAP(CLK_FREQ_HZ => 100000000, -- by default, we run at 100MHz
                BPP         => OLED_BPP,      -- bits per pixel
                GREYSCALE   => False,         -- color or greyscale ? (only for BPP>6)
                LEFT_SIDE   => False)         -- True if the Pmod is on the left side of the board
        PORT MAP(
            clk          => CLK_100MHZ,
            reset        => RESET,
            pix_write    => data_to_oled_scr_wen,
            pix_addr     => IO_wordaddr(12 downto 0),
            pix_data_in  => dm_wdata(OLED_BPP-1 downto 0),
          
            PMOD_CS      => JA_PMOD_CS,
            PMOD_MOSI    => JA_PMOD_MOSI,
            PMOD_SCK     => JA_PMOD_SCK,
            PMOD_DC      => JA_PMOD_DC,
            PMOD_RES     => JA_PMOD_RES,
            PMOD_VCCEN   => JA_PMOD_VCCEN,
            PMOD_EN      => JA_PMOD_EN
        );

	----------------------------------------------------------
	------                LED Control                  -------
	----------------------------------------------------------

    d32b_from_leds         <= x"0000" & leds_buffer;

    d32b_from_swit         <= (others => '0'); -- there is no switch on cmod-a7 platform
     
    -- adresse de base        = uart_send
    -- adresse de base + 0x04 = uart_rcv
    d32b_from_uart         <= x"0000000" & "000" & (uart_ready)  when dm_addr(2) = '0' else
                              x"00000"   & "000" & data_from_uart_s  & data_from_uart_b;
                              
    d32b_from_spi          <= (others => '0');
    d32b_from_vga_buff     <= (others => '0');
    d32b_from_sd_card      <= (others => '0');
    d32b_from_ethernet     <= (others => '0');
    d32b_from_oled_rgb     <= (others => '0');
    
    dm_rdata <= d32b_from_leds         when data_to_leds_en     = '1'
              else d32b_from_swit      when data_to_switch_en   = '1'
              else d32b_from_uart      when data_to_uart_en     = '1'
              else d32b_from_spi       when data_to_spi_en      = '1'
              else d32b_from_vga_buff  when data_to_vga_en      = '1'
              else d32b_from_sd_card   when data_to_sdcart_en   = '1'
              else d32b_from_ethernet  when data_to_ethernet_en = '1'
              else d32b_from_oled_rgb  when data_to_oled_scr_en = '1'
              else d32b_from_timer     when data_to_timer_en    = '1'
              else d32b_from_led_rgb   when data_to_ledrgb_en   = '1'
              else d32b_from_soc_id; -- OUPSI

	d32b_from_soc_id <= x"0B5E1240";
   
   ---------------------------------------------------------------------------------------------------

end arch;
