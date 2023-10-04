CREATE DATABASE statistics_essentials;

use statistics_essentials;

CREATE TABLE store_sales
(
    sale_date date NOT NULL,
    day_of_year integer NOT NULL,
    employee_shifts integer,
    units_sold integer,
    revenue integer,
    month_of_year integer
);

insert into store_sales values ('2017-1-1',1,3,241,2892,1);
insert into store_sales values ('2017-1-2',2,3,205,2460,1);
insert into store_sales values ('2017-1-3',3,3,200,2400,1);
insert into store_sales values ('2017-1-4',4,3,458,5496,1);
insert into store_sales values ('2017-1-5',5,3,339,4068,1);
insert into store_sales values ('2017-1-6',6,3,427,5124,1);
insert into store_sales values ('2017-1-7',7,3,168,2016,1);
insert into store_sales values ('2017-1-8',8,3,223,2676,1);
insert into store_sales values ('2017-1-9',9,3,267,3204,1);
insert into store_sales values ('2017-1-10',10,3,228,2736,1);
insert into store_sales values ('2017-1-11',11,3,374,4488,1);
insert into store_sales values ('2017-1-12',12,3,189,2268,1);
insert into store_sales values ('2017-1-13',13,3,238,2856,1);
insert into store_sales values ('2017-1-14',14,3,466,5592,1);
insert into store_sales values ('2017-1-15',15,3,133,1596,1);
insert into store_sales values ('2017-1-16',16,3,150,1800,1);
insert into store_sales values ('2017-1-17',17,3,277,3324,1);
insert into store_sales values ('2017-1-18',18,3,144,1728,1);
insert into store_sales values ('2017-1-19',19,3,169,2028,1);
insert into store_sales values ('2017-1-20',20,3,355,4260,1);
insert into store_sales values ('2017-1-21',21,3,339,4068,1);
insert into store_sales values ('2017-1-22',22,3,342,4104,1);
insert into store_sales values ('2017-1-23',23,3,329,3948,1);
insert into store_sales values ('2017-1-24',24,3,276,3312,1);
insert into store_sales values ('2017-1-25',25,3,238,2856,1);
insert into store_sales values ('2017-1-26',26,3,205,2460,1);
insert into store_sales values ('2017-1-27',27,3,192,2304,1);
insert into store_sales values ('2017-1-28',28,3,225,2700,1);
insert into store_sales values ('2017-1-29',29,3,300,3600,1);
insert into store_sales values ('2017-1-30',30,3,348,4176,1);
insert into store_sales values ('2017-1-31',31,3,428,5136,1);
insert into store_sales values ('2017-2-1',32,3,123,1476,2);
insert into store_sales values ('2017-2-2',33,3,117,1404,2);
insert into store_sales values ('2017-2-3',34,3,112,1344,2);
insert into store_sales values ('2017-2-4',35,4,370,4440,2);
insert into store_sales values ('2017-2-5',36,4,466,5592,2);
insert into store_sales values ('2017-2-6',37,4,577,6924,2);
insert into store_sales values ('2017-2-7',38,4,571,6852,2);
insert into store_sales values ('2017-2-8',39,4,586,7032,2);
insert into store_sales values ('2017-2-9',40,4,300,3600,2);
insert into store_sales values ('2017-2-10',41,4,495,5940,2);
insert into store_sales values ('2017-2-11',42,4,595,7140,2);
insert into store_sales values ('2017-2-12',43,4,311,3732,2);
insert into store_sales values ('2017-2-13',44,4,687,8244,2);
insert into store_sales values ('2017-2-14',45,4,527,6324,2);
insert into store_sales values ('2017-2-15',46,4,458,5496,2);
insert into store_sales values ('2017-2-16',47,4,507,6084,2);
insert into store_sales values ('2017-2-17',48,4,414,4968,2);
insert into store_sales values ('2017-2-18',49,4,700,8400,2);
insert into store_sales values ('2017-2-19',50,4,654,7848,2);
insert into store_sales values ('2017-2-20',51,4,681,8172,2);
insert into store_sales values ('2017-2-21',52,4,549,6588,2);
insert into store_sales values ('2017-2-22',53,4,374,4488,2);
insert into store_sales values ('2017-2-23',54,4,410,4920,2);
insert into store_sales values ('2017-2-24',55,4,422,5064,2);
insert into store_sales values ('2017-2-25',56,4,382,4584,2);
insert into store_sales values ('2017-2-26',57,4,664,7968,2);
insert into store_sales values ('2017-2-27',58,4,566,6792,2);
insert into store_sales values ('2017-2-28',59,4,336,4032,2);
insert into store_sales values ('2017-3-1',60,4,475,5700,3);
insert into store_sales values ('2017-3-2',61,4,486,5832,3);
insert into store_sales values ('2017-3-3',62,4,393,4716,3);
insert into store_sales values ('2017-3-4',63,4,575,6900,3);
insert into store_sales values ('2017-3-5',64,4,662,7944,3);
insert into store_sales values ('2017-3-6',65,4,606,7272,3);
insert into store_sales values ('2017-3-7',66,4,652,7824,3);
insert into store_sales values ('2017-3-8',67,4,627,7524,3);
insert into store_sales values ('2017-3-9',68,4,672,8064,3);
insert into store_sales values ('2017-3-10',69,4,495,5940,3);
insert into store_sales values ('2017-3-11',70,4,401,4812,3);
insert into store_sales values ('2017-3-12',71,4,471,5652,3);
insert into store_sales values ('2017-3-13',72,4,341,4092,3);
insert into store_sales values ('2017-3-14',73,4,512,6144,3);
insert into store_sales values ('2017-3-15',74,4,534,6408,3);
insert into store_sales values ('2017-3-16',75,4,585,7020,3);
insert into store_sales values ('2017-3-17',76,4,321,3852,3);
insert into store_sales values ('2017-3-18',77,4,331,3972,3);
insert into store_sales values ('2017-3-19',78,4,353,4236,3);
insert into store_sales values ('2017-3-20',79,4,665,7980,3);
insert into store_sales values ('2017-3-21',80,4,403,4836,3);
insert into store_sales values ('2017-3-22',81,4,542,6504,3);
insert into store_sales values ('2017-3-23',82,4,677,8124,3);
insert into store_sales values ('2017-3-24',83,4,627,7524,3);
insert into store_sales values ('2017-3-25',84,4,662,7944,3);
insert into store_sales values ('2017-3-26',85,4,687,8244,3);
insert into store_sales values ('2017-3-27',86,4,451,5412,3);
insert into store_sales values ('2017-3-28',87,4,555,6660,3);
insert into store_sales values ('2017-3-29',88,4,536,6432,3);
insert into store_sales values ('2017-3-30',89,4,524,6288,3);
insert into store_sales values ('2017-3-31',90,4,313,3756,3);
insert into store_sales values ('2017-4-1',91,4,686,8232,4);
insert into store_sales values ('2017-4-2',92,4,393,4716,4);
insert into store_sales values ('2017-4-3',93,4,373,4476,4);
insert into store_sales values ('2017-4-4',94,4,590,7080,4);
insert into store_sales values ('2017-4-5',95,4,358,4296,4);
insert into store_sales values ('2017-4-6',96,4,561,6732,4);
insert into store_sales values ('2017-4-7',97,4,656,7872,4);
insert into store_sales values ('2017-4-8',98,4,592,7104,4);
insert into store_sales values ('2017-4-9',99,4,394,4728,4);
insert into store_sales values ('2017-4-10',100,4,336,4032,4);
insert into store_sales values ('2017-4-11',101,4,515,6180,4);
insert into store_sales values ('2017-4-12',102,4,650,7800,4);
insert into store_sales values ('2017-4-13',103,4,333,3996,4);
insert into store_sales values ('2017-4-14',104,4,488,5856,4);
insert into store_sales values ('2017-4-15',105,4,403,4836,4);
insert into store_sales values ('2017-4-16',106,4,612,7344,4);
insert into store_sales values ('2017-4-17',107,4,636,7632,4);
insert into store_sales values ('2017-4-18',108,4,388,4656,4);
insert into store_sales values ('2017-4-19',109,4,419,5028,4);
insert into store_sales values ('2017-4-20',110,4,445,5340,4);
insert into store_sales values ('2017-4-21',111,4,416,4992,4);
insert into store_sales values ('2017-4-22',112,4,450,5400,4);
insert into store_sales values ('2017-4-23',113,4,681,8172,4);
insert into store_sales values ('2017-4-24',114,4,595,7140,4);
insert into store_sales values ('2017-4-25',115,4,695,8340,4);
insert into store_sales values ('2017-4-26',116,4,695,8340,4);
insert into store_sales values ('2017-4-27',117,4,471,5652,4);
insert into store_sales values ('2017-4-28',118,4,582,6984,4);
insert into store_sales values ('2017-4-29',119,4,356,4272,4);
insert into store_sales values ('2017-4-30',120,4,325,3900,4);
insert into store_sales values ('2017-5-1',121,4,517,6204,5);
insert into store_sales values ('2017-5-2',122,4,472,5664,5);
insert into store_sales values ('2017-5-3',123,4,510,6120,5);
insert into store_sales values ('2017-5-4',124,4,685,8220,5);
insert into store_sales values ('2017-5-5',125,4,302,3624,5);
insert into store_sales values ('2017-5-6',126,4,384,4608,5);
insert into store_sales values ('2017-5-7',127,4,504,6048,5);
insert into store_sales values ('2017-5-8',128,5,513,6156,5);
insert into store_sales values ('2017-5-9',129,5,313,3756,5);
insert into store_sales values ('2017-5-10',130,5,307,3684,5);
insert into store_sales values ('2017-5-11',131,5,466,5592,5);
insert into store_sales values ('2017-5-12',132,5,486,5832,5);
insert into store_sales values ('2017-5-13',133,5,569,6828,5);
insert into store_sales values ('2017-5-14',134,5,338,4056,5);
insert into store_sales values ('2017-5-15',135,5,327,3924,5);
insert into store_sales values ('2017-5-16',136,5,752,9024,5);
insert into store_sales values ('2017-5-17',137,5,761,9132,5);
insert into store_sales values ('2017-5-18',138,5,765,9180,5);
insert into store_sales values ('2017-5-19',139,5,534,6408,5);
insert into store_sales values ('2017-5-20',140,5,671,8052,5);
insert into store_sales values ('2017-5-21',141,5,493,5916,5);
insert into store_sales values ('2017-5-22',142,5,730,8760,5);
insert into store_sales values ('2017-5-23',143,5,739,8868,5);
insert into store_sales values ('2017-5-24',144,5,467,5604,5);
insert into store_sales values ('2017-5-25',145,5,736,8832,5);
insert into store_sales values ('2017-5-26',146,5,415,4980,5);
insert into store_sales values ('2017-5-27',147,5,788,9456,5);
insert into store_sales values ('2017-5-28',148,5,446,5352,5);
insert into store_sales values ('2017-5-29',149,5,717,8604,5);
insert into store_sales values ('2017-5-30',150,5,713,8556,5);
insert into store_sales values ('2017-5-31',151,5,475,5700,5);
insert into store_sales values ('2017-6-1',152,5,724,8688,6);
insert into store_sales values ('2017-6-2',153,5,465,5580,6);
insert into store_sales values ('2017-6-3',154,5,515,6180,6);
insert into store_sales values ('2017-6-4',155,5,711,8532,6);
insert into store_sales values ('2017-6-5',156,5,641,7692,6);
insert into store_sales values ('2017-6-6',157,5,793,9516,6);
insert into store_sales values ('2017-6-7',158,5,684,8208,6);
insert into store_sales values ('2017-6-8',159,5,637,7644,6);
insert into store_sales values ('2017-6-9',160,5,473,5676,6);
insert into store_sales values ('2017-6-10',161,5,448,5376,6);
insert into store_sales values ('2017-6-11',162,5,440,5280,6);
insert into store_sales values ('2017-6-12',163,5,517,6204,6);
insert into store_sales values ('2017-6-13',164,5,404,4848,6);
insert into store_sales values ('2017-6-14',165,5,486,5832,6);
insert into store_sales values ('2017-6-15',166,5,606,7272,6);
insert into store_sales values ('2017-6-16',167,5,427,5124,6);
insert into store_sales values ('2017-6-17',168,5,565,6780,6);
insert into store_sales values ('2017-6-18',169,5,635,7620,6);
insert into store_sales values ('2017-6-19',170,5,589,7068,6);
insert into store_sales values ('2017-6-20',171,5,508,6096,6);
insert into store_sales values ('2017-6-21',172,5,561,6732,6);
insert into store_sales values ('2017-6-22',173,5,408,4896,6);
insert into store_sales values ('2017-6-23',174,5,551,6612,6);
insert into store_sales values ('2017-6-24',175,5,773,9276,6);
insert into store_sales values ('2017-6-25',176,5,630,7560,6);
insert into store_sales values ('2017-6-26',177,5,758,9096,6);
insert into store_sales values ('2017-6-27',178,5,776,9312,6);
insert into store_sales values ('2017-6-28',179,5,480,5760,6);
insert into store_sales values ('2017-6-29',180,5,555,6660,6);
insert into store_sales values ('2017-6-30',181,5,746,8952,6);
insert into store_sales values ('2017-7-1',182,5,514,6168,7);
insert into store_sales values ('2017-7-2',183,5,501,6012,7);
insert into store_sales values ('2017-7-3',184,5,686,8232,7);
insert into store_sales values ('2017-7-4',185,5,714,8568,7);
insert into store_sales values ('2017-7-5',186,5,506,6072,7);
insert into store_sales values ('2017-7-6',187,5,405,4860,7);
insert into store_sales values ('2017-7-7',188,5,706,8472,7);
insert into store_sales values ('2017-7-8',189,5,413,4956,7);
insert into store_sales values ('2017-7-9',190,5,553,6636,7);
insert into store_sales values ('2017-7-10',191,5,538,6456,7);
insert into store_sales values ('2017-7-11',192,5,582,6984,7);
insert into store_sales values ('2017-7-12',193,5,684,8208,7);
insert into store_sales values ('2017-7-13',194,5,752,9024,7);
insert into store_sales values ('2017-7-14',195,5,414,4968,7);
insert into store_sales values ('2017-7-15',196,5,716,8592,7);
insert into store_sales values ('2017-7-16',197,5,593,7116,7);
insert into store_sales values ('2017-7-17',198,5,723,8676,7);
insert into store_sales values ('2017-7-18',199,5,795,9540,7);
insert into store_sales values ('2017-7-19',200,5,432,5184,7);
insert into store_sales values ('2017-7-20',201,5,793,9516,7);
insert into store_sales values ('2017-7-21',202,4,521,6252,7);
insert into store_sales values ('2017-7-22',203,4,588,7056,7);
insert into store_sales values ('2017-7-23',204,4,668,8016,7);
insert into store_sales values ('2017-7-24',205,4,690,8280,7);
insert into store_sales values ('2017-7-25',206,4,744,8928,7);
insert into store_sales values ('2017-7-26',207,4,521,6252,7);
insert into store_sales values ('2017-7-27',208,4,552,6624,7);
insert into store_sales values ('2017-7-28',209,4,604,7248,7);
insert into store_sales values ('2017-7-29',210,4,453,5436,7);
insert into store_sales values ('2017-7-30',211,4,783,9396,7);
insert into store_sales values ('2017-7-31',212,4,434,5208,7);
insert into store_sales values ('2017-8-1',213,4,459,5508,8);
insert into store_sales values ('2017-8-2',214,4,687,8244,8);
insert into store_sales values ('2017-8-3',215,4,589,7068,8);
insert into store_sales values ('2017-8-4',216,4,652,7824,8);
insert into store_sales values ('2017-8-5',217,4,439,5268,8);
insert into store_sales values ('2017-8-6',218,4,526,6312,8);
insert into store_sales values ('2017-8-7',219,4,416,4992,8);
insert into store_sales values ('2017-8-8',220,4,735,8820,8);
insert into store_sales values ('2017-8-9',221,4,550,6600,8);
insert into store_sales values ('2017-8-10',222,4,409,4908,8);
insert into store_sales values ('2017-8-11',223,4,583,6996,8);
insert into store_sales values ('2017-8-12',224,4,494,5928,8);
insert into store_sales values ('2017-8-13',225,4,530,6360,8);
insert into store_sales values ('2017-8-14',226,4,585,7020,8);
insert into store_sales values ('2017-8-15',227,4,528,6336,8);
insert into store_sales values ('2017-8-16',228,4,683,8196,8);
insert into store_sales values ('2017-8-17',229,4,501,6012,8);
insert into store_sales values ('2017-8-18',230,4,314,3768,8);
insert into store_sales values ('2017-8-19',231,4,357,4284,8);
insert into store_sales values ('2017-8-20',232,4,581,6972,8);
insert into store_sales values ('2017-8-21',233,4,372,4464,8);
insert into store_sales values ('2017-8-22',234,3,420,5040,8);
insert into store_sales values ('2017-8-23',235,3,435,5220,8);
insert into store_sales values ('2017-8-24',236,3,637,7644,8);
insert into store_sales values ('2017-8-25',237,3,449,5388,8);
insert into store_sales values ('2017-8-26',238,3,380,4560,8);
insert into store_sales values ('2017-8-27',239,3,548,6576,8);
insert into store_sales values ('2017-8-28',240,3,664,7968,8);
insert into store_sales values ('2017-8-29',241,3,317,3804,8);
insert into store_sales values ('2017-8-30',242,3,473,5676,8);
insert into store_sales values ('2017-8-31',243,3,503,6036,8);
insert into store_sales values ('2017-9-1',244,3,413,4956,9);
insert into store_sales values ('2017-9-2',245,3,377,4524,9);
insert into store_sales values ('2017-9-3',246,3,436,5232,9);
insert into store_sales values ('2017-9-4',247,3,484,5808,9);
insert into store_sales values ('2017-9-5',248,3,651,7812,9);
insert into store_sales values ('2017-9-6',249,3,555,6660,9);
insert into store_sales values ('2017-9-7',250,3,307,3684,9);
insert into store_sales values ('2017-9-8',251,3,555,6660,9);
insert into store_sales values ('2017-9-9',252,3,465,5580,9);
insert into store_sales values ('2017-9-10',253,3,371,4452,9);
insert into store_sales values ('2017-9-11',254,3,619,7428,9);
insert into store_sales values ('2017-9-12',255,3,598,7176,9);
insert into store_sales values ('2017-9-13',256,3,308,3696,9);
insert into store_sales values ('2017-9-14',257,3,509,6108,9);
insert into store_sales values ('2017-9-15',258,3,524,6288,9);
insert into store_sales values ('2017-9-16',259,3,442,5304,9);
insert into store_sales values ('2017-9-17',260,3,689,8268,9);
insert into store_sales values ('2017-9-18',261,3,301,3612,9);
insert into store_sales values ('2017-9-19',262,3,381,4572,9);
insert into store_sales values ('2017-9-20',263,3,384,4608,9);
insert into store_sales values ('2017-9-21',264,3,116,1392,9);
insert into store_sales values ('2017-9-22',265,3,436,5232,9);
insert into store_sales values ('2017-9-23',266,3,252,3024,9);
insert into store_sales values ('2017-9-24',267,3,483,5796,9);
insert into store_sales values ('2017-9-25',268,3,262,3144,9);
insert into store_sales values ('2017-9-26',269,3,204,2448,9);
insert into store_sales values ('2017-9-27',270,3,418,5016,9);
insert into store_sales values ('2017-9-28',271,3,178,2136,9);
insert into store_sales values ('2017-9-29',272,3,485,5820,9);
insert into store_sales values ('2017-9-30',273,3,210,2520,9);
insert into store_sales values ('2017-10-1',274,3,315,3780,10);
insert into store_sales values ('2017-10-2',275,3,305,3660,10);
insert into store_sales values ('2017-10-3',276,3,378,4536,10);
insert into store_sales values ('2017-10-4',277,3,184,2208,10);
insert into store_sales values ('2017-10-5',278,3,239,2868,10);
insert into store_sales values ('2017-10-6',279,3,242,2904,10);
insert into store_sales values ('2017-10-7',280,3,100,1200,10);
insert into store_sales values ('2017-10-8',281,3,311,3732,10);
insert into store_sales values ('2017-10-9',282,3,171,2052,10);
insert into store_sales values ('2017-10-10',283,3,210,2520,10);
insert into store_sales values ('2017-10-11',284,3,477,5724,10);
insert into store_sales values ('2017-10-12',285,3,297,3564,10);
insert into store_sales values ('2017-10-13',286,3,188,2256,10);
insert into store_sales values ('2017-10-14',287,3,107,1284,10);
insert into store_sales values ('2017-10-15',288,3,488,5856,10);
insert into store_sales values ('2017-10-16',289,3,292,3504,10);
insert into store_sales values ('2017-10-17',290,3,247,2964,10);
insert into store_sales values ('2017-10-18',291,3,267,3204,10);
insert into store_sales values ('2017-10-19',292,3,129,1548,10);
insert into store_sales values ('2017-10-20',293,3,356,4272,10);
insert into store_sales values ('2017-10-21',294,3,121,1452,10);
insert into store_sales values ('2017-10-22',295,4,252,3024,10);
insert into store_sales values ('2017-10-23',296,4,168,2016,10);
insert into store_sales values ('2017-10-24',297,4,327,3924,10);
insert into store_sales values ('2017-10-25',298,4,375,4500,10);
insert into store_sales values ('2017-10-26',299,4,270,3240,10);
insert into store_sales values ('2017-10-27',300,4,199,2388,10);
insert into store_sales values ('2017-10-28',301,4,296,3552,10);
insert into store_sales values ('2017-10-29',302,4,141,1692,10);
insert into store_sales values ('2017-10-30',303,4,497,5964,10);
insert into store_sales values ('2017-10-31',304,4,106,1272,10);
insert into store_sales values ('2017-11-1',305,4,140,1680,11);
insert into store_sales values ('2017-11-2',306,4,123,1476,11);
insert into store_sales values ('2017-11-3',307,4,643,7716,11);
insert into store_sales values ('2017-11-4',308,4,687,8244,11);
insert into store_sales values ('2017-11-5',309,4,761,9132,11);
insert into store_sales values ('2017-11-6',310,4,448,5376,11);
insert into store_sales values ('2017-11-7',311,4,375,4500,11);
insert into store_sales values ('2017-11-8',312,4,688,8256,11);
insert into store_sales values ('2017-11-9',313,4,560,6720,11);
insert into store_sales values ('2017-11-10',314,4,619,7428,11);
insert into store_sales values ('2017-11-11',315,4,341,4092,11);
insert into store_sales values ('2017-11-12',316,4,622,7464,11);
insert into store_sales values ('2017-11-13',317,4,511,6132,11);
insert into store_sales values ('2017-11-14',318,4,511,6132,11);
insert into store_sales values ('2017-11-15',319,4,399,4788,11);
insert into store_sales values ('2017-11-16',320,4,416,4992,11);
insert into store_sales values ('2017-11-17',321,4,704,8448,11);
insert into store_sales values ('2017-11-18',322,4,665,7980,11);
insert into store_sales values ('2017-11-19',323,4,615,7380,11);
insert into store_sales values ('2017-11-20',324,4,308,3696,11);
insert into store_sales values ('2017-11-21',325,4,536,6432,11);
insert into store_sales values ('2017-11-22',326,4,361,4332,11);
insert into store_sales values ('2017-11-23',327,5,461,5532,11);
insert into store_sales values ('2017-11-24',328,5,551,6612,11);
insert into store_sales values ('2017-11-25',329,5,726,8712,11);
insert into store_sales values ('2017-11-26',330,5,516,6192,11);
insert into store_sales values ('2017-11-27',331,5,681,8172,11);
insert into store_sales values ('2017-11-28',332,5,585,7020,11);
insert into store_sales values ('2017-11-29',333,5,806,9672,11);
insert into store_sales values ('2017-11-30',334,5,714,8568,11);
insert into store_sales values ('2017-12-1',335,5,844,10128,12);
insert into store_sales values ('2017-12-2',336,5,764,9168,12);
insert into store_sales values ('2017-12-3',337,5,697,8364,12);
insert into store_sales values ('2017-12-4',338,5,816,9792,12);
insert into store_sales values ('2017-12-5',339,5,775,9300,12);
insert into store_sales values ('2017-12-6',340,5,522,6264,12);
insert into store_sales values ('2017-12-7',341,7,766,9192,12);
insert into store_sales values ('2017-12-8',342,7,810,9720,12);
insert into store_sales values ('2017-12-9',343,7,593,7116,12);
insert into store_sales values ('2017-12-10',344,7,683,8196,12);
insert into store_sales values ('2017-12-11',345,7,594,7128,12);
insert into store_sales values ('2017-12-12',346,7,652,7824,12);
insert into store_sales values ('2017-12-13',347,7,523,6276,12);
insert into store_sales values ('2017-12-14',348,7,768,9216,12);
insert into store_sales values ('2017-12-15',349,7,711,8532,12);
insert into store_sales values ('2017-12-16',350,7,745,8940,12);
insert into store_sales values ('2017-12-17',351,7,879,10548,12);
insert into store_sales values ('2017-12-18',352,7,807,9684,12);
insert into store_sales values ('2017-12-19',353,7,851,10212,12);
insert into store_sales values ('2017-12-20',354,7,806,9672,12);
insert into store_sales values ('2017-12-21',355,7,592,7104,12);
insert into store_sales values ('2017-12-22',356,7,510,6120,12);
insert into store_sales values ('2017-12-23',357,7,785,9420,12);
insert into store_sales values ('2017-12-24',358,7,514,6168,12);
insert into store_sales values ('2017-12-25',359,0,0,0,12);
insert into store_sales values ('2017-12-26',360,5,204,2448,12);
insert into store_sales values ('2017-12-27',361,5,332,3984,12);
insert into store_sales values ('2017-12-28',362,5,252,3024,12);
insert into store_sales values ('2017-12-29',363,5,299,3588,12);
insert into store_sales values ('2017-12-30',364,5,159,1908,12);
insert into store_sales values ('2017-12-31',365,5,360,4320,12);


Select * from store_sales;


SELECT STR_TO_DATE("01 Jan 2017", "%d %M %Y");

/*
----------------------------------------------------------------------------------------------------|
|     Format	|              Description                                                          |
|---------------------------------------------------------------------------------------------------|
|		%a		|	Abbreviated weekday name (Sun to Sat)										    |
|---------------------------------------------------------------------------------------------------|
|		%b		|	Abbreviated month name (Jan to Dec)                                             |
|---------------------------------------------------------------------------------------------------|
|		%c		|	Numeric month name (0 to 12)                                                    |
|---------------------------------------------------------------------------------------------------|
|		%D		|	Day of the month as a numeric value, followed by suffix (1st, 2nd, 3rd, ...)
|---------------------------------------------------------------------------------------------------|
|		%d		|	Day of the month as a numeric value (01 to 31)
|---------------------------------------------------------------------------------------------------|
|		%e		|	Day of the month as a numeric value (0 to 31)
|---------------------------------------------------------------------------------------------------|
|		%f		|	Microseconds (000000 to 999999)
|---------------------------------------------------------------------------------------------------|
|		%H		|	Hour (00 to 23)
|---------------------------------------------------------------------------------------------------|
|		%h		|	Hour (00 to 12)
|---------------------------------------------------------------------------------------------------|
|		%I		|	Hour (00 to 12)
|---------------------------------------------------------------------------------------------------|
|		%i		|	Minutes (00 to 59)
|---------------------------------------------------------------------------------------------------|
|		%j		|	Day of the year (001 to 366)
|---------------------------------------------------------------------------------------------------|
|		%k		|	Hour (0 to 23)
----------------------------------------------------------------------------------------------------|
|		%l		|	Hour (1 to 12)
----------------------------------------------------------------------------------------------------|
|		%M		|	Month name in full (January to December)
----------------------------------------------------------------------------------------------------|
|		%m		|	Month name as a numeric value (01 to 12)
----------------------------------------------------------------------------------------------------|
|		%p		|	AM or PM
----------------------------------------------------------------------------------------------------|
|		%r		|	Time in 12 hour AM or PM format (hh:mm:ss AM/PM)
----------------------------------------------------------------------------------------------------|
|		%S		|	Seconds (00 to 59)
----------------------------------------------------------------------------------------------------|
|		%s		|	Seconds (00 to 59)
----------------------------------------------------------------------------------------------------|
|		%T		|	Time in 24 hour format (hh:mm:ss)
----------------------------------------------------------------------------------------------------|
|		%U		|	Week where Sunday is the first day of the week (00 to 53)
----------------------------------------------------------------------------------------------------|
|		%u		|	Week where Monday is the first day of the week (00 to 53)
----------------------------------------------------------------------------------------------------|
|		%V		|	Week where Sunday is the first day of the week (01 to 53). Used with %X
----------------------------------------------------------------------------------------------------|
|		%v		|	Week where Monday is the first day of the week (01 to 53). Used with %X
----------------------------------------------------------------------------------------------------|
|		%W		|	Weekday name in full (Sunday to Saturday)
----------------------------------------------------------------------------------------------------|
|		%w		|	Day of the week where Sunday=0 and Saturday=6
----------------------------------------------------------------------------------------------------|
|		%X		|	Year for the week where Sunday is the first day of the week. Used with %V
----------------------------------------------------------------------------------------------------|
|		%x		|	Year for the week where Monday is the first day of the week. Used with %V
----------------------------------------------------------------------------------------------------|
|		%Y		|	Year as a numeric, 4-digit value
----------------------------------------------------------------------------------------------------|
|		%y		|	Year as a numeric, 2-digit value
----------------------------------------------------------------------------------------------------|
*/