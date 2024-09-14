library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
 
entity alu is
Port ( 
   rs1_v             : in  STD_LOGIC_VECTOR (31 downto 0);
   rs2_v             : in  STD_LOGIC_VECTOR (31 downto 0);
   isALUreg          : in  STD_LOGIC;
   isBranch          : in  STD_LOGIC;
   isAluSubstraction : in  STD_LOGIC;
   func3             : in  STD_LOGIC_VECTOR ( 2 downto 0);
   imm_v             : in  STD_LOGIC_VECTOR (31 downto 0);

   aluOut_v          : out STD_LOGIC_VECTOR (31 downto 0);
   aluPlus_v         : out STD_LOGIC_VECTOR (31 downto 0);-- ne sert a rien
   takeBranch        : out STD_LOGIC
 );
end alu;
 
architecture arch of alu is
  SIGNAL v_plus , v_plus_imm, v_minus , v_xor , v_or, v_and , v_sll_r , v_sll_i , v_srl_r , v_srl_i, v_sra_r , v_sra_i, opt2 , v_slt_i ,v_slt_r , v_sltu_r , v_sltu_i : STD_LOGIC_VECTOR(31 downto 0);  
begin
  
    
    opt2 <= rs2_v when isALUreg = '1' else imm_v; -- que pour la branche
    
    process (isBranch, func3, rs1_v, rs2_v)
    begin
      if isBranch = '1' then -- multiplexeur à six entées
        case func3 is
          when "000" =>
            if signed(rs1_v) = signed(rs2_v) then
              takeBranch <= '1';
            else 
              takeBranch <= '0';
            end if;
          when "001" =>
            if signed(rs1_v) /= signed(rs2_v) then
              takeBranch <= '1';
            else 
              takeBranch <= '0';
            end if;
          when "100" =>
            if signed(rs1_v) < signed(rs2_v) then
              takeBranch <= '1';
            else 
              takeBranch <= '0';
            end if;
          when "101" =>
            if signed(rs1_v) >= signed(rs2_v) then
              takeBranch <= '1';
            else 
              takeBranch <= '0';
            end if;
          when "110" =>
            if unsigned(rs1_v) < unsigned(rs2_v) then
              takeBranch <= '1';
            else 
              takeBranch <= '0';
            end if;
          when "111" =>
            if unsigned(rs1_v) >= unsigned(rs2_v) then
              takeBranch <= '1';
            else 
              takeBranch <= '0';
            end if;
          when others =>
            takeBranch <= '0';
        end case;
      else
        takeBranch <= '0';
      end if;
    end process;


    -- R & I operation
    v_plus    <= STD_logic_vector(signed(rs1_v) + signed(opt2)) ;
    v_plus_imm<= STD_logic_vector(signed(rs1_v) + signed(imm_v)) ;
    v_minus   <= STD_logic_vector(signed(rs1_v) - signed(rs2_v));

    v_xor     <= rs1_v xor opt2;
    v_or      <= rs1_v or  opt2;
    v_and     <= rs1_v and opt2;

    v_sll_r   <= STD_LOGIC_VECTOR(shift_left(unsigned(rs1_v) , to_integer(unsigned(rs2_v(4 downto 0))))); -- shift left logical register
    v_sll_i   <= STD_LOGIC_VECTOR(shift_left(unsigned(rs1_v) , to_integer(unsigned(imm_v(4 downto 0))))); -- shift left logical immediate

    v_srl_r   <= STD_LOGIC_VECTOR(shift_right(unsigned(rs1_v) , to_integer(unsigned(rs2_v(4 downto 0))))); -- shift right logical register
    v_srl_i   <= STD_LOGIC_VECTOR(shift_right(unsigned(rs1_v) , to_integer(unsigned(imm_v(4 downto 0))))); -- shift right logical immediate

    v_sra_r   <= STD_LOGIC_VECTOR(shift_right(signed(rs1_v) , to_integer(unsigned(rs2_v(4 downto 0))))); -- shift right arith register msb extends
    v_sra_i   <= STD_LOGIC_VECTOR(shift_right(signed(rs1_v) , to_integer(unsigned(imm_v(4 downto 0))))); -- shift right arith  immediate msb extends

    v_slt_r   <= STD_LOGIC_VECTOR(to_unsigned(1,32)) when (signed(rs1_v) < signed(rs2_v)) else (others => '0'); -- shift less than
    v_slt_i   <= STD_LOGIC_VECTOR(to_unsigned(1,32)) when (signed(rs1_v) < signed(imm_v)) else (others => '0'); -- shift less than

    v_sltu_r  <= STD_LOGIC_VECTOR(to_unsigned(1,32)) when (unsigned(rs1_v) < unsigned(rs2_v)) else (others => '0'); -- shift less than unsigned
    v_sltu_i  <= STD_LOGIC_VECTOR(to_unsigned(1,32)) when (unsigned(rs1_v) < unsigned(imm_v)) else (others => '0'); -- shift less than unsigned

  
  

    aluOut_v <= v_minus     when func3 = "000" and isAluSubstraction = '1' and isALUreg = '1'  else
                v_plus      when func3 = "000" and isAluSubstraction = '0' and isALUreg = '1' else -- soustraction avec un nombre negative
                v_plus_imm  when func3 = "000"  and isALUreg = '0'  else 
                v_xor       when func3 = "100" else --0x4
                v_or        when func3 = "110" else --0x6
                v_and       when func3 = "111" else --0x7
                v_sll_r     when func3 = "001" and isALUreg = '1' else --0x1
                v_sll_i     when func3 = "001" and isALUreg = '0' else --0x1
                v_srl_r     when func3 = "101" and isAluSubstraction = '0' and isALUreg = '1' else --0x5
                v_srl_i     when func3 = "101" and isAluSubstraction = '0' and isALUreg = '0' else --0x5
                v_sra_r     when func3 = "101" and isAluSubstraction = '1' and isALUreg = '1' else --msb extends
                v_sra_i     when func3 = "101" and isAluSubstraction = '1' and isALUreg = '0' else --msb extends
                v_slt_r     when func3 = "010" and isALUreg = '1' else -- 0x2
                v_slt_i     when func3 = "010" and isALUreg = '0' else -- 0x2
                v_sltu_r    when func3 = "011" and isALUreg = '1' else -- 0x3
                v_sltu_i    when func3 = "011" and isALUreg = '0' else -- 0x3
                (others => '0'); 

end arch;
  