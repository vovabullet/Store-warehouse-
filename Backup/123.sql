--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2024-02-21 11:01:51

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
-- TOC entry 215 (class 1259 OID 74179)
-- Name: product_receipts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_receipts (
    product_receiptid integer NOT NULL,
    quantity integer NOT NULL,
    wholesale_price numeric(38,2) NOT NULL,
    productid bigint,
    receiptid integer
);


ALTER TABLE public.product_receipts OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 74178)
-- Name: product_receipts_product_receiptid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_receipts_product_receiptid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_receipts_product_receiptid_seq OWNER TO postgres;

--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 214
-- Name: product_receipts_product_receiptid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_receipts_product_receiptid_seq OWNED BY public.product_receipts.product_receiptid;


--
-- TOC entry 217 (class 1259 OID 74186)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id bigint NOT NULL,
    description text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 74185)
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_id_seq OWNER TO postgres;

--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 216
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- TOC entry 219 (class 1259 OID 74195)
-- Name: receipt_documents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.receipt_documents (
    receiptid integer NOT NULL,
    receipt_date date NOT NULL,
    responsible_person character varying(255) NOT NULL,
    supplierid integer,
    warehouseid integer
);


ALTER TABLE public.receipt_documents OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 74194)
-- Name: receipt_documents_receiptid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.receipt_documents_receiptid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.receipt_documents_receiptid_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 218
-- Name: receipt_documents_receiptid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.receipt_documents_receiptid_seq OWNED BY public.receipt_documents.receiptid;


--
-- TOC entry 227 (class 1259 OID 74252)
-- Name: returns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.returns (
    returnid integer NOT NULL,
    quantity integer NOT NULL,
    reason text,
    return_date date NOT NULL,
    productid bigint,
    supplierid integer
);


ALTER TABLE public.returns OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 74251)
-- Name: returns_returnid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.returns_returnid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.returns_returnid_seq OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 226
-- Name: returns_returnid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.returns_returnid_seq OWNED BY public.returns.returnid;


--
-- TOC entry 221 (class 1259 OID 74202)
-- Name: revaluations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.revaluations (
    revaluationid integer NOT NULL,
    new_price numeric(10,2) NOT NULL,
    old_price numeric(10,2) NOT NULL,
    revaluation_date date NOT NULL,
    productid bigint NOT NULL
);


ALTER TABLE public.revaluations OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 74201)
-- Name: revaluations_revaluationid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.revaluations_revaluationid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.revaluations_revaluationid_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 220
-- Name: revaluations_revaluationid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.revaluations_revaluationid_seq OWNED BY public.revaluations.revaluationid;


--
-- TOC entry 223 (class 1259 OID 74209)
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    supplierid integer NOT NULL,
    contact_info character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 74208)
-- Name: suppliers_supplierid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.suppliers_supplierid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.suppliers_supplierid_seq OWNER TO postgres;

--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 222
-- Name: suppliers_supplierid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.suppliers_supplierid_seq OWNED BY public.suppliers.supplierid;


--
-- TOC entry 225 (class 1259 OID 74218)
-- Name: warehouses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.warehouses (
    warehouseid integer NOT NULL,
    address character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.warehouses OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 74217)
-- Name: warehouses_warehouseid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.warehouses_warehouseid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.warehouses_warehouseid_seq OWNER TO postgres;

--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 224
-- Name: warehouses_warehouseid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.warehouses_warehouseid_seq OWNED BY public.warehouses.warehouseid;


--
-- TOC entry 3203 (class 2604 OID 74182)
-- Name: product_receipts product_receiptid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_receipts ALTER COLUMN product_receiptid SET DEFAULT nextval('public.product_receipts_product_receiptid_seq'::regclass);


--
-- TOC entry 3204 (class 2604 OID 74279)
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- TOC entry 3205 (class 2604 OID 74198)
-- Name: receipt_documents receiptid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receipt_documents ALTER COLUMN receiptid SET DEFAULT nextval('public.receipt_documents_receiptid_seq'::regclass);


--
-- TOC entry 3209 (class 2604 OID 74255)
-- Name: returns returnid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.returns ALTER COLUMN returnid SET DEFAULT nextval('public.returns_returnid_seq'::regclass);


--
-- TOC entry 3206 (class 2604 OID 74205)
-- Name: revaluations revaluationid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.revaluations ALTER COLUMN revaluationid SET DEFAULT nextval('public.revaluations_revaluationid_seq'::regclass);


--
-- TOC entry 3207 (class 2604 OID 74212)
-- Name: suppliers supplierid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers ALTER COLUMN supplierid SET DEFAULT nextval('public.suppliers_supplierid_seq'::regclass);


--
-- TOC entry 3208 (class 2604 OID 74221)
-- Name: warehouses warehouseid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouses ALTER COLUMN warehouseid SET DEFAULT nextval('public.warehouses_warehouseid_seq'::regclass);


--
-- TOC entry 3211 (class 2606 OID 74184)
-- Name: product_receipts product_receipts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_receipts
    ADD CONSTRAINT product_receipts_pkey PRIMARY KEY (product_receiptid);


--
-- TOC entry 3213 (class 2606 OID 74281)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 3215 (class 2606 OID 74200)
-- Name: receipt_documents receipt_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receipt_documents
    ADD CONSTRAINT receipt_documents_pkey PRIMARY KEY (receiptid);


--
-- TOC entry 3223 (class 2606 OID 74259)
-- Name: returns returns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.returns
    ADD CONSTRAINT returns_pkey PRIMARY KEY (returnid);


--
-- TOC entry 3217 (class 2606 OID 74207)
-- Name: revaluations revaluations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.revaluations
    ADD CONSTRAINT revaluations_pkey PRIMARY KEY (revaluationid);


--
-- TOC entry 3219 (class 2606 OID 74216)
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (supplierid);


--
-- TOC entry 3221 (class 2606 OID 74225)
-- Name: warehouses warehouses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouses
    ADD CONSTRAINT warehouses_pkey PRIMARY KEY (warehouseid);


--
-- TOC entry 3224 (class 2606 OID 74292)
-- Name: product_receipts fk1i74nxn335laccfg44si6la7s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_receipts
    ADD CONSTRAINT fk1i74nxn335laccfg44si6la7s FOREIGN KEY (productid) REFERENCES public.products(product_id);


--
-- TOC entry 3226 (class 2606 OID 74241)
-- Name: receipt_documents fk3rerl59vdhxpx23p1t0xgj91q; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receipt_documents
    ADD CONSTRAINT fk3rerl59vdhxpx23p1t0xgj91q FOREIGN KEY (warehouseid) REFERENCES public.warehouses(warehouseid);


--
-- TOC entry 3229 (class 2606 OID 74265)
-- Name: returns fkc7jechmmbfj2dd4ghfsfhvs4q; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.returns
    ADD CONSTRAINT fkc7jechmmbfj2dd4ghfsfhvs4q FOREIGN KEY (supplierid) REFERENCES public.suppliers(supplierid);


--
-- TOC entry 3227 (class 2606 OID 74236)
-- Name: receipt_documents fkfdr70tjs5rd5o2ho1i8isj0yg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receipt_documents
    ADD CONSTRAINT fkfdr70tjs5rd5o2ho1i8isj0yg FOREIGN KEY (supplierid) REFERENCES public.suppliers(supplierid);


--
-- TOC entry 3228 (class 2606 OID 74314)
-- Name: revaluations fkjgcim6t4jim7poa7a7d740e5v; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.revaluations
    ADD CONSTRAINT fkjgcim6t4jim7poa7a7d740e5v FOREIGN KEY (productid) REFERENCES public.products(product_id);


--
-- TOC entry 3225 (class 2606 OID 74231)
-- Name: product_receipts fkmjhlgy9wy1xu25ojmum4mu1m9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_receipts
    ADD CONSTRAINT fkmjhlgy9wy1xu25ojmum4mu1m9 FOREIGN KEY (receiptid) REFERENCES public.receipt_documents(receiptid);


--
-- TOC entry 3230 (class 2606 OID 74303)
-- Name: returns fkr9fg3ry37yltlbqu1rqrw5r2i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.returns
    ADD CONSTRAINT fkr9fg3ry37yltlbqu1rqrw5r2i FOREIGN KEY (productid) REFERENCES public.products(product_id);


-- Completed on 2024-02-21 11:01:51

--
-- PostgreSQL database dump complete
--

