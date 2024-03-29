PGDMP                         w            PROYECTO_INTERCICLO    11.4    11.4     
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16413    PROYECTO_INTERCICLO    DATABASE     �   CREATE DATABASE "PROYECTO_INTERCICLO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
 %   DROP DATABASE "PROYECTO_INTERCICLO";
             postgres    false            �            1259    16422    AUTO    TABLE     �   CREATE TABLE public."AUTO" (
    "AUT_PLACA" text NOT NULL,
    "AUT_MODELO" text,
    "AUT_COLOR" text,
    "AUT_AÑO" integer,
    "PER_CEDULA" text
);
    DROP TABLE public."AUTO";
       public         postgres    false            �            1259    16430 
   AUTOROBADO    TABLE     �   CREATE TABLE public."AUTOROBADO" (
    "AUT_PLACA" text NOT NULL,
    "AUT_MODELO" text,
    "AUT_COLOR" text,
    "AUT_AÑO" integer,
    "AUT_FECHAROBO" date,
    "PER_CEDULA" text
);
     DROP TABLE public."AUTOROBADO";
       public         postgres    false            �            1259    16414    PERSONA    TABLE     �   CREATE TABLE public."PERSONA" (
    "PER_CEDULA" text NOT NULL,
    "PER_NOMBRE" text,
    "PER_APELLIDO" text,
    "PER_EDAD" integer,
    "PER_DIRECCION" text
);
    DROP TABLE public."PERSONA";
       public         postgres    false                      0    16422    AUTO 
   TABLE DATA               b   COPY public."AUTO" ("AUT_PLACA", "AUT_MODELO", "AUT_COLOR", "AUT_AÑO", "PER_CEDULA") FROM stdin;
    public       postgres    false    197   �                 0    16430 
   AUTOROBADO 
   TABLE DATA               y   COPY public."AUTOROBADO" ("AUT_PLACA", "AUT_MODELO", "AUT_COLOR", "AUT_AÑO", "AUT_FECHAROBO", "PER_CEDULA") FROM stdin;
    public       postgres    false    198                    0    16414    PERSONA 
   TABLE DATA               l   COPY public."PERSONA" ("PER_CEDULA", "PER_NOMBRE", "PER_APELLIDO", "PER_EDAD", "PER_DIRECCION") FROM stdin;
    public       postgres    false    196          �
           2606    16437    AUTOROBADO AUTOROBADO_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."AUTOROBADO"
    ADD CONSTRAINT "AUTOROBADO_pkey" PRIMARY KEY ("AUT_PLACA");
 H   ALTER TABLE ONLY public."AUTOROBADO" DROP CONSTRAINT "AUTOROBADO_pkey";
       public         postgres    false    198            �
           2606    16429    AUTO AUTO_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."AUTO"
    ADD CONSTRAINT "AUTO_pkey" PRIMARY KEY ("AUT_PLACA");
 <   ALTER TABLE ONLY public."AUTO" DROP CONSTRAINT "AUTO_pkey";
       public         postgres    false    197            �
           2606    16421    PERSONA PERSONA_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."PERSONA"
    ADD CONSTRAINT "PERSONA_pkey" PRIMARY KEY ("PER_CEDULA");
 B   ALTER TABLE ONLY public."PERSONA" DROP CONSTRAINT "PERSONA_pkey";
       public         postgres    false    196               C   x�K442��M�JI�,����4NCS#3s��DcC#Β����Dμ��"�d%1z\\\ ��:            x������ � �         U   x�3040�00230��*M�S ��EE�
`��؄3�41'195������-�Qll`dl`fjbL�bC#cS3sK"��qqq �7+     