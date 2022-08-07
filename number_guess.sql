--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number;
--
-- Name: number; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number OWNER TO freecodecamp;

\connect number

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: guesser; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guesser (
    user_id integer NOT NULL,
    username character varying(20)
);


ALTER TABLE public.guesser OWNER TO freecodecamp;

--
-- Name: guesser_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guesser_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guesser_user_id_seq OWNER TO freecodecamp;

--
-- Name: guesser_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guesser_user_id_seq OWNED BY public.guesser.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: guesser user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesser ALTER COLUMN user_id SET DEFAULT nextval('public.guesser_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 13, 7);
INSERT INTO public.games VALUES (2, 974, 8);
INSERT INTO public.games VALUES (3, 921, 8);
INSERT INTO public.games VALUES (4, 82, 9);
INSERT INTO public.games VALUES (5, 117, 9);
INSERT INTO public.games VALUES (6, 227, 8);
INSERT INTO public.games VALUES (7, 768, 8);
INSERT INTO public.games VALUES (8, 526, 8);
INSERT INTO public.games VALUES (9, 83, 10);
INSERT INTO public.games VALUES (10, 11, 10);
INSERT INTO public.games VALUES (11, 649, 11);
INSERT INTO public.games VALUES (12, 628, 11);
INSERT INTO public.games VALUES (13, 174, 10);
INSERT INTO public.games VALUES (14, 588, 10);
INSERT INTO public.games VALUES (15, 607, 10);
INSERT INTO public.games VALUES (16, 835, 12);
INSERT INTO public.games VALUES (17, 69, 12);
INSERT INTO public.games VALUES (18, 970, 13);
INSERT INTO public.games VALUES (19, 884, 13);
INSERT INTO public.games VALUES (20, 237, 12);
INSERT INTO public.games VALUES (21, 879, 12);
INSERT INTO public.games VALUES (22, 524, 12);
INSERT INTO public.games VALUES (23, 19, 2);
INSERT INTO public.games VALUES (24, 354, 14);
INSERT INTO public.games VALUES (25, 6, 14);
INSERT INTO public.games VALUES (26, 667, 15);
INSERT INTO public.games VALUES (27, 805, 15);
INSERT INTO public.games VALUES (28, 26, 14);
INSERT INTO public.games VALUES (29, 747, 14);
INSERT INTO public.games VALUES (30, 163, 14);
INSERT INTO public.games VALUES (31, 375, 16);
INSERT INTO public.games VALUES (32, 96, 16);
INSERT INTO public.games VALUES (33, 933, 17);
INSERT INTO public.games VALUES (34, 413, 17);
INSERT INTO public.games VALUES (35, 442, 16);
INSERT INTO public.games VALUES (36, 585, 16);
INSERT INTO public.games VALUES (37, 185, 16);
INSERT INTO public.games VALUES (38, 418, 18);
INSERT INTO public.games VALUES (39, 251, 18);
INSERT INTO public.games VALUES (40, 601, 19);
INSERT INTO public.games VALUES (41, 698, 19);
INSERT INTO public.games VALUES (42, 20, 18);
INSERT INTO public.games VALUES (43, 895, 18);
INSERT INTO public.games VALUES (44, 259, 18);
INSERT INTO public.games VALUES (45, 16, 2);
INSERT INTO public.games VALUES (46, 480, 20);
INSERT INTO public.games VALUES (47, 232, 20);
INSERT INTO public.games VALUES (48, 324, 21);
INSERT INTO public.games VALUES (49, 223, 21);
INSERT INTO public.games VALUES (50, 723, 20);
INSERT INTO public.games VALUES (51, 123, 20);
INSERT INTO public.games VALUES (52, 464, 20);
INSERT INTO public.games VALUES (53, 680, 22);
INSERT INTO public.games VALUES (54, 106, 22);
INSERT INTO public.games VALUES (55, 466, 23);
INSERT INTO public.games VALUES (56, 685, 23);
INSERT INTO public.games VALUES (57, 114, 22);
INSERT INTO public.games VALUES (58, 364, 22);
INSERT INTO public.games VALUES (59, 386, 22);
INSERT INTO public.games VALUES (60, 82, 24);
INSERT INTO public.games VALUES (61, 649, 24);
INSERT INTO public.games VALUES (62, 82, 25);
INSERT INTO public.games VALUES (63, 349, 25);
INSERT INTO public.games VALUES (64, 905, 24);
INSERT INTO public.games VALUES (65, 97, 24);
INSERT INTO public.games VALUES (66, 274, 24);
INSERT INTO public.games VALUES (67, 13, 7);
INSERT INTO public.games VALUES (68, 921, 26);
INSERT INTO public.games VALUES (69, 365, 26);
INSERT INTO public.games VALUES (70, 196, 27);
INSERT INTO public.games VALUES (71, 952, 27);
INSERT INTO public.games VALUES (72, 948, 26);
INSERT INTO public.games VALUES (73, 891, 26);
INSERT INTO public.games VALUES (74, 289, 26);
INSERT INTO public.games VALUES (75, 926, 28);
INSERT INTO public.games VALUES (76, 351, 28);
INSERT INTO public.games VALUES (77, 416, 29);
INSERT INTO public.games VALUES (78, 30, 29);
INSERT INTO public.games VALUES (79, 296, 28);
INSERT INTO public.games VALUES (80, 397, 28);
INSERT INTO public.games VALUES (81, 776, 28);
INSERT INTO public.games VALUES (82, 14, 7);
INSERT INTO public.games VALUES (83, 436, 30);
INSERT INTO public.games VALUES (84, 420, 30);
INSERT INTO public.games VALUES (85, 9, 31);
INSERT INTO public.games VALUES (86, 814, 31);
INSERT INTO public.games VALUES (87, 305, 30);
INSERT INTO public.games VALUES (88, 875, 30);
INSERT INTO public.games VALUES (89, 635, 30);
INSERT INTO public.games VALUES (90, 6, 2);
INSERT INTO public.games VALUES (91, 575, 34);
INSERT INTO public.games VALUES (92, 340, 34);
INSERT INTO public.games VALUES (93, 878, 35);
INSERT INTO public.games VALUES (94, 339, 35);
INSERT INTO public.games VALUES (95, 694, 34);
INSERT INTO public.games VALUES (96, 409, 34);
INSERT INTO public.games VALUES (97, 453, 34);
INSERT INTO public.games VALUES (98, 719, 36);
INSERT INTO public.games VALUES (99, 792, 36);
INSERT INTO public.games VALUES (100, 738, 37);
INSERT INTO public.games VALUES (101, 671, 37);
INSERT INTO public.games VALUES (102, 213, 36);
INSERT INTO public.games VALUES (103, 115, 36);
INSERT INTO public.games VALUES (104, 559, 36);
INSERT INTO public.games VALUES (105, 649, 38);
INSERT INTO public.games VALUES (106, 400, 38);
INSERT INTO public.games VALUES (107, 137, 39);
INSERT INTO public.games VALUES (108, 764, 39);
INSERT INTO public.games VALUES (109, 381, 38);
INSERT INTO public.games VALUES (110, 432, 38);
INSERT INTO public.games VALUES (111, 727, 38);
INSERT INTO public.games VALUES (112, 325, 40);
INSERT INTO public.games VALUES (113, 564, 40);
INSERT INTO public.games VALUES (114, 991, 41);
INSERT INTO public.games VALUES (115, 49, 41);
INSERT INTO public.games VALUES (116, 231, 40);
INSERT INTO public.games VALUES (117, 900, 40);
INSERT INTO public.games VALUES (118, 497, 40);
INSERT INTO public.games VALUES (119, 455, 45);
INSERT INTO public.games VALUES (120, 427, 45);
INSERT INTO public.games VALUES (121, 385, 46);
INSERT INTO public.games VALUES (122, 660, 46);
INSERT INTO public.games VALUES (123, 813, 45);
INSERT INTO public.games VALUES (124, 241, 45);
INSERT INTO public.games VALUES (125, 439, 45);
INSERT INTO public.games VALUES (126, 441, 47);
INSERT INTO public.games VALUES (127, 845, 47);
INSERT INTO public.games VALUES (128, 262, 48);
INSERT INTO public.games VALUES (129, 818, 48);
INSERT INTO public.games VALUES (130, 80, 47);
INSERT INTO public.games VALUES (131, 55, 47);
INSERT INTO public.games VALUES (132, 182, 47);
INSERT INTO public.games VALUES (133, 994, 49);
INSERT INTO public.games VALUES (134, 543, 49);
INSERT INTO public.games VALUES (135, 517, 50);
INSERT INTO public.games VALUES (136, 234, 50);
INSERT INTO public.games VALUES (137, 630, 49);
INSERT INTO public.games VALUES (138, 972, 49);
INSERT INTO public.games VALUES (139, 308, 49);
INSERT INTO public.games VALUES (140, 167, 53);
INSERT INTO public.games VALUES (141, 854, 53);
INSERT INTO public.games VALUES (142, 271, 54);
INSERT INTO public.games VALUES (143, 712, 54);
INSERT INTO public.games VALUES (144, 425, 53);
INSERT INTO public.games VALUES (145, 353, 53);
INSERT INTO public.games VALUES (146, 575, 53);
INSERT INTO public.games VALUES (147, 12, 2);
INSERT INTO public.games VALUES (148, 261, 55);
INSERT INTO public.games VALUES (149, 319, 55);
INSERT INTO public.games VALUES (150, 121, 56);
INSERT INTO public.games VALUES (151, 607, 56);
INSERT INTO public.games VALUES (152, 667, 55);
INSERT INTO public.games VALUES (153, 619, 55);
INSERT INTO public.games VALUES (154, 75, 55);
INSERT INTO public.games VALUES (155, 562, 57);
INSERT INTO public.games VALUES (156, 241, 57);
INSERT INTO public.games VALUES (157, 748, 58);
INSERT INTO public.games VALUES (158, 160, 58);
INSERT INTO public.games VALUES (159, 641, 57);
INSERT INTO public.games VALUES (160, 562, 57);
INSERT INTO public.games VALUES (161, 459, 57);


--
-- Data for Name: guesser; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guesser VALUES (1, 'hallo');
INSERT INTO public.guesser VALUES (2, 'new');
INSERT INTO public.guesser VALUES (3, 'eee');
INSERT INTO public.guesser VALUES (4, 'user_1659875434052');
INSERT INTO public.guesser VALUES (5, 'user_1659875434051');
INSERT INTO public.guesser VALUES (6, 'gg');
INSERT INTO public.guesser VALUES (7, 'rr');
INSERT INTO public.guesser VALUES (8, 'user_1659878534654');
INSERT INTO public.guesser VALUES (9, 'user_1659878534653');
INSERT INTO public.guesser VALUES (10, 'user_1659878607491');
INSERT INTO public.guesser VALUES (11, 'user_1659878607490');
INSERT INTO public.guesser VALUES (12, 'user_1659878774718');
INSERT INTO public.guesser VALUES (13, 'user_1659878774717');
INSERT INTO public.guesser VALUES (14, 'user_1659878908332');
INSERT INTO public.guesser VALUES (15, 'user_1659878908331');
INSERT INTO public.guesser VALUES (16, 'user_1659878978698');
INSERT INTO public.guesser VALUES (17, 'user_1659878978697');
INSERT INTO public.guesser VALUES (18, 'user_1659878998163');
INSERT INTO public.guesser VALUES (19, 'user_1659878998162');
INSERT INTO public.guesser VALUES (20, 'user_1659879086463');
INSERT INTO public.guesser VALUES (21, 'user_1659879086462');
INSERT INTO public.guesser VALUES (22, 'user_1659879141265');
INSERT INTO public.guesser VALUES (23, 'user_1659879141264');
INSERT INTO public.guesser VALUES (24, 'user_1659879159214');
INSERT INTO public.guesser VALUES (25, 'user_1659879159213');
INSERT INTO public.guesser VALUES (26, 'user_1659879327089');
INSERT INTO public.guesser VALUES (27, 'user_1659879327088');
INSERT INTO public.guesser VALUES (28, 'user_1659879378699');
INSERT INTO public.guesser VALUES (29, 'user_1659879378698');
INSERT INTO public.guesser VALUES (30, 'user_1659879557945');
INSERT INTO public.guesser VALUES (31, 'user_1659879557944');
INSERT INTO public.guesser VALUES (32, 'user_1659879698881');
INSERT INTO public.guesser VALUES (33, 'user_1659879698880');
INSERT INTO public.guesser VALUES (34, 'user_1659879710225');
INSERT INTO public.guesser VALUES (35, 'user_1659879710224');
INSERT INTO public.guesser VALUES (36, 'user_1659879724563');
INSERT INTO public.guesser VALUES (37, 'user_1659879724562');
INSERT INTO public.guesser VALUES (38, 'user_1659879855841');
INSERT INTO public.guesser VALUES (39, 'user_1659879855840');
INSERT INTO public.guesser VALUES (40, 'user_1659881471502');
INSERT INTO public.guesser VALUES (41, 'user_1659881471501');
INSERT INTO public.guesser VALUES (42, 'hello');
INSERT INTO public.guesser VALUES (43, 'user_1659881741913');
INSERT INTO public.guesser VALUES (44, 'user_1659881741912');
INSERT INTO public.guesser VALUES (45, 'user_1659881758735');
INSERT INTO public.guesser VALUES (46, 'user_1659881758734');
INSERT INTO public.guesser VALUES (47, 'user_1659881787657');
INSERT INTO public.guesser VALUES (48, 'user_1659881787656');
INSERT INTO public.guesser VALUES (49, 'user_1659881810932');
INSERT INTO public.guesser VALUES (50, 'user_1659881810931');
INSERT INTO public.guesser VALUES (51, 'user_1659881893723');
INSERT INTO public.guesser VALUES (52, 'user_1659881893722');
INSERT INTO public.guesser VALUES (53, 'user_1659881907555');
INSERT INTO public.guesser VALUES (54, 'user_1659881907554');
INSERT INTO public.guesser VALUES (55, 'user_1659881973769');
INSERT INTO public.guesser VALUES (56, 'user_1659881973768');
INSERT INTO public.guesser VALUES (57, 'user_1659882008744');
INSERT INTO public.guesser VALUES (58, 'user_1659882008743');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 161, true);


--
-- Name: guesser_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guesser_user_id_seq', 58, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: guesser guesser_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesser
    ADD CONSTRAINT guesser_pkey PRIMARY KEY (user_id);


--
-- Name: guesser guesser_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesser
    ADD CONSTRAINT guesser_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.guesser(user_id);


--
-- PostgreSQL database dump complete
--

