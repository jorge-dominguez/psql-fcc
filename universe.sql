--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg110+1)
-- Dumped by pg_dump version 15.3 (Debian 15.3-1.pgdg110+1)

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

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    diameter_in_lightyears integer,
    number_of_stars integer
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
    name character varying(30) NOT NULL,
    planet_id integer,
    gravity numeric(4,1),
    diameter_in_kilometers integer
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
    name character varying(30) NOT NULL,
    has_life boolean,
    star_id integer,
    age_in_million_years integer,
    has_moon boolean
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    age_in_million_years integer
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our own galaxy, where the Solar System is located', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The closest galaxy to the Milky Way and largest spiral galaxy in the Local Group.', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum (M33)', 'A nearby spiral galaxy and a member of the Local Group.', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'An irregular galaxy and one of the closest galaxies to the Milky Way.', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'A neighboring irregular galaxy of the Milky Way.', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A (NGC 5128)', 'A giant elliptical galaxy with strong radio emission to its core.', NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Sombrero (M104)', 'A spiral galaxy seen edge-on, know for its distinctive hat-like shape.', NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Whirlpool (M51)', 'A spiral galaxy with a bridge of material extending from a smaller companion galaxy.', NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Bode''s Galaxy (M81)', 'A bright and nearby spiral galaxy.', NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'Cigar Galaxy (M82)', 'An irregular galaxy with intense star formation.', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 5, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Titan', 6, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Rhea', 6, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Dione', 6, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Tethys', 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Iapetus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Miranda', 7, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Ariel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Titania', 7, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Oberon', 7, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Triton', 8, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Nereid', 8, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Proteus', 8, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Larissa', 8, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Galatea', 8, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', false, 11, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'HD 209458 b', false, 12, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Tau Ceti e', false, 13, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Gliese 581d', false, 14, NULL, NULL);
INSERT INTO public.planet VALUES (1, 'Mercury', false, 1, NULL, false);
INSERT INTO public.planet VALUES (2, 'Venus', false, 1, NULL, false);
INSERT INTO public.planet VALUES (3, 'Earth', true, 1, NULL, true);
INSERT INTO public.planet VALUES (4, 'Mars', false, 1, NULL, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 1, NULL, true);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 1, NULL, true);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 1, NULL, true);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 1, NULL, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL);
INSERT INTO public.star VALUES (2, 'Aldebaran', 2, NULL);
INSERT INTO public.star VALUES (3, 'BF Trianguli', 3, NULL);
INSERT INTO public.star VALUES (4, 'R Doradus', 4, NULL);
INSERT INTO public.star VALUES (5, 'Beta Doradus', 5, NULL);
INSERT INTO public.star VALUES (6, 'V841 Centauri', 6, NULL);
INSERT INTO public.star VALUES (7, 'Beta Serpentis', 7, NULL);
INSERT INTO public.star VALUES (8, 'Nu Ceti', 8, NULL);
INSERT INTO public.star VALUES (9, 'Delta Ursae Majoris', 9, NULL);
INSERT INTO public.star VALUES (10, 'Epsilon Canis Majoris', 10, NULL);
INSERT INTO public.star VALUES (11, 'Proxima Centauri', 2, NULL);
INSERT INTO public.star VALUES (12, 'HD 209458 b (Osiris)', 1, NULL);
INSERT INTO public.star VALUES (13, 'Tau Ceti e', 1, NULL);
INSERT INTO public.star VALUES (14, 'Gliese 581d', 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


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

