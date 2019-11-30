--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1 (Debian 12.1-1.pgdg100+1)
-- Dumped by pg_dump version 12.1 (Debian 12.1-1.pgdg100+1)

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
-- Name: tb_adm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_adm (
    id integer NOT NULL,
    extra_hours double precision NOT NULL,
    employee integer NOT NULL
);


ALTER TABLE public.tb_adm OWNER TO postgres;

--
-- Name: tb_adm_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_adm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_adm_id_seq OWNER TO postgres;

--
-- Name: tb_adm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_adm_id_seq OWNED BY public.tb_adm.id;


--
-- Name: tb_dev; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_dev (
    id integer NOT NULL,
    lines_of_code integer NOT NULL,
    employee integer NOT NULL
);


ALTER TABLE public.tb_dev OWNER TO postgres;

--
-- Name: tb_dev_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_dev_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_dev_id_seq OWNER TO postgres;

--
-- Name: tb_dev_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_dev_id_seq OWNED BY public.tb_dev.id;


--
-- Name: tb_employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_employees (
    id integer NOT NULL,
    salary double precision NOT NULL
);


ALTER TABLE public.tb_employees OWNER TO postgres;

--
-- Name: tb_employees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_employees_id_seq OWNER TO postgres;

--
-- Name: tb_employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_employees_id_seq OWNED BY public.tb_employees.id;


--
-- Name: tb_problems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_problems (
    id integer NOT NULL,
    user_id integer,
    subject character varying,
    message character varying
);


ALTER TABLE public.tb_problems OWNER TO postgres;

--
-- Name: tb_problems_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_problems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_problems_id_seq OWNER TO postgres;

--
-- Name: tb_problems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_problems_id_seq OWNED BY public.tb_problems.id;


--
-- Name: tb_profiles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_profiles (
    id integer NOT NULL,
    user_id integer,
    photo character varying,
    site character varying
);


ALTER TABLE public.tb_profiles OWNER TO postgres;

--
-- Name: tb_profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_profiles_id_seq OWNER TO postgres;

--
-- Name: tb_profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_profiles_id_seq OWNED BY public.tb_profiles.id;


--
-- Name: tb_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_users (
    id integer NOT NULL,
    name character varying,
    email character varying,
    age integer
);


ALTER TABLE public.tb_users OWNER TO postgres;

--
-- Name: tb_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_users_id_seq OWNER TO postgres;

--
-- Name: tb_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_users_id_seq OWNED BY public.tb_users.id;


--
-- Name: tb_vendor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_vendor (
    id integer NOT NULL,
    sells integer NOT NULL,
    employee integer NOT NULL
);


ALTER TABLE public.tb_vendor OWNER TO postgres;

--
-- Name: tb_vendor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_vendor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_vendor_id_seq OWNER TO postgres;

--
-- Name: tb_vendor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_vendor_id_seq OWNED BY public.tb_vendor.id;


--
-- Name: tb_adm id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_adm ALTER COLUMN id SET DEFAULT nextval('public.tb_adm_id_seq'::regclass);


--
-- Name: tb_dev id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_dev ALTER COLUMN id SET DEFAULT nextval('public.tb_dev_id_seq'::regclass);


--
-- Name: tb_employees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_employees ALTER COLUMN id SET DEFAULT nextval('public.tb_employees_id_seq'::regclass);


--
-- Name: tb_problems id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_problems ALTER COLUMN id SET DEFAULT nextval('public.tb_problems_id_seq'::regclass);


--
-- Name: tb_profiles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_profiles ALTER COLUMN id SET DEFAULT nextval('public.tb_profiles_id_seq'::regclass);


--
-- Name: tb_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_users ALTER COLUMN id SET DEFAULT nextval('public.tb_users_id_seq'::regclass);


--
-- Name: tb_vendor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_vendor ALTER COLUMN id SET DEFAULT nextval('public.tb_vendor_id_seq'::regclass);


--
-- Data for Name: tb_adm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_adm (id, extra_hours, employee) FROM stdin;
\.


--
-- Data for Name: tb_dev; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_dev (id, lines_of_code, employee) FROM stdin;
3	1000	7
\.


--
-- Data for Name: tb_employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_employees (id, salary) FROM stdin;
1	5000
2	5000
3	5000
4	5000
5	5000
6	5000
7	5000
\.


--
-- Data for Name: tb_problems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_problems (id, user_id, subject, message) FROM stdin;
1	1	Subject 0	ok
2	1	Subject 0	ok
3	1	Subject 1	ok
4	1	Subject 1	ok
5	1	Subject 2	ok
6	1	Subject 2	ok
7	1	Subject 3	ok
8	1	Subject 3	ok
9	1	Subject 4	ok
10	1	Subject 4	ok
11	1	Subject 5	ok
12	1	Subject 5	ok
13	1	Subject 6	ok
14	1	Subject 6	ok
15	1	Subject 7	ok
16	1	Subject 7	ok
17	1	Subject 8	ok
18	1	Subject 8	ok
19	1	Subject 9	ok
20	1	Subject 9	ok
\.


--
-- Data for Name: tb_profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_profiles (id, user_id, photo, site) FROM stdin;
1	1	https://avatars1.githubusercontent.com/u/13923301?s=400&v=4	lucas.com.br
\.


--
-- Data for Name: tb_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_users (id, name, email, age) FROM stdin;
1	Lucas Ricciardi de Salles	lucas.salles@4linux.com.br	26
\.


--
-- Data for Name: tb_vendor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_vendor (id, sells, employee) FROM stdin;
\.


--
-- Name: tb_adm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_adm_id_seq', 1, false);


--
-- Name: tb_dev_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_dev_id_seq', 3, true);


--
-- Name: tb_employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_employees_id_seq', 7, true);


--
-- Name: tb_problems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_problems_id_seq', 20, true);


--
-- Name: tb_profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_profiles_id_seq', 5, true);


--
-- Name: tb_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_users_id_seq', 1, true);


--
-- Name: tb_vendor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_vendor_id_seq', 1, false);


--
-- Name: tb_adm tb_adm_employee_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_adm
    ADD CONSTRAINT tb_adm_employee_key UNIQUE (employee);


--
-- Name: tb_adm tb_adm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_adm
    ADD CONSTRAINT tb_adm_pkey PRIMARY KEY (id);


--
-- Name: tb_dev tb_dev_employee_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_dev
    ADD CONSTRAINT tb_dev_employee_key UNIQUE (employee);


--
-- Name: tb_dev tb_dev_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_dev
    ADD CONSTRAINT tb_dev_pkey PRIMARY KEY (id);


--
-- Name: tb_employees tb_employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_employees
    ADD CONSTRAINT tb_employees_pkey PRIMARY KEY (id);


--
-- Name: tb_problems tb_problems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_problems
    ADD CONSTRAINT tb_problems_pkey PRIMARY KEY (id);


--
-- Name: tb_profiles tb_profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_profiles
    ADD CONSTRAINT tb_profiles_pkey PRIMARY KEY (id);


--
-- Name: tb_profiles tb_profiles_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_profiles
    ADD CONSTRAINT tb_profiles_user_id_key UNIQUE (user_id);


--
-- Name: tb_users tb_users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_users
    ADD CONSTRAINT tb_users_email_key UNIQUE (email);


--
-- Name: tb_users tb_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_users
    ADD CONSTRAINT tb_users_pkey PRIMARY KEY (id);


--
-- Name: tb_vendor tb_vendor_employee_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_vendor
    ADD CONSTRAINT tb_vendor_employee_key UNIQUE (employee);


--
-- Name: tb_vendor tb_vendor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_vendor
    ADD CONSTRAINT tb_vendor_pkey PRIMARY KEY (id);


--
-- Name: tb_adm tb_adm_employee_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_adm
    ADD CONSTRAINT tb_adm_employee_fkey FOREIGN KEY (employee) REFERENCES public.tb_employees(id);


--
-- Name: tb_dev tb_dev_employee_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_dev
    ADD CONSTRAINT tb_dev_employee_fkey FOREIGN KEY (employee) REFERENCES public.tb_employees(id);


--
-- Name: tb_problems tb_problems_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_problems
    ADD CONSTRAINT tb_problems_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.tb_users(id);


--
-- Name: tb_profiles tb_profiles_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_profiles
    ADD CONSTRAINT tb_profiles_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.tb_users(id);


--
-- Name: tb_vendor tb_vendor_employee_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_vendor
    ADD CONSTRAINT tb_vendor_employee_fkey FOREIGN KEY (employee) REFERENCES public.tb_employees(id);


--
-- PostgreSQL database dump complete
--

