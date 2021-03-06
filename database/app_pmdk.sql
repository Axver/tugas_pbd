PGDMP     2                    w            app_pmdk    11.1    11.1 D    s           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            t           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            u           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            v           1262    45970    app_pmdk    DATABASE     �   CREATE DATABASE app_pmdk WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE app_pmdk;
             postgres    false            �            1259    46024    agama    TABLE     g   CREATE TABLE public.agama (
    id_agama integer NOT NULL,
    agama character varying(20) NOT NULL
);
    DROP TABLE public.agama;
       public         postgres    false            �            1259    45981    asal_jurusan    TABLE     �   CREATE TABLE public.asal_jurusan (
    kode_jurusan character varying(10) NOT NULL,
    nama_jurusan character varying(20) NOT NULL
);
     DROP TABLE public.asal_jurusan;
       public         postgres    false            �            1259    46029    biodata    TABLE     �  CREATE TABLE public.biodata (
    nisn integer NOT NULL,
    no_pendaftaran integer NOT NULL,
    thn_pendaftaran integer NOT NULL,
    id_status_bm integer NOT NULL,
    kode_jurusan character varying(10) NOT NULL,
    username character varying(30) NOT NULL,
    npsn character varying(10) NOT NULL,
    id_jk integer NOT NULL,
    id_kabupaten integer NOT NULL,
    id_agama integer NOT NULL,
    nama character varying(20) NOT NULL,
    asal_jurusan character varying(10) NOT NULL,
    akselerasi character varying(10) NOT NULL,
    ttl character varying(30) NOT NULL,
    alamat character varying(100) NOT NULL,
    asal_sekolah character varying(50) NOT NULL
);
    DROP TABLE public.biodata;
       public         postgres    false            �            1259    45999    daftar_mapel    TABLE     �   CREATE TABLE public.daftar_mapel (
    kode_mapel character varying(10) NOT NULL,
    nama_mapel character varying(20) NOT NULL
);
     DROP TABLE public.daftar_mapel;
       public         postgres    false            �            1259    46004    daftar_poltek    TABLE     ~   CREATE TABLE public.daftar_poltek (
    id_politeknik integer NOT NULL,
    nama_politeknik character varying(30) NOT NULL
);
 !   DROP TABLE public.daftar_poltek;
       public         postgres    false            �            1259    45994    jenis_kelamin    TABLE     t   CREATE TABLE public.jenis_kelamin (
    id_jk integer NOT NULL,
    jenis_kelamin character varying(10) NOT NULL
);
 !   DROP TABLE public.jenis_kelamin;
       public         postgres    false            �            1259    46019 	   kabupaten    TABLE     �   CREATE TABLE public.kabupaten (
    id_kabupaten integer NOT NULL,
    id_provinsi integer NOT NULL,
    nama_kabupaten character varying(20) NOT NULL
);
    DROP TABLE public.kabupaten;
       public         postgres    false            �            1259    46049    nilai_semester    TABLE     %  CREATE TABLE public.nilai_semester (
    id_nilai integer NOT NULL,
    nisn integer NOT NULL,
    no_pendaftaran integer NOT NULL,
    thn_pendaftaran integer NOT NULL,
    semester integer NOT NULL,
    kode_mapel character varying(10) NOT NULL,
    nilai_mapel double precision NOT NULL
);
 "   DROP TABLE public.nilai_semester;
       public         postgres    false            �            1259    46034    pilihan_    TABLE     �   CREATE TABLE public.pilihan_ (
    pilihan integer NOT NULL,
    nisn integer NOT NULL,
    no_pendaftaran integer NOT NULL,
    thn_pendaftaran integer NOT NULL,
    id_prodi integer NOT NULL
);
    DROP TABLE public.pilihan_;
       public         postgres    false            �            1259    46039    prestasi    TABLE     r  CREATE TABLE public.prestasi (
    id_prestasi integer NOT NULL,
    nisn integer NOT NULL,
    no_pendaftaran integer NOT NULL,
    thn_pendaftaran integer NOT NULL,
    nama_prestasi character varying(30) NOT NULL,
    skala character varying(30) NOT NULL,
    jenis character varying(20) NOT NULL,
    juara character varying(30) NOT NULL,
    tahun date NOT NULL
);
    DROP TABLE public.prestasi;
       public         postgres    false            �            1259    46009    prodi    TABLE     �   CREATE TABLE public.prodi (
    id_prodi integer NOT NULL,
    id_politeknik integer NOT NULL,
    nama_prodi character varying(30) NOT NULL
);
    DROP TABLE public.prodi;
       public         postgres    false            �            1259    46014    provinsi    TABLE     p   CREATE TABLE public.provinsi (
    id_provinsi integer NOT NULL,
    provinsi character varying(20) NOT NULL
);
    DROP TABLE public.provinsi;
       public         postgres    false            �            1259    45986    sekolah    TABLE     �   CREATE TABLE public.sekolah (
    npsn character varying(10) NOT NULL,
    username character varying(30) NOT NULL,
    nama_sekolah character varying(20) NOT NULL,
    alamat_sekolah character varying NOT NULL
);
    DROP TABLE public.sekolah;
       public         postgres    false            �            1259    46044    semester    TABLE     �   CREATE TABLE public.semester (
    nisn integer NOT NULL,
    no_pendaftaran integer NOT NULL,
    thn_pendaftaran integer NOT NULL,
    semester integer NOT NULL,
    peringkat integer NOT NULL
);
    DROP TABLE public.semester;
       public         postgres    false            �            1259    45976    status_bidikmisi    TABLE     w   CREATE TABLE public.status_bidikmisi (
    id_status_bm integer NOT NULL,
    status character varying(10) NOT NULL
);
 $   DROP TABLE public.status_bidikmisi;
       public         postgres    false            �            1259    45971 	   user_pmdk    TABLE     �   CREATE TABLE public.user_pmdk (
    username character varying(30) NOT NULL,
    created_by character varying(20) NOT NULL,
    password character varying(30) NOT NULL,
    jenis_user character varying(20) NOT NULL
);
    DROP TABLE public.user_pmdk;
       public         postgres    false            k          0    46024    agama 
   TABLE DATA               0   COPY public.agama (id_agama, agama) FROM stdin;
    public       postgres    false    206   VV       c          0    45981    asal_jurusan 
   TABLE DATA               B   COPY public.asal_jurusan (kode_jurusan, nama_jurusan) FROM stdin;
    public       postgres    false    198   �V       l          0    46029    biodata 
   TABLE DATA               �   COPY public.biodata (nisn, no_pendaftaran, thn_pendaftaran, id_status_bm, kode_jurusan, username, npsn, id_jk, id_kabupaten, id_agama, nama, asal_jurusan, akselerasi, ttl, alamat, asal_sekolah) FROM stdin;
    public       postgres    false    207   �V       f          0    45999    daftar_mapel 
   TABLE DATA               >   COPY public.daftar_mapel (kode_mapel, nama_mapel) FROM stdin;
    public       postgres    false    201   W       g          0    46004    daftar_poltek 
   TABLE DATA               G   COPY public.daftar_poltek (id_politeknik, nama_politeknik) FROM stdin;
    public       postgres    false    202   aW       e          0    45994    jenis_kelamin 
   TABLE DATA               =   COPY public.jenis_kelamin (id_jk, jenis_kelamin) FROM stdin;
    public       postgres    false    200   ~W       j          0    46019 	   kabupaten 
   TABLE DATA               N   COPY public.kabupaten (id_kabupaten, id_provinsi, nama_kabupaten) FROM stdin;
    public       postgres    false    205   �W       p          0    46049    nilai_semester 
   TABLE DATA               |   COPY public.nilai_semester (id_nilai, nisn, no_pendaftaran, thn_pendaftaran, semester, kode_mapel, nilai_mapel) FROM stdin;
    public       postgres    false    211   �X       m          0    46034    pilihan_ 
   TABLE DATA               \   COPY public.pilihan_ (pilihan, nisn, no_pendaftaran, thn_pendaftaran, id_prodi) FROM stdin;
    public       postgres    false    208   �X       n          0    46039    prestasi 
   TABLE DATA               �   COPY public.prestasi (id_prestasi, nisn, no_pendaftaran, thn_pendaftaran, nama_prestasi, skala, jenis, juara, tahun) FROM stdin;
    public       postgres    false    209   �X       h          0    46009    prodi 
   TABLE DATA               D   COPY public.prodi (id_prodi, id_politeknik, nama_prodi) FROM stdin;
    public       postgres    false    203   �X       i          0    46014    provinsi 
   TABLE DATA               9   COPY public.provinsi (id_provinsi, provinsi) FROM stdin;
    public       postgres    false    204   �X       d          0    45986    sekolah 
   TABLE DATA               O   COPY public.sekolah (npsn, username, nama_sekolah, alamat_sekolah) FROM stdin;
    public       postgres    false    199   ,Y       o          0    46044    semester 
   TABLE DATA               ^   COPY public.semester (nisn, no_pendaftaran, thn_pendaftaran, semester, peringkat) FROM stdin;
    public       postgres    false    210   �Y       b          0    45976    status_bidikmisi 
   TABLE DATA               @   COPY public.status_bidikmisi (id_status_bm, status) FROM stdin;
    public       postgres    false    197   �Y       a          0    45971 	   user_pmdk 
   TABLE DATA               O   COPY public.user_pmdk (username, created_by, password, jenis_user) FROM stdin;
    public       postgres    false    196   �Y       �
           2606    46028    agama agama_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.agama
    ADD CONSTRAINT agama_pk PRIMARY KEY (id_agama);
 8   ALTER TABLE ONLY public.agama DROP CONSTRAINT agama_pk;
       public         postgres    false    206            �
           2606    45985    asal_jurusan asal_jurusan_pk 
   CONSTRAINT     d   ALTER TABLE ONLY public.asal_jurusan
    ADD CONSTRAINT asal_jurusan_pk PRIMARY KEY (kode_jurusan);
 F   ALTER TABLE ONLY public.asal_jurusan DROP CONSTRAINT asal_jurusan_pk;
       public         postgres    false    198            �
           2606    46033    biodata biodata_pk 
   CONSTRAINT     s   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT biodata_pk PRIMARY KEY (nisn, no_pendaftaran, thn_pendaftaran);
 <   ALTER TABLE ONLY public.biodata DROP CONSTRAINT biodata_pk;
       public         postgres    false    207    207    207            �
           2606    46003    daftar_mapel daftar_mapel_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.daftar_mapel
    ADD CONSTRAINT daftar_mapel_pk PRIMARY KEY (kode_mapel);
 F   ALTER TABLE ONLY public.daftar_mapel DROP CONSTRAINT daftar_mapel_pk;
       public         postgres    false    201            �
           2606    46008    daftar_poltek daftar_poltek_pk 
   CONSTRAINT     g   ALTER TABLE ONLY public.daftar_poltek
    ADD CONSTRAINT daftar_poltek_pk PRIMARY KEY (id_politeknik);
 H   ALTER TABLE ONLY public.daftar_poltek DROP CONSTRAINT daftar_poltek_pk;
       public         postgres    false    202            �
           2606    45998    jenis_kelamin jenis_kelamin_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public.jenis_kelamin
    ADD CONSTRAINT jenis_kelamin_pk PRIMARY KEY (id_jk);
 H   ALTER TABLE ONLY public.jenis_kelamin DROP CONSTRAINT jenis_kelamin_pk;
       public         postgres    false    200            �
           2606    46023    kabupaten kabupaten_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.kabupaten
    ADD CONSTRAINT kabupaten_pk PRIMARY KEY (id_kabupaten);
 @   ALTER TABLE ONLY public.kabupaten DROP CONSTRAINT kabupaten_pk;
       public         postgres    false    205            �
           2606    46053     nilai_semester nilai_semester_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.nilai_semester
    ADD CONSTRAINT nilai_semester_pk PRIMARY KEY (id_nilai, nisn, no_pendaftaran, thn_pendaftaran, semester, kode_mapel);
 J   ALTER TABLE ONLY public.nilai_semester DROP CONSTRAINT nilai_semester_pk;
       public         postgres    false    211    211    211    211    211    211            �
           2606    46038    pilihan_ pilihan__pk 
   CONSTRAINT     ~   ALTER TABLE ONLY public.pilihan_
    ADD CONSTRAINT pilihan__pk PRIMARY KEY (pilihan, nisn, no_pendaftaran, thn_pendaftaran);
 >   ALTER TABLE ONLY public.pilihan_ DROP CONSTRAINT pilihan__pk;
       public         postgres    false    208    208    208    208            �
           2606    46043    prestasi prestasi_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.prestasi
    ADD CONSTRAINT prestasi_pk PRIMARY KEY (id_prestasi, nisn, no_pendaftaran, thn_pendaftaran);
 >   ALTER TABLE ONLY public.prestasi DROP CONSTRAINT prestasi_pk;
       public         postgres    false    209    209    209    209            �
           2606    46013    prodi prodi_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.prodi
    ADD CONSTRAINT prodi_pk PRIMARY KEY (id_prodi);
 8   ALTER TABLE ONLY public.prodi DROP CONSTRAINT prodi_pk;
       public         postgres    false    203            �
           2606    46018    provinsi provinsi_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.provinsi
    ADD CONSTRAINT provinsi_pk PRIMARY KEY (id_provinsi);
 >   ALTER TABLE ONLY public.provinsi DROP CONSTRAINT provinsi_pk;
       public         postgres    false    204            �
           2606    45993    sekolah sekolah_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.sekolah
    ADD CONSTRAINT sekolah_pk PRIMARY KEY (npsn);
 <   ALTER TABLE ONLY public.sekolah DROP CONSTRAINT sekolah_pk;
       public         postgres    false    199            �
           2606    46048    semester semester_pk 
   CONSTRAINT        ALTER TABLE ONLY public.semester
    ADD CONSTRAINT semester_pk PRIMARY KEY (nisn, no_pendaftaran, thn_pendaftaran, semester);
 >   ALTER TABLE ONLY public.semester DROP CONSTRAINT semester_pk;
       public         postgres    false    210    210    210    210            �
           2606    45980 $   status_bidikmisi status_bidikmisi_pk 
   CONSTRAINT     l   ALTER TABLE ONLY public.status_bidikmisi
    ADD CONSTRAINT status_bidikmisi_pk PRIMARY KEY (id_status_bm);
 N   ALTER TABLE ONLY public.status_bidikmisi DROP CONSTRAINT status_bidikmisi_pk;
       public         postgres    false    197            �
           2606    45975    user_pmdk user_pmdk_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_pmdk
    ADD CONSTRAINT user_pmdk_pk PRIMARY KEY (username);
 @   ALTER TABLE ONLY public.user_pmdk DROP CONSTRAINT user_pmdk_pk;
       public         postgres    false    196            �
           2606    46109    biodata agama_biodata_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT agama_biodata_fk FOREIGN KEY (id_agama) REFERENCES public.agama(id_agama);
 B   ALTER TABLE ONLY public.biodata DROP CONSTRAINT agama_biodata_fk;
       public       postgres    false    2765    207    206            �
           2606    46069    biodata asal_jurusan_biodata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT asal_jurusan_biodata_fk FOREIGN KEY (kode_jurusan) REFERENCES public.asal_jurusan(kode_jurusan);
 I   ALTER TABLE ONLY public.biodata DROP CONSTRAINT asal_jurusan_biodata_fk;
       public       postgres    false    198    207    2749            �
           2606    46124    pilihan_ biodata_pilihan__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pilihan_
    ADD CONSTRAINT biodata_pilihan__fk FOREIGN KEY (nisn, no_pendaftaran, thn_pendaftaran) REFERENCES public.biodata(nisn, no_pendaftaran, thn_pendaftaran);
 F   ALTER TABLE ONLY public.pilihan_ DROP CONSTRAINT biodata_pilihan__fk;
       public       postgres    false    207    2767    207    207    208    208    208            �
           2606    46119    prestasi biodata_prestasi_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestasi
    ADD CONSTRAINT biodata_prestasi_fk FOREIGN KEY (nisn, no_pendaftaran, thn_pendaftaran) REFERENCES public.biodata(nisn, no_pendaftaran, thn_pendaftaran);
 F   ALTER TABLE ONLY public.prestasi DROP CONSTRAINT biodata_prestasi_fk;
       public       postgres    false    207    207    209    209    209    2767    207            �
           2606    46114    semester biodata_semester_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.semester
    ADD CONSTRAINT biodata_semester_fk FOREIGN KEY (nisn, no_pendaftaran, thn_pendaftaran) REFERENCES public.biodata(nisn, no_pendaftaran, thn_pendaftaran);
 F   ALTER TABLE ONLY public.semester DROP CONSTRAINT biodata_semester_fk;
       public       postgres    false    210    207    207    210    210    207    2767            �
           2606    46084 -   nilai_semester daftar_mapel_nilai_semester_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.nilai_semester
    ADD CONSTRAINT daftar_mapel_nilai_semester_fk FOREIGN KEY (kode_mapel) REFERENCES public.daftar_mapel(kode_mapel);
 W   ALTER TABLE ONLY public.nilai_semester DROP CONSTRAINT daftar_mapel_nilai_semester_fk;
       public       postgres    false    2755    201    211            �
           2606    46089    prodi daftar_poltek_prodi_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.prodi
    ADD CONSTRAINT daftar_poltek_prodi_fk FOREIGN KEY (id_politeknik) REFERENCES public.daftar_poltek(id_politeknik);
 F   ALTER TABLE ONLY public.prodi DROP CONSTRAINT daftar_poltek_prodi_fk;
       public       postgres    false    202    2757    203            �
           2606    46079     biodata jenis_kelamin_biodata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT jenis_kelamin_biodata_fk FOREIGN KEY (id_jk) REFERENCES public.jenis_kelamin(id_jk);
 J   ALTER TABLE ONLY public.biodata DROP CONSTRAINT jenis_kelamin_biodata_fk;
       public       postgres    false    2753    200    207            �
           2606    46104    biodata kabupaten_biodata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT kabupaten_biodata_fk FOREIGN KEY (id_kabupaten) REFERENCES public.kabupaten(id_kabupaten);
 F   ALTER TABLE ONLY public.biodata DROP CONSTRAINT kabupaten_biodata_fk;
       public       postgres    false    207    205    2763            �
           2606    46094    pilihan_ prodi_pilihan__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pilihan_
    ADD CONSTRAINT prodi_pilihan__fk FOREIGN KEY (id_prodi) REFERENCES public.prodi(id_prodi);
 D   ALTER TABLE ONLY public.pilihan_ DROP CONSTRAINT prodi_pilihan__fk;
       public       postgres    false    203    2759    208            �
           2606    46099    kabupaten provinsi_kabupaten_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.kabupaten
    ADD CONSTRAINT provinsi_kabupaten_fk FOREIGN KEY (id_provinsi) REFERENCES public.provinsi(id_provinsi);
 I   ALTER TABLE ONLY public.kabupaten DROP CONSTRAINT provinsi_kabupaten_fk;
       public       postgres    false    204    2761    205            �
           2606    46074    biodata sekolah_biodata_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT sekolah_biodata_fk FOREIGN KEY (npsn) REFERENCES public.sekolah(npsn);
 D   ALTER TABLE ONLY public.biodata DROP CONSTRAINT sekolah_biodata_fk;
       public       postgres    false    199    2751    207            �
           2606    46129     nilai_semester semester_nilai_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.nilai_semester
    ADD CONSTRAINT semester_nilai_fk FOREIGN KEY (nisn, no_pendaftaran, thn_pendaftaran, semester) REFERENCES public.semester(nisn, no_pendaftaran, thn_pendaftaran, semester);
 J   ALTER TABLE ONLY public.nilai_semester DROP CONSTRAINT semester_nilai_fk;
       public       postgres    false    211    211    211    210    210    210    2773    210    211            �
           2606    46064 #   biodata status_bidikmisi_biodata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT status_bidikmisi_biodata_fk FOREIGN KEY (id_status_bm) REFERENCES public.status_bidikmisi(id_status_bm);
 M   ALTER TABLE ONLY public.biodata DROP CONSTRAINT status_bidikmisi_biodata_fk;
       public       postgres    false    197    207    2747            �
           2606    46059    biodata user_biodata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT user_biodata_fk FOREIGN KEY (username) REFERENCES public.user_pmdk(username);
 A   ALTER TABLE ONLY public.biodata DROP CONSTRAINT user_biodata_fk;
       public       postgres    false    196    2745    207            �
           2606    46054    sekolah user_sekolah_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sekolah
    ADD CONSTRAINT user_sekolah_fk FOREIGN KEY (username) REFERENCES public.user_pmdk(username);
 A   ALTER TABLE ONLY public.sekolah DROP CONSTRAINT user_sekolah_fk;
       public       postgres    false    196    2745    199            k   d   x�=�;
�0E�z�*\�࿷Ҹ �A�	�D�L��p�V���j2ѧlSa�p��Os_2Z��l��F��'dw*�b���΢�0��q凿e)�ϻ!      c      x�3��p�2��\1z\\\  �      l      x������ � �      f   C   x�3��M,I�M,��N�2�t�,1�9�3s3�L8�3�<��Ӌ2��L)�y��@51z\\\ �t      g      x������ � �      e   "   x�3��I���\F��E����y\1z\\\       j   �   x�E��j1E��W�J�$},�K�e7�t���=�cQ����v
Z\�t�+^u�������z$Z[������X��6�>�om�I��4jp����[����P�m���K���0�,��CD5�b���f+O|��)N#1��e������&��Q�;J�^�7��v�g�����&w���Sq���5׉>��$�V�      p      x������ � �      m      x������ � �      n      x������ � �      h      x������ � �      i      x�3�.�M,I-JTpJ,J,����� O�9      d   Y   x�]�;
�0 й9EO ��\u
�.9@��G����V$����unӆ=���>�0��Aa�J��`���!>$C}h� ?��85      o      x������ � �      b      x�3���L�2��LI������ .B      a   b   x�]ν
�0��<�`ӟ�q	(Xju���Kk��Kr|��l5_��/�*�m/�)Gww���=�[�`=£�O�ܞ>ol���W8����Xg"z��Z=     