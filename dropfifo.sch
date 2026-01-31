VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL drop_pkt
        SIGNAL firstword
        SIGNAL fifowrite
        SIGNAL XLXN_7
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL raddr(7:0)
        SIGNAL XLXN_15(7:0)
        SIGNAL XLXN_17
        SIGNAL in_fifo(71:0)
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL fiforead
        SIGNAL rst
        SIGNAL XLXN_32(0:0)
        SIGNAL valid_data
        SIGNAL out_fifo(71:0)
        SIGNAL in_fifo0(71:0)
        SIGNAL waddr(7:0)
        SIGNAL clk
        SIGNAL lastword
        PORT Input drop_pkt
        PORT Input firstword
        PORT Input fifowrite
        PORT Input in_fifo(71:0)
        PORT Input fiforead
        PORT Input rst
        PORT Output valid_data
        PORT Output out_fifo(71:0)
        PORT Input clk
        PORT Input lastword
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
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
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
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
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF dual9Bmem
            TIMESTAMP 2026 1 29 2 11 8
            RECTANGLE N 32 32 544 576 
            BEGIN LINE W 0 80 32 80 
            END LINE
            BEGIN LINE W 0 112 32 112 
            END LINE
            BEGIN LINE W 0 208 32 208 
            END LINE
            LINE N 0 272 32 272 
            BEGIN LINE W 0 336 32 336 
            END LINE
            LINE N 0 528 32 528 
            BEGIN LINE W 576 336 544 336 
            END LINE
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_3 fd8ce
            PIN C clk
            PIN CE XLXN_17
            PIN CLR rst
            PIN D(7:0) waddr(7:0)
            PIN Q(7:0) XLXN_15(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_6 fd
            PIN C
            PIN D fifowrite
            PIN Q XLXN_32(0:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 comp8
            PIN A(7:0) waddr(7:0)
            PIN B(7:0) raddr(7:0)
            PIN EQ XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_9 comp8
            PIN A(7:0) raddr(7:0)
            PIN B(7:0) XLXN_15(7:0)
            PIN EQ XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_10 or2
            PIN I0 XLXN_11
            PIN I1 XLXN_10
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_11 and2b1
            PIN I0 XLXN_22
            PIN I1 XLXN_12
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_12 and3b2
            PIN I0 XLXN_25
            PIN I1 XLXN_24
            PIN I2 fiforead
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_4 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_23
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_14 cb8ce
            PIN C clk
            PIN CE XLXN_23
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) raddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_7 reg9B
            PIN ce XLXN_7
            PIN clk clk
            PIN clr rst
            PIN d(71:0) in_fifo(71:0)
            PIN q(71:0) in_fifo0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 cb8cle
            PIN C clk
            PIN CE XLXN_32(0:0)
            PIN CLR rst
            PIN D(7:0) XLXN_15(7:0)
            PIN L XLXN_22
            PIN CEO
            PIN Q(7:0) waddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_16 vcc
            PIN P XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_17 dual9Bmem
            PIN addra(7:0) waddr(7:0)
            PIN dina(71:0) in_fifo0(71:0)
            PIN wea(0:0) XLXN_32(0:0)
            PIN clka
            PIN addrb(7:0) raddr(7:0)
            PIN clkb
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 464 688 R0
        INSTANCE XLXI_2 464 1072 R0
        INSTANCE XLXI_3 464 1504 R0
        INSTANCE XLXI_5 704 2480 R0
        INSTANCE XLXI_6 1200 736 R0
        INSTANCE XLXI_8 1120 1712 R0
        INSTANCE XLXI_9 1120 2112 R0
        INSTANCE XLXI_10 1040 960 R0
        INSTANCE XLXI_11 1392 1072 R0
        INSTANCE XLXI_12 1584 1776 R0
        INSTANCE XLXI_4 2000 2048 R0
        INSTANCE XLXI_14 2016 1504 R0
        BEGIN INSTANCE XLXI_7 1952 496 R0
        END INSTANCE
        INSTANCE XLXI_15 2032 1104 R0
        BEGIN BRANCH drop_pkt
            WIRE 368 2224 704 2224
        END BRANCH
        BEGIN BRANCH firstword
            WIRE 304 432 464 432
        END BRANCH
        BEGIN BRANCH fifowrite
            WIRE 1104 480 1200 480
        END BRANCH
        INSTANCE XLXI_16 1728 240 R0
        BEGIN BRANCH XLXN_7
            WIRE 1792 240 1792 272
            WIRE 1792 272 1952 272
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 848 432 944 432
            WIRE 944 432 944 832
            WIRE 944 832 1040 832
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 848 816 928 816
            WIRE 928 816 928 896
            WIRE 928 896 1040 896
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1296 864 1344 864
            WIRE 1344 864 1344 944
            WIRE 1344 944 1392 944
        END BRANCH
        BEGIN BRANCH raddr(7:0)
            WIRE 1104 1584 1120 1584
            WIRE 1104 1584 1104 1680
            WIRE 1104 1680 1104 1792
            WIRE 1104 1792 1120 1792
            WIRE 1104 1680 1568 1680
            WIRE 1568 1504 1568 1680
            WIRE 1568 1504 2528 1504
            WIRE 2400 1248 2528 1248
            WIRE 2528 1248 2528 1328
            WIRE 2528 1328 2656 1328
            WIRE 2528 1328 2528 1504
            BEGIN DISPLAY 1104 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_15(7:0)
            WIRE 848 1248 1376 1248
            WIRE 1024 1264 1024 1984
            WIRE 1024 1984 1120 1984
            WIRE 1024 1264 1808 1264
            WIRE 1376 720 1376 1248
            WIRE 1376 720 1808 720
            WIRE 1808 720 2032 720
            WIRE 1808 720 1808 1264
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 384 1120 384 1312
            WIRE 384 1312 464 1312
            WIRE 384 1120 1696 1120
            WIRE 1648 976 1696 976
            WIRE 1696 976 1696 1120
        END BRANCH
        BEGIN BRANCH in_fifo(71:0)
            WIRE 1920 464 1952 464
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 1088 2224 1920 2224
            WIRE 1360 848 1360 1008
            WIRE 1360 1008 1392 1008
            WIRE 1360 848 1920 848
            WIRE 1920 848 1920 2224
            WIRE 1920 848 2032 848
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1840 1648 1904 1648
            WIRE 1904 1648 1904 1792
            WIRE 1904 1792 2000 1792
            WIRE 1904 1312 1904 1648
            WIRE 1904 1312 2016 1312
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 1504 1488 1536 1488
            WIRE 1536 1488 1536 1648
            WIRE 1536 1648 1584 1648
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1504 1888 1536 1888
            WIRE 1536 1712 1536 1888
            WIRE 1536 1712 1584 1712
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1584 1376 1600 1376
            WIRE 1600 1376 1600 1568
            WIRE 1584 1568 1584 1584
            WIRE 1584 1568 1600 1568
        END BRANCH
        BEGIN BRANCH rst
            WIRE 464 1472 464 1552
            WIRE 464 1552 960 1552
            WIRE 960 400 1952 400
            WIRE 960 400 960 1184
            WIRE 960 1184 960 1200
            WIRE 960 1200 960 1552
            WIRE 960 1200 1968 1200
            WIRE 1968 1200 1968 1472
            WIRE 1968 1472 2016 1472
            WIRE 1968 1472 1968 2016
            WIRE 1968 2016 2000 2016
            WIRE 1904 1072 1968 1072
            WIRE 1968 1072 2032 1072
            WIRE 1968 1072 1968 1200
        END BRANCH
        BEGIN BRANCH XLXN_32(0:0)
            WIRE 1584 480 1728 480
            WIRE 1728 480 1728 912
            WIRE 1728 912 2032 912
            WIRE 1728 912 1728 1168
            WIRE 1728 1168 2464 1168
            WIRE 2464 1168 2464 1200
            WIRE 2464 1200 2656 1200
        END BRANCH
        BEGIN BRANCH valid_data
            WIRE 2384 1792 2464 1792
        END BRANCH
        BEGIN INSTANCE XLXI_17 2656 992 R0
        END INSTANCE
        BEGIN BRANCH out_fifo(71:0)
            WIRE 3232 1328 3312 1328
        END BRANCH
        IOMARKER 304 432 firstword R180 28
        IOMARKER 368 2224 drop_pkt R180 28
        IOMARKER 1104 480 fifowrite R180 28
        IOMARKER 1920 464 in_fifo(71:0) R180 28
        IOMARKER 1584 1376 fiforead R180 28
        IOMARKER 1904 1072 rst R180 28
        IOMARKER 2464 1792 valid_data R0 28
        IOMARKER 3312 1328 out_fifo(71:0) R0 28
        BEGIN BRANCH in_fifo0(71:0)
            WIRE 2336 272 2352 272
            WIRE 2352 272 2496 272
            WIRE 2496 272 2496 1104
            WIRE 2496 1104 2656 1104
            BEGIN DISPLAY 2352 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH waddr(7:0)
            WIRE 416 1136 416 1248
            WIRE 416 1248 448 1248
            WIRE 448 1248 464 1248
            WIRE 416 1136 912 1136
            WIRE 912 1136 912 1392
            WIRE 912 1392 1104 1392
            WIRE 1104 1392 1120 1392
            WIRE 1104 1392 1104 1456
            WIRE 896 160 896 1456
            WIRE 896 1456 1104 1456
            WIRE 896 160 2528 160
            WIRE 2528 160 2528 720
            WIRE 2528 720 2528 1072
            WIRE 2528 1072 2656 1072
            WIRE 2416 720 2528 720
            BEGIN DISPLAY 448 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 368 944 448 944
            WIRE 448 944 464 944
            WIRE 368 944 368 1376
            WIRE 368 1376 464 1376
            WIRE 368 1376 368 1856
            WIRE 368 1856 496 1856
            WIRE 496 1856 496 2352
            WIRE 496 2352 704 2352
            WIRE 448 560 464 560
            WIRE 448 560 448 688
            WIRE 448 688 448 944
            WIRE 448 688 1184 688
            WIRE 448 2352 496 2352
            WIRE 1184 336 1184 688
            WIRE 1184 336 1696 336
            WIRE 1696 336 1712 336
            WIRE 1712 336 1952 336
            WIRE 1712 336 1712 976
            WIRE 1712 976 2032 976
            WIRE 1712 976 1712 1360
            WIRE 1712 1360 1712 1376
            WIRE 1712 1376 2016 1376
            WIRE 1712 1360 1888 1360
            WIRE 1888 1360 1888 1920
            WIRE 1888 1920 2000 1920
        END BRANCH
        IOMARKER 448 2352 clk R180 28
        BEGIN BRANCH lastword
            WIRE 288 816 464 816
        END BRANCH
        IOMARKER 288 816 lastword R180 28
    END SHEET
END SCHEMATIC
