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
-- Name: astronauts; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronauts (
    name character varying(20) NOT NULL,
    address text NOT NULL,
    travels text,
    astronauts_id integer NOT NULL
);


ALTER TABLE public.astronauts OWNER TO freecodecamp;

--
-- Name: astronauts_astronauts_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronauts_astronauts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronauts_astronauts_id_seq OWNER TO freecodecamp;

--
-- Name: astronauts_astronauts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronauts_astronauts_id_seq OWNED BY public.astronauts.astronauts_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    item_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size integer,
    has_planet boolean,
    light_years integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
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
-- Name: galaxy_item_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_item_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_item_id_seq OWNED BY public.galaxy.item_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    item_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    sun_distance integer,
    planet text,
    moon_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_item_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_item_id_seq OWNER TO freecodecamp;

--
-- Name: moon_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_item_id_seq OWNED BY public.moon.item_id;


--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
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
    item_id integer NOT NULL,
    name character varying(20) NOT NULL,
    radius numeric,
    has_moon boolean,
    liveable boolean,
    planet_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_item_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_item_id_seq OWNER TO freecodecamp;

--
-- Name: planet_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_item_id_seq OWNED BY public.planet.item_id;


--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
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
    item_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance integer,
    brightness integer,
    color character(1),
    star_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_item_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_item_id_seq OWNER TO freecodecamp;

--
-- Name: star_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_item_id_seq OWNED BY public.star.item_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
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
-- Name: astronauts astronauts_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronauts ALTER COLUMN astronauts_id SET DEFAULT nextval('public.astronauts_astronauts_id_seq'::regclass);


--
-- Name: galaxy item_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN item_id SET DEFAULT nextval('public.galaxy_item_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon item_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN item_id SET DEFAULT nextval('public.moon_item_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet item_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN item_id SET DEFAULT nextval('public.planet_item_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star item_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN item_id SET DEFAULT nextval('public.star_item_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astronauts; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronauts VALUES ('Millie Vanillie', 'This is a test', NULL, 1);
INSERT INTO public.astronauts VALUES ('Mickey Mouse', 'This is a test', NULL, 2);
INSERT INTO public.astronauts VALUES ('Ron Sachs', 'This is a test', NULL, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Test', 0, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES (2, 'Test', 0, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES (3, 'Test', 0, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES (4, 'Test', 0, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES (5, 'Test', 0, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES (6, 'Test', 0, NULL, NULL, 6);
INSERT INTO public.galaxy VALUES (7, 'Test', 0, NULL, NULL, 7);
INSERT INTO public.galaxy VALUES (26, 'Test', 0, NULL, NULL, 8);
INSERT INTO public.galaxy VALUES (8, 'Test', 0, NULL, NULL, 9);
INSERT INTO public.galaxy VALUES (9, 'Test', 0, NULL, NULL, 10);
INSERT INTO public.galaxy VALUES (10, 'Test', 0, NULL, NULL, 11);
INSERT INTO public.galaxy VALUES (11, 'Test', 0, NULL, NULL, 12);
INSERT INTO public.galaxy VALUES (12, 'Test', 0, NULL, NULL, 13);
INSERT INTO public.galaxy VALUES (13, 'Test', 0, NULL, NULL, 14);
INSERT INTO public.galaxy VALUES (14, 'Test', 0, NULL, NULL, 15);
INSERT INTO public.galaxy VALUES (15, 'Test', 0, NULL, NULL, 16);
INSERT INTO public.galaxy VALUES (16, 'Test', 0, NULL, NULL, 17);
INSERT INTO public.galaxy VALUES (17, 'Test', 0, NULL, NULL, 18);
INSERT INTO public.galaxy VALUES (18, 'Test', 0, NULL, NULL, 19);
INSERT INTO public.galaxy VALUES (19, 'Test', 0, NULL, NULL, 20);
INSERT INTO public.galaxy VALUES (20, 'Test', 0, NULL, NULL, 21);
INSERT INTO public.galaxy VALUES (21, 'Test', 0, NULL, NULL, 22);
INSERT INTO public.galaxy VALUES (22, 'Test', 0, NULL, NULL, 23);
INSERT INTO public.galaxy VALUES (23, 'Test', 0, NULL, NULL, 24);
INSERT INTO public.galaxy VALUES (24, 'Test', 0, NULL, NULL, 25);
INSERT INTO public.galaxy VALUES (25, 'Test', 0, NULL, NULL, 26);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'The moons', NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (4, 'The moons', NULL, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (3, 'The moons', NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (5, 'The moons', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (6, 'The moons', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (7, 'The moons', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (8, 'The moons', NULL, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (9, 'The moons', NULL, NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES (10, 'The moons', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (11, 'The moons', NULL, NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (12, 'The moons', NULL, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES (13, 'The moons', NULL, NULL, NULL, 12, NULL);
INSERT INTO public.moon VALUES (14, 'The moons', NULL, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES (15, 'The moons', NULL, NULL, NULL, 14, NULL);
INSERT INTO public.moon VALUES (16, 'The moons', NULL, NULL, NULL, 15, NULL);
INSERT INTO public.moon VALUES (17, 'The moons', NULL, NULL, NULL, 16, NULL);
INSERT INTO public.moon VALUES (20, 'The moons', NULL, NULL, NULL, 17, NULL);
INSERT INTO public.moon VALUES (21, 'The moons', NULL, NULL, NULL, 18, NULL);
INSERT INTO public.moon VALUES (22, 'The moons', NULL, NULL, NULL, 19, NULL);
INSERT INTO public.moon VALUES (23, 'The moons', NULL, NULL, NULL, 20, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Interesting planet', NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Interesting planet', NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (4, 'Interesting planet', NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (5, 'Interesting planet', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (6, 'Interesting planet', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (7, 'Interesting planet', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (8, 'Interesting planet', NULL, NULL, NULL, 7, NULL);
INSERT INTO public.planet VALUES (9, 'Interesting planet', NULL, NULL, NULL, 8, NULL);
INSERT INTO public.planet VALUES (10, 'Interesting planet', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.planet VALUES (11, 'Interesting planet', NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (12, 'Interesting planet', NULL, NULL, NULL, 11, NULL);
INSERT INTO public.planet VALUES (13, 'Interesting planet', NULL, NULL, NULL, 12, NULL);
INSERT INTO public.planet VALUES (14, 'Interesting planet', NULL, NULL, NULL, 13, NULL);
INSERT INTO public.planet VALUES (15, 'Interesting planet', NULL, NULL, NULL, 14, NULL);
INSERT INTO public.planet VALUES (16, 'Interesting planet', NULL, NULL, NULL, 15, NULL);
INSERT INTO public.planet VALUES (17, 'Interesting planet', NULL, NULL, NULL, 16, NULL);
INSERT INTO public.planet VALUES (20, 'Interesting planet', NULL, NULL, NULL, 17, NULL);
INSERT INTO public.planet VALUES (21, 'Interesting planet', NULL, NULL, NULL, 18, NULL);
INSERT INTO public.planet VALUES (22, 'Interesting planet', NULL, NULL, NULL, 19, NULL);
INSERT INTO public.planet VALUES (23, 'Interesting planet', NULL, NULL, NULL, 20, NULL);
INSERT INTO public.planet VALUES (24, 'Interesting planet', NULL, NULL, NULL, 21, NULL);
INSERT INTO public.planet VALUES (25, 'Interesting planet', NULL, NULL, NULL, 22, NULL);
INSERT INTO public.planet VALUES (26, 'Interesting planet', NULL, NULL, NULL, 23, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Cool star', NULL, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 'Cool star', NULL, NULL, NULL, 2, NULL);
INSERT INTO public.star VALUES (4, 'Cool star', NULL, NULL, NULL, 3, NULL);
INSERT INTO public.star VALUES (5, 'Cool star', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.star VALUES (6, 'Cool star', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.star VALUES (7, 'Cool star', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.star VALUES (18, 'Cool star', NULL, NULL, NULL, 7, NULL);
INSERT INTO public.star VALUES (19, 'Cool star', NULL, NULL, NULL, 8, NULL);
INSERT INTO public.star VALUES (8, 'Cool star', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.star VALUES (9, 'Cool star', NULL, NULL, NULL, 10, NULL);
INSERT INTO public.star VALUES (10, 'Cool star', NULL, NULL, NULL, 11, NULL);
INSERT INTO public.star VALUES (11, 'Cool star', NULL, NULL, NULL, 12, NULL);
INSERT INTO public.star VALUES (12, 'Cool star', NULL, NULL, NULL, 13, NULL);
INSERT INTO public.star VALUES (13, 'Cool star', NULL, NULL, NULL, 14, NULL);
INSERT INTO public.star VALUES (14, 'Cool star', NULL, NULL, NULL, 15, NULL);
INSERT INTO public.star VALUES (15, 'Cool star', NULL, NULL, NULL, 16, NULL);
INSERT INTO public.star VALUES (16, 'Cool star', NULL, NULL, NULL, 17, NULL);
INSERT INTO public.star VALUES (17, 'Cool star', NULL, NULL, NULL, 18, NULL);
INSERT INTO public.star VALUES (20, 'Cool star', NULL, NULL, NULL, 19, NULL);
INSERT INTO public.star VALUES (21, 'Cool star', NULL, NULL, NULL, 20, NULL);
INSERT INTO public.star VALUES (22, 'Cool star', NULL, NULL, NULL, 21, NULL);
INSERT INTO public.star VALUES (23, 'Cool star', NULL, NULL, NULL, 22, NULL);
INSERT INTO public.star VALUES (24, 'Cool star', NULL, NULL, NULL, 23, NULL);
INSERT INTO public.star VALUES (25, 'Cool star', NULL, NULL, NULL, 24, NULL);
INSERT INTO public.star VALUES (26, 'Cool star', NULL, NULL, NULL, 25, NULL);


--
-- Name: astronauts_astronauts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronauts_astronauts_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 26, true);


--
-- Name: galaxy_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_item_id_seq', 2, true);


--
-- Name: moon_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_item_id_seq', 2, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_item_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: star_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_item_id_seq', 2, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 25, true);


--
-- Name: astronauts astronauts_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronauts
    ADD CONSTRAINT astronauts_pkey PRIMARY KEY (astronauts_id);


--
-- Name: galaxy galaxy_light_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_light_years_key UNIQUE (light_years);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT id_unique UNIQUE (item_id);


--
-- Name: galaxy id_unique2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT id_unique2 UNIQUE (item_id);


--
-- Name: star id_unique3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT id_unique3 UNIQUE (item_id);


--
-- Name: planet id_unique4; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT id_unique4 UNIQUE (item_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: astronauts name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronauts
    ADD CONSTRAINT name_unique UNIQUE (name);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

