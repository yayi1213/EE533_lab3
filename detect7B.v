--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : detect7B.vhf
-- /___/   /\     Timestamp : 01/30/2026 00:09:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan3e -flat -suppress -w C:/lab3_test2/detect7B.sch detect7B.vhf
--Design Name: detect7B
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

entity detect7B is
   port ( ce       : in    std_logic; 
          clk      : in    std_logic; 
          hwregA   : in    std_logic_vector (63 downto 0); 
          match_en : in    std_logic; 
          mrst     : in    std_logic; 
          pipe1    : in    std_logic_vector (71 downto 0); 
          match    : out   std_logic);
end detect7B;

architecture BEHAVIORAL of detect7B is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   signal pipe0       : std_logic_vector (71 downto 0);
   signal XLXN_5      : std_logic;
   signal XLXN_9      : std_logic_vector (111 downto 0);
   signal XLXN_12     : std_logic;
   signal XLXN_14     : std_logic;
   signal XLXN_20     : std_logic;
   signal match_DUMMY : std_logic;
   component reg9B
      port ( ce  : in    std_logic; 
             clk : in    std_logic; 
             clr : in    std_logic; 
             d   : in    std_logic_vector (71 downto 0); 
             q   : out   std_logic_vector (71 downto 0));
   end component;
   
   component busmerge
      port ( da : in    std_logic_vector (47 downto 0); 
             db : in    std_logic_vector (63 downto 0); 
             q  : out   std_logic_vector (111 downto 0));
   end component;
   
   component wordmatch
      port ( datacomp : in    std_logic_vector (55 downto 0); 
             wildcard : in    std_logic_vector (6 downto 0); 
             datain   : in    std_logic_vector (111 downto 0); 
             match    : out   std_logic);
   end component;
   
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
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
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
   
begin
   match <= match_DUMMY;
   XLXI_1 : reg9B
      port map (ce=>ce,
                clk=>clk,
                clr=>XLXN_5,
                d(71 downto 0)=>pipe1(71 downto 0),
                q(71 downto 0)=>pipe0(71 downto 0));
   
   XLXI_2 : busmerge
      port map (da(47 downto 0)=>pipe0(47 downto 0),
                db(63 downto 0)=>pipe1(63 downto 0),
                q(111 downto 0)=>XLXN_9(111 downto 0));
   
   XLXI_3 : wordmatch
      port map (datacomp(55 downto 0)=>hwregA(55 downto 0),
                datain(111 downto 0)=>XLXN_9(111 downto 0),
                wildcard(6 downto 0)=>hwregA(62 downto 56),
                match=>XLXN_12);
   
   XLXI_4 : FDCE
      port map (C=>clk,
                CE=>XLXN_14,
                CLR=>XLXN_5,
                D=>XLXN_14,
                Q=>match_DUMMY);
   
   XLXI_5 : AND3B1
      port map (I0=>match_DUMMY,
                I1=>match_en,
                I2=>XLXN_12,
                O=>XLXN_14);
   
   XLXI_6 : FD
      port map (C=>clk,
                D=>mrst,
                Q=>XLXN_20);
   
end BEHAVIORAL;


