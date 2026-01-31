VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(71:64)
        SIGNAL d(63:48)
        SIGNAL d(47:32)
        SIGNAL d(31:16)
        SIGNAL d(15:0)
        SIGNAL q(63:48)
        SIGNAL q(47:32)
        SIGNAL q(31:16)
        SIGNAL q(15:0)
        SIGNAL ce
        SIGNAL clk
        SIGNAL clr
        SIGNAL d(71:0)
        SIGNAL q(71:0)
        SIGNAL q(71:64)
        PORT Input ce
        PORT Input clk
        PORT Input clr
        PORT Input d(71:0)
        PORT Output q(71:0)
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1296 432 R0
        INSTANCE XLXI_2 1296 864 R0
        INSTANCE XLXI_3 1296 1232 R0
        INSTANCE XLXI_4 1296 1600 R0
        INSTANCE XLXI_5 1296 1968 R0
        BEGIN BRANCH d(71:64)
            WIRE 1088 176 1296 176
            BEGIN DISPLAY 1088 176 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 1088 608 1296 608
            BEGIN DISPLAY 1088 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 1088 976 1296 976
            BEGIN DISPLAY 1088 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 1072 1344 1296 1344
            BEGIN DISPLAY 1072 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 1072 1712 1296 1712
            BEGIN DISPLAY 1072 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1680 608 1888 608
            BEGIN DISPLAY 1888 608 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1680 976 1888 976
            BEGIN DISPLAY 1888 976 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1680 1344 1872 1344
            BEGIN DISPLAY 1872 1344 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1680 1712 1904 1712
            BEGIN DISPLAY 1904 1712 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1104 1776 1232 1776
            WIRE 1232 1776 1296 1776
            WIRE 1232 240 1296 240
            WIRE 1232 240 1232 672
            WIRE 1232 672 1296 672
            WIRE 1232 672 1232 1040
            WIRE 1232 1040 1296 1040
            WIRE 1232 1040 1232 1408
            WIRE 1232 1408 1232 1776
            WIRE 1232 1408 1296 1408
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1104 1840 1264 1840
            WIRE 1264 1840 1296 1840
            WIRE 1264 304 1296 304
            WIRE 1264 304 1264 736
            WIRE 1264 736 1296 736
            WIRE 1264 736 1264 1104
            WIRE 1264 1104 1296 1104
            WIRE 1264 1104 1264 1472
            WIRE 1264 1472 1264 1840
            WIRE 1264 1472 1296 1472
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1072 1936 1168 1936
            WIRE 1168 1936 1296 1936
            WIRE 1168 400 1296 400
            WIRE 1168 400 1168 832
            WIRE 1168 832 1296 832
            WIRE 1168 832 1168 1200
            WIRE 1168 1200 1296 1200
            WIRE 1168 1200 1168 1568
            WIRE 1168 1568 1168 1936
            WIRE 1168 1568 1296 1568
        END BRANCH
        IOMARKER 1104 1776 ce R180 28
        IOMARKER 1104 1840 clk R180 28
        IOMARKER 1072 1936 clr R180 28
        BEGIN BRANCH d(71:0)
            WIRE 912 2224 1072 2224
        END BRANCH
        BEGIN BRANCH q(71:0)
            WIRE 1408 2224 1600 2224
        END BRANCH
        IOMARKER 912 2224 d(71:0) R180 28
        IOMARKER 1600 2224 q(71:0) R0 28
        BEGIN BRANCH q(71:64)
            WIRE 1680 176 1904 176
            BEGIN DISPLAY 1904 176 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
