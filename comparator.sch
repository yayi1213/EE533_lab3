VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL amask(6)
        SIGNAL b(55:48)
        SIGNAL XLXN_5
        SIGNAL amask(5)
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL XLXN_9
        SIGNAL amask(4)
        SIGNAL a(39:32)
        SIGNAL b(39:32)
        SIGNAL XLXN_13
        SIGNAL amask(3)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL XLXN_17
        SIGNAL amask(2)
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL XLXN_21
        SIGNAL amask(1)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL XLXN_25
        SIGNAL amask(0)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_35
        SIGNAL XLXN_37
        SIGNAL match
        SIGNAL a(55:0)
        SIGNAL b(55:0)
        SIGNAL amask(6:0)
        SIGNAL a(55:48)
        PORT Output match
        PORT Input a(55:0)
        PORT Input b(55:0)
        PORT Input amask(6:0)
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_1
            PIN O XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_4 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_5
            PIN O XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_5 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_6 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_9
            PIN O XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_8 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_13
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_9 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_10 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_17
            PIN O XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_11 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_12 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_21
            PIN O XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_13 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_25
            PIN O XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_15 and7
            PIN I0 XLXN_37
            PIN I1 XLXN_35
            PIN I2 XLXN_34
            PIN I3 XLXN_33
            PIN I4 XLXN_32
            PIN I5 XLXN_30
            PIN I6 XLXN_29
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 384 752 R0
        INSTANCE XLXI_2 880 656 R0
        BEGIN BRANCH XLXN_1
            WIRE 768 528 880 528
        END BRANCH
        BEGIN BRANCH amask(6)
            WIRE 800 592 880 592
            BEGIN DISPLAY 800 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 240 624 384 624
            BEGIN DISPLAY 240 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_3 400 1264 R0
        INSTANCE XLXI_4 896 1168 R0
        BEGIN BRANCH XLXN_5
            WIRE 784 1040 896 1040
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 816 1104 896 1104
            BEGIN DISPLAY 816 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 256 944 400 944
            BEGIN DISPLAY 256 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 256 1136 400 1136
            BEGIN DISPLAY 256 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_5 400 1920 R0
        INSTANCE XLXI_6 896 1824 R0
        BEGIN BRANCH XLXN_9
            WIRE 784 1696 896 1696
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 816 1760 896 1760
            BEGIN DISPLAY 816 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 256 1600 400 1600
            BEGIN DISPLAY 256 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 256 1792 400 1792
            BEGIN DISPLAY 256 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_7 416 2432 R0
        INSTANCE XLXI_8 912 2336 R0
        BEGIN BRANCH XLXN_13
            WIRE 800 2208 912 2208
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 832 2272 912 2272
            BEGIN DISPLAY 832 2272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 272 2112 416 2112
            BEGIN DISPLAY 272 2112 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 272 2304 416 2304
            BEGIN DISPLAY 272 2304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_9 1792 768 R0
        INSTANCE XLXI_10 2288 672 R0
        BEGIN BRANCH XLXN_17
            WIRE 2176 544 2288 544
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 2208 608 2288 608
            BEGIN DISPLAY 2208 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 1648 448 1792 448
            BEGIN DISPLAY 1648 448 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1648 640 1792 640
            BEGIN DISPLAY 1648 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_11 1808 1280 R0
        INSTANCE XLXI_12 2304 1184 R0
        BEGIN BRANCH XLXN_21
            WIRE 2192 1056 2304 1056
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 2224 1120 2304 1120
            BEGIN DISPLAY 2224 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1664 960 1808 960
            BEGIN DISPLAY 1664 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1664 1152 1808 1152
            BEGIN DISPLAY 1664 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_13 1824 1840 R0
        INSTANCE XLXI_14 2320 1744 R0
        BEGIN BRANCH XLXN_25
            WIRE 2208 1616 2320 1616
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 2240 1680 2320 1680
            BEGIN DISPLAY 2240 1680 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 1680 1520 1824 1520
            BEGIN DISPLAY 1680 1520 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1680 1712 1824 1712
            BEGIN DISPLAY 1680 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_15 2800 1344 R0
        BEGIN BRANCH XLXN_29
            WIRE 1136 560 1216 560
            WIRE 1216 336 1216 560
            WIRE 1216 336 2800 336
            WIRE 2800 336 2800 896
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 1152 1072 1232 1072
            WIRE 1232 832 1232 1072
            WIRE 1232 832 2256 832
            WIRE 2256 832 2256 960
            WIRE 2256 960 2800 960
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1152 1728 1216 1728
            WIRE 1216 1728 1216 1856
            WIRE 1216 1856 2640 1856
            WIRE 2640 1024 2640 1856
            WIRE 2640 1024 2800 1024
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1168 2240 2624 2240
            WIRE 2624 1088 2624 2240
            WIRE 2624 1088 2800 1088
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 2544 576 2672 576
            WIRE 2672 576 2672 1152
            WIRE 2672 1152 2800 1152
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 2560 1088 2608 1088
            WIRE 2608 1088 2608 1216
            WIRE 2608 1216 2800 1216
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 2576 1648 2800 1648
            WIRE 2800 1280 2800 1648
        END BRANCH
        BEGIN BRANCH match
            WIRE 3056 1088 3184 1088
        END BRANCH
        IOMARKER 3184 1088 match R0 28
        BEGIN BRANCH a(55:0)
            WIRE 1488 2432 1664 2432
        END BRANCH
        BEGIN BRANCH b(55:0)
            WIRE 1488 2576 1664 2576
        END BRANCH
        BEGIN BRANCH amask(6:0)
            WIRE 1968 2480 2208 2480
        END BRANCH
        IOMARKER 1488 2432 a(55:0) R180 28
        IOMARKER 1488 2576 b(55:0) R180 28
        IOMARKER 1968 2480 amask(6:0) R180 28
        BEGIN BRANCH a(55:48)
            WIRE 240 432 384 432
            BEGIN DISPLAY 240 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
