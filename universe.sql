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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    discover_date date
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    is_spherical boolean
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
    description text,
    has_life boolean,
    planet_id integer,
    is_spherical boolean
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
    description text,
    has_life boolean,
    distance_from_earth_mkm numeric(6,2),
    star_id integer,
    is_spherical boolean
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
    description text,
    age_in_millions_of_years integer,
    galaxy_id integer,
    is_spherical boolean
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', '1801-01-01');
INSERT INTO public.asteroid VALUES (2, 'Pallas', '1802-03-28');
INSERT INTO public.asteroid VALUES (3, 'Juno', '1804-09-01');
INSERT INTO public.asteroid VALUES (4, 'Vesta', '1807-03-19');
INSERT INTO public.asteroid VALUES (5, 'Hebe', '1847-07-01');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Andromeda, also known as Messier 31 (M31), is a spiral galaxy located about 2.5 million light years away.', 10, false);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy', 'The galaxy is nicknamed the Whirlpool because of its swirling structure.', 400, false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 'The Sombrero lies at the southern edge of the rich Virgo cluster of galaxies.', 13, false);
INSERT INTO public.galaxy VALUES (5, 'Messier 63 Galaxy', 'M63, also known as the Sunflower galaxy, is one such flocculent spiral galaxy.', 13, false);
INSERT INTO public.galaxy VALUES (6, 'Messier 94 Galaxy', 'M94 is a spiral galaxy located 16 million light-years away in the constellation Canes Venatici.', 13, false);
INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', 'The Milky Way is a huge collection of stars, dust and gas. It is called a spiral galaxy because if you could view it from the top or bottom, it would look like a spinning pinwheel.', 14, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Only moon of Earth', false, 3, false);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, false, 4, false);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, false, 4, false);
INSERT INTO public.moon VALUES (4, 'Ganymede', NULL, false, 5, false);
INSERT INTO public.moon VALUES (5, 'Callisto', NULL, false, 5, false);
INSERT INTO public.moon VALUES (6, 'Io', NULL, false, 5, false);
INSERT INTO public.moon VALUES (7, 'Europa', NULL, false, 5, false);
INSERT INTO public.moon VALUES (8, 'Titan', NULL, false, 6, false);
INSERT INTO public.moon VALUES (9, 'Enceladus', NULL, false, 6, false);
INSERT INTO public.moon VALUES (10, 'Hyperion', NULL, false, 6, false);
INSERT INTO public.moon VALUES (11, 'Prometheus', NULL, false, 6, false);
INSERT INTO public.moon VALUES (12, 'Pandora', NULL, false, 6, false);
INSERT INTO public.moon VALUES (13, 'Janus', NULL, false, 6, false);
INSERT INTO public.moon VALUES (14, 'Epimetheus', NULL, false, 6, false);
INSERT INTO public.moon VALUES (15, 'Mimas', NULL, false, 6, false);
INSERT INTO public.moon VALUES (16, 'Iapetus', NULL, false, 6, false);
INSERT INTO public.moon VALUES (17, 'Phoebe', NULL, false, 6, false);
INSERT INTO public.moon VALUES (18, 'Tethys', NULL, false, 6, false);
INSERT INTO public.moon VALUES (19, 'Telesto', NULL, false, 6, false);
INSERT INTO public.moon VALUES (20, 'Miranda', NULL, false, 7, false);
INSERT INTO public.moon VALUES (21, 'Ariel', NULL, false, 7, false);
INSERT INTO public.moon VALUES (22, 'Umbriel', NULL, false, 7, false);
INSERT INTO public.moon VALUES (23, 'Titania', NULL, false, 7, false);
INSERT INTO public.moon VALUES (24, 'Oberon', NULL, false, 7, false);
INSERT INTO public.moon VALUES (25, 'Charon', NULL, false, 9, false);
INSERT INTO public.moon VALUES (26, 'Triton', NULL, false, 8, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', true, NULL, 1, true);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars is the fourth planet from the Sun.', false, 399.58, 1, false);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus is the second planet from the Sun, and Earths closest planetary neighbor.', false, 259.71, 1, false);
INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest planet in our solar system and nearest to the Sun.', false, 216.30, 1, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is the fifth planet from the Sun and the largest in the Solar System.', false, 965.52, 1, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System', false, 1652.48, 1, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus, also known as the Tilted Giant for its unique tilted rotation that makes it appear to spin on its side, is the second outermost planet in our Solar System.', false, 3154.91, 1, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is the eighth and farthest known planet from the Sun.', false, 4685.02, 1, false);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Pluto is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune.', false, 7523.53, 1, false);
INSERT INTO public.planet VALUES (10, 'Alpa Earth', NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (11, 'Canis A', NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (12, 'Cygnus Globe', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (13, 'Cancri', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (14, 'Cephus Earth', NULL, NULL, NULL, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is the star at the heart of our solar system.', 5, 1, false);
INSERT INTO public.star VALUES (2, 'Alpheratz', 'Alpheratz or Alpha Andromedae is a binary star 97 light-years from Earth and is the brightest star in the constellation of Andromeda Galaxy', NULL, 2, NULL);
INSERT INTO public.star VALUES (3, 'Canis Major', 'Canis Major is the larger of the the two hunting dogs used by Orion', NULL, 1, NULL);
INSERT INTO public.star VALUES (4, 'Cygnus ', 'Cygnus is a northern constellation on the plane of the Milky Way', NULL, 1, NULL);
INSERT INTO public.star VALUES (5, 'Carina', 'Carina contains Canopus, a white-hued supergiant that is the second-brightest star in the night sky.', NULL, 1, NULL);
INSERT INTO public.star VALUES (6, 'Cephus', 'It is shaped like a box with a triangle on top. The brightest star.', NULL, 1, NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 5, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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

