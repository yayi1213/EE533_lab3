VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL datacomp(55:0)
        SIGNAL datain(55:0)
        SIGNAL wildcard(6:0)
        SIGNAL datain(111:0)
        SIGNAL datain(63:8)
        SIGNAL datain(71:16)
        SIGNAL datain(79:24)
        SIGNAL datain(87:32)
        SIGNAL datain(95:40)
        SIGNAL datain(103:48)
        SIGNAL datain(111:56)
        SIGNAL match
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        PORT Input datacomp(55:0)
        PORT Input wildcard(6:0)
        PORT Input datain(111:0)
        PORT Output match
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2026 1 29 0 19 32
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(63:8)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(71:16)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(79:24)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(87:32)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(95:40)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(103:48)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(111:56)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_14 or8
            PIN I0 XLXN_25
            PIN I1 XLXN_24
            PIN I2 XLXN_23
            PIN I3 XLXN_22
            PIN I4 XLXN_21
            PIN I5 XLXN_20
            PIN I6 XLXN_19
            PIN I7 XLXN_18
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1120 400 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1120 656 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1120 912 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1120 1168 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1120 1424 R0
        END INSTANCE
        BEGIN BRANCH datacomp(55:0)
            WIRE 928 240 960 240
            WIRE 960 240 1120 240
            WIRE 960 240 960 496
            WIRE 960 496 960 752
            WIRE 960 752 960 1008
            WIRE 960 1008 960 1264
            WIRE 960 1264 960 1536
            WIRE 960 1536 960 1824
            WIRE 960 1824 960 2128
            WIRE 960 2128 1120 2128
            WIRE 960 1824 1120 1824
            WIRE 960 1536 1120 1536
            WIRE 960 1264 1120 1264
            WIRE 960 1008 1120 1008
            WIRE 960 752 1120 752
            WIRE 960 496 1120 496
        END BRANCH
        BEGIN BRANCH datain(55:0)
            WIRE 1008 304 1120 304
            BEGIN DISPLAY 1008 304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wildcard(6:0)
            WIRE 928 368 992 368
            WIRE 992 368 1120 368
            WIRE 992 368 992 624
            WIRE 992 624 1120 624
            WIRE 992 624 992 880
            WIRE 992 880 1120 880
            WIRE 992 880 992 1136
            WIRE 992 1136 1120 1136
            WIRE 992 1136 992 1392
            WIRE 992 1392 1120 1392
            WIRE 992 1392 992 1664
            WIRE 992 1664 1120 1664
            WIRE 992 1664 992 1952
            WIRE 992 1952 992 2256
            WIRE 992 2256 1120 2256
            WIRE 992 1952 1008 1952
            WIRE 1008 1952 1120 1952
        END BRANCH
        BEGIN BRANCH datain(111:0)
            WIRE 384 128 688 128
        END BRANCH
        IOMARKER 384 128 datain(111:0) R180 28
        IOMARKER 928 240 datacomp(55:0) R180 28
        IOMARKER 928 368 wildcard(6:0) R180 28
        BEGIN INSTANCE XLXI_6 1120 1696 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1120 1984 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1120 2288 R0
        END INSTANCE
        BEGIN BRANCH datain(63:8)
            WIRE 1040 560 1120 560
            BEGIN DISPLAY 1040 560 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(71:16)
            WIRE 1040 816 1120 816
            BEGIN DISPLAY 1040 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 1040 1072 1120 1072
            BEGIN DISPLAY 1040 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 1040 1328 1120 1328
            BEGIN DISPLAY 1040 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 1040 1600 1120 1600
            BEGIN DISPLAY 1040 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 1040 1888 1120 1888
            BEGIN DISPLAY 1040 1888 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 1040 2192 1120 2192
            BEGIN DISPLAY 1040 2192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_14 1872 1568 R0
        BEGIN BRANCH match
            WIRE 2128 1280 2192 1280
        END BRANCH
        IOMARKER 2192 1280 match R0 28
        BEGIN BRANCH XLXN_18
            WIRE 1504 240 1872 240
            WIRE 1872 240 1872 1056
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1504 496 1680 496
            WIRE 1680 496 1680 1120
            WIRE 1680 1120 1872 1120
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1504 752 1664 752
            WIRE 1664 752 1664 1184
            WIRE 1664 1184 1872 1184
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 1504 1008 1648 1008
            WIRE 1648 1008 1648 1248
            WIRE 1648 1248 1872 1248
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 1504 1264 1680 1264
            WIRE 1680 1264 1680 1312
            WIRE 1680 1312 1872 1312
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1504 1536 1680 1536
            WIRE 1680 1376 1680 1536
            WIRE 1680 1376 1872 1376
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 1504 1824 1696 1824
            WIRE 1696 1440 1696 1824
            WIRE 1696 1440 1872 1440
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1504 2128 1872 2128
            WIRE 1872 1504 1872 2128
        END BRANCH
    END SHEET
END SCHEMATIC
