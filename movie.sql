--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Debian 16.0-1.pgdg120+1)
-- Dumped by pg_dump version 16.0

-- Started on 2023-11-07 16:04:50

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
-- TOC entry 215 (class 1259 OID 16389)
-- Name: movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie (
    id character varying NOT NULL,
    title character varying(50),
    duration smallint,
    released date
);


ALTER TABLE public.movie OWNER TO postgres;

--
-- TOC entry 3347 (class 0 OID 16389)
-- Dependencies: 215
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie (id, title, duration, released) FROM stdin;
12345678-1234-5678-1234-567812345678	Gladiador	120	2001-01-15
7fd2b2ec-88e0-4494-b238-5a9103beb1a7	Spider Man	135	2003-03-21
8b6658fc-1ccd-4753-b832-175b751c421e	Batman	132	2006-03-21
c0bc37ba-bd26-48ce-b73b-6f536e2d1246	La Monja	155	2015-06-30
\.


--
-- TOC entry 3203 (class 2606 OID 24636)
-- Name: movie movie_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pk PRIMARY KEY (id);


-- Completed on 2023-11-07 16:04:50

--
-- PostgreSQL database dump complete
--

