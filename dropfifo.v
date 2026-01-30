--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : dropfifo.vhf
-- /___/   /\     Timestamp : 01/30/2026 00:09:08
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan3e -flat -suppress -w C:/lab3_test2/dropfifo.sch dropfifo.vhf
--Design Name: dropfifo
--Device: aspartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M2_1_MXILINX_dropfifo is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_dropfifo;

architecture BEHAVIORAL of M2_1_MXILINX_dropfifo is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_7 : AND2B1
      port map (I0=>S0,
                I1=>D0,
                O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1,
                I1=>S0,
                O=>M1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTCLEX_MXILINX_dropfifo is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic; 
          L   : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTCLEX_MXILINX_dropfifo;

architecture BEHAVIORAL of FTCLEX_MXILINX_dropfifo is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   attribute INIT       : string ;
   attribute RLOC       : string ;
   signal MD      : std_logic;
   signal TQ      : std_logic;
   signal Q_DUMMY : std_logic;
   component M2_1_MXILINX_dropfifo
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component FDCE
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute INIT of FDCE : component is "0";
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   attribute HU_SET of I_36_30 : label is "I_36_30_0";
   attribute RLOC of I_36_35 : label is "X0Y0";
begin
   Q <= Q_DUMMY;
   I_36_30 : M2_1_MXILINX_dropfifo
      port map (D0=>TQ,
                D1=>D,
                S0=>L,
                O=>MD);
   
   I_36_32 : XOR2
      port map (I0=>T,
                I1=>Q_DUMMY,
                O=>TQ);
   
   I_36_35 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>MD,
                Q=>Q_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB8CLE_MXILINX_dropfifo is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic_vector (7 downto 0); 
          L   : in    std_logic; 
          CEO : out   std_logic; 
          Q   : out   std_logic_vector (7 downto 0); 
          TC  : out   std_logic);
end CB8CLE_MXILINX_dropfifo;

architecture BEHAVIORAL of CB8CLE_MXILINX_dropfifo is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal OR_CE_L  : std_logic;
   signal T2       : std_logic;
   signal T3       : std_logic;
   signal T4       : std_logic;
   signal T5       : std_logic;
   signal T6       : std_logic;
   signal T7       : std_logic;
   signal XLXN_1   : std_logic;
   signal Q_DUMMY  : std_logic_vector (7 downto 0);
   signal TC_DUMMY : std_logic;
   component FTCLEX_MXILINX_dropfifo
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             L   : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   attribute HU_SET of I_Q0 : label is "I_Q0_1";
   attribute HU_SET of I_Q1 : label is "I_Q1_2";
   attribute HU_SET of I_Q2 : label is "I_Q2_3";
   attribute HU_SET of I_Q3 : label is "I_Q3_4";
   attribute HU_SET of I_Q4 : label is "I_Q4_5";
   attribute HU_SET of I_Q5 : label is "I_Q5_6";
   attribute HU_SET of I_Q6 : label is "I_Q6_7";
   attribute HU_SET of I_Q7 : label is "I_Q7_8";
begin
   Q(7 downto 0) <= Q_DUMMY(7 downto 0);
   TC <= TC_DUMMY;
   I_Q0 : FTCLEX_MXILINX_dropfifo
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D(0),
                L=>L,
                T=>XLXN_1,
                Q=>Q_DUMMY(0));
   
   I_Q1 : FTCLEX_MXILINX_dropfifo
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D(1),
                L=>L,
                T=>Q_DUMMY(0),
                Q=>Q_DUMMY(1));
   
   I_Q2 : FTCLEX_MXILINX_dropfifo
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D(2),
                L=>L,
                T=>T2,
                Q=>Q_DUMMY(2));
   
   I_Q3 : FTCLEX_MXILINX_dropfifo
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D(3),
                L=>L,
                T=>T3,
                Q=>Q_DUMMY(3));
   
   I_Q4 : FTCLEX_MXILINX_dropfifo
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D(4),
                L=>L,
                T=>T4,
                Q=>Q_DUMMY(4));
   
   I_Q5 : FTCLEX_MXILINX_dropfifo
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D(5),
                L=>L,
                T=>T5,
                Q=>Q_DUMMY(5));
   
   I_Q6 : FTCLEX_MXILINX_dropfifo
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D(6),
                L=>L,
                T=>T6,
                Q=>Q_DUMMY(6));
   
   I_Q7 : FTCLEX_MXILINX_dropfifo
      port map (C=>C,
                CE=>OR_CE_L,
                CLR=>CLR,
                D=>D(7),
                L=>L,
                T=>T7,
                Q=>Q_DUMMY(7));
   
   I_36_8 : AND3
      port map (I0=>Q_DUMMY(5),
                I1=>Q_DUMMY(4),
                I2=>T4,
                O=>T6);
   
   I_36_11 : AND2
      port map (I0=>Q_DUMMY(4),
                I1=>T4,
                O=>T5);
   
   I_36_12 : VCC
      port map (P=>XLXN_1);
   
   I_36_19 : AND2
      port map (I0=>Q_DUMMY(1),
                I1=>Q_DUMMY(0),
                O=>T2);
   
   I_36_21 : AND3
      port map (I0=>Q_DUMMY(2),
                I1=>Q_DUMMY(1),
                I2=>Q_DUMMY(0),
                O=>T3);
   
   I_36_23 : AND4
      port map (I0=>Q_DUMMY(3),
                I1=>Q_DUMMY(2),
                I2=>Q_DUMMY(1),
                I3=>Q_DUMMY(0),
                O=>T4);
   
   I_36_25 : AND4
      port map (I0=>Q_DUMMY(6),
                I1=>Q_DUMMY(5),
                I2=>Q_DUMMY(4),
                I3=>T4,
                O=>T7);
   
   I_36_29 : AND5
      port map (I0=>Q_DUMMY(7),
                I1=>Q_DUMMY(6),
                I2=>Q_DUMMY(5),
                I3=>Q_DUMMY(4),
                I4=>T4,
                O=>TC_DUMMY);
   
   I_36_33 : AND2
      port map (I0=>CE,
                I1=>TC_DUMMY,
                O=>CEO);
   
   I_36_49 : OR2
      port map (I0=>CE,
                I1=>L,
                O=>OR_CE_L);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTCE_MXILINX_dropfifo is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTCE_MXILINX_dropfifo;

architecture BEHAVIORAL of FTCE_MXILINX_dropfifo is
   attribute BOX_TYPE   : string ;
   attribute INIT       : string ;
   attribute RLOC       : string ;
   signal TQ      : std_logic;
   signal Q_DUMMY : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component FDCE
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute INIT of FDCE : component is "0";
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   attribute RLOC of I_36_35 : label is "X0Y0";
begin
   Q <= Q_DUMMY;
   I_36_32 : XOR2
      port map (I0=>T,
                I1=>Q_DUMMY,
                O=>TQ);
   
   I_36_35 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>TQ,
                Q=>Q_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB8CE_MXILINX_dropfifo is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q   : out   std_logic_vector (7 downto 0); 
          TC  : out   std_logic);
end CB8CE_MXILINX_dropfifo;

architecture BEHAVIORAL of CB8CE_MXILINX_dropfifo is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal T2       : std_logic;
   signal T3       : std_logic;
   signal T4       : std_logic;
   signal T5       : std_logic;
   signal T6       : std_logic;
   signal T7       : std_logic;
   signal XLXN_1   : std_logic;
   signal Q_DUMMY  : std_logic_vector (7 downto 0);
   signal TC_DUMMY : std_logic;
   component FTCE_MXILINX_dropfifo
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of I_Q0 : label is "I_Q0_15";
   attribute HU_SET of I_Q1 : label is "I_Q1_16";
   attribute HU_SET of I_Q2 : label is "I_Q2_12";
   attribute HU_SET of I_Q3 : label is "I_Q3_13";
   attribute HU_SET of I_Q4 : label is "I_Q4_14";
   attribute HU_SET of I_Q5 : label is "I_Q5_11";
   attribute HU_SET of I_Q6 : label is "I_Q6_10";
   attribute HU_SET of I_Q7 : label is "I_Q7_9";
begin
   Q(7 downto 0) <= Q_DUMMY(7 downto 0);
   TC <= TC_DUMMY;
   I_Q0 : FTCE_MXILINX_dropfifo
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>XLXN_1,
                Q=>Q_DUMMY(0));
   
   I_Q1 : FTCE_MXILINX_dropfifo
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>Q_DUMMY(0),
                Q=>Q_DUMMY(1));
   
   I_Q2 : FTCE_MXILINX_dropfifo
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T2,
                Q=>Q_DUMMY(2));
   
   I_Q3 : FTCE_MXILINX_dropfifo
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T3,
                Q=>Q_DUMMY(3));
   
   I_Q4 : FTCE_MXILINX_dropfifo
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T4,
                Q=>Q_DUMMY(4));
   
   I_Q5 : FTCE_MXILINX_dropfifo
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T5,
                Q=>Q_DUMMY(5));
   
   I_Q6 : FTCE_MXILINX_dropfifo
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T6,
                Q=>Q_DUMMY(6));
   
   I_Q7 : FTCE_MXILINX_dropfifo
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T7,
                Q=>Q_DUMMY(7));
   
   I_36_1 : AND5
      port map (I0=>Q_DUMMY(7),
                I1=>Q_DUMMY(6),
                I2=>Q_DUMMY(5),
                I3=>Q_DUMMY(4),
                I4=>T4,
                O=>TC_DUMMY);
   
   I_36_2 : AND2
      port map (I0=>Q_DUMMY(4),
                I1=>T4,
                O=>T5);
   
   I_36_11 : AND3
      port map (I0=>Q_DUMMY(5),
                I1=>Q_DUMMY(4),
                I2=>T4,
                O=>T6);
   
   I_36_15 : AND4
      port map (I0=>Q_DUMMY(3),
                I1=>Q_DUMMY(2),
                I2=>Q_DUMMY(1),
                I3=>Q_DUMMY(0),
                O=>T4);
   
   I_36_16 : VCC
      port map (P=>XLXN_1);
   
   I_36_24 : AND2
      port map (I0=>Q_DUMMY(1),
                I1=>Q_DUMMY(0),
                O=>T2);
   
   I_36_26 : AND3
      port map (I0=>Q_DUMMY(2),
                I1=>Q_DUMMY(1),
                I2=>Q_DUMMY(0),
                O=>T3);
   
   I_36_28 : AND4
      port map (I0=>Q_DUMMY(6),
                I1=>Q_DUMMY(5),
                I2=>Q_DUMMY(4),
                I3=>T4,
                O=>T7);
   
   I_36_31 : AND2
      port map (I0=>CE,
                I1=>TC_DUMMY,
                O=>CEO);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity COMP8_MXILINX_dropfifo is
   port ( A  : in    std_logic_vector (7 downto 0); 
          B  : in    std_logic_vector (7 downto 0); 
          EQ : out   std_logic);
end COMP8_MXILINX_dropfifo;

architecture BEHAVIORAL of COMP8_MXILINX_dropfifo is
   attribute BOX_TYPE   : string ;
   signal AB0  : std_logic;
   signal AB1  : std_logic;
   signal AB2  : std_logic;
   signal AB3  : std_logic;
   signal AB4  : std_logic;
   signal AB5  : std_logic;
   signal AB6  : std_logic;
   signal AB7  : std_logic;
   signal AB03 : std_logic;
   signal AB47 : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_32 : AND4
      port map (I0=>AB7,
                I1=>AB6,
                I2=>AB5,
                I3=>AB4,
                O=>AB47);
   
   I_36_33 : XNOR2
      port map (I0=>B(6),
                I1=>A(6),
                O=>AB6);
   
   I_36_34 : XNOR2
      port map (I0=>B(7),
                I1=>A(7),
                O=>AB7);
   
   I_36_35 : XNOR2
      port map (I0=>B(5),
                I1=>A(5),
                O=>AB5);
   
   I_36_36 : XNOR2
      port map (I0=>B(4),
                I1=>A(4),
                O=>AB4);
   
   I_36_41 : AND4
      port map (I0=>AB3,
                I1=>AB2,
                I2=>AB1,
                I3=>AB0,
                O=>AB03);
   
   I_36_42 : XNOR2
      port map (I0=>B(2),
                I1=>A(2),
                O=>AB2);
   
   I_36_43 : XNOR2
      port map (I0=>B(3),
                I1=>A(3),
                O=>AB3);
   
   I_36_44 : XNOR2
      port map (I0=>B(1),
                I1=>A(1),
                O=>AB1);
   
   I_36_45 : XNOR2
      port map (I0=>B(0),
                I1=>A(0),
                O=>AB0);
   
   I_36_50 : AND2
      port map (I0=>AB47,
                I1=>AB03,
                O=>EQ);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FD8CE_MXILINX_dropfifo is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic_vector (7 downto 0); 
          Q   : out   std_logic_vector (7 downto 0));
end FD8CE_MXILINX_dropfifo;

architecture BEHAVIORAL of FD8CE_MXILINX_dropfifo is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   component FDCE
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute INIT of FDCE : component is "0";
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   I_Q0 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(0),
                Q=>Q(0));
   
   I_Q1 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(1),
                Q=>Q(1));
   
   I_Q2 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(2),
                Q=>Q(2));
   
   I_Q3 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(3),
                Q=>Q(3));
   
   I_Q4 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(4),
                Q=>Q(4));
   
   I_Q5 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(5),
                Q=>Q(5));
   
   I_Q6 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(6),
                Q=>Q(6));
   
   I_Q7 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(7),
                Q=>Q(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity dropfifo is
   port ( clk        : in    std_logic; 
          drop_pkt   : in    std_logic; 
          fiforead   : in    std_logic; 
          fifowrite  : in    std_logic; 
          firstword  : in    std_logic; 
          in_fifo    : in    std_logic_vector (71 downto 0); 
          lastword   : in    std_logic; 
          rst        : in    std_logic; 
          out_fifo   : out   std_logic_vector (71 downto 0); 
          valid_data : out   std_logic);
end dropfifo;

architecture BEHAVIORAL of dropfifo is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal in_fifo0                : std_logic_vector (71 downto 0);
   signal raddr                   : std_logic_vector (7 downto 0);
   signal waddr                   : std_logic_vector (7 downto 0);
   signal XLXN_7                  : std_logic;
   signal XLXN_10                 : std_logic;
   signal XLXN_11                 : std_logic;
   signal XLXN_12                 : std_logic;
   signal XLXN_15                 : std_logic_vector (7 downto 0);
   signal XLXN_17                 : std_logic;
   signal XLXN_22                 : std_logic;
   signal XLXN_23                 : std_logic;
   signal XLXN_24                 : std_logic;
   signal XLXN_25                 : std_logic;
   signal XLXN_32                 : std_logic_vector (0 downto 0);
   signal XLXI_6_C_openSignal     : std_logic;
   signal XLXI_17_clka_openSignal : std_logic;
   signal XLXI_17_clkb_openSignal : std_logic;
   component FD
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute INIT of FD : component is "0";
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component FD8CE_MXILINX_dropfifo
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component FDC
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute INIT of FDC : component is "0";
   attribute BOX_TYPE of FDC : component is "BLACK_BOX";
   
   component reg9B
      port ( ce  : in    std_logic; 
             clk : in    std_logic; 
             clr : in    std_logic; 
             d   : in    std_logic_vector (71 downto 0); 
             q   : out   std_logic_vector (71 downto 0));
   end component;
   
   component COMP8_MXILINX_dropfifo
      port ( A  : in    std_logic_vector (7 downto 0); 
             B  : in    std_logic_vector (7 downto 0); 
             EQ : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component CB8CE_MXILINX_dropfifo
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (7 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component CB8CLE_MXILINX_dropfifo
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             L   : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (7 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component dual9Bmem
      port ( addra : in    std_logic_vector (7 downto 0); 
             dina  : in    std_logic_vector (71 downto 0); 
             wea   : in    std_logic_vector (0 downto 0); 
             clka  : in    std_logic; 
             addrb : in    std_logic_vector (7 downto 0); 
             clkb  : in    std_logic; 
             doutb : out   std_logic_vector (71 downto 0));
   end component;
   
   attribute HU_SET of XLXI_3 : label is "XLXI_3_17";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_18";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_19";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_20";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_21";
begin
   XLXI_1 : FD
      port map (C=>clk,
                D=>firstword,
                Q=>XLXN_10);
   
   XLXI_2 : FD
      port map (C=>clk,
                D=>lastword,
                Q=>XLXN_11);
   
   XLXI_3 : FD8CE_MXILINX_dropfifo
      port map (C=>clk,
                CE=>XLXN_17,
                CLR=>rst,
                D(7 downto 0)=>waddr(7 downto 0),
                Q(7 downto 0)=>XLXN_15(7 downto 0));
   
   XLXI_4 : FDC
      port map (C=>clk,
                CLR=>rst,
                D=>XLXN_23,
                Q=>valid_data);
   
   XLXI_5 : FD
      port map (C=>clk,
                D=>drop_pkt,
                Q=>XLXN_22);
   
   XLXI_6 : FD
      port map (C=>XLXI_6_C_openSignal,
                D=>fifowrite,
                Q=>XLXN_32(0));
   
   XLXI_7 : reg9B
      port map (ce=>XLXN_7,
                clk=>clk,
                clr=>rst,
                d(71 downto 0)=>in_fifo(71 downto 0),
                q(71 downto 0)=>in_fifo0(71 downto 0));
   
   XLXI_8 : COMP8_MXILINX_dropfifo
      port map (A(7 downto 0)=>waddr(7 downto 0),
                B(7 downto 0)=>raddr(7 downto 0),
                EQ=>XLXN_24);
   
   XLXI_9 : COMP8_MXILINX_dropfifo
      port map (A(7 downto 0)=>raddr(7 downto 0),
                B(7 downto 0)=>XLXN_15(7 downto 0),
                EQ=>XLXN_25);
   
   XLXI_10 : OR2
      port map (I0=>XLXN_11,
                I1=>XLXN_10,
                O=>XLXN_12);
   
   XLXI_11 : AND2B1
      port map (I0=>XLXN_22,
                I1=>XLXN_12,
                O=>XLXN_17);
   
   XLXI_12 : AND3B2
      port map (I0=>XLXN_25,
                I1=>XLXN_24,
                I2=>fiforead,
                O=>XLXN_23);
   
   XLXI_14 : CB8CE_MXILINX_dropfifo
      port map (C=>clk,
                CE=>XLXN_23,
                CLR=>rst,
                CEO=>open,
                Q(7 downto 0)=>raddr(7 downto 0),
                TC=>open);
   
   XLXI_15 : CB8CLE_MXILINX_dropfifo
      port map (C=>clk,
                CE=>XLXN_32(0),
                CLR=>rst,
                D(7 downto 0)=>XLXN_15(7 downto 0),
                L=>XLXN_22,
                CEO=>open,
                Q(7 downto 0)=>waddr(7 downto 0),
                TC=>open);
   
   XLXI_16 : VCC
      port map (P=>XLXN_7);
   
   XLXI_17 : dual9Bmem
      port map (addra(7 downto 0)=>waddr(7 downto 0),
                addrb(7 downto 0)=>raddr(7 downto 0),
                clka=>XLXI_17_clka_openSignal,
                clkb=>XLXI_17_clkb_openSignal,
                dina(71 downto 0)=>in_fifo0(71 downto 0),
                wea(0)=>XLXN_32(0),
                doutb(71 downto 0)=>out_fifo(71 downto 0));
   
end BEHAVIORAL;


