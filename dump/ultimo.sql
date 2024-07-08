--
-- PostgreSQL database dump
--

-- Dumped from database version 13.15 (Debian 13.15-1.pgdg120+1)
-- Dumped by pg_dump version 15.3

-- Started on 2024-07-08 10:29:27

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
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: david
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO david;

--
-- TOC entry 3081 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: david
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 200 (class 1259 OID 16385)
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
-- TOC entry 201 (class 1259 OID 16393)
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
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 201
-- Name: academicexperience__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE public.academicexperience__id_seq OWNED BY public.academicexperience._id;


--
-- TOC entry 211 (class 1259 OID 16452)
-- Name: contact; Type: TABLE; Schema: public; Owner: david
--

CREATE TABLE public.contact (
    _id integer NOT NULL,
    email character varying(255) NOT NULL,
    birth_date character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    linkedln character varying(255),
    github character varying(255),
    web character varying(255),
    phone character varying(255) NOT NULL
);


ALTER TABLE public.contact OWNER TO david;

--
-- TOC entry 210 (class 1259 OID 16450)
-- Name: contact__id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE public.contact__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact__id_seq OWNER TO david;

--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 210
-- Name: contact__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE public.contact__id_seq OWNED BY public.contact._id;


--
-- TOC entry 204 (class 1259 OID 16411)
-- Name: languages; Type: TABLE; Schema: public; Owner: david
--

CREATE TABLE public.languages (
    language character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    _id integer NOT NULL
);


ALTER TABLE public.languages OWNER TO david;

--
-- TOC entry 205 (class 1259 OID 16417)
-- Name: languages__id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE public.languages__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.languages__id_seq OWNER TO david;

--
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 205
-- Name: languages__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE public.languages__id_seq OWNED BY public.languages._id;


--
-- TOC entry 209 (class 1259 OID 16441)
-- Name: skills; Type: TABLE; Schema: public; Owner: david
--

CREATE TABLE public.skills (
    _id integer NOT NULL,
    type character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    level integer
);


ALTER TABLE public.skills OWNER TO david;

--
-- TOC entry 208 (class 1259 OID 16439)
-- Name: skills__id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE public.skills__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skills__id_seq OWNER TO david;

--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 208
-- Name: skills__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE public.skills__id_seq OWNED BY public.skills._id;


--
-- TOC entry 207 (class 1259 OID 16430)
-- Name: softskills; Type: TABLE; Schema: public; Owner: david
--

CREATE TABLE public.softskills (
    _id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL
);


ALTER TABLE public.softskills OWNER TO david;

--
-- TOC entry 206 (class 1259 OID 16428)
-- Name: softskills__id_seq; Type: SEQUENCE; Schema: public; Owner: david
--

CREATE SEQUENCE public.softskills__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.softskills__id_seq OWNER TO david;

--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 206
-- Name: softskills__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE public.softskills__id_seq OWNED BY public.softskills._id;


--
-- TOC entry 202 (class 1259 OID 16395)
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
    description text
);


ALTER TABLE public.workexperience OWNER TO david;

--
-- TOC entry 203 (class 1259 OID 16403)
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
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 203
-- Name: workexperience__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: david
--

ALTER SEQUENCE public.workexperience__id_seq OWNED BY public.workexperience._id;


--
-- TOC entry 2912 (class 2604 OID 16405)
-- Name: academicexperience _id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.academicexperience ALTER COLUMN _id SET DEFAULT nextval('public.academicexperience__id_seq'::regclass);


--
-- TOC entry 2921 (class 2604 OID 16455)
-- Name: contact _id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.contact ALTER COLUMN _id SET DEFAULT nextval('public.contact__id_seq'::regclass);


--
-- TOC entry 2918 (class 2604 OID 16419)
-- Name: languages _id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.languages ALTER COLUMN _id SET DEFAULT nextval('public.languages__id_seq'::regclass);


--
-- TOC entry 2920 (class 2604 OID 16444)
-- Name: skills _id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.skills ALTER COLUMN _id SET DEFAULT nextval('public.skills__id_seq'::regclass);


--
-- TOC entry 2919 (class 2604 OID 16433)
-- Name: softskills _id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.softskills ALTER COLUMN _id SET DEFAULT nextval('public.softskills__id_seq'::regclass);


--
-- TOC entry 2917 (class 2604 OID 16406)
-- Name: workexperience _id; Type: DEFAULT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.workexperience ALTER COLUMN _id SET DEFAULT nextval('public.workexperience__id_seq'::regclass);


--
-- TOC entry 3064 (class 0 OID 16385)
-- Dependencies: 200
-- Data for Name: academicexperience; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO public.academicexperience VALUES (1, 'Técnico en electromecánica de vehiculos', 'CIFP Camino de la miranda', 'Septiembre 2004', 'Junio 2006', 'Palencia', 'España');
INSERT INTO public.academicexperience VALUES (2, 'Técnico superior desarrollo aplicaciones web', 'CIFP Camino de la miranda', 'Septiembre 2022', 'Mayo 2024', 'Palencia', 'España');


--
-- TOC entry 3075 (class 0 OID 16452)
-- Dependencies: 211
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO public.contact VALUES (1, 'david87chdz@gmail.com', '5 Agosto de 1987', 'Palencia, España', 'https://www.linkedin.com/in/david-cerezo-hernandez/', 'https://github.com/david87chdz', NULL, '634701064');


--
-- TOC entry 3068 (class 0 OID 16411)
-- Dependencies: 204
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO public.languages VALUES ('Inglés', 'Certificado de nivel intermedio B1 por la Escuela Oficial de Idiomas', 1);


--
-- TOC entry 3073 (class 0 OID 16441)
-- Dependencies: 209
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO public.skills VALUES (12, 'Tecnologías y frameworks backend', 'Spring boot', NULL);
INSERT INTO public.skills VALUES (13, 'Tecnologías y frameworks backend', 'Symfony', NULL);
INSERT INTO public.skills VALUES (14, 'Tecnologías y frameworks backend', 'Express', NULL);
INSERT INTO public.skills VALUES (15, 'Tecnologías y frameworks backend', 'NodeJS', NULL);
INSERT INTO public.skills VALUES (16, 'Tecnologías y frameworks backend', 'Doctrine', NULL);
INSERT INTO public.skills VALUES (17, 'Tecnologías y frameworks backend', 'Hibernate', NULL);
INSERT INTO public.skills VALUES (1, 'Lenguajes de programación', 'Java', NULL);
INSERT INTO public.skills VALUES (2, 'Lenguajes de programación', 'PHP', NULL);
INSERT INTO public.skills VALUES (3, 'Lenguajes de programación', 'Javascript', NULL);
INSERT INTO public.skills VALUES (4, 'Lenguajes de programación', 'Typescript', NULL);
INSERT INTO public.skills VALUES (5, 'Lenguajes de marcado y estilos', 'HTML', NULL);
INSERT INTO public.skills VALUES (6, 'Lenguajes de marcado y estilos', 'CSS', NULL);
INSERT INTO public.skills VALUES (7, 'Lenguajes de marcado y estilos', 'Saas', NULL);
INSERT INTO public.skills VALUES (8, 'Frameworks y bibliotecas frontend', 'Angular', NULL);
INSERT INTO public.skills VALUES (9, 'Frameworks y bibliotecas frontend', 'React', NULL);
INSERT INTO public.skills VALUES (10, 'Frameworks y bibliotecas frontend', 'Bootstrap', NULL);
INSERT INTO public.skills VALUES (11, 'Frameworks y bibliotecas frontend', 'Taildwind', NULL);
INSERT INTO public.skills VALUES (20, 'Bases de datos', 'MySql', NULL);
INSERT INTO public.skills VALUES (25, 'Bases de datos', 'PsgreSql', NULL);
INSERT INTO public.skills VALUES (26, 'Bases de datos', 'MongoDB', NULL);
INSERT INTO public.skills VALUES (27, 'Control de versiones', 'Git', NULL);
INSERT INTO public.skills VALUES (28, 'Control de versiones', 'GitHub', NULL);
INSERT INTO public.skills VALUES (29, 'Control de versiones', 'GitLab', NULL);
INSERT INTO public.skills VALUES (30, 'Herramientas de desarrollo', 'Docker', NULL);
INSERT INTO public.skills VALUES (31, 'Herramientas de desarrollo', 'AWS', NULL);
INSERT INTO public.skills VALUES (32, 'Herramientas de desarrollo', 'Linux', NULL);
INSERT INTO public.skills VALUES (33, 'Herramientas de desarrollo', 'Npm', NULL);
INSERT INTO public.skills VALUES (34, 'Herramientas de desarrollo', 'Composer', NULL);


--
-- TOC entry 3071 (class 0 OID 16430)
-- Dependencies: 207
-- Data for Name: softskills; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO public.softskills VALUES (1, 'Trabajo en equipo', 'Disfruto y tengo experiencia trabajando en equipo');
INSERT INTO public.softskills VALUES (2, 'Aprendizaje continuo', 'Compromiso con la actualización constante de habilidades y conocimientos');
INSERT INTO public.softskills VALUES (3, 'Resolución de problemas', 'Enfoque crítico y creativo para identificar y solucionar problemas');
INSERT INTO public.softskills VALUES (4, 'Adaptabilidad', 'Flexibilidad para adaptarme rapidamente a nuvas herremientas y tecnologías');


--
-- TOC entry 3066 (class 0 OID 16395)
-- Dependencies: 202
-- Data for Name: workexperience; Type: TABLE DATA; Schema: public; Owner: david
--

INSERT INTO public.workexperience VALUES ('Gerente', 'All for all supplies S.L.', 'Palencia ', 'España', 'Agosto 2014', 'Diciembre 2015', 13, 'Tareas realizadas: administración de la empresa, gestión de redes sociales,
preparación de pedidos, atención al cliente, compras y ventas, gestión del
almacén.
');
INSERT INTO public.workexperience VALUES ('Operario de producción', 'Ti Fluid Systems', 'Palencia', 'España', 'Julio 2011', 'Octubre 2022', 14, 'Tareas realizadas: Programación y ajuste en CNC.
Fabricación, control de calidad y verificación de productos terminados.
');
INSERT INTO public.workexperience VALUES ('Desarrollador web', 'Serbatic', 'Valladolid', 'España', 'Marzo 2024', 'Mayo 2024', 15, 'Formación en centros de trabajo 380 horas.
Tareas realizadas: Desarrollo de proyecto interno en la parte front trabajando
con Angular y en el Back con Express.
Realización de proyecto con back de Spring Boot y manejo de Docker.
Uso de bases de datos tanto relacionales (Postgres, MariaDb) y no
relacionales (MongoDb). 
Implementación de api Keycloak
');
INSERT INTO public.workexperience VALUES ('Oficial 3ª', 'Mécanico de automóviles', 'Palencia', 'España', 'Julio 2006', 'Octubre 2008', 11, 'Tareas realizadas : Funciones propias de la construcción y rehabilitación de
viviendas. Manejo de carretilla elevadora, telescópica y retroexcavadora.
');
INSERT INTO public.workexperience VALUES ('Oficial 3ª', 'Esaspro', 'Valladolid', 'España', 'Octubre 2008', 'Enero 2011', 12, 'Tareas realizadas : Funciones propias de la construcción y rehabilitación de
viviendas. Manejo de carretilla elevadora, telescópica y retroexcavadora.
');


--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 201
-- Name: academicexperience__id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('public.academicexperience__id_seq', 2, true);


--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 210
-- Name: contact__id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('public.contact__id_seq', 1, true);


--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 205
-- Name: languages__id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('public.languages__id_seq', 1, true);


--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 208
-- Name: skills__id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('public.skills__id_seq', 34, true);


--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 206
-- Name: softskills__id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('public.softskills__id_seq', 4, true);


--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 203
-- Name: workexperience__id_seq; Type: SEQUENCE SET; Schema: public; Owner: david
--

SELECT pg_catalog.setval('public.workexperience__id_seq', 15, true);


--
-- TOC entry 2923 (class 2606 OID 16408)
-- Name: academicexperience academicexperience_pk; Type: CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.academicexperience
    ADD CONSTRAINT academicexperience_pk PRIMARY KEY (_id);


--
-- TOC entry 2933 (class 2606 OID 16460)
-- Name: contact contact_pk; Type: CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pk PRIMARY KEY (_id);


--
-- TOC entry 2927 (class 2606 OID 16427)
-- Name: languages languages_pk; Type: CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_pk PRIMARY KEY (_id);


--
-- TOC entry 2931 (class 2606 OID 16449)
-- Name: skills skills_pk; Type: CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pk PRIMARY KEY (_id);


--
-- TOC entry 2929 (class 2606 OID 16438)
-- Name: softskills softskills_pk; Type: CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.softskills
    ADD CONSTRAINT softskills_pk PRIMARY KEY (_id);


--
-- TOC entry 2925 (class 2606 OID 16410)
-- Name: workexperience workexperience_pk; Type: CONSTRAINT; Schema: public; Owner: david
--

ALTER TABLE ONLY public.workexperience
    ADD CONSTRAINT workexperience_pk PRIMARY KEY (_id);


--
-- TOC entry 3082 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: david
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-07-08 10:29:27

--
-- PostgreSQL database dump complete
--

