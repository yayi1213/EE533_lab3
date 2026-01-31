VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL hwregA(63:0)
        SIGNAL pipe1(71:0)
        SIGNAL clk
        SIGNAL ce
        SIGNAL XLXN_5
        SIGNAL pipe0(71:0)
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        SIGNAL XLXN_9(111:0)
        SIGNAL hwregA(62:56)
        SIGNAL hwregA(55:0)
        SIGNAL XLXN_14
        SIGNAL match
        SIGNAL mrst
        SIGNAL XLXN_20
        SIGNAL XLXN_12
        SIGNAL match_en
        PORT Input hwregA(63:0)
        PORT Input pipe1(71:0)
        PORT Input clk
        PORT Input ce
        PORT Output match
        PORT Input mrst
        PORT Input match_en
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2026 1 30 2 51 48
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2026 1 29 0 38 28
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2026 1 29 0 41 15
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 reg9B
            PIN ce ce
            PIN clk clk
            PIN clr XLXN_5
            PIN d(71:0) pipe1(71:0)
            PIN q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_9(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 wordmatch
            PIN datacomp(55:0) hwregA(55:0)
            PIN wildcard(6:0) hwregA(62:56)
            PIN datain(111:0) XLXN_9(111:0)
            PIN match XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_4 fdce
            PIN C clk
            PIN CE XLXN_14
            PIN CLR XLXN_5
            PIN D XLXN_14
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_5 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_12
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_6 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_20
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 720 640 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 720 1152 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1248 1072 R0
        END INSTANCE
        INSTANCE XLXI_4 2224 1200 R0
        INSTANCE XLXI_5 1856 1072 R0
        INSTANCE XLXI_6 1632 1648 R0
        BEGIN BRANCH hwregA(63:0)
            WIRE 320 256 480 256
        END BRANCH
        IOMARKER 320 256 hwregA(63:0) R180 28
        BEGIN BRANCH pipe1(71:0)
            WIRE 528 608 720 608
        END BRANCH
        BEGIN BRANCH clk
            WIRE 560 480 608 480
            WIRE 608 480 720 480
            WIRE 608 480 608 752
            WIRE 608 752 608 1520
            WIRE 608 1520 1632 1520
            WIRE 608 752 1776 752
            WIRE 1776 752 1776 1072
            WIRE 1776 1072 2224 1072
        END BRANCH
        BEGIN BRANCH ce
            WIRE 560 416 720 416
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 656 544 720 544
            WIRE 656 544 656 1168
            WIRE 656 1168 2224 1168
        END BRANCH
        IOMARKER 560 416 ce R180 28
        IOMARKER 560 480 clk R180 28
        BEGIN BRANCH pipe0(71:0)
            WIRE 1104 416 1248 416
            BEGIN DISPLAY 1248 416 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe0(47:0)
            WIRE 544 1056 560 1056
            WIRE 560 1056 720 1056
            BEGIN DISPLAY 544 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 544 1120 560 1120
            WIRE 560 1120 720 1120
            BEGIN DISPLAY 544 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_9(111:0)
            WIRE 1104 1056 1168 1056
            WIRE 1168 1040 1168 1056
            WIRE 1168 1040 1232 1040
            WIRE 1232 1040 1248 1040
        END BRANCH
        BEGIN BRANCH hwregA(62:56)
            WIRE 1152 976 1248 976
            BEGIN DISPLAY 1152 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(55:0)
            WIRE 1136 912 1248 912
            BEGIN DISPLAY 1136 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 2112 944 2176 944
            WIRE 2176 944 2224 944
            WIRE 2176 944 2176 1008
            WIRE 2176 1008 2224 1008
        END BRANCH
        BEGIN BRANCH match
            WIRE 1792 816 1792 1008
            WIRE 1792 1008 1856 1008
            WIRE 1792 816 2640 816
            WIRE 2640 816 2640 944
            WIRE 2640 944 2800 944
            WIRE 2608 944 2640 944
        END BRANCH
        IOMARKER 528 608 pipe1(71:0) R180 28
        BEGIN BRANCH mrst
            WIRE 1600 1392 1632 1392
        END BRANCH
        IOMARKER 1600 1392 mrst R180 28
        BEGIN BRANCH XLXN_20
            WIRE 2016 1392 2416 1392
            WIRE 2416 1168 2416 1392
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1632 912 1744 912
            WIRE 1744 880 1744 912
            WIRE 1744 880 1856 880
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1696 1120 1840 1120
            WIRE 1840 944 1856 944
            WIRE 1840 944 1840 1120
        END BRANCH
        IOMARKER 1696 1120 match_en R180 28
        IOMARKER 2800 944 match R0 28
    END SHEET
END SCHEMATIC
