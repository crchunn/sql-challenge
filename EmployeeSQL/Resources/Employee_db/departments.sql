PGDMP     6    4    
            x           SQL_Employees_db    11.8    11.8                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16930    SQL_Employees_db    DATABASE     �   CREATE DATABASE "SQL_Employees_db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 "   DROP DATABASE "SQL_Employees_db";
             postgres    false            �            1259    17034    Departments    TABLE     x   CREATE TABLE public."Departments" (
    dept_no character varying NOT NULL,
    dept_name character varying NOT NULL
);
 !   DROP TABLE public."Departments";
       public         postgres    false            	          0    17034    Departments 
   TABLE DATA               ;   COPY public."Departments" (dept_no, dept_name) FROM stdin;
    public       postgres    false    199   �       �
           2606    17041    Departments Departments_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "Departments_pkey" PRIMARY KEY (dept_no);
 J   ALTER TABLE ONLY public."Departments" DROP CONSTRAINT "Departments_pkey";
       public         postgres    false    199            	   �   x�5��
1 ��W�$��V��@��fI�3\��Mr��{A,g�g�:����A9cVp�l���5"��T�Rnr7I���7�&
��K;�W�|t����z���$��W�#�j.)��d����PJ}l1W     