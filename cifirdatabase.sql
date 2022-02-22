--
-- PostgreSQL database dump
--

-- Dumped from database version 13.6
-- Dumped by pg_dump version 13.6

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
-- Name: Book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Book" (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    book_author character varying(250) NOT NULL,
    cover character varying(100) NOT NULL,
    file character varying(100) NOT NULL,
    "isFavorite" boolean NOT NULL,
    "isHaveRead" boolean NOT NULL,
    "isToRead" boolean NOT NULL,
    "isAddedToCol" boolean NOT NULL,
    "isDeleted" boolean NOT NULL
);


ALTER TABLE public."Book" OWNER TO postgres;

--
-- Name: Book_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Book_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Book_id_seq" OWNER TO postgres;

--
-- Name: Book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Book_id_seq" OWNED BY public."Book".id;


--
-- Name: Book_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Book_user" (
    id integer NOT NULL,
    book_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public."Book_user" OWNER TO postgres;

--
-- Name: Book_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Book_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Book_user_id_seq" OWNER TO postgres;

--
-- Name: Book_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Book_user_id_seq" OWNED BY public."Book_user".id;


--
-- Name: Bookmark; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Bookmark" (
    id integer NOT NULL,
    bookpage character varying(250) NOT NULL,
    page_index character varying(250) NOT NULL,
    is_removed boolean NOT NULL
);


ALTER TABLE public."Bookmark" OWNER TO postgres;

--
-- Name: Bookmark_book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Bookmark_book" (
    id integer NOT NULL,
    bookmark_id integer NOT NULL,
    book_id integer NOT NULL
);


ALTER TABLE public."Bookmark_book" OWNER TO postgres;

--
-- Name: Bookmark_book_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Bookmark_book_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Bookmark_book_id_seq" OWNER TO postgres;

--
-- Name: Bookmark_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Bookmark_book_id_seq" OWNED BY public."Bookmark_book".id;


--
-- Name: Bookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Bookmark_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Bookmark_id_seq" OWNER TO postgres;

--
-- Name: Bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Bookmark_id_seq" OWNED BY public."Bookmark".id;


--
-- Name: Catalog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Catalog" (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    link character varying(250) NOT NULL,
    description character varying(250) NOT NULL,
    cover character varying(250) NOT NULL,
    "defaultUsername" character varying(150) NOT NULL,
    "defaultPassword" character varying(100) NOT NULL,
    count integer NOT NULL
);


ALTER TABLE public."Catalog" OWNER TO postgres;

--
-- Name: Catalog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Catalog_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Catalog_id_seq" OWNER TO postgres;

--
-- Name: Catalog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Catalog_id_seq" OWNED BY public."Catalog".id;


--
-- Name: Collection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Collection" (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    "isDeleted" boolean NOT NULL
);


ALTER TABLE public."Collection" OWNER TO postgres;

--
-- Name: Collection_book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Collection_book" (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    book_id integer NOT NULL
);


ALTER TABLE public."Collection_book" OWNER TO postgres;

--
-- Name: Collection_book_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Collection_book_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Collection_book_id_seq" OWNER TO postgres;

--
-- Name: Collection_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Collection_book_id_seq" OWNED BY public."Collection_book".id;


--
-- Name: Collection_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Collection_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Collection_id_seq" OWNER TO postgres;

--
-- Name: Collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Collection_id_seq" OWNED BY public."Collection".id;


--
-- Name: Collection_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Collection_user" (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public."Collection_user" OWNER TO postgres;

--
-- Name: Collection_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Collection_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Collection_user_id_seq" OWNER TO postgres;

--
-- Name: Collection_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Collection_user_id_seq" OWNED BY public."Collection_user".id;


--
-- Name: Note; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Note" (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    content character varying(250) NOT NULL,
    book_id integer
);


ALTER TABLE public."Note" OWNER TO postgres;

--
-- Name: Note_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Note_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Note_id_seq" OWNER TO postgres;

--
-- Name: Note_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Note_id_seq" OWNED BY public."Note".id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: Book id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Book" ALTER COLUMN id SET DEFAULT nextval('public."Book_id_seq"'::regclass);


--
-- Name: Book_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Book_user" ALTER COLUMN id SET DEFAULT nextval('public."Book_user_id_seq"'::regclass);


--
-- Name: Bookmark id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Bookmark" ALTER COLUMN id SET DEFAULT nextval('public."Bookmark_id_seq"'::regclass);


--
-- Name: Bookmark_book id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Bookmark_book" ALTER COLUMN id SET DEFAULT nextval('public."Bookmark_book_id_seq"'::regclass);


--
-- Name: Catalog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Catalog" ALTER COLUMN id SET DEFAULT nextval('public."Catalog_id_seq"'::regclass);


--
-- Name: Collection id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Collection" ALTER COLUMN id SET DEFAULT nextval('public."Collection_id_seq"'::regclass);


--
-- Name: Collection_book id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Collection_book" ALTER COLUMN id SET DEFAULT nextval('public."Collection_book_id_seq"'::regclass);


--
-- Name: Collection_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Collection_user" ALTER COLUMN id SET DEFAULT nextval('public."Collection_user_id_seq"'::regclass);


--
-- Name: Note id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Note" ALTER COLUMN id SET DEFAULT nextval('public."Note_id_seq"'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: Book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Book" (id, title, book_author, cover, file, "isFavorite", "isHaveRead", "isToRead", "isAddedToCol", "isDeleted") FROM stdin;
\.


--
-- Data for Name: Book_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Book_user" (id, book_id, user_id) FROM stdin;
\.


--
-- Data for Name: Bookmark; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Bookmark" (id, bookpage, page_index, is_removed) FROM stdin;
\.


--
-- Data for Name: Bookmark_book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Bookmark_book" (id, bookmark_id, book_id) FROM stdin;
\.


--
-- Data for Name: Catalog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Catalog" (id, name, link, description, cover, "defaultUsername", "defaultPassword", count) FROM stdin;
\.


--
-- Data for Name: Collection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Collection" (id, name, "isDeleted") FROM stdin;
\.


--
-- Data for Name: Collection_book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Collection_book" (id, collection_id, book_id) FROM stdin;
\.


--
-- Data for Name: Collection_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Collection_user" (id, collection_id, user_id) FROM stdin;
\.


--
-- Data for Name: Note; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Note" (id, title, content, book_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add auth user	1	add_authuser
2	Can change auth user	1	change_authuser
3	Can delete auth user	1	delete_authuser
4	Can view auth user	1	view_authuser
5	Can add book	2	add_book
6	Can change book	2	change_book
7	Can delete book	2	delete_book
8	Can view book	2	view_book
9	Can add catalog	3	add_catalog
10	Can change catalog	3	change_catalog
11	Can delete catalog	3	delete_catalog
12	Can view catalog	3	view_catalog
13	Can add note	4	add_note
14	Can change note	4	change_note
15	Can delete note	4	delete_note
16	Can view note	4	view_note
17	Can add collection	5	add_collection
18	Can change collection	5	change_collection
19	Can delete collection	5	delete_collection
20	Can view collection	5	view_collection
21	Can add bookmark	6	add_bookmark
22	Can change bookmark	6	change_bookmark
23	Can delete bookmark	6	delete_bookmark
24	Can view bookmark	6	view_bookmark
25	Can add log entry	7	add_logentry
26	Can change log entry	7	change_logentry
27	Can delete log entry	7	delete_logentry
28	Can view log entry	7	view_logentry
29	Can add permission	8	add_permission
30	Can change permission	8	change_permission
31	Can delete permission	8	delete_permission
32	Can view permission	8	view_permission
33	Can add group	9	add_group
34	Can change group	9	change_group
35	Can delete group	9	delete_group
36	Can view group	9	view_group
37	Can add user	10	add_user
38	Can change user	10	change_user
39	Can delete user	10	delete_user
40	Can view user	10	view_user
41	Can add content type	11	add_contenttype
42	Can change content type	11	change_contenttype
43	Can delete content type	11	delete_contenttype
44	Can view content type	11	view_contenttype
45	Can add session	12	add_session
46	Can change session	12	change_session
47	Can delete session	12	delete_session
48	Can view session	12	view_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$QvinNoqRBOju$8LJblTbaZTffalorqoEDzHuY21NkvGP1Fu4VLBixS+Q=	\N	f	dawsonbryce.sanchez	Dawson Bryce	Sanchez	dawsonbryce.sanchez@cit.edu	t	t	2022-02-20 04:03:10.675995+08
2	pbkdf2_sha256$216000$74cfckp7oEA0$+pWLq9yBwJGirHHgD6yK7GIj4kcfGQwDxCZ5c+1M6pc=	\N	f	leamor.garcia	Leamor	Garcia	leamor.garcia@cit.edu	t	t	2022-02-20 04:03:11.643991+08
3	pbkdf2_sha256$216000$wN1joYvSbFTu$8rjU65Z6dqgAIJXBzIJDMnaxPcxH6VOkz5J15Zm0V9E=	\N	f	jeanne.regalado	Jeanne	Regalado	jeanne.regalado@cit.edu	t	t	2022-02-20 04:03:12.226991+08
4	pbkdf2_sha256$216000$sPPVmvVhX8oz$lGvtDGo06uKbMbyzn4bnPlU/PwblUo1iS6HY9LxAolg=	\N	f	zarina.zaragoza	Zarina	Zaragoza	zarina.zaragoza@cit.edu	t	t	2022-02-20 04:03:12.64499+08
5	pbkdf2_sha256$216000$GOqHSkJ3lp9y$qxohCE4u0BtoXg4XeFyTOnHQFHx8fkjSEks5pQtK18s=	\N	f	dianeisabelle.lambojo	Diane Isabelle	Lambojo	dianeisabelle.lambojo@cit.edu	t	t	2022-02-20 04:03:13.082989+08
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	cifir	authuser
2	cifir	book
3	cifir	catalog
4	cifir	note
5	cifir	collection
6	cifir	bookmark
7	admin	logentry
8	auth	permission
9	auth	group
10	auth	user
11	contenttypes	contenttype
12	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-02-20 03:45:09.781085+08
2	auth	0001_initial	2022-02-20 03:45:10.594021+08
3	admin	0001_initial	2022-02-20 03:45:11.877025+08
4	admin	0002_logentry_remove_auto_add	2022-02-20 03:45:12.009017+08
5	admin	0003_logentry_add_action_flag_choices	2022-02-20 03:45:12.036018+08
6	contenttypes	0002_remove_content_type_name	2022-02-20 03:45:12.201246+08
7	auth	0002_alter_permission_name_max_length	2022-02-20 03:45:12.232504+08
8	auth	0003_alter_user_email_max_length	2022-02-20 03:45:12.257495+08
9	auth	0004_alter_user_username_opts	2022-02-20 03:45:12.286597+08
10	auth	0005_alter_user_last_login_null	2022-02-20 03:45:12.317639+08
11	auth	0006_require_contenttypes_0002	2022-02-20 03:45:12.325607+08
12	auth	0007_alter_validators_add_error_messages	2022-02-20 03:45:12.352592+08
13	auth	0008_alter_user_username_max_length	2022-02-20 03:45:12.496898+08
14	auth	0009_alter_user_last_name_max_length	2022-02-20 03:45:12.522857+08
15	auth	0010_alter_group_name_max_length	2022-02-20 03:45:12.550681+08
16	auth	0011_update_proxy_permissions	2022-02-20 03:45:12.576682+08
17	auth	0012_alter_user_first_name_max_length	2022-02-20 03:45:12.603679+08
18	cifir	0001_initial	2022-02-20 03:45:13.56828+08
19	sessions	0001_initial	2022-02-20 03:45:14.642845+08
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Name: Book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Book_id_seq"', 1, false);


--
-- Name: Book_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Book_user_id_seq"', 1, false);


--
-- Name: Bookmark_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Bookmark_book_id_seq"', 1, false);


--
-- Name: Bookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Bookmark_id_seq"', 1, false);


--
-- Name: Catalog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Catalog_id_seq"', 1, false);


--
-- Name: Collection_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Collection_book_id_seq"', 1, false);


--
-- Name: Collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Collection_id_seq"', 1, false);


--
-- Name: Collection_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Collection_user_id_seq"', 1, false);


--
-- Name: Note_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Note_id_seq"', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 5, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: Book Book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Book"
    ADD CONSTRAINT "Book_pkey" PRIMARY KEY (id);


--
-- Name: Book_user Book_user_book_id_user_id_54802a7e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Book_user"
    ADD CONSTRAINT "Book_user_book_id_user_id_54802a7e_uniq" UNIQUE (book_id, user_id);


--
-- Name: Book_user Book_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Book_user"
    ADD CONSTRAINT "Book_user_pkey" PRIMARY KEY (id);


--
-- Name: Bookmark_book Bookmark_book_bookmark_id_book_id_f32861e4_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Bookmark_book"
    ADD CONSTRAINT "Bookmark_book_bookmark_id_book_id_f32861e4_uniq" UNIQUE (bookmark_id, book_id);


--
-- Name: Bookmark_book Bookmark_book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Bookmark_book"
    ADD CONSTRAINT "Bookmark_book_pkey" PRIMARY KEY (id);


--
-- Name: Bookmark Bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Bookmark"
    ADD CONSTRAINT "Bookmark_pkey" PRIMARY KEY (id);


--
-- Name: Catalog Catalog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Catalog"
    ADD CONSTRAINT "Catalog_pkey" PRIMARY KEY (id);


--
-- Name: Collection_book Collection_book_collection_id_book_id_84d0285b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Collection_book"
    ADD CONSTRAINT "Collection_book_collection_id_book_id_84d0285b_uniq" UNIQUE (collection_id, book_id);


--
-- Name: Collection_book Collection_book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Collection_book"
    ADD CONSTRAINT "Collection_book_pkey" PRIMARY KEY (id);


--
-- Name: Collection Collection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Collection"
    ADD CONSTRAINT "Collection_pkey" PRIMARY KEY (id);


--
-- Name: Collection_user Collection_user_collection_id_user_id_c3b7d478_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Collection_user"
    ADD CONSTRAINT "Collection_user_collection_id_user_id_c3b7d478_uniq" UNIQUE (collection_id, user_id);


--
-- Name: Collection_user Collection_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Collection_user"
    ADD CONSTRAINT "Collection_user_pkey" PRIMARY KEY (id);


--
-- Name: Note Note_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Note"
    ADD CONSTRAINT "Note_pkey" PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: Book_user_book_id_d75b401d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Book_user_book_id_d75b401d" ON public."Book_user" USING btree (book_id);


--
-- Name: Book_user_user_id_b670215e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Book_user_user_id_b670215e" ON public."Book_user" USING btree (user_id);


--
-- Name: Bookmark_book_book_id_edc98c5e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Bookmark_book_book_id_edc98c5e" ON public."Bookmark_book" USING btree (book_id);


--
-- Name: Bookmark_book_bookmark_id_bb5b96bb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Bookmark_book_bookmark_id_bb5b96bb" ON public."Bookmark_book" USING btree (bookmark_id);


--
-- Name: Collection_book_book_id_cb5fbda8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Collection_book_book_id_cb5fbda8" ON public."Collection_book" USING btree (book_id);


--
-- Name: Collection_book_collection_id_5420efb3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Collection_book_collection_id_5420efb3" ON public."Collection_book" USING btree (collection_id);


--
-- Name: Collection_user_collection_id_392c204b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Collection_user_collection_id_392c204b" ON public."Collection_user" USING btree (collection_id);


--
-- Name: Collection_user_user_id_db2d8d96; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Collection_user_user_id_db2d8d96" ON public."Collection_user" USING btree (user_id);


--
-- Name: Note_book_id_bd8e1c87; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Note_book_id_bd8e1c87" ON public."Note" USING btree (book_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: Book_user Book_user_book_id_d75b401d_fk_Book_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Book_user"
    ADD CONSTRAINT "Book_user_book_id_d75b401d_fk_Book_id" FOREIGN KEY (book_id) REFERENCES public."Book"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Book_user Book_user_user_id_b670215e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Book_user"
    ADD CONSTRAINT "Book_user_user_id_b670215e_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Bookmark_book Bookmark_book_book_id_edc98c5e_fk_Book_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Bookmark_book"
    ADD CONSTRAINT "Bookmark_book_book_id_edc98c5e_fk_Book_id" FOREIGN KEY (book_id) REFERENCES public."Book"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Bookmark_book Bookmark_book_bookmark_id_bb5b96bb_fk_Bookmark_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Bookmark_book"
    ADD CONSTRAINT "Bookmark_book_bookmark_id_bb5b96bb_fk_Bookmark_id" FOREIGN KEY (bookmark_id) REFERENCES public."Bookmark"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Collection_book Collection_book_book_id_cb5fbda8_fk_Book_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Collection_book"
    ADD CONSTRAINT "Collection_book_book_id_cb5fbda8_fk_Book_id" FOREIGN KEY (book_id) REFERENCES public."Book"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Collection_book Collection_book_collection_id_5420efb3_fk_Collection_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Collection_book"
    ADD CONSTRAINT "Collection_book_collection_id_5420efb3_fk_Collection_id" FOREIGN KEY (collection_id) REFERENCES public."Collection"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Collection_user Collection_user_collection_id_392c204b_fk_Collection_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Collection_user"
    ADD CONSTRAINT "Collection_user_collection_id_392c204b_fk_Collection_id" FOREIGN KEY (collection_id) REFERENCES public."Collection"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Collection_user Collection_user_user_id_db2d8d96_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Collection_user"
    ADD CONSTRAINT "Collection_user_user_id_db2d8d96_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Note Note_book_id_bd8e1c87_fk_Book_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Note"
    ADD CONSTRAINT "Note_book_id_bd8e1c87_fk_Book_id" FOREIGN KEY (book_id) REFERENCES public."Book"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

