PGDMP     4    5    
            x           SQL_Employees_db    11.8    11.8                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16930    SQL_Employees_db    DATABASE     �   CREATE DATABASE "SQL_Employees_db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 "   DROP DATABASE "SQL_Employees_db";
             postgres    false            �            1259    17005    Titles    TABLE     p   CREATE TABLE public."Titles" (
    title_id character varying NOT NULL,
    title character varying NOT NULL
);
    DROP TABLE public."Titles";
       public         postgres    false            	          0    17005    Titles 
   TABLE DATA               3   COPY public."Titles" (title_id, title) FROM stdin;
    public       postgres    false    196   Y       �
           2606    17012    Titles Titles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Titles"
    ADD CONSTRAINT "Titles_pkey" PRIMARY KEY (title_id);
 @   ALTER TABLE ONLY public."Titles" DROP CONSTRAINT "Titles_pkey";
       public         postgres    false    196            	   b   x�+6000�.ILK�*��8�S�2� B�`i�����ļ׼�̼��"��'
��EԄ3$59#/��4U�'51(�6�71/1ȋ���� �(�     