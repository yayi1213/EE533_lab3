--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : wordmatch.vhf
-- /___/   /\     Timestamp : 01/30/2026 00:09:09
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan3e -flat -suppress -w C:/lab3_test2/wordmatch.sch wordmatch.vhf
--Design Name: wordmatch
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

entity OR8_MXILINX_wordmatch is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          I7 : in    std_logic; 
          O  : out   std_logic);
end OR8_MXILINX_wordmatch;

architecture BEHAVIORAL of OR8_MXILINX_wordmatch is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal dummy   : std_logic;
   signal S0      : std_logic;
   signal S1      : std_logic;
   signal O_DUMMY : std_logic;
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   attribute RLOC of I_36_91 : label is "X0Y1";
   attribute RLOC of I_36_116 : label is "X0Y0";
   attribute RLOC of I_36_117 : label is "X0Y0";
begin
   O <= O_DUMMY;
   I_36_91 : FMAP
      port map (I1=>S0,
                I2=>S1,
                I3=>dummy,
                I4=>dummy,
                O=>O_DUMMY);
   
   I_36_94 : OR2
      port map (I0=>S0,
                I1=>S1,
                O=>O_DUMMY);
   
   I_36_95 : OR4
      port map (I0=>I4,
                I1=>I5,
                I2=>I6,
                I3=>I7,
                O=>S1);
   
   I_36_112 : OR4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I3,
                O=>S0);
   
   I_36_116 : FMAP
      port map (I1=>I0,
                I2=>I1,
                I3=>I2,
                I4=>I3,
                O=>S0);
   
   I_36_117 : FMAP
      port map (I1=>I4,
                I2=>I5,
                I3=>I6,
                I4=>I7,
                O=>S1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity wordmatch is
   port ( datacomp : in    std_logic_vector (55 downto 0); 
          datain   : in    std_logic_vector (111 downto 0); 
          wildcard : in    std_logic_vector (6 downto 0); 
          match    : out   std_logic);
end wordmatch;

architecture BEHAVIORAL of wordmatch is
   attribute HU_SET     : string ;
   signal XLXN_18  : std_logic;
   signal XLXN_19  : std_logic;
   signal XLXN_20  : std_logic;
   signal XLXN_21  : std_logic;
   signal XLXN_22  : std_logic;
   signal XLXN_23  : std_logic;
   signal XLXN_24  : std_logic;
   signal XLXN_25  : std_logic;
   component comparator
      port ( a     : in    std_logic_vector (55 downto 0); 
             b     : in    std_logic_vector (55 downto 0); 
             amask : in    std_logic_vector (6 downto 0); 
             match : out   std_logic);
   end component;
   
   component OR8_MXILINX_wordmatch
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_14 : label is "XLXI_14_0";
begin
   XLXI_1 : comparator
      port map (a(55 downto 0)=>datacomp(55 downto 0),
                amask(6 downto 0)=>wildcard(6 downto 0),
                b(55 downto 0)=>datain(55 downto 0),
                match=>XLXN_18);
   
   XLXI_2 : comparator
      port map (a(55 downto 0)=>datacomp(55 downto 0),
                amask(6 downto 0)=>wildcard(6 downto 0),
                b(55 downto 0)=>datain(63 downto 8),
                match=>XLXN_19);
   
   XLXI_3 : comparator
      port map (a(55 downto 0)=>datacomp(55 downto 0),
                amask(6 downto 0)=>wildcard(6 downto 0),
                b(55 downto 0)=>datain(71 downto 16),
                match=>XLXN_20);
   
   XLXI_4 : comparator
      port map (a(55 downto 0)=>datacomp(55 downto 0),
                amask(6 downto 0)=>wildcard(6 downto 0),
                b(55 downto 0)=>datain(79 downto 24),
                match=>XLXN_21);
   
   XLXI_5 : comparator
      port map (a(55 downto 0)=>datacomp(55 downto 0),
                amask(6 downto 0)=>wildcard(6 downto 0),
                b(55 downto 0)=>datain(87 downto 32),
                match=>XLXN_22);
   
   XLXI_6 : comparator
      port map (a(55 downto 0)=>datacomp(55 downto 0),
                amask(6 downto 0)=>wildcard(6 downto 0),
                b(55 downto 0)=>datain(95 downto 40),
                match=>XLXN_23);
   
   XLXI_7 : comparator
      port map (a(55 downto 0)=>datacomp(55 downto 0),
                amask(6 downto 0)=>wildcard(6 downto 0),
                b(55 downto 0)=>datain(103 downto 48),
                match=>XLXN_24);
   
   XLXI_8 : comparator
      port map (a(55 downto 0)=>datacomp(55 downto 0),
                amask(6 downto 0)=>wildcard(6 downto 0),
                b(55 downto 0)=>datain(111 downto 56),
                match=>XLXN_25);
   
   XLXI_14 : OR8_MXILINX_wordmatch
      port map (I0=>XLXN_25,
                I1=>XLXN_24,
                I2=>XLXN_23,
                I3=>XLXN_22,
                I4=>XLXN_21,
                I5=>XLXN_20,
                I6=>XLXN_19,
                I7=>XLXN_18,
                O=>match);
   
end BEHAVIORAL;


