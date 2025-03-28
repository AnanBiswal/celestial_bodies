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
-- Name: universe; Type: DATABASE; Schema: -; Owner: anan
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO anan;

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
-- Name: extra; Type: TABLE; Schema: public; Owner: anan
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(20) NOT NULL,
    is_valid boolean NOT NULL,
    info text,
    no_point integer,
    random integer,
    mark numeric(3,1),
    is_funny boolean,
    planet_id integer
);


ALTER TABLE public.extra OWNER TO anan;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: anan
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO anan;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anan
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: anan
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth_in_light_years numeric(3,1) NOT NULL,
    mass integer,
    age integer,
    has_life boolean,
    is_spherical boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO anan;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: anan
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO anan;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anan
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: anan
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth_in_light_years numeric(3,1) NOT NULL,
    mass integer,
    age integer,
    has_life boolean,
    is_spherical boolean,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO anan;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: anan
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO anan;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anan
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: anan
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth_in_light_years numeric(3,1) NOT NULL,
    mass integer,
    age integer,
    has_life boolean,
    is_spherical boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO anan;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: anan
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO anan;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anan
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: anan
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth_in_light_years numeric(3,1) NOT NULL,
    mass integer,
    age integer,
    has_life boolean,
    is_spherical boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO anan;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: anan
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO anan;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anan
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: anan
--

INSERT INTO public.extra VALUES (1, 'a', true, 'none', 1, 1, 1.1, true, 1);
INSERT INTO public.extra VALUES (2, 'b', false, 'none', 1, 1, 1.1, false, 2);
INSERT INTO public.extra VALUES (3, 'c', true, 'none', 1, 1, 1.1, true, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: anan
--

INSERT INTO public.galaxy VALUES (1, 'Milkyway', 0.0, 10000, 10000, true, false, 'our galaxy');
INSERT INTO public.galaxy VALUES (2, 'a', 1.0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'b', 2.0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'c', 3.0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'd', 1.0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'e', 1.0, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: anan
--

INSERT INTO public.moon VALUES (1, 'moon', 0.0, 10, 10, false, true, 'our moon', 1);
INSERT INTO public.moon VALUES (2, 'a', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'b', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, 'c', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'd', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, 'e', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'f', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, 'g', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (9, 'h', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (10, 'i', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (11, 'j', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (12, 'k', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (13, 'l', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (14, 'm', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'n', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (16, 'o', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (17, 'p', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (18, 'q', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (19, 'r', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (20, 's', 1.0, NULL, NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: anan
--

INSERT INTO public.planet VALUES (1, 'earth', 0.0, 100, 100, true, true, 'home', 1);
INSERT INTO public.planet VALUES (2, 'a', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'b', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'c', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'd', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (6, 'e', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (7, 'f', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (8, 'g', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'h', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'i', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'j', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (12, 'k', 1.0, NULL, NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: anan
--

INSERT INTO public.star VALUES (2, 'a', 1.0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'b', 1.0, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'c', 1.0, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'd', 1.0, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'e', 1.0, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (1, 'Sun', 0.0, 1000, 1000, false, true, 'our star', 1);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anan
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anan
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anan
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anan
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anan
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: extra extra_name_key; Type: CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_name_key UNIQUE (name);


--
-- Name: extra extra_obj_name_key; Type: CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_obj_name_key UNIQUE (name);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: extra extra_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: anan
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

