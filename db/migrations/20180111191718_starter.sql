-- +goose Up
-- SQL in this section is executed when the migration is applied.

--
-- Data for Stats
--

COPY stats (id, speed, sp_attack, sp_defence, attack, defence, hp) FROM stdin;
27	40	20	30	75	85	50
47	30	60	80	95	80	60
20	97	50	70	81	60	55
4	65	60	50	52	43	39
12	70	90	80	45	50	60
7	43	50	64	48	65	44
19	72	25	35	56	35	30
21	70	31	31	60	30	40
24	80	65	79	95	69	60
14	35	25	25	25	50	45
8	58	65	80	63	80	59
13	50	20	20	35	30	40
17	71	50	50	60	55	63
16	56	35	35	45	40	40
1	45	65	65	49	49	45
15	75	45	80	90	40	65
10	45	20	20	30	35	45
2	60	80	80	62	63	60
5	80	80	65	64	58	58
18	101	70	70	80	75	83
6	100	109	85	84	78	78
11	30	25	25	20	55	50
28	65	45	55	100	110	75
85	110	60	60	110	70	60
23	55	40	54	60	44	35
57	95	60	70	105	60	65
110	60	85	70	90	120	65
35	35	60	65	45	48	70
33	65	55	55	72	57	61
29	41	40	40	47	52	55
78	105	80	80	100	70	65
52	90	40	40	45	35	40
40	45	85	50	70	45	140
38	100	81	100	76	75	73
42	90	65	75	80	70	75
67	45	50	60	100	70	80
87	70	70	95	70	80	90
36	60	95	90	70	73	95
41	55	30	40	45	35	40
90	40	45	25	65	100	30
50	95	35	45	55	25	10
69	40	70	30	75	35	50
30	56	55	55	62	67	70
93	95	115	55	50	45	45
26	110	90	80	90	55	60
43	30	75	65	50	55	45
3	80	100	100	82	83	80
34	85	85	75	102	77	81
39	20	45	25	45	20	115
56	70	35	45	80	35	40
46	25	45	55	70	55	35
45	50	110	90	80	85	75
60	90	40	40	50	40	40
49	90	90	75	65	60	70
55	85	95	80	82	78	80
48	45	40	55	55	50	60
80	30	100	80	75	110	95
44	40	85	75	65	70	60
68	55	65	85	130	80	90
51	120	50	70	100	50	35
66	35	35	35	80	50	70
31	76	75	85	92	87	90
32	50	40	40	57	40	46
25	90	50	50	55	40	35
58	60	70	50	70	45	55
37	65	50	65	41	40	38
95	70	30	45	45	160	35
59	95	100	80	110	80	90
103	55	125	75	95	85	95
77	90	65	65	85	55	50
61	90	50	50	65	65	65
9	78	85	105	83	100	79
65	120	135	95	50	45	55
76	45	55	65	120	130	80
73	100	80	120	70	65	80
53	115	65	65	70	60	65
54	55	65	50	52	48	50
88	25	40	50	80	50	80
127	85	55	70	125	100	65
72	70	50	100	40	35	40
70	55	85	45	90	50	65
75	35	45	45	95	115	55
104	35	40	50	50	95	50
111	25	30	30	85	95	80
83	60	58	62	90	55	52
64	105	120	70	35	30	40
99	75	50	50	130	115	55
62	70	70	90	95	95	90
82	70	120	70	60	95	50
63	90	105	55	20	15	25
89	50	65	100	105	75	105
79	15	40	40	65	65	90
122	90	100	120	45	65	40
105	45	50	80	80	110	60
81	45	95	55	35	70	25
74	20	30	30	80	100	40
117	85	95	45	65	95	55
97	67	73	115	73	70	85
109	35	60	45	65	95	40
71	70	100	70	105	65	80
92	80	100	35	35	30	30
121	115	100	85	75	85	60
94	110	130	75	65	60	60
106	87	35	110	120	53	50
84	75	35	35	85	45	35
86	45	45	70	45	55	65
115	90	40	80	95	80	105
96	42	43	90	48	45	60
130	81	60	100	125	79	95
112	40	45	45	130	120	105
120	85	70	55	45	55	30
126	93	100	85	95	57	65
91	70	85	45	95	180	50
108	30	60	75	55	75	90
100	100	55	55	30	50	40
119	68	65	80	92	65	80
98	50	25	25	105	90	30
107	76	35	110	105	79	50
125	105	95	85	83	57	65
113	50	35	105	5	5	250
101	150	80	80	50	70	60
102	40	60	45	40	80	60
114	60	100	40	55	115	65
116	60	70	25	40	70	30
123	105	55	80	110	80	70
22	100	61	61	90	65	65
133	55	45	65	55	50	55
137	40	85	75	60	70	65
138	35	90	55	40	100	35
198	91	85	42	85	42	60
128	110	40	70	100	95	75
182	50	90	100	80	95	75
135	130	110	95	65	60	65
132	48	48	48	48	48	48
131	60	85	95	85	80	130
156	80	80	65	64	58	58
169	130	70	80	90	80	85
118	63	35	50	67	60	45
124	95	115	95	50	35	65
162	90	45	55	76	64	85
129	80	15	20	10	55	20
143	30	65	110	110	65	160
141	80	65	70	115	105	60
134	65	110	95	65	60	130
166	85	55	110	35	50	55
173	15	45	55	25	28	50
148	70	70	70	84	65	61
146	90	125	85	100	90	90
142	130	60	75	105	65	80
203	85	90	65	80	65	70
144	85	95	125	85	100	90
155	65	60	50	52	43	39
152	45	49	65	49	65	45
157	100	109	85	84	78	78
163	50	36	56	30	30	60
150	130	154	90	110	90	106
174	15	40	20	30	15	90
147	50	50	50	64	45	41
160	78	79	83	105	100	85
172	60	35	35	40	15	20
176	40	80	105	40	85	55
175	20	40	65	20	65	35
249	110	90	154	90	130	106
145	100	125	90	90	85	90
168	40	60	70	90	70	70
210	45	60	60	120	75	90
153	60	63	80	62	80	60
149	80	100	100	134	95	91
186	70	90	100	75	75	90
216	40	50	50	80	50	60
158	43	44	48	65	64	50
178	95	95	70	75	70	65
206	45	65	65	70	70	100
171	67	76	76	58	58	125
165	55	40	80	20	30	40
159	58	59	63	80	80	65
170	67	56	56	38	38	75
154	80	83	100	82	100	80
180	45	80	60	55	55	70
183	40	20	50	20	50	70
204	15	35	35	65	90	50
192	30	105	85	75	55	75
194	15	25	25	45	45	55
218	20	70	40	40	40	40
161	20	35	45	46	34	35
164	70	86	96	50	50	100
167	30	40	40	60	40	40
179	35	65	45	40	40	55
227	70	40	70	80	140	65
177	70	70	45	50	45	40
230	85	95	95	95	95	75
196	110	130	95	65	60	65
185	30	30	65	100	115	70
191	30	30	30	30	30	30
239	95	65	55	63	37	45
260	60	85	90	110	90	100
181	55	115	90	75	85	90
193	95	75	45	65	45	65
245	85	90	115	75	115	100
189	110	55	95	55	70	75
199	30	100	110	75	80	95
184	50	60	80	50	80	100
188	80	45	65	45	50	55
217	55	75	75	130	75	90
190	85	40	55	70	55	55
187	50	35	55	35	40	35
195	35	65	65	85	85	95
231	40	40	40	60	60	90
212	65	55	80	130	100	70
202	33	33	58	33	58	190
197	65	60	130	65	110	95
238	65	85	65	30	15	45
205	40	60	60	90	140	75
219	30	90	80	50	120	60
247	51	65	70	84	70	70
214	85	40	95	125	75	80
200	85	85	85	60	60	60
224	45	105	75	105	75	75
213	5	10	230	10	230	20
248	61	95	100	134	110	100
208	30	55	65	85	200	75
236	35	35	35	35	35	35
223	65	65	35	65	35	35
211	85	55	55	95	85	65
215	115	35	75	95	55	55
207	85	35	65	75	105	65
209	30	40	40	80	50	60
243	115	115	100	85	75	90
221	50	60	60	100	80	100
250	90	110	154	130	90	106
235	75	20	45	20	35	55
225	75	65	45	55	45	45
232	50	60	60	120	120	90
241	100	40	70	80	105	95
233	60	105	95	80	90	85
220	50	30	30	50	40	50
242	55	75	135	10	10	255
254	120	105	85	85	65	70
229	95	110	80	90	50	75
234	85	85	65	95	62	73
226	70	80	140	40	70	85
237	70	35	110	95	95	50
246	41	45	50	64	50	50
222	35	65	95	55	95	65
228	65	80	50	60	30	45
244	100	90	75	115	85	115
240	83	70	55	75	37	45
136	65	95	110	130	60	65
151	100	100	100	100	100	100
140	55	55	45	80	90	30
139	55	115	70	60	125	70
270	30	40	50	30	30	40
257	80	110	70	120	70	80
251	100	100	100	100	100	100
253	95	85	65	65	45	50
262	70	60	60	90	70	70
261	35	30	30	55	35	35
278	85	55	30	30	30	40
275	80	90	60	100	60	90
256	55	85	60	85	60	60
279	65	95	70	50	100	60
289	100	95	65	160	100	150
280	40	45	35	25	25	28
259	50	60	70	85	70	70
265	20	20	30	45	35	45
264	100	50	61	70	61	78
266	15	25	25	35	55	50
252	70	65	55	45	35	40
273	30	30	30	40	50	40
305	40	50	50	90	140	60
269	65	50	90	50	70	60
263	60	30	41	30	41	38
271	50	60	70	50	50	60
274	60	60	40	70	40	70
267	65	100	50	70	50	60
316	40	43	53	43	53	70
286	70	60	60	130	80	60
276	85	30	30	55	30	40
296	25	20	30	60	30	72
334	80	70	105	70	90	75
287	30	35	35	60	60	60
310	105	105	60	75	60	70
312	95	75	85	40	50	60
272	70	90	100	70	70	80
302	50	65	65	75	75	50
277	125	75	50	85	60	60
303	50	55	55	85	85	50
330	100	80	80	100	80	80
297	50	40	60	120	60	144
281	50	65	55	35	35	38
288	90	55	55	80	80	80
290	40	30	30	45	90	31
284	80	100	82	60	62	70
282	80	125	115	65	65	68
283	65	50	52	30	32	40
294	48	71	43	71	43	84
285	35	40	60	40	60	60
300	50	35	35	45	45	50
291	160	50	50	90	45	61
293	28	51	23	51	23	64
348	45	70	80	125	100	75
295	68	91	73	91	63	104
309	65	65	40	45	40	40
299	30	45	90	45	135	30
298	20	20	40	20	40	50
292	40	30	30	90	45	1
318	65	65	20	90	20	45
313	85	47	85	73	75	65
301	90	55	55	65	65	70
306	50	60	60	110	180	70
304	30	40	40	70	100	50
319	95	95	40	120	40	70
344	75	70	120	70	105	60
317	55	73	83	73	83	100
308	80	60	75	60	75	60
307	60	40	55	40	55	30
326	80	90	110	45	65	80
329	70	50	50	70	50	50
352	40	60	120	90	70	60
320	60	70	35	70	35	130
323	40	105	75	100	70	70
311	95	85	75	50	40	60
314	85	73	85	47	75	65
322	35	65	45	60	40	60
336	65	100	60	100	60	73
315	65	100	80	60	45	50
367	52	94	75	104	105	55
327	60	60	60	60	60	60
324	20	85	70	85	140	70
328	10	45	45	100	45	45
342	55	90	55	120	85	63
325	60	70	80	25	35	60
339	60	46	41	48	43	50
340	60	76	71	78	73	110
321	60	90	45	90	45	170
337	70	95	85	55	65	90
347	75	40	50	95	50	45
353	45	63	33	75	35	44
333	50	40	75	40	60	45
338	70	55	65	95	85	90
335	90	60	60	115	60	73
343	55	40	70	40	55	40
350	81	100	125	60	79	95
332	55	115	60	115	60	70
331	35	85	40	85	40	50
363	25	55	50	40	50	70
368	52	114	75	84	105	55
374	30	35	60	55	80	40
349	80	10	55	15	20	20
354	65	83	63	115	65	64
365	65	95	90	80	90	110
346	43	81	107	81	97	86
345	23	61	87	41	77	66
358	65	95	90	50	80	75
355	25	30	90	40	90	20
341	35	50	35	80	65	43
359	75	75	60	130	60	65
351	70	70	70	70	70	70
379	50	75	150	75	150	80
369	55	45	65	90	130	100
357	51	72	87	68	83	99
356	25	60	130	70	130	40
366	32	74	55	64	85	35
377	50	50	100	100	200	80
360	23	23	48	23	48	95
364	45	75	70	60	70	90
370	97	40	65	30	55	43
372	50	60	50	95	100	65
376	70	95	90	135	130	80
378	50	100	200	50	100	80
375	50	55	80	75	100	60
380	110	110	130	80	90	80
362	80	80	80	80	80	80
361	50	50	50	50	50	50
258	40	50	50	70	50	50
255	45	70	50	60	40	45
201	48	72	48	72	48	48
268	15	25	25	35	55	50
373	100	110	80	135	80	95
371	50	40	30	75	60	45
392	108	104	71	104	71	76
390	61	58	44	58	44	44
388	36	55	65	89	85	75
393	40	61	56	51	53	53
384	95	150	90	150	90	105
399	31	35	40	45	40	59
385	100	100	100	100	100	100
397	80	40	40	75	50	55
391	81	78	52	78	52	64
382	90	150	140	100	90	100
386	150	150	50	150	50	50
387	31	45	55	68	64	55
394	50	81	76	66	68	64
389	56	75	85	109	105	95
398	100	50	60	120	70	85
383	90	100	90	150	140	100
400	71	55	60	85	60	79
396	60	30	30	55	30	40
381	110	130	110	90	80	80
395	60	111	101	86	88	84
410	30	42	88	42	118	30
\.

/**
* Pokemon Table
**/
COPY pokemon (id, name, base_experience, height, is_default, weight, ability, stats, types) FROM stdin;
11	metapod	72	7	f	99	["shed-skin"]	11	["bug"]
28	sandslash	158	10	f	295	["sand-rush","sand-veil"]	28	["ground"]
9	blastoise	239	16	f	855	["rain-dish","torrent"]	9	["water"]
47	parasect	142	10	f	295	["damp","dry-skin","effect-spore"]	47	["grass","bug"]
4	charmander	62	6	f	85	["solar-power","blaze"]	4	["fire"]
12	butterfree	178	11	f	320	["tinted-lens","compound-eyes"]	12	["flying","bug"]
7	squirtle	63	5	f	90	["rain-dish","torrent"]	7	["water"]
23	ekans	58	20	f	69	["unnerve","shed-skin","intimidate"]	23	["poison"]
19	rattata	51	3	f	35	["hustle","guts","run-away"]	19	["normal"]
21	spearow	52	3	f	20	["sniper","keen-eye"]	21	["flying","normal"]
24	arbok	157	35	f	650	["unnerve","shed-skin","intimidate"]	24	["poison"]
14	kakuna	72	6	f	100	["shed-skin"]	14	["poison","bug"]
56	mankey	61	5	f	280	["defiant","anger-point","vital-spirit"]	56	["fighting"]
8	wartortle	142	10	f	225	["rain-dish","torrent"]	8	["water"]
13	weedle	39	3	f	32	["run-away","shield-dust"]	13	["poison","bug"]
17	pidgeotto	122	11	f	300	["big-pecks","tangled-feet","keen-eye"]	17	["flying","normal"]
16	pidgey	50	3	f	18	["big-pecks","tangled-feet","keen-eye"]	16	["flying","normal"]
1	bulbasaur	64	7	f	69	["chlorophyll","overgrow"]	1	["poison","grass"]
70	weepinbell	137	10	f	64	["gluttony","chlorophyll"]	70	["poison","grass"]
32	nidoran-m	55	5	f	90	["hustle","rivalry","poison-point"]	32	["poison"]
15	beedrill	178	10	f	295	["sniper","swarm"]	15	["poison","bug"]
10	caterpie	39	3	f	29	["run-away","shield-dust"]	10	["bug"]
63	abra	62	9	f	195	["magic-guard","inner-focus","synchronize"]	63	["psychic"]
35	clefairy	113	6	f	75	["friend-guard","magic-guard","cute-charm"]	35	["fairy"]
49	venomoth	158	15	f	125	["wonder-skin","tinted-lens","shield-dust"]	49	["poison","bug"]
33	nidorino	128	9	f	195	["hustle","rivalry","poison-point"]	33	["poison"]
29	nidoran-f	55	4	f	70	["hustle","rivalry","poison-point"]	29	["poison"]
53	persian	154	10	f	320	["unnerve","technician","limber"]	53	["normal"]
36	clefable	217	13	f	400	["unaware","magic-guard","cute-charm"]	36	["fairy"]
2	ivysaur	142	10	f	130	["chlorophyll","overgrow"]	2	["poison","grass"]
5	charmeleon	142	11	f	190	["solar-power","blaze"]	5	["fire"]
18	pidgeot	216	15	f	395	["big-pecks","tangled-feet","keen-eye"]	18	["flying","normal"]
42	golbat	159	16	f	550	["infiltrator","inner-focus"]	42	["flying","poison"]
51	dugtrio	149	7	f	333	["sand-force","arena-trap","sand-veil"]	51	["ground"]
60	poliwag	60	6	f	124	["swift-swim","damp","water-absorb"]	60	["water"]
6	charizard	240	17	f	905	["solar-power","blaze"]	6	["flying","fire"]
67	machoke	142	15	f	705	["steadfast","no-guard","guts"]	67	["fighting"]
50	diglett	53	2	f	8	["sand-force","arena-trap","sand-veil"]	50	["ground"]
30	nidorina	128	8	f	200	["hustle","rivalry","poison-point"]	30	["poison"]
26	raichu	218	8	f	300	["lightning-rod","static"]	26	["electric"]
43	oddish	64	5	f	54	["run-away","chlorophyll"]	43	["poison","grass"]
3	venusaur	236	20	f	1000	["chlorophyll","overgrow"]	3	["poison","grass"]
39	jigglypuff	95	5	f	55	["friend-guard","competitive","cute-charm"]	39	["fairy","normal"]
22	fearow	155	12	f	380	["sniper","keen-eye"]	22	["flying","normal"]
31	nidoqueen	227	13	f	600	["sheer-force","rivalry","poison-point"]	31	["ground","poison"]
25	pikachu	112	4	f	60	["lightning-rod","static"]	25	["electric"]
37	vulpix	60	6	f	99	["drought","flash-fire"]	37	["fire"]
27	sandshrew	60	6	f	120	["sand-rush","sand-veil"]	27	["ground"]
44	gloom	138	8	f	86	["stench","chlorophyll"]	44	["poison","grass"]
57	primeape	159	10	f	320	["defiant","anger-point","vital-spirit"]	57	["fighting"]
52	meowth	58	4	f	42	["unnerve","technician","pickup"]	52	["normal"]
40	wigglytuff	196	10	f	120	["frisk","competitive","cute-charm"]	40	["fairy","normal"]
38	ninetales	177	11	f	199	["drought","flash-fire"]	38	["fire"]
55	golduck	175	17	f	766	["swift-swim","cloud-nine","damp"]	55	["water"]
41	zubat	49	8	f	75	["infiltrator","inner-focus"]	41	["flying","poison"]
54	psyduck	64	8	f	196	["swift-swim","cloud-nine","damp"]	54	["water"]
46	paras	57	3	f	54	["damp","dry-skin","effect-spore"]	46	["grass","bug"]
59	arcanine	194	19	f	1550	["justified","flash-fire","intimidate"]	59	["fire"]
58	growlithe	70	7	f	190	["justified","flash-fire","intimidate"]	58	["fire"]
80	slowbro	172	16	f	785	["regenerator","own-tempo","oblivious"]	80	["psychic","water"]
69	bellsprout	60	7	f	40	["gluttony","chlorophyll"]	69	["poison","grass"]
85	dodrio	165	18	f	852	["tangled-feet","early-bird","run-away"]	85	["flying","normal"]
87	dewgong	166	17	f	1200	["ice-body","hydration","thick-fat"]	87	["ice","water"]
95	onix	77	88	f	2100	["weak-armor","sturdy","rock-head"]	95	["ground","rock"]
88	grimer	65	9	f	300	["poison-touch","sticky-hold","stench"]	88	["poison"]
73	tentacruel	180	16	f	550	["rain-dish","liquid-ooze","clear-body"]	73	["poison","water"]
61	poliwhirl	135	10	f	200	["swift-swim","damp","water-absorb"]	61	["water"]
130	gyarados	189	65	f	2350	["moxie","intimidate"]	130	["flying","water"]
77	ponyta	82	10	f	300	["flame-body","flash-fire","run-away"]	77	["fire"]
76	golem	223	14	f	3000	["sand-veil","sturdy","rock-head"]	76	["ground","rock"]
78	rapidash	175	17	f	950	["flame-body","flash-fire","run-away"]	78	["fire"]
110	weezing	172	12	f	95	["levitate"]	110	["poison"]
72	tentacool	67	9	f	455	["rain-dish","liquid-ooze","clear-body"]	72	["poison","water"]
102	exeggcute	65	4	f	25	["harvest","chlorophyll"]	102	["psychic","grass"]
68	machamp	227	16	f	1300	["steadfast","no-guard","guts"]	68	["fighting"]
90	shellder	61	3	f	40	["overcoat","skill-link","shell-armor"]	90	["water"]
93	haunter	142	16	f	1	["levitate"]	93	["poison","ghost"]
75	graveler	137	10	f	1050	["sand-veil","sturdy","rock-head"]	75	["ground","rock"]
104	cubone	64	4	f	65	["battle-armor","lightning-rod","rock-head"]	104	["ground"]
111	rhyhorn	69	10	f	1150	["reckless","rock-head","lightning-rod"]	111	["rock","ground"]
83	farfetchd	132	8	f	150	["defiant","inner-focus","keen-eye"]	83	["flying","normal"]
64	kadabra	140	13	f	565	["magic-guard","inner-focus","synchronize"]	64	["psychic"]
99	kingler	166	13	f	600	["sheer-force","shell-armor","hyper-cutter"]	99	["water"]
62	poliwrath	230	13	f	540	["swift-swim","damp","water-absorb"]	62	["fighting","water"]
82	magneton	163	10	f	600	["analytic","sturdy","magnet-pull"]	82	["steel","electric"]
71	victreebel	221	17	f	155	["gluttony","chlorophyll"]	71	["poison","grass"]
89	muk	175	12	f	300	["poison-touch","sticky-hold","stench"]	89	["poison"]
79	slowpoke	63	12	f	360	["regenerator","own-tempo","oblivious"]	79	["psychic","water"]
103	exeggutor	186	20	f	1200	["harvest","chlorophyll"]	103	["psychic","grass"]
105	marowak	149	10	f	450	["battle-armor","lightning-rod","rock-head"]	105	["ground"]
81	magnemite	65	3	f	60	["analytic","sturdy","magnet-pull"]	81	["steel","electric"]
74	geodude	60	4	f	200	["sand-veil","sturdy","rock-head"]	74	["ground","rock"]
117	seadra	154	12	f	250	["damp","sniper","poison-point"]	117	["water"]
97	hypno	169	16	f	756	["inner-focus","forewarn","insomnia"]	97	["psychic"]
109	koffing	68	6	f	10	["levitate"]	109	["poison"]
92	gastly	62	13	f	1	["levitate"]	92	["poison","ghost"]
84	doduo	62	14	f	392	["tangled-feet","early-bird","run-away"]	84	["flying","normal"]
126	magmar	173	13	f	445	["vital-spirit","flame-body"]	126	["fire"]
94	gengar	225	15	f	405	["cursed-body"]	94	["poison","ghost"]
106	hitmonlee	159	15	f	498	["unburden","reckless","limber"]	106	["fighting"]
86	seel	65	11	f	900	["ice-body","hydration","thick-fat"]	86	["water"]
115	kangaskhan	172	22	f	800	["inner-focus","scrappy","early-bird"]	115	["normal"]
96	drowzee	66	10	f	324	["inner-focus","forewarn","insomnia"]	96	["psychic"]
120	staryu	68	8	f	345	["analytic","natural-cure","illuminate"]	120	["water"]
108	lickitung	77	12	f	655	["cloud-nine","oblivious","own-tempo"]	108	["normal"]
101	electrode	172	12	f	666	["aftermath","static","soundproof"]	101	["electric"]
122	mr-mime	161	13	f	545	["technician","filter","soundproof"]	122	["fairy","psychic"]
124	jynx	159	14	f	406	["dry-skin","forewarn","oblivious"]	124	["psychic","ice"]
114	tangela	87	10	f	350	["regenerator","leaf-guard","chlorophyll"]	114	["grass"]
91	cloyster	184	15	f	1325	["overcoat","skill-link","shell-armor"]	91	["ice","water"]
100	voltorb	66	5	f	104	["aftermath","static","soundproof"]	100	["electric"]
107	hitmonchan	159	14	f	502	["inner-focus","iron-fist","keen-eye"]	107	["fighting"]
119	seaking	158	13	f	390	["lightning-rod","water-veil","swift-swim"]	119	["water"]
113	chansey	395	11	f	346	["healer","serene-grace","natural-cure"]	113	["normal"]
118	goldeen	64	6	f	150	["lightning-rod","water-veil","swift-swim"]	118	["water"]
116	horsea	59	4	f	80	["damp","sniper","swift-swim"]	116	["water"]
133	eevee	65	3	f	65	["anticipation","adaptability","run-away"]	133	["normal"]
182	bellossom	221	4	f	58	["healer","chlorophyll"]	182	["grass"]
156	quilava	142	9	f	190	["flash-fire","blaze"]	156	["fire"]
151	mew	270	4	f	40	["synchronize"]	151	["psychic"]
129	magikarp	40	9	f	100	["rattled","swift-swim"]	129	["water"]
123	scyther	100	15	f	560	["steadfast","technician","swarm"]	123	["flying","bug"]
121	starmie	182	11	f	800	["analytic","natural-cure","illuminate"]	121	["psychic","water"]
128	tauros	172	14	f	884	["sheer-force","anger-point","intimidate"]	128	["normal"]
127	pinsir	175	15	f	550	["moxie","mold-breaker","hyper-cutter"]	127	["bug"]
125	electabuzz	172	11	f	300	["vital-spirit","static"]	125	["electric"]
135	jolteon	184	8	f	245	["quick-feet","volt-absorb"]	135	["electric"]
132	ditto	101	3	f	40	["imposter","limber"]	132	["normal"]
137	porygon	79	8	f	365	["analytic","download","trace"]	137	["normal"]
131	lapras	187	25	f	2200	["hydration","shell-armor","water-absorb"]	131	["ice","water"]
138	omanyte	71	4	f	75	["weak-armor","shell-armor","swift-swim"]	138	["water","rock"]
169	crobat	241	18	f	750	["infiltrator","inner-focus"]	169	["flying","poison"]
140	kabuto	71	5	f	115	["weak-armor","battle-armor","swift-swim"]	140	["water","rock"]
162	furret	145	18	f	325	["frisk","keen-eye","run-away"]	162	["normal"]
166	ledian	137	14	f	356	["iron-fist","early-bird","swarm"]	166	["flying","bug"]
143	snorlax	189	21	f	4600	["gluttony","thick-fat","immunity"]	143	["normal"]
141	kabutops	173	13	f	405	["weak-armor","battle-armor","swift-swim"]	141	["water","rock"]
134	vaporeon	184	10	f	290	["hydration","water-absorb"]	134	["water"]
148	dragonair	147	40	f	165	["marvel-scale","shed-skin"]	148	["dragon"]
173	cleffa	44	3	f	30	["friend-guard","magic-guard","cute-charm"]	173	["fairy"]
155	cyndaquil	62	5	f	79	["flash-fire","blaze"]	155	["fire"]
146	moltres	261	20	f	600	["flame-body","pressure"]	146	["flying","fire"]
142	aerodactyl	180	18	f	590	["unnerve","pressure","rock-head"]	142	["flying","rock"]
180	flaaffy	128	8	f	133	["plus","static"]	180	["electric"]
150	mewtwo	306	20	f	1220	["unnerve","pressure"]	150	["psychic"]
136	flareon	184	9	f	250	["guts","flash-fire"]	136	["fire"]
152	chikorita	64	9	f	64	["leaf-guard","overgrow"]	152	["grass"]
157	typhlosion	240	17	f	795	["flash-fire","blaze"]	157	["fire"]
163	hoothoot	52	7	f	212	["tinted-lens","keen-eye","insomnia"]	163	["flying","normal"]
145	zapdos	261	16	f	526	["static","pressure"]	145	["flying","electric"]
170	chinchou	66	5	f	120	["water-absorb","illuminate","volt-absorb"]	170	["electric","water"]
147	dratini	60	18	f	33	["marvel-scale","shed-skin"]	147	["dragon"]
160	feraligatr	239	23	f	888	["sheer-force","torrent"]	160	["water"]
172	pichu-spiky-eared	41	3	f	20	["lightning-rod","static"]	172	["electric"]
176	togetic	142	6	f	32	["super-luck","serene-grace","hustle"]	176	["flying","fairy"]
175	togepi	49	3	f	15	["super-luck","serene-grace","hustle"]	175	["fairy"]
183	marill	88	4	f	85	["sap-sipper","huge-power","thick-fat"]	183	["fairy","water"]
158	totodile	63	6	f	95	["sheer-force","torrent"]	158	["water"]
168	ariados	140	11	f	335	["sniper","insomnia","swarm"]	168	["poison","bug"]
171	lanturn	161	12	f	225	["water-absorb","illuminate","volt-absorb"]	171	["electric","water"]
153	bayleef	142	12	f	158	["leaf-guard","overgrow"]	153	["grass"]
149	dragonite	270	22	f	2100	["multiscale","inner-focus"]	149	["flying","dragon"]
179	mareep	56	6	f	78	["plus","static"]	179	["electric"]
190	aipom	72	8	f	115	["skill-link","pickup","run-away"]	190	["normal"]
154	meganium	236	18	f	1005	["leaf-guard","overgrow"]	154	["grass"]
186	politoed	225	11	f	339	["drizzle","damp","water-absorb"]	186	["water"]
187	hoppip	50	4	f	5	["infiltrator","leaf-guard","chlorophyll"]	187	["flying","grass"]
188	skiploom	119	6	f	10	["infiltrator","leaf-guard","chlorophyll"]	188	["flying","grass"]
165	ledyba	53	10	f	108	["rattled","early-bird","swarm"]	165	["flying","bug"]
159	croconaw	142	11	f	250	["sheer-force","torrent"]	159	["water"]
174	igglybuff	42	3	f	10	["friend-guard","competitive","cute-charm"]	174	["fairy","normal"]
161	sentret	43	8	f	60	["frisk","keen-eye","run-away"]	161	["normal"]
164	noctowl	158	16	f	408	["tinted-lens","keen-eye","insomnia"]	164	["flying","normal"]
167	spinarak	50	5	f	85	["sniper","insomnia","swarm"]	167	["poison","bug"]
191	sunkern	36	3	f	18	["early-bird","solar-power","chlorophyll"]	191	["grass"]
216	teddiursa	66	6	f	88	["honey-gather","quick-feet","pickup"]	216	["normal"]
194	wooper	42	4	f	85	["unaware","water-absorb","damp"]	194	["ground","water"]
227	skarmory	163	17	f	505	["weak-armor","sturdy","keen-eye"]	227	["flying","steel"]
192	sunflora	149	8	f	85	["early-bird","solar-power","chlorophyll"]	192	["grass"]
230	kingdra	243	18	f	1520	["damp","sniper","swift-swim"]	230	["dragon","water"]
196	espeon	184	9	f	265	["magic-bounce","synchronize"]	196	["psychic"]
204	pineco	58	6	f	72	["overcoat","sturdy"]	204	["bug"]
206	dunsparce	145	15	f	140	["rattled","run-away","serene-grace"]	206	["normal"]
239	elekid	72	6	f	235	["vital-spirit","static"]	239	["electric"]
249	lugia	306	52	f	2160	["multiscale","pressure"]	249	["flying","psychic"]
203	girafarig	159	15	f	415	["sap-sipper","early-bird","inner-focus"]	203	["psychic","normal"]
193	yanma	78	12	f	380	["frisk","compound-eyes","speed-boost"]	193	["flying","bug"]
243	raikou	261	19	f	1780	["inner-focus","pressure"]	243	["electric"]
189	jumpluff	207	8	f	30	["infiltrator","leaf-guard","chlorophyll"]	189	["flying","grass"]
197	umbreon	184	10	f	270	["inner-focus","synchronize"]	197	["dark"]
184	azumarill	189	8	f	285	["sap-sipper","huge-power","thick-fat"]	184	["fairy","water"]
210	granbull	158	14	f	487	["rattled","quick-feet","intimidate"]	210	["fairy"]
217	ursaring	175	18	f	1258	["unnerve","quick-feet","guts"]	217	["normal"]
181	ampharos	230	14	f	615	["plus","static"]	181	["electric"]
185	sudowoodo	144	12	f	380	["rattled","rock-head","sturdy"]	185	["rock"]
195	quagsire	151	14	f	750	["unaware","water-absorb","damp"]	195	["ground","water"]
218	slugma	50	7	f	350	["weak-armor","flame-body","magma-armor"]	218	["fire"]
212	scizor	175	18	f	1180	["light-metal","technician","swarm"]	212	["steel","bug"]
202	wobbuffet	142	13	f	285	["telepathy","shadow-tag"]	202	["psychic"]
207	gligar	86	11	f	648	["immunity","sand-veil","hyper-cutter"]	207	["flying","ground"]
231	phanpy	66	5	f	335	["sand-veil","pickup"]	231	["ground"]
238	smoochum	61	4	f	60	["hydration","forewarn","oblivious"]	238	["psychic","ice"]
211	qwilfish	88	5	f	39	["intimidate","swift-swim","poison-point"]	211	["poison","water"]
205	forretress	163	12	f	1258	["overcoat","sturdy"]	205	["steel","bug"]
214	heracross	175	15	f	540	["moxie","guts","swarm"]	214	["fighting","bug"]
250	ho-oh	306	38	f	1990	["regenerator","pressure"]	250	["flying","fire"]
200	misdreavus	87	7	f	10	["levitate"]	200	["ghost"]
213	shuckle	177	6	f	205	["contrary","gluttony","sturdy"]	213	["rock","bug"]
240	magby	73	7	f	214	["vital-spirit","flame-body"]	240	["fire"]
224	octillery	168	9	f	285	["moody","sniper","suction-cups"]	224	["water"]
236	tyrogue	42	7	f	210	["vital-spirit","steadfast","guts"]	236	["fighting"]
223	remoraid	60	6	f	120	["moody","sniper","hustle"]	223	["water"]
248	tyranitar	270	20	f	2020	["unnerve","sand-stream"]	248	["dark","rock"]
215	sneasel	86	9	f	280	["pickpocket","keen-eye","inner-focus"]	215	["ice","dark"]
208	steelix	179	92	f	4000	["sheer-force","sturdy","rock-head"]	208	["ground","steel"]
209	snubbull	60	6	f	78	["rattled","run-away","intimidate"]	209	["fairy"]
220	swinub	50	4	f	65	["thick-fat","snow-cloak","oblivious"]	220	["ground","ice"]
221	piloswine	158	11	f	558	["thick-fat","snow-cloak","oblivious"]	221	["ground","ice"]
246	larvitar	60	6	f	720	["sand-veil","guts"]	246	["ground","rock"]
229	houndoom	175	14	f	350	["unnerve","flash-fire","early-bird"]	229	["fire","dark"]
225	delibird	116	9	f	160	["insomnia","hustle","vital-spirit"]	225	["flying","ice"]
222	corsola	144	6	f	50	["regenerator","natural-cure","hustle"]	222	["rock","water"]
234	stantler	163	14	f	712	["sap-sipper","frisk","intimidate"]	234	["normal"]
233	porygon2	180	6	f	325	["analytic","download","trace"]	233	["normal"]
232	donphan	175	11	f	1200	["sand-veil","sturdy"]	232	["ground"]
228	houndour	66	6	f	108	["unnerve","flash-fire","early-bird"]	228	["fire","dark"]
226	mantine	170	21	f	2200	["water-veil","water-absorb","swift-swim"]	226	["flying","water"]
247	pupitar	144	12	f	1520	["shed-skin"]	247	["ground","rock"]
235	smeargle	88	12	f	580	["moody","technician","own-tempo"]	235	["normal"]
237	hitmontop	159	14	f	480	["steadfast","technician","intimidate"]	237	["fighting"]
244	entei	261	21	f	1980	["inner-focus","pressure"]	244	["fire"]
198	murkrow	81	5	f	21	["prankster","super-luck","insomnia"]	198	["flying","dark"]
258	mudkip	62	4	f	76	["damp","torrent"]	258	["water"]
253	grovyle	142	9	f	216	["unburden","overgrow"]	253	["grass"]
278	wingull	54	6	f	95	["rain-dish","hydration","keen-eye"]	278	["flying","water"]
270	lotad	44	5	f	26	["own-tempo","rain-dish","swift-swim"]	270	["grass","water"]
257	blaziken	239	19	f	520	["speed-boost","blaze"]	257	["fighting","fire"]
260	swampert	241	15	f	819	["damp","torrent"]	260	["ground","water"]
245	suicune	261	20	f	1870	["inner-focus","pressure"]	245	["water"]
251	celebi	270	6	f	50	["natural-cure"]	251	["grass","psychic"]
254	sceptile	239	17	f	522	["unburden","overgrow"]	254	["grass"]
261	poochyena	56	5	f	136	["rattled","quick-feet","run-away"]	261	["dark"]
264	linoone	147	5	f	325	["quick-feet","gluttony","pickup"]	264	["normal"]
262	mightyena	147	10	f	370	["moxie","quick-feet","intimidate"]	262	["dark"]
275	shiftry	216	13	f	596	["pickpocket","early-bird","chlorophyll"]	275	["dark","grass"]
256	combusken	142	9	f	195	["speed-boost","blaze"]	256	["fighting","fire"]
276	taillow	54	3	f	23	["scrappy","guts"]	276	["flying","normal"]
289	slaking	252	20	f	1305	["truant"]	289	["normal"]
280	ralts	40	4	f	66	["telepathy","trace","synchronize"]	280	["fairy","psychic"]
259	marshtomp	142	7	f	280	["damp","torrent"]	259	["ground","water"]
265	wurmple	56	3	f	36	["run-away","shield-dust"]	265	["bug"]
255	torchic	62	4	f	25	["speed-boost","blaze"]	255	["fire"]
266	silcoon	72	6	f	100	["shed-skin"]	266	["bug"]
252	treecko	62	5	f	50	["unburden","overgrow"]	252	["grass"]
273	seedot	44	5	f	40	["pickpocket","early-bird","chlorophyll"]	273	["grass"]
305	lairon	151	9	f	1200	["heavy-metal","rock-head","sturdy"]	305	["rock","steel"]
269	dustox	173	12	f	316	["compound-eyes","shield-dust"]	269	["poison","bug"]
263	zigzagoon	56	4	f	175	["quick-feet","gluttony","pickup"]	263	["normal"]
271	lombre	119	12	f	325	["own-tempo","rain-dish","swift-swim"]	271	["grass","water"]
274	nuzleaf	119	10	f	280	["pickpocket","early-bird","chlorophyll"]	274	["dark","grass"]
267	beautifly	178	10	f	284	["rivalry","swarm"]	267	["flying","bug"]
306	aggron	239	21	f	3600	["heavy-metal","rock-head","sturdy"]	306	["rock","steel"]
286	breloom	161	12	f	392	["technician","poison-heal","effect-spore"]	286	["fighting","grass"]
296	makuhita	47	10	f	864	["sheer-force","guts","thick-fat"]	296	["fighting"]
307	meditite	56	6	f	112	["telepathy","pure-power"]	307	["psychic","fighting"]
272	ludicolo	216	15	f	550	["own-tempo","rain-dish","swift-swim"]	272	["grass","water"]
287	slakoth	56	8	f	240	["truant"]	287	["normal"]
310	manectric	166	15	f	402	["minus","lightning-rod","static"]	310	["electric"]
308	medicham	144	13	f	315	["telepathy","pure-power"]	308	["psychic","fighting"]
302	sableye	133	5	f	110	["prankster","stall","keen-eye"]	302	["ghost","dark"]
277	swellow	159	7	f	198	["scrappy","guts"]	277	["flying","normal"]
303	mawile	133	6	f	115	["sheer-force","intimidate","hyper-cutter"]	303	["fairy","steel"]
291	ninjask	160	8	f	120	["infiltrator","speed-boost"]	291	["flying","bug"]
281	kirlia	97	8	f	202	["telepathy","trace","synchronize"]	281	["fairy","psychic"]
297	hariyama	166	23	f	2538	["sheer-force","guts","thick-fat"]	297	["fighting"]
284	masquerain	159	8	f	36	["unnerve","intimidate"]	284	["flying","bug"]
288	vigoroth	154	14	f	465	["vital-spirit"]	288	["normal"]
290	nincada	53	5	f	55	["run-away","compound-eyes"]	290	["ground","bug"]
283	surskit	54	5	f	17	["rain-dish","swift-swim"]	283	["water","bug"]
294	loudred	126	10	f	405	["scrappy","soundproof"]	294	["normal"]
285	shroomish	59	4	f	45	["quick-feet","poison-heal","effect-spore"]	285	["grass"]
300	skitty	52	6	f	110	["wonder-skin","normalize","cute-charm"]	300	["normal"]
295	exploud	221	15	f	840	["scrappy","soundproof"]	295	["normal"]
312	minun	142	4	f	42	["volt-absorb","minus"]	312	["electric"]
293	whismur	48	6	f	163	["rattled","soundproof"]	293	["normal"]
299	nosepass	75	10	f	970	["sand-force","magnet-pull","sturdy"]	299	["rock"]
292	shedinja	83	8	f	12	["wonder-guard"]	292	["ghost","bug"]
309	electrike	59	6	f	152	["minus","lightning-rod","static"]	309	["electric"]
298	azurill	38	2	f	20	["sap-sipper","huge-power","thick-fat"]	298	["fairy","normal"]
304	aron	66	4	f	600	["heavy-metal","rock-head","sturdy"]	304	["rock","steel"]
320	wailmer	80	20	f	1300	["pressure","oblivious","water-veil"]	320	["water"]
330	flygon	234	20	f	820	["levitate"]	330	["dragon","ground"]
348	armaldo	173	15	f	682	["swift-swim","battle-armor"]	348	["bug","rock"]
334	altaria	172	11	f	206	["cloud-nine","natural-cure"]	334	["flying","dragon"]
317	swalot	163	17	f	800	["gluttony","sticky-hold","liquid-ooze"]	317	["poison"]
344	claydol	175	15	f	1080	["levitate"]	344	["psychic","ground"]
329	vibrava	119	11	f	153	["levitate"]	329	["dragon","ground"]
319	sharpedo	161	18	f	888	["speed-boost","rough-skin"]	319	["dark","water"]
326	grumpig	165	9	f	715	["gluttony","own-tempo","thick-fat"]	326	["psychic"]
352	kecleon	154	10	f	220	["protean","color-change"]	352	["normal"]
318	carvanha	61	8	f	208	["speed-boost","rough-skin"]	318	["dark","water"]
323	camerupt	161	19	f	2200	["anger-point","solid-rock","magma-armor"]	323	["ground","fire"]
311	plusle	142	4	f	42	["lightning-rod","plus"]	311	["electric"]
314	illumise	151	6	f	177	["prankster","tinted-lens","oblivious"]	314	["bug"]
322	numel	61	7	f	240	["own-tempo","simple","oblivious"]	322	["ground","fire"]
336	seviper	160	27	f	525	["infiltrator","shed-skin"]	336	["poison"]
315	roselia	140	3	f	20	["leaf-guard","poison-point","natural-cure"]	315	["poison","grass"]
367	huntail	170	17	f	270	["water-veil","swift-swim"]	367	["water"]
313	volbeat	151	7	f	177	["prankster","swarm","illuminate"]	313	["bug"]
324	torkoal	165	5	f	804	["shell-armor","drought","white-smoke"]	324	["fire"]
328	trapinch	58	7	f	150	["sheer-force","arena-trap","hyper-cutter"]	328	["ground"]
342	crawdaunt	164	11	f	328	["adaptability","shell-armor","hyper-cutter"]	342	["dark","water"]
325	spoink	66	7	f	306	["gluttony","own-tempo","thick-fat"]	325	["psychic"]
340	whiscash	164	9	f	236	["hydration","anticipation","oblivious"]	340	["ground","water"]
337	lunatone	161	10	f	1680	["levitate"]	337	["psychic","rock"]
321	wailord	175	145	f	3980	["pressure","oblivious","water-veil"]	321	["water"]
327	spinda	126	11	f	50	["contrary","tangled-feet","own-tempo"]	327	["normal"]
347	anorith	71	7	f	125	["swift-swim","battle-armor"]	347	["bug","rock"]
353	shuppet	59	6	f	23	["cursed-body","frisk","insomnia"]	353	["ghost"]
333	swablu	62	4	f	12	["cloud-nine","natural-cure"]	333	["flying","normal"]
338	solrock	161	12	f	1540	["levitate"]	338	["psychic","rock"]
335	zangoose	160	13	f	403	["toxic-boost","immunity"]	335	["normal"]
343	baltoy	60	5	f	215	["levitate"]	343	["psychic","ground"]
350	milotic	189	62	f	1620	["cute-charm","competitive","marvel-scale"]	350	["water"]
332	cacturne	166	13	f	774	["water-absorb","sand-veil"]	332	["dark","grass"]
331	cacnea	67	4	f	513	["water-absorb","sand-veil"]	331	["grass"]
363	spheal	58	8	f	395	["oblivious","ice-body","thick-fat"]	363	["water","ice"]
368	gorebyss	170	18	f	226	["hydration","swift-swim"]	368	["water"]
362	glalie	168	15	f	2565	["moody","ice-body","inner-focus"]	362	["ice"]
358	chimecho	159	6	f	10	["levitate"]	358	["psychic"]
354	banette	159	11	f	125	["cursed-body","frisk","insomnia"]	354	["ghost"]
365	walrein	239	14	f	1506	["oblivious","ice-body","thick-fat"]	365	["water","ice"]
346	cradily	173	15	f	604	["storm-drain","suction-cups"]	346	["grass","rock"]
345	lileep	71	10	f	238	["storm-drain","suction-cups"]	345	["grass","rock"]
355	duskull	59	8	f	150	["frisk","levitate"]	355	["ghost"]
359	absol	163	12	f	470	["justified","super-luck","pressure"]	359	["dark"]
341	corphish	62	6	f	115	["adaptability","shell-armor","hyper-cutter"]	341	["water"]
373	salamence	270	15	f	1026	["moxie","intimidate"]	373	["flying","dragon"]
351	castform	147	3	f	8	["forecast"]	351	["normal"]
380	latias	270	14	f	400	["levitate"]	380	["psychic","dragon"]
369	relicanth	170	10	f	234	["sturdy","rock-head","swift-swim"]	369	["rock","water"]
357	tropius	161	20	f	1000	["harvest","solar-power","chlorophyll"]	357	["flying","grass"]
356	dusclops	159	16	f	306	["frisk","pressure"]	356	["ghost"]
366	clamperl	69	4	f	525	["rattled","shell-armor"]	366	["water"]
360	wynaut	52	6	f	140	["telepathy","shadow-tag"]	360	["psychic"]
364	sealeo	144	11	f	876	["oblivious","ice-body","thick-fat"]	364	["water","ice"]
370	luvdisc	116	6	f	87	["hydration","swift-swim"]	370	["water"]
361	snorunt	60	7	f	168	["moody","ice-body","inner-focus"]	361	["ice"]
377	regirock	261	17	f	2300	["sturdy","clear-body"]	377	["rock"]
371	bagon	60	6	f	421	["sheer-force","rock-head"]	371	["dragon"]
375	metang	147	12	f	2025	["light-metal","clear-body"]	375	["psychic","steel"]
372	shelgon	147	11	f	1105	["overcoat","rock-head"]	372	["dragon"]
385	jirachi	270	3	f	11	["serene-grace"]	385	["psychic","steel"]
398	staraptor	218	12	f	249	["reckless","intimidate"]	398	["flying","normal"]
397	staravia	119	6	f	155	["reckless","intimidate"]	397	["flying","normal"]
391	monferno	142	9	f	220	["iron-fist","blaze"]	391	["fighting","fire"]
383	groudon	302	35	f	9500	["drought"]	383	["ground"]
400	bibarel	144	10	f	315	["moody","unaware","simple"]	400	["water","normal"]
392	infernape	240	12	f	550	["iron-fist","blaze"]	392	["fighting","fire"]
396	starly	49	3	f	20	["reckless","keen-eye"]	396	["flying","normal"]
390	chimchar	62	5	f	62	["iron-fist","blaze"]	390	["fire"]
388	grotle	142	11	f	970	["shell-armor","overgrow"]	388	["grass"]
393	piplup	63	4	f	52	["defiant","torrent"]	393	["water"]
379	registeel	261	19	f	2050	["light-metal","clear-body"]	379	["steel"]
382	kyogre	302	45	f	3520	["drizzle"]	382	["water"]
177	natu	64	2	f	20	["magic-bounce","early-bird","synchronize"]	177	["flying","psychic"]
178	xatu	165	15	f	150	["magic-bounce","early-bird","synchronize"]	178	["flying","psychic"]
376	metagross	270	16	f	5500	["light-metal","clear-body"]	376	["psychic","steel"]
20	raticate	145	7	f	185	["hustle","guts","run-away"]	20	["normal"]
34	nidoking	227	14	f	620	["sheer-force","rivalry","poison-point"]	34	["ground","poison"]
45	vileplume	221	12	f	186	["effect-spore","chlorophyll"]	45	["poison","grass"]
48	venonat	61	10	f	300	["run-away","tinted-lens","compound-eyes"]	48	["poison","bug"]
65	alakazam	225	15	f	480	["magic-guard","inner-focus","synchronize"]	65	["psychic"]
66	machop	61	8	f	195	["steadfast","no-guard","guts"]	66	["fighting"]
98	krabby	65	4	f	65	["sheer-force","shell-armor","hyper-cutter"]	98	["water"]
112	rhydon	170	19	f	1200	["reckless","rock-head","lightning-rod"]	112	["rock","ground"]
139	omastar	173	10	f	350	["weak-armor","shell-armor","swift-swim"]	139	["water","rock"]
144	articuno	261	17	f	554	["snow-cloak","pressure"]	144	["flying","ice"]
384	rayquaza	306	70	f	2065	["air-lock"]	384	["flying","dragon"]
199	slowking	172	20	f	795	["regenerator","own-tempo","oblivious"]	199	["psychic","water"]
201	unown-question	118	5	f	50	["levitate"]	201	["psychic"]
219	magcargo	151	8	f	550	["weak-armor","flame-body","magma-armor"]	219	["rock","fire"]
242	blissey	608	15	f	468	["healer","serene-grace","natural-cure"]	242	["normal"]
241	miltank	172	12	f	755	["sap-sipper","scrappy","thick-fat"]	241	["normal"]
268	cascoon	72	7	f	115	["shed-skin"]	268	["bug"]
279	pelipper	154	12	f	280	["rain-dish","drizzle","keen-eye"]	279	["flying","water"]
282	gardevoir	233	16	f	484	["telepathy","trace","synchronize"]	282	["fairy","psychic"]
301	delcatty	140	11	f	326	["wonder-skin","normalize","cute-charm"]	301	["normal"]
316	gulpin	60	4	f	103	["gluttony","sticky-hold","liquid-ooze"]	316	["poison"]
339	barboach	58	4	f	19	["hydration","anticipation","oblivious"]	339	["ground","water"]
349	feebas	40	6	f	74	["adaptability","oblivious","swift-swim"]	349	["water"]
399	bidoof	50	5	f	200	["moody","unaware","simple"]	399	["normal"]
386	deoxys-normal	270	17	f	608	["pressure"]	386	["psychic"]
381	latios	270	20	f	600	["levitate"]	381	["psychic","dragon"]
387	turtwig	64	4	f	102	["shell-armor","overgrow"]	387	["grass"]
378	regice	261	18	f	1750	["ice-body","clear-body"]	378	["ice"]
374	beldum	60	6	f	952	["light-metal","clear-body"]	374	["psychic","steel"]
394	prinplup	142	8	f	230	["defiant","torrent"]	394	["water"]
389	torterra	236	22	f	3100	["shell-armor","overgrow"]	389	["ground","grass"]
395	empoleon	239	17	f	845	["defiant","torrent"]	395	["steel","water"]
410	shieldon	70	5	f	570	["soundproof","sturdy"]	410	["steel","rock"]
\.


-- +goose Down
-- SQL in this section is executed when the migration is rolled back.
