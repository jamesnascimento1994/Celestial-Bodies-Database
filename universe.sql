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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    name character varying(30) NOT NULL,
    description text,
    comet_id integer NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years numeric(6,2),
    description text,
    diameter integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    mass integer NOT NULL,
    age_in_millions_of_years numeric(6,2),
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    mass integer NOT NULL,
    age_in_millions_of_years numeric(6,2),
    description text,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    diameter integer NOT NULL,
    temperature integer NOT NULL,
    age_in_millions_of_years numeric(6,2),
    description text,
    is_spherical boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES ('Comet Hyakutake', 'passed very close to earth in 1996', 1);
INSERT INTO public.comet VALUES ('Comet Hale-Bopp', 'Most widely observed comet of the 20th century', 2);
INSERT INTO public.comet VALUES ('Comet Encke', 'A periodic comet', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('The Milky Way', 1, 13.20, 'A hazy band of light', 105700);
INSERT INTO public.galaxy VALUES ('Andromeda Galaxy', 2, 10.00, 'A barred spiral galaxy', 152000);
INSERT INTO public.galaxy VALUES ('Messier 81', 3, 12.00, 'A grand design spiral galaxy', 90000);
INSERT INTO public.galaxy VALUES ('Black Eye Galaxy', 4, 17.00, 'A relatively isolated spiral galaxy', 53800);
INSERT INTO public.galaxy VALUES ('Triangulum Galaxy', 5, 2.73, 'A spiral galaxy', 61120);
INSERT INTO public.galaxy VALUES ('Messier 82', 6, 12.00, 'A Starburst galaxy', 37000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Luna', 1, 1, 7, 4.53, 'The only natural satellite for Earth');
INSERT INTO public.moon VALUES ('Europa', 2, 3, 47998, 4.50, 'Smallest Galilean moon');
INSERT INTO public.moon VALUES ('Deimos', 3, 2, 2, 4.00, 'The smaller moon for Mars');
INSERT INTO public.moon VALUES ('Io', 4, 3, 9, 4.50, 'Third largest Galilean moon');
INSERT INTO public.moon VALUES ('Ganymede', 5, 3, 2, 4.50, 'Largest moon in the solar system');
INSERT INTO public.moon VALUES ('Callisto', 6, 3, 1, 4.50, 'Second largest moon for Jupiter');
INSERT INTO public.moon VALUES ('Phobos', 7, 2, 3, 4.00, 'The larger moon for mars');
INSERT INTO public.moon VALUES ('Triton', 8, 5, 2, 4.50, 'The largest moon of Neptune');
INSERT INTO public.moon VALUES ('Neso', 9, 5, 2, 4.50, 'Outermost satellite of Neptune');
INSERT INTO public.moon VALUES ('Proteus', 10, 5, 4, 4.50, 'Second largest Neptunian moon');
INSERT INTO public.moon VALUES ('Psamathe', 11, 5, 40, 4.50, 'A retrograde irregular satellite for Neptune');
INSERT INTO public.moon VALUES ('Naiad', 12, 5, 30, 4.50, 'Inner most satellite of Neptune');
INSERT INTO public.moon VALUES ('Titan', 13, 6, 1, 4.50, 'Largest moon of Saturn');
INSERT INTO public.moon VALUES ('Rhea', 14, 6, 2, 4.50, 'Second largest moon of Saturn');
INSERT INTO public.moon VALUES ('Enceladus', 15, 6, 1, 4.50, 'Sixth largest moon of Saturn');
INSERT INTO public.moon VALUES ('Titania', 16, 7, 3, 4.50, 'Largest moon of Uranus');
INSERT INTO public.moon VALUES ('Oberon', 17, 7, 3, 4.50, 'Second largest moon of Uranus');
INSERT INTO public.moon VALUES ('Ariel', 18, 7, 1, 4.50, 'Fourth largest moon of Uranus');
INSERT INTO public.moon VALUES ('Umbriel', 19, 7, 8373000, 4.50, 'Second heavily most crated moon of Uranus');
INSERT INTO public.moon VALUES ('Miranda', 20, 7, 6, 4.50, 'Smallest satellite of Uranus');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 7, 6, 4.54, 'Third planet from the sun', true);
INSERT INTO public.planet VALUES ('Mars', 2, 7, 6, 4.60, 'Fourth planet from the sun', false);
INSERT INTO public.planet VALUES ('Jupiter', 3, 7, 2, 4.60, 'Fith planet from the sun and largest', false);
INSERT INTO public.planet VALUES ('Venus', 4, 7, 5, 4.50, 'Second planet from the sun', false);
INSERT INTO public.planet VALUES ('Neptune', 5, 7, 1, 4.50, 'Eighth planet from the sun', false);
INSERT INTO public.planet VALUES ('Saturn', 6, 7, 6, 4.50, 'Sixth planet from the sun', false);
INSERT INTO public.planet VALUES ('Uranus', 7, 7, 9, 4.50, 'Seventh planet from the sun', false);
INSERT INTO public.planet VALUES ('Mercury', 8, 7, 3, 4.50, 'Closest planet to the sun', false);
INSERT INTO public.planet VALUES ('Pluto', 9, 7, 1, 4.60, 'Once labeled as the planet from the sun. Has been called a dwarf planet since 2006', false);
INSERT INTO public.planet VALUES ('b', 10, 8, 1, 2.00, 'closest to Kepler 90', false);
INSERT INTO public.planet VALUES ('c', 11, 8, 1, 2.00, 'second planet from Kepler 90', false);
INSERT INTO public.planet VALUES ('i', 12, 8, 1, 2.00, 'Third planet from Kepler 90', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sirius', 1, 1, 2, 9940, 300.00, 'Brightest star in the night sky', true);
INSERT INTO public.star VALUES ('Canopus', 2, 1, 23, 6900, 310.00, 'Second brightest star in the night sky', true);
INSERT INTO public.star VALUES ('Adhil', 3, 2, 20, 4656, 23.00, 'A solitary star', true);
INSERT INTO public.star VALUES ('Alpheratz', 4, 2, 6, 13800, 97.00, 'A solitary star', true);
INSERT INTO public.star VALUES ('Beta Trianguli', 5, 5, 3124295, 8658, 124.24, 'Brightest star in Triangulum', true);
INSERT INTO public.star VALUES ('Methuselah', 6, 5, 2173833, 7500, 2.60, 'A yellow subgiant', true);
INSERT INTO public.star VALUES ('The sun', 7, 1, 695000, 2, 4.60, 'Star at the center of the solar system', true);
INSERT INTO public.star VALUES ('Kepler 90', 8, 1, 2, 6080, 2.00, 'F-Type star', true);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: comet fk_comet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT fk_comet UNIQUE (comet_id);


--
-- Name: galaxy fk_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_galaxy UNIQUE (galaxy_id);


--
-- Name: moon fk_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon UNIQUE (moon_id);


--
-- Name: planet fk_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet UNIQUE (planet_id);


--
-- Name: star fk_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star UNIQUE (star_id);


--
-- Name: galaxy galaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pk PRIMARY KEY (galaxy_id);


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