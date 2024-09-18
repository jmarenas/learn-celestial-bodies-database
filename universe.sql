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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying(40) NOT NULL,
    velocity integer NOT NULL
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroids_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroids_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    radius numeric(10,3),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    radius numeric(10,3),
    description text,
    has_life boolean,
    is_spherical boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

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
    planet_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    radius numeric(10,3),
    description text,
    has_life boolean,
    is_spherical boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

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
    star_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    radius numeric(10,3),
    description text,
    has_life boolean,
    is_spherical boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroids_id_seq'::regclass);


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
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, 'A1', 1);
INSERT INTO public.asteroids VALUES (2, 'A2', 1);
INSERT INTO public.asteroids VALUES (3, 'A3', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'G1', NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (2, 'G2', NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (3, 'G3', NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (4, 'G4', NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (5, 'G5', NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (6, 'G6', NULL, NULL, NULL, NULL, true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M01', NULL, NULL, NULL, NULL, NULL, true, 1);
INSERT INTO public.moon VALUES (2, 'M02', NULL, NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.moon VALUES (3, 'M03', NULL, NULL, NULL, NULL, NULL, true, 3);
INSERT INTO public.moon VALUES (4, 'M04', NULL, NULL, NULL, NULL, NULL, true, 4);
INSERT INTO public.moon VALUES (5, 'M05', NULL, NULL, NULL, NULL, NULL, true, 5);
INSERT INTO public.moon VALUES (6, 'M06', NULL, NULL, NULL, NULL, NULL, true, 6);
INSERT INTO public.moon VALUES (7, 'M07', NULL, NULL, NULL, NULL, NULL, true, 7);
INSERT INTO public.moon VALUES (8, 'M08', NULL, NULL, NULL, NULL, NULL, true, 8);
INSERT INTO public.moon VALUES (9, 'M09', NULL, NULL, NULL, NULL, NULL, true, 9);
INSERT INTO public.moon VALUES (10, 'M10', NULL, NULL, NULL, NULL, NULL, true, 10);
INSERT INTO public.moon VALUES (11, 'M11', NULL, NULL, NULL, NULL, NULL, true, 11);
INSERT INTO public.moon VALUES (12, 'M12', NULL, NULL, NULL, NULL, NULL, true, 12);
INSERT INTO public.moon VALUES (13, 'M13', NULL, NULL, NULL, NULL, NULL, true, 1);
INSERT INTO public.moon VALUES (14, 'M14', NULL, NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.moon VALUES (15, 'M15', NULL, NULL, NULL, NULL, NULL, true, 3);
INSERT INTO public.moon VALUES (16, 'M16', NULL, NULL, NULL, NULL, NULL, true, 4);
INSERT INTO public.moon VALUES (17, 'M17', NULL, NULL, NULL, NULL, NULL, true, 5);
INSERT INTO public.moon VALUES (18, 'M18', NULL, NULL, NULL, NULL, NULL, true, 6);
INSERT INTO public.moon VALUES (19, 'M19', NULL, NULL, NULL, NULL, NULL, true, 7);
INSERT INTO public.moon VALUES (20, 'M20', NULL, NULL, NULL, NULL, NULL, true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'P01', NULL, NULL, NULL, NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (2, 'P02', NULL, NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (3, 'P03', NULL, NULL, NULL, NULL, NULL, true, 3);
INSERT INTO public.planet VALUES (4, 'P04', NULL, NULL, NULL, NULL, NULL, true, 4);
INSERT INTO public.planet VALUES (5, 'P05', NULL, NULL, NULL, NULL, NULL, true, 5);
INSERT INTO public.planet VALUES (6, 'P06', NULL, NULL, NULL, NULL, NULL, true, 6);
INSERT INTO public.planet VALUES (7, 'P07', NULL, NULL, NULL, NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (8, 'P08', NULL, NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (9, 'P09', NULL, NULL, NULL, NULL, NULL, true, 3);
INSERT INTO public.planet VALUES (10, 'P10', NULL, NULL, NULL, NULL, NULL, true, 4);
INSERT INTO public.planet VALUES (11, 'P11', NULL, NULL, NULL, NULL, NULL, true, 5);
INSERT INTO public.planet VALUES (12, 'P12', NULL, NULL, NULL, NULL, NULL, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S1', NULL, NULL, NULL, NULL, NULL, true, 1);
INSERT INTO public.star VALUES (2, 'S2', NULL, NULL, NULL, NULL, NULL, true, 2);
INSERT INTO public.star VALUES (3, 'S3', NULL, NULL, NULL, NULL, NULL, true, 3);
INSERT INTO public.star VALUES (4, 'S4', NULL, NULL, NULL, NULL, NULL, true, 4);
INSERT INTO public.star VALUES (5, 'S5', NULL, NULL, NULL, NULL, NULL, true, 5);
INSERT INTO public.star VALUES (6, 'S6', NULL, NULL, NULL, NULL, NULL, true, 6);


--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroids_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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

