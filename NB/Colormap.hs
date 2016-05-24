-- |
module NB.Colormap
  ( greyColormap
  , blackbodyColormap
  ) where

import Data.Colour
import Data.Colour.RGBSpace
import Data.Colour.RGBSpace.HSL
import Data.Colour.SRGB

-- | Grey colormap
greyColormap :: Double -> AlphaColour Double
greyColormap = opaque . uncurryRGB (rgbUsingSpace sRGBSpace) . hsl 0 0

-- Black body radiation color map
-- http://www.cs.uml.edu/~haim/ColorCenter/
--
-- http://www.cs.uml.edu/~haim/ColorCenter/Scales/HO.256
blackbodyColormap :: Double -> AlphaColour Double
blackbodyColormap z
  = opaque $ rgbUsingSpace sRGBSpace (r/255) (g/255) (b/255)
  where
    i = case ceiling $ z * 250 of
          k | k < 0     -> 0
            | k > 250   -> 250
            | otherwise -> k    
    (r,g,b) = blackBodyColorMap !! i

blackBodyColorMap :: [(Double,Double,Double)]
blackBodyColorMap =
  [ (  0,           0,           0)
  , ( 35,           0,           0)
  , ( 52,           0,           0)
  , ( 60,           0,           0)
  , ( 63,           1,           0)
  , ( 64,           2,           0)
  , ( 68,           5,           0)
  , ( 69,           6,           0)
  , ( 72,           8,           0)
  , ( 74,          10,           0)
  , ( 77,          12,           0)
  , ( 78,          14,           0)
  , ( 81,          16,           0)
  , ( 83,          17,           0)
  , ( 85,          19,           0)
  , ( 86,          20,           0)
  , ( 89,          22,           0)
  , ( 91,          24,           0)
  , ( 92,          25,           0)
  , ( 94,          26,           0)
  , ( 95,          28,           0)
  , ( 98,          30,           0)
  , (100,          31,           0)
  , (102,          33,           0)
  , (103,          34,           0)
  , (105,          35,           0)
  , (106,          36,           0)
  , (108,          38,           0)
  , (109,          39,           0)
  , (111,          40,           0)
  , (112,          42,           0)
  , (114,          43,           0)
  , (115,          44,           0)
  , (117,          45,           0)
  , (119,          47,           0)
  , (119,          47,           0)
  , (120,          48,           0)
  , (122,          49,           0)
  , (123,          51,           0)
  , (125,          52,           0)
  , (125,          52,           0)
  , (126,          53,           0)
  , (128,          54,           0)
  , (129,          56,           0)
  , (129,          56,           0)
  , (131,          57,           0)
  , (132,          58,           0)
  , (134,          59,           0)
  , (134,          59,           0)
  , (136,          61,           0)
  , (137,          62,           0)
  , (137,          62,           0)
  , (139,          63,           0)
  , (139,          63,           0)
  , (140,          65,           0)
  , (142,          66,           0)
  , (142,          66,           0)
  , (143,          67,           0)
  , (143,          67,           0)
  , (145,          68,           0)
  , (145,          68,           0)
  , (146,          70,           0)
  , (146,          70,           0)
  , (148,          71,           0)
  , (148,          71,           0)
  , (149,          72,           0)
  , (149,          72,           0)
  , (151,          73,           0)
  , (151,          73,           0)
  , (153,          75,           0)
  , (153,          75,           0)
  , (154,          76,           0)
  , (154,          76,           0)
  , (154,          76,           0)
  , (156,          77,           0)
  , (156,          77,           0)
  , (157,          79,           0)
  , (157,          79,           0)
  , (159,          80,           0)
  , (159,          80,           0)
  , (159,          80,           0)
  , (160,          81,           0)
  , (160,          81,           0)
  , (162,          82,           0)
  , (162,          82,           0)
  , (163,          84,           0)
  , (163,          84,           0)
  , (165,          85,           0)
  , (165,          85,           0)
  , (166,          86,           0)
  , (166,          86,           0)
  , (166,          86,           0)
  , (168,          87,           0)
  , (168,          87,           0)
  , (170,          89,           0)
  , (170,          89,           0)
  , (171,          90,           0)
  , (171,          90,           0)
  , (173,          91,           0)
  , (173,          91,           0)
  , (174,          93,           0)
  , (174,          93,           0)
  , (176,          94,           0)
  , (176,          94,           0)
  , (177,          95,           0)
  , (177,          95,           0)
  , (179,          96,           0)
  , (179,          96,           0)
  , (180,          98,           0)
  , (182,          99,           0)
  , (182,          99,           0)
  , (183,         100,           0)
  , (183,         100,           0)
  , (185,         102,           0)
  , (185,         102,           0)
  , (187,         103,           0)
  , (187,         103,           0)
  , (188,         104,           0)
  , (188,         104,           0)
  , (190,         105,           0)
  , (191,         107,           0)
  , (191,         107,           0)
  , (193,         108,           0)
  , (193,         108,           0)
  , (194,         109,           0)
  , (196,         110,           0)
  , (196,         110,           0)
  , (197,         112,           0)
  , (197,         112,           0)
  , (199,         113,           0)
  , (200,         114,           0)
  , (200,         114,           0)
  , (202,         116,           0)
  , (202,         116,           0)
  , (204,         117,           0)
  , (205,         118,           0)
  , (205,         118,           0)
  , (207,         119,           0)
  , (208,         121,           0)
  , (208,         121,           0)
  , (210,         122,           0)
  , (211,         123,           0)
  , (211,         123,           0)
  , (213,         124,           0)
  , (214,         126,           0)
  , (214,         126,           0)
  , (216,         127,           0)
  , (217,         128,           0)
  , (217,         128,           0)
  , (219,         130,           0)
  , (221,         131,           0)
  , (221,         131,           0)
  , (222,         132,           0)
  , (224,         133,           0)
  , (224,         133,           0)
  , (225,         135,           0)
  , (227,         136,           0)
  , (227,         136,           0)
  , (228,         137,           0)
  , (230,         138,           0)
  , (230,         138,           0)
  , (231,         140,           0)
  , (233,         141,           0)
  , (233,         141,           0)
  , (234,         142,           0)
  , (236,         144,           0)
  , (236,         144,           0)
  , (238,         145,           0)
  , (239,         146,           0)
  , (241,         147,           0)
  , (241,         147,           0)
  , (242,         149,           0)
  , (244,         150,           0)
  , (244,         150,           0)
  , (245,         151,           0)
  , (247,         153,           0)
  , (247,         153,           0)
  , (248,         154,           0)
  , (250,         155,           0)
  , (251,         156,           0)
  , (251,         156,           0)
  , (253,         158,           0)
  , (255,         159,           0)
  , (255,         159,           0)
  , (255,         160,           0)
  , (255,         161,           0)
  , (255,         163,           0)
  , (255,         163,           0)
  , (255,         164,           0)
  , (255,         165,           0)
  , (255,         167,           0)
  , (255,         167,           0)
  , (255,         168,           0)
  , (255,         169,           0)
  , (255,         169,           0)
  , (255,         170,           0)
  , (255,         172,           0)
  , (255,         173,           0)
  , (255,         173,           0)
  , (255,         174,           0)
  , (255,         175,           0)
  , (255,         177,           0)
  , (255,         178,           0)
  , (255,         179,           0)
  , (255,         181,           0)
  , (255,         181,           0)
  , (255,         182,           0)
  , (255,         183,           0)
  , (255,         184,           0)
  , (255,         187,           7)
  , (255,         188,          10)
  , (255,         189,          14)
  , (255,         191,          18)
  , (255,         192,          21)
  , (255,         193,          25)
  , (255,         195,          29)
  , (255,         197,          36)
  , (255,         198,          40)
  , (255,         200,          43)
  , (255,         202,          51)
  , (255,         204,          54)
  , (255,         206,          61)
  , (255,         207,          65)
  , (255,         210,          72)
  , (255,         211,          76)
  , (255,         214,          83)
  , (255,         216,          91)
  , (255,         219,          98)
  , (255,         221,         105)
  , (255,         223,         109)
  , (255,         225,         116)
  , (255,         228,         123)
  , (255,         232,         134)
  , (255,         234,         142)
  , (255,         237,         149)
  , (255,         239,         156)
  , (255,         240,         160)
  , (255,         243,         167)
  , (255,         246,         174)
  , (255,         248,         182)
  , (255,         249,         185)
  , (255,         252,         193)
  , (255,         253,         196)
  , (255,         255,         204)
  , (255,         255,         207)
  , (255,         255,         211)
  , (255,         255,         218)
  , (255,         255,         222)
  , (255,         255,         225)
  , (255,         255,         229)
  , (255,         255,         233)
  , (255,         255,         236)
  , (255,         255,         240)
  , (255,         255,         244)
  , (255,         255,         247)
  , (255,         255,         255)
  ]