--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: album; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.album (
    album_id integer NOT NULL,
    artist_id integer NOT NULL,
    album_year integer,
    album_title character(50),
    album_tracks character(150)
);


ALTER TABLE public.album OWNER TO timcha;

--
-- Name: album_album_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.album_album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_album_id_seq OWNER TO timcha;

--
-- Name: album_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.album_album_id_seq OWNED BY public.album.album_id;


--
-- Name: album_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.album_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_artist_id_seq OWNER TO timcha;

--
-- Name: album_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.album_artist_id_seq OWNED BY public.album.artist_id;


--
-- Name: album_tracks; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.album_tracks (
    album_id integer NOT NULL,
    track_id integer NOT NULL,
    track_number integer
);


ALTER TABLE public.album_tracks OWNER TO timcha;

--
-- Name: album_tracks_album_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.album_tracks_album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_tracks_album_id_seq OWNER TO timcha;

--
-- Name: album_tracks_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.album_tracks_album_id_seq OWNED BY public.album_tracks.album_id;


--
-- Name: artist; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.artist (
    artist_id integer NOT NULL,
    genre_id integer NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.artist OWNER TO timcha;

--
-- Name: artist_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.artist_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_artist_id_seq OWNER TO timcha;

--
-- Name: artist_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.artist_artist_id_seq OWNED BY public.artist.artist_id;


--
-- Name: artist_country_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.artist_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_country_id_seq OWNER TO timcha;

--
-- Name: artist_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.artist_country_id_seq OWNED BY public.artist.country_id;


--
-- Name: artist_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.artist_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_genre_id_seq OWNER TO timcha;

--
-- Name: artist_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.artist_genre_id_seq OWNED BY public.artist.genre_id;


--
-- Name: country; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    country_name character(50)
);


ALTER TABLE public.country OWNER TO timcha;

--
-- Name: country_country_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.country_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_country_id_seq OWNER TO timcha;

--
-- Name: country_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.country_country_id_seq OWNED BY public.country.country_id;


--
-- Name: genre; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.genre (
    genre_id integer NOT NULL,
    genre_name character(30)
);


ALTER TABLE public.genre OWNER TO timcha;

--
-- Name: genre_artist; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.genre_artist (
    artist_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE public.genre_artist OWNER TO timcha;

--
-- Name: genre_artist_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.genre_artist_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_artist_artist_id_seq OWNER TO timcha;

--
-- Name: genre_artist_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.genre_artist_artist_id_seq OWNED BY public.genre_artist.artist_id;


--
-- Name: genre_artist_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.genre_artist_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_artist_genre_id_seq OWNER TO timcha;

--
-- Name: genre_artist_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.genre_artist_genre_id_seq OWNED BY public.genre_artist.genre_id;


--
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.genre_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_genre_id_seq OWNER TO timcha;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.genre_genre_id_seq OWNED BY public.genre.genre_id;


--
-- Name: group_history; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.group_history (
    group_id integer NOT NULL,
    team character(50),
    short_bio character(70),
    bio character(150)
);


ALTER TABLE public.group_history OWNER TO timcha;

--
-- Name: group_history_group_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.group_history_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_history_group_id_seq OWNER TO timcha;

--
-- Name: group_history_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.group_history_group_id_seq OWNED BY public.group_history.group_id;


--
-- Name: groups; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.groups (
    group_id integer NOT NULL,
    artist_id integer NOT NULL,
    group_name character(50)
);


ALTER TABLE public.groups OWNER TO timcha;

--
-- Name: groups_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.groups_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_artist_id_seq OWNER TO timcha;

--
-- Name: groups_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.groups_artist_id_seq OWNED BY public.groups.artist_id;


--
-- Name: groups_group_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.groups_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_group_id_seq OWNER TO timcha;

--
-- Name: groups_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.groups_group_id_seq OWNED BY public.groups.group_id;


--
-- Name: personality; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.personality (
    artist_id integer NOT NULL,
    last_name character(30),
    first_name character(30),
    birthday date,
    country character(30),
    short_bio character(150)
);


ALTER TABLE public.personality OWNER TO timcha;

--
-- Name: personality_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: timcha
--

CREATE SEQUENCE public.personality_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personality_artist_id_seq OWNER TO timcha;

--
-- Name: personality_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: timcha
--

ALTER SEQUENCE public.personality_artist_id_seq OWNED BY public.personality.artist_id;


--
-- Name: tracks; Type: TABLE; Schema: public; Owner: timcha
--

CREATE TABLE public.tracks (
    track_id integer NOT NULL,
    track_title character(50),
    track_duration double precision
);


ALTER TABLE public.tracks OWNER TO timcha;

--
-- Name: album album_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album ALTER COLUMN album_id SET DEFAULT nextval('public.album_album_id_seq'::regclass);


--
-- Name: album artist_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album ALTER COLUMN artist_id SET DEFAULT nextval('public.album_artist_id_seq'::regclass);


--
-- Name: album_tracks album_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album_tracks ALTER COLUMN album_id SET DEFAULT nextval('public.album_tracks_album_id_seq'::regclass);


--
-- Name: artist artist_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.artist ALTER COLUMN artist_id SET DEFAULT nextval('public.artist_artist_id_seq'::regclass);


--
-- Name: artist genre_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.artist ALTER COLUMN genre_id SET DEFAULT nextval('public.artist_genre_id_seq'::regclass);


--
-- Name: artist country_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.artist ALTER COLUMN country_id SET DEFAULT nextval('public.artist_country_id_seq'::regclass);


--
-- Name: country country_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.country ALTER COLUMN country_id SET DEFAULT nextval('public.country_country_id_seq'::regclass);


--
-- Name: genre genre_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.genre ALTER COLUMN genre_id SET DEFAULT nextval('public.genre_genre_id_seq'::regclass);


--
-- Name: genre_artist artist_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.genre_artist ALTER COLUMN artist_id SET DEFAULT nextval('public.genre_artist_artist_id_seq'::regclass);


--
-- Name: genre_artist genre_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.genre_artist ALTER COLUMN genre_id SET DEFAULT nextval('public.genre_artist_genre_id_seq'::regclass);


--
-- Name: group_history group_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.group_history ALTER COLUMN group_id SET DEFAULT nextval('public.group_history_group_id_seq'::regclass);


--
-- Name: groups group_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.groups ALTER COLUMN group_id SET DEFAULT nextval('public.groups_group_id_seq'::regclass);


--
-- Name: groups artist_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.groups ALTER COLUMN artist_id SET DEFAULT nextval('public.groups_artist_id_seq'::regclass);


--
-- Name: personality artist_id; Type: DEFAULT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.personality ALTER COLUMN artist_id SET DEFAULT nextval('public.personality_artist_id_seq'::regclass);


--
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.album (album_id, artist_id, album_year, album_title, album_tracks) FROM stdin;
\.


--
-- Data for Name: album_tracks; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.album_tracks (album_id, track_id, track_number) FROM stdin;
\.


--
-- Data for Name: artist; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.artist (artist_id, genre_id, country_id) FROM stdin;
\.


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.country (country_id, country_name) FROM stdin;
\.


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.genre (genre_id, genre_name) FROM stdin;
\.


--
-- Data for Name: genre_artist; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.genre_artist (artist_id, genre_id) FROM stdin;
\.


--
-- Data for Name: group_history; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.group_history (group_id, team, short_bio, bio) FROM stdin;
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.groups (group_id, artist_id, group_name) FROM stdin;
\.


--
-- Data for Name: personality; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.personality (artist_id, last_name, first_name, birthday, country, short_bio) FROM stdin;
\.


--
-- Data for Name: tracks; Type: TABLE DATA; Schema: public; Owner: timcha
--

COPY public.tracks (track_id, track_title, track_duration) FROM stdin;
\.


--
-- Name: album_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.album_album_id_seq', 1, false);


--
-- Name: album_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.album_artist_id_seq', 1, false);


--
-- Name: album_tracks_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.album_tracks_album_id_seq', 1, false);


--
-- Name: artist_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.artist_artist_id_seq', 1, false);


--
-- Name: artist_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.artist_country_id_seq', 1, false);


--
-- Name: artist_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.artist_genre_id_seq', 1, false);


--
-- Name: country_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.country_country_id_seq', 1, false);


--
-- Name: genre_artist_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.genre_artist_artist_id_seq', 1, false);


--
-- Name: genre_artist_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.genre_artist_genre_id_seq', 1, false);


--
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.genre_genre_id_seq', 1, false);


--
-- Name: group_history_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.group_history_group_id_seq', 1, false);


--
-- Name: groups_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.groups_artist_id_seq', 1, false);


--
-- Name: groups_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.groups_group_id_seq', 1, false);


--
-- Name: personality_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: timcha
--

SELECT pg_catalog.setval('public.personality_artist_id_seq', 1, false);


--
-- Name: album album_artist_id_key; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_artist_id_key UNIQUE (artist_id);


--
-- Name: album album_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (album_id);


--
-- Name: album_tracks album_tracks_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album_tracks
    ADD CONSTRAINT album_tracks_pkey PRIMARY KEY (album_id);


--
-- Name: artist artist_artist_id_key; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_artist_id_key UNIQUE (artist_id);


--
-- Name: artist artist_country_id_key; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_country_id_key UNIQUE (country_id);


--
-- Name: artist artist_genre_id_key; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_genre_id_key UNIQUE (genre_id);


--
-- Name: artist artist_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_pkey PRIMARY KEY (artist_id, genre_id, country_id);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


--
-- Name: genre_artist genre_artist_artist_id_key; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.genre_artist
    ADD CONSTRAINT genre_artist_artist_id_key UNIQUE (artist_id);


--
-- Name: genre_artist genre_artist_genre_id_key; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.genre_artist
    ADD CONSTRAINT genre_artist_genre_id_key UNIQUE (genre_id);


--
-- Name: genre_artist genre_artist_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.genre_artist
    ADD CONSTRAINT genre_artist_pkey PRIMARY KEY (artist_id, genre_id);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);


--
-- Name: group_history group_history_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.group_history
    ADD CONSTRAINT group_history_pkey PRIMARY KEY (group_id);


--
-- Name: groups groups_artist_id_key; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_artist_id_key UNIQUE (artist_id);


--
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (group_id);


--
-- Name: personality personality_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.personality
    ADD CONSTRAINT personality_pkey PRIMARY KEY (artist_id);


--
-- Name: tracks tracks_pkey; Type: CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.tracks
    ADD CONSTRAINT tracks_pkey PRIMARY KEY (track_id);


--
-- Name: album album_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artist(artist_id) ON DELETE CASCADE;


--
-- Name: album_tracks album_tracks_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album_tracks
    ADD CONSTRAINT album_tracks_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.album(album_id) ON DELETE CASCADE;


--
-- Name: album_tracks album_tracks_track_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.album_tracks
    ADD CONSTRAINT album_tracks_track_id_fkey FOREIGN KEY (track_id) REFERENCES public.tracks(track_id) ON DELETE CASCADE;


--
-- Name: artist artist_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.groups(group_id) ON DELETE CASCADE;


--
-- Name: artist artist_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country(country_id) ON DELETE CASCADE;


--
-- Name: personality fk_artist_id; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.personality
    ADD CONSTRAINT fk_artist_id FOREIGN KEY (artist_id) REFERENCES public.artist(artist_id);


--
-- Name: group_history fk_group_id; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.group_history
    ADD CONSTRAINT fk_group_id FOREIGN KEY (group_id) REFERENCES public.groups(group_id);


--
-- Name: genre_artist genre_artist_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.genre_artist
    ADD CONSTRAINT genre_artist_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artist(artist_id) ON UPDATE CASCADE;


--
-- Name: genre_artist genre_artist_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: timcha
--

ALTER TABLE ONLY public.genre_artist
    ADD CONSTRAINT genre_artist_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(genre_id) ON UPDATE CASCADE;


--
-- PostgreSQL database dump complete
--

