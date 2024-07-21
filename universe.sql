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
    name character varying(255),
    galaxy_id integer NOT NULL,
    number_planets integer NOT NULL,
    number_moon integer NOT NULL,
    number_star integer
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
    name character varying(255) NOT NULL,
    is_big boolean,
    planet_id integer,
    description character varying(255)
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
    name character varying(255) NOT NULL,
    population numeric,
    is_liveable boolean,
    is_hot boolean,
    star_id integer
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
    name character varying(255) NOT NULL,
    star_id integer NOT NULL,
    nickname text,
    galaxy_id integer,
    has_blingbling boolean
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
-- Name: tablemoto; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.tablemoto (
    name character varying(255) NOT NULL,
    tablemoto_id integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public.tablemoto OWNER TO freecodecamp;

--
-- Name: tablemoto_tablemoto_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.tablemoto_tablemoto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tablemoto_tablemoto_id_seq OWNER TO freecodecamp;

--
-- Name: tablemoto_tablemoto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.tablemoto_tablemoto_id_seq OWNED BY public.tablemoto.tablemoto_id;


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
-- Name: tablemoto tablemoto_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tablemoto ALTER COLUMN tablemoto_id SET DEFAULT nextval('public.tablemoto_tablemoto_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Solar System', 1, 9, 99, 99999);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 11, 111, 11111);
INSERT INTO public.galaxy VALUES ('Betamax', 3, 22, 222, 22222);
INSERT INTO public.galaxy VALUES ('Choxtogo', 4, 33, 333, 33333);
INSERT INTO public.galaxy VALUES ('Dedemo', 5, 44, 444, 44444);
INSERT INTO public.galaxy VALUES ('Ekekek', 6, 55, 555, 5555);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moonstar88', true, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Luna', true, 4, 'Earth natural satellite, known for its impact on tides.');
INSERT INTO public.moon VALUES (3, 'Titan', true, 5, 'Largest moon of Saturn, has a thick atmosphere.');
INSERT INTO public.moon VALUES (4, 'Europa', false, 6, 'Icy moon of Jupiter, potential for subsurface ocean.');
INSERT INTO public.moon VALUES (5, 'Phobos', false, 3, 'Small, irregularly shaped moon of Mars.');
INSERT INTO public.moon VALUES (6, 'Deimos', false, 3, 'Second moon of Mars, smaller than Phobos.');
INSERT INTO public.moon VALUES (7, 'Io', true, 6, 'Volcanically active moon of Jupiter.');
INSERT INTO public.moon VALUES (8, 'Ganymede', true, 6, 'Largest moon in the solar system, orbits Jupiter.');
INSERT INTO public.moon VALUES (9, 'Callisto', true, 6, 'Heavily cratered moon of Jupiter.');
INSERT INTO public.moon VALUES (10, 'Enceladus', false, 5, 'Saturn moon with geysers of water ice.');
INSERT INTO public.moon VALUES (11, 'Mimas', false, 5, 'Small moon of Saturn with a large crater.');
INSERT INTO public.moon VALUES (12, 'Rhea', true, 5, 'Second largest moon of Saturn.');
INSERT INTO public.moon VALUES (13, 'Tethys', false, 5, 'Moon of Saturn with a large canyon system.');
INSERT INTO public.moon VALUES (14, 'Dione', false, 5, 'Moon of Saturn with bright ice cliffs.');
INSERT INTO public.moon VALUES (15, 'Iapetus', true, 5, 'Moon of Saturn, known for its two-tone coloration.');
INSERT INTO public.moon VALUES (16, 'Oberon', true, 7, 'Second largest moon of Uranus.');
INSERT INTO public.moon VALUES (17, 'Titania', true, 7, 'Largest moon of Uranus.');
INSERT INTO public.moon VALUES (18, 'Umbriel', false, 7, 'Dark, heavily cratered moon of Uranus.');
INSERT INTO public.moon VALUES (19, 'Ariel', false, 7, 'Bright moon of Uranus, known for its valleys.');
INSERT INTO public.moon VALUES (20, 'Miranda', false, 7, 'Smallest and innermost of Uranus major moons.');
INSERT INTO public.moon VALUES (21, 'Triton', true, 8, 'Largest moon of Neptune, orbits in the opposite direction of Neptunes rotation.');
INSERT INTO public.moon VALUES (22, 'Proteus', false, 8, 'Second largest moon of Neptune.');
INSERT INTO public.moon VALUES (23, 'Nereid', false, 8, 'Moon of Neptune with a highly eccentric orbit.');
INSERT INTO public.moon VALUES (24, 'Charon', true, 9, 'Largest moon of Pluto, nearly half its size.');
INSERT INTO public.moon VALUES (25, 'Nix', false, 9, 'Small moon of Pluto.');
INSERT INTO public.moon VALUES (26, 'Hydra', false, 9, 'Outer moon of Pluto, discovered in 2005.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', 80000000000, true, false, 3);
INSERT INTO public.planet VALUES (4, 'Mercuria', 0, false, true, 3);
INSERT INTO public.planet VALUES (5, 'Verda', 1500000000, true, false, 4);
INSERT INTO public.planet VALUES (6, 'Desertia', 500000, false, true, 5);
INSERT INTO public.planet VALUES (7, 'Oceania', 3000000000, true, false, 6);
INSERT INTO public.planet VALUES (8, 'Frostia', 0, false, false, 7);
INSERT INTO public.planet VALUES (9, 'Gaseous', 0, false, true, 8);
INSERT INTO public.planet VALUES (10, 'Terra', 7000000000, true, false, 4);
INSERT INTO public.planet VALUES (11, 'Volcania', 10000, false, true, 5);
INSERT INTO public.planet VALUES (12, 'Haven', 500000000, true, false, 6);
INSERT INTO public.planet VALUES (13, 'Zephyra', 200000, true, false, 7);
INSERT INTO public.planet VALUES (14, 'Rockia', 1000, false, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('SUN', 3, 'SUN', 1, NULL);
INSERT INTO public.star VALUES ('Polaris', 4, 'The North Star', 2, true);
INSERT INTO public.star VALUES ('Sirius', 5, 'Dog Star', 3, false);
INSERT INTO public.star VALUES ('Betelgeuse', 6, 'Alpha Orionis', 4, true);
INSERT INTO public.star VALUES ('Antares', 7, 'Alpha Scorpii', 5, false);
INSERT INTO public.star VALUES ('Rigel', 8, 'Beta Orionis', 6, true);


--
-- Data for Name: tablemoto; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.tablemoto VALUES ('Iam', 1, 'Groot');
INSERT INTO public.tablemoto VALUES ('You are', 2, 'Single');
INSERT INTO public.tablemoto VALUES ('We are', 3, 'Double');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 19, true);


--
-- Name: tablemoto_tablemoto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.tablemoto_tablemoto_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (name);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet nameplanet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT nameplanet_unique UNIQUE (name);


--
-- Name: star namestar_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT namestar_unique UNIQUE (name);


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
-- Name: tablemoto tablemoto_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tablemoto
    ADD CONSTRAINT tablemoto_pkey PRIMARY KEY (tablemoto_id);


--
-- Name: tablemoto talbe_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tablemoto
    ADD CONSTRAINT talbe_unique UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

