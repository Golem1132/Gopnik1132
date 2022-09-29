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
    name character varying(255),
    galaxy_id integer NOT NULL,
    description text,
    age numeric,
    has_life boolean,
    size integer,
    important boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(255),
    age integer,
    important boolean NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(255),
    moon_id integer NOT NULL,
    description text,
    age integer,
    planet_id integer,
    size integer,
    important boolean NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(255),
    planet_id integer NOT NULL,
    description text,
    age integer,
    has_life boolean,
    star_id integer,
    size integer,
    important boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(255),
    star_id integer NOT NULL,
    description text,
    galaxy_id integer,
    size integer,
    important boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('c-123', 1, 'humans galaxy', 20, true, 10, true);
INSERT INTO public.galaxy VALUES ('b-131', 2, 'robots galaxy', 30, true, 101, true);
INSERT INTO public.galaxy VALUES ('u-12', 3, 'orcs galaxy', 40, true, 110, true);
INSERT INTO public.galaxy VALUES ('g-13', 4, 'elves galaxy', 50, true, 124, true);
INSERT INTO public.galaxy VALUES ('f-122', 5, 'war galaxy', 10, true, 120, true);
INSERT INTO public.galaxy VALUES ('e-100', 6, 'empty galaxy', 34, true, 111, false);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'light', 100, true);
INSERT INTO public.galaxy_types VALUES (2, 'darkness', 100, false);
INSERT INTO public.galaxy_types VALUES (3, 'unknown', 102, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('elo', 1, 'gray', 9, 1, 1, true);
INSERT INTO public.moon VALUES ('elio', 2, 'green', 9, 2, 1, true);
INSERT INTO public.moon VALUES ('elos', 3, 'blue', 9, 3, 1, true);
INSERT INTO public.moon VALUES ('elaos', 4, 'red', 9, 4, 1, true);
INSERT INTO public.moon VALUES ('kole', 5, 'yellow', 9, 5, 1, true);
INSERT INTO public.moon VALUES ('kolie', 6, 'magenta', 9, 6, 1, true);
INSERT INTO public.moon VALUES ('juk', 7, 'black', 9, 7, 1, true);
INSERT INTO public.moon VALUES ('nimbu', 8, 'white', 9, 8, 1, true);
INSERT INTO public.moon VALUES ('hun', 9, 'crimson red', 9, 9, 1, true);
INSERT INTO public.moon VALUES ('kazan', 10, 'violet', 9, 10, 1, true);
INSERT INTO public.moon VALUES ('kare', 11, 'purple', 9, 11, 1, true);
INSERT INTO public.moon VALUES ('hros', 12, 'opaque', 9, 12, 1, true);
INSERT INTO public.moon VALUES ('jimbo', 13, 'not defined', 9, 2, 1, true);
INSERT INTO public.moon VALUES ('lox', 14, 'data damaged', 9, 3, 1, true);
INSERT INTO public.moon VALUES ('rex', 15, 'lavalike', 9, 4, 1, true);
INSERT INTO public.moon VALUES ('ramen', 16, 'pink', 9, 5, 1, true);
INSERT INTO public.moon VALUES ('pasta', 17, 'poison green', 9, 6, 1, true);
INSERT INTO public.moon VALUES ('amyo', 18, 'silver', 9, 7, 1, true);
INSERT INTO public.moon VALUES ('samyo', 19, 'gold', 9, 8, 1, true);
INSERT INTO public.moon VALUES ('legio', 20, 'made of lead', 9, 9, 1, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('c-1000', 1, '', 10, true, 1, 2, true);
INSERT INTO public.planet VALUES ('b-133', 2, '', 10, true, 2, 2, true);
INSERT INTO public.planet VALUES ('u-13', 3, '', 10, true, 3, 2, true);
INSERT INTO public.planet VALUES ('g-14', 4, '', 10, true, 4, 2, true);
INSERT INTO public.planet VALUES ('f-126', 5, '', 10, true, 5, 2, true);
INSERT INTO public.planet VALUES ('e-10000', 6, '', 10, true, 6, 2, true);
INSERT INTO public.planet VALUES ('c-1111', 7, '', 10, true, 1, 2, true);
INSERT INTO public.planet VALUES ('b-136', 8, '', 10, true, 2, 2, true);
INSERT INTO public.planet VALUES ('u-16', 9, '', 10, true, 3, 2, true);
INSERT INTO public.planet VALUES ('g-80', 10, '', 10, true, 4, 2, true);
INSERT INTO public.planet VALUES ('f-900', 11, '', 10, true, 5, 2, true);
INSERT INTO public.planet VALUES ('e-1001', 12, '', 10, true, 6, 2, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 1, 'hot and red', 1, 20, true);
INSERT INTO public.star VALUES ('midget', 2, 'cold and small', 2, 30, true);
INSERT INTO public.star VALUES ('centaur', 3, 'hot and small', 3, 20, true);
INSERT INTO public.star VALUES ('traveler', 4, 'white and shiny', 4, 20, true);
INSERT INTO public.star VALUES ('savathun', 5, 'unknown', 5, 119, true);
INSERT INTO public.star VALUES ('oryx', 6, 'no data', 6, 100, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_galaxy_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_types_id_key UNIQUE (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

