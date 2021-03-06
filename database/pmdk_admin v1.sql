PGDMP     '                    w         
   pmdk_admin    11.1    11.1 D    s           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            t           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            u           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            v           1262    46147 
   pmdk_admin    DATABASE     �   CREATE DATABASE pmdk_admin WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE pmdk_admin;
             postgres    false            �            1259    46201    agama    TABLE     g   CREATE TABLE public.agama (
    id_agama integer NOT NULL,
    agama character varying(20) NOT NULL
);
    DROP TABLE public.agama;
       public         postgres    false            �            1259    46158    asal_jurusan    TABLE     �   CREATE TABLE public.asal_jurusan (
    kode_jurusan character varying(10) NOT NULL,
    nama_jurusan character varying(20) NOT NULL
);
     DROP TABLE public.asal_jurusan;
       public         postgres    false            �            1259    46206    biodata    TABLE     �  CREATE TABLE public.biodata (
    nisn integer NOT NULL,
    thn_pendaftaran integer NOT NULL,
    no_pendaftaran integer NOT NULL,
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
    image character varying(40)
);
    DROP TABLE public.biodata;
       public         postgres    false            �            1259    46176    daftar_mapel    TABLE     �   CREATE TABLE public.daftar_mapel (
    kode_mapel character varying(10) NOT NULL,
    nama_mapel character varying(20) NOT NULL
);
     DROP TABLE public.daftar_mapel;
       public         postgres    false            �            1259    46181    daftar_poltek    TABLE     ~   CREATE TABLE public.daftar_poltek (
    id_politeknik integer NOT NULL,
    nama_politeknik character varying(30) NOT NULL
);
 !   DROP TABLE public.daftar_poltek;
       public         postgres    false            �            1259    46171    jenis_kelamin    TABLE     t   CREATE TABLE public.jenis_kelamin (
    id_jk integer NOT NULL,
    jenis_kelamin character varying(10) NOT NULL
);
 !   DROP TABLE public.jenis_kelamin;
       public         postgres    false            �            1259    46196 	   kabupaten    TABLE     �   CREATE TABLE public.kabupaten (
    id_kabupaten integer NOT NULL,
    id_provinsi integer NOT NULL,
    nama_kabupaten character varying(20) NOT NULL
);
    DROP TABLE public.kabupaten;
       public         postgres    false            �            1259    46226    nilai_semester    TABLE     �   CREATE TABLE public.nilai_semester (
    nisn integer NOT NULL,
    thn_pendaftaran integer NOT NULL,
    semester integer NOT NULL,
    kode_mapel character varying(10) NOT NULL,
    nilai_mapel double precision NOT NULL
);
 "   DROP TABLE public.nilai_semester;
       public         postgres    false            �            1259    46211    pilihan_    TABLE     �   CREATE TABLE public.pilihan_ (
    pilihan integer NOT NULL,
    nisn integer NOT NULL,
    thn_pendaftaran integer NOT NULL,
    id_prodi integer NOT NULL
);
    DROP TABLE public.pilihan_;
       public         postgres    false            �            1259    46216    prestasi    TABLE     U  CREATE TABLE public.prestasi (
    id_prestasi integer NOT NULL,
    nisn integer NOT NULL,
    thn_pendaftaran integer NOT NULL,
    nama_prestasi character varying(30) NOT NULL,
    skala character varying(30) NOT NULL,
    jenis character varying(20) NOT NULL,
    juara character varying(30) NOT NULL,
    tahun character varying(30)
);
    DROP TABLE public.prestasi;
       public         postgres    false            �            1259    46186    prodi    TABLE     �   CREATE TABLE public.prodi (
    id_prodi integer NOT NULL,
    id_politeknik integer NOT NULL,
    nama_prodi character varying(30) NOT NULL
);
    DROP TABLE public.prodi;
       public         postgres    false            �            1259    46191    provinsi    TABLE     p   CREATE TABLE public.provinsi (
    id_provinsi integer NOT NULL,
    provinsi character varying(20) NOT NULL
);
    DROP TABLE public.provinsi;
       public         postgres    false            �            1259    46163    sekolah    TABLE     �   CREATE TABLE public.sekolah (
    npsn character varying(10) NOT NULL,
    username character varying(30) NOT NULL,
    nama_sekolah character varying(20) NOT NULL,
    alamat_sekolah character varying NOT NULL
);
    DROP TABLE public.sekolah;
       public         postgres    false            �            1259    46221    semester    TABLE     �   CREATE TABLE public.semester (
    nisn integer NOT NULL,
    thn_pendaftaran integer NOT NULL,
    semester integer NOT NULL,
    peringkat integer NOT NULL
);
    DROP TABLE public.semester;
       public         postgres    false            �            1259    46153    status_bidikmisi    TABLE     w   CREATE TABLE public.status_bidikmisi (
    id_status_bm integer NOT NULL,
    status character varying(10) NOT NULL
);
 $   DROP TABLE public.status_bidikmisi;
       public         postgres    false            �            1259    46148 	   user_pmdk    TABLE     �   CREATE TABLE public.user_pmdk (
    username character varying(30) NOT NULL,
    created_by character varying(20) NOT NULL,
    password character varying(30) NOT NULL,
    jenis_user character varying(20) NOT NULL
);
    DROP TABLE public.user_pmdk;
       public         postgres    false            k          0    46201    agama 
   TABLE DATA               0   COPY public.agama (id_agama, agama) FROM stdin;
    public       postgres    false    206   T       c          0    46158    asal_jurusan 
   TABLE DATA               B   COPY public.asal_jurusan (kode_jurusan, nama_jurusan) FROM stdin;
    public       postgres    false    198   cT       l          0    46206    biodata 
   TABLE DATA               �   COPY public.biodata (nisn, thn_pendaftaran, no_pendaftaran, id_status_bm, kode_jurusan, username, npsn, id_jk, id_kabupaten, id_agama, nama, asal_jurusan, akselerasi, ttl, alamat, image) FROM stdin;
    public       postgres    false    207   �T       f          0    46176    daftar_mapel 
   TABLE DATA               >   COPY public.daftar_mapel (kode_mapel, nama_mapel) FROM stdin;
    public       postgres    false    201   U       g          0    46181    daftar_poltek 
   TABLE DATA               G   COPY public.daftar_poltek (id_politeknik, nama_politeknik) FROM stdin;
    public       postgres    false    202   VU       e          0    46171    jenis_kelamin 
   TABLE DATA               =   COPY public.jenis_kelamin (id_jk, jenis_kelamin) FROM stdin;
    public       postgres    false    200   �U       j          0    46196 	   kabupaten 
   TABLE DATA               N   COPY public.kabupaten (id_kabupaten, id_provinsi, nama_kabupaten) FROM stdin;
    public       postgres    false    205   �U       p          0    46226    nilai_semester 
   TABLE DATA               b   COPY public.nilai_semester (nisn, thn_pendaftaran, semester, kode_mapel, nilai_mapel) FROM stdin;
    public       postgres    false    211   �U       m          0    46211    pilihan_ 
   TABLE DATA               L   COPY public.pilihan_ (pilihan, nisn, thn_pendaftaran, id_prodi) FROM stdin;
    public       postgres    false    208   IV       n          0    46216    prestasi 
   TABLE DATA               q   COPY public.prestasi (id_prestasi, nisn, thn_pendaftaran, nama_prestasi, skala, jenis, juara, tahun) FROM stdin;
    public       postgres    false    209   {V       h          0    46186    prodi 
   TABLE DATA               D   COPY public.prodi (id_prodi, id_politeknik, nama_prodi) FROM stdin;
    public       postgres    false    203   �V       i          0    46191    provinsi 
   TABLE DATA               9   COPY public.provinsi (id_provinsi, provinsi) FROM stdin;
    public       postgres    false    204   W       d          0    46163    sekolah 
   TABLE DATA               O   COPY public.sekolah (npsn, username, nama_sekolah, alamat_sekolah) FROM stdin;
    public       postgres    false    199   FW       o          0    46221    semester 
   TABLE DATA               N   COPY public.semester (nisn, thn_pendaftaran, semester, peringkat) FROM stdin;
    public       postgres    false    210   �W       b          0    46153    status_bidikmisi 
   TABLE DATA               @   COPY public.status_bidikmisi (id_status_bm, status) FROM stdin;
    public       postgres    false    197   �W       a          0    46148 	   user_pmdk 
   TABLE DATA               O   COPY public.user_pmdk (username, created_by, password, jenis_user) FROM stdin;
    public       postgres    false    196   �W       �
           2606    46205    agama agama_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.agama
    ADD CONSTRAINT agama_pk PRIMARY KEY (id_agama);
 8   ALTER TABLE ONLY public.agama DROP CONSTRAINT agama_pk;
       public         postgres    false    206            �
           2606    46162    asal_jurusan asal_jurusan_pk 
   CONSTRAINT     d   ALTER TABLE ONLY public.asal_jurusan
    ADD CONSTRAINT asal_jurusan_pk PRIMARY KEY (kode_jurusan);
 F   ALTER TABLE ONLY public.asal_jurusan DROP CONSTRAINT asal_jurusan_pk;
       public         postgres    false    198            �
           2606    46210    biodata biodata_pk 
   CONSTRAINT     c   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT biodata_pk PRIMARY KEY (nisn, thn_pendaftaran);
 <   ALTER TABLE ONLY public.biodata DROP CONSTRAINT biodata_pk;
       public         postgres    false    207    207            �
           2606    46180    daftar_mapel daftar_mapel_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.daftar_mapel
    ADD CONSTRAINT daftar_mapel_pk PRIMARY KEY (kode_mapel);
 F   ALTER TABLE ONLY public.daftar_mapel DROP CONSTRAINT daftar_mapel_pk;
       public         postgres    false    201            �
           2606    46185    daftar_poltek daftar_poltek_pk 
   CONSTRAINT     g   ALTER TABLE ONLY public.daftar_poltek
    ADD CONSTRAINT daftar_poltek_pk PRIMARY KEY (id_politeknik);
 H   ALTER TABLE ONLY public.daftar_poltek DROP CONSTRAINT daftar_poltek_pk;
       public         postgres    false    202            �
           2606    46175    jenis_kelamin jenis_kelamin_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public.jenis_kelamin
    ADD CONSTRAINT jenis_kelamin_pk PRIMARY KEY (id_jk);
 H   ALTER TABLE ONLY public.jenis_kelamin DROP CONSTRAINT jenis_kelamin_pk;
       public         postgres    false    200            �
           2606    46200    kabupaten kabupaten_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.kabupaten
    ADD CONSTRAINT kabupaten_pk PRIMARY KEY (id_kabupaten);
 @   ALTER TABLE ONLY public.kabupaten DROP CONSTRAINT kabupaten_pk;
       public         postgres    false    205            �
           2606    46314 "   nilai_semester nilai_semester_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.nilai_semester
    ADD CONSTRAINT nilai_semester_pkey PRIMARY KEY (nisn, thn_pendaftaran, semester, kode_mapel);
 L   ALTER TABLE ONLY public.nilai_semester DROP CONSTRAINT nilai_semester_pkey;
       public         postgres    false    211    211    211    211            �
           2606    46215    pilihan_ pilihan__pk 
   CONSTRAINT     n   ALTER TABLE ONLY public.pilihan_
    ADD CONSTRAINT pilihan__pk PRIMARY KEY (pilihan, nisn, thn_pendaftaran);
 >   ALTER TABLE ONLY public.pilihan_ DROP CONSTRAINT pilihan__pk;
       public         postgres    false    208    208    208            �
           2606    46220    prestasi prestasi_pk 
   CONSTRAINT     r   ALTER TABLE ONLY public.prestasi
    ADD CONSTRAINT prestasi_pk PRIMARY KEY (id_prestasi, nisn, thn_pendaftaran);
 >   ALTER TABLE ONLY public.prestasi DROP CONSTRAINT prestasi_pk;
       public         postgres    false    209    209    209            �
           2606    46190    prodi prodi_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.prodi
    ADD CONSTRAINT prodi_pk PRIMARY KEY (id_prodi);
 8   ALTER TABLE ONLY public.prodi DROP CONSTRAINT prodi_pk;
       public         postgres    false    203            �
           2606    46195    provinsi provinsi_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.provinsi
    ADD CONSTRAINT provinsi_pk PRIMARY KEY (id_provinsi);
 >   ALTER TABLE ONLY public.provinsi DROP CONSTRAINT provinsi_pk;
       public         postgres    false    204            �
           2606    46170    sekolah sekolah_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.sekolah
    ADD CONSTRAINT sekolah_pk PRIMARY KEY (npsn);
 <   ALTER TABLE ONLY public.sekolah DROP CONSTRAINT sekolah_pk;
       public         postgres    false    199            �
           2606    46225    semester semester_pk 
   CONSTRAINT     o   ALTER TABLE ONLY public.semester
    ADD CONSTRAINT semester_pk PRIMARY KEY (nisn, thn_pendaftaran, semester);
 >   ALTER TABLE ONLY public.semester DROP CONSTRAINT semester_pk;
       public         postgres    false    210    210    210            �
           2606    46157 $   status_bidikmisi status_bidikmisi_pk 
   CONSTRAINT     l   ALTER TABLE ONLY public.status_bidikmisi
    ADD CONSTRAINT status_bidikmisi_pk PRIMARY KEY (id_status_bm);
 N   ALTER TABLE ONLY public.status_bidikmisi DROP CONSTRAINT status_bidikmisi_pk;
       public         postgres    false    197            �
           2606    46152    user_pmdk user_pmdk_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_pmdk
    ADD CONSTRAINT user_pmdk_pk PRIMARY KEY (username);
 @   ALTER TABLE ONLY public.user_pmdk DROP CONSTRAINT user_pmdk_pk;
       public         postgres    false    196            �
           2606    46286    biodata agama_biodata_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT agama_biodata_fk FOREIGN KEY (id_agama) REFERENCES public.agama(id_agama);
 B   ALTER TABLE ONLY public.biodata DROP CONSTRAINT agama_biodata_fk;
       public       postgres    false    207    206    2765            �
           2606    46246    biodata asal_jurusan_biodata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT asal_jurusan_biodata_fk FOREIGN KEY (kode_jurusan) REFERENCES public.asal_jurusan(kode_jurusan);
 I   ALTER TABLE ONLY public.biodata DROP CONSTRAINT asal_jurusan_biodata_fk;
       public       postgres    false    198    207    2749            �
           2606    46301    pilihan_ biodata_pilihan__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pilihan_
    ADD CONSTRAINT biodata_pilihan__fk FOREIGN KEY (nisn, thn_pendaftaran) REFERENCES public.biodata(nisn, thn_pendaftaran);
 F   ALTER TABLE ONLY public.pilihan_ DROP CONSTRAINT biodata_pilihan__fk;
       public       postgres    false    207    2767    207    208    208            �
           2606    46296    prestasi biodata_prestasi_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestasi
    ADD CONSTRAINT biodata_prestasi_fk FOREIGN KEY (nisn, thn_pendaftaran) REFERENCES public.biodata(nisn, thn_pendaftaran);
 F   ALTER TABLE ONLY public.prestasi DROP CONSTRAINT biodata_prestasi_fk;
       public       postgres    false    209    209    207    207    2767            �
           2606    46291    semester biodata_semester_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.semester
    ADD CONSTRAINT biodata_semester_fk FOREIGN KEY (nisn, thn_pendaftaran) REFERENCES public.biodata(nisn, thn_pendaftaran);
 F   ALTER TABLE ONLY public.semester DROP CONSTRAINT biodata_semester_fk;
       public       postgres    false    210    210    207    207    2767            �
           2606    46261 -   nilai_semester daftar_mapel_nilai_semester_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.nilai_semester
    ADD CONSTRAINT daftar_mapel_nilai_semester_fk FOREIGN KEY (kode_mapel) REFERENCES public.daftar_mapel(kode_mapel);
 W   ALTER TABLE ONLY public.nilai_semester DROP CONSTRAINT daftar_mapel_nilai_semester_fk;
       public       postgres    false    211    201    2755            �
           2606    46266    prodi daftar_poltek_prodi_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.prodi
    ADD CONSTRAINT daftar_poltek_prodi_fk FOREIGN KEY (id_politeknik) REFERENCES public.daftar_poltek(id_politeknik);
 F   ALTER TABLE ONLY public.prodi DROP CONSTRAINT daftar_poltek_prodi_fk;
       public       postgres    false    203    202    2757            �
           2606    46256     biodata jenis_kelamin_biodata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT jenis_kelamin_biodata_fk FOREIGN KEY (id_jk) REFERENCES public.jenis_kelamin(id_jk);
 J   ALTER TABLE ONLY public.biodata DROP CONSTRAINT jenis_kelamin_biodata_fk;
       public       postgres    false    200    2753    207            �
           2606    46281    biodata kabupaten_biodata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT kabupaten_biodata_fk FOREIGN KEY (id_kabupaten) REFERENCES public.kabupaten(id_kabupaten);
 F   ALTER TABLE ONLY public.biodata DROP CONSTRAINT kabupaten_biodata_fk;
       public       postgres    false    207    205    2763            �
           2606    46271    pilihan_ prodi_pilihan__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pilihan_
    ADD CONSTRAINT prodi_pilihan__fk FOREIGN KEY (id_prodi) REFERENCES public.prodi(id_prodi);
 D   ALTER TABLE ONLY public.pilihan_ DROP CONSTRAINT prodi_pilihan__fk;
       public       postgres    false    208    203    2759            �
           2606    46276    kabupaten provinsi_kabupaten_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.kabupaten
    ADD CONSTRAINT provinsi_kabupaten_fk FOREIGN KEY (id_provinsi) REFERENCES public.provinsi(id_provinsi);
 I   ALTER TABLE ONLY public.kabupaten DROP CONSTRAINT provinsi_kabupaten_fk;
       public       postgres    false    205    204    2761            �
           2606    46251    biodata sekolah_biodata_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT sekolah_biodata_fk FOREIGN KEY (npsn) REFERENCES public.sekolah(npsn);
 D   ALTER TABLE ONLY public.biodata DROP CONSTRAINT sekolah_biodata_fk;
       public       postgres    false    207    199    2751            �
           2606    46306     nilai_semester semester_nilai_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.nilai_semester
    ADD CONSTRAINT semester_nilai_fk FOREIGN KEY (nisn, thn_pendaftaran, semester) REFERENCES public.semester(nisn, thn_pendaftaran, semester);
 J   ALTER TABLE ONLY public.nilai_semester DROP CONSTRAINT semester_nilai_fk;
       public       postgres    false    2773    211    211    210    211    210    210            �
           2606    46241 #   biodata status_bidikmisi_biodata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT status_bidikmisi_biodata_fk FOREIGN KEY (id_status_bm) REFERENCES public.status_bidikmisi(id_status_bm);
 M   ALTER TABLE ONLY public.biodata DROP CONSTRAINT status_bidikmisi_biodata_fk;
       public       postgres    false    2747    207    197            �
           2606    46236    biodata user_biodata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.biodata
    ADD CONSTRAINT user_biodata_fk FOREIGN KEY (username) REFERENCES public.user_pmdk(username);
 A   ALTER TABLE ONLY public.biodata DROP CONSTRAINT user_biodata_fk;
       public       postgres    false    196    2745    207            �
           2606    46231    sekolah user_sekolah_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sekolah
    ADD CONSTRAINT user_sekolah_fk FOREIGN KEY (username) REFERENCES public.user_pmdk(username);
 A   ALTER TABLE ONLY public.sekolah DROP CONSTRAINT user_sekolah_fk;
       public       postgres    false    196    2745    199            k   E   x�3��.�,.I�S(�/I-.I��2��yg$���dfssz�$�r�pzd楔r�r:��d$r��qqq ��      c      x�3��p�2��\1z\\\  �      l   i   x�3426�420��4�����DCNS#c��R�3�s��"�������E�
ޙ�剙:
��
���%��
���有9���%��e�%�Ezy�\1z\\\ j�2      f   C   x�3��M,I�M,��N�2�t�,1�9�3s3�L8�3�<�R��R��B������b�=... �t      g   %   x�3����,I����Vp�2B�:q#s��b���� �w�      e   "   x�3��I���\F��E����y\1z\\\       j   +   x�3�4��NL*-H,I�Sp�2B�;q��LP�.\1z\\\ ���      p   A   x�]��  D�3cd����M�	/+P#tq���Y> �J�j���%њX@�1{3_x��      m   "   x�3�4426�420��4�2B�#�b���� ��      n   >   x�3�4426�420���P���-(-I-��NL*-H,I����K�,�L)�4)3����� ���      h   ?   x�3�4�(�O�Tp�2������lg.N#8��v�2����9��l8ۉ��v����� ��      i      x�3�.�M,I-JTpJ,J,����� O�9      d   2   x�35126�,N���I�0��uT�S0Tp��NL*-H,I�Sp����� �r
�      o   1   x�MǱ 0�99�"~��wt��f9SF�%�VP�6Լ�����      b      x�3���L�2��LI������ .B      a   ?   x�KL����LD'��S��s3��p.��7B�7B�g�'"��AD�I������� ��3�     