--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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
-- Name: ratings; Type: TABLE; Schema: public; Owner: abidhuri
--
CREATE TABLE public.ratings (
    rid character varying(10) NOT NULL,
    uid character varying(5),
    rating double precision,
    comment character varying(50),
    pid character varying(5)
);


ALTER TABLE public.ratings OWNER TO abidhuri;

--
-- Name: avgratings; Type: VIEW; Schema: public; Owner: abidhuri
--

CREATE VIEW public.avgratings AS
 SELECT ratings.pid,
    avg(ratings.rating) AS avg,
    count(ratings.pid) AS count
   FROM public.ratings
  GROUP BY ratings.pid;


ALTER TABLE public.avgratings OWNER TO abidhuri;

--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: abidhuri
--

COPY public.ratings (rid, uid, rating, comment, pid) FROM stdin;
0ffa9	1ff	3	ok product not very good	1
1ffa9	2ff	3	ok product not very good	1
2ffa9	3ff	4	Good product can go for it, but not excellent	1
3ffa9	4ff	4	Good product can go for it, but not excellent	1
4ffa9	5ff	4.5	Very good product i recommend it	1
5ffaa	6ff	2	bad not below average	1
6ffaa	7ff	1.5	bad big mistake purchasing it.	1
7ffaa	8ff	2	bad not below average	1
8ffaa	9ff	1.5	bad big mistake purchasing it.	1
9ffaa	10ff	1.5	bad big mistake purchasing it.	1
10ffaa	11ff	2	bad not below average	1
11ffaa	12ff	1	very bad, worst experience, dont buy it ever	1
12ffaa	13ff	4	Good product can go for it, but not excellent	1
13ffaa	14ff	4	Good product can go for it, but not excellent	1
14ffaa	15ff	1	very bad, worst experience, dont buy it ever	1
15ffaa	16ff	5	Excellent product just go for it	1
16ffaa	17ff	2	bad not below average	1
17ffaa	18ff	1.5	bad big mistake purchasing it.	1
18ffaa	19ff	1.5	bad big mistake purchasing it.	1
19ffaa	20ff	3.5	above average can be better	1
20ffaa	1ff	4	Good product can go for it, but not excellent	2
21ffaa	2ff	1.5	bad big mistake purchasing it.	2
22ffaa	3ff	3.5	above average can be better	2
23ffaa	4ff	4.5	Very good product i recommend it	2
24ffaa	5ff	1.5	bad big mistake purchasing it.	2
25ffaa	6ff	3	ok product not very good	2
26ffaa	7ff	3	ok product not very good	2
27ffab	8ff	3.5	above average can be better	2
28ffab	9ff	2.5	average product not that good	2
29ffab	10ff	3.5	above average can be better	2
30ffab	11ff	4	Good product can go for it, but not excellent	2
31ffab	12ff	5	Excellent product just go for it	2
32ffab	13ff	3	ok product not very good	2
33ffab	14ff	2	bad not below average	2
34ffab	15ff	5	Excellent product just go for it	2
35ffab	16ff	4	Good product can go for it, but not excellent	2
36ffab	17ff	2.5	average product not that good	2
37ffab	18ff	2.5	average product not that good	2
38ffab	19ff	4	Good product can go for it, but not excellent	2
39ffab	20ff	3	ok product not very good	2
40ffab	1ff	2.5	average product not that good	3
41ffab	2ff	1.5	bad big mistake purchasing it.	3
42ffab	3ff	3	ok product not very good	3
43ffab	4ff	3.5	above average can be better	3
44ffab	5ff	3.5	above average can be better	3
45ffab	6ff	2	bad not below average	3
46ffab	7ff	4	Good product can go for it, but not excellent	3
47ffab	8ff	5	Excellent product just go for it	3
48ffab	9ff	1	very bad, worst experience, dont buy it ever	3
49ffac	10ff	4	Good product can go for it, but not excellent	3
50ffac	11ff	3	ok product not very good	3
51ffac	12ff	5	Excellent product just go for it	3
52ffac	13ff	2	bad not below average	3
53ffac	14ff	2	bad not below average	3
54ffac	15ff	3.5	above average can be better	3
55ffac	16ff	2.5	average product not that good	3
56ffac	17ff	3	ok product not very good	3
57ffac	18ff	3	ok product not very good	3
58ffac	19ff	4.5	Very good product i recommend it	3
59ffac	20ff	4.5	Very good product i recommend it	3
60ffac	1ff	1	very bad, worst experience, dont buy it ever	4
61ffac	2ff	4.5	Very good product i recommend it	4
62ffac	3ff	4	Good product can go for it, but not excellent	4
63ffac	4ff	2	bad not below average	4
64ffac	5ff	5	Excellent product just go for it	4
65ffac	6ff	3.5	above average can be better	4
66ffac	7ff	5	Excellent product just go for it	4
67ffac	8ff	1.5	bad big mistake purchasing it.	4
68ffac	9ff	5	Excellent product just go for it	4
69ffac	10ff	2.5	average product not that good	4
70ffac	11ff	2	bad not below average	4
71ffac	12ff	4.5	Very good product i recommend it	4
72ffac	13ff	3	ok product not very good	4
73ffad	14ff	2.5	average product not that good	4
74ffad	15ff	4.5	Very good product i recommend it	4
75ffad	16ff	4	Good product can go for it, but not excellent	4
76ffad	17ff	1	very bad, worst experience, dont buy it ever	4
77ffad	18ff	2	bad not below average	4
78ffad	19ff	1.5	bad big mistake purchasing it.	4
79ffad	20ff	1	very bad, worst experience, dont buy it ever	4
80ffad	1ff	1.5	bad big mistake purchasing it.	5
81ffad	2ff	5	Excellent product just go for it	5
82ffad	3ff	1	very bad, worst experience, dont buy it ever	5
83ffad	4ff	4	Good product can go for it, but not excellent	5
84ffad	5ff	3.5	above average can be better	5
85ffad	6ff	2	bad not below average	5
86ffad	7ff	3	ok product not very good	5
87ffad	8ff	4	Good product can go for it, but not excellent	5
88ffad	9ff	1.5	bad big mistake purchasing it.	5
89ffad	10ff	5	Excellent product just go for it	5
90ffad	11ff	1.5	bad big mistake purchasing it.	5
91ffad	12ff	1.5	bad big mistake purchasing it.	5
92ffad	13ff	2	bad not below average	5
93ffad	14ff	3.5	above average can be better	5
94ffad	15ff	4.5	Very good product i recommend it	5
95ffad	16ff	4.5	Very good product i recommend it	5
96ffad	17ff	2	bad not below average	5
97ffad	18ff	5	Excellent product just go for it	5
98ffad	19ff	4	Good product can go for it, but not excellent	5
99ffad	20ff	3	ok product not very good	5
100ffad	1ff	3	ok product not very good	6
101ffad	2ff	1.5	bad big mistake purchasing it.	6
102ffad	3ff	2.5	average product not that good	6
103ffad	4ff	2.5	average product not that good	6
104ffad	5ff	3	ok product not very good	6
105ffad	6ff	5	Excellent product just go for it	6
106ffad	7ff	5	Excellent product just go for it	6
107ffad	8ff	4	Good product can go for it, but not excellent	6
108ffae	9ff	4	Good product can go for it, but not excellent	6
109ffae	10ff	1	very bad, worst experience, dont buy it ever	6
110ffae	11ff	3.5	above average can be better	6
111ffae	12ff	1	very bad, worst experience, dont buy it ever	6
112ffae	13ff	4.5	Very good product i recommend it	6
113ffae	14ff	2.5	average product not that good	6
114ffae	15ff	4	Good product can go for it, but not excellent	6
115ffae	16ff	2.5	average product not that good	6
116ffae	17ff	2.5	average product not that good	6
117ffae	18ff	2	bad not below average	6
118ffae	19ff	1.5	bad big mistake purchasing it.	6
119ffae	20ff	4.5	Very good product i recommend it	6
120ffae	1ff	2.5	average product not that good	7
121ffae	2ff	3.5	above average can be better	7
122ffae	3ff	1.5	bad big mistake purchasing it.	7
123ffae	4ff	3.5	above average can be better	7
124ffae	5ff	1	very bad, worst experience, dont buy it ever	7
125ffae	6ff	2.5	average product not that good	7
126ffae	7ff	5	Excellent product just go for it	7
127ffae	8ff	3	ok product not very good	7
128ffae	9ff	4.5	Very good product i recommend it	7
129ffae	10ff	1.5	bad big mistake purchasing it.	7
130ffae	11ff	4	Good product can go for it, but not excellent	7
131ffae	12ff	4	Good product can go for it, but not excellent	7
132ffae	13ff	5	Excellent product just go for it	7
133ffae	14ff	4.5	Very good product i recommend it	7
134ffae	15ff	2	bad not below average	7
135ffae	16ff	4	Good product can go for it, but not excellent	7
136ffae	17ff	3	ok product not very good	7
137ffae	18ff	3.5	above average can be better	7
138ffae	19ff	3	ok product not very good	7
139ffae	20ff	1	very bad, worst experience, dont buy it ever	7
140ffae	1ff	4	Good product can go for it, but not excellent	8
141ffae	2ff	3	ok product not very good	8
142ffae	3ff	5	Excellent product just go for it	8
143ffae	4ff	5	Excellent product just go for it	8
144ffae	5ff	1.5	bad big mistake purchasing it.	8
145ffae	6ff	2.5	average product not that good	8
146ffaf	7ff	2	bad not below average	8
147ffaf	8ff	1.5	bad big mistake purchasing it.	8
148ffaf	9ff	2.5	average product not that good	8
149ffaf	10ff	3	ok product not very good	8
150ffaf	11ff	5	Excellent product just go for it	8
151ffaf	12ff	4.5	Very good product i recommend it	8
152ffaf	13ff	1.5	bad big mistake purchasing it.	8
153ffaf	14ff	2	bad not below average	8
154ffaf	15ff	4.5	Very good product i recommend it	8
155ffaf	16ff	2	bad not below average	8
156ffaf	17ff	4.5	Very good product i recommend it	8
157ffaf	18ff	1	very bad, worst experience, dont buy it ever	8
158ffaf	19ff	1.5	bad big mistake purchasing it.	8
159ffaf	20ff	1.5	bad big mistake purchasing it.	8
160ffaf	1ff	3	ok product not very good	9
161ffaf	2ff	1	very bad, worst experience, dont buy it ever	9
162ffaf	3ff	2.5	average product not that good	9
163ffaf	4ff	4	Good product can go for it, but not excellent	9
164ffaf	5ff	4	Good product can go for it, but not excellent	9
165ffaf	6ff	3.5	above average can be better	9
166ffaf	7ff	3.5	above average can be better	9
167ffaf	8ff	1	very bad, worst experience, dont buy it ever	9
168ffaf	9ff	1	very bad, worst experience, dont buy it ever	9
169ffaf	10ff	4	Good product can go for it, but not excellent	9
170ffaf	11ff	3	ok product not very good	9
171ffaf	12ff	1	very bad, worst experience, dont buy it ever	9
172ffaf	13ff	1.5	bad big mistake purchasing it.	9
173ffaf	14ff	3	ok product not very good	9
174ffaf	15ff	4	Good product can go for it, but not excellent	9
175ffaf	16ff	2.5	average product not that good	9
176ffaf	17ff	2	bad not below average	9
177ffaf	18ff	4.5	Very good product i recommend it	9
178ffaf	19ff	1	very bad, worst experience, dont buy it ever	9
179ffaf	20ff	3.5	above average can be better	9
180ffaf	1ff	4	Good product can go for it, but not excellent	10
181ffaf	2ff	2.5	average product not that good	10
182ffaf	3ff	4.5	Very good product i recommend it	10
183ffaf	4ff	1.5	bad big mistake purchasing it.	10
184ffaf	5ff	1.5	bad big mistake purchasing it.	10
185ffaf	6ff	2	bad not below average	10
186ffaf	7ff	3	ok product not very good	10
187ffaf	8ff	1.5	bad big mistake purchasing it.	10
188ffb0	9ff	1.5	bad big mistake purchasing it.	10
189ffb0	10ff	4.5	Very good product i recommend it	10
190ffb0	11ff	2	bad not below average	10
191ffb0	12ff	2.5	average product not that good	10
192ffb0	13ff	4.5	Very good product i recommend it	10
193ffb0	14ff	3.5	above average can be better	10
194ffb0	15ff	2.5	average product not that good	10
195ffb0	16ff	1	very bad, worst experience, dont buy it ever	10
196ffb0	17ff	1.5	bad big mistake purchasing it.	10
197ffb0	18ff	2	bad not below average	10
198ffb0	19ff	5	Excellent product just go for it	10
199ffb0	20ff	4	Good product can go for it, but not excellent	10
200ffb0	1ff	4.5	Very good product i recommend it	11
201ffb0	2ff	5	Excellent product just go for it	11
202ffb0	3ff	2	bad not below average	11
203ffb0	4ff	3.5	above average can be better	11
204ffb0	5ff	3	ok product not very good	11
205ffb0	6ff	3	ok product not very good	11
206ffb0	7ff	2	bad not below average	11
207ffb0	8ff	2	bad not below average	11
208ffb0	9ff	5	Excellent product just go for it	11
209ffb0	10ff	1.5	bad big mistake purchasing it.	11
210ffb0	11ff	2.5	average product not that good	11
211ffb0	12ff	3.5	above average can be better	11
212ffb0	13ff	4.5	Very good product i recommend it	11
213ffb0	14ff	1.5	bad big mistake purchasing it.	11
214ffb0	15ff	4.5	Very good product i recommend it	11
215ffb0	16ff	3	ok product not very good	11
216ffb0	17ff	2	bad not below average	11
217ffb0	18ff	4	Good product can go for it, but not excellent	11
218ffb0	19ff	5	Excellent product just go for it	11
219ffb0	20ff	4.5	Very good product i recommend it	11
220ffb0	1ff	1.5	bad big mistake purchasing it.	12
221ffb0	2ff	4	Good product can go for it, but not excellent	12
222ffb0	3ff	4.5	Very good product i recommend it	12
223ffb0	4ff	1	very bad, worst experience, dont buy it ever	12
224ffb0	5ff	3	ok product not very good	12
225ffb0	6ff	4	Good product can go for it, but not excellent	12
226ffb0	7ff	2.5	average product not that good	12
227ffb0	8ff	1	very bad, worst experience, dont buy it ever	12
228ffb0	9ff	1	very bad, worst experience, dont buy it ever	12
229ffb0	10ff	1	very bad, worst experience, dont buy it ever	12
230ffb1	11ff	1.5	bad big mistake purchasing it.	12
231ffb1	12ff	3.5	above average can be better	12
232ffb1	13ff	2	bad not below average	12
233ffb1	14ff	4.5	Very good product i recommend it	12
234ffb1	15ff	2.5	average product not that good	12
235ffb1	16ff	1	very bad, worst experience, dont buy it ever	12
236ffb1	17ff	2	bad not below average	12
237ffb1	18ff	4	Good product can go for it, but not excellent	12
238ffb1	19ff	5	Excellent product just go for it	12
239ffb1	20ff	2	bad not below average	12
240ffb1	1ff	3	ok product not very good	13
241ffb1	2ff	5	Excellent product just go for it	13
242ffb1	3ff	3	ok product not very good	13
243ffb1	4ff	2	bad not below average	13
244ffb1	5ff	3.5	above average can be better	13
245ffb1	6ff	4.5	Very good product i recommend it	13
246ffb1	7ff	3	ok product not very good	13
247ffb1	8ff	2.5	average product not that good	13
248ffb1	9ff	5	Excellent product just go for it	13
249ffb1	10ff	4	Good product can go for it, but not excellent	13
250ffb1	11ff	4.5	Very good product i recommend it	13
251ffb1	12ff	4	Good product can go for it, but not excellent	13
252ffb1	13ff	3.5	above average can be better	13
253ffb1	14ff	2.5	average product not that good	13
254ffb1	15ff	2	bad not below average	13
255ffb1	16ff	3	ok product not very good	13
256ffb1	17ff	1.5	bad big mistake purchasing it.	13
257ffb1	18ff	3.5	above average can be better	13
258ffb1	19ff	1	very bad, worst experience, dont buy it ever	13
259ffb1	20ff	3.5	above average can be better	13
260ffb1	1ff	1	very bad, worst experience, dont buy it ever	14
261ffb1	2ff	2.5	average product not that good	14
262ffb1	3ff	1	very bad, worst experience, dont buy it ever	14
263ffb1	4ff	2.5	average product not that good	14
264ffb1	5ff	2.5	average product not that good	14
265ffb1	6ff	2.5	average product not that good	14
266ffb1	7ff	1	very bad, worst experience, dont buy it ever	14
267ffb1	8ff	2.5	average product not that good	14
268ffb1	9ff	1.5	bad big mistake purchasing it.	14
269ffb1	10ff	2	bad not below average	14
270ffb1	11ff	1.5	bad big mistake purchasing it.	14
271ffb1	12ff	1	very bad, worst experience, dont buy it ever	14
272ffb2	13ff	4	Good product can go for it, but not excellent	14
273ffb2	14ff	3	ok product not very good	14
274ffb2	15ff	4	Good product can go for it, but not excellent	14
275ffb2	16ff	5	Excellent product just go for it	14
276ffb2	17ff	4.5	Very good product i recommend it	14
277ffb2	18ff	3.5	above average can be better	14
278ffb2	19ff	4.5	Very good product i recommend it	14
279ffb2	20ff	5	Excellent product just go for it	14
280ffb2	1ff	2.5	average product not that good	15
281ffb2	2ff	3.5	above average can be better	15
282ffb2	3ff	2	bad not below average	15
283ffb2	4ff	3	ok product not very good	15
284ffb2	5ff	3.5	above average can be better	15
285ffb2	6ff	1.5	bad big mistake purchasing it.	15
286ffb2	7ff	2.5	average product not that good	15
287ffb2	8ff	2.5	average product not that good	15
288ffb2	9ff	4.5	Very good product i recommend it	15
289ffb2	10ff	1	very bad, worst experience, dont buy it ever	15
290ffb2	11ff	1	very bad, worst experience, dont buy it ever	15
291ffb2	12ff	5	Excellent product just go for it	15
292ffb2	13ff	4.5	Very good product i recommend it	15
293ffb2	14ff	5	Excellent product just go for it	15
294ffb2	15ff	1	very bad, worst experience, dont buy it ever	15
295ffb2	16ff	3	ok product not very good	15
296ffb2	17ff	5	Excellent product just go for it	15
297ffb2	18ff	3.5	above average can be better	15
298ffb2	19ff	3	ok product not very good	15
299ffb2	20ff	1	very bad, worst experience, dont buy it ever	15
300ffb2	1ff	3	ok product not very good	16
301ffb2	2ff	4.5	Very good product i recommend it	16
302ffb2	3ff	1.5	bad big mistake purchasing it.	16
303ffb2	4ff	4	Good product can go for it, but not excellent	16
304ffb2	5ff	4	Good product can go for it, but not excellent	16
305ffb2	6ff	2	bad not below average	16
306ffb2	7ff	3.5	above average can be better	16
307ffb2	8ff	4.5	Very good product i recommend it	16
308ffb2	9ff	2.5	average product not that good	16
309ffb2	10ff	4.5	Very good product i recommend it	16
310ffb2	11ff	2	bad not below average	16
311ffb2	12ff	4	Good product can go for it, but not excellent	16
312ffb2	13ff	4	Good product can go for it, but not excellent	16
313ffb2	14ff	3.5	above average can be better	16
314ffb2	15ff	4	Good product can go for it, but not excellent	16
315ffb2	16ff	3.5	above average can be better	16
316ffb3	17ff	2.5	average product not that good	16
317ffb3	18ff	3.5	above average can be better	16
318ffb3	19ff	2	bad not below average	16
319ffb3	20ff	5	Excellent product just go for it	16
320ffb3	1ff	4.5	Very good product i recommend it	17
321ffb3	2ff	3.5	above average can be better	17
322ffb3	3ff	2	bad not below average	17
323ffb3	4ff	2.5	average product not that good	17
324ffb3	5ff	4	Good product can go for it, but not excellent	17
325ffb3	6ff	5	Excellent product just go for it	17
326ffb3	7ff	1	very bad, worst experience, dont buy it ever	17
327ffb3	8ff	5	Excellent product just go for it	17
328ffb3	9ff	1.5	bad big mistake purchasing it.	17
329ffb3	10ff	1.5	bad big mistake purchasing it.	17
330ffb3	11ff	3.5	above average can be better	17
331ffb3	12ff	2.5	average product not that good	17
332ffb3	13ff	3	ok product not very good	17
333ffb3	14ff	2.5	average product not that good	17
334ffb3	15ff	3.5	above average can be better	17
335ffb3	16ff	2	bad not below average	17
336ffb3	17ff	3.5	above average can be better	17
337ffb3	18ff	3.5	above average can be better	17
338ffb3	19ff	2.5	average product not that good	17
339ffb3	20ff	2	bad not below average	17
340ffb3	1ff	1.5	bad big mistake purchasing it.	18
341ffb3	2ff	2.5	average product not that good	18
342ffb3	3ff	3	ok product not very good	18
343ffb3	4ff	4.5	Very good product i recommend it	18
344ffb3	5ff	2	bad not below average	18
345ffb3	6ff	4.5	Very good product i recommend it	18
346ffb3	7ff	2.5	average product not that good	18
347ffb3	8ff	2.5	average product not that good	18
348ffb3	9ff	4.5	Very good product i recommend it	18
349ffb3	10ff	4	Good product can go for it, but not excellent	18
350ffb3	11ff	2.5	average product not that good	18
351ffb3	12ff	2.5	average product not that good	18
352ffb3	13ff	3	ok product not very good	18
353ffb4	14ff	4	Good product can go for it, but not excellent	18
354ffb4	15ff	4	Good product can go for it, but not excellent	18
355ffb4	16ff	1.5	bad big mistake purchasing it.	18
356ffb4	17ff	1	very bad, worst experience, dont buy it ever	18
357ffb4	18ff	4	Good product can go for it, but not excellent	18
358ffb4	19ff	1.5	bad big mistake purchasing it.	18
359ffb4	20ff	4	Good product can go for it, but not excellent	18
360ffb4	1ff	3	ok product not very good	19
361ffb4	2ff	4.5	Very good product i recommend it	19
362ffb4	3ff	2	bad not below average	19
363ffb4	4ff	1.5	bad big mistake purchasing it.	19
364ffb4	5ff	2.5	average product not that good	19
365ffb4	6ff	4	Good product can go for it, but not excellent	19
366ffb4	7ff	4.5	Very good product i recommend it	19
367ffb4	8ff	3	ok product not very good	19
368ffb4	9ff	3.5	above average can be better	19
369ffb4	10ff	4.5	Very good product i recommend it	19
370ffb4	11ff	3	ok product not very good	19
371ffb4	12ff	2.5	average product not that good	19
372ffb4	13ff	3	ok product not very good	19
373ffb4	14ff	4.5	Very good product i recommend it	19
374ffb4	15ff	5	Excellent product just go for it	19
375ffb4	16ff	3.5	above average can be better	19
376ffb4	17ff	3.5	above average can be better	19
377ffb4	18ff	3.5	above average can be better	19
378ffb4	19ff	1.5	bad big mistake purchasing it.	19
379ffb4	20ff	1	very bad, worst experience, dont buy it ever	19
380ffb4	1ff	2	bad not below average	20
381ffb4	2ff	4.5	Very good product i recommend it	20
382ffb4	3ff	4	Good product can go for it, but not excellent	20
383ffb4	4ff	1.5	bad big mistake purchasing it.	20
384ffb4	5ff	3	ok product not very good	20
385ffb4	6ff	3	ok product not very good	20
386ffb4	7ff	5	Excellent product just go for it	20
387ffb4	8ff	2	bad not below average	20
388ffb4	9ff	5	Excellent product just go for it	20
389ffb4	10ff	1.5	bad big mistake purchasing it.	20
390ffb4	11ff	3	ok product not very good	20
391ffb4	12ff	3.5	above average can be better	20
392ffb4	13ff	3	ok product not very good	20
393ffb4	14ff	3.5	above average can be better	20
394ffb4	15ff	5	Excellent product just go for it	20
395ffb4	16ff	5	Excellent product just go for it	20
396ffb5	17ff	2	bad not below average	20
397ffb5	18ff	5	Excellent product just go for it	20
398ffb5	19ff	1.5	bad big mistake purchasing it.	20
399ffb5	20ff	2	bad not below average	20
400ffb5	1ff	3.5	above average can be better	21
401ffb5	2ff	3	ok product not very good	21
402ffb5	3ff	4	Good product can go for it, but not excellent	21
403ffb5	4ff	3	ok product not very good	21
404ffb5	5ff	1.5	bad big mistake purchasing it.	21
405ffb5	6ff	4	Good product can go for it, but not excellent	21
406ffb5	7ff	2.5	average product not that good	21
407ffb5	8ff	2.5	average product not that good	21
408ffb5	9ff	2	bad not below average	21
409ffb5	10ff	4.5	Very good product i recommend it	21
410ffb5	11ff	1.5	bad big mistake purchasing it.	21
411ffb5	12ff	3.5	above average can be better	21
412ffb5	13ff	3.5	above average can be better	21
413ffb5	14ff	1.5	bad big mistake purchasing it.	21
414ffb5	15ff	1	very bad, worst experience, dont buy it ever	21
415ffb5	16ff	1	very bad, worst experience, dont buy it ever	21
416ffb5	17ff	3.5	above average can be better	21
417ffb5	18ff	4.5	Very good product i recommend it	21
418ffb5	19ff	1	very bad, worst experience, dont buy it ever	21
419ffb5	20ff	3.5	above average can be better	21
420ffb5	1ff	4	Good product can go for it, but not excellent	22
421ffb5	2ff	2	bad not below average	22
422ffb5	3ff	1	very bad, worst experience, dont buy it ever	22
423ffb5	4ff	2	bad not below average	22
424ffb5	5ff	3.5	above average can be better	22
425ffb5	6ff	2	bad not below average	22
426ffb5	7ff	4.5	Very good product i recommend it	22
427ffb5	8ff	4.5	Very good product i recommend it	22
428ffb5	9ff	3	ok product not very good	22
429ffb5	10ff	5	Excellent product just go for it	22
430ffb5	11ff	4.5	Very good product i recommend it	22
431ffb5	12ff	4.5	Very good product i recommend it	22
432ffb5	13ff	2.5	average product not that good	22
433ffb5	14ff	2.5	average product not that good	22
434ffb5	15ff	4	Good product can go for it, but not excellent	22
435ffb5	16ff	1	very bad, worst experience, dont buy it ever	22
436ffb6	17ff	3.5	above average can be better	22
437ffb6	18ff	4.5	Very good product i recommend it	22
438ffb6	19ff	2.5	average product not that good	22
439ffb6	20ff	3	ok product not very good	22
440ffb6	1ff	5	Excellent product just go for it	23
441ffb6	2ff	2	bad not below average	23
442ffb6	3ff	4.5	Very good product i recommend it	23
443ffb6	4ff	1	very bad, worst experience, dont buy it ever	23
444ffb6	5ff	1.5	bad big mistake purchasing it.	23
445ffb6	6ff	1	very bad, worst experience, dont buy it ever	23
446ffb6	7ff	3.5	above average can be better	23
447ffb6	8ff	4	Good product can go for it, but not excellent	23
448ffb6	9ff	2.5	average product not that good	23
449ffb6	10ff	1	very bad, worst experience, dont buy it ever	23
450ffb6	11ff	1.5	bad big mistake purchasing it.	23
451ffb6	12ff	5	Excellent product just go for it	23
452ffb6	13ff	3	ok product not very good	23
453ffb6	14ff	4	Good product can go for it, but not excellent	23
454ffb6	15ff	3.5	above average can be better	23
455ffb6	16ff	3	ok product not very good	23
456ffb6	17ff	3.5	above average can be better	23
457ffb6	18ff	5	Excellent product just go for it	23
458ffb6	19ff	2	bad not below average	23
459ffb6	20ff	5	Excellent product just go for it	23
460ffb6	1ff	2	bad not below average	24
461ffb6	2ff	2.5	average product not that good	24
462ffb6	3ff	4	Good product can go for it, but not excellent	24
463ffb6	4ff	5	Excellent product just go for it	24
464ffb6	5ff	4	Good product can go for it, but not excellent	24
465ffb6	6ff	5	Excellent product just go for it	24
466ffb6	7ff	4.5	Very good product i recommend it	24
467ffb6	8ff	3	ok product not very good	24
468ffb6	9ff	1.5	bad big mistake purchasing it.	24
469ffb6	10ff	1	very bad, worst experience, dont buy it ever	24
470ffb6	11ff	3	ok product not very good	24
471ffb6	12ff	2	bad not below average	24
472ffb6	13ff	3	ok product not very good	24
473ffb6	14ff	5	Excellent product just go for it	24
474ffb6	15ff	2	bad not below average	24
475ffb6	16ff	1	very bad, worst experience, dont buy it ever	24
476ffb7	17ff	4.5	Very good product i recommend it	24
477ffb7	18ff	4	Good product can go for it, but not excellent	24
478ffb7	19ff	3.5	above average can be better	24
479ffb7	20ff	4.5	Very good product i recommend it	24
480ffb7	1ff	2	bad not below average	25
481ffb7	2ff	1	very bad, worst experience, dont buy it ever	25
482ffb7	3ff	4.5	Very good product i recommend it	25
483ffb7	4ff	3.5	above average can be better	25
484ffb7	5ff	4	Good product can go for it, but not excellent	25
485ffb7	6ff	3	ok product not very good	25
486ffb7	7ff	2	bad not below average	25
487ffb7	8ff	5	Excellent product just go for it	25
488ffb7	9ff	1.5	bad big mistake purchasing it.	25
489ffb7	10ff	4	Good product can go for it, but not excellent	25
490ffb7	11ff	4	Good product can go for it, but not excellent	25
491ffb7	12ff	4.5	Very good product i recommend it	25
492ffb7	13ff	4	Good product can go for it, but not excellent	25
493ffb7	14ff	5	Excellent product just go for it	25
494ffb7	15ff	1	very bad, worst experience, dont buy it ever	25
495ffb7	16ff	2	bad not below average	25
496ffb7	17ff	5	Excellent product just go for it	25
497ffb7	18ff	2.5	average product not that good	25
498ffb7	19ff	5	Excellent product just go for it	25
499ffb7	20ff	4.5	Very good product i recommend it	25
500ffb7	1ff	2	bad not below average	26
501ffb7	2ff	3	ok product not very good	26
502ffb7	3ff	1.5	bad big mistake purchasing it.	26
503ffb7	4ff	1	very bad, worst experience, dont buy it ever	26
504ffb7	5ff	3.5	above average can be better	26
505ffb7	6ff	3.5	above average can be better	26
506ffb7	7ff	3	ok product not very good	26
507ffb7	8ff	2	bad not below average	26
508ffb7	9ff	3.5	above average can be better	26
509ffb7	10ff	1.5	bad big mistake purchasing it.	26
510ffb7	11ff	1	very bad, worst experience, dont buy it ever	26
511ffb7	12ff	2	bad not below average	26
512ffb7	13ff	1	very bad, worst experience, dont buy it ever	26
513ffb7	14ff	1	very bad, worst experience, dont buy it ever	26
514ffb7	15ff	1	very bad, worst experience, dont buy it ever	26
515ffb7	16ff	5	Excellent product just go for it	26
516ffb7	17ff	1.5	bad big mistake purchasing it.	26
517ffb8	18ff	1	very bad, worst experience, dont buy it ever	26
518ffb8	19ff	5	Excellent product just go for it	26
519ffb8	20ff	3.5	above average can be better	26
520ffb8	1ff	1.5	bad big mistake purchasing it.	27
521ffb8	2ff	1.5	bad big mistake purchasing it.	27
522ffb8	3ff	5	Excellent product just go for it	27
523ffb8	4ff	4.5	Very good product i recommend it	27
524ffb8	5ff	2.5	average product not that good	27
525ffb8	6ff	3	ok product not very good	27
526ffb8	7ff	1.5	bad big mistake purchasing it.	27
527ffb8	8ff	2	bad not below average	27
528ffb8	9ff	5	Excellent product just go for it	27
529ffb8	10ff	5	Excellent product just go for it	27
530ffb8	11ff	2.5	average product not that good	27
531ffb8	12ff	5	Excellent product just go for it	27
532ffb8	13ff	4	Good product can go for it, but not excellent	27
533ffb8	14ff	1	very bad, worst experience, dont buy it ever	27
534ffb8	15ff	1	very bad, worst experience, dont buy it ever	27
535ffb8	16ff	4	Good product can go for it, but not excellent	27
536ffb8	17ff	5	Excellent product just go for it	27
537ffb8	18ff	4	Good product can go for it, but not excellent	27
538ffb8	19ff	1.5	bad big mistake purchasing it.	27
539ffb8	20ff	3	ok product not very good	27
540ffb8	1ff	3.5	above average can be better	28
541ffb8	2ff	4.5	Very good product i recommend it	28
542ffb8	3ff	1.5	bad big mistake purchasing it.	28
543ffb8	4ff	3	ok product not very good	28
544ffb8	5ff	2.5	average product not that good	28
545ffb8	6ff	3	ok product not very good	28
546ffb8	7ff	4.5	Very good product i recommend it	28
547ffb8	8ff	5	Excellent product just go for it	28
548ffb8	9ff	4.5	Very good product i recommend it	28
549ffb8	10ff	2.5	average product not that good	28
550ffb8	11ff	4	Good product can go for it, but not excellent	28
551ffb8	12ff	1	very bad, worst experience, dont buy it ever	28
552ffb8	13ff	4.5	Very good product i recommend it	28
553ffb8	14ff	1	very bad, worst experience, dont buy it ever	28
554ffb8	15ff	1.5	bad big mistake purchasing it.	28
555ffb8	16ff	4	Good product can go for it, but not excellent	28
556ffb8	17ff	3	ok product not very good	28
557ffb9	18ff	3.5	above average can be better	28
558ffb9	19ff	3	ok product not very good	28
559ffb9	20ff	1	very bad, worst experience, dont buy it ever	28
560ffb9	1ff	3	ok product not very good	29
561ffb9	2ff	2	bad not below average	29
562ffb9	3ff	1	very bad, worst experience, dont buy it ever	29
563ffb9	4ff	4	Good product can go for it, but not excellent	29
564ffb9	5ff	2	bad not below average	29
565ffb9	6ff	4.5	Very good product i recommend it	29
566ffb9	7ff	1.5	bad big mistake purchasing it.	29
567ffb9	8ff	3	ok product not very good	29
568ffb9	9ff	3.5	above average can be better	29
569ffb9	10ff	1.5	bad big mistake purchasing it.	29
570ffb9	11ff	5	Excellent product just go for it	29
571ffb9	12ff	2.5	average product not that good	29
572ffb9	13ff	4.5	Very good product i recommend it	29
573ffb9	14ff	2.5	average product not that good	29
574ffb9	15ff	4.5	Very good product i recommend it	29
575ffb9	16ff	3	ok product not very good	29
576ffb9	17ff	5	Excellent product just go for it	29
577ffb9	18ff	2.5	average product not that good	29
578ffb9	19ff	4	Good product can go for it, but not excellent	29
579ffb9	20ff	3	ok product not very good	29
580ffb9	1ff	1.5	bad big mistake purchasing it.	30
581ffb9	2ff	2	bad not below average	30
582ffb9	3ff	3	ok product not very good	30
583ffb9	4ff	2	bad not below average	30
584ffb9	5ff	4	Good product can go for it, but not excellent	30
585ffb9	6ff	2.5	average product not that good	30
586ffb9	7ff	1	very bad, worst experience, dont buy it ever	30
587ffb9	8ff	4	Good product can go for it, but not excellent	30
588ffb9	9ff	1.5	bad big mistake purchasing it.	30
589ffb9	10ff	5	Excellent product just go for it	30
590ffb9	11ff	4	Good product can go for it, but not excellent	30
591ffb9	12ff	5	Excellent product just go for it	30
592ffb9	13ff	3	ok product not very good	30
593ffb9	14ff	2.5	average product not that good	30
594ffb9	15ff	3	ok product not very good	30
595ffb9	16ff	3	ok product not very good	30
596ffba	17ff	2	bad not below average	30
597ffba	18ff	3	ok product not very good	30
598ffba	19ff	2	bad not below average	30
599ffba	20ff	1	very bad, worst experience, dont buy it ever	30
600ffba	1ff	1	very bad, worst experience, dont buy it ever	31
601ffba	2ff	2	bad not below average	31
602ffba	3ff	3	ok product not very good	31
603ffba	4ff	2.5	average product not that good	31
604ffba	5ff	3.5	above average can be better	31
605ffba	6ff	3	ok product not very good	31
606ffba	7ff	1	very bad, worst experience, dont buy it ever	31
607ffba	8ff	2.5	average product not that good	31
608ffba	9ff	2	bad not below average	31
609ffba	10ff	3.5	above average can be better	31
610ffba	11ff	4.5	Very good product i recommend it	31
611ffba	12ff	4.5	Very good product i recommend it	31
612ffba	13ff	4.5	Very good product i recommend it	31
613ffba	14ff	2.5	average product not that good	31
614ffba	15ff	3	ok product not very good	31
615ffba	16ff	3.5	above average can be better	31
616ffba	17ff	3	ok product not very good	31
617ffba	18ff	2	bad not below average	31
618ffba	19ff	1.5	bad big mistake purchasing it.	31
619ffba	20ff	2	bad not below average	31
620ffba	1ff	2.5	average product not that good	32
621ffba	2ff	1.5	bad big mistake purchasing it.	32
622ffba	3ff	3	ok product not very good	32
623ffba	4ff	5	Excellent product just go for it	32
624ffba	5ff	4	Good product can go for it, but not excellent	32
625ffba	6ff	1	very bad, worst experience, dont buy it ever	32
626ffba	7ff	3	ok product not very good	32
627ffba	8ff	1	very bad, worst experience, dont buy it ever	32
628ffba	9ff	1	very bad, worst experience, dont buy it ever	32
629ffba	10ff	4	Good product can go for it, but not excellent	32
630ffba	11ff	3.5	above average can be better	32
631ffba	12ff	2.5	average product not that good	32
632ffba	13ff	2	bad not below average	32
633ffba	14ff	3	ok product not very good	32
634ffba	15ff	2.5	average product not that good	32
635ffbb	16ff	5	Excellent product just go for it	32
636ffbb	17ff	4	Good product can go for it, but not excellent	32
637ffbb	18ff	1	very bad, worst experience, dont buy it ever	32
638ffbb	19ff	3	ok product not very good	32
639ffbb	20ff	1	very bad, worst experience, dont buy it ever	32
640ffbb	1ff	3	ok product not very good	33
641ffbb	2ff	3.5	above average can be better	33
642ffbb	3ff	2	bad not below average	33
643ffbb	4ff	1	very bad, worst experience, dont buy it ever	33
644ffbb	5ff	3	ok product not very good	33
645ffbb	6ff	2	bad not below average	33
646ffbb	7ff	5	Excellent product just go for it	33
647ffbb	8ff	1	very bad, worst experience, dont buy it ever	33
648ffbb	9ff	2.5	average product not that good	33
649ffbb	10ff	3.5	above average can be better	33
650ffbb	11ff	2.5	average product not that good	33
651ffbb	12ff	3	ok product not very good	33
652ffbb	13ff	2	bad not below average	33
653ffbb	14ff	1.5	bad big mistake purchasing it.	33
654ffbb	15ff	5	Excellent product just go for it	33
655ffbb	16ff	5	Excellent product just go for it	33
656ffbb	17ff	3	ok product not very good	33
657ffbb	18ff	3	ok product not very good	33
658ffbb	19ff	2	bad not below average	33
659ffbb	20ff	1	very bad, worst experience, dont buy it ever	33
660ffbb	1ff	5	Excellent product just go for it	34
661ffbb	2ff	5	Excellent product just go for it	34
662ffbb	3ff	2.5	average product not that good	34
663ffbb	4ff	5	Excellent product just go for it	34
664ffbb	5ff	5	Excellent product just go for it	34
665ffbb	6ff	3.5	above average can be better	34
666ffbb	7ff	3	ok product not very good	34
667ffbb	8ff	1	very bad, worst experience, dont buy it ever	34
668ffbb	9ff	5	Excellent product just go for it	34
669ffbb	10ff	4.5	Very good product i recommend it	34
670ffbb	11ff	1	very bad, worst experience, dont buy it ever	34
671ffbb	12ff	2	bad not below average	34
672ffbb	13ff	3.5	above average can be better	34
673ffbb	14ff	3.5	above average can be better	34
674ffbb	15ff	3.5	above average can be better	34
675ffbc	16ff	4.5	Very good product i recommend it	34
676ffbc	17ff	1	very bad, worst experience, dont buy it ever	34
677ffbc	18ff	4.5	Very good product i recommend it	34
678ffbc	19ff	4	Good product can go for it, but not excellent	34
679ffbc	20ff	2.5	average product not that good	34
680ffbc	1ff	1.5	bad big mistake purchasing it.	35
681ffbc	2ff	3	ok product not very good	35
682ffbc	3ff	2	bad not below average	35
683ffbc	4ff	1.5	bad big mistake purchasing it.	35
684ffbc	5ff	1.5	bad big mistake purchasing it.	35
685ffbc	6ff	2.5	average product not that good	35
686ffbc	7ff	3.5	above average can be better	35
687ffbc	8ff	5	Excellent product just go for it	35
688ffbc	9ff	2.5	average product not that good	35
689ffbc	10ff	4	Good product can go for it, but not excellent	35
690ffbc	11ff	4	Good product can go for it, but not excellent	35
691ffbc	12ff	4	Good product can go for it, but not excellent	35
692ffbc	13ff	5	Excellent product just go for it	35
693ffbc	14ff	4.5	Very good product i recommend it	35
694ffbc	15ff	3	ok product not very good	35
695ffbc	16ff	4.5	Very good product i recommend it	35
696ffbc	17ff	2	bad not below average	35
697ffbc	18ff	3.5	above average can be better	35
698ffbc	19ff	3.5	above average can be better	35
699ffbc	20ff	3.5	above average can be better	35
700ffbc	1ff	4.5	Very good product i recommend it	36
701ffbc	2ff	1.5	bad big mistake purchasing it.	36
702ffbc	3ff	1	very bad, worst experience, dont buy it ever	36
703ffbc	4ff	2.5	average product not that good	36
704ffbc	5ff	2	bad not below average	36
705ffbc	6ff	5	Excellent product just go for it	36
706ffbc	7ff	4	Good product can go for it, but not excellent	36
707ffbc	8ff	1.5	bad big mistake purchasing it.	36
708ffbc	9ff	4.5	Very good product i recommend it	36
709ffbc	10ff	3	ok product not very good	36
710ffbc	11ff	2.5	average product not that good	36
711ffbc	12ff	2.5	average product not that good	36
712ffbc	13ff	4	Good product can go for it, but not excellent	36
713ffbc	14ff	4	Good product can go for it, but not excellent	36
714ffbc	15ff	4.5	Very good product i recommend it	36
715ffbc	16ff	2	bad not below average	36
716ffbc	17ff	4	Good product can go for it, but not excellent	36
717ffbd	18ff	2.5	average product not that good	36
718ffbd	19ff	3	ok product not very good	36
719ffbd	20ff	5	Excellent product just go for it	36
720ffbd	1ff	5	Excellent product just go for it	37
721ffbd	2ff	4	Good product can go for it, but not excellent	37
722ffbd	3ff	4	Good product can go for it, but not excellent	37
723ffbd	4ff	1	very bad, worst experience, dont buy it ever	37
724ffbd	5ff	4	Good product can go for it, but not excellent	37
725ffbd	6ff	4.5	Very good product i recommend it	37
726ffbd	7ff	1.5	bad big mistake purchasing it.	37
727ffbd	8ff	2.5	average product not that good	37
728ffbd	9ff	4	Good product can go for it, but not excellent	37
729ffbd	10ff	2.5	average product not that good	37
730ffbd	11ff	4	Good product can go for it, but not excellent	37
731ffbd	12ff	2.5	average product not that good	37
732ffbd	13ff	3	ok product not very good	37
733ffbd	14ff	1.5	bad big mistake purchasing it.	37
734ffbd	15ff	5	Excellent product just go for it	37
735ffbd	16ff	2	bad not below average	37
736ffbd	17ff	4	Good product can go for it, but not excellent	37
737ffbd	18ff	1.5	bad big mistake purchasing it.	37
738ffbd	19ff	2.5	average product not that good	37
739ffbd	20ff	3.5	above average can be better	37
740ffbd	1ff	5	Excellent product just go for it	38
741ffbd	2ff	1.5	bad big mistake purchasing it.	38
742ffbd	3ff	1	very bad, worst experience, dont buy it ever	38
743ffbd	4ff	2	bad not below average	38
744ffbd	5ff	5	Excellent product just go for it	38
745ffbd	6ff	2.5	average product not that good	38
746ffbd	7ff	3	ok product not very good	38
747ffbd	8ff	1.5	bad big mistake purchasing it.	38
748ffbd	9ff	3.5	above average can be better	38
749ffbd	10ff	3	ok product not very good	38
750ffbd	11ff	4	Good product can go for it, but not excellent	38
751ffbd	12ff	3	ok product not very good	38
752ffbd	13ff	2	bad not below average	38
753ffbd	14ff	4.5	Very good product i recommend it	38
754ffbd	15ff	3.5	above average can be better	38
755ffbd	16ff	4.5	Very good product i recommend it	38
756ffbd	17ff	2	bad not below average	38
757ffbd	18ff	3.5	above average can be better	38
758ffbd	19ff	2.5	average product not that good	38
759ffbe	20ff	4	Good product can go for it, but not excellent	38
760ffbe	1ff	4	Good product can go for it, but not excellent	39
761ffbe	2ff	3	ok product not very good	39
762ffbe	3ff	2	bad not below average	39
763ffbe	4ff	4.5	Very good product i recommend it	39
764ffbe	5ff	1	very bad, worst experience, dont buy it ever	39
765ffbe	6ff	3	ok product not very good	39
766ffbe	7ff	1.5	bad big mistake purchasing it.	39
767ffbe	8ff	3	ok product not very good	39
768ffbe	9ff	1.5	bad big mistake purchasing it.	39
769ffbe	10ff	4	Good product can go for it, but not excellent	39
770ffbe	11ff	3	ok product not very good	39
771ffbe	12ff	3.5	above average can be better	39
772ffbe	13ff	5	Excellent product just go for it	39
773ffbe	14ff	2.5	average product not that good	39
774ffbe	15ff	4.5	Very good product i recommend it	39
775ffbe	16ff	4	Good product can go for it, but not excellent	39
776ffbe	17ff	1	very bad, worst experience, dont buy it ever	39
777ffbe	18ff	1	very bad, worst experience, dont buy it ever	39
778ffbe	19ff	1	very bad, worst experience, dont buy it ever	39
779ffbe	20ff	1	very bad, worst experience, dont buy it ever	39
780ffbe	1ff	4	Good product can go for it, but not excellent	40
781ffbe	2ff	2	bad not below average	40
782ffbe	3ff	4	Good product can go for it, but not excellent	40
783ffbe	4ff	1	very bad, worst experience, dont buy it ever	40
784ffbe	5ff	4.5	Very good product i recommend it	40
785ffbe	6ff	1	very bad, worst experience, dont buy it ever	40
786ffbe	7ff	3.5	above average can be better	40
787ffbe	8ff	4.5	Very good product i recommend it	40
788ffbe	9ff	3.5	above average can be better	40
789ffbe	10ff	3	ok product not very good	40
790ffbe	11ff	4.5	Very good product i recommend it	40
791ffbe	12ff	2.5	average product not that good	40
792ffbe	13ff	1	very bad, worst experience, dont buy it ever	40
793ffbe	14ff	4	Good product can go for it, but not excellent	40
794ffbe	15ff	1.5	bad big mistake purchasing it.	40
795ffbe	16ff	3.5	above average can be better	40
796ffbe	17ff	4.5	Very good product i recommend it	40
797ffbe	18ff	4	Good product can go for it, but not excellent	40
798ffbe	19ff	5	Excellent product just go for it	40
799ffbe	20ff	1.5	bad big mistake purchasing it.	40
800ffbe	1ff	4.5	Very good product i recommend it	41
801ffbe	2ff	2.5	average product not that good	41
802ffbf	3ff	4.5	Very good product i recommend it	41
803ffbf	4ff	5	Excellent product just go for it	41
804ffbf	5ff	5	Excellent product just go for it	41
805ffbf	6ff	1	very bad, worst experience, dont buy it ever	41
806ffbf	7ff	2.5	average product not that good	41
807ffbf	8ff	1	very bad, worst experience, dont buy it ever	41
808ffbf	9ff	3	ok product not very good	41
809ffbf	10ff	2.5	average product not that good	41
810ffbf	11ff	4	Good product can go for it, but not excellent	41
811ffbf	12ff	4.5	Very good product i recommend it	41
812ffbf	13ff	5	Excellent product just go for it	41
813ffbf	14ff	3	ok product not very good	41
814ffbf	15ff	4.5	Very good product i recommend it	41
815ffbf	16ff	5	Excellent product just go for it	41
816ffbf	17ff	2	bad not below average	41
817ffbf	18ff	2	bad not below average	41
818ffbf	19ff	5	Excellent product just go for it	41
819ffbf	20ff	5	Excellent product just go for it	41
820ffbf	1ff	3	ok product not very good	42
821ffbf	2ff	5	Excellent product just go for it	42
822ffbf	3ff	2.5	average product not that good	42
823ffbf	4ff	3.5	above average can be better	42
824ffbf	5ff	1.5	bad big mistake purchasing it.	42
825ffbf	6ff	2	bad not below average	42
826ffbf	7ff	4.5	Very good product i recommend it	42
827ffbf	8ff	3.5	above average can be better	42
828ffbf	9ff	4.5	Very good product i recommend it	42
829ffbf	10ff	2.5	average product not that good	42
830ffbf	11ff	2.5	average product not that good	42
831ffbf	12ff	4.5	Very good product i recommend it	42
832ffbf	13ff	3	ok product not very good	42
833ffbf	14ff	1	very bad, worst experience, dont buy it ever	42
834ffbf	15ff	3	ok product not very good	42
835ffbf	16ff	4	Good product can go for it, but not excellent	42
836ffbf	17ff	4.5	Very good product i recommend it	42
837ffbf	18ff	1	very bad, worst experience, dont buy it ever	42
838ffbf	19ff	4	Good product can go for it, but not excellent	42
839ffbf	20ff	1.5	bad big mistake purchasing it.	42
840ffbf	1ff	1.5	bad big mistake purchasing it.	43
841ffbf	2ff	5	Excellent product just go for it	43
842ffbf	3ff	2.5	average product not that good	43
843ffbf	4ff	1	very bad, worst experience, dont buy it ever	43
844ffbf	5ff	2	bad not below average	43
845ffbf	6ff	4.5	Very good product i recommend it	43
846ffbf	7ff	2	bad not below average	43
847ffc0	8ff	2	bad not below average	43
848ffc0	9ff	5	Excellent product just go for it	43
849ffc0	10ff	4	Good product can go for it, but not excellent	43
850ffc0	11ff	4.5	Very good product i recommend it	43
851ffc0	12ff	2	bad not below average	43
852ffc0	13ff	3	ok product not very good	43
853ffc0	14ff	1.5	bad big mistake purchasing it.	43
854ffc0	15ff	3	ok product not very good	43
855ffc0	16ff	1	very bad, worst experience, dont buy it ever	43
856ffc0	17ff	2.5	average product not that good	43
857ffc0	18ff	4.5	Very good product i recommend it	43
858ffc0	19ff	4	Good product can go for it, but not excellent	43
859ffc0	20ff	1.5	bad big mistake purchasing it.	43
860ffc0	1ff	2	bad not below average	44
861ffc0	2ff	4.5	Very good product i recommend it	44
862ffc0	3ff	3.5	above average can be better	44
863ffc0	4ff	4.5	Very good product i recommend it	44
864ffc0	5ff	2	bad not below average	44
865ffc0	6ff	3	ok product not very good	44
866ffc0	7ff	2	bad not below average	44
867ffc0	8ff	5	Excellent product just go for it	44
868ffc0	9ff	5	Excellent product just go for it	44
869ffc0	10ff	2	bad not below average	44
870ffc0	11ff	1	very bad, worst experience, dont buy it ever	44
871ffc0	12ff	3.5	above average can be better	44
872ffc0	13ff	1.5	bad big mistake purchasing it.	44
873ffc0	14ff	4	Good product can go for it, but not excellent	44
874ffc0	15ff	3	ok product not very good	44
875ffc0	16ff	4.5	Very good product i recommend it	44
876ffc0	17ff	1	very bad, worst experience, dont buy it ever	44
877ffc0	18ff	3.5	above average can be better	44
878ffc0	19ff	4	Good product can go for it, but not excellent	44
879ffc0	20ff	5	Excellent product just go for it	44
880ffc0	1ff	2.5	average product not that good	45
881ffc0	2ff	4.5	Very good product i recommend it	45
882ffc0	3ff	4.5	Very good product i recommend it	45
883ffc0	4ff	4.5	Very good product i recommend it	45
884ffc0	5ff	4.5	Very good product i recommend it	45
885ffc0	6ff	3	ok product not very good	45
886ffc0	7ff	1.5	bad big mistake purchasing it.	45
887ffc1	8ff	1.5	bad big mistake purchasing it.	45
888ffc1	9ff	2	bad not below average	45
889ffc1	10ff	4.5	Very good product i recommend it	45
890ffc1	11ff	2.5	average product not that good	45
891ffc1	12ff	4	Good product can go for it, but not excellent	45
892ffc1	13ff	3.5	above average can be better	45
893ffc1	14ff	4	Good product can go for it, but not excellent	45
894ffc1	15ff	1.5	bad big mistake purchasing it.	45
895ffc1	16ff	2.5	average product not that good	45
896ffc1	17ff	2	bad not below average	45
897ffc1	18ff	1.5	bad big mistake purchasing it.	45
898ffc1	19ff	4	Good product can go for it, but not excellent	45
899ffc1	20ff	1.5	bad big mistake purchasing it.	45
900ffc1	1ff	1	very bad, worst experience, dont buy it ever	46
901ffc1	2ff	2.5	average product not that good	46
902ffc1	3ff	1.5	bad big mistake purchasing it.	46
903ffc1	4ff	1	very bad, worst experience, dont buy it ever	46
904ffc1	5ff	2	bad not below average	46
905ffc1	6ff	1.5	bad big mistake purchasing it.	46
906ffc1	7ff	4	Good product can go for it, but not excellent	46
907ffc1	8ff	5	Excellent product just go for it	46
908ffc1	9ff	4.5	Very good product i recommend it	46
909ffc1	10ff	2.5	average product not that good	46
910ffc1	11ff	1	very bad, worst experience, dont buy it ever	46
911ffc1	12ff	3.5	above average can be better	46
912ffc1	13ff	2.5	average product not that good	46
913ffc1	14ff	2.5	average product not that good	46
914ffc1	15ff	2	bad not below average	46
915ffc1	16ff	3.5	above average can be better	46
916ffc1	17ff	3.5	above average can be better	46
917ffc1	18ff	1.5	bad big mistake purchasing it.	46
918ffc1	19ff	4	Good product can go for it, but not excellent	46
919ffc1	20ff	1	very bad, worst experience, dont buy it ever	46
920ffc1	1ff	5	Excellent product just go for it	47
921ffc1	2ff	2.5	average product not that good	47
922ffc1	3ff	1	very bad, worst experience, dont buy it ever	47
923ffc2	4ff	4.5	Very good product i recommend it	47
924ffc2	5ff	3	ok product not very good	47
925ffc2	6ff	1.5	bad big mistake purchasing it.	47
926ffc2	7ff	5	Excellent product just go for it	47
927ffc2	8ff	4.5	Very good product i recommend it	47
928ffc2	9ff	3.5	above average can be better	47
929ffc2	10ff	3	ok product not very good	47
930ffc2	11ff	3	ok product not very good	47
931ffc2	12ff	3	ok product not very good	47
932ffc2	13ff	4	Good product can go for it, but not excellent	47
933ffc2	14ff	3.5	above average can be better	47
934ffc2	15ff	2.5	average product not that good	47
935ffc2	16ff	2	bad not below average	47
936ffc2	17ff	1.5	bad big mistake purchasing it.	47
937ffc2	18ff	4.5	Very good product i recommend it	47
938ffc2	19ff	3.5	above average can be better	47
939ffc2	20ff	2.5	average product not that good	47
940ffc2	1ff	2	bad not below average	48
941ffc2	2ff	1.5	bad big mistake purchasing it.	48
942ffc2	3ff	2.5	average product not that good	48
943ffc2	4ff	5	Excellent product just go for it	48
944ffc2	5ff	4.5	Very good product i recommend it	48
945ffc2	6ff	1	very bad, worst experience, dont buy it ever	48
946ffc2	7ff	1	very bad, worst experience, dont buy it ever	48
947ffc2	8ff	2	bad not below average	48
948ffc2	9ff	4.5	Very good product i recommend it	48
949ffc2	10ff	1	very bad, worst experience, dont buy it ever	48
950ffc2	11ff	3	ok product not very good	48
951ffc2	12ff	5	Excellent product just go for it	48
952ffc2	13ff	3	ok product not very good	48
953ffc2	14ff	4	Good product can go for it, but not excellent	48
954ffc2	15ff	1.5	bad big mistake purchasing it.	48
955ffc2	16ff	3.5	above average can be better	48
956ffc2	17ff	2	bad not below average	48
957ffc2	18ff	3.5	above average can be better	48
958ffc2	19ff	4.5	Very good product i recommend it	48
959ffc2	20ff	3.5	above average can be better	48
960ffc2	1ff	3	ok product not very good	49
961ffc2	2ff	3.5	above average can be better	49
962ffc2	3ff	2.5	average product not that good	49
963ffc2	4ff	3	ok product not very good	49
964ffc2	5ff	2	bad not below average	49
965ffc3	6ff	5	Excellent product just go for it	49
966ffc3	7ff	2	bad not below average	49
967ffc3	8ff	5	Excellent product just go for it	49
968ffc3	9ff	3.5	above average can be better	49
969ffc3	10ff	4	Good product can go for it, but not excellent	49
970ffc3	11ff	3.5	above average can be better	49
971ffc3	12ff	1.5	bad big mistake purchasing it.	49
972ffc3	13ff	3.5	above average can be better	49
973ffc3	14ff	3.5	above average can be better	49
974ffc3	15ff	2.5	average product not that good	49
975ffc3	16ff	3.5	above average can be better	49
976ffc3	17ff	3	ok product not very good	49
977ffc3	18ff	4	Good product can go for it, but not excellent	49
978ffc3	19ff	2	bad not below average	49
979ffc3	20ff	1	very bad, worst experience, dont buy it ever	49
980ffc3	1ff	5	Excellent product just go for it	50
981ffc3	2ff	1.5	bad big mistake purchasing it.	50
982ffc3	3ff	4.5	Very good product i recommend it	50
983ffc3	4ff	1	very bad, worst experience, dont buy it ever	50
984ffc3	5ff	1.5	bad big mistake purchasing it.	50
985ffc3	6ff	2	bad not below average	50
986ffc3	7ff	4.5	Very good product i recommend it	50
987ffc3	8ff	4.5	Very good product i recommend it	50
988ffc3	9ff	2	bad not below average	50
989ffc3	10ff	4	Good product can go for it, but not excellent	50
990ffc3	11ff	2	bad not below average	50
991ffc3	12ff	2.5	average product not that good	50
992ffc3	13ff	1	very bad, worst experience, dont buy it ever	50
993ffc3	14ff	2	bad not below average	50
994ffc3	15ff	3	ok product not very good	50
995ffc3	16ff	5	Excellent product just go for it	50
996ffc3	17ff	3.5	above average can be better	50
997ffc3	18ff	5	Excellent product just go for it	50
998ffc3	19ff	4	Good product can go for it, but not excellent	50
999ffc3	20ff	4.5	Very good product i recommend it	50
1000ffc3	1ff	1	very bad, worst experience, dont buy it ever	51
1001ffc3	2ff	3.5	above average can be better	51
1002ffc3	3ff	1	very bad, worst experience, dont buy it ever	51
1003ffc3	4ff	5	Excellent product just go for it	51
1004ffc4	5ff	3	ok product not very good	51
1005ffc4	6ff	3.5	above average can be better	51
1006ffc4	7ff	2.5	average product not that good	51
1007ffc4	8ff	3	ok product not very good	51
1008ffc4	9ff	1	very bad, worst experience, dont buy it ever	51
1009ffc4	10ff	5	Excellent product just go for it	51
1010ffc4	11ff	3.5	above average can be better	51
1011ffc4	12ff	2.5	average product not that good	51
1012ffc4	13ff	4	Good product can go for it, but not excellent	51
1013ffc4	14ff	4	Good product can go for it, but not excellent	51
1014ffc4	15ff	2.5	average product not that good	51
1015ffc4	16ff	3	ok product not very good	51
1016ffc4	17ff	1.5	bad big mistake purchasing it.	51
1017ffc4	18ff	2.5	average product not that good	51
1018ffc4	19ff	4.5	Very good product i recommend it	51
1019ffc4	20ff	1	very bad, worst experience, dont buy it ever	51
1020ffc4	1ff	4	Good product can go for it, but not excellent	52
1021ffc4	2ff	1	very bad, worst experience, dont buy it ever	52
1022ffc4	3ff	2.5	average product not that good	52
1023ffc4	4ff	1	very bad, worst experience, dont buy it ever	52
1024ffc4	5ff	4.5	Very good product i recommend it	52
1025ffc4	6ff	5	Excellent product just go for it	52
1026ffc4	7ff	2	bad not below average	52
1027ffc4	8ff	2	bad not below average	52
1028ffc4	9ff	4.5	Very good product i recommend it	52
1029ffc4	10ff	1	very bad, worst experience, dont buy it ever	52
1030ffc4	11ff	4	Good product can go for it, but not excellent	52
1031ffc4	12ff	4	Good product can go for it, but not excellent	52
1032ffc4	13ff	5	Excellent product just go for it	52
1033ffc4	14ff	1.5	bad big mistake purchasing it.	52
1034ffc4	15ff	1	very bad, worst experience, dont buy it ever	52
1035ffc4	16ff	2	bad not below average	52
1036ffc4	17ff	2	bad not below average	52
1037ffc4	18ff	1.5	bad big mistake purchasing it.	52
1038ffc4	19ff	5	Excellent product just go for it	52
1039ffc4	20ff	2.5	average product not that good	52
1040ffc5	1ff	4.5	Very good product i recommend it	53
1041ffc5	2ff	2	bad not below average	53
1042ffc5	3ff	2.5	average product not that good	53
1043ffc5	4ff	2.5	average product not that good	53
1044ffc5	5ff	3	ok product not very good	53
1045ffc5	6ff	3.5	above average can be better	53
1046ffc5	7ff	5	Excellent product just go for it	53
1047ffc5	8ff	2	bad not below average	53
1048ffc5	9ff	5	Excellent product just go for it	53
1049ffc5	10ff	1	very bad, worst experience, dont buy it ever	53
1050ffc5	11ff	4.5	Very good product i recommend it	53
1051ffc5	12ff	3	ok product not very good	53
1052ffc5	13ff	2	bad not below average	53
1053ffc5	14ff	2.5	average product not that good	53
1054ffc5	15ff	1.5	bad big mistake purchasing it.	53
1055ffc5	16ff	2	bad not below average	53
1056ffc5	17ff	4.5	Very good product i recommend it	53
1057ffc5	18ff	4.5	Very good product i recommend it	53
1058ffc5	19ff	3	ok product not very good	53
1059ffc5	20ff	3.5	above average can be better	53
1060ffc5	1ff	4.5	Very good product i recommend it	54
1061ffc5	2ff	4.5	Very good product i recommend it	54
1062ffc5	3ff	2.5	average product not that good	54
1063ffc5	4ff	3	ok product not very good	54
1064ffc5	5ff	4.5	Very good product i recommend it	54
1065ffc5	6ff	1	very bad, worst experience, dont buy it ever	54
1066ffc5	7ff	1.5	bad big mistake purchasing it.	54
1067ffc5	8ff	4.5	Very good product i recommend it	54
1068ffc5	9ff	2	bad not below average	54
1069ffc5	10ff	1	very bad, worst experience, dont buy it ever	54
1070ffc5	11ff	5	Excellent product just go for it	54
1071ffc5	12ff	1.5	bad big mistake purchasing it.	54
1072ffc5	13ff	4	Good product can go for it, but not excellent	54
1073ffc5	14ff	2.5	average product not that good	54
1074ffc5	15ff	3.5	above average can be better	54
1075ffc5	16ff	2	bad not below average	54
1076ffc5	17ff	2	bad not below average	54
1077ffc5	18ff	1	very bad, worst experience, dont buy it ever	54
1078ffc5	19ff	3.5	above average can be better	54
1079ffc5	20ff	2.5	average product not that good	54
1080ffc5	1ff	5	Excellent product just go for it	55
1081ffc5	2ff	4.5	Very good product i recommend it	55
1082ffc6	3ff	2.5	average product not that good	55
1083ffc6	4ff	4.5	Very good product i recommend it	55
1084ffc6	5ff	5	Excellent product just go for it	55
1085ffc6	6ff	2	bad not below average	55
1086ffc6	7ff	3.5	above average can be better	55
1087ffc6	8ff	1	very bad, worst experience, dont buy it ever	55
1088ffc6	9ff	4.5	Very good product i recommend it	55
1089ffc6	10ff	4	Good product can go for it, but not excellent	55
1090ffc6	11ff	2.5	average product not that good	55
1091ffc6	12ff	1.5	bad big mistake purchasing it.	55
1092ffc6	13ff	2.5	average product not that good	55
1093ffc6	14ff	4.5	Very good product i recommend it	55
1094ffc6	15ff	2	bad not below average	55
1095ffc6	16ff	1	very bad, worst experience, dont buy it ever	55
1096ffc6	17ff	3.5	above average can be better	55
1097ffc6	18ff	1	very bad, worst experience, dont buy it ever	55
1098ffc6	19ff	2.5	average product not that good	55
1099ffc6	20ff	3	ok product not very good	55
1100ffc6	1ff	4.5	Very good product i recommend it	56
1101ffc6	2ff	4	Good product can go for it, but not excellent	56
1102ffc6	3ff	3.5	above average can be better	56
1103ffc6	4ff	1	very bad, worst experience, dont buy it ever	56
1104ffc6	5ff	3.5	above average can be better	56
1105ffc6	6ff	4.5	Very good product i recommend it	56
1106ffc6	7ff	2.5	average product not that good	56
1107ffc6	8ff	3.5	above average can be better	56
1108ffc6	9ff	5	Excellent product just go for it	56
1109ffc6	10ff	2.5	average product not that good	56
1110ffc6	11ff	5	Excellent product just go for it	56
1111ffc6	12ff	1.5	bad big mistake purchasing it.	56
1112ffc6	13ff	4	Good product can go for it, but not excellent	56
1113ffc6	14ff	2.5	average product not that good	56
1114ffc6	15ff	3	ok product not very good	56
1115ffc6	16ff	4.5	Very good product i recommend it	56
1116ffc6	17ff	1.5	bad big mistake purchasing it.	56
1117ffc6	18ff	3.5	above average can be better	56
1118ffc6	19ff	4.5	Very good product i recommend it	56
1119ffc6	20ff	1.5	bad big mistake purchasing it.	56
1120ffc6	1ff	4.5	Very good product i recommend it	57
1121ffc6	2ff	5	Excellent product just go for it	57
1122ffc6	3ff	4.5	Very good product i recommend it	57
1123ffc6	4ff	4	Good product can go for it, but not excellent	57
1124ffc6	5ff	2.5	average product not that good	57
1125ffc7	6ff	1.5	bad big mistake purchasing it.	57
1126ffc7	7ff	3	ok product not very good	57
1127ffc7	8ff	2.5	average product not that good	57
1128ffc7	9ff	2.5	average product not that good	57
1129ffc7	10ff	5	Excellent product just go for it	57
1130ffc7	11ff	3	ok product not very good	57
1131ffc7	12ff	4.5	Very good product i recommend it	57
1132ffc7	13ff	4.5	Very good product i recommend it	57
1133ffc7	14ff	4.5	Very good product i recommend it	57
1134ffc7	15ff	4.5	Very good product i recommend it	57
1135ffc7	16ff	3	ok product not very good	57
1136ffc7	17ff	3	ok product not very good	57
1137ffc7	18ff	1.5	bad big mistake purchasing it.	57
1138ffc7	19ff	5	Excellent product just go for it	57
1139ffc7	20ff	2	bad not below average	57
1140ffc7	1ff	5	Excellent product just go for it	58
1141ffc7	2ff	4.5	Very good product i recommend it	58
1142ffc7	3ff	5	Excellent product just go for it	58
1143ffc7	4ff	2	bad not below average	58
1144ffc7	5ff	3	ok product not very good	58
1145ffc7	6ff	2	bad not below average	58
1146ffc7	7ff	4	Good product can go for it, but not excellent	58
1147ffc7	8ff	3.5	above average can be better	58
1148ffc7	9ff	3	ok product not very good	58
1149ffc7	10ff	3.5	above average can be better	58
1150ffc7	11ff	4.5	Very good product i recommend it	58
1151ffc7	12ff	1.5	bad big mistake purchasing it.	58
1152ffc7	13ff	4.5	Very good product i recommend it	58
1153ffc7	14ff	2.5	average product not that good	58
1154ffc7	15ff	1	very bad, worst experience, dont buy it ever	58
1155ffc7	16ff	1.5	bad big mistake purchasing it.	58
1156ffc7	17ff	4.5	Very good product i recommend it	58
1157ffc7	18ff	2	bad not below average	58
1158ffc7	19ff	3	ok product not very good	58
1159ffc7	20ff	2.5	average product not that good	58
1160ffc7	1ff	5	Excellent product just go for it	59
1161ffc7	2ff	3	ok product not very good	59
1162ffc7	3ff	2.5	average product not that good	59
1163ffc8	4ff	1.5	bad big mistake purchasing it.	59
1164ffc8	5ff	1	very bad, worst experience, dont buy it ever	59
1165ffc8	6ff	4.5	Very good product i recommend it	59
1166ffc8	7ff	1.5	bad big mistake purchasing it.	59
1167ffc8	8ff	2.5	average product not that good	59
1168ffc8	9ff	3	ok product not very good	59
1169ffc8	10ff	1	very bad, worst experience, dont buy it ever	59
1170ffc8	11ff	4	Good product can go for it, but not excellent	59
1171ffc8	12ff	4.5	Very good product i recommend it	59
1172ffc8	13ff	1.5	bad big mistake purchasing it.	59
1173ffc8	14ff	5	Excellent product just go for it	59
1174ffc8	15ff	3.5	above average can be better	59
1175ffc8	16ff	1	very bad, worst experience, dont buy it ever	59
1176ffc8	17ff	4.5	Very good product i recommend it	59
1177ffc8	18ff	2.5	average product not that good	59
1178ffc8	19ff	3	ok product not very good	59
1179ffc8	20ff	4.5	Very good product i recommend it	59
1180ffc8	1ff	1	very bad, worst experience, dont buy it ever	60
1181ffc8	2ff	1	very bad, worst experience, dont buy it ever	60
1182ffc8	3ff	4	Good product can go for it, but not excellent	60
1183ffc8	4ff	3.5	above average can be better	60
1184ffc8	5ff	4	Good product can go for it, but not excellent	60
1185ffc8	6ff	4.5	Very good product i recommend it	60
1186ffc8	7ff	2.5	average product not that good	60
1187ffc8	8ff	4	Good product can go for it, but not excellent	60
1188ffc8	9ff	1.5	bad big mistake purchasing it.	60
1189ffc8	10ff	1	very bad, worst experience, dont buy it ever	60
1190ffc8	11ff	5	Excellent product just go for it	60
1191ffc8	12ff	3.5	above average can be better	60
1192ffc8	13ff	4	Good product can go for it, but not excellent	60
1193ffc8	14ff	3	ok product not very good	60
1194ffc8	15ff	4.5	Very good product i recommend it	60
1195ffc8	16ff	4	Good product can go for it, but not excellent	60
1196ffc8	17ff	1.5	bad big mistake purchasing it.	60
1197ffc8	18ff	1.5	bad big mistake purchasing it.	60
1198ffc8	19ff	3.5	above average can be better	60
1199ffc8	20ff	3	ok product not very good	60
1200ffc8	1ff	1	very bad, worst experience, dont buy it ever	61
1201ffc8	2ff	1.5	bad big mistake purchasing it.	61
1202ffc8	3ff	2.5	average product not that good	61
1203ffc9	4ff	3.5	above average can be better	61
1204ffc9	5ff	2.5	average product not that good	61
1205ffc9	6ff	2	bad not below average	61
1206ffc9	7ff	1.5	bad big mistake purchasing it.	61
1207ffc9	8ff	3	ok product not very good	61
1208ffc9	9ff	1	very bad, worst experience, dont buy it ever	61
1209ffc9	10ff	2.5	average product not that good	61
1210ffc9	11ff	3.5	above average can be better	61
1211ffc9	12ff	2	bad not below average	61
1212ffc9	13ff	4	Good product can go for it, but not excellent	61
1213ffc9	14ff	1	very bad, worst experience, dont buy it ever	61
1214ffc9	15ff	3.5	above average can be better	61
1215ffc9	16ff	3.5	above average can be better	61
1216ffc9	17ff	5	Excellent product just go for it	61
1217ffc9	18ff	2.5	average product not that good	61
1218ffc9	19ff	4	Good product can go for it, but not excellent	61
1219ffc9	20ff	4.5	Very good product i recommend it	61
1220ffc9	1ff	2.5	average product not that good	62
1221ffc9	2ff	4.5	Very good product i recommend it	62
1222ffc9	3ff	2	bad not below average	62
1223ffc9	4ff	2	bad not below average	62
1224ffc9	5ff	3	ok product not very good	62
1225ffc9	6ff	4.5	Very good product i recommend it	62
1226ffc9	7ff	4	Good product can go for it, but not excellent	62
1227ffc9	8ff	4	Good product can go for it, but not excellent	62
1228ffc9	9ff	3	ok product not very good	62
1229ffc9	10ff	1	very bad, worst experience, dont buy it ever	62
1230ffc9	11ff	2	bad not below average	62
1231ffc9	12ff	4	Good product can go for it, but not excellent	62
1232ffc9	13ff	4.5	Very good product i recommend it	62
1233ffc9	14ff	3	ok product not very good	62
1234ffc9	15ff	4.5	Very good product i recommend it	62
1235ffc9	16ff	3	ok product not very good	62
1236ffc9	17ff	2	bad not below average	62
1237ffc9	18ff	1	very bad, worst experience, dont buy it ever	62
1238ffc9	19ff	1.5	bad big mistake purchasing it.	62
1239ffc9	20ff	4.5	Very good product i recommend it	62
1240ffca	1ff	4	Good product can go for it, but not excellent	63
1241ffca	2ff	3	ok product not very good	63
1242ffca	3ff	4	Good product can go for it, but not excellent	63
1243ffca	4ff	4.5	Very good product i recommend it	63
1244ffca	5ff	4.5	Very good product i recommend it	63
1245ffca	6ff	4	Good product can go for it, but not excellent	63
1246ffca	7ff	2	bad not below average	63
1247ffca	8ff	4.5	Very good product i recommend it	63
1248ffca	9ff	2	bad not below average	63
1249ffca	10ff	2.5	average product not that good	63
1250ffca	11ff	1	very bad, worst experience, dont buy it ever	63
1251ffca	12ff	1	very bad, worst experience, dont buy it ever	63
1252ffca	13ff	4.5	Very good product i recommend it	63
1253ffca	14ff	3.5	above average can be better	63
1254ffca	15ff	1	very bad, worst experience, dont buy it ever	63
1255ffca	16ff	2.5	average product not that good	63
1256ffca	17ff	1	very bad, worst experience, dont buy it ever	63
1257ffca	18ff	3.5	above average can be better	63
1258ffca	19ff	4	Good product can go for it, but not excellent	63
1259ffca	20ff	4.5	Very good product i recommend it	63
1260ffca	1ff	4	Good product can go for it, but not excellent	64
1261ffca	2ff	2.5	average product not that good	64
1262ffca	3ff	2.5	average product not that good	64
1263ffca	4ff	1	very bad, worst experience, dont buy it ever	64
1264ffca	5ff	3	ok product not very good	64
1265ffca	6ff	4	Good product can go for it, but not excellent	64
1266ffca	7ff	5	Excellent product just go for it	64
1267ffca	8ff	3.5	above average can be better	64
1268ffca	9ff	2	bad not below average	64
1269ffca	10ff	5	Excellent product just go for it	64
1270ffca	11ff	2.5	average product not that good	64
1271ffca	12ff	4	Good product can go for it, but not excellent	64
1272ffca	13ff	4.5	Very good product i recommend it	64
1273ffca	14ff	2	bad not below average	64
1274ffcb	15ff	2.5	average product not that good	64
1275ffcb	16ff	2	bad not below average	64
1276ffcb	17ff	1.5	bad big mistake purchasing it.	64
1277ffcb	18ff	2.5	average product not that good	64
1278ffcb	19ff	2.5	average product not that good	64
1279ffcb	20ff	3.5	above average can be better	64
1280ffcb	1ff	2.5	average product not that good	65
1281ffcb	2ff	2.5	average product not that good	65
1282ffcb	3ff	1	very bad, worst experience, dont buy it ever	65
1283ffcb	4ff	1.5	bad big mistake purchasing it.	65
1284ffcb	5ff	1.5	bad big mistake purchasing it.	65
1285ffcb	6ff	4.5	Very good product i recommend it	65
1286ffcb	7ff	4.5	Very good product i recommend it	65
1287ffcb	8ff	3	ok product not very good	65
1288ffcb	9ff	1	very bad, worst experience, dont buy it ever	65
1289ffcb	10ff	4.5	Very good product i recommend it	65
1290ffcb	11ff	2	bad not below average	65
1291ffcb	12ff	3	ok product not very good	65
1292ffcb	13ff	1.5	bad big mistake purchasing it.	65
1293ffcb	14ff	3.5	above average can be better	65
1294ffcb	15ff	3	ok product not very good	65
1295ffcb	16ff	1.5	bad big mistake purchasing it.	65
1296ffcc	17ff	3.5	above average can be better	65
1297ffcc	18ff	1.5	bad big mistake purchasing it.	65
1298ffcc	19ff	1.5	bad big mistake purchasing it.	65
1299ffcc	20ff	1.5	bad big mistake purchasing it.	65
1300ffcc	1ff	2.5	average product not that good	66
1301ffcc	2ff	5	Excellent product just go for it	66
1302ffcc	3ff	3.5	above average can be better	66
1303ffcc	4ff	4	Good product can go for it, but not excellent	66
1304ffcc	5ff	4	Good product can go for it, but not excellent	66
1305ffcc	6ff	1.5	bad big mistake purchasing it.	66
1306ffcc	7ff	1	very bad, worst experience, dont buy it ever	66
1307ffcc	8ff	5	Excellent product just go for it	66
1308ffcc	9ff	4	Good product can go for it, but not excellent	66
1309ffcc	10ff	4.5	Very good product i recommend it	66
1310ffcc	11ff	2	bad not below average	66
1311ffcc	12ff	3	ok product not very good	66
1312ffcc	13ff	1.5	bad big mistake purchasing it.	66
1313ffcc	14ff	2.5	average product not that good	66
1314ffcc	15ff	4	Good product can go for it, but not excellent	66
1315ffcc	16ff	3.5	above average can be better	66
1316ffcc	17ff	1.5	bad big mistake purchasing it.	66
1317ffcc	18ff	2.5	average product not that good	66
1318ffcd	19ff	2.5	average product not that good	66
1319ffcd	20ff	4.5	Very good product i recommend it	66
1320ffcd	1ff	2	bad not below average	67
1321ffcd	2ff	2.5	average product not that good	67
1322ffcd	3ff	4	Good product can go for it, but not excellent	67
1323ffcd	4ff	4	Good product can go for it, but not excellent	67
1324ffcd	5ff	3	ok product not very good	67
1325ffcd	6ff	1.5	bad big mistake purchasing it.	67
1326ffcd	7ff	4	Good product can go for it, but not excellent	67
1327ffcd	8ff	4.5	Very good product i recommend it	67
1328ffcd	9ff	1.5	bad big mistake purchasing it.	67
1329ffcd	10ff	1	very bad, worst experience, dont buy it ever	67
1330ffcd	11ff	5	Excellent product just go for it	67
1331ffcd	12ff	3.5	above average can be better	67
1332ffcd	13ff	4.5	Very good product i recommend it	67
1333ffcd	14ff	2	bad not below average	67
1334ffcd	15ff	5	Excellent product just go for it	67
1335ffcd	16ff	1	very bad, worst experience, dont buy it ever	67
1336ffcd	17ff	2	bad not below average	67
1337ffcd	18ff	2.5	average product not that good	67
1338ffcd	19ff	3	ok product not very good	67
1339ffcd	20ff	1	very bad, worst experience, dont buy it ever	67
1340ffce	1ff	3.5	above average can be better	68
1341ffce	2ff	5	Excellent product just go for it	68
1342ffce	3ff	5	Excellent product just go for it	68
1343ffce	4ff	5	Excellent product just go for it	68
1344ffce	5ff	2.5	average product not that good	68
1345ffce	6ff	2	bad not below average	68
1346ffce	7ff	2	bad not below average	68
1347ffce	8ff	4	Good product can go for it, but not excellent	68
1348ffce	9ff	3.5	above average can be better	68
1349ffce	10ff	1	very bad, worst experience, dont buy it ever	68
1350ffce	11ff	5	Excellent product just go for it	68
1351ffce	12ff	2	bad not below average	68
1352ffce	13ff	4	Good product can go for it, but not excellent	68
1353ffce	14ff	3	ok product not very good	68
1354ffce	15ff	3.5	above average can be better	68
1355ffce	16ff	1.5	bad big mistake purchasing it.	68
1356ffce	17ff	4	Good product can go for it, but not excellent	68
1357ffce	18ff	1	very bad, worst experience, dont buy it ever	68
1358ffce	19ff	4	Good product can go for it, but not excellent	68
1359ffce	20ff	4.5	Very good product i recommend it	68
1360ffce	1ff	5	Excellent product just go for it	69
1361ffce	2ff	3	ok product not very good	69
1362ffcf	3ff	3.5	above average can be better	69
1363ffcf	4ff	5	Excellent product just go for it	69
1364ffcf	5ff	2	bad not below average	69
1365ffcf	6ff	5	Excellent product just go for it	69
1366ffcf	7ff	3	ok product not very good	69
1367ffcf	8ff	3.5	above average can be better	69
1368ffcf	9ff	3	ok product not very good	69
1369ffcf	10ff	2.5	average product not that good	69
1370ffcf	11ff	2.5	average product not that good	69
1371ffcf	12ff	5	Excellent product just go for it	69
1372ffcf	13ff	4	Good product can go for it, but not excellent	69
1373ffcf	14ff	1.5	bad big mistake purchasing it.	69
1374ffcf	15ff	5	Excellent product just go for it	69
1375ffcf	16ff	5	Excellent product just go for it	69
1376ffcf	17ff	1	very bad, worst experience, dont buy it ever	69
1377ffcf	18ff	4	Good product can go for it, but not excellent	69
1378ffcf	19ff	2.5	average product not that good	69
1379ffcf	20ff	2.5	average product not that good	69
1380ffcf	1ff	5	Excellent product just go for it	70
1381ffcf	2ff	4.5	Very good product i recommend it	70
1382ffcf	3ff	2	bad not below average	70
1383ffcf	4ff	2	bad not below average	70
1384ffcf	5ff	4.5	Very good product i recommend it	70
1385ffcf	6ff	2	bad not below average	70
1386ffd0	7ff	2	bad not below average	70
1387ffd0	8ff	1	very bad, worst experience, dont buy it ever	70
1388ffd0	9ff	2.5	average product not that good	70
1389ffd0	10ff	3	ok product not very good	70
1390ffd0	11ff	2	bad not below average	70
1391ffd0	12ff	1	very bad, worst experience, dont buy it ever	70
1392ffd0	13ff	2.5	average product not that good	70
1393ffd0	14ff	1	very bad, worst experience, dont buy it ever	70
1394ffd0	15ff	3	ok product not very good	70
1395ffd0	16ff	3	ok product not very good	70
1396ffd0	17ff	3.5	above average can be better	70
1397ffd0	18ff	3	ok product not very good	70
1398ffd0	19ff	1.5	bad big mistake purchasing it.	70
1399ffd0	20ff	2	bad not below average	70
1400ffd0	1ff	2.5	average product not that good	71
1401ffd0	2ff	1.5	bad big mistake purchasing it.	71
1402ffd0	3ff	1	very bad, worst experience, dont buy it ever	71
1403ffd0	4ff	5	Excellent product just go for it	71
1404ffd0	5ff	4	Good product can go for it, but not excellent	71
1405ffd0	6ff	4	Good product can go for it, but not excellent	71
1406ffd0	7ff	1	very bad, worst experience, dont buy it ever	71
1407ffd0	8ff	4.5	Very good product i recommend it	71
1408ffd0	9ff	5	Excellent product just go for it	71
1409ffd0	10ff	2.5	average product not that good	71
1410ffd1	11ff	1.5	bad big mistake purchasing it.	71
1411ffd1	12ff	1.5	bad big mistake purchasing it.	71
1412ffd1	13ff	4.5	Very good product i recommend it	71
1413ffd1	14ff	2.5	average product not that good	71
1414ffd1	15ff	3.5	above average can be better	71
1415ffd1	16ff	4.5	Very good product i recommend it	71
1416ffd1	17ff	1.5	bad big mistake purchasing it.	71
1417ffd1	18ff	2.5	average product not that good	71
1418ffd1	19ff	1	very bad, worst experience, dont buy it ever	71
1419ffd1	20ff	1.5	bad big mistake purchasing it.	71
1420ffd1	1ff	4.5	Very good product i recommend it	72
1421ffd1	2ff	1	very bad, worst experience, dont buy it ever	72
1422ffd1	3ff	1.5	bad big mistake purchasing it.	72
1423ffd1	4ff	5	Excellent product just go for it	72
1424ffd1	5ff	3	ok product not very good	72
1425ffd1	6ff	3	ok product not very good	72
1426ffd1	7ff	4	Good product can go for it, but not excellent	72
1427ffd1	8ff	3.5	above average can be better	72
1428ffd1	9ff	2.5	average product not that good	72
1429ffd1	10ff	2.5	average product not that good	72
1430ffd1	11ff	5	Excellent product just go for it	72
1431ffd1	12ff	4.5	Very good product i recommend it	72
1432ffd1	13ff	4.5	Very good product i recommend it	72
1433ffd1	14ff	4	Good product can go for it, but not excellent	72
1434ffd1	15ff	5	Excellent product just go for it	72
1435ffd1	16ff	3.5	above average can be better	72
1436ffd2	17ff	5	Excellent product just go for it	72
1437ffd2	18ff	1	very bad, worst experience, dont buy it ever	72
1438ffd2	19ff	1.5	bad big mistake purchasing it.	72
1439ffd2	20ff	1	very bad, worst experience, dont buy it ever	72
1440ffd2	1ff	3.5	above average can be better	73
1441ffd2	2ff	3	ok product not very good	73
1442ffd2	3ff	4	Good product can go for it, but not excellent	73
1443ffd2	4ff	4	Good product can go for it, but not excellent	73
1444ffd2	5ff	4.5	Very good product i recommend it	73
1445ffd2	6ff	1.5	bad big mistake purchasing it.	73
1446ffd2	7ff	3.5	above average can be better	73
1447ffd2	8ff	4.5	Very good product i recommend it	73
1448ffd2	9ff	4.5	Very good product i recommend it	73
1449ffd2	10ff	1.5	bad big mistake purchasing it.	73
1450ffd2	11ff	3	ok product not very good	73
1451ffd2	12ff	3	ok product not very good	73
1452ffd2	13ff	2	bad not below average	73
1453ffd2	14ff	3.5	above average can be better	73
1454ffd2	15ff	2.5	average product not that good	73
1455ffd2	16ff	2.5	average product not that good	73
1456ffd2	17ff	3	ok product not very good	73
1457ffd2	18ff	5	Excellent product just go for it	73
1458ffd2	19ff	2	bad not below average	73
1459ffd2	20ff	3.5	above average can be better	73
1460ffd2	1ff	3.5	above average can be better	74
1461ffd2	2ff	2.5	average product not that good	74
1462ffd2	3ff	1.5	bad big mistake purchasing it.	74
1463ffd2	4ff	4.5	Very good product i recommend it	74
1464ffd3	5ff	3.5	above average can be better	74
1465ffd3	6ff	4	Good product can go for it, but not excellent	74
1466ffd3	7ff	4.5	Very good product i recommend it	74
1467ffd3	8ff	4	Good product can go for it, but not excellent	74
1468ffd3	9ff	4.5	Very good product i recommend it	74
1469ffd3	10ff	2	bad not below average	74
1470ffd3	11ff	3.5	above average can be better	74
1471ffd3	12ff	3.5	above average can be better	74
1472ffd3	13ff	1.5	bad big mistake purchasing it.	74
1473ffd3	14ff	4	Good product can go for it, but not excellent	74
1474ffd3	15ff	4	Good product can go for it, but not excellent	74
1475ffd3	16ff	4.5	Very good product i recommend it	74
1476ffd3	17ff	4.5	Very good product i recommend it	74
1477ffd3	18ff	4	Good product can go for it, but not excellent	74
1478ffd3	19ff	5	Excellent product just go for it	74
1479ffd3	20ff	2.5	average product not that good	74
1480ffd3	1ff	4.5	Very good product i recommend it	75
1481ffd3	2ff	1.5	bad big mistake purchasing it.	75
1482ffd3	3ff	5	Excellent product just go for it	75
1483ffd3	4ff	2	bad not below average	75
1484ffd3	5ff	1	very bad, worst experience, dont buy it ever	75
1485ffd3	6ff	3.5	above average can be better	75
1486ffd3	7ff	4	Good product can go for it, but not excellent	75
1487ffd3	8ff	4	Good product can go for it, but not excellent	75
1488ffd3	9ff	2	bad not below average	75
1489ffd3	10ff	2	bad not below average	75
1490ffd3	11ff	4.5	Very good product i recommend it	75
1491ffd3	12ff	3	ok product not very good	75
1492ffd3	13ff	3	ok product not very good	75
1493ffd4	14ff	2.5	average product not that good	75
1494ffd4	15ff	1	very bad, worst experience, dont buy it ever	75
1495ffd4	16ff	3	ok product not very good	75
1496ffd4	17ff	2	bad not below average	75
1497ffd4	18ff	5	Excellent product just go for it	75
1498ffd4	19ff	1	very bad, worst experience, dont buy it ever	75
1499ffd4	20ff	2.5	average product not that good	75
1500ffd4	1ff	3.5	above average can be better	76
1501ffd4	2ff	5	Excellent product just go for it	76
1502ffd4	3ff	3	ok product not very good	76
1503ffd4	4ff	2.5	average product not that good	76
1504ffd4	5ff	4.5	Very good product i recommend it	76
1505ffd4	6ff	4	Good product can go for it, but not excellent	76
1506ffd4	7ff	5	Excellent product just go for it	76
1507ffd4	8ff	5	Excellent product just go for it	76
1508ffd4	9ff	1.5	bad big mistake purchasing it.	76
1509ffd4	10ff	5	Excellent product just go for it	76
1510ffd4	11ff	4.5	Very good product i recommend it	76
1511ffd4	12ff	3	ok product not very good	76
1512ffd4	13ff	4	Good product can go for it, but not excellent	76
1513ffd4	14ff	2.5	average product not that good	76
1514ffd4	15ff	4.5	Very good product i recommend it	76
1515ffd4	16ff	2	bad not below average	76
1516ffd4	17ff	3.5	above average can be better	76
1517ffd4	18ff	3.5	above average can be better	76
1518ffd4	19ff	3	ok product not very good	76
1519ffd4	20ff	1	very bad, worst experience, dont buy it ever	76
1520ffd4	1ff	2	bad not below average	77
1521ffd4	2ff	2.5	average product not that good	77
1522ffd4	3ff	2	bad not below average	77
1523ffd4	4ff	2	bad not below average	77
1524ffd4	5ff	2	bad not below average	77
1525ffd4	6ff	5	Excellent product just go for it	77
1526ffd5	7ff	3	ok product not very good	77
1527ffd5	8ff	3.5	above average can be better	77
1528ffd5	9ff	1.5	bad big mistake purchasing it.	77
1529ffd5	10ff	2.5	average product not that good	77
1530ffd5	11ff	3.5	above average can be better	77
1531ffd5	12ff	4.5	Very good product i recommend it	77
1532ffd5	13ff	4	Good product can go for it, but not excellent	77
1533ffd5	14ff	3	ok product not very good	77
1534ffd5	15ff	4	Good product can go for it, but not excellent	77
1535ffd5	16ff	5	Excellent product just go for it	77
1536ffd5	17ff	4.5	Very good product i recommend it	77
1537ffd5	18ff	4	Good product can go for it, but not excellent	77
1538ffd5	19ff	5	Excellent product just go for it	77
1539ffd5	20ff	2.5	average product not that good	77
1540ffd5	1ff	5	Excellent product just go for it	78
1541ffd5	2ff	3	ok product not very good	78
1542ffd5	3ff	1.5	bad big mistake purchasing it.	78
1543ffd5	4ff	3.5	above average can be better	78
1544ffd5	5ff	4	Good product can go for it, but not excellent	78
1545ffd5	6ff	3	ok product not very good	78
1546ffd5	7ff	4.5	Very good product i recommend it	78
1547ffd5	8ff	3.5	above average can be better	78
1548ffd5	9ff	1	very bad, worst experience, dont buy it ever	78
1549ffd5	10ff	2	bad not below average	78
1550ffd5	11ff	2	bad not below average	78
1551ffd5	12ff	3.5	above average can be better	78
1552ffd5	13ff	3.5	above average can be better	78
1553ffd5	14ff	4.5	Very good product i recommend it	78
1554ffd5	15ff	2.5	average product not that good	78
1555ffd5	16ff	3.5	above average can be better	78
1556ffd5	17ff	2	bad not below average	78
1557ffd5	18ff	2.5	average product not that good	78
1558ffd5	19ff	2.5	average product not that good	78
1559ffd5	20ff	3.5	above average can be better	78
1560ffd5	1ff	4	Good product can go for it, but not excellent	79
1561ffd5	2ff	4	Good product can go for it, but not excellent	79
1562ffd6	3ff	5	Excellent product just go for it	79
1563ffd6	4ff	1	very bad, worst experience, dont buy it ever	79
1564ffd6	5ff	5	Excellent product just go for it	79
1565ffd6	6ff	2.5	average product not that good	79
1566ffd6	7ff	5	Excellent product just go for it	79
1567ffd6	8ff	2.5	average product not that good	79
1568ffd6	9ff	5	Excellent product just go for it	79
1569ffd6	10ff	3.5	above average can be better	79
1570ffd6	11ff	2	bad not below average	79
1571ffd6	12ff	2	bad not below average	79
1572ffd6	13ff	4	Good product can go for it, but not excellent	79
1573ffd6	14ff	3	ok product not very good	79
1574ffd6	15ff	1	very bad, worst experience, dont buy it ever	79
1575ffd6	16ff	2	bad not below average	79
1576ffd6	17ff	2.5	average product not that good	79
1577ffd6	18ff	4	Good product can go for it, but not excellent	79
1578ffd6	19ff	5	Excellent product just go for it	79
1579ffd6	20ff	2	bad not below average	79
1580ffd6	1ff	5	Excellent product just go for it	80
1581ffd6	2ff	1	very bad, worst experience, dont buy it ever	80
1582ffd6	3ff	4	Good product can go for it, but not excellent	80
1583ffd6	4ff	5	Excellent product just go for it	80
1584ffd6	5ff	5	Excellent product just go for it	80
1585ffd6	6ff	4	Good product can go for it, but not excellent	80
1586ffd6	7ff	3	ok product not very good	80
1587ffd6	8ff	3.5	above average can be better	80
1588ffd6	9ff	3.5	above average can be better	80
1589ffd6	10ff	1	very bad, worst experience, dont buy it ever	80
1590ffd6	11ff	4.5	Very good product i recommend it	80
1591ffd6	12ff	3.5	above average can be better	80
1592ffd6	13ff	1.5	bad big mistake purchasing it.	80
1593ffd6	14ff	2	bad not below average	80
1594ffd6	15ff	2	bad not below average	80
1595ffd6	16ff	2.5	average product not that good	80
1596ffd6	17ff	2.5	average product not that good	80
1597ffd6	18ff	2.5	average product not that good	80
1598ffd6	19ff	4	Good product can go for it, but not excellent	80
1599ffd6	20ff	1.5	bad big mistake purchasing it.	80
1600ffd6	1ff	5	Excellent product just go for it	81
1601ffd7	2ff	4.5	Very good product i recommend it	81
1602ffd7	3ff	4.5	Very good product i recommend it	81
1603ffd7	4ff	4	Good product can go for it, but not excellent	81
1604ffd7	5ff	3.5	above average can be better	81
1605ffd7	6ff	3.5	above average can be better	81
1606ffd7	7ff	1	very bad, worst experience, dont buy it ever	81
1607ffd7	8ff	3	ok product not very good	81
1608ffd7	9ff	4	Good product can go for it, but not excellent	81
1609ffd7	10ff	2.5	average product not that good	81
1610ffd7	11ff	2	bad not below average	81
1611ffd7	12ff	1	very bad, worst experience, dont buy it ever	81
1612ffd7	13ff	3.5	above average can be better	81
1613ffd7	14ff	1	very bad, worst experience, dont buy it ever	81
1614ffd7	15ff	5	Excellent product just go for it	81
1615ffd7	16ff	2	bad not below average	81
1616ffd7	17ff	4.5	Very good product i recommend it	81
1617ffd7	18ff	3	ok product not very good	81
1618ffd7	19ff	1	very bad, worst experience, dont buy it ever	81
1619ffd7	20ff	4	Good product can go for it, but not excellent	81
1620ffd7	1ff	2	bad not below average	82
1621ffd7	2ff	3.5	above average can be better	82
1622ffd7	3ff	4.5	Very good product i recommend it	82
1623ffd7	4ff	2.5	average product not that good	82
1624ffd7	5ff	2.5	average product not that good	82
1625ffd7	6ff	3.5	above average can be better	82
1626ffd7	7ff	3.5	above average can be better	82
1627ffd7	8ff	1.5	bad big mistake purchasing it.	82
1628ffd7	9ff	5	Excellent product just go for it	82
1629ffd7	10ff	1.5	bad big mistake purchasing it.	82
1630ffd7	11ff	2	bad not below average	82
1631ffd7	12ff	2	bad not below average	82
1632ffd7	13ff	1.5	bad big mistake purchasing it.	82
1633ffd8	14ff	2.5	average product not that good	82
1634ffd8	15ff	3	ok product not very good	82
1635ffd8	16ff	2	bad not below average	82
1636ffd8	17ff	1.5	bad big mistake purchasing it.	82
1637ffd8	18ff	5	Excellent product just go for it	82
1638ffd8	19ff	5	Excellent product just go for it	82
1639ffd8	20ff	3	ok product not very good	82
1640ffd8	1ff	2	bad not below average	83
1641ffd8	2ff	5	Excellent product just go for it	83
1642ffd8	3ff	1.5	bad big mistake purchasing it.	83
1643ffd8	4ff	1	very bad, worst experience, dont buy it ever	83
1644ffd8	5ff	4.5	Very good product i recommend it	83
1645ffd8	6ff	1	very bad, worst experience, dont buy it ever	83
1646ffd8	7ff	3.5	above average can be better	83
1647ffd8	8ff	2	bad not below average	83
1648ffd8	9ff	5	Excellent product just go for it	83
1649ffd8	10ff	2.5	average product not that good	83
1650ffd8	11ff	3.5	above average can be better	83
1651ffd8	12ff	2.5	average product not that good	83
1652ffd8	13ff	2	bad not below average	83
1653ffd8	14ff	5	Excellent product just go for it	83
1654ffd8	15ff	3.5	above average can be better	83
1655ffd8	16ff	1	very bad, worst experience, dont buy it ever	83
1656ffd8	17ff	2	bad not below average	83
1657ffd8	18ff	3.5	above average can be better	83
1658ffd8	19ff	4	Good product can go for it, but not excellent	83
1659ffd8	20ff	1	very bad, worst experience, dont buy it ever	83
1660ffd8	1ff	4	Good product can go for it, but not excellent	84
1661ffd8	2ff	1	very bad, worst experience, dont buy it ever	84
1662ffd9	3ff	4.5	Very good product i recommend it	84
1663ffd9	4ff	5	Excellent product just go for it	84
1664ffd9	5ff	2.5	average product not that good	84
1665ffd9	6ff	2.5	average product not that good	84
1666ffd9	7ff	3.5	above average can be better	84
1667ffd9	8ff	5	Excellent product just go for it	84
1668ffd9	9ff	5	Excellent product just go for it	84
1669ffd9	10ff	3.5	above average can be better	84
1670ffd9	11ff	1.5	bad big mistake purchasing it.	84
1671ffd9	12ff	5	Excellent product just go for it	84
1672ffd9	13ff	2.5	average product not that good	84
1673ffd9	14ff	4	Good product can go for it, but not excellent	84
1674ffd9	15ff	3.5	above average can be better	84
1675ffd9	16ff	2	bad not below average	84
1676ffd9	17ff	1.5	bad big mistake purchasing it.	84
1677ffd9	18ff	1.5	bad big mistake purchasing it.	84
1678ffd9	19ff	4	Good product can go for it, but not excellent	84
1679ffd9	20ff	4.5	Very good product i recommend it	84
1680ffd9	1ff	5	Excellent product just go for it	85
1681ffd9	2ff	2	bad not below average	85
1682ffd9	3ff	4	Good product can go for it, but not excellent	85
1683ffd9	4ff	4	Good product can go for it, but not excellent	85
1684ffd9	5ff	4	Good product can go for it, but not excellent	85
1685ffd9	6ff	5	Excellent product just go for it	85
1686ffd9	7ff	2.5	average product not that good	85
1687ffd9	8ff	2	bad not below average	85
1688ffd9	9ff	2.5	average product not that good	85
1689ffda	10ff	4.5	Very good product i recommend it	85
1690ffda	11ff	3	ok product not very good	85
1691ffda	12ff	5	Excellent product just go for it	85
1692ffda	13ff	4	Good product can go for it, but not excellent	85
1693ffda	14ff	4	Good product can go for it, but not excellent	85
1694ffda	15ff	2.5	average product not that good	85
1695ffda	16ff	1	very bad, worst experience, dont buy it ever	85
1696ffda	17ff	1.5	bad big mistake purchasing it.	85
1697ffda	18ff	3.5	above average can be better	85
1698ffda	19ff	1.5	bad big mistake purchasing it.	85
1699ffda	20ff	1.5	bad big mistake purchasing it.	85
1700ffda	1ff	2	bad not below average	86
1701ffda	2ff	5	Excellent product just go for it	86
1702ffda	3ff	5	Excellent product just go for it	86
1703ffda	4ff	4	Good product can go for it, but not excellent	86
1704ffda	5ff	1.5	bad big mistake purchasing it.	86
1705ffda	6ff	4	Good product can go for it, but not excellent	86
1706ffda	7ff	3	ok product not very good	86
1707ffda	8ff	2	bad not below average	86
1708ffda	9ff	4.5	Very good product i recommend it	86
1709ffda	10ff	4	Good product can go for it, but not excellent	86
1710ffda	11ff	1	very bad, worst experience, dont buy it ever	86
1711ffda	12ff	2	bad not below average	86
1712ffda	13ff	3	ok product not very good	86
1713ffda	14ff	3	ok product not very good	86
1714ffda	15ff	4	Good product can go for it, but not excellent	86
1715ffda	16ff	3.5	above average can be better	86
1716ffda	17ff	3.5	above average can be better	86
1717ffdb	18ff	4	Good product can go for it, but not excellent	86
1718ffdb	19ff	4.5	Very good product i recommend it	86
1719ffdb	20ff	4	Good product can go for it, but not excellent	86
1720ffdb	1ff	3	ok product not very good	87
1721ffdb	2ff	3.5	above average can be better	87
1722ffdb	3ff	1	very bad, worst experience, dont buy it ever	87
1723ffdb	4ff	3.5	above average can be better	87
1724ffdb	5ff	3	ok product not very good	87
1725ffdb	6ff	4	Good product can go for it, but not excellent	87
1726ffdb	7ff	1.5	bad big mistake purchasing it.	87
1727ffdb	8ff	4.5	Very good product i recommend it	87
1728ffdb	9ff	5	Excellent product just go for it	87
1729ffdb	10ff	2.5	average product not that good	87
1730ffdb	11ff	3.5	above average can be better	87
1731ffdb	12ff	4.5	Very good product i recommend it	87
1732ffdb	13ff	2.5	average product not that good	87
1733ffdb	14ff	3	ok product not very good	87
1734ffdb	15ff	3.5	above average can be better	87
1735ffdb	16ff	1	very bad, worst experience, dont buy it ever	87
1736ffdb	17ff	4	Good product can go for it, but not excellent	87
1737ffdb	18ff	1.5	bad big mistake purchasing it.	87
1738ffdb	19ff	2.5	average product not that good	87
1739ffdb	20ff	2	bad not below average	87
1740ffdb	1ff	3.5	above average can be better	88
1741ffdb	2ff	3.5	above average can be better	88
1742ffdb	3ff	3.5	above average can be better	88
1743ffdb	4ff	3.5	above average can be better	88
1744ffdc	5ff	5	Excellent product just go for it	88
1745ffdc	6ff	1.5	bad big mistake purchasing it.	88
1746ffdc	7ff	5	Excellent product just go for it	88
1747ffdc	8ff	1	very bad, worst experience, dont buy it ever	88
1748ffdc	9ff	1.5	bad big mistake purchasing it.	88
1749ffdc	10ff	3.5	above average can be better	88
1750ffdc	11ff	2	bad not below average	88
1751ffdc	12ff	1	very bad, worst experience, dont buy it ever	88
1752ffdc	13ff	5	Excellent product just go for it	88
1753ffdc	14ff	1	very bad, worst experience, dont buy it ever	88
1754ffdc	15ff	4	Good product can go for it, but not excellent	88
1755ffdc	16ff	3.5	above average can be better	88
1756ffdc	17ff	2.5	average product not that good	88
1757ffdc	18ff	4.5	Very good product i recommend it	88
1758ffdc	19ff	1	very bad, worst experience, dont buy it ever	88
1759ffdc	20ff	4.5	Very good product i recommend it	88
1760ffdc	1ff	1.5	bad big mistake purchasing it.	89
1761ffdc	2ff	2	bad not below average	89
1762ffdc	3ff	2	bad not below average	89
1763ffdc	4ff	2.5	average product not that good	89
1764ffdc	5ff	5	Excellent product just go for it	89
1765ffdc	6ff	3.5	above average can be better	89
1766ffdc	7ff	3	ok product not very good	89
1767ffdc	8ff	4	Good product can go for it, but not excellent	89
1768ffdc	9ff	1.5	bad big mistake purchasing it.	89
1769ffdc	10ff	3	ok product not very good	89
1770ffdc	11ff	4.5	Very good product i recommend it	89
1771ffdc	12ff	4.5	Very good product i recommend it	89
1772ffdc	13ff	5	Excellent product just go for it	89
1773ffdc	14ff	5	Excellent product just go for it	89
1774ffdc	15ff	3.5	above average can be better	89
1775ffdd	16ff	5	Excellent product just go for it	89
1776ffdd	17ff	1	very bad, worst experience, dont buy it ever	89
1777ffdd	18ff	5	Excellent product just go for it	89
1778ffdd	19ff	2	bad not below average	89
1779ffdd	20ff	1	very bad, worst experience, dont buy it ever	89
1780ffdd	1ff	1	very bad, worst experience, dont buy it ever	90
1781ffdd	2ff	3.5	above average can be better	90
1782ffdd	3ff	2.5	average product not that good	90
1783ffdd	4ff	3.5	above average can be better	90
1784ffdd	5ff	1	very bad, worst experience, dont buy it ever	90
1785ffdd	6ff	4.5	Very good product i recommend it	90
1786ffdd	7ff	4	Good product can go for it, but not excellent	90
1787ffdd	8ff	3	ok product not very good	90
1788ffdd	9ff	2.5	average product not that good	90
1789ffdd	10ff	3	ok product not very good	90
1790ffdd	11ff	3.5	above average can be better	90
1791ffdd	12ff	2	bad not below average	90
1792ffdd	13ff	1	very bad, worst experience, dont buy it ever	90
1793ffdd	14ff	2	bad not below average	90
1794ffdd	15ff	3.5	above average can be better	90
1795ffdd	16ff	2.5	average product not that good	90
1796ffdd	17ff	1	very bad, worst experience, dont buy it ever	90
1797ffdd	18ff	1.5	bad big mistake purchasing it.	90
1798ffdd	19ff	2	bad not below average	90
1799ffdd	20ff	4.5	Very good product i recommend it	90
1800ffdd	1ff	3	ok product not very good	91
1801ffdd	2ff	5	Excellent product just go for it	91
1802ffdd	3ff	2.5	average product not that good	91
1803ffdd	4ff	5	Excellent product just go for it	91
1804ffdd	5ff	5	Excellent product just go for it	91
1805ffdd	6ff	1.5	bad big mistake purchasing it.	91
1806ffde	7ff	4.5	Very good product i recommend it	91
1807ffde	8ff	4.5	Very good product i recommend it	91
1808ffde	9ff	4.5	Very good product i recommend it	91
1809ffde	10ff	3	ok product not very good	91
1810ffde	11ff	1.5	bad big mistake purchasing it.	91
1811ffde	12ff	1	very bad, worst experience, dont buy it ever	91
1812ffde	13ff	4.5	Very good product i recommend it	91
1813ffde	14ff	3.5	above average can be better	91
1814ffde	15ff	1	very bad, worst experience, dont buy it ever	91
1815ffde	16ff	4	Good product can go for it, but not excellent	91
1816ffde	17ff	2.5	average product not that good	91
1817ffde	18ff	1.5	bad big mistake purchasing it.	91
1818ffde	19ff	2.5	average product not that good	91
1819ffde	20ff	1	very bad, worst experience, dont buy it ever	91
1820ffde	1ff	1.5	bad big mistake purchasing it.	92
1821ffde	2ff	2	bad not below average	92
1822ffde	3ff	4.5	Very good product i recommend it	92
1823ffde	4ff	1.5	bad big mistake purchasing it.	92
1824ffde	5ff	1	very bad, worst experience, dont buy it ever	92
1825ffde	6ff	1.5	bad big mistake purchasing it.	92
1826ffde	7ff	1.5	bad big mistake purchasing it.	92
1827ffde	8ff	4.5	Very good product i recommend it	92
1828ffde	9ff	2	bad not below average	92
1829ffde	10ff	3	ok product not very good	92
1830ffde	11ff	4	Good product can go for it, but not excellent	92
1831ffde	12ff	3.5	above average can be better	92
1832ffde	13ff	2.5	average product not that good	92
1833ffde	14ff	1	very bad, worst experience, dont buy it ever	92
1834ffde	15ff	3	ok product not very good	92
1835ffde	16ff	4.5	Very good product i recommend it	92
1836ffde	17ff	1	very bad, worst experience, dont buy it ever	92
1837ffde	18ff	2	bad not below average	92
1838ffde	19ff	1.5	bad big mistake purchasing it.	92
1839ffde	20ff	1	very bad, worst experience, dont buy it ever	92
1840ffde	1ff	4	Good product can go for it, but not excellent	93
1841ffdf	2ff	3	ok product not very good	93
1842ffdf	3ff	2.5	average product not that good	93
1843ffdf	4ff	3.5	above average can be better	93
1844ffdf	5ff	2.5	average product not that good	93
1845ffdf	6ff	5	Excellent product just go for it	93
1846ffdf	7ff	2	bad not below average	93
1847ffdf	8ff	3	ok product not very good	93
1848ffdf	9ff	2.5	average product not that good	93
1849ffdf	10ff	4	Good product can go for it, but not excellent	93
1850ffdf	11ff	4	Good product can go for it, but not excellent	93
1851ffdf	12ff	3.5	above average can be better	93
1852ffdf	13ff	3.5	above average can be better	93
1853ffdf	14ff	3.5	above average can be better	93
1854ffdf	15ff	1	very bad, worst experience, dont buy it ever	93
1855ffdf	16ff	1	very bad, worst experience, dont buy it ever	93
1856ffdf	17ff	1.5	bad big mistake purchasing it.	93
1857ffdf	18ff	4.5	Very good product i recommend it	93
1858ffdf	19ff	2.5	average product not that good	93
1859ffdf	20ff	5	Excellent product just go for it	93
1860ffdf	1ff	4.5	Very good product i recommend it	94
1861ffdf	2ff	1.5	bad big mistake purchasing it.	94
1862ffdf	3ff	4	Good product can go for it, but not excellent	94
1863ffdf	4ff	1	very bad, worst experience, dont buy it ever	94
1864ffdf	5ff	4.5	Very good product i recommend it	94
1865ffdf	6ff	3	ok product not very good	94
1866ffdf	7ff	1.5	bad big mistake purchasing it.	94
1867ffdf	8ff	3	ok product not very good	94
1868ffdf	9ff	3	ok product not very good	94
1869ffdf	10ff	3	ok product not very good	94
1870ffdf	11ff	1.5	bad big mistake purchasing it.	94
1871ffdf	12ff	2.5	average product not that good	94
1872ffdf	13ff	1	very bad, worst experience, dont buy it ever	94
1873ffdf	14ff	4	Good product can go for it, but not excellent	94
1874ffdf	15ff	3.5	above average can be better	94
1875ffe0	16ff	5	Excellent product just go for it	94
1876ffe0	17ff	3	ok product not very good	94
1877ffe0	18ff	4	Good product can go for it, but not excellent	94
1878ffe0	19ff	2	bad not below average	94
1879ffe0	20ff	3	ok product not very good	94
1880ffe0	1ff	4	Good product can go for it, but not excellent	95
1881ffe0	2ff	4.5	Very good product i recommend it	95
1882ffe0	3ff	3.5	above average can be better	95
1883ffe0	4ff	3.5	above average can be better	95
1884ffe0	5ff	2.5	average product not that good	95
1885ffe0	6ff	3.5	above average can be better	95
1886ffe0	7ff	5	Excellent product just go for it	95
1887ffe0	8ff	4	Good product can go for it, but not excellent	95
1888ffe0	9ff	3	ok product not very good	95
1889ffe0	10ff	1.5	bad big mistake purchasing it.	95
1890ffe0	11ff	5	Excellent product just go for it	95
1891ffe0	12ff	4.5	Very good product i recommend it	95
1892ffe0	13ff	2	bad not below average	95
1893ffe0	14ff	3.5	above average can be better	95
1894ffe0	15ff	3.5	above average can be better	95
1895ffe0	16ff	4.5	Very good product i recommend it	95
1896ffe0	17ff	3.5	above average can be better	95
1897ffe0	18ff	4.5	Very good product i recommend it	95
1898ffe0	19ff	4	Good product can go for it, but not excellent	95
1899ffe0	20ff	5	Excellent product just go for it	95
1900ffe0	1ff	2	bad not below average	96
1901ffe0	2ff	4.5	Very good product i recommend it	96
1902ffe0	3ff	2.5	average product not that good	96
1903ffe1	4ff	3.5	above average can be better	96
1904ffe1	5ff	2	bad not below average	96
1905ffe1	6ff	1	very bad, worst experience, dont buy it ever	96
1906ffe1	7ff	3.5	above average can be better	96
1907ffe1	8ff	1	very bad, worst experience, dont buy it ever	96
1908ffe1	9ff	2	bad not below average	96
1909ffe1	10ff	4.5	Very good product i recommend it	96
1910ffe1	11ff	2.5	average product not that good	96
1911ffe1	12ff	4.5	Very good product i recommend it	96
1912ffe1	13ff	5	Excellent product just go for it	96
1913ffe1	14ff	2.5	average product not that good	96
1914ffe1	15ff	3.5	above average can be better	96
1915ffe1	16ff	3	ok product not very good	96
1916ffe1	17ff	4	Good product can go for it, but not excellent	96
1917ffe1	18ff	1	very bad, worst experience, dont buy it ever	96
1918ffe1	19ff	3.5	above average can be better	96
1919ffe1	20ff	3	ok product not very good	96
1920ffe1	1ff	3.5	above average can be better	97
1921ffe1	2ff	4.5	Very good product i recommend it	97
1922ffe1	3ff	4.5	Very good product i recommend it	97
1923ffe1	4ff	4.5	Very good product i recommend it	97
1924ffe1	5ff	4.5	Very good product i recommend it	97
1925ffe1	6ff	5	Excellent product just go for it	97
1926ffe1	7ff	2	bad not below average	97
1927ffe1	8ff	4.5	Very good product i recommend it	97
1928ffe1	9ff	1	very bad, worst experience, dont buy it ever	97
1929ffe1	10ff	1.5	bad big mistake purchasing it.	97
1930ffe2	11ff	4.5	Very good product i recommend it	97
1931ffe2	12ff	5	Excellent product just go for it	97
1932ffe2	13ff	2.5	average product not that good	97
1933ffe2	14ff	5	Excellent product just go for it	97
1934ffe2	15ff	5	Excellent product just go for it	97
1935ffe2	16ff	4.5	Very good product i recommend it	97
1936ffe2	17ff	2	bad not below average	97
1937ffe2	18ff	4	Good product can go for it, but not excellent	97
1938ffe2	19ff	2.5	average product not that good	97
1939ffe2	20ff	3.5	above average can be better	97
1940ffe2	1ff	2.5	average product not that good	98
1941ffe2	2ff	4	Good product can go for it, but not excellent	98
1942ffe2	3ff	5	Excellent product just go for it	98
1943ffe2	4ff	2	bad not below average	98
1944ffe2	5ff	1	very bad, worst experience, dont buy it ever	98
1945ffe2	6ff	5	Excellent product just go for it	98
1946ffe2	7ff	1	very bad, worst experience, dont buy it ever	98
1947ffe2	8ff	3	ok product not very good	98
1948ffe2	9ff	4.5	Very good product i recommend it	98
1949ffe2	10ff	3	ok product not very good	98
1950ffe2	11ff	1	very bad, worst experience, dont buy it ever	98
1951ffe2	12ff	2	bad not below average	98
1952ffe2	13ff	1	very bad, worst experience, dont buy it ever	98
1953ffe2	14ff	4.5	Very good product i recommend it	98
1954ffe2	15ff	2.5	average product not that good	98
1955ffe2	16ff	4	Good product can go for it, but not excellent	98
1956ffe2	17ff	2.5	average product not that good	98
1957ffe3	18ff	1.5	bad big mistake purchasing it.	98
1958ffe3	19ff	3	ok product not very good	98
1959ffe3	20ff	1.5	bad big mistake purchasing it.	98
1960ffe3	1ff	4.5	Very good product i recommend it	99
1961ffe3	2ff	2	bad not below average	99
1962ffe3	3ff	4	Good product can go for it, but not excellent	99
1963ffe3	4ff	3.5	above average can be better	99
1964ffe3	5ff	4	Good product can go for it, but not excellent	99
1965ffe3	6ff	3.5	above average can be better	99
1966ffe3	7ff	1.5	bad big mistake purchasing it.	99
1967ffe3	8ff	2.5	average product not that good	99
1968ffe3	9ff	4.5	Very good product i recommend it	99
1969ffe3	10ff	1	very bad, worst experience, dont buy it ever	99
1970ffe3	11ff	2.5	average product not that good	99
1971ffe3	12ff	2.5	average product not that good	99
1972ffe3	13ff	5	Excellent product just go for it	99
1973ffe3	14ff	2.5	average product not that good	99
1974ffe3	15ff	2.5	average product not that good	99
1975ffe3	16ff	3	ok product not very good	99
1976ffe3	17ff	2	bad not below average	99
1977ffe3	18ff	1	very bad, worst experience, dont buy it ever	99
1978ffe3	19ff	3.5	above average can be better	99
1979ffe3	20ff	4	Good product can go for it, but not excellent	99
1980ffe3	1ff	2	bad not below average	100
1981ffe3	2ff	4.5	Very good product i recommend it	100
1982ffe4	3ff	1.5	bad big mistake purchasing it.	100
1983ffe4	4ff	4	Good product can go for it, but not excellent	100
1984ffe4	5ff	1	very bad, worst experience, dont buy it ever	100
1985ffe4	6ff	3	ok product not very good	100
1986ffe4	7ff	1.5	bad big mistake purchasing it.	100
1987ffe4	8ff	2	bad not below average	100
1988ffe4	9ff	2	bad not below average	100
1989ffe4	10ff	3.5	above average can be better	100
1990ffe4	11ff	4	Good product can go for it, but not excellent	100
1991ffe4	12ff	2	bad not below average	100
1992ffe4	13ff	5	Excellent product just go for it	100
1993ffe4	14ff	1.5	bad big mistake purchasing it.	100
1994ffe4	15ff	4	Good product can go for it, but not excellent	100
1995ffe4	16ff	3	ok product not very good	100
1996ffe4	17ff	2.5	average product not that good	100
1997ffe4	18ff	1.5	bad big mistake purchasing it.	100
1998ffe4	19ff	3	ok product not very good	100
1999ffe4	20ff	3	ok product not very good	100
73nhd	23ff	5	excellent just go for it	3
\.


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: abidhuri
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (rid);


--
-- PostgreSQL database dump complete
--

