--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id bigint NOT NULL,
    name character varying(10),
    wormhole_num integer NOT NULL,
    spaceship_num integer NOT NULL,
    meteor_ct numeric(10,0),
    constellation_name text,
    alien boolean,
    human boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id bigint NOT NULL,
    name character varying(10),
    satellite_num integer NOT NULL,
    rings_num integer NOT NULL,
    moon_ct numeric(10,0),
    lunar_time numeric(10,0),
    alien boolean,
    human boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id bigint NOT NULL,
    name character varying(10),
    meteor_num integer NOT NULL,
    shootingstar_num integer NOT NULL,
    planet_ct numeric(10,0),
    moon_ct numeric(10,0),
    alien boolean,
    human boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id bigint NOT NULL,
    name character varying(10),
    blackhole_num integer NOT NULL,
    sun_num integer NOT NULL,
    constellation_name text,
    planet_ct numeric(10,0),
    alien boolean,
    human boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id bigint NOT NULL,
    name character varying(10),
    solarsystem_num integer NOT NULL,
    space_num integer NOT NULL,
    solar_name text,
    alien boolean,
    human boolean
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MilkyWay', 47, 153, 28, 'orion', true, false);
INSERT INTO public.galaxy VALUES (2, 'Triangulum', 47, 153, 28, 'Ursa', true, false);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 60, 145, 30, 'Major', false, true);
INSERT INTO public.galaxy VALUES (4, 'Centaurus', 3, 5678, 9, 'Hydra', false, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 13, 568, 48, 'Leo', true, true);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 10, 68, 80, 'Pegasus', false, false);
INSERT INTO public.galaxy VALUES (7, 'Pinwheel', 910, 3, 428, 'Taurus', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Ranuncu', 973, 4, 15, 2010, false, true);
INSERT INTO public.moon VALUES (3, 'Graphina', 724, 9, 20, 1999, false, false);
INSERT INTO public.moon VALUES (4, 'Eleo', 730, 3, 6, 1995, true, false);
INSERT INTO public.moon VALUES (5, 'Cheila', 430, 5, 5, 2021, true, true);
INSERT INTO public.moon VALUES (6, 'Penstemon', 504, 12, 19, 1993, true, true);
INSERT INTO public.moon VALUES (7, 'Carex', 204, 4, 3, 2014, false, true);
INSERT INTO public.moon VALUES (8, 'Eleleo', 972, 6, 1, 2001, false, true);
INSERT INTO public.moon VALUES (9, 'Mirabi', 700, 5, 9, 1992, true, true);
INSERT INTO public.moon VALUES (10, 'Aesculus', 891, 2, 8, 2022, false, false);
INSERT INTO public.moon VALUES (11, 'Roth', 411, 4, 8, 1997, false, true);
INSERT INTO public.moon VALUES (12, 'Tilla', 807, 10, 20, 2003, false, true);
INSERT INTO public.moon VALUES (13, 'Chloris', 645, 3, 6, 2008, true, true);
INSERT INTO public.moon VALUES (14, 'Timmiella', 495, 17, 15, 1989, false, false);
INSERT INTO public.moon VALUES (15, 'Caesa', 255, 2, 6, 2012, false, true);
INSERT INTO public.moon VALUES (16, 'Ergia', 584, 10, 5, 1981, true, false);
INSERT INTO public.moon VALUES (17, 'Agasta', 629, 10, 12, 2011, false, true);
INSERT INTO public.moon VALUES (18, 'Cladonia', 294, 2, 17, 2023, true, false);
INSERT INTO public.moon VALUES (19, 'florum', 370, 6, 7, 2009, true, false);
INSERT INTO public.moon VALUES (20, 'Antoine', 538, 7, 20, 2015, false, true);
INSERT INTO public.moon VALUES (21, 'greggi', 243, 7, 7, 2016, true, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Alpina', 565, 4, 8, 8, true, true);
INSERT INTO public.planet VALUES (2, 'Daucos', 334, 5, 4578, 20, true, false);
INSERT INTO public.planet VALUES (3, 'Mellich', 239, 1, 58, 15, true, true);
INSERT INTO public.planet VALUES (4, 'Floridus', 460, 5, 578, 6, true, true);
INSERT INTO public.planet VALUES (5, 'Inerma', 308, 5, 90, 5, true, true);
INSERT INTO public.planet VALUES (6, 'Loudon', 454, 2, 10, 7, true, false);
INSERT INTO public.planet VALUES (7, 'Huber', 645, 6, 8, 17, false, false);
INSERT INTO public.planet VALUES (8, 'Splenda', 302, 4, 15, 12, false, false);
INSERT INTO public.planet VALUES (9, 'Glumis', 733, 9, 90, 9, true, false);
INSERT INTO public.planet VALUES (10, 'Juglan', 136, 4, 10, 1, true, false);
INSERT INTO public.planet VALUES (11, 'Xmirus', 924, 3, 58, 3, true, true);
INSERT INTO public.planet VALUES (12, 'Leptosi', 110, 10, 578, 19, false, false);
INSERT INTO public.planet VALUES (13, 'Luer', 948, 9, 4578, 2, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'xeen', 1, 3, 'orion', 4578, true, false);
INSERT INTO public.star VALUES (4, 'Tru', 0, 2, 'Major', 578, true, false);
INSERT INTO public.star VALUES (5, 'zif', 4, 0, 'Ursa', 58, false, false);
INSERT INTO public.star VALUES (6, 'Trir', 1, 3, 'Pegasus', 90, false, true);
INSERT INTO public.star VALUES (7, 'Viaris', 1, 3, 'Leo', 10, true, true);
INSERT INTO public.star VALUES (9, 'Ibe', 0, 1, 'Hydra', 8, true, true);
INSERT INTO public.star VALUES (10, 'Pir', 7, 2, 'Taurus', 15, true, true);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'U1', 489, 9, 'S1', true, true);
INSERT INTO public.universe VALUES (2, 'U2', 9, 19, 'S2', true, false);
INSERT INTO public.universe VALUES (3, 'U3', 48, 10, 'S3', true, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 1, false);


--
-- Name: galaxy galaxy_constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_name_key UNIQUE (constellation_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_lunar_time_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_lunar_time_key UNIQUE (lunar_time);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_moon_ct_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_ct_key UNIQUE (moon_ct);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planet_ct_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_ct_key UNIQUE (planet_ct);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: universe universe_solar_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_solar_name_key UNIQUE (solar_name);


--
-- Name: moon moon_moon_ct_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_ct_fkey FOREIGN KEY (moon_ct) REFERENCES public.planet(moon_ct);


--
-- Name: planet planet_planet_ct_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_ct_fkey FOREIGN KEY (planet_ct) REFERENCES public.star(planet_ct);


--
-- Name: star star_constellation_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_name_fkey FOREIGN KEY (constellation_name) REFERENCES public.galaxy(constellation_name);


--
-- PostgreSQL database dump complete
--

