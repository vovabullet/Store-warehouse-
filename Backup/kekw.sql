PGDMP         ;    
            |            lab-psql-web    15.3    15.3 .    /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            2           1262    74177    lab-psql-web    DATABASE     �   CREATE DATABASE "lab-psql-web" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.utf8';
    DROP DATABASE "lab-psql-web";
                postgres    false            �            1259    74179    product_receipts    TABLE     �   CREATE TABLE public.product_receipts (
    product_receiptid integer NOT NULL,
    quantity integer NOT NULL,
    wholesale_price numeric(38,2) NOT NULL,
    productid bigint,
    receiptid integer
);
 $   DROP TABLE public.product_receipts;
       public         heap    postgres    false            �            1259    74178 &   product_receipts_product_receiptid_seq    SEQUENCE     �   CREATE SEQUENCE public.product_receipts_product_receiptid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.product_receipts_product_receiptid_seq;
       public          postgres    false    215            3           0    0 &   product_receipts_product_receiptid_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.product_receipts_product_receiptid_seq OWNED BY public.product_receipts.product_receiptid;
          public          postgres    false    214            �            1259    74186    products    TABLE     �   CREATE TABLE public.products (
    product_id bigint NOT NULL,
    description text,
    name character varying(255) NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    74185    products_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.products_product_id_seq;
       public          postgres    false    217            4           0    0    products_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;
          public          postgres    false    216            �            1259    74195    receipt_documents    TABLE     �   CREATE TABLE public.receipt_documents (
    receiptid integer NOT NULL,
    receipt_date date NOT NULL,
    responsible_person character varying(255) NOT NULL,
    supplierid integer,
    warehouseid integer
);
 %   DROP TABLE public.receipt_documents;
       public         heap    postgres    false            �            1259    74194    receipt_documents_receiptid_seq    SEQUENCE     �   CREATE SEQUENCE public.receipt_documents_receiptid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.receipt_documents_receiptid_seq;
       public          postgres    false    219            5           0    0    receipt_documents_receiptid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.receipt_documents_receiptid_seq OWNED BY public.receipt_documents.receiptid;
          public          postgres    false    218            �            1259    74252    returns    TABLE     �   CREATE TABLE public.returns (
    returnid integer NOT NULL,
    quantity integer NOT NULL,
    reason text,
    return_date date NOT NULL,
    productid bigint,
    supplierid integer
);
    DROP TABLE public.returns;
       public         heap    postgres    false            �            1259    74251    returns_returnid_seq    SEQUENCE     �   CREATE SEQUENCE public.returns_returnid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.returns_returnid_seq;
       public          postgres    false    227            6           0    0    returns_returnid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.returns_returnid_seq OWNED BY public.returns.returnid;
          public          postgres    false    226            �            1259    74202    revaluations    TABLE     �   CREATE TABLE public.revaluations (
    revaluationid integer NOT NULL,
    new_price numeric(10,2) NOT NULL,
    old_price numeric(10,2) NOT NULL,
    revaluation_date date NOT NULL,
    productid bigint NOT NULL
);
     DROP TABLE public.revaluations;
       public         heap    postgres    false            �            1259    74201    revaluations_revaluationid_seq    SEQUENCE     �   CREATE SEQUENCE public.revaluations_revaluationid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.revaluations_revaluationid_seq;
       public          postgres    false    221            7           0    0    revaluations_revaluationid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.revaluations_revaluationid_seq OWNED BY public.revaluations.revaluationid;
          public          postgres    false    220            �            1259    74209 	   suppliers    TABLE     �   CREATE TABLE public.suppliers (
    supplierid integer NOT NULL,
    contact_info character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false            �            1259    74208    suppliers_supplierid_seq    SEQUENCE     �   CREATE SEQUENCE public.suppliers_supplierid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.suppliers_supplierid_seq;
       public          postgres    false    223            8           0    0    suppliers_supplierid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.suppliers_supplierid_seq OWNED BY public.suppliers.supplierid;
          public          postgres    false    222            �            1259    74218 
   warehouses    TABLE     �   CREATE TABLE public.warehouses (
    warehouseid integer NOT NULL,
    address character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.warehouses;
       public         heap    postgres    false            �            1259    74217    warehouses_warehouseid_seq    SEQUENCE     �   CREATE SEQUENCE public.warehouses_warehouseid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.warehouses_warehouseid_seq;
       public          postgres    false    225            9           0    0    warehouses_warehouseid_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.warehouses_warehouseid_seq OWNED BY public.warehouses.warehouseid;
          public          postgres    false    224            �           2604    74182 "   product_receipts product_receiptid    DEFAULT     �   ALTER TABLE ONLY public.product_receipts ALTER COLUMN product_receiptid SET DEFAULT nextval('public.product_receipts_product_receiptid_seq'::regclass);
 Q   ALTER TABLE public.product_receipts ALTER COLUMN product_receiptid DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    74279    products product_id    DEFAULT     z   ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);
 B   ALTER TABLE public.products ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    74198    receipt_documents receiptid    DEFAULT     �   ALTER TABLE ONLY public.receipt_documents ALTER COLUMN receiptid SET DEFAULT nextval('public.receipt_documents_receiptid_seq'::regclass);
 J   ALTER TABLE public.receipt_documents ALTER COLUMN receiptid DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    74255    returns returnid    DEFAULT     t   ALTER TABLE ONLY public.returns ALTER COLUMN returnid SET DEFAULT nextval('public.returns_returnid_seq'::regclass);
 ?   ALTER TABLE public.returns ALTER COLUMN returnid DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    74205    revaluations revaluationid    DEFAULT     �   ALTER TABLE ONLY public.revaluations ALTER COLUMN revaluationid SET DEFAULT nextval('public.revaluations_revaluationid_seq'::regclass);
 I   ALTER TABLE public.revaluations ALTER COLUMN revaluationid DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    74212    suppliers supplierid    DEFAULT     |   ALTER TABLE ONLY public.suppliers ALTER COLUMN supplierid SET DEFAULT nextval('public.suppliers_supplierid_seq'::regclass);
 C   ALTER TABLE public.suppliers ALTER COLUMN supplierid DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    74221    warehouses warehouseid    DEFAULT     �   ALTER TABLE ONLY public.warehouses ALTER COLUMN warehouseid SET DEFAULT nextval('public.warehouses_warehouseid_seq'::regclass);
 E   ALTER TABLE public.warehouses ALTER COLUMN warehouseid DROP DEFAULT;
       public          postgres    false    224    225    225            �           2606    74184 &   product_receipts product_receipts_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.product_receipts
    ADD CONSTRAINT product_receipts_pkey PRIMARY KEY (product_receiptid);
 P   ALTER TABLE ONLY public.product_receipts DROP CONSTRAINT product_receipts_pkey;
       public            postgres    false    215            �           2606    74281    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    217            �           2606    74200 (   receipt_documents receipt_documents_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.receipt_documents
    ADD CONSTRAINT receipt_documents_pkey PRIMARY KEY (receiptid);
 R   ALTER TABLE ONLY public.receipt_documents DROP CONSTRAINT receipt_documents_pkey;
       public            postgres    false    219            �           2606    74259    returns returns_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.returns
    ADD CONSTRAINT returns_pkey PRIMARY KEY (returnid);
 >   ALTER TABLE ONLY public.returns DROP CONSTRAINT returns_pkey;
       public            postgres    false    227            �           2606    74207    revaluations revaluations_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.revaluations
    ADD CONSTRAINT revaluations_pkey PRIMARY KEY (revaluationid);
 H   ALTER TABLE ONLY public.revaluations DROP CONSTRAINT revaluations_pkey;
       public            postgres    false    221            �           2606    74216    suppliers suppliers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (supplierid);
 B   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_pkey;
       public            postgres    false    223            �           2606    74225    warehouses warehouses_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.warehouses
    ADD CONSTRAINT warehouses_pkey PRIMARY KEY (warehouseid);
 D   ALTER TABLE ONLY public.warehouses DROP CONSTRAINT warehouses_pkey;
       public            postgres    false    225            �           2606    74292 ,   product_receipts fk1i74nxn335laccfg44si6la7s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_receipts
    ADD CONSTRAINT fk1i74nxn335laccfg44si6la7s FOREIGN KEY (productid) REFERENCES public.products(product_id);
 V   ALTER TABLE ONLY public.product_receipts DROP CONSTRAINT fk1i74nxn335laccfg44si6la7s;
       public          postgres    false    217    215    3213            �           2606    74241 -   receipt_documents fk3rerl59vdhxpx23p1t0xgj91q    FK CONSTRAINT     �   ALTER TABLE ONLY public.receipt_documents
    ADD CONSTRAINT fk3rerl59vdhxpx23p1t0xgj91q FOREIGN KEY (warehouseid) REFERENCES public.warehouses(warehouseid);
 W   ALTER TABLE ONLY public.receipt_documents DROP CONSTRAINT fk3rerl59vdhxpx23p1t0xgj91q;
       public          postgres    false    219    225    3221            �           2606    74265 #   returns fkc7jechmmbfj2dd4ghfsfhvs4q    FK CONSTRAINT     �   ALTER TABLE ONLY public.returns
    ADD CONSTRAINT fkc7jechmmbfj2dd4ghfsfhvs4q FOREIGN KEY (supplierid) REFERENCES public.suppliers(supplierid);
 M   ALTER TABLE ONLY public.returns DROP CONSTRAINT fkc7jechmmbfj2dd4ghfsfhvs4q;
       public          postgres    false    223    227    3219            �           2606    74236 -   receipt_documents fkfdr70tjs5rd5o2ho1i8isj0yg    FK CONSTRAINT     �   ALTER TABLE ONLY public.receipt_documents
    ADD CONSTRAINT fkfdr70tjs5rd5o2ho1i8isj0yg FOREIGN KEY (supplierid) REFERENCES public.suppliers(supplierid);
 W   ALTER TABLE ONLY public.receipt_documents DROP CONSTRAINT fkfdr70tjs5rd5o2ho1i8isj0yg;
       public          postgres    false    219    223    3219            �           2606    74314 (   revaluations fkjgcim6t4jim7poa7a7d740e5v    FK CONSTRAINT     �   ALTER TABLE ONLY public.revaluations
    ADD CONSTRAINT fkjgcim6t4jim7poa7a7d740e5v FOREIGN KEY (productid) REFERENCES public.products(product_id);
 R   ALTER TABLE ONLY public.revaluations DROP CONSTRAINT fkjgcim6t4jim7poa7a7d740e5v;
       public          postgres    false    3213    221    217            �           2606    74231 ,   product_receipts fkmjhlgy9wy1xu25ojmum4mu1m9    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_receipts
    ADD CONSTRAINT fkmjhlgy9wy1xu25ojmum4mu1m9 FOREIGN KEY (receiptid) REFERENCES public.receipt_documents(receiptid);
 V   ALTER TABLE ONLY public.product_receipts DROP CONSTRAINT fkmjhlgy9wy1xu25ojmum4mu1m9;
       public          postgres    false    215    219    3215            �           2606    74303 #   returns fkr9fg3ry37yltlbqu1rqrw5r2i    FK CONSTRAINT     �   ALTER TABLE ONLY public.returns
    ADD CONSTRAINT fkr9fg3ry37yltlbqu1rqrw5r2i FOREIGN KEY (productid) REFERENCES public.products(product_id);
 M   ALTER TABLE ONLY public.returns DROP CONSTRAINT fkr9fg3ry37yltlbqu1rqrw5r2i;
       public          postgres    false    227    3213    217           