PGDMP     1    3    
            x           SQL_Employees_db    11.8    11.8                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16930    SQL_Employees_db    DATABASE     �   CREATE DATABASE "SQL_Employees_db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 "   DROP DATABASE "SQL_Employees_db";
             postgres    false            �            1259    17058    Department_Mgr    TABLE     n   CREATE TABLE public."Department_Mgr" (
    dept_no character varying NOT NULL,
    emp_no integer NOT NULL
);
 $   DROP TABLE public."Department_Mgr";
       public         postgres    false            	          0    17058    Department_Mgr 
   TABLE DATA               ;   COPY public."Department_Mgr" (dept_no, emp_no) FROM stdin;
    public       postgres    false    201   w       �
           2606    17069 (   Department_Mgr fk_Department_Mgr_dept_no    FK CONSTRAINT     �   ALTER TABLE ONLY public."Department_Mgr"
    ADD CONSTRAINT "fk_Department_Mgr_dept_no" FOREIGN KEY (dept_no) REFERENCES public."Departments"(dept_no);
 V   ALTER TABLE ONLY public."Department_Mgr" DROP CONSTRAINT "fk_Department_Mgr_dept_no";
       public       postgres    false    201            �
           2606    17064 '   Department_Mgr fk_Department_Mgr_emp_no    FK CONSTRAINT     �   ALTER TABLE ONLY public."Department_Mgr"
    ADD CONSTRAINT "fk_Department_Mgr_emp_no" FOREIGN KEY (emp_no) REFERENCES public."Employee"(emp_no);
 U   ALTER TABLE ONLY public."Department_Mgr" DROP CONSTRAINT "fk_Department_Mgr_emp_no";
       public       postgres    false    201            	   o   x�E��C1�s\L�jp/9��k��(p{B���Hd=끥��f6X˩m��Vұ�8wۄ`��y��p���8��^�q}x��nH�~��k����#g��s��y���B6,     