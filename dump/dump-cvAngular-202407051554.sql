--
-- PostgreSQL database dump
--

-- Dumped from database version 13.15 (Debian 13.15-1.pgdg120+1)
-- Dumped by pg_dump version 15.3

-- Started on 2024-07-05 15:54:30

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

DROP DATABASE "cvAngular";
--
-- TOC entry 3033 (class 1262 OID 16384)
-- Name: cvAngular; Type: DATABASE; Schema: -; Owner: david
--

CREATE DATABASE "cvAngular" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE "cvAngular" OWNER TO david;

\connect "cvAngular"

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: david
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO david;

--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: david
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 16524)
-- Name: academicexperience; Type: TABLE; Schema: public; Owner: david
--

CREATE TABLE public.academicexperience (
    _id integer NOT NULL,
    tittle character varying(255) NOT NULL,
    school character varying(255) NOT NULL,
    start_date character varying(255) NOT NULL,
    end_date character varying(255) DEFAULT 'Actualidad'::character varying,
    city character varying(255) NOT NULL,
    country character varying(255) DEFAULT 'España'::character varying NOT NULL
);


ALTER TABLE public.academicexperience OWNER TO david;

--
-- TOC entry 202 (class 1259 OID 16522)
-- Name: academicexperience__id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE public.academicexperience__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.academicexperience__id_seq OWNER TO david;

--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 202
-- Name: academicexperience__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE public.academicexperience__id_seq OWNED BY public.academicexperience._id;


--
-- TOC entry 201 (class 1259 OID 16397)
-- Name: workexperience; Type: TABLE; Schema: public; Owner: david
--

CREATE TABLE public.workexperience (
    "position" character varying(255) NOT NULL,
    company character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    country character varying(255) DEFAULT 'España'::character varying NOT NULL,
    start_date character varying(255) NOT NULL,
    end_date character varying(255) DEFAULT 'Actualidad'::character varying,
    _id integer NOT NULL,
    description character varying(255)
);


ALTER TABLE public.workexperience OWNER TO david;

--
-- TOC entry 200 (class 1259 OID 16395)
-- Name: workexperience__id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE public.workexperience__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workexperience__id_seq OWNER TO david;

--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 200
-- Name: workexperience__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE public.workexperience__id_seq OWNED BY public.workexperience._id;


--
-- TOC entry 2887 (class 2604 OID 16527)
-- Name: academicexperience _id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.academicexperience ALTER COLUMN _id SET DEFAULT nextval('public.academicexperience__id_seq'::regclass);


--
-- TOC entry 2886 (class 2604 OID 16402)
-- Name: workexperience _id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.workexperience ALTER COLUMN _id SET DEFAULT nextval('public.workexperience__id_seq'::regclass);


--
-- TOC entry 3027 (class 0 OID 16524)
-- Dependencies: 203
-- Data for Name: academicexperience; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO public.academicexperience VALUES (1, 'Técnico en electromecánica de vehiculos', 'CIFP Camino de la miranda', 'Septiembre 2004', 'Junio 2006', 'Palencia', 'España');
INSERT INTO public.academicexperience VALUES (2, 'Técnico superior desarrollo aplicaciones web', 'CIFP Camino de la miranda', 'Septiembre 2022', 'Mayo 2024', 'Palencia', 'España');


--
-- TOC entry 3025 (class 0 OID 16397)
-- Dependencies: 201
-- Data for Name: workexperience; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO public.workexperience VALUES ('Gerente', 'All for all supplies S.L.', 'Palencia ', 'España', 'Agosto 2014', 'Diciembre 2015', 3, 'Tareas realizadas: administración de la empresa, gestión de redes sociales,');
INSERT INTO public.workexperience VALUES ('Desarrollador web', 'Serbatic', 'Valladolid', 'España', 'Marzo 2024', 'Mayo 2024', 1, 'Formación en centros de trabajo 380 horas.');
INSERT INTO public.workexperience VALUES ('Operario de producción', 'Ti Fluid Systems', 'Palencia', 'España', 'Julio 2011', 'Octubre 2022', 2, 'Tareas realizadas: Programación y ajuste en CNC.');
INSERT INTO public.workexperience VALUES ('Oficial 3ª', 'Esaspro', 'Valladolid', 'España', 'Octubre 2008', 'Enero 2011', 4, 'Tareas realizadas : Funciones propias de la construcción y rehabilitación de');
INSERT INTO public.workexperience VALUES ('Oficial 3ª', 'Mécanico de automóviles', 'Palencia', 'España', 'Julio 2006', 'Octubre 2008', 5, 'Experiencia en Mecánica de automóviles Oficial de 3ª. En AUTO FFAM');


--
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 202
-- Name: academicexperience__id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('public.academicexperience__id_seq', 2, true);


--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 200
-- Name: workexperience__id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('public.workexperience__id_seq', 5, true);


--
-- TOC entry 2893 (class 2606 OID 16532)
-- Name: academicexperience academicexperience_pk; Type: CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.academicexperience
    ADD CONSTRAINT academicexperience_pk PRIMARY KEY (_id);


--
-- TOC entry 2891 (class 2606 OID 16407)
-- Name: workexperience workexperience_pk; Type: CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.workexperience
    ADD CONSTRAINT workexperience_pk PRIMARY KEY (_id);


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: david
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-07-05 15:54:30

--
-- PostgreSQL database dump complete
--

