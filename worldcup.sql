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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (302, 303, 4, 2, 129, 2018, 'Final');
INSERT INTO public.games VALUES (304, 305, 2, 0, 130, 2018, 'Third Place');
INSERT INTO public.games VALUES (303, 305, 2, 1, 131, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (302, 304, 1, 0, 132, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (303, 306, 3, 2, 133, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (305, 307, 2, 0, 134, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (304, 308, 2, 1, 135, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (302, 309, 2, 0, 136, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (305, 310, 2, 1, 137, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (307, 311, 1, 0, 138, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (304, 312, 3, 2, 139, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (308, 313, 2, 0, 140, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (303, 314, 2, 1, 141, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (306, 315, 2, 1, 142, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (309, 316, 2, 1, 143, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (302, 317, 4, 3, 144, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (318, 317, 1, 0, 145, 2014, 'Final');
INSERT INTO public.games VALUES (319, 308, 3, 0, 146, 2014, 'Third Place');
INSERT INTO public.games VALUES (317, 319, 1, 0, 147, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (318, 308, 7, 1, 148, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (319, 320, 1, 0, 149, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (317, 304, 1, 0, 150, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (308, 310, 2, 1, 151, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (318, 302, 1, 0, 152, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (308, 321, 2, 1, 153, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (310, 309, 2, 0, 154, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (302, 322, 2, 0, 155, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (318, 323, 2, 1, 156, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (319, 313, 2, 1, 157, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (320, 324, 2, 1, 158, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (317, 311, 1, 0, 159, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (304, 325, 2, 1, 160, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (302, 'France');
INSERT INTO public.teams VALUES (303, 'Croatia');
INSERT INTO public.teams VALUES (304, 'Belgium');
INSERT INTO public.teams VALUES (305, 'England');
INSERT INTO public.teams VALUES (306, 'Russia');
INSERT INTO public.teams VALUES (307, 'Sweden');
INSERT INTO public.teams VALUES (308, 'Brazil');
INSERT INTO public.teams VALUES (309, 'Uruguay');
INSERT INTO public.teams VALUES (310, 'Colombia');
INSERT INTO public.teams VALUES (311, 'Switzerland');
INSERT INTO public.teams VALUES (312, 'Japan');
INSERT INTO public.teams VALUES (313, 'Mexico');
INSERT INTO public.teams VALUES (314, 'Denmark');
INSERT INTO public.teams VALUES (315, 'Spain');
INSERT INTO public.teams VALUES (316, 'Portugal');
INSERT INTO public.teams VALUES (317, 'Argentina');
INSERT INTO public.teams VALUES (318, 'Germany');
INSERT INTO public.teams VALUES (319, 'Netherlands');
INSERT INTO public.teams VALUES (320, 'Costa Rica');
INSERT INTO public.teams VALUES (321, 'Chile');
INSERT INTO public.teams VALUES (322, 'Nigeria');
INSERT INTO public.teams VALUES (323, 'Algeria');
INSERT INTO public.teams VALUES (324, 'Greece');
INSERT INTO public.teams VALUES (325, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 160, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 325, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

