--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: album; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.album (
    album_id integer NOT NULL,
    artist_id integer NOT NULL,
    album_year integer,
    album_title character(120)
);


ALTER TABLE public.album OWNER TO timcha;

--
-- Name: album_album_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.album_album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_album_id_seq OWNER TO timcha;

--
-- Name: album_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.album_album_id_seq OWNED BY public.album.album_id;


--
-- Name: album_track; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.album_track (
    album_id integer NOT NULL,
    track_id integer NOT NULL
);


ALTER TABLE public.album_track OWNER TO timcha;

--
-- Name: artist; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.artist (
    artist_id integer NOT NULL,
    artist_name character(50),
    bio character(1000)
);


ALTER TABLE public.artist OWNER TO timcha;

--
-- Name: artist_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.artist_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_artist_id_seq OWNER TO timcha;

--
-- Name: artist_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.artist_artist_id_seq OWNED BY public.artist.artist_id;


--
-- Name: country; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    country_name character(30)
);


ALTER TABLE public.country OWNER TO timcha;

--
-- Name: country_artist; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.country_artist (
    artist_id integer NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.country_artist OWNER TO timcha;

--
-- Name: country_country_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.country_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_country_id_seq OWNER TO timcha;

--
-- Name: country_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.country_country_id_seq OWNED BY public.country.country_id;


--
-- Name: genre; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.genre (
    genre_id integer NOT NULL,
    genre_name character(30)
);


ALTER TABLE public.genre OWNER TO timcha;

--
-- Name: genre_artist; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.genre_artist (
    artist_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE public.genre_artist OWNER TO timcha;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.genre_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_genre_id_seq OWNER TO timcha;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.genre_genre_id_seq OWNED BY public.genre.genre_id;


--
-- Name: musician; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.musician (
    musician_id integer NOT NULL,
    artist_id integer NOT NULL,
    last_name character(30),
    first_name character(30)
);


ALTER TABLE public.musician OWNER TO timcha;

--
-- Name: musician_musician_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.musician_musician_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.musician_musician_id_seq OWNER TO timcha;

--
-- Name: musician_musician_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.musician_musician_id_seq OWNED BY public.musician.musician_id;


--
-- Name: track; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.track (
    track_id integer NOT NULL,
    track_title character(120)
);


ALTER TABLE public.track OWNER TO timcha;

--
-- Name: track_track_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.track_track_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.track_track_id_seq OWNER TO timcha;

--
-- Name: track_track_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.track_track_id_seq OWNED BY public.track.track_id;


--
-- Name: album album_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album ALTER COLUMN album_id SET DEFAULT nextval('public.album_album_id_seq'::regclass);


--
-- Name: artist artist_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.artist ALTER COLUMN artist_id SET DEFAULT nextval('public.artist_artist_id_seq'::regclass);


--
-- Name: country country_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.country ALTER COLUMN country_id SET DEFAULT nextval('public.country_country_id_seq'::regclass);


--
-- Name: genre genre_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.genre ALTER COLUMN genre_id SET DEFAULT nextval('public.genre_genre_id_seq'::regclass);


--
-- Name: musician musician_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.musician ALTER COLUMN musician_id SET DEFAULT nextval('public.musician_musician_id_seq'::regclass);


--
-- Name: track track_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.track ALTER COLUMN track_id SET DEFAULT nextval('public.track_track_id_seq'::regclass);


--
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.album (album_id, artist_id, album_year, album_title) FROM stdin;
1	1	2021	Ten songs for you                                                                                                       
2	1	2019	The Classics of Led Zeppelin                                                                                            
3	1	2019	The Best of Led Zeppelin                                                                                                
4	1	2018	Led Zeppelin x Led Zeppelin                                                                                             
5	1	2018	Rock And Roll                                                                                                           
6	1	2013	Mothership                                                                                                              
7	1	2012	Celebration Day                                                                                                         
8	1	2003	How the West Was Won                                                                                                    
9	1	1997	The Complete BBC Sessions                                                                                               
10	1	1982	Coda                                                                                                                    
11	1	1979	In Through the out Door                                                                                                 
12	1	1976	Presence                                                                                                                
13	1	1976	The Song Remains the Same                                                                                               
14	1	1975	Physical Graffiti                                                                                                       
15	1	1973	Houses of the Holy                                                                                                      
16	1	1971	Led Zeppelin IV                                                                                                         
17	1	1970	Led Zeppelin III: Companion Audio                                                                                       
18	1	1970	Led Zeppelin III                                                                                                        
19	1	1969	Led Zeppelin II                                                                                                         
20	1	1969	Live At The Olympia                                                                                                     
21	2	2020	REMIXES                                                                                                                 
22	2	2019	AUSLANDER                                                                                                               
23	2	2019	RAMMSTEIN                                                                                                               
24	2	2019	RADIO                                                                                                                   
25	2	2019	Deutschland                                                                                                             
26	2	2017	Paris                                                                                                                   
27	2	2015	XXI - Klavier                                                                                                           
28	2	2011	Made in Germany 1995-2011                                                                                               
29	2	2009	Liebe Ist Fur Alle Da                                                                                                   
30	2	2005	Rosenrot                                                                                                                
31	2	2004	Reise, Reise                                                                                                            
32	2	2001	Mutter                                                                                                                  
33	2	1999	Live aus Berlin                                                                                                         
34	2	1997	Sehnsucht                                                                                                               
35	2	1995	Herzeleid. XXV Anniversary Edition                                                                                      
36	2	1995	Herzeleid                                                                                                               
37	3	2021	Chiquitita                                                                                                              
38	3	2014	Gracias Por La Musica                                                                                                   
39	3	2014	Live At Wembley Arena                                                                                                   
40	3	2014	Abba Gold Anniversary Edition                                                                                           
41	3	2012	The Essential Collection                                                                                                
42	3	2008	More ABBA Gold                                                                                                          
43	3	1994	Thank You For The Music                                                                                                 
44	3	1981	The Visitors                                                                                                            
45	3	1980	Super Trouper                                                                                                           
46	3	1979	Voulez-Vous                                                                                                             
47	3	1977	The Album                                                                                                               
48	3	1976	Arrival                                                                                                                 
49	3	1975	ABBA                                                                                                                    
50	3	1974	Waterloo                                                                                                                
51	3	1973	Ring Ring                                                                                                               
\.


--
-- Data for Name: album_track; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.album_track (album_id, track_id) FROM stdin;
1	1
1	2
1	3
1	4
1	5
1	6
1	7
1	8
1	9
1	10
2	11
2	12
2	13
2	14
2	15
2	16
2	17
2	18
2	19
2	20
2	21
2	22
2	23
2	24
3	25
3	26
3	27
3	28
3	29
3	30
3	31
3	32
3	33
3	34
3	35
3	36
3	37
3	38
4	39
4	40
4	41
4	42
4	43
4	44
4	45
4	46
4	47
4	48
4	49
4	50
4	51
4	52
4	53
4	54
4	55
4	56
4	57
4	58
4	59
4	60
4	61
4	62
4	63
4	64
4	65
4	66
4	67
4	68
5	69
5	70
6	71
6	72
6	73
6	74
6	75
6	76
6	77
6	78
6	79
6	80
6	81
6	82
6	83
6	84
6	85
6	86
6	87
6	88
6	89
6	90
6	91
6	92
6	93
6	94
7	95
7	96
7	97
7	98
7	99
7	100
7	101
7	102
7	103
7	104
7	105
7	106
7	107
7	108
7	109
7	110
8	111
8	112
8	113
8	114
8	115
8	116
8	117
8	118
8	119
8	120
8	121
8	122
8	123
8	124
8	125
8	126
8	127
8	128
9	129
9	130
9	131
9	132
9	133
9	134
9	135
9	136
9	137
9	138
9	139
9	140
9	141
9	142
9	143
9	144
9	145
9	146
9	147
9	148
9	149
9	150
9	151
9	152
9	153
9	154
9	155
9	156
9	157
9	158
9	159
9	160
9	161
10	162
10	163
10	164
10	165
10	166
10	167
10	168
10	169
10	170
10	171
10	172
10	173
10	174
10	175
10	176
10	177
10	178
10	179
10	180
10	181
10	182
10	183
10	184
11	185
11	186
11	187
11	188
11	189
11	190
11	191
11	192
11	193
11	194
11	195
11	196
11	197
11	198
12	199
12	200
12	201
12	202
12	203
12	204
12	205
12	206
12	207
12	208
12	209
12	210
13	211
13	212
13	213
13	214
13	215
13	216
13	217
13	218
13	219
13	220
13	221
13	222
13	223
13	224
13	225
14	226
14	227
14	228
14	229
14	230
14	231
14	232
14	233
14	234
14	235
14	236
14	237
14	238
14	239
14	240
14	241
14	242
14	243
14	244
14	245
14	246
14	247
15	248
15	249
15	250
15	251
15	252
15	253
15	254
15	255
15	256
15	257
15	258
15	259
15	260
15	261
15	262
16	263
16	264
16	265
16	266
16	267
16	268
16	269
16	270
16	271
16	272
16	273
16	274
16	275
16	276
16	277
16	278
17	279
17	280
17	281
17	282
17	283
17	284
17	285
17	286
17	287
18	288
18	289
18	290
18	291
18	292
18	293
18	294
18	295
18	296
18	297
18	298
18	299
18	300
18	301
18	302
18	303
18	304
18	305
18	306
19	307
19	308
19	309
19	310
19	311
19	312
19	313
19	314
19	315
19	316
19	317
19	318
19	319
19	320
19	321
19	322
19	323
20	324
20	325
20	326
20	327
20	328
20	329
20	330
20	331
21	332
21	333
21	334
21	335
21	336
21	337
21	338
21	339
21	340
21	341
21	342
21	343
21	344
21	345
21	346
21	347
21	348
21	349
21	350
21	351
21	352
21	353
21	354
21	355
21	356
21	357
21	358
21	359
21	360
21	361
21	362
21	363
21	364
21	365
21	366
21	367
21	368
21	369
21	370
21	371
21	372
21	373
21	374
21	375
21	376
21	377
21	378
21	379
21	380
21	381
21	382
21	383
21	384
21	385
21	386
21	387
21	388
21	389
21	390
21	391
21	392
21	393
21	394
21	395
21	396
21	397
21	398
21	399
21	400
21	401
21	402
21	403
22	404
22	405
22	406
23	407
23	408
23	409
23	410
23	411
23	412
23	413
23	414
23	415
23	416
23	417
24	418
24	419
25	420
25	421
26	422
26	423
26	424
26	425
26	426
26	427
26	428
26	429
26	430
26	431
26	432
26	433
26	434
26	435
26	436
26	437
26	438
26	439
26	440
26	441
26	442
26	443
27	444
27	445
27	446
27	447
27	448
27	449
27	450
27	451
27	452
27	453
27	454
27	455
27	456
28	457
28	458
28	459
28	460
28	461
28	462
28	463
28	464
28	465
28	466
28	467
28	468
28	469
28	470
28	471
28	472
29	473
29	474
29	475
29	476
29	477
29	478
29	479
29	480
29	481
29	482
29	483
30	484
30	485
30	486
30	487
30	488
30	489
30	490
30	491
30	492
30	493
30	494
31	495
31	496
31	497
31	498
31	499
31	500
31	501
31	502
31	503
31	504
31	505
32	506
32	507
32	508
32	509
32	510
32	511
32	512
32	513
32	514
32	515
32	516
33	517
33	518
33	519
33	520
33	521
33	522
33	523
33	524
33	525
33	526
33	527
33	528
33	529
33	530
33	531
34	532
34	533
34	534
34	535
34	536
34	537
34	538
34	539
34	540
34	541
34	542
35	543
35	544
35	545
35	546
35	547
35	548
35	549
35	550
35	551
35	552
35	553
36	554
36	555
36	556
36	557
36	558
36	559
36	560
36	561
36	562
36	563
36	564
37	565
38	566
38	567
38	568
38	569
38	570
38	571
38	572
38	573
38	574
38	575
38	576
38	577
38	578
38	579
38	580
39	581
39	582
39	583
39	584
39	585
39	586
39	587
39	588
39	589
39	590
39	591
39	592
39	593
39	594
39	595
39	596
39	597
39	598
39	599
39	600
39	601
39	602
39	603
39	604
39	605
40	606
40	607
40	608
40	609
40	610
40	611
40	612
40	613
40	614
40	615
40	616
40	617
40	618
40	619
40	620
40	621
40	622
40	623
40	624
40	625
40	626
40	627
40	628
40	629
40	630
40	631
40	632
40	633
40	634
40	635
40	636
40	637
40	638
40	639
40	640
40	641
40	642
40	643
40	644
40	645
40	646
40	647
40	648
40	649
40	650
40	651
40	652
40	653
40	654
40	655
40	656
40	657
40	658
40	659
40	660
40	661
40	662
40	663
40	664
41	665
41	666
41	667
41	668
41	669
41	670
41	671
41	672
41	673
41	674
41	675
41	676
41	677
41	678
41	679
41	680
41	681
41	682
41	683
41	684
41	685
41	686
41	687
41	688
41	689
41	690
41	691
41	692
41	693
41	694
41	695
41	696
41	697
41	698
41	699
41	700
41	701
41	702
41	703
42	704
42	705
42	706
42	707
42	708
42	709
42	710
42	711
42	712
42	713
42	714
42	715
42	716
42	717
42	718
42	719
42	720
42	721
42	722
42	723
43	724
43	725
43	726
43	727
43	728
43	729
43	730
43	731
43	732
43	733
43	734
43	735
43	736
43	737
43	738
43	739
43	740
43	741
43	742
43	743
43	744
43	745
43	746
43	747
43	748
43	749
43	750
43	751
43	752
43	753
43	754
43	755
43	756
43	757
43	758
43	759
43	760
43	761
43	762
43	763
43	764
43	765
43	766
43	767
43	768
43	769
43	770
43	771
43	772
43	773
43	774
43	775
43	776
43	777
43	778
43	779
43	780
43	781
43	782
43	783
43	784
43	785
43	786
43	787
43	788
43	789
44	790
44	791
44	792
44	793
44	794
44	795
44	796
44	797
44	798
44	799
44	800
44	801
44	802
44	803
44	804
44	805
45	806
45	807
45	808
45	809
45	810
45	811
45	812
45	813
45	814
45	815
45	816
45	817
46	818
46	819
46	820
46	821
46	822
46	823
46	824
46	825
46	826
46	827
46	828
46	829
46	830
47	831
47	832
47	833
47	834
47	835
47	836
47	837
47	838
47	839
47	840
48	841
48	842
48	843
48	844
48	845
48	846
48	847
48	848
48	849
48	850
48	851
48	852
49	853
49	854
49	855
49	856
49	857
49	858
49	859
49	860
49	861
49	862
49	863
49	864
49	865
50	866
50	867
50	868
50	869
50	870
50	871
50	872
50	873
50	874
50	875
50	876
50	877
50	878
50	879
50	880
50	881
50	882
50	883
50	884
51	885
51	886
51	887
51	888
51	889
51	890
51	891
51	892
51	893
51	894
51	895
51	896
51	897
51	898
51	899
51	900
51	901
51	902
51	903
51	904
51	905
51	906
51	907
51	908
51	909
\.


--
-- Data for Name: artist; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.artist (artist_id, artist_name, bio) FROM stdin;
1	Led Zeppelin                                      	Британская рок-группа, образовавшаяся в сентябре 1968 года в Лондоне, и признанная одной из самых успешных, новаторских и влиятельных в современной истории. Создав собственное звучание, Led Zeppelin стали одной из ведущих групп хард-рока, сыграли основополагающую роль в становлении хеви-метала, свободно интерпретируя фолк- и блюз-классику и обогащая стиль элементами других музыкальных жанров.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
2	Rammstein                                         	Немецкая метал-группа, образованная в январе 1994 года в Берлине. Музыкальный стиль группы относится к жанру индастриал-метала. Основные черты творчества группы: специфический ритм, в котором выдержана большая часть композиций, и эпатирующие тексты песен. Особую известность группе принесли сценические выступления, часто сопровождаемые использованием пиротехники, получившие признание в музыкальной среде. Состав группы ни разу не менялся.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
3	ABBA                                              	Шведская поп-группа, существовавшая в 1972-1982 годах и с 2018 года, названная по первым буквам имён исполнителей: Агнета Фельтског, Бьорн Ульвеус, Бенни Андерссон, Анни-Фрид Лингстад. Является одним из наиболее успешных коллективов за всю историю популярной музыки и самым успешным из числа созданных в Скандинавии: записи группы по всему миру были проданы тиражом более 350 миллионов экземпляров.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
\.


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.country (country_id, country_name) FROM stdin;
1	Великобритания                
2	Германия                      
3	Швеция                        
\.


--
-- Data for Name: country_artist; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.country_artist (artist_id, country_id) FROM stdin;
1	1
2	2
3	3
\.


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.genre (genre_id, genre_name) FROM stdin;
1	rock                          
2	hardrock                      
3	dance                         
4	industrial                    
5	estrada                       
6	pop                           
\.


--
-- Data for Name: genre_artist; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.genre_artist (artist_id, genre_id) FROM stdin;
1	1
1	2
2	3
3	4
3	5
3	6
\.


--
-- Data for Name: musician; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.musician (musician_id, artist_id, last_name, first_name) FROM stdin;
1	1	Плант                         	Роберт                        
2	1	Пейдж                         	Джимми                        
3	1	Джонс                         	Джон Пол                      
4	1	Бонэм                         	Джон                          
5	2	Линдеманн                     	Тилль                         
6	2	Круспе                        	Рихард                        
7	2	Ландерс                       	Пауль                         
8	2	Ридель                        	Оливер                        
9	2	Шнайдер                       	Кристоф                       
10	2	Лоренц                        	Кристиан                      
11	3	Фельтског                     	Агнета                        
12	3	Ульвеус                       	Бьорн                         
13	3	Андерссон                     	Бенни                         
14	3	Лингстад                      	Анни-Фрид                     
\.


--
-- Data for Name: track; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.track (track_id, track_title) FROM stdin;
1	Whole lotta love                                                                                                        
2	Immigrant song                                                                                                          
3	Thank you                                                                                                               
4	Moby Dick                                                                                                               
5	Good times bad times                                                                                                    
6	Babe im gonna leave you                                                                                                 
7	Celebration day                                                                                                         
8	Heartbreaker                                                                                                            
9	What is and what should never be                                                                                        
10	Since ive been loving you                                                                                               
11	Good Times Bad Times                                                                                                    
12	You Shook Me                                                                                                            
13	Your Time Is Gonna Come                                                                                                 
14	Black Mountain Side                                                                                                     
15	I Cant Quit You Baby                                                                                                    
16	How Many More Times                                                                                                     
17	Since Ive Been Loving You                                                                                               
18	Out on the Tiles                                                                                                        
19	Gallows Pole                                                                                                            
20	Bron-Y-Aur Stomp                                                                                                        
21	Hats off to (Roy) Harper                                                                                                
22	Bathroom Sound                                                                                                          
23	Tangerine                                                                                                               
24	Thats the Way                                                                                                           
25	Immigrant Song                                                                                                          
26	Friends                                                                                                                 
27	Out on the Tiles                                                                                                        
28	Gallows Pole                                                                                                            
29	Tangerine                                                                                                               
30	Friends                                                                                                                 
31	Celebration Day                                                                                                         
32	Gallows Pole                                                                                                            
33	Thats the Way                                                                                                           
34	Good Times Bad Times                                                                                                    
35	Babe Im Gonna Leave You                                                                                                 
36	Your Time Is Gonna Come                                                                                                 
37	Black Mountain Side                                                                                                     
38	How Many More Times                                                                                                     
39	Immigrant Song                                                                                                          
40	Rock and Roll                                                                                                           
41	Whole Lotta Love                                                                                                        
42	Black Dog                                                                                                               
43	Stairway to Heaven                                                                                                      
44	Good Times Bad Times                                                                                                    
45	Going to California                                                                                                     
46	Ramble On                                                                                                               
47	Kashmir                                                                                                                 
48	Over the Hills and Far Away                                                                                             
49	Hey, Hey, What Can I Do                                                                                                 
50	Dyer Maker                                                                                                              
51	When the Levee Breaks                                                                                                   
52	All My Love                                                                                                             
53	Babe Im Gonna Leave You                                                                                                 
54	Heartbreaker                                                                                                            
55	Dazed and Confused                                                                                                      
56	The Song Remains the Same                                                                                               
57	Fool in the Rain                                                                                                        
58	The Ocean                                                                                                               
59	What Is and What Should Never Be                                                                                        
60	Houses of the Holy                                                                                                      
61	Since Ive Been Loving You                                                                                               
62	Misty Mountain Hop                                                                                                      
63	Communication Breakdown                                                                                                 
64	Thank You                                                                                                               
65	No Quarter                                                                                                              
66	Trampled Under Foot                                                                                                     
67	I Cant Quit You Baby                                                                                                    
68	In the Evening                                                                                                          
69	Rock and Roll                                                                                                           
70	Friends                                                                                                                 
71	Good Times Bad Times                                                                                                    
72	Communication Breakdown                                                                                                 
73	Dazed and Confused                                                                                                      
74	Babe Im Gonna Leave You                                                                                                 
75	Whole Lotta Love                                                                                                        
76	Ramble On                                                                                                               
77	Heartbreaker                                                                                                            
78	Immigrant Song                                                                                                          
79	Since Ive Been Loving You                                                                                               
80	Rock and Roll                                                                                                           
81	Black Dog                                                                                                               
82	When the Levee Breaks                                                                                                   
83	Stairway to Heaven                                                                                                      
84	The Song Remains the Same                                                                                               
85	Over the Hills and Far Away                                                                                             
86	Dyer Maker                                                                                                              
87	No Quarter                                                                                                              
88	Trampled Under Foot                                                                                                     
89	Houses of the Holy                                                                                                      
90	Kashmir                                                                                                                 
91	Nobodys Fault but Mine                                                                                                  
92	Achilles Last Stand                                                                                                     
93	In the Evening                                                                                                          
94	All My Love                                                                                                             
95	Good Times Bad Times                                                                                                    
96	Ramble On                                                                                                               
97	Black Dog                                                                                                               
98	In My Time of Dying                                                                                                     
99	For Your Life                                                                                                           
100	Trampled Under Foot                                                                                                     
101	Nobodys Fault but Mine                                                                                                  
102	No Quarter                                                                                                              
103	Since Ive Been Loving You                                                                                               
104	Dazed and Confused                                                                                                      
105	Stairway to Heaven                                                                                                      
106	The Song Remains the Same                                                                                               
107	Misty Mountain Hop                                                                                                      
108	Kashmir                                                                                                                 
109	Whole Lotta Love                                                                                                        
110	Rock and Roll                                                                                                           
111	LA Drone                                                                                                                
112	Immigrant Song                                                                                                          
113	Heartbreaker                                                                                                            
114	Black Dog                                                                                                               
115	Over the Hills and Far Away                                                                                             
116	Since Ive Been Loving You                                                                                               
117	Stairway to Heaven                                                                                                      
118	Going to California                                                                                                     
119	Thats The Way                                                                                                           
120	Bron-Y-Aur Stomp                                                                                                        
121	Dazed and Confused                                                                                                      
122	What Is and What Should Never Be                                                                                        
123	Dancing Days                                                                                                            
124	Moby Dick                                                                                                               
125	Whole Lotta Love                                                                                                        
126	Rock and Roll                                                                                                           
127	The Ocean                                                                                                               
128	Bring It on Home / Bring It on Back                                                                                     
129	You Shook Me (23/3/69 Top Gear)                                                                                         
130	I Cant Quit You Baby (23/3/69 Top Gear)                                                                                 
131	Communication Breakdown                                                                                                 
132	Dazed and Confused (3/23/69 Top Gear)                                                                                   
133	The Girl I Love She Got Long Black Wavy Hair                                                                            
134	What Is and What Should Never Be (29/6/69 Top Gear)                                                                     
135	Communication Breakdown (29/6/69 Top Gear)                                                                              
136	Travelling Riverside Blues (29/6/69 Top Gear)                                                                           
137	Whole Lotta Love (29/6/69 Top Gear)                                                                                     
138	Somethin Else                                                                                                           
139	Communication Breakdown (10/8/69 Playhouse Theatre)                                                                     
140	I Cant Quit You Baby (10/8/69 Playhouse Theatre)                                                                        
141	You Shook Me (10/8/69 Playhouse Theatre)                                                                                
142	How Many More Times (10/8/69 Playhouse Theatre)                                                                         
143	Immigrant Song (1/4/71 Paris Theatre)                                                                                   
144	Heartbreaker (1/4/71 Paris Theatre)                                                                                     
145	Since Ive Been Loving You (1/4/71 Paris Theatre)                                                                        
146	Black Dog (1/4/71 Paris Theatre)                                                                                        
147	Dazed and Confused (1/4/71 Paris Theatre)                                                                               
148	Stairway to Heaven                                                                                                      
149	Going to California                                                                                                     
150	Thats the Way (1/4/71 Paris Theatre)                                                                                    
151	Whole Lotta Love  [1/4/71 Paris Theatre]                                                                                
152	Thank You (1/4/71 Paris Theatre)                                                                                        
153	Communication Breakdown (23/3/69 Top Gear)                                                                              
154	What Is and What Should Never Be                                                                                        
155	Dazed and Confused (10/8/69 Playhouse Theatre)                                                                          
156	White Summer (10/8/69 Playhouse Theatre)                                                                                
157	What Is and What Should Never Be (1/4/71 Paris Theatre)                                                                 
158	Communication Breakdown (1/4/71 Paris Theatre)                                                                          
159	I Cant Quit You Baby (14/4/69 Rhythm & Blues Session)                                                                   
160	You Shook Me (14/4/69 Rhythm & Blues Session)                                                                           
161	Sunshine Woman                                                                                                          
162	Were Gonna Groove                                                                                                       
163	Poor Tom                                                                                                                
164	I Cant Quit You Baby                                                                                                    
165	Walters Walk                                                                                                            
166	Ozone Baby                                                                                                              
167	Darlene                                                                                                                 
168	Bonzos Montreux                                                                                                         
169	Wearing and Tearing                                                                                                     
170	Were Gonna Groove                                                                                                       
171	If It Keeps on Raining                                                                                                  
172	Bonzos Montreux                                                                                                         
173	Baby Come on Home                                                                                                       
174	Sugar Mama                                                                                                              
175	Poor Tom                                                                                                                
176	Travelling Riverside Blues (BBC Session)                                                                                
177	Hey, Hey, What Can I Do                                                                                                 
178	Four Hands (Four Sticks) [Bombay Orchestra]                                                                             
179	Friends (Bombay Orchestra)                                                                                              
180	St. Tristans Sword                                                                                                      
181	Desire (The Wanton Song)                                                                                                
182	Bring It on Home                                                                                                        
183	Walters Walk                                                                                                            
184	Everybody Makes It Through (In the Light)                                                                               
185	In the Evening                                                                                                          
186	South Bound Saurez                                                                                                      
187	Fool in the Rain                                                                                                        
188	Hot Dog                                                                                                                 
189	Carouselambra                                                                                                           
190	All My Love                                                                                                             
191	Im Gonna Crawl                                                                                                          
192	In the Evening                                                                                                          
193	Southbound Piano (South Bound Saurez)                                                                                   
194	Fool in the Rain                                                                                                        
195	Hot Dog                                                                                                                 
196	The Epic (Carouselambra)                                                                                                
197	The Hook (All My Love)                                                                                                  
198	Blot (Im Gonna Crawl)                                                                                                   
199	Achilles Last Stand                                                                                                     
200	For Your Life                                                                                                           
201	Royal Orleans                                                                                                           
202	Nobodys Fault but Mine                                                                                                  
203	Candy Store Rock                                                                                                        
204	Hots on for Nowhere                                                                                                     
205	Tea for One                                                                                                             
206	Two Ones Are Won                                                                                                        
207	For Your Life                                                                                                           
208	10 Ribs & All / Carrot Pod Pod (Pod)                                                                                    
209	Royal Orleans                                                                                                           
210	Hots on for Nowhere                                                                                                     
211	Rock and Roll                                                                                                           
212	Celebration Day                                                                                                         
213	Black Dog                                                                                                               
214	Over the Hills and Far Away                                                                                             
215	Misty Mountain Hop                                                                                                      
216	Since Ive Been Loving You                                                                                               
217	No Quarter                                                                                                              
218	The Song Remains the Same                                                                                               
219	The Rain Song                                                                                                           
220	The Ocean                                                                                                               
221	Dazed and Confused                                                                                                      
222	Stairway to Heaven                                                                                                      
223	Moby Dick                                                                                                               
224	Heartbreaker                                                                                                            
225	Whole Lotta Love                                                                                                        
226	Custard Pie                                                                                                             
227	The Rover                                                                                                               
228	In My Time of Dying                                                                                                     
229	Houses of the Holy                                                                                                      
230	Trampled Under Foot                                                                                                     
231	Kashmir                                                                                                                 
232	In the Light                                                                                                            
233	Bron-Yr-Aur                                                                                                             
234	Down by the Seaside                                                                                                     
235	Ten Years Gone                                                                                                          
236	Night Flight                                                                                                            
237	The Wanton Song                                                                                                         
238	Boogie with Stu                                                                                                         
239	Black Country Woman                                                                                                     
240	Sick Again                                                                                                              
241	Brandy & Coke (Trampled Under Foot)                                                                                     
242	Sick Again                                                                                                              
243	In My Time of Dying                                                                                                     
244	Houses of the Holy                                                                                                      
245	Everybody Makes It Through (In the Light)                                                                               
246	Boogie with Stu                                                                                                         
247	Driving Through Kashmir                                                                                                 
248	The Song Remains the Same                                                                                               
249	The Rain Song                                                                                                           
250	Over the Hills and Far Away                                                                                             
251	The Crunge                                                                                                              
252	Dancing Days                                                                                                            
253	Dyer Maker                                                                                                              
254	No Quarter                                                                                                              
255	The Ocean                                                                                                               
256	The Song Remains the Same                                                                                               
257	The Rain Song                                                                                                           
258	Over the Hills and Far Away                                                                                             
259	The Crunge                                                                                                              
260	Dancing Days                                                                                                            
261	No Quarter                                                                                                              
262	The Ocean                                                                                                               
263	Black Dog                                                                                                               
264	Rock and Roll                                                                                                           
265	The Battle of Evermore                                                                                                  
266	Stairway to Heaven                                                                                                      
267	Misty Mountain Hop                                                                                                      
268	Four Sticks                                                                                                             
269	Going to California                                                                                                     
270	When the Levee Breaks                                                                                                   
271	Black Dog                                                                                                               
272	Rock and Roll                                                                                                           
273	The Battle of Evermore                                                                                                  
274	Stairway to Heaven                                                                                                      
275	Misty Mountain Hop                                                                                                      
276	Four Sticks                                                                                                             
277	Going to California                                                                                                     
278	When the Levee Breaks                                                                                                   
279	The Immigrant Song                                                                                                      
280	Friends                                                                                                                 
281	Celebration Day                                                                                                         
282	Since Ive Been Loving You                                                                                               
283	Bathroom Sound                                                                                                          
284	Gallows Pole                                                                                                            
285	Thats the Way                                                                                                           
286	Jennings Farm Blues                                                                                                     
287	Key to the Highway / Trouble in Mind                                                                                    
288	Immigrant Song                                                                                                          
289	Friends                                                                                                                 
290	Celebration Day                                                                                                         
291	Since Ive Been Loving You                                                                                               
292	Out on the Tiles                                                                                                        
293	Gallows Pole                                                                                                            
294	Tangerine                                                                                                               
295	Thats the Way                                                                                                           
296	Bron-Y-Aur Stomp                                                                                                        
297	Hats off To (Roy) Harper                                                                                                
298	The Immigrant Song                                                                                                      
299	Friends                                                                                                                 
300	Celebration Day                                                                                                         
301	Since Ive Been Loving You                                                                                               
302	Bathroom Sound                                                                                                          
303	Gallows Pole                                                                                                            
304	Thats the Way                                                                                                           
305	Jennings Farm Blues                                                                                                     
306	Key to the Highway / Trouble in Mind                                                                                    
307	Whole Lotta Love                                                                                                        
308	What Is and What Should Never Be                                                                                        
309	The Lemon Song                                                                                                          
310	Thank You                                                                                                               
311	Heartbreaker                                                                                                            
312	Living Loving Maid (Shes Just a Woman)                                                                                  
313	Ramble On                                                                                                               
314	Moby Dick                                                                                                               
315	Bring It on Home                                                                                                        
316	Whole Lotta Love                                                                                                        
317	What Is and What Should Never Be                                                                                        
318	Thank You                                                                                                               
319	Heartbreaker                                                                                                            
320	Living Loving Maid (Shes Just a Woman)                                                                                  
321	Ramble On                                                                                                               
322	Moby Dick                                                                                                               
323	La La                                                                                                                   
324	Good Times Bad Times / Communication Breakdown                                                                          
325	I Cant Quit You Baby                                                                                                    
326	Heartbreaker                                                                                                            
327	Dazed and Confused                                                                                                      
328	White Summer / Black Mountain Side                                                                                      
329	You Shook Me                                                                                                            
330	Moby Dick                                                                                                               
331	How Many More Times                                                                                                     
332	DU RIECHST SO GUT                                                                                                       
333	RAMMSTEIN IN THE HOUSE                                                                                                  
334	DU RIECHST SO GUT                                                                                                       
335	DU RIECHST SO GUT                                                                                                       
336	DU RIECHST SO GUT                                                                                                       
337	DU RIECHST SO GUT                                                                                                       
338	DU RIECHST SO GUT                                                                                                       
339	DU RIECHST SO GUT                                                                                                       
340	DU RIECHST SO GUT                                                                                                       
341	DU RIECHST SO GUT                                                                                                       
342	RAMMSTEIN                                                                                                               
343	RAMMSTEIN                                                                                                               
344	ENGEL                                                                                                                   
345	FEUERRADER                                                                                                              
346	WILDER WEIN                                                                                                             
347	DU HAST                                                                                                                 
348	DU HAST                                                                                                                 
349	STRIPPED                                                                                                                
350	STRIPPED                                                                                                                
351	STRIPPED                                                                                                                
352	STRIPPED                                                                                                                
353	SONNE                                                                                                                   
354	SONNE                                                                                                                   
355	SONNE                                                                                                                   
356	LINKS 2 3 4                                                                                                             
357	LINKS 2 3 4                                                                                                             
358	LINKS 2 3 4                                                                                                             
359	ICH WILL                                                                                                                
360	ICH WILL                                                                                                                
361	PET SEMATARY                                                                                                            
362	MUTTER                                                                                                                  
363	FEUER FREI!                                                                                                             
364	FEUER FREI!                                                                                                             
365	FEUER FREI!                                                                                                             
366	MEIN TEIL                                                                                                               
367	MEIN TEIL                                                                                                               
368	MEIN TEIL                                                                                                               
369	AMERIKA                                                                                                                 
370	AMERIKA                                                                                                                 
371	AMERIKA                                                                                                                 
372	AMERIKA                                                                                                                 
373	AMERIKA                                                                                                                 
374	AMERIKA                                                                                                                 
375	OHNE DICH                                                                                                               
376	OHNE DICH                                                                                                               
377	OHNE DICH                                                                                                               
378	OHNE DICH                                                                                                               
379	OHNE DICH                                                                                                               
380	KEINE LUST                                                                                                              
381	KEINE LUST                                                                                                              
382	KEINE LUST                                                                                                              
383	KEINE LUST                                                                                                              
384	KEINE LUST                                                                                                              
385	KEINE LUST                                                                                                              
386	KEINE LUST                                                                                                              
387	BENZIN                                                                                                                  
388	BENZIN                                                                                                                  
389	BENZIN                                                                                                                  
390	ROSENROT                                                                                                                
391	ROSENROT                                                                                                                
392	ROSENROT                                                                                                                
393	MANN GEGEN MANN                                                                                                         
394	PUSSY                                                                                                                   
395	RAMMLIED                                                                                                                
396	ICH TU DIR WEH                                                                                                          
397	HAIFISCH                                                                                                                
398	HAIFISCH                                                                                                                
399	HAIFISCH                                                                                                                
400	Mein Herz Brennt                                                                                                        
401	Mein Herz Brennt                                                                                                        
402	Mein Herz Brennt                                                                                                        
403	MEIN LAND                                                                                                               
404	AUSLANDER                                                                                                               
405	AUSLANDER                                                                                                               
406	AUSLANDER                                                                                                               
407	DEUTSCHLAND                                                                                                             
408	RADIO                                                                                                                   
409	ZEIG DICH                                                                                                               
410	AUSLANDER                                                                                                               
411	SEX                                                                                                                     
412	PUPPE                                                                                                                   
413	WAS ICH LIEBE                                                                                                           
414	DIAMANT                                                                                                                 
415	WEIT WEG                                                                                                                
416	TATTOO                                                                                                                  
417	HALLOMANN                                                                                                               
418	RADIO                                                                                                                   
419	RADIO                                                                                                                   
420	DEUTSCHLAND                                                                                                             
421	Deutschland                                                                                                             
422	Intro                                                                                                                   
423	Sonne                                                                                                                   
424	Wollt Ihr Das Bett In Flammen Sehen                                                                                     
425	Keine Lust                                                                                                              
426	Sehnsucht                                                                                                               
427	Asche zu Asche                                                                                                          
428	Feuer Frei!                                                                                                             
429	Mutter                                                                                                                  
430	Mein Teil                                                                                                               
431	Du Riechst So Gut                                                                                                       
432	Links 2 3 4                                                                                                             
433	Du Hast                                                                                                                 
434	Haifisch                                                                                                                
435	Buck Dich                                                                                                               
436	Mann Gegen Mann                                                                                                         
437	Ohne Dich                                                                                                               
438	Mein Herz Brennt                                                                                                        
439	Amerika                                                                                                                 
440	Ich Will                                                                                                                
441	Engel                                                                                                                   
442	Pussy                                                                                                                   
443	Fruhling in Paris                                                                                                       
444	Fruhling In Paris                                                                                                       
445	Feuer Und Wasser                                                                                                        
446	Nebel                                                                                                                   
447	Sonne                                                                                                                   
448	Klavier                                                                                                                 
449	Wilder Wein                                                                                                             
450	Ohne Dich                                                                                                               
451	Ein Lied                                                                                                                
452	Roter Sand                                                                                                              
453	Engel                                                                                                                   
454	Seemann                                                                                                                 
455	Donaukinder                                                                                                             
456	Mein Herz Brennt                                                                                                        
457	Engel                                                                                                                   
458	Links 2 3 4                                                                                                             
459	Keine Lust                                                                                                              
460	Mein Teil                                                                                                               
461	Du Hast                                                                                                                 
462	Du Riechst So Gut                                                                                                       
463	Ich Will                                                                                                                
464	Mein Herz Brennt                                                                                                        
465	Mutter                                                                                                                  
466	Pussy                                                                                                                   
467	Rosenrot                                                                                                                
468	Haifisch                                                                                                                
469	Amerika                                                                                                                 
470	Sonne                                                                                                                   
471	Ohne Dich                                                                                                               
472	Mein Land                                                                                                               
473	Rammlied                                                                                                                
474	Ich Tu Dir Weh                                                                                                          
475	Waidmanns Heil                                                                                                          
476	Haifisch                                                                                                                
477	B********                                                                                                               
478	Fruhling in Paris                                                                                                       
479	Wiener Blut                                                                                                             
480	Pussy                                                                                                                   
481	Liebe Ist Fur Alle Da                                                                                                   
482	Mehr                                                                                                                    
483	Roter Sand                                                                                                              
484	Benzin                                                                                                                  
485	Mann Gegen Mann                                                                                                         
486	Rosenrot                                                                                                                
487	Spring                                                                                                                  
488	Wo Bist Du                                                                                                              
489	Stirb Nicht Vor Mir (Dont Die Before I Do)                                                                              
490	Zerstoren                                                                                                               
491	Hilf Mir                                                                                                                
492	Te Quiero Puta!                                                                                                         
493	Feuer und Wasser                                                                                                        
494	Ein Lied                                                                                                                
495	Reise, Reise                                                                                                            
496	Mein Teil                                                                                                               
497	Dalai Lama                                                                                                              
498	Keine Lust                                                                                                              
499	Los                                                                                                                     
500	Amerika                                                                                                                 
501	Moskau                                                                                                                  
502	Morgenstern                                                                                                             
503	Stein um Stein                                                                                                          
504	Ohne Dich                                                                                                               
505	Amour                                                                                                                   
506	Mein Herz Brennt                                                                                                        
507	Links 2 3 4                                                                                                             
508	Sonne                                                                                                                   
509	Ich Will                                                                                                                
510	Feuer Frei!                                                                                                             
511	Mutter                                                                                                                  
512	Spieluhr                                                                                                                
513	Zwitter                                                                                                                 
514	Rein Raus                                                                                                               
515	Adios                                                                                                                   
516	Nebel                                                                                                                   
517	Spiel Mit Mir                                                                                                           
518	Bestrafe Mich                                                                                                           
519	Weisses Fleisch                                                                                                         
520	Sehnsucht                                                                                                               
521	Asche zu Asche                                                                                                          
522	Wilder Wein                                                                                                             
523	Heirate Mich                                                                                                            
524	Du Riechst So Gut                                                                                                       
525	Du Hast                                                                                                                 
526	Buck Dich                                                                                                               
527	Engel                                                                                                                   
528	Rammstein                                                                                                               
529	Laichzeit                                                                                                               
530	Wollt Ihr Das Bett In Flammen Sehen                                                                                     
531	Seemann                                                                                                                 
532	Sehnsucht                                                                                                               
533	Engel                                                                                                                   
534	Tier                                                                                                                    
535	Bestrafe Mich                                                                                                           
536	Du Hast                                                                                                                 
537	Buck Dich                                                                                                               
538	Spiel Mit Mir                                                                                                           
539	Klavier                                                                                                                 
540	Alter Mann                                                                                                              
541	Eifersucht                                                                                                              
542	Kuss Mich (Fellfrosch)                                                                                                  
543	Wollt Ihr Das Bett In Flammen Sehen                                                                                     
544	Der Meister                                                                                                             
545	Weisses Fleisch                                                                                                         
546	Asche zu Asche                                                                                                          
547	Seemann                                                                                                                 
548	Du Riechst So Gut                                                                                                       
549	Das Alte Leid                                                                                                           
550	Heirate Mich                                                                                                            
551	Herzeleid                                                                                                               
552	Laichzeit                                                                                                               
553	Rammstein                                                                                                               
554	Wollt ihr das Bett in Flammen sehen                                                                                     
555	Der Meister                                                                                                             
556	Weisses Fleisch                                                                                                         
557	Asche zu Asche                                                                                                          
558	Seemann                                                                                                                 
559	Du riechst so gut                                                                                                       
560	Das alte Leid                                                                                                           
561	Heirate mich                                                                                                            
562	Herzeleid                                                                                                               
563	Laichzeit                                                                                                               
564	Rammstein                                                                                                               
565	Chiquitita                                                                                                              
566	Gracias Por La Musica                                                                                                   
567	La Reina Del Baile                                                                                                      
568	Al Andar                                                                                                                
569	Dame! Dame! Dame!                                                                                                       
570	Fernando                                                                                                                
571	Estoy Sonando                                                                                                           
572	Mamma Mia                                                                                                               
573	Hasta Manana                                                                                                            
574	Conociendome, Conociendote                                                                                              
575	Chiquitita                                                                                                              
576	Ring Ring                                                                                                               
577	Andante, Andante                                                                                                        
578	Felicidad                                                                                                               
579	No Hay A Quien Culpar                                                                                                   
580	Se Me Esta Escapando                                                                                                    
581	Gammal fabodpsalm                                                                                                       
582	Voulez-Vous                                                                                                             
583	If It Wasnt For The Nights                                                                                              
584	As Good As New                                                                                                          
585	Knowing Me, Knowing You                                                                                                 
586	Rock Me                                                                                                                 
587	Chiquitita                                                                                                              
588	Money, Money, Money                                                                                                     
589	I Have A Dream                                                                                                          
590	Gimme! Gimme! Gimme! (A Man After Midnight)                                                                             
591	SOS                                                                                                                     
592	Fernando                                                                                                                
593	The Name Of The Game                                                                                                    
594	Eagle                                                                                                                   
595	Thank You For The Music                                                                                                 
596	Why Did It Have To Be Me?                                                                                               
597	Intermezzo No.1                                                                                                         
598	Im Still Alive                                                                                                          
599	Summer Night City                                                                                                       
600	Take A Chance On Me                                                                                                     
601	Does Your Mother Know                                                                                                   
602	Hole In Your Soul                                                                                                       
603	The Way Old Friends Do                                                                                                  
604	Dancing Queen                                                                                                           
605	Waterloo                                                                                                                
606	Dancing Queen                                                                                                           
607	Knowing Me, Knowing You                                                                                                 
608	Take A Chance On Me                                                                                                     
609	Mamma Mia                                                                                                               
610	Lay All Your Love On Me                                                                                                 
611	Super Trouper                                                                                                           
612	I Have A Dream                                                                                                          
613	The Winner Takes It All                                                                                                 
614	Money, Money, Money                                                                                                     
615	SOS                                                                                                                     
616	Chiquitita                                                                                                              
617	Fernando                                                                                                                
618	Voulez-Vous                                                                                                             
619	Gimme! Gimme! Gimme! (A Man After Midnight)                                                                             
620	Does Your Mother Know                                                                                                   
621	One Of Us                                                                                                               
622	The Name Of The Game                                                                                                    
623	Thank You For The Music                                                                                                 
624	Waterloo                                                                                                                
625	Summer Night City                                                                                                       
626	Angeleyes                                                                                                               
627	The Day Before You Came                                                                                                 
628	Eagle                                                                                                                   
629	I Do, I Do, I Do, I Do, I Do                                                                                            
630	So Long                                                                                                                 
631	Honey, Honey                                                                                                            
632	The Visitors                                                                                                            
633	Our Last Summer                                                                                                         
634	On And On And On                                                                                                        
635	Ring Ring                                                                                                               
636	I Wonder (Departure)                                                                                                    
637	Lovelight                                                                                                               
638	Head Over Heels                                                                                                         
639	When I Kissed The Teacher                                                                                               
640	I Am The City                                                                                                           
641	Cassandra                                                                                                               
642	Under Attack                                                                                                            
643	When All Is Said And Done                                                                                               
644	The Way Old Friends Do                                                                                                  
645	Shes My Kind Of Girl                                                                                                    
646	I Am Just A Girl                                                                                                        
647	Gonna Sing You My Love Song                                                                                             
648	King Kong Song                                                                                                          
649	Ive Been Waiting For You                                                                                                
650	Rock Me                                                                                                                 
651	Man In The Middle                                                                                                       
652	Intermezzo No.1                                                                                                         
653	Thats Me                                                                                                                
654	Crazy World                                                                                                             
655	Happy Hawaii                                                                                                            
656	Im A Marionette                                                                                                         
657	Medley: Pick A Bale Of Cotton                                                                                           
658	Kisses Of Fire                                                                                                          
659	The King Has Lost His Crown                                                                                             
660	Elaine                                                                                                                  
661	The Piper                                                                                                               
662	Andante, Andante                                                                                                        
663	Should I Laugh Or Cry                                                                                                   
664	Soldiers                                                                                                                
665	People Need Love                                                                                                        
666	He Is Your Brother                                                                                                      
667	Ring Ring                                                                                                               
668	Love Isnt Easy (But It Sure Is Hard Enough)                                                                             
669	Waterloo                                                                                                                
670	Honey, Honey                                                                                                            
671	So Long                                                                                                                 
672	I Do, I Do, I Do, I Do, I Do                                                                                            
673	SOS                                                                                                                     
674	Mamma Mia                                                                                                               
675	Bang-A-Boomerang                                                                                                        
676	Fernando                                                                                                                
677	Dancing Queen                                                                                                           
678	Money, Money, Money                                                                                                     
679	Knowing Me, Knowing You                                                                                                 
680	Thats Me                                                                                                                
681	The Name Of The Game                                                                                                    
682	Take A Chance On Me                                                                                                     
683	Eagle                                                                                                                   
684	One Man, One Woman                                                                                                      
685	Thank You For The Music                                                                                                 
686	Summer Night City                                                                                                       
687	Chiquitita                                                                                                              
688	Does Your Mother Know                                                                                                   
689	Voulez-Vous                                                                                                             
690	Angeleyes                                                                                                               
691	Gimme! Gimme! Gimme! (A Man After Midnight)                                                                             
692	I Have A Dream                                                                                                          
693	The Winner Takes It All                                                                                                 
694	Super Trouper                                                                                                           
695	On And On And On                                                                                                        
696	Lay All Your Love On Me                                                                                                 
697	Happy New Year                                                                                                          
698	One Of Us                                                                                                               
699	When All Is Said And Done                                                                                               
700	Head Over Heels                                                                                                         
701	The Visitors                                                                                                            
702	The Day Before You Came                                                                                                 
703	Under Attack                                                                                                            
704	Summer Night City                                                                                                       
705	Angeleyes                                                                                                               
706	The Day Before You Came                                                                                                 
707	Eagle                                                                                                                   
708	I Do, I Do, I Do, I Do, I Do                                                                                            
709	So Long                                                                                                                 
710	Honey, Honey                                                                                                            
711	The Visitors                                                                                                            
712	Our Last Summer                                                                                                         
713	On And On And On                                                                                                        
714	Ring Ring                                                                                                               
715	I Wonder (Departure)                                                                                                    
716	Lovelight                                                                                                               
717	Head Over Heels                                                                                                         
718	When I Kissed The Teacher                                                                                               
719	I Am The City                                                                                                           
720	Cassandra                                                                                                               
721	Under Attack                                                                                                            
722	When All Is Said And Done                                                                                               
723	The Way Old Friends Do                                                                                                  
724	People Need Love                                                                                                        
725	Another Town, Another Train                                                                                             
726	He Is Your Brother                                                                                                      
727	Love Isnt Easy (But It Sure Is Hard Enough)                                                                             
728	Ring Ring                                                                                                               
729	Waterloo                                                                                                                
730	Hasta Manana                                                                                                            
731	Honey, Honey                                                                                                            
732	Dance (While The Music Still Goes On)                                                                                   
733	So Long                                                                                                                 
734	Ive Been Waiting For You                                                                                                
735	I Do, I Do, I Do, I Do, I Do                                                                                            
736	SOS                                                                                                                     
737	Mamma Mia                                                                                                               
738	Fernando                                                                                                                
739	Dancing Queen                                                                                                           
740	Thats Me                                                                                                                
741	When I Kissed The Teacher                                                                                               
742	Money, Money, Money                                                                                                     
743	Crazy World                                                                                                             
744	My Love, My Life                                                                                                        
745	Knowing Me, Knowing You                                                                                                 
746	Happy Hawaii                                                                                                            
747	The Name Of The Game                                                                                                    
748	I Wonder (Departure)                                                                                                    
749	Eagle                                                                                                                   
750	Take A Chance On Me                                                                                                     
751	Thank You For The Music                                                                                                 
752	Summer Night City                                                                                                       
753	Chiquitita                                                                                                              
754	Lovelight                                                                                                               
755	Does Your Mother Know                                                                                                   
756	Voulez-Vous                                                                                                             
757	Angeleyes                                                                                                               
758	Gimme! Gimme! Gimme! (A Man After Midnight)                                                                             
759	I Have A Dream                                                                                                          
760	The Winner Takes It All                                                                                                 
761	Elaine                                                                                                                  
762	Super Trouper                                                                                                           
763	Lay All Your Love On Me                                                                                                 
764	On And On And On                                                                                                        
765	Our Last Summer                                                                                                         
766	The Way Old Friends Do                                                                                                  
767	The Visitors                                                                                                            
768	One Of Us                                                                                                               
769	Should I Laugh Or Cry                                                                                                   
770	Head Over Heels                                                                                                         
771	When All Is Said And Done                                                                                               
772	Like An Angel Passing Through My Room                                                                                   
773	The Day Before You Came                                                                                                 
774	Cassandra                                                                                                               
775	Under Attack                                                                                                            
776	Put On Your White Sombrero                                                                                              
777	Dream World                                                                                                             
778	Thank You For The Music                                                                                                 
779	Hej gamle man                                                                                                           
780	Merry-Go-Round                                                                                                          
781	Santa Rosa                                                                                                              
782	Shes My Kind Of Girl                                                                                                    
783	Medley: Pick A Bale Of Cotton                                                                                           
784	You Owe Me One                                                                                                          
785	Slipping Through My Fingers / Me And I                                                                                  
786	Abba Undeleted                                                                                                          
787	Waterloo                                                                                                                
788	Ring Ring                                                                                                               
789	Honey Honey                                                                                                             
790	The Visitors                                                                                                            
791	Head Over Heels                                                                                                         
792	When All Is Said And Done                                                                                               
793	Soldiers                                                                                                                
794	I Let The Music Speak                                                                                                   
795	One Of Us                                                                                                               
796	Two For The Price Of One                                                                                                
797	Slipping Through My Fingers                                                                                             
798	Like An Angel Passing Through My Room                                                                                   
799	Should I Laugh Or Cry                                                                                                   
800	I Am The City                                                                                                           
801	You Owe Me One                                                                                                          
802	Cassandra                                                                                                               
803	Under Attack                                                                                                            
804	The Day Before You Came                                                                                                 
805	From A Twinkling Star To A Passing Angel                                                                                
806	Super Trouper                                                                                                           
807	The Winner Takes It All                                                                                                 
808	On And On And On                                                                                                        
809	Andante, Andante                                                                                                        
810	Me And I                                                                                                                
811	Happy New Year                                                                                                          
812	Our Last Summer                                                                                                         
813	The Piper                                                                                                               
814	Lay All Your Love On Me                                                                                                 
815	The Way Old Friends Do                                                                                                  
816	Elaine                                                                                                                  
817	Put On Your White Sombrero                                                                                              
818	As Good As New                                                                                                          
819	Voulez-Vous                                                                                                             
820	I Have A Dream                                                                                                          
821	Angeleyes                                                                                                               
822	The King Has Lost His Crown                                                                                             
823	Does Your Mother Know                                                                                                   
824	If It Wasnt For The Nights                                                                                              
825	Chiquitita                                                                                                              
826	Lovers                                                                                                                  
827	Kisses Of Fire                                                                                                          
828	Summer Night City                                                                                                       
829	Lovelight                                                                                                               
830	Gimme! Gimme! Gimme! (A Man After Midnight)                                                                             
831	Eagle                                                                                                                   
832	Take A Chance On Me                                                                                                     
833	One Man, One Woman                                                                                                      
834	The Name Of The Game                                                                                                    
835	Move On                                                                                                                 
836	Hole In Your Soul                                                                                                       
837	Thank You For The Music                                                                                                 
838	I Wonder (Departure)                                                                                                    
839	Im A Marionette                                                                                                         
840	Thank You For The Music                                                                                                 
841	When I Kissed The Teacher                                                                                               
842	Dancing Queen                                                                                                           
843	My Love, My Life                                                                                                        
844	Dum Dum Diddle                                                                                                          
845	Knowing Me, Knowing You                                                                                                 
846	Money, Money, Money                                                                                                     
847	Thats Me                                                                                                                
848	Why Did It Have To Be Me?                                                                                               
849	Tiger                                                                                                                   
850	Arrival                                                                                                                 
851	Fernando                                                                                                                
852	Happy Hawaii                                                                                                            
853	Mamma Mia                                                                                                               
854	Hey, Hey Helen                                                                                                          
855	Tropical Loveland                                                                                                       
856	SOS                                                                                                                     
857	Man In The Middle                                                                                                       
858	Bang-A-Boomerang                                                                                                        
859	I Do, I Do, I Do, I Do, I Do                                                                                            
860	Rock Me                                                                                                                 
861	Intermezzo No.1                                                                                                         
862	Ive Been Waiting For You                                                                                                
863	So Long                                                                                                                 
864	Crazy World                                                                                                             
865	Medley: Pick A Bale Of Cotton                                                                                           
866	Waterloo                                                                                                                
867	Sitting In The Palmtree                                                                                                 
868	King Kong Song                                                                                                          
869	Hasta Manana                                                                                                            
870	My Mama Said                                                                                                            
871	Dance (While The Music Still Goes On)                                                                                   
872	Honey, Honey                                                                                                            
873	Watch Out                                                                                                               
874	What About Livingstone                                                                                                  
875	Gonna Sing You My Love Song                                                                                             
876	Suzy-Hang-Around                                                                                                        
877	Ring, Ring                                                                                                              
878	Waterloo                                                                                                                
879	Honey Honey                                                                                                             
880	Waterloo                                                                                                                
881	Hasta Manana                                                                                                            
882	Waterloo                                                                                                                
883	Ring Ring                                                                                                               
884	Waterloo                                                                                                                
885	Ring Ring                                                                                                               
886	Another Town, Another Train                                                                                             
887	Disillusion                                                                                                             
888	People Need Love                                                                                                        
889	I Saw It In The Mirror                                                                                                  
890	Nina, Pretty Ballerina                                                                                                  
891	Love Isnt Easy (But It Sure Is Hard Enough)                                                                             
892	Me And Bobby And Bobbys Brother                                                                                         
893	He Is Your Brother                                                                                                      
894	Shes My Kind Of Girl                                                                                                    
895	I Am Just A Girl                                                                                                        
896	RockNRoll Band                                                                                                          
897	Ring, Ring                                                                                                              
898	Merry-Go-Round                                                                                                          
899	Santa Rosa                                                                                                              
900	Ring Ring                                                                                                               
901	Wer Im Wartesaal Der Liebe Steht                                                                                        
902	Ring Ring                                                                                                               
903	En halsning till vara parkarrangorer                                                                                    
904	Hej gamle man                                                                                                           
905	There’s A Little Man                                                                                                    
906	I Saw It In The Mirror                                                                                                  
907	Jag ar blott en man                                                                                                     
908	Man vill ju leva lite dessemellan                                                                                       
909	Valkommen till varlden                                                                                                  
\.


--
-- Name: album_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.album_album_id_seq', 51, true);


--
-- Name: artist_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.artist_artist_id_seq', 3, true);


--
-- Name: country_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.country_country_id_seq', 3, true);


--
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.genre_genre_id_seq', 1, false);


--
-- Name: musician_musician_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.musician_musician_id_seq', 14, true);


--
-- Name: track_track_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.track_track_id_seq', 909, true);


--
-- Name: album album_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (album_id);


--
-- Name: album_track album_track_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album_track
    ADD CONSTRAINT album_track_pkey PRIMARY KEY (album_id, track_id);


--
-- Name: artist artist_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_pkey PRIMARY KEY (artist_id);


--
-- Name: country_artist country_artist_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.country_artist
    ADD CONSTRAINT country_artist_pkey PRIMARY KEY (artist_id, country_id);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


--
-- Name: genre_artist genre_artist_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.genre_artist
    ADD CONSTRAINT genre_artist_pkey PRIMARY KEY (artist_id, genre_id);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);


--
-- Name: musician musician_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.musician
    ADD CONSTRAINT musician_pkey PRIMARY KEY (musician_id);


--
-- Name: track track_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_pkey PRIMARY KEY (track_id);


--
-- Name: album album_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artist(artist_id) ON DELETE CASCADE;


--
-- Name: album_track album_track_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album_track
    ADD CONSTRAINT album_track_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.album(album_id) ON UPDATE CASCADE;


--
-- Name: album_track album_track_track_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album_track
    ADD CONSTRAINT album_track_track_id_fkey FOREIGN KEY (track_id) REFERENCES public.track(track_id) ON UPDATE CASCADE;


--
-- Name: country_artist country_artist_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.country_artist
    ADD CONSTRAINT country_artist_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artist(artist_id) ON UPDATE CASCADE;


--
-- Name: country_artist country_artist_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.country_artist
    ADD CONSTRAINT country_artist_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country(country_id) ON UPDATE CASCADE;


--
-- Name: genre_artist genre_artist_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.genre_artist
    ADD CONSTRAINT genre_artist_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artist(artist_id) ON UPDATE CASCADE;


--
-- Name: genre_artist genre_artist_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.genre_artist
    ADD CONSTRAINT genre_artist_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(genre_id) ON UPDATE CASCADE;


--
-- Name: musician musician_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.musician
    ADD CONSTRAINT musician_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artist(artist_id) ON DELETE CASCADE;


--
-- Name: TABLE album; Type: ACL; Schema: public; Owner: timcha
--

GRANT ALL ON TABLE public.album TO raf;
GRANT ALL ON TABLE public.album TO rsaddatimov;


--
-- Name: TABLE album_track; Type: ACL; Schema: public; Owner: timcha
--

GRANT ALL ON TABLE public.album_track TO raf;
GRANT ALL ON TABLE public.album_track TO rsaddatimov;


--
-- Name: TABLE artist; Type: ACL; Schema: public; Owner: timcha
--

GRANT ALL ON TABLE public.artist TO raf;
GRANT ALL ON TABLE public.artist TO rsaddatimov;


--
-- Name: TABLE country; Type: ACL; Schema: public; Owner: timcha
--

GRANT ALL ON TABLE public.country TO raf;
GRANT ALL ON TABLE public.country TO rsaddatimov;


--
-- Name: TABLE country_artist; Type: ACL; Schema: public; Owner: timcha
--

GRANT ALL ON TABLE public.country_artist TO raf;
GRANT ALL ON TABLE public.country_artist TO rsaddatimov;


--
-- Name: TABLE genre; Type: ACL; Schema: public; Owner: timcha
--

GRANT ALL ON TABLE public.genre TO raf;
GRANT ALL ON TABLE public.genre TO rsaddatimov;


--
-- Name: TABLE genre_artist; Type: ACL; Schema: public; Owner: timcha
--

GRANT ALL ON TABLE public.genre_artist TO raf;
GRANT ALL ON TABLE public.genre_artist TO rsaddatimov;


--
-- Name: TABLE musician; Type: ACL; Schema: public; Owner: timcha
--

GRANT ALL ON TABLE public.musician TO raf;
GRANT ALL ON TABLE public.musician TO rsaddatimov;


--
-- Name: TABLE track; Type: ACL; Schema: public; Owner: timcha
--

GRANT ALL ON TABLE public.track TO raf;
GRANT ALL ON TABLE public.track TO rsaddatimov;


--
-- PostgreSQL database dump complete
--

