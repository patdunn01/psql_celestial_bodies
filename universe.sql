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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    total_planets integer,
    light_years_from_earth integer,
    age_years integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: joined_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.joined_table (
    joined_table_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    my_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.joined_table OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    has_life boolean,
    planet_id integer NOT NULL,
    diameter_miles integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    total_moons integer,
    miles_from_sun numeric NOT NULL,
    color text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    size integer,
    planets integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'andromeda', 2, 2537, 124450);
INSERT INTO public.galaxy VALUES (1, 'milky way', 7, 0, 124450);
INSERT INTO public.galaxy VALUES (3, 'zxy', 56, 3490002, 12324);
INSERT INTO public.galaxy VALUES (4, 'tuv', 560, 390002, 1222324);
INSERT INTO public.galaxy VALUES (5, 'tdwdquv', 260, 3911242, 168324);
INSERT INTO public.galaxy VALUES (6, 'second', 26, 324692, 168783124);


--
-- Data for Name: joined_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.joined_table VALUES (1, 2, 3, NULL);
INSERT INTO public.joined_table VALUES (4, 5, 6, NULL);
INSERT INTO public.joined_table VALUES (7, 8, 9, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'the moon', false, 3, NULL);
INSERT INTO public.moon VALUES (2, 'io', false, 5, 2264);
INSERT INTO public.moon VALUES (3, 'europa', false, 5, 1940);
INSERT INTO public.moon VALUES (4, 'ganymede', false, 5, 3270);
INSERT INTO public.moon VALUES (5, 'callisto', false, 5, 2904);
INSERT INTO public.moon VALUES (6, 'amalthea', false, 5, 121);
INSERT INTO public.moon VALUES (7, 'himalia', false, 5, 109);
INSERT INTO public.moon VALUES (8, 'elara', false, 5, 50);
INSERT INTO public.moon VALUES (9, 'lysithea', false, 5, 18);
INSERT INTO public.moon VALUES (10, 'sinope', false, 5, 22);
INSERT INTO public.moon VALUES (11, 'pasiphae', false, 5, 60);
INSERT INTO public.moon VALUES (12, 'carme', false, 5, 28);
INSERT INTO public.moon VALUES (13, 'ananke', false, 5, 16);
INSERT INTO public.moon VALUES (14, 'leda', false, 5, 6);
INSERT INTO public.moon VALUES (15, 'thebe', false, 5, 68);
INSERT INTO public.moon VALUES (16, 'adrastea', false, 5, 12);
INSERT INTO public.moon VALUES (17, 'metis', false, 5, 23);
INSERT INTO public.moon VALUES (18, 'themisto', false, 5, 5);
INSERT INTO public.moon VALUES (19, 'pats moon', true, 5, 2);
INSERT INTO public.moon VALUES (20, 'annas moon', true, 5, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'earth', 1, 93000000, 'green & blue', true, 1);
INSERT INTO public.planet VALUES (1, 'Mercury', 0, 36000000, 'gray', false, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 2, 142000000, 'red', false, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 0, 67000000, 'yellow', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 79, 484000000, 'red', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 83, 866000000, 'blue/green', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 27, 1800000000, 'blue/green', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 14, 2700000000, 'blue/green', false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 5, 26600000000, 'red/brown', false, 1);
INSERT INTO public.planet VALUES (10, 'Lumina Prime', 2, 266000000, 'red/brown', false, 1);
INSERT INTO public.planet VALUES (11, 'Verdant Haven', 5, 237000000, 'purple', false, 1);
INSERT INTO public.planet VALUES (12, 'Aurora Nova', 1, 297000000, 'blue/green', false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'the sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'My star', 2, 3246, 14);
INSERT INTO public.star VALUES (5, 'Your star', 2, 36, 134);
INSERT INTO public.star VALUES (6, 'His star', 4, 93, 234);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: joined_table joined_table_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.joined_table
    ADD CONSTRAINT joined_table_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: joined_table joined_table_my_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.joined_table
    ADD CONSTRAINT joined_table_my_id_key UNIQUE (my_id);


--
-- Name: joined_table joined_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.joined_table
    ADD CONSTRAINT joined_table_pkey PRIMARY KEY (joined_table_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

