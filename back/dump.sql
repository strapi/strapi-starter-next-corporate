--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: components_elements_features; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_elements_features (
    id bigint NOT NULL,
    name text
);


ALTER TABLE public.components_elements_features OWNER TO remidejuvigny;

--
-- Name: components_elements_features_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_elements_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_features_id_seq OWNER TO remidejuvigny;

--
-- Name: components_elements_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_elements_features_id_seq OWNED BY public.components_elements_features.id;


--
-- Name: components_elements_logos; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_elements_logos (
    id bigint NOT NULL,
    title text
);


ALTER TABLE public.components_elements_logos OWNER TO remidejuvigny;

--
-- Name: components_elements_logos_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_elements_logos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_logos_id_seq OWNER TO remidejuvigny;

--
-- Name: components_elements_logos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_elements_logos_id_seq OWNED BY public.components_elements_logos.id;


--
-- Name: components_elements_notification_banners; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_elements_notification_banners (
    id bigint NOT NULL,
    text text,
    type text
);


ALTER TABLE public.components_elements_notification_banners OWNER TO remidejuvigny;

--
-- Name: components_elements_notification_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_elements_notification_banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_notification_banners_id_seq OWNER TO remidejuvigny;

--
-- Name: components_elements_notification_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_elements_notification_banners_id_seq OWNED BY public.components_elements_notification_banners.id;


--
-- Name: components_elements_plans; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_elements_plans (
    id bigint NOT NULL,
    name text,
    description text,
    isrecommended boolean,
    price double precision,
    priceperiod text
);


ALTER TABLE public.components_elements_plans OWNER TO remidejuvigny;

--
-- Name: components_elements_plans_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_elements_plans_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    components_elements_plan_id bigint
);


ALTER TABLE public.components_elements_plans_components OWNER TO remidejuvigny;

--
-- Name: components_elements_plans_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_elements_plans_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_plans_components_id_seq OWNER TO remidejuvigny;

--
-- Name: components_elements_plans_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_elements_plans_components_id_seq OWNED BY public.components_elements_plans_components.id;


--
-- Name: components_elements_plans_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_elements_plans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_elements_plans_id_seq OWNER TO remidejuvigny;

--
-- Name: components_elements_plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_elements_plans_id_seq OWNED BY public.components_elements_plans.id;


--
-- Name: components_layout_footers; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_layout_footers (
    id bigint NOT NULL,
    smalltext text
);


ALTER TABLE public.components_layout_footers OWNER TO remidejuvigny;

--
-- Name: components_layout_footers_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_layout_footers_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    components_layout_footer_id bigint
);


ALTER TABLE public.components_layout_footers_components OWNER TO remidejuvigny;

--
-- Name: components_layout_footers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_layout_footers_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_footers_components_id_seq OWNER TO remidejuvigny;

--
-- Name: components_layout_footers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_layout_footers_components_id_seq OWNED BY public.components_layout_footers_components.id;


--
-- Name: components_layout_footers_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_layout_footers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_footers_id_seq OWNER TO remidejuvigny;

--
-- Name: components_layout_footers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_layout_footers_id_seq OWNED BY public.components_layout_footers.id;


--
-- Name: components_layout_navbars; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_layout_navbars (
    id bigint NOT NULL
);


ALTER TABLE public.components_layout_navbars OWNER TO remidejuvigny;

--
-- Name: components_layout_navbars_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_layout_navbars_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    components_layout_navbar_id bigint
);


ALTER TABLE public.components_layout_navbars_components OWNER TO remidejuvigny;

--
-- Name: components_layout_navbars_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_layout_navbars_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_navbars_components_id_seq OWNER TO remidejuvigny;

--
-- Name: components_layout_navbars_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_layout_navbars_components_id_seq OWNED BY public.components_layout_navbars_components.id;


--
-- Name: components_layout_navbars_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_layout_navbars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_layout_navbars_id_seq OWNER TO remidejuvigny;

--
-- Name: components_layout_navbars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_layout_navbars_id_seq OWNED BY public.components_layout_navbars.id;


--
-- Name: components_links_buttons; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_links_buttons (
    id bigint NOT NULL,
    url text,
    newtab boolean,
    text text,
    type text
);


ALTER TABLE public.components_links_buttons OWNER TO remidejuvigny;

--
-- Name: components_links_buttons_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_links_buttons_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    components_links_button_id bigint
);


ALTER TABLE public.components_links_buttons_components OWNER TO remidejuvigny;

--
-- Name: components_links_buttons_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_links_buttons_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_buttons_components_id_seq OWNER TO remidejuvigny;

--
-- Name: components_links_buttons_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_links_buttons_components_id_seq OWNED BY public.components_links_buttons_components.id;


--
-- Name: components_links_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_links_buttons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_buttons_id_seq OWNER TO remidejuvigny;

--
-- Name: components_links_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_links_buttons_id_seq OWNED BY public.components_links_buttons.id;


--
-- Name: components_links_footer_sections; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_links_footer_sections (
    id bigint NOT NULL,
    title text
);


ALTER TABLE public.components_links_footer_sections OWNER TO remidejuvigny;

--
-- Name: components_links_footer_sections_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_links_footer_sections_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    components_links_footer_section_id bigint
);


ALTER TABLE public.components_links_footer_sections_components OWNER TO remidejuvigny;

--
-- Name: components_links_footer_sections_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_links_footer_sections_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_footer_sections_components_id_seq OWNER TO remidejuvigny;

--
-- Name: components_links_footer_sections_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_links_footer_sections_components_id_seq OWNED BY public.components_links_footer_sections_components.id;


--
-- Name: components_links_footer_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_links_footer_sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_footer_sections_id_seq OWNER TO remidejuvigny;

--
-- Name: components_links_footer_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_links_footer_sections_id_seq OWNED BY public.components_links_footer_sections.id;


--
-- Name: components_links_links; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_links_links (
    id bigint NOT NULL,
    url text,
    newtab boolean,
    text text
);


ALTER TABLE public.components_links_links OWNER TO remidejuvigny;

--
-- Name: components_links_links_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_links_links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_links_links_id_seq OWNER TO remidejuvigny;

--
-- Name: components_links_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_links_links_id_seq OWNED BY public.components_links_links.id;


--
-- Name: components_meta_metadata; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_meta_metadata (
    id bigint NOT NULL,
    metatitle text,
    metadescription text,
    twittercardtype text,
    twitterusername text
);


ALTER TABLE public.components_meta_metadata OWNER TO remidejuvigny;

--
-- Name: components_meta_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_meta_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_meta_metadata_id_seq OWNER TO remidejuvigny;

--
-- Name: components_meta_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_meta_metadata_id_seq OWNED BY public.components_meta_metadata.id;


--
-- Name: components_sections_pricings; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_sections_pricings (
    id bigint NOT NULL,
    title text
);


ALTER TABLE public.components_sections_pricings OWNER TO remidejuvigny;

--
-- Name: components_sections_pricings_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_sections_pricings_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    components_sections_pricing_id bigint
);


ALTER TABLE public.components_sections_pricings_components OWNER TO remidejuvigny;

--
-- Name: components_sections_pricings_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_sections_pricings_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_pricings_components_id_seq OWNER TO remidejuvigny;

--
-- Name: components_sections_pricings_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_sections_pricings_components_id_seq OWNED BY public.components_sections_pricings_components.id;


--
-- Name: components_sections_pricings_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_sections_pricings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_pricings_id_seq OWNER TO remidejuvigny;

--
-- Name: components_sections_pricings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_sections_pricings_id_seq OWNED BY public.components_sections_pricings.id;


--
-- Name: components_sections_rich_texts; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_sections_rich_texts (
    id bigint NOT NULL,
    content text
);


ALTER TABLE public.components_sections_rich_texts OWNER TO remidejuvigny;

--
-- Name: components_sections_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_sections_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_sections_rich_texts_id_seq OWNER TO remidejuvigny;

--
-- Name: components_sections_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_sections_rich_texts_id_seq OWNED BY public.components_sections_rich_texts.id;


--
-- Name: components_slices_bottom_actions; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_bottom_actions (
    id bigint NOT NULL,
    title text
);


ALTER TABLE public.components_slices_bottom_actions OWNER TO remidejuvigny;

--
-- Name: components_slices_bottom_actions_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_bottom_actions_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    components_slices_bottom_action_id bigint
);


ALTER TABLE public.components_slices_bottom_actions_components OWNER TO remidejuvigny;

--
-- Name: components_slices_bottom_actions_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_bottom_actions_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_bottom_actions_components_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_bottom_actions_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_bottom_actions_components_id_seq OWNED BY public.components_slices_bottom_actions_components.id;


--
-- Name: components_slices_bottom_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_bottom_actions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_bottom_actions_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_bottom_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_bottom_actions_id_seq OWNED BY public.components_slices_bottom_actions.id;


--
-- Name: components_slices_feature_columns; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_feature_columns (
    id bigint NOT NULL,
    title text,
    description text
);


ALTER TABLE public.components_slices_feature_columns OWNER TO remidejuvigny;

--
-- Name: components_slices_feature_columns_groups; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_feature_columns_groups (
    id bigint NOT NULL
);


ALTER TABLE public.components_slices_feature_columns_groups OWNER TO remidejuvigny;

--
-- Name: components_slices_feature_columns_groups_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_feature_columns_groups_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    components_slices_feature_columns_group_id bigint
);


ALTER TABLE public.components_slices_feature_columns_groups_components OWNER TO remidejuvigny;

--
-- Name: components_slices_feature_columns_groups_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_feature_columns_groups_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_columns_groups_components_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_feature_columns_groups_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_feature_columns_groups_components_id_seq OWNED BY public.components_slices_feature_columns_groups_components.id;


--
-- Name: components_slices_feature_columns_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_feature_columns_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_columns_groups_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_feature_columns_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_feature_columns_groups_id_seq OWNED BY public.components_slices_feature_columns_groups.id;


--
-- Name: components_slices_feature_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_feature_columns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_columns_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_feature_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_feature_columns_id_seq OWNED BY public.components_slices_feature_columns.id;


--
-- Name: components_slices_feature_rows; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_feature_rows (
    id bigint NOT NULL,
    title text,
    description text
);


ALTER TABLE public.components_slices_feature_rows OWNER TO remidejuvigny;

--
-- Name: components_slices_feature_rows_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_feature_rows_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    components_slices_feature_row_id bigint
);


ALTER TABLE public.components_slices_feature_rows_components OWNER TO remidejuvigny;

--
-- Name: components_slices_feature_rows_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_feature_rows_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_rows_components_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_feature_rows_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_feature_rows_components_id_seq OWNED BY public.components_slices_feature_rows_components.id;


--
-- Name: components_slices_feature_rows_groups; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_feature_rows_groups (
    id bigint NOT NULL
);


ALTER TABLE public.components_slices_feature_rows_groups OWNER TO remidejuvigny;

--
-- Name: components_slices_feature_rows_groups_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_feature_rows_groups_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    components_slices_feature_rows_group_id bigint
);


ALTER TABLE public.components_slices_feature_rows_groups_components OWNER TO remidejuvigny;

--
-- Name: components_slices_feature_rows_groups_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_feature_rows_groups_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_rows_groups_components_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_feature_rows_groups_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_feature_rows_groups_components_id_seq OWNED BY public.components_slices_feature_rows_groups_components.id;


--
-- Name: components_slices_feature_rows_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_feature_rows_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_rows_groups_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_feature_rows_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_feature_rows_groups_id_seq OWNED BY public.components_slices_feature_rows_groups.id;


--
-- Name: components_slices_feature_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_feature_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_feature_rows_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_feature_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_feature_rows_id_seq OWNED BY public.components_slices_feature_rows.id;


--
-- Name: components_slices_heroes; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_heroes (
    id bigint NOT NULL,
    title text,
    label text,
    description text,
    smalltextwithlink text
);


ALTER TABLE public.components_slices_heroes OWNER TO remidejuvigny;

--
-- Name: components_slices_heroes_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_heroes_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    components_slices_hero_id bigint
);


ALTER TABLE public.components_slices_heroes_components OWNER TO remidejuvigny;

--
-- Name: components_slices_heroes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_heroes_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_heroes_components_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_heroes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_heroes_components_id_seq OWNED BY public.components_slices_heroes_components.id;


--
-- Name: components_slices_heroes_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_heroes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_heroes_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_heroes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_heroes_id_seq OWNED BY public.components_slices_heroes.id;


--
-- Name: components_slices_large_videos; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_large_videos (
    id bigint NOT NULL,
    title text,
    description text
);


ALTER TABLE public.components_slices_large_videos OWNER TO remidejuvigny;

--
-- Name: components_slices_large_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_large_videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_large_videos_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_large_videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_large_videos_id_seq OWNED BY public.components_slices_large_videos.id;


--
-- Name: components_slices_testimonials; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_testimonials (
    id bigint NOT NULL,
    text text,
    authorname text,
    authortitle text,
    link text
);


ALTER TABLE public.components_slices_testimonials OWNER TO remidejuvigny;

--
-- Name: components_slices_testimonials_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_testimonials_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    components_slices_testimonial_id bigint
);


ALTER TABLE public.components_slices_testimonials_components OWNER TO remidejuvigny;

--
-- Name: components_slices_testimonials_groups; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_testimonials_groups (
    id bigint NOT NULL,
    title text,
    description text
);


ALTER TABLE public.components_slices_testimonials_groups OWNER TO remidejuvigny;

--
-- Name: components_slices_testimonials_groups_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.components_slices_testimonials_groups_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    components_slices_testimonials_group_id bigint
);


ALTER TABLE public.components_slices_testimonials_groups_components OWNER TO remidejuvigny;

--
-- Name: components_slices_testimonials_groups_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_testimonials_groups_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_testimonials_groups_components_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_testimonials_groups_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_testimonials_groups_components_id_seq OWNED BY public.components_slices_testimonials_groups_components.id;


--
-- Name: components_slices_testimonials_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_testimonials_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_testimonials_groups_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_testimonials_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_testimonials_groups_id_seq OWNED BY public.components_slices_testimonials_groups.id;


--
-- Name: components_slices_testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.components_slices_testimonials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_slices_testimonials_id_seq OWNER TO remidejuvigny;

--
-- Name: components_slices_testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.components_slices_testimonials_id_seq OWNED BY public.components_slices_testimonials.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.core_store (
    id bigint NOT NULL,
    key text,
    value text,
    type text,
    environment text,
    tag text
);


ALTER TABLE public.core_store OWNER TO remidejuvigny;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.core_store_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO remidejuvigny;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: default_metadata; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.default_metadata (
    id bigint NOT NULL,
    ogtype text,
    locale text,
    twitterusername text,
    sitename text,
    baseurl text,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.default_metadata OWNER TO remidejuvigny;

--
-- Name: default_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.default_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.default_metadata_id_seq OWNER TO remidejuvigny;

--
-- Name: default_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.default_metadata_id_seq OWNED BY public.default_metadata.id;


--
-- Name: globals; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.globals (
    id bigint NOT NULL,
    metatitlesuffix text,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.globals OWNER TO remidejuvigny;

--
-- Name: globals_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.globals_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    global_id bigint
);


ALTER TABLE public.globals_components OWNER TO remidejuvigny;

--
-- Name: globals_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.globals_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.globals_components_id_seq OWNER TO remidejuvigny;

--
-- Name: globals_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.globals_components_id_seq OWNED BY public.globals_components.id;


--
-- Name: globals_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.globals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.globals_id_seq OWNER TO remidejuvigny;

--
-- Name: globals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;


--
-- Name: homepages; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.homepages (
    id bigint NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.homepages OWNER TO remidejuvigny;

--
-- Name: homepages_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.homepages_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    homepage_id bigint
);


ALTER TABLE public.homepages_components OWNER TO remidejuvigny;

--
-- Name: homepages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.homepages_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homepages_components_id_seq OWNER TO remidejuvigny;

--
-- Name: homepages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.homepages_components_id_seq OWNED BY public.homepages_components.id;


--
-- Name: homepages_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.homepages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homepages_id_seq OWNER TO remidejuvigny;

--
-- Name: homepages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.homepages_id_seq OWNED BY public.homepages.id;


--
-- Name: notification_banners; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.notification_banners (
    id bigint NOT NULL,
    text text,
    type text,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.notification_banners OWNER TO remidejuvigny;

--
-- Name: pages; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.pages (
    id bigint NOT NULL,
    slug text,
    shortname text,
    status text,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.pages OWNER TO remidejuvigny;

--
-- Name: pages_components; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.pages_components (
    id bigint NOT NULL,
    field text,
    "order" bigint,
    component_type text,
    component_id bigint,
    page_id bigint
);


ALTER TABLE public.pages_components OWNER TO remidejuvigny;

--
-- Name: pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.pages_components_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_components_id_seq OWNER TO remidejuvigny;

--
-- Name: pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.pages_components_id_seq OWNED BY public.pages_components.id;


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_id_seq OWNER TO remidejuvigny;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.reviews OWNER TO remidejuvigny;

--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.strapi_administrator (
    id bigint NOT NULL,
    username text,
    email text,
    password text,
    resetpasswordtoken text,
    blocked boolean
);


ALTER TABLE public.strapi_administrator OWNER TO remidejuvigny;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO remidejuvigny;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.strapi_webhooks (
    id bigint NOT NULL,
    name text,
    url text,
    headers text,
    events text,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO remidejuvigny;

--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.upload_file (
    id bigint NOT NULL,
    name text,
    alternativetext text,
    caption text,
    width bigint,
    height bigint,
    formats text,
    hash text,
    ext text,
    mime text,
    size double precision,
    url text,
    previewurl text,
    provider text,
    provider_metadata text,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO remidejuvigny;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.upload_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO remidejuvigny;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public.upload_file_morph (
    id bigint NOT NULL,
    upload_file_id bigint,
    related_id bigint,
    related_type text,
    field text,
    "order" bigint
);


ALTER TABLE public.upload_file_morph OWNER TO remidejuvigny;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO remidejuvigny;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public."users-permissions_permission" (
    id bigint NOT NULL,
    type text,
    controller text,
    action text,
    enabled boolean,
    policy text,
    role bigint
);


ALTER TABLE public."users-permissions_permission" OWNER TO remidejuvigny;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO remidejuvigny;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public."users-permissions_role" (
    id bigint NOT NULL,
    name text,
    description text,
    type text
);


ALTER TABLE public."users-permissions_role" OWNER TO remidejuvigny;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: remidejuvigny
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO remidejuvigny;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remidejuvigny
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: remidejuvigny
--

CREATE TABLE public."users-permissions_user" (
    id bigint NOT NULL,
    username text,
    email text,
    provider text,
    password text,
    resetpasswordtoken text,
    confirmed boolean,
    blocked boolean,
    role bigint,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."users-permissions_user" OWNER TO remidejuvigny;

--
-- Name: components_elements_features id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_elements_features ALTER COLUMN id SET DEFAULT nextval('public.components_elements_features_id_seq'::regclass);


--
-- Name: components_elements_logos id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_elements_logos ALTER COLUMN id SET DEFAULT nextval('public.components_elements_logos_id_seq'::regclass);


--
-- Name: components_elements_notification_banners id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_elements_notification_banners ALTER COLUMN id SET DEFAULT nextval('public.components_elements_notification_banners_id_seq'::regclass);


--
-- Name: components_elements_plans id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_elements_plans ALTER COLUMN id SET DEFAULT nextval('public.components_elements_plans_id_seq'::regclass);


--
-- Name: components_elements_plans_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_elements_plans_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_plans_components_id_seq'::regclass);


--
-- Name: components_layout_footers id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_layout_footers ALTER COLUMN id SET DEFAULT nextval('public.components_layout_footers_id_seq'::regclass);


--
-- Name: components_layout_footers_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_layout_footers_components ALTER COLUMN id SET DEFAULT nextval('public.components_layout_footers_components_id_seq'::regclass);


--
-- Name: components_layout_navbars id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_layout_navbars ALTER COLUMN id SET DEFAULT nextval('public.components_layout_navbars_id_seq'::regclass);


--
-- Name: components_layout_navbars_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_layout_navbars_components ALTER COLUMN id SET DEFAULT nextval('public.components_layout_navbars_components_id_seq'::regclass);


--
-- Name: components_links_buttons id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_links_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_links_buttons_id_seq'::regclass);


--
-- Name: components_links_buttons_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_links_buttons_components ALTER COLUMN id SET DEFAULT nextval('public.components_links_buttons_components_id_seq'::regclass);


--
-- Name: components_links_footer_sections id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_links_footer_sections ALTER COLUMN id SET DEFAULT nextval('public.components_links_footer_sections_id_seq'::regclass);


--
-- Name: components_links_footer_sections_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_links_footer_sections_components ALTER COLUMN id SET DEFAULT nextval('public.components_links_footer_sections_components_id_seq'::regclass);


--
-- Name: components_links_links id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_links_links ALTER COLUMN id SET DEFAULT nextval('public.components_links_links_id_seq'::regclass);


--
-- Name: components_meta_metadata id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_meta_metadata ALTER COLUMN id SET DEFAULT nextval('public.components_meta_metadata_id_seq'::regclass);


--
-- Name: components_sections_pricings id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_sections_pricings ALTER COLUMN id SET DEFAULT nextval('public.components_sections_pricings_id_seq'::regclass);


--
-- Name: components_sections_pricings_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_sections_pricings_components ALTER COLUMN id SET DEFAULT nextval('public.components_sections_pricings_components_id_seq'::regclass);


--
-- Name: components_sections_rich_texts id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_sections_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.components_sections_rich_texts_id_seq'::regclass);


--
-- Name: components_slices_bottom_actions id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_bottom_actions ALTER COLUMN id SET DEFAULT nextval('public.components_slices_bottom_actions_id_seq'::regclass);


--
-- Name: components_slices_bottom_actions_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_bottom_actions_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_bottom_actions_components_id_seq'::regclass);


--
-- Name: components_slices_feature_columns id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_columns ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_columns_id_seq'::regclass);


--
-- Name: components_slices_feature_columns_groups id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_columns_groups_id_seq'::regclass);


--
-- Name: components_slices_feature_columns_groups_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_columns_groups_components_id_seq'::regclass);


--
-- Name: components_slices_feature_rows id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_rows ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_rows_id_seq'::regclass);


--
-- Name: components_slices_feature_rows_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_rows_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_rows_components_id_seq'::regclass);


--
-- Name: components_slices_feature_rows_groups id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_rows_groups_id_seq'::regclass);


--
-- Name: components_slices_feature_rows_groups_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_feature_rows_groups_components_id_seq'::regclass);


--
-- Name: components_slices_heroes id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_slices_heroes_id_seq'::regclass);


--
-- Name: components_slices_heroes_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_heroes_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_heroes_components_id_seq'::regclass);


--
-- Name: components_slices_large_videos id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_large_videos ALTER COLUMN id SET DEFAULT nextval('public.components_slices_large_videos_id_seq'::regclass);


--
-- Name: components_slices_testimonials id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_testimonials ALTER COLUMN id SET DEFAULT nextval('public.components_slices_testimonials_id_seq'::regclass);


--
-- Name: components_slices_testimonials_groups id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_testimonials_groups ALTER COLUMN id SET DEFAULT nextval('public.components_slices_testimonials_groups_id_seq'::regclass);


--
-- Name: components_slices_testimonials_groups_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_testimonials_groups_components ALTER COLUMN id SET DEFAULT nextval('public.components_slices_testimonials_groups_components_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: default_metadata id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.default_metadata ALTER COLUMN id SET DEFAULT nextval('public.default_metadata_id_seq'::regclass);


--
-- Name: globals id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);


--
-- Name: globals_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.globals_components ALTER COLUMN id SET DEFAULT nextval('public.globals_components_id_seq'::regclass);


--
-- Name: homepages id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.homepages ALTER COLUMN id SET DEFAULT nextval('public.homepages_id_seq'::regclass);


--
-- Name: homepages_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.homepages_components ALTER COLUMN id SET DEFAULT nextval('public.homepages_components_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_components id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.pages_components ALTER COLUMN id SET DEFAULT nextval('public.pages_components_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Data for Name: components_elements_features; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_elements_features (id, name) FROM stdin;
1	A cool feature
2	Another cool feature
3	Some other cool feature
4	Cool feature
5	Nice feature
6	Fun feature
7	Amazing feature
8	Wow effect feature
9	Mesmerizing feature
\.


--
-- Data for Name: components_elements_logos; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_elements_logos (id, title) FROM stdin;
7	airbnb
8	Target
9	Autodesk
10	Oracle
11	Ameritrade
12	Electronic Arts
19	Strapi 3
20	Strapi
21	Strapi 2
\.


--
-- Data for Name: components_elements_notification_banners; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_elements_notification_banners (id, text, type) FROM stdin;
1	This page was built using the Strapi+Next starter for Coporate Sites.\n[View other Strapi starters](https://github.com/strapi?q=starter&type=&language=)	info
\.


--
-- Data for Name: components_elements_plans; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_elements_plans (id, name, description, isrecommended, price, priceperiod) FROM stdin;
1	Hobby	Perfect for side projects	\N	0	forever
2	Premium	A more advanced plan for SMBs	t	20	per month
3	Enterprise	For large companies	\N	199	per month
\.


--
-- Data for Name: components_elements_plans_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_elements_plans_components (id, field, "order", component_type, component_id, components_elements_plan_id) FROM stdin;
1	features	1	components_elements_features	1	1
2	features	2	components_elements_features	2	1
3	features	3	components_elements_features	3	1
4	features	1	components_elements_features	4	2
5	features	3	components_elements_features	6	2
6	features	2	components_elements_features	5	2
7	features	3	components_elements_features	9	3
8	features	1	components_elements_features	7	3
9	features	2	components_elements_features	8	3
\.


--
-- Data for Name: components_layout_footers; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_layout_footers (id, smalltext) FROM stdin;
1	© Copyright My Company™
\.


--
-- Data for Name: components_layout_footers_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_layout_footers_components (id, field, "order", component_type, component_id, components_layout_footer_id) FROM stdin;
1	columns	2	components_links_footer_sections	12	1
2	columns	3	components_links_footer_sections	13	1
3	columns	4	components_links_footer_sections	14	1
4	columns	1	components_links_footer_sections	15	1
\.


--
-- Data for Name: components_layout_navbars; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_layout_navbars (id) FROM stdin;
1
\.


--
-- Data for Name: components_layout_navbars_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_layout_navbars_components (id, field, "order", component_type, component_id, components_layout_navbar_id) FROM stdin;
1	links	1	components_links_links	57	1
2	links	2	components_links_links	58	1
3	button	1	components_links_buttons	17	1
\.


--
-- Data for Name: components_links_buttons; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_links_buttons (id, url, newtab, text, type) FROM stdin;
1	\N	\N	\N	\N
2	\N	\N	\N	\N
3	\N	\N	\N	\N
4	\N	\N	\N	\N
7	\N	\N	\N	\N
8	\N	\N	\N	\N
9	#	f	1-click deploy	primary
10	/features	f	View on GitHub	secondary
11	#	f	Sign in	\N
13	#	f	One-click deploy	primary
14	#	f	View on GitHub	secondary
17	#	f	Sign up	secondary
18	#	f	Send an email	primary
19	#	f	DM us on Twitter	secondary
\.


--
-- Data for Name: components_links_buttons_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_links_buttons_components (id, field, "order", component_type, component_id, components_links_button_id) FROM stdin;
1	link	1	components_links_links	1	1
2	link	1	components_links_links	2	2
3	link	1	components_links_links	19	3
4	link	1	components_links_links	18	4
7	link	1	components_links_links	22	7
8	link	1	components_links_links	23	8
\.


--
-- Data for Name: components_links_footer_sections; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_links_footer_sections (id, title) FROM stdin;
1	Product
8	Company
9	Legal
10	Social
11	Resources
12	Legal
13	Company
14	Social
15	Product
\.


--
-- Data for Name: components_links_footer_sections_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_links_footer_sections_components (id, field, "order", component_type, component_id, components_links_footer_section_id) FROM stdin;
1	links	1	components_links_links	35	1
2	links	2	components_links_links	36	1
15	links	1	components_links_links	49	8
16	links	2	components_links_links	50	8
17	links	1	components_links_links	51	9
18	links	2	components_links_links	52	9
19	links	1	components_links_links	53	10
20	links	1	components_links_links	54	11
21	links	2	components_links_links	55	10
22	links	2	components_links_links	56	11
23	links	1	components_links_links	59	12
24	links	2	components_links_links	60	12
25	links	1	components_links_links	61	13
26	links	2	components_links_links	62	13
27	links	1	components_links_links	63	14
28	links	2	components_links_links	64	14
29	links	1	components_links_links	65	15
30	links	2	components_links_links	66	15
\.


--
-- Data for Name: components_links_links; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_links_links (id, url, newtab, text) FROM stdin;
1	\N	f	Try Slack for free
2	\N	f	Learn more
16	\N	f	See how with shared channels
17	\N	f	Learn more about channels
18	\N	f	Contact sales
19	\N	f	Try Slack
22	\N	f	Try Slack
23	\N	f	Contact sales
25	\N	f	See all customer stories
26	#	f	View how to create a page
27	#	f	View the list of UI sections
32	/pricing	f	Pricing
33	/features	f	Features
34	/contact	f	Contact
35	/features	f	Features
36	/login	f	Log in
49	/careers	f	Careers
50	/offices	f	Offices
51	/privacy	f	Privacy policy
52	/terms	f	Terms of use
53	https://twitter.com/slackhq	t	Twitter
54	/docs	f	Documentation
55	https://www.facebook.com/slack	t	Facebook
56	/blog	f	Blog
57	/pricing	f	Pricing
58	/contact	f	Contact
59	#	f	Privacy policy
60	#	f	Terms & conditions
61	#	f	Careers
62	#	f	Team
63	#	f	Twitter
64	#	f	LinkedIn
65	#	f	Features
66	#	f	Sign up
67	#	f	All testimonials
\.


--
-- Data for Name: components_meta_metadata; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_meta_metadata (id, metatitle, metadescription, twittercardtype, twitterusername) FROM stdin;
2	Where work happens	Slack is where work flows. It's where the people you need, the information you share, and the tools you use come together to get things done.	summary_large_image	strapijs
4	Strapi+Next corporate site starter	Build a fully editable site with Strapi and Next	summary_large_image	strapijs
5	Strapi+Next starter for Corporate Sites	Build you corporate site with Strapi and Next	summary	strapijs
9	Contact	Get in touch with our team	summary	\N
10	Pricing	The different plans	summary	\N
\.


--
-- Data for Name: components_sections_pricings; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_sections_pricings (id, title) FROM stdin;
1	Clear pricing table
\.


--
-- Data for Name: components_sections_pricings_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_sections_pricings_components (id, field, "order", component_type, component_id, components_sections_pricing_id) FROM stdin;
1	plans	1	components_elements_plans	1	1
2	plans	2	components_elements_plans	2	1
3	plans	3	components_elements_plans	3	1
\.


--
-- Data for Name: components_sections_rich_texts; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_sections_rich_texts (id, content) FROM stdin;
1	# Get in touch\n\n> This is an example of a page that relies almost entirely on the RichText section. It's useful for blog articles, or content-heavy pages like legal terms.\n\nWe'd love to hear from you.\n\n## Social media\n\n* [Twitter](#)\n* [Twitter](#)\n* [Twitter](#)\n\n## Postal address\n\n404 Headless Street\n__92210__ **Saint Cloud**, *France*\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
\.


--
-- Data for Name: components_slices_bottom_actions; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_bottom_actions (id, title) FROM stdin;
1	Choose a better way to work
3	Start building your website
5	Get in touch
\.


--
-- Data for Name: components_slices_bottom_actions_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_bottom_actions_components (id, field, "order", component_type, component_id, components_slices_bottom_action_id) FROM stdin;
1	links	1	components_links_buttons	3	1
2	links	2	components_links_buttons	4	1
5	buttons	1	components_links_buttons	7	1
6	buttons	2	components_links_buttons	8	1
8	buttons	1	components_links_buttons	13	3
9	buttons	2	components_links_buttons	14	3
12	buttons	1	components_links_buttons	18	5
13	buttons	2	components_links_buttons	19	5
\.


--
-- Data for Name: components_slices_feature_columns; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_feature_columns (id, title, description) FROM stdin;
10	Conversations, organized	Instead of a single overstuffed inbox, conversations in Slack happen in dedicated spaces called channels.
11	Get looped in, not out	Slack makes it simple to follow conversations or find important information in an easily searchable archive.
12	Give focus a chance	Unlike email, Slack lets you choose which conversations are most important — and which can wait.
13	Conversations, organized	Instead of a single overstuffed inbox, conversations in Slack happen in dedicated spaces called channels.
14	Get looped in, not out	Slack makes it simple to follow conversations or find important information in an easily searchable archive.
15	Give focus a chance	Unlike email, Slack lets you choose which conversations are most important — and which can wait.
16	Preview your changes	Thanks to an integrated Preview Mode, you can visualize your pages before publishing them.
17	Fully responsive	This starter works well on all screens, whether it's mobile, tablet or desktop.
18	Easy to customize	We use Tailwind for styling. You can change your site's theme without digging through the code.
\.


--
-- Data for Name: components_slices_feature_columns_groups; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_feature_columns_groups (id) FROM stdin;
4
5
\.


--
-- Data for Name: components_slices_feature_columns_groups_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_feature_columns_groups_components (id, field, "order", component_type, component_id, components_slices_feature_columns_group_id) FROM stdin;
10	FeatureColumn	1	components_slices_feature_columns	10	4
11	FeatureColumn	2	components_slices_feature_columns	11	4
12	FeatureColumn	3	components_slices_feature_columns	12	4
13	features	3	components_slices_feature_columns	15	4
14	features	2	components_slices_feature_columns	14	4
15	features	1	components_slices_feature_columns	13	4
16	features	3	components_slices_feature_columns	18	5
17	features	2	components_slices_feature_columns	17	5
18	features	1	components_slices_feature_columns	16	5
\.


--
-- Data for Name: components_slices_feature_rows; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_feature_rows (id, title, description) FROM stdin;
2	Make the change to channels	Productive teamwork happens in channels — organized spaces for everything related to a project, topic or team.
8	Shared channels bring companies together	Now channels can help you work as closely with external partners and clients as you do with teams down the hall.
9	Let marketing teams build their pages	Thanks to a pre-built list of UI sections, marketers can design exactly the pages they want.
10	Leave your developers alone	You can publish, edit and delete pages without help from developers. Your technical team can finally focus on their tasks.
\.


--
-- Data for Name: components_slices_feature_rows_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_feature_rows_components (id, field, "order", component_type, component_id, components_slices_feature_row_id) FROM stdin;
14	link	1	components_links_links	16	8
15	link	1	components_links_links	17	2
16	link	1	components_links_links	26	10
17	link	1	components_links_links	27	9
\.


--
-- Data for Name: components_slices_feature_rows_groups; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_feature_rows_groups (id) FROM stdin;
2
3
\.


--
-- Data for Name: components_slices_feature_rows_groups_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_feature_rows_groups_components (id, field, "order", component_type, component_id, components_slices_feature_rows_group_id) FROM stdin;
2	features	1	components_slices_feature_rows	2	2
8	features	2	components_slices_feature_rows	8	2
9	features	2	components_slices_feature_rows	10	3
10	features	1	components_slices_feature_rows	9	3
\.


--
-- Data for Name: components_slices_heroes; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_heroes (id, title, label, description, smalltextwithlink) FROM stdin;
1	Slack brings the team together, wherever you are	Work from home	With all of your communication and tools in one place, remote teams will stay productive no matter where you’re working from.	Need to create a workspace? [Get started](https://slack.com/get-started#/create)
2	The best way to build your Corporate Site	Strapi & Next starter	Get started with your Strapi and Next buiness site in seconds.	Want to build your own from scratch? Tutorial coming soon
\.


--
-- Data for Name: components_slices_heroes_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_heroes_components (id, field, "order", component_type, component_id, components_slices_hero_id) FROM stdin;
1	buttons	1	components_links_buttons	1	1
2	buttons	2	components_links_buttons	2	1
3	buttons	1	components_links_buttons	9	2
4	buttons	2	components_links_buttons	10	2
\.


--
-- Data for Name: components_slices_large_videos; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_large_videos (id, title, description) FROM stdin;
1	Break out of the inbox	Working in channels gives everyone on your team a shared view of progress and purpose.
\.


--
-- Data for Name: components_slices_testimonials; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_testimonials (id, text, authorname, authortitle, link) FROM stdin;
1	When managing three hubs nationally you can’t have a good conversation over email—it’s not quick enough. Coming together in Slack channels allows us to easily discuss day-to-day management topics. That’s invaluable.	Benjamin Sternsmith	Area Vice President of Sales, Lyft Business	https://slack.com/intl/en-fr/customer-stories/lyft
6	The fact that Slack exists and is such an essential tool, it's really helped us with scaling and still feeling connected to one another across remote offices and remote teams, even across continents.	Lisa Madokoro	Culture Specialist, Shopify	https://slack.com/intl/en-fr/customer-stories/shopify
9	"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."	Your Customer Name	A happy customer	#
\.


--
-- Data for Name: components_slices_testimonials_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_testimonials_components (id, field, "order", component_type, component_id, components_slices_testimonial_id) FROM stdin;
\.


--
-- Data for Name: components_slices_testimonials_groups; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_testimonials_groups (id, title, description) FROM stdin;
2	Trusted the world over	Teams of every size, shape and kind have already made Slack the place where their work happens.
4	Your customer testimonials here	This section is where you can showcase your customers. Insert quotes, and show the logos of companies who like your product
\.


--
-- Data for Name: components_slices_testimonials_groups_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.components_slices_testimonials_groups_components (id, field, "order", component_type, component_id, components_slices_testimonials_group_id) FROM stdin;
8	link	1	components_links_links	25	2
9	logos	1	components_elements_logos	7	2
10	logos	3	components_elements_logos	11	2
11	logos	4	components_elements_logos	10	2
12	logos	5	components_elements_logos	8	2
13	logos	6	components_elements_logos	9	2
14	logos	2	components_elements_logos	12	2
15	testimonials	1	components_slices_testimonials	1	2
20	testimonials	2	components_slices_testimonials	6	2
30	link	1	components_links_links	67	4
31	logos	1	components_elements_logos	20	4
32	logos	2	components_elements_logos	21	4
33	logos	3	components_elements_logos	19	4
34	testimonials	1	components_slices_testimonials	9	4
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
1	db_model_core_store	{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}	object	\N	\N
2	db_model_strapi_webhooks	{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}	object	\N	\N
3	db_model_strapi_administrator	{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"required":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"blocked":{"type":"boolean","default":false,"configurable":false}}	object	\N	\N
4	db_model_users-permissions_permission	{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false}}	object	\N	\N
5	db_model_users-permissions_role	{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true}}	object	\N	\N
6	db_model_users-permissions_user	{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
7	db_model_upload_file	{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
8	db_model_upload_file_morph	{"upload_file_id":{"type":"integer"},"related_id":{"type":"integer"},"related_type":{"type":"text"},"field":{"type":"text"},"order":{"type":"integer"}}	object	\N	\N
9	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback"},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]}}	object		
10	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
11	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":false,"sortable":false}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
24	db_model_components_links_links	{"url":{"type":"string"},"newTab":{"type":"boolean","default":false},"text":{"type":"string"}}	object	\N	\N
25	plugin_content_manager_configuration_components::links.link	{"uid":"links.link","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"newTab":{"edit":{"label":"NewTab","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NewTab","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}}},"layouts":{"list":["id","newTab","text","url"],"edit":[[{"name":"newTab","size":4}],[{"name":"text","size":6},{"name":"url","size":6}]],"editRelations":[]}}	object		
12	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
13	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
14	plugin_content_manager_configuration_content_types::strapi::administrator	{"uid":"strapi::administrator","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","blocked"],"editRelations":[],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"blocked","size":4}]]}}	object		
15	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
16	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
17	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_confirmation_redirection":"/admin/admin","email_reset_password":"/admin/admin","default_role":"authenticated"}	object		
18	db_model_components_slices_heroes	{"title":{"type":"string"},"label":{"type":"string"},"description":{"type":"string"},"picture":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false},"smallTextWithLink":{"type":"richtext"},"buttons":{"type":"component","repeatable":true,"component":"links.button"}}	object	\N	\N
19	db_model_homepages	{"slices":{"type":"dynamiczone","components":["sections.hero","sections.large-video","sections.feature-columns-group","elements.feature-column","elements.feature-row","sections.feature-rows-group","sections.bottom-actions","sections.testimonials-group"]},"metadata":{"type":"component","repeatable":false,"component":"meta.metadata"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
22	db_model_components_links_buttons	{"url":{"type":"string"},"newTab":{"type":"boolean","default":false},"text":{"type":"string"},"type":{"type":"enumeration","enum":["primary","secondary"]}}	object	\N	\N
23	plugin_content_manager_configuration_components::links.button	{"uid":"links.button","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"newTab":{"edit":{"label":"NewTab","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NewTab","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}}},"layouts":{"list":["id","newTab","url","type"],"edit":[[{"name":"newTab","size":4},{"name":"text","size":6}],[{"name":"url","size":6},{"name":"type","size":6}]],"editRelations":[]}}	object		
26	db_model_components_slices_large_videos	{"title":{"type":"string"},"description":{"type":"string"},"video":{"model":"file","via":"related","allowedTypes":["videos"],"plugin":"upload","required":true},"poster":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false}}	object	\N	\N
28	db_model_components_slices_feature_columns_groups	{"features":{"type":"component","repeatable":true,"component":"elements.feature-column"}}	object	\N	\N
30	db_model_components_slices_feature_columns	{"title":{"type":"string"},"description":{"type":"text"},"icon":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false}}	object	\N	\N
32	db_model_components_slices_feature_rows	{"title":{"type":"string"},"description":{"type":"text"},"media":{"model":"file","via":"related","allowedTypes":["images","videos"],"plugin":"upload","required":false},"link":{"type":"component","repeatable":false,"component":"links.link"}}	object	\N	\N
34	db_model_components_slices_feature_rows_groups	{"features":{"type":"component","repeatable":true,"component":"elements.feature-row"}}	object	\N	\N
36	db_model_components_slices_bottom_actions	{"title":{"type":"string"},"buttons":{"type":"component","repeatable":true,"component":"links.button"}}	object	\N	\N
38	db_model_components_slices_testimonials	{"logo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false},"picture":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false},"text":{"type":"text"},"authorName":{"type":"string"},"authorTitle":{"type":"string"},"link":{"type":"string"}}	object	\N	\N
40	db_model_components_elements_logos	{"title":{"type":"string"},"logo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false}}	object	\N	\N
41	db_model_components_slices_testimonials_groups	{"title":{"type":"string"},"description":{"type":"text"},"link":{"type":"component","repeatable":false,"component":"links.link"},"logos":{"type":"component","repeatable":true,"component":"elements.logos"},"testimonials":{"type":"component","repeatable":true,"component":"elements.testimonial"}}	object	\N	\N
42	plugin_content_manager_configuration_components::elements.logos	{"uid":"elements.logos","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"logo":{"edit":{"label":"Logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logo","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","logo"],"edit":[[{"name":"title","size":6},{"name":"logo","size":6}]],"editRelations":[]}}	object		
44	plugin_documentation_config	{"restrictedAccess":false}	object		
45	db_model_reviews	{"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
47	db_model_components_meta_metadata	{"metaTitle":{"type":"string","required":true},"metaDescription":{"type":"text","required":true},"shareImage":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false},"twitterCardType":{"type":"enumeration","enum":["summary","summary_large_image","app","player"],"default":"summary"},"twitterUsername":{"type":"string"}}	object	\N	\N
48	plugin_content_manager_configuration_components::meta.metadata	{"uid":"meta.metadata","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"MetaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MetaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"MetaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MetaDescription","searchable":true,"sortable":true}},"shareImage":{"edit":{"label":"ShareImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ShareImage","searchable":false,"sortable":false}},"twitterCardType":{"edit":{"label":"TwitterCardType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TwitterCardType","searchable":true,"sortable":true}},"twitterUsername":{"edit":{"label":"TwitterUsername","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TwitterUsername","searchable":true,"sortable":true}}},"layouts":{"list":["id","metaTitle","metaDescription","shareImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"shareImage","size":6},{"name":"twitterCardType","size":6}],[{"name":"twitterUsername","size":6}]],"editRelations":[]}}	object		
49	db_model_default_metadata	{"ogType":{"type":"string","default":"website"},"locale":{"type":"enumeration","enum":["af_ZA","am_ET","ar_AE","ar_BH","ar_DZ","ar_EG","ar_IQ","ar_JO","ar_KW","ar_LB","ar_LY","ar_MA","arn_CL","ar_OM","ar_QA","ar_SA","ar_SY","ar_TN","ar_YE","as_IN","az_Cyrl_AZ","az_Latn_AZ","ba_RU","be_BY","bg_BG","bn_BD","bn_IN","bo_CN","br_FR","bs_Cyrl_BA","bs_Latn_BA","ca_ES","co_FR","cs_CZ","cy_GB","da_DK","de_AT","de_CH","de_DE","de_LI","de_LU","dsb_DE","dv_MV","el_GR","en_029","en_AU","en_BZ","en_CA","en_GB","en_IE","en_IN","en_JM","en_MY","en_NZ","en_PH","en_SG","en_TT","en_US","en_ZA","en_ZW","es_AR","es_BO","es_CL","es_CO","es_CR","es_DO","es_EC","es_ES","es_GT","es_HN","es_MX","es_NI","es_PA","es_PE","es_PR","es_PY","es_SV","es_US","es_UY","es_VE","et_EE","eu_ES","fa_IR","fi_FI","fil_PH","fo_FO","fr_BE","fr_CA","fr_CH","fr_FR","fr_LU","fr_MC","fy_NL","ga_IE","gd_GB","gl_ES","gsw_FR","gu_IN","ha_Latn_NG","he_IL","hi_IN","hr_BA","hr_HR","hsb_DE","hu_HU","hy_AM","id_ID","ig_NG","ii_CN","is_IS","it_CH","it_IT","iu_Cans_CA","iu_Latn_CA","ja_JP","ka_GE","kk_KZ","kl_GL","km_KH","kn_IN","kok_IN","ko_KR","ky_KG","lb_LU","lo_LA","lt_LT","lv_LV","mi_NZ","mk_MK","ml_IN","mn_MN","mn_Mong_CN","moh_CA","mr_IN","ms_BN","ms_MY","mt_MT","nb_NO","ne_NP","nl_BE","nl_NL","nn_NO","nso_ZA","oc_FR","or_IN","pa_IN","pl_PL","prs_AF","ps_AF","pt_BR","pt_PT","qut_GT","quz_BO","quz_EC","quz_PE","rm_CH","ro_RO","ru_RU","rw_RW","sah_RU","sa_IN","se_FI","se_NO","se_SE","si_LK","sk_SK","sl_SI","sma_NO","sma_SE","smj_NO","smj_SE","smn_FI","sms_FI","sq_AL","sr_Cyrl_BA","sr_Cyrl_CS","sr_Cyrl_ME","sr_Cyrl_RS","sr_Latn_BA","sr_Latn_CS","sr_Latn_ME","sr_Latn_RS","sv_FI","sv_SE","sw_KE","syr_SY","ta_IN","te_IN","tg_Cyrl_TJ","th_TH","tk_TM","tn_ZA","tr_TR","tt_RU","tzm_Latn_DZ","ug_CN","uk_UA","ur_PK","uz_Cyrl_UZ","uz_Latn_UZ","vi_VN","wo_SN","xh_ZA","yo_NG","zh_CN","zh_HK","zh_MO","zh_SG","zh_TW","zu_ZA"],"default":"en_US"},"twitterUsername":{"type":"string"},"siteName":{"type":"string"},"baseUrl":{"type":"string"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
51	db_model_globals	{"metadata":{"type":"component","repeatable":false,"component":"meta.metadata"},"metaTitleSuffix":{"type":"string","required":true},"favicon":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false},"notificationBanner":{"type":"component","repeatable":false,"component":"elements.notification-banner"},"navbar":{"type":"component","repeatable":false,"component":"layout.navbar"},"footer":{"type":"component","repeatable":false,"component":"layout.footer"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
52	plugin_content_manager_configuration_content_types::application::global.global	{"uid":"application::global.global","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"metadata":{"edit":{"label":"Metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Metadata","searchable":false,"sortable":false}},"metaTitleSuffix":{"edit":{"label":"MetaTitleSuffix","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MetaTitleSuffix","searchable":true,"sortable":true}},"favicon":{"edit":{"label":"Favicon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Favicon","searchable":false,"sortable":false}},"notificationBanner":{"edit":{"label":"NotificationBanner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NotificationBanner","searchable":false,"sortable":false}},"navbar":{"edit":{"label":"Navbar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Navbar","searchable":false,"sortable":false}},"footer":{"edit":{"label":"Footer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Footer","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","created_at","updated_at"],"edit":[[{"name":"metaTitleSuffix","size":6}],[{"name":"favicon","size":6}],[{"name":"metadata","size":12}],[{"name":"notificationBanner","size":12}],[{"name":"navbar","size":12}],[{"name":"footer","size":12}]],"editRelations":[]}}	object		
53	db_model_components_links_footer_sections	{"title":{"type":"string"},"links":{"type":"component","repeatable":true,"component":"links.link"}}	object	\N	\N
55	db_model_pages	{"slug":{"type":"uid","required":false,"targetField":"shortName"},"shortName":{"type":"string"},"metadata":{"type":"component","repeatable":false,"component":"meta.metadata","required":true},"contentSections":{"type":"dynamiczone","components":["sections.hero","sections.bottom-actions","sections.feature-columns-group","sections.feature-rows-group","sections.testimonials-group","sections.large-video","sections.rich-text","sections.pricing"]},"status":{"type":"enumeration","enum":["published","draft"],"default":"draft","required":true},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
56	plugin_content_manager_configuration_content_types::application::page.page	{"uid":"application::page.page","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":20,"mainField":"shortName","defaultSortBy":"created_at","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"Creates the page URL. Replace slashes (/) by double underscores (__) to build nested pages","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"metadata":{"edit":{"label":"Metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Metadata","searchable":false,"sortable":false}},"contentSections":{"edit":{"label":"ContentSections","description":"The contents of your page","placeholder":"","visible":true,"editable":true},"list":{"label":"ContentSections","searchable":false,"sortable":false}},"status":{"edit":{"label":"Status","description":"","placeholder":"A \\"draft\\" page doesn't exist publicly, but you can preview it using the Preview button on the right","visible":true,"editable":true},"list":{"label":"Status","searchable":true,"sortable":true}},"shortName":{"edit":{"label":"ShortName","description":"Only used to easily find a page in Strapi","placeholder":"My page","visible":true,"editable":true},"list":{"label":"ShortName","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["shortName","slug","status","created_at"],"edit":[[{"name":"shortName","size":6},{"name":"slug","size":6}],[{"name":"status","size":6}],[{"name":"contentSections","size":12}],[{"name":"metadata","size":12}]],"editRelations":[]}}	object		
57	plugin_content_manager_configuration_components::sections.bottom-actions	{"uid":"sections.bottom-actions","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"buttons":{"edit":{"label":"Buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Buttons","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"buttons","size":12}]],"editRelations":[]}}	object		
59	plugin_content_manager_configuration_components::sections.feature-columns-group	{"uid":"sections.feature-columns-group","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"features":{"edit":{"label":"Features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Features","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"features","size":12}]],"editRelations":[]}}	object		
61	plugin_content_manager_configuration_components::sections.feature-rows-group	{"uid":"sections.feature-rows-group","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"features":{"edit":{"label":"Features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Features","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"features","size":12}]],"editRelations":[]}}	object		
62	plugin_content_manager_configuration_components::sections.hero	{"uid":"sections.hero","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"picture":{"edit":{"label":"Picture","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Picture","searchable":false,"sortable":false}},"smallTextWithLink":{"edit":{"label":"SmallTextWithLink","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SmallTextWithLink","searchable":false,"sortable":false}},"buttons":{"edit":{"label":"Buttons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Buttons","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","label","description"],"edit":[[{"name":"title","size":6},{"name":"label","size":6}],[{"name":"description","size":6},{"name":"picture","size":6}],[{"name":"smallTextWithLink","size":12}],[{"name":"buttons","size":12}]],"editRelations":[]}}	object		
63	plugin_content_manager_configuration_components::sections.large-video	{"uid":"sections.large-video","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"video":{"edit":{"label":"Video","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Video","searchable":false,"sortable":false}},"poster":{"edit":{"label":"Poster","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Poster","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","video"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"video","size":6},{"name":"poster","size":6}]],"editRelations":[]}}	object		
65	plugin_content_manager_configuration_components::sections.testimonials-group	{"uid":"sections.testimonials-group","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}},"logos":{"edit":{"label":"Logos","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logos","searchable":false,"sortable":false}},"testimonials":{"edit":{"label":"Testimonials","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Testimonials","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"link","size":12}],[{"name":"logos","size":12}],[{"name":"testimonials","size":12}]],"editRelations":[]}}	object		
66	plugin_content_manager_configuration_components::elements.testimonial	{"uid":"elements.testimonial","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"authorName","defaultSortBy":"authorName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"logo":{"edit":{"label":"Logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logo","searchable":false,"sortable":false}},"picture":{"edit":{"label":"Picture","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Picture","searchable":false,"sortable":false}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"authorName":{"edit":{"label":"AuthorName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AuthorName","searchable":true,"sortable":true}},"authorTitle":{"edit":{"label":"AuthorTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AuthorTitle","searchable":true,"sortable":true}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":true,"sortable":true}}},"layouts":{"list":["id","logo","picture","text"],"edit":[[{"name":"logo","size":6},{"name":"picture","size":6}],[{"name":"text","size":6},{"name":"authorName","size":6}],[{"name":"authorTitle","size":6},{"name":"link","size":6}]],"editRelations":[]}}	object		
67	plugin_content_manager_configuration_components::elements.feature-column	{"uid":"elements.feature-column","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","icon"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"icon","size":6}]],"editRelations":[]}}	object		
68	plugin_content_manager_configuration_components::elements.feature-row	{"uid":"elements.feature-row","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"media":{"edit":{"label":"Media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Media","searchable":false,"sortable":false}},"link":{"edit":{"label":"Link","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Link","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","media"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"media","size":6}],[{"name":"link","size":12}]],"editRelations":[]}}	object		
69	plugin_content_manager_configuration_components::elements.footer-section	{"uid":"elements.footer-section","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"links":{"edit":{"label":"Links","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Links","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"links","size":12}]],"editRelations":[]}}	object		
70	db_model_notification_banners	{"text":{"type":"richtext"},"type":{"type":"enumeration","enum":["alert","info","warning"],"default":"info"},"created_at":{"type":"currentTimestamp"},"updated_at":{"type":"currentTimestamp"}}	object	\N	\N
72	db_model_components_elements_notification_banners	{"text":{"type":"richtext"},"type":{"type":"enumeration","enum":["alert","info","warning"],"required":true}}	object	\N	\N
73	plugin_content_manager_configuration_components::elements.notification-banner	{"uid":"elements.notification-banner","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":false,"sortable":false}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}}},"layouts":{"list":["id","type"],"edit":[[{"name":"text","size":12}],[{"name":"type","size":6}]],"editRelations":[]}}	object		
74	db_model_components_layout_navbars	{"logo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true},"links":{"type":"component","repeatable":true,"component":"links.link"},"button":{"type":"component","repeatable":false,"component":"links.button"}}	object	\N	\N
75	plugin_content_manager_configuration_components::layout.navbar	{"uid":"layout.navbar","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"logo":{"edit":{"label":"Logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logo","searchable":false,"sortable":false}},"links":{"edit":{"label":"Links","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Links","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","logo"],"edit":[[{"name":"logo","size":6}],[{"name":"links","size":12}],[{"name":"button","size":12}]],"editRelations":[]}}	object		
76	db_model_components_layout_footers	{"logo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false},"columns":{"type":"component","repeatable":true,"component":"elements.footer-section"},"smallText":{"type":"string"}}	object	\N	\N
77	plugin_content_manager_configuration_components::layout.footer	{"uid":"layout.footer","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"smallText","defaultSortBy":"smallText","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"logo":{"edit":{"label":"Logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logo","searchable":false,"sortable":false}},"columns":{"edit":{"label":"Columns","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Columns","searchable":false,"sortable":false}},"smallText":{"edit":{"label":"SmallText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SmallText","searchable":true,"sortable":true}}},"layouts":{"list":["id","logo","smallText"],"edit":[[{"name":"logo","size":6}],[{"name":"columns","size":12}],[{"name":"smallText","size":6}]],"editRelations":[]}}	object		
78	db_model_components_sections_rich_texts	{"content":{"type":"richtext"}}	object	\N	\N
79	plugin_content_manager_configuration_components::sections.rich-text	{"uid":"sections.rich-text","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[[{"name":"content","size":12}]],"editRelations":[]}}	object		
80	db_model_components_elements_features	{"name":{"type":"string"}}	object	\N	\N
81	db_model_components_sections_pricings	{"title":{"type":"string"},"plans":{"type":"component","repeatable":true,"component":"elements.plan"}}	object	\N	\N
83	plugin_content_manager_configuration_components::sections.pricing	{"uid":"sections.pricing","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"plans":{"edit":{"label":"Plans","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Plans","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"plans","size":12}]],"editRelations":[]}}	object		
84	db_model_components_elements_plans	{"name":{"type":"string"},"description":{"type":"text"},"features":{"type":"component","repeatable":true,"component":"elements.feature"},"isRecommended":{"type":"boolean"},"price":{"type":"decimal"},"pricePeriod":{"type":"string"}}	object	\N	\N
85	plugin_content_manager_configuration_components::elements.feature	{"uid":"elements.feature","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}}},"layouts":{"list":["id","name"],"edit":[[{"name":"name","size":6}]],"editRelations":[]}}	object		
86	plugin_content_manager_configuration_components::elements.plan	{"uid":"elements.plan","isComponent":true,"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"features":{"edit":{"label":"Features","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Features","searchable":false,"sortable":false}},"isRecommended":{"edit":{"label":"IsRecommended","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsRecommended","searchable":true,"sortable":true}},"price":{"edit":{"label":"Price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Price","searchable":true,"sortable":true}},"pricePeriod":{"edit":{"label":"PricePeriod","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PricePeriod","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","isRecommended"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"features","size":12}],[{"name":"isRecommended","size":4},{"name":"price","size":4}],[{"name":"pricePeriod","size":6}]],"editRelations":[]}}	object		
\.


--
-- Data for Name: default_metadata; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.default_metadata (id, ogtype, locale, twitterusername, sitename, baseurl, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: globals; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.globals (id, metatitlesuffix, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: globals_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.globals_components (id, field, "order", component_type, component_id, global_id) FROM stdin;
1	metadata	1	components_meta_metadata	5	1
5	navLinks	1	components_links_links	32	1
6	navLinks	2	components_links_links	33	1
7	navLinks	3	components_links_links	34	1
8	navButton	1	components_links_buttons	11	1
9	footerSections	1	components_links_footer_sections	1	1
16	footerSections	2	components_links_footer_sections	8	1
17	footerSections	4	components_links_footer_sections	9	1
18	footerSections	5	components_links_footer_sections	10	1
19	footerSections	3	components_links_footer_sections	11	1
20	notificationBanner	1	components_elements_notification_banners	1	1
21	navbar	1	components_layout_navbars	1	1
22	footer	1	components_layout_footers	1	1
\.


--
-- Data for Name: homepages; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.homepages (id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: homepages_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.homepages_components (id, field, "order", component_type, component_id, homepage_id) FROM stdin;
1	slices	1	components_slices_heroes	1	1
2	slices	2	components_slices_large_videos	1	1
6	slices	3	components_slices_feature_columns_groups	4	1
8	slices	4	components_slices_feature_rows_groups	2	1
9	slices	6	components_slices_bottom_actions	1	1
11	slices	5	components_slices_testimonials_groups	2	1
13	metadata	1	components_meta_metadata	2	1
\.


--
-- Data for Name: notification_banners; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.notification_banners (id, text, type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.pages (id, slug, shortname, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: pages_components; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.pages_components (id, field, "order", component_type, component_id, page_id) FROM stdin;
3	contentSections	1	components_slices_heroes	2	2
5	contentSections	3	components_slices_feature_columns_groups	5	2
6	contentSections	2	components_slices_feature_rows_groups	3	2
8	metadata	1	components_meta_metadata	4	2
12	contentSections	4	components_slices_bottom_actions	3	2
16	metadata	1	components_meta_metadata	9	3
17	contentSections	1	components_sections_rich_texts	1	3
18	contentSections	5	components_slices_testimonials_groups	4	2
19	metadata	1	components_meta_metadata	10	4
20	contentSections	1	components_sections_pricings	1	4
21	contentSections	2	components_slices_bottom_actions	5	3
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.reviews (id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.strapi_administrator (id, username, email, password, resetpasswordtoken, blocked) FROM stdin;
1	remi	remi@hey.com	$2a$10$EV7SH/CjJYQ94qtxXGzDoOc/3UiCedLKZIOfQXzfbEtmQJwtSslDG	\N	\N
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.upload_file (id, name, alternativetext, caption, width, height, formats, hash, ext, mime, size, url, previewurl, provider, provider_metadata, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
1673	27	5	components_meta_metadata	shareImage	1
1674	28	1	components_layout_navbars	logo	1
1676	22	1	globals	favicon	1
1677	27	4	components_meta_metadata	shareImage	1
1678	30	17	components_slices_feature_columns	icon	1
1679	29	18	components_slices_feature_columns	icon	1
1680	31	16	components_slices_feature_columns	icon	1
1681	24	2	components_slices_heroes	picture	1
1682	25	9	components_slices_feature_rows	media	1
1683	26	10	components_slices_feature_rows	media	1
1684	28	21	components_elements_logos	logo	1
1685	28	19	components_elements_logos	logo	1
1686	28	20	components_elements_logos	logo	1
1687	28	9	components_slices_testimonials	logo	1
1688	32	9	components_slices_testimonials	picture	1
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role) FROM stdin;
1	content-manager	components	findcomponent	f		1
2	content-manager	components	findcomponent	f		2
3	content-manager	components	listcomponents	f		1
4	content-manager	components	listcomponents	t		2
5	content-manager	components	updatecomponent	f		1
6	content-manager	components	updatecomponent	f		2
7	content-manager	contentmanager	checkuidavailability	f		1
8	content-manager	contentmanager	checkuidavailability	f		2
9	content-manager	contentmanager	count	f		1
10	content-manager	contentmanager	count	f		2
11	content-manager	contentmanager	create	f		1
12	content-manager	contentmanager	create	f		2
13	content-manager	contentmanager	delete	f		1
14	content-manager	contentmanager	delete	f		2
15	content-manager	contentmanager	deletemany	f		1
16	content-manager	contentmanager	deletemany	f		2
17	content-manager	contentmanager	find	f		1
18	content-manager	contentmanager	find	f		2
19	content-manager	contentmanager	findone	f		1
20	content-manager	contentmanager	findone	f		2
21	content-manager	contentmanager	generateuid	f		1
22	content-manager	contentmanager	generateuid	f		2
23	content-manager	contentmanager	update	f		1
24	content-manager	contentmanager	update	f		2
25	content-manager	contenttypes	findcontenttype	f		1
26	content-manager	contenttypes	findcontenttype	t		2
27	content-manager	contenttypes	listcontenttypes	f		1
28	content-manager	contenttypes	listcontenttypes	t		2
29	content-manager	contenttypes	updatecontenttype	f		1
30	content-manager	contenttypes	updatecontenttype	f		2
31	content-type-builder	builder	getreservednames	f		1
32	content-type-builder	builder	getreservednames	f		2
33	content-type-builder	componentcategories	deletecategory	f		1
34	content-type-builder	componentcategories	deletecategory	f		2
35	content-type-builder	componentcategories	editcategory	f		1
36	content-type-builder	componentcategories	editcategory	f		2
37	content-type-builder	components	createcomponent	f		1
38	content-type-builder	components	createcomponent	f		2
39	content-type-builder	components	deletecomponent	f		1
40	content-type-builder	components	deletecomponent	f		2
41	content-type-builder	components	getcomponent	f		1
42	content-type-builder	components	getcomponent	f		2
43	content-type-builder	components	getcomponents	f		1
44	content-type-builder	components	getcomponents	f		2
45	content-type-builder	components	updatecomponent	f		1
46	content-type-builder	components	updatecomponent	f		2
47	content-type-builder	connections	getconnections	f		1
48	content-type-builder	connections	getconnections	f		2
49	content-type-builder	contenttypes	createcontenttype	f		1
50	content-type-builder	contenttypes	createcontenttype	f		2
51	content-type-builder	contenttypes	deletecontenttype	f		1
52	content-type-builder	contenttypes	deletecontenttype	f		2
53	content-type-builder	contenttypes	getcontenttype	f		1
54	content-type-builder	contenttypes	getcontenttype	f		2
55	content-type-builder	contenttypes	getcontenttypes	f		1
56	content-type-builder	contenttypes	getcontenttypes	f		2
57	content-type-builder	contenttypes	updatecontenttype	f		1
58	content-type-builder	contenttypes	updatecontenttype	f		2
59	email	email	send	f		1
60	email	email	send	f		2
61	upload	proxy	uploadproxy	f		1
62	upload	proxy	uploadproxy	f		2
63	upload	upload	count	f		1
64	upload	upload	count	f		2
65	upload	upload	destroy	f		1
66	upload	upload	destroy	f		2
67	upload	upload	find	f		1
68	upload	upload	find	f		2
69	upload	upload	findone	f		1
70	upload	upload	findone	f		2
71	upload	upload	getsettings	f		1
72	upload	upload	getsettings	f		2
73	upload	upload	search	f		1
74	upload	upload	search	f		2
75	upload	upload	updatesettings	f		1
76	upload	upload	updatesettings	f		2
77	upload	upload	upload	f		1
78	upload	upload	upload	f		2
79	users-permissions	auth	callback	f		1
80	users-permissions	auth	callback	t		2
81	users-permissions	auth	connect	t		1
82	users-permissions	auth	connect	t		2
83	users-permissions	auth	emailconfirmation	f		1
84	users-permissions	auth	emailconfirmation	t		2
85	users-permissions	auth	forgotpassword	f		1
86	users-permissions	auth	forgotpassword	t		2
87	users-permissions	auth	register	f		1
88	users-permissions	auth	register	t		2
89	users-permissions	auth	resetpassword	f		1
90	users-permissions	auth	resetpassword	f		2
91	users-permissions	auth	sendemailconfirmation	f		1
92	users-permissions	auth	sendemailconfirmation	f		2
93	users-permissions	user	count	f		1
94	users-permissions	user	count	f		2
95	users-permissions	user	create	f		1
96	users-permissions	user	create	f		2
97	users-permissions	user	destroy	f		1
98	users-permissions	user	destroy	f		2
99	users-permissions	user	destroyall	f		1
100	users-permissions	user	destroyall	f		2
101	users-permissions	user	find	f		1
102	users-permissions	user	find	f		2
103	users-permissions	user	findone	f		1
104	users-permissions	user	findone	f		2
105	users-permissions	user	me	t		1
106	users-permissions	user	me	t		2
107	users-permissions	user	update	f		1
108	users-permissions	user	update	f		2
109	users-permissions	userspermissions	createrole	f		1
110	users-permissions	userspermissions	createrole	f		2
111	users-permissions	userspermissions	deleteprovider	f		1
112	users-permissions	userspermissions	deleteprovider	f		2
113	users-permissions	userspermissions	deleterole	f		1
114	users-permissions	userspermissions	deleterole	f		2
115	users-permissions	userspermissions	getadvancedsettings	f		1
116	users-permissions	userspermissions	getadvancedsettings	f		2
117	users-permissions	userspermissions	getemailtemplate	f		1
118	users-permissions	userspermissions	getemailtemplate	f		2
119	users-permissions	userspermissions	getpermissions	f		1
120	users-permissions	userspermissions	getpermissions	f		2
121	users-permissions	userspermissions	getpolicies	f		1
122	users-permissions	userspermissions	getpolicies	f		2
123	users-permissions	userspermissions	getproviders	f		1
124	users-permissions	userspermissions	getproviders	f		2
125	users-permissions	userspermissions	getrole	f		1
126	users-permissions	userspermissions	getrole	f		2
127	users-permissions	userspermissions	getroles	f		1
128	users-permissions	userspermissions	getroles	f		2
129	users-permissions	userspermissions	getroutes	f		1
130	users-permissions	userspermissions	getroutes	f		2
131	users-permissions	userspermissions	index	f		1
132	users-permissions	userspermissions	index	f		2
133	users-permissions	userspermissions	init	t		1
134	users-permissions	userspermissions	init	t		2
135	users-permissions	userspermissions	searchusers	f		1
136	users-permissions	userspermissions	searchusers	f		2
137	users-permissions	userspermissions	updateadvancedsettings	f		1
138	users-permissions	userspermissions	updateadvancedsettings	f		2
139	users-permissions	userspermissions	updateemailtemplate	f		1
140	users-permissions	userspermissions	updateemailtemplate	f		2
141	users-permissions	userspermissions	updateproviders	f		1
142	users-permissions	userspermissions	updateproviders	f		2
143	users-permissions	userspermissions	updaterole	f		1
144	users-permissions	userspermissions	updaterole	f		2
183	application	global	delete	f		1
184	application	global	delete	f		2
185	application	global	find	t		1
186	application	global	find	t		2
187	application	global	update	f		1
188	application	global	update	f		2
189	application	page	count	f		1
190	application	page	count	f		2
191	application	page	create	f		1
192	application	page	create	f		2
193	application	page	delete	f		1
194	application	page	delete	f		2
195	application	page	find	t		1
196	application	page	find	t		2
197	application	page	findone	t		1
198	application	page	findone	t		2
199	application	page	update	f		1
200	application	page	update	f		2
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public."users-permissions_role" (id, name, description, type) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated
2	Public	Default role given to unauthenticated user.	public
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: remidejuvigny
--

COPY public."users-permissions_user" (id, username, email, provider, password, resetpasswordtoken, confirmed, blocked, role, created_at, updated_at) FROM stdin;
\.


--
-- Name: components_elements_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_elements_features_id_seq', 9, true);


--
-- Name: components_elements_logos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_elements_logos_id_seq', 21, true);


--
-- Name: components_elements_notification_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_elements_notification_banners_id_seq', 1, true);


--
-- Name: components_elements_plans_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_elements_plans_components_id_seq', 9, true);


--
-- Name: components_elements_plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_elements_plans_id_seq', 3, true);


--
-- Name: components_layout_footers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_layout_footers_components_id_seq', 4, true);


--
-- Name: components_layout_footers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_layout_footers_id_seq', 1, true);


--
-- Name: components_layout_navbars_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_layout_navbars_components_id_seq', 3, true);


--
-- Name: components_layout_navbars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_layout_navbars_id_seq', 1, true);


--
-- Name: components_links_buttons_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_links_buttons_components_id_seq', 8, true);


--
-- Name: components_links_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_links_buttons_id_seq', 19, true);


--
-- Name: components_links_footer_sections_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_links_footer_sections_components_id_seq', 30, true);


--
-- Name: components_links_footer_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_links_footer_sections_id_seq', 15, true);


--
-- Name: components_links_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_links_links_id_seq', 67, true);


--
-- Name: components_meta_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_meta_metadata_id_seq', 10, true);


--
-- Name: components_sections_pricings_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_sections_pricings_components_id_seq', 3, true);


--
-- Name: components_sections_pricings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_sections_pricings_id_seq', 1, true);


--
-- Name: components_sections_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_sections_rich_texts_id_seq', 1, true);


--
-- Name: components_slices_bottom_actions_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_bottom_actions_components_id_seq', 13, true);


--
-- Name: components_slices_bottom_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_bottom_actions_id_seq', 5, true);


--
-- Name: components_slices_feature_columns_groups_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_feature_columns_groups_components_id_seq', 18, true);


--
-- Name: components_slices_feature_columns_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_feature_columns_groups_id_seq', 5, true);


--
-- Name: components_slices_feature_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_feature_columns_id_seq', 18, true);


--
-- Name: components_slices_feature_rows_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_feature_rows_components_id_seq', 17, true);


--
-- Name: components_slices_feature_rows_groups_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_feature_rows_groups_components_id_seq', 10, true);


--
-- Name: components_slices_feature_rows_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_feature_rows_groups_id_seq', 3, true);


--
-- Name: components_slices_feature_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_feature_rows_id_seq', 10, true);


--
-- Name: components_slices_heroes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_heroes_components_id_seq', 4, true);


--
-- Name: components_slices_heroes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_heroes_id_seq', 2, true);


--
-- Name: components_slices_large_videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_large_videos_id_seq', 1, true);


--
-- Name: components_slices_testimonials_groups_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_testimonials_groups_components_id_seq', 34, true);


--
-- Name: components_slices_testimonials_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_testimonials_groups_id_seq', 4, true);


--
-- Name: components_slices_testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.components_slices_testimonials_id_seq', 9, true);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.core_store_id_seq', 86, true);


--
-- Name: default_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.default_metadata_id_seq', 1, true);


--
-- Name: globals_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.globals_components_id_seq', 22, true);


--
-- Name: globals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.globals_id_seq', 1, true);


--
-- Name: homepages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.homepages_components_id_seq', 13, true);


--
-- Name: homepages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.homepages_id_seq', 1, true);


--
-- Name: pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.pages_components_id_seq', 21, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.pages_id_seq', 1, true);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 1, true);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1688, true);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 200, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remidejuvigny
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- Name: core_store idx_17488_core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT idx_17488_core_store_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks idx_17495_strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT idx_17495_strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: strapi_administrator idx_17503_strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT idx_17503_strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission idx_17512_users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "idx_17512_users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role idx_17521_users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "idx_17521_users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user idx_17528_users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "idx_17528_users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: upload_file idx_17538_upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT idx_17538_upload_file_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph idx_17549_upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT idx_17549_upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: homepages_components idx_17558_homepages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT idx_17558_homepages_components_pkey PRIMARY KEY (id);


--
-- Name: components_links_buttons_components idx_17567_components_links_buttons_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_links_buttons_components
    ADD CONSTRAINT idx_17567_components_links_buttons_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_heroes_components idx_17576_components_slices_heroes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_heroes_components
    ADD CONSTRAINT idx_17576_components_slices_heroes_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_heroes idx_17585_components_slices_heroes_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_heroes
    ADD CONSTRAINT idx_17585_components_slices_heroes_pkey PRIMARY KEY (id);


--
-- Name: components_slices_large_videos idx_17594_components_slices_large_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_large_videos
    ADD CONSTRAINT idx_17594_components_slices_large_videos_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_columns_groups_components idx_17603_components_slices_feature_columns_groups_components_p; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups_components
    ADD CONSTRAINT idx_17603_components_slices_feature_columns_groups_components_p PRIMARY KEY (id);


--
-- Name: components_slices_feature_columns idx_17612_components_slices_feature_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_columns
    ADD CONSTRAINT idx_17612_components_slices_feature_columns_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_rows_groups_components idx_17621_components_slices_feature_rows_groups_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups_components
    ADD CONSTRAINT idx_17621_components_slices_feature_rows_groups_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_rows idx_17630_components_slices_feature_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_rows
    ADD CONSTRAINT idx_17630_components_slices_feature_rows_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_rows_components idx_17639_components_slices_feature_rows_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_rows_components
    ADD CONSTRAINT idx_17639_components_slices_feature_rows_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_bottom_actions_components idx_17648_components_slices_bottom_actions_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_bottom_actions_components
    ADD CONSTRAINT idx_17648_components_slices_bottom_actions_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_bottom_actions idx_17657_components_slices_bottom_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_bottom_actions
    ADD CONSTRAINT idx_17657_components_slices_bottom_actions_pkey PRIMARY KEY (id);


--
-- Name: components_slices_testimonials_components idx_17664_components_slices_testimonials_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_testimonials_components
    ADD CONSTRAINT idx_17664_components_slices_testimonials_components_pkey PRIMARY KEY (id);


--
-- Name: components_elements_logos idx_17672_components_elements_logos_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_elements_logos
    ADD CONSTRAINT idx_17672_components_elements_logos_pkey PRIMARY KEY (id);


--
-- Name: components_slices_testimonials_groups_components idx_17681_components_slices_testimonials_groups_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_testimonials_groups_components
    ADD CONSTRAINT idx_17681_components_slices_testimonials_groups_components_pkey PRIMARY KEY (id);


--
-- Name: reviews idx_17688_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT idx_17688_reviews_pkey PRIMARY KEY (id);


--
-- Name: components_slices_testimonials idx_17695_components_slices_testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_testimonials
    ADD CONSTRAINT idx_17695_components_slices_testimonials_pkey PRIMARY KEY (id);


--
-- Name: default_metadata idx_17704_default_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.default_metadata
    ADD CONSTRAINT idx_17704_default_metadata_pkey PRIMARY KEY (id);


--
-- Name: globals_components idx_17715_globals_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT idx_17715_globals_components_pkey PRIMARY KEY (id);


--
-- Name: components_links_footer_sections idx_17724_components_links_footer_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_links_footer_sections
    ADD CONSTRAINT idx_17724_components_links_footer_sections_pkey PRIMARY KEY (id);


--
-- Name: components_links_footer_sections_components idx_17733_components_links_footer_sections_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_links_footer_sections_components
    ADD CONSTRAINT idx_17733_components_links_footer_sections_components_pkey PRIMARY KEY (id);


--
-- Name: pages_components idx_17742_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT idx_17742_pages_components_pkey PRIMARY KEY (id);


--
-- Name: components_slices_testimonials_groups idx_17751_components_slices_testimonials_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_testimonials_groups
    ADD CONSTRAINT idx_17751_components_slices_testimonials_groups_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_columns_groups idx_17760_components_slices_feature_columns_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_columns_groups
    ADD CONSTRAINT idx_17760_components_slices_feature_columns_groups_pkey PRIMARY KEY (id);


--
-- Name: components_slices_feature_rows_groups idx_17766_components_slices_feature_rows_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_rows_groups
    ADD CONSTRAINT idx_17766_components_slices_feature_rows_groups_pkey PRIMARY KEY (id);


--
-- Name: homepages idx_17772_homepages_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT idx_17772_homepages_pkey PRIMARY KEY (id);


--
-- Name: components_links_links idx_17780_components_links_links_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_links_links
    ADD CONSTRAINT idx_17780_components_links_links_pkey PRIMARY KEY (id);


--
-- Name: components_meta_metadata idx_17789_components_meta_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_meta_metadata
    ADD CONSTRAINT idx_17789_components_meta_metadata_pkey PRIMARY KEY (id);


--
-- Name: notification_banners idx_17796_notification_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.notification_banners
    ADD CONSTRAINT idx_17796_notification_banners_pkey PRIMARY KEY (id);


--
-- Name: components_elements_notification_banners idx_17806_components_elements_notification_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_elements_notification_banners
    ADD CONSTRAINT idx_17806_components_elements_notification_banners_pkey PRIMARY KEY (id);


--
-- Name: components_layout_navbars_components idx_17815_components_layout_navbars_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_layout_navbars_components
    ADD CONSTRAINT idx_17815_components_layout_navbars_components_pkey PRIMARY KEY (id);


--
-- Name: components_layout_navbars idx_17824_components_layout_navbars_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_layout_navbars
    ADD CONSTRAINT idx_17824_components_layout_navbars_pkey PRIMARY KEY (id);


--
-- Name: components_layout_footers idx_17830_components_layout_footers_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_layout_footers
    ADD CONSTRAINT idx_17830_components_layout_footers_pkey PRIMARY KEY (id);


--
-- Name: components_layout_footers_components idx_17839_components_layout_footers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_layout_footers_components
    ADD CONSTRAINT idx_17839_components_layout_footers_components_pkey PRIMARY KEY (id);


--
-- Name: globals idx_17848_globals_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT idx_17848_globals_pkey PRIMARY KEY (id);


--
-- Name: components_links_buttons idx_17859_components_links_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_links_buttons
    ADD CONSTRAINT idx_17859_components_links_buttons_pkey PRIMARY KEY (id);


--
-- Name: components_sections_rich_texts idx_17868_components_sections_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_sections_rich_texts
    ADD CONSTRAINT idx_17868_components_sections_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: components_elements_features idx_17877_components_elements_features_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_elements_features
    ADD CONSTRAINT idx_17877_components_elements_features_pkey PRIMARY KEY (id);


--
-- Name: components_sections_pricings_components idx_17886_components_sections_pricings_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_sections_pricings_components
    ADD CONSTRAINT idx_17886_components_sections_pricings_components_pkey PRIMARY KEY (id);


--
-- Name: components_sections_pricings idx_17895_components_sections_pricings_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_sections_pricings
    ADD CONSTRAINT idx_17895_components_sections_pricings_pkey PRIMARY KEY (id);


--
-- Name: components_elements_plans_components idx_17904_components_elements_plans_components_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_elements_plans_components
    ADD CONSTRAINT idx_17904_components_elements_plans_components_pkey PRIMARY KEY (id);


--
-- Name: pages idx_17913_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT idx_17913_pages_pkey PRIMARY KEY (id);


--
-- Name: components_elements_plans idx_17924_components_elements_plans_pkey; Type: CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_elements_plans
    ADD CONSTRAINT idx_17924_components_elements_plans_pkey PRIMARY KEY (id);


--
-- Name: idx_17503_strapi_administrator_username_unique; Type: INDEX; Schema: public; Owner: remidejuvigny
--

CREATE UNIQUE INDEX idx_17503_strapi_administrator_username_unique ON public.strapi_administrator USING btree (username);


--
-- Name: idx_17521_users-permissions_role_type_unique; Type: INDEX; Schema: public; Owner: remidejuvigny
--

CREATE UNIQUE INDEX "idx_17521_users-permissions_role_type_unique" ON public."users-permissions_role" USING btree (type);


--
-- Name: idx_17528_users-permissions_user_username_unique; Type: INDEX; Schema: public; Owner: remidejuvigny
--

CREATE UNIQUE INDEX "idx_17528_users-permissions_user_username_unique" ON public."users-permissions_user" USING btree (username);


--
-- Name: idx_17913_pages_slug_unique; Type: INDEX; Schema: public; Owner: remidejuvigny
--

CREATE UNIQUE INDEX idx_17913_pages_slug_unique ON public.pages USING btree (slug);


--
-- Name: components_layout_footers_components components_layout_footers_comp_components_layout_footer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_layout_footers_components
    ADD CONSTRAINT components_layout_footers_comp_components_layout_footer_id_fkey FOREIGN KEY (components_layout_footer_id) REFERENCES public.components_layout_footers(id) ON DELETE CASCADE;


--
-- Name: components_links_footer_sections_components components_links_footer_secti_components_links_footer_sect_fkey; Type: FK CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_links_footer_sections_components
    ADD CONSTRAINT components_links_footer_secti_components_links_footer_sect_fkey FOREIGN KEY (components_links_footer_section_id) REFERENCES public.components_links_footer_sections(id) ON DELETE CASCADE;


--
-- Name: components_slices_feature_rows_components components_slices_feature_row_components_slices_feature_ro_fkey; Type: FK CONSTRAINT; Schema: public; Owner: remidejuvigny
--

ALTER TABLE ONLY public.components_slices_feature_rows_components
    ADD CONSTRAINT components_slices_feature_row_components_slices_feature_ro_fkey FOREIGN KEY (components_slices_feature_row_id) REFERENCES public.components_slices_feature_rows(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

