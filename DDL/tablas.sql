-- INI - TABLAS

    -- LISTO
    CREATE TABLE public.rol (
        id_rol SERIAL PRIMARY KEY,
        nombre VARCHAR(25) NOT NULL,
        descripcion VARCHAR(50) NOT NULL
    );

    -- LISTO
    CREATE TABLE public.persona (
        doc_identidad BIGINT PRIMARY KEY NOT NULL,
        primer_nom VARCHAR(50) NOT NULL, 
        primer_ape VARCHAR(50) NOT NULL,
        segundo_ape VARCHAR(50) NOT NULL,
        sexo CHAR(1) NOT NULL CHECK(sexo IN ('M','F')),
        fecha_ini_carrera DATE, 
        segundo_nom VARCHAR(50),
        a_lugar_nac VARCHAR(50),
        a_biografia VARCHAR(150),
        fecha_defuncion DATE
    );

    -- FALTA FOTO Y DUDA EN DISTRIBUCION_VA
    CREATE TABLE public.audiovisual (
        id_audiovi SERIAL PRIMARY KEY NOT NULL,
        titulo_espanol VARCHAR(50) NOT NULL,
        titulo_original VARCHAR(50) NOT NULL,
        sinopsis VARCHAR(150) NOT NULL,
        fecha_estreno_cine DATE NOT NULL,
        duracion_min SMALLINT NOT NULL,
        -- distribucion_va VARCHAR(5)[20] NOT NULL,
        censura VARCHAR(2) NOT NULL CHECk(censura IN ('AA','A','B','C','D')),
        clas_audiovisual VARCHAR(15) NOT NULL CHECK(clas_audiovisual IN ('largometraje','cortometraje','documental')),
        ano_realizacion SMALLINT NOT NULL,
        genero_va VARCHAR(15)[5] NOT NULL,
        -- fotos BYTEA[] NOT NULL,
        total_nomi int,
        total_postu int
    );

    -- LISTO
    CREATE TABLE public.rol_pel_pers (
        id_rol INT  NOT NULL REFERENCES rol(id_rol),
        id_audiovi INT NOT NULL REFERENCES audiovisual(id_audiovi),
        doc_identidad INT NOT NULL REFERENCES persona(doc_identidad),
        cancion_titulo VARCHAR(50),
        CONSTRAINT primary_key_rol_pel_pers PRIMARY KEY (id_rol, id_audiovi, doc_identidad)
    );

    -- FALTA AREA_NT
    CREATE TABLE public.miembro (
        id_miembro INT PRIMARY KEY NOT NULL,
        fecha_inicio DATE NOT NULL,
        vitalicio CHAR(2) NOT NULL CHECK(vitalicio IN ('si','no')),
        doc_identidad INT NOT NULL REFERENCES persona(doc_identidad),
        fecha_fin DATE CHECK(fecha_inicio < fecha_fin)--,
        -- area_nt VARCHAR(25)[]
    );

    -- LISTO
    CREATE TABLE public.postulado_votos (
        id_audiovi INT NOT NULL,
        id_miembro INT NOT NULL,
        fecha_ano DATE,
        CONSTRAINT primary_key_postulado_votos PRIMARY KEY (id_audiovi, id_miembro)
    );

    -- LISTO
    CREATE TABLE public.gala (
        ano SMALLINT PRIMARY KEY,
        fecha DATE NOT NULL,
        lugar VARCHAR(50) NOT NULL,
        numero_edicion SMALLINT NOT NULL,
        doc_identidad BIGINT NOT NULL REFERENCES persona(doc_identidad),
        descripcion VARCHAR(50)
    );

    -- LISTO
    CREATE TABLE public.categoria (
        id_categoria SERIAL PRIMARY KEY,
        nombre VARCHAR(50) NOT NULL,
        nivel CHAR(1) NOT NULL CHECK(nivel IN ('1','2')),
        rama VARCHAR(20) NOT NULL CHECK(rama IN ('actores','guionista','directores','productores','técnicos')),
        id_categoria2 INT REFERENCES categoria(id_categoria),
        hist_premio_nt hist_premio[]
    );

    -- LISTO
    CREATE TABLE public.presentador (
        id_gala INT NOT NULL REFERENCES gala(ano),
        doc_identidad INT NOT NULL REFERENCES persona(doc_identidad),
        id_categoria INT NOT NULL REFERENCES categoria(id_categoria),
        CONSTRAINT llave_prensentador PRIMARY KEY (id_gala, doc_identidad, id_categoria)
    );

    --LISTO
    CREATE TABLE public.P_C (
        id_miembro INT NOT NULL REFERENCES miembro(id_miembro),
        id_categoria INT NOT NULL REFERENCES categoria(id_categoria),
        CONSTRAINT llave_P_C PRIMARY KEY (id_miembro, id_categoria)
    );

    -- LISTO
     CREATE TABLE public.postuladas_p_pers(
        id_postuladas_p_pers SERIAL NOT NULL,
        ano_oscar INT NOT NULL,
        id_categoria INT NOT NULL REFERENCES categoria(id_categoria),
        id_rol INT,
        doc_identidad INT,
        id_audiovi INT,
        id_audiovi2 INT REFERENCES audiovisual(id_audiovi),
        CONSTRAINT llave_rol_pel_pers FOREIGN KEY (id_rol, id_audiovi, doc_identidad) REFERENCES rol_pel_pers(id_rol, id_audiovi, doc_identidad),
        CONSTRAINT primary_key_portuladas_p_pers PRIMARY KEY (id_postuladas_p_pers, ano_oscar, id_categoria)
    );

    -- LISTO
    CREATE TABLE public.nominadas (
        id_nominada SERIAL NOT NULL,
        ganador CHAR(2) NOT NULL CHECK(ganador IN ('si','no')),
        id_postuladas_p_pers INT NOT NULL,
        ano_oscar SMALLINT NOT NULL,
        id_categoria INT NOT NULL,
        CONSTRAINT PK_nominadas PRIMARY KEY (id_nominada, id_postuladas_p_pers, ano_oscar, id_categoria),
        CONSTRAINT FK_postuladas_p_pers FOREIGN KEY ( id_postuladas_p_pers, ano_oscar, id_categoria) REFERENCES postuladas_p_pers(id_postuladas_p_pers, ano_oscar, id_categoria)
    );

    -- LISTO
    CREATE TABLE public.organizacion (
        id_organizacion INT PRIMARY KEY,
        nombre VARCHAR(50) NOT NULL,
        mision VARCHAR(150) NOT NULL, 
        donacion_nt donacion[]
    );

    -- NO ESTOY SEGURO DE ESTA RELACION - LISTO
    CREATE TABLE public.o_g (
        id_organizacion INT NOT NULL REFERENCES organizacion(id_organizacion),
        id_gala INT NOT NULL REFERENCES gala(ano)
    );

    -- No se que es tipo -LISTO
    CREATE TABLE public.critica (
        id_critica INT PRIMARY KEY,
        ano SMALLINT NOT NULL,
        tipo VARCHAR(50),
        textocritica VARCHAR(150) NOT NULL,
        negativa CHAR(2) NOT NULL CHECK(negativa in('si','no')),
        id_categoria INT NOT NULL,
        id_postuladas_p_pers INT NOT NULL,
        ano_oscar INT NOT NULL,
        CONSTRAINT FK_postuladas_p_pers_critica FOREIGN KEY ( id_postuladas_p_pers, ano_oscar, id_categoria) REFERENCES postuladas_p_pers(id_postuladas_p_pers, ano_oscar, id_categoria)
    );

    -- LISTO 
    CREATE TABLE public.votos (
        id_voto SERIAL PRIMARY KEY NOT NULL,
        fecha_hora TIMESTAMP NOT NULL,
        tipo_voto VARCHAR(8) NOT NULL CHECK(tipo_voto IN ('ganadora','nominada')),
        id_miembro INT NOT NULL REFERENCES miembro(id_miembro),
        id_nominada INT,
        id_categoria INT,
        id_postuladas_p_pers INT,
        ano_oscar INT,
        id_categoria1 INT,
        id_postuladas_p_pers1 INT,
        ano_oscar1 INT,
        CONSTRAINT FK_postuladas_p_pers_votos FOREIGN KEY ( id_postuladas_p_pers1, ano_oscar1, id_categoria1) REFERENCES postuladas_p_pers(id_postuladas_p_pers, ano_oscar, id_categoria),
        CONSTRAINT FK_nominada_votos FOREIGN KEY (id_nominada, id_categoria, id_postuladas_p_pers, ano_oscar) REFERENCES nominadas(id_nominada, id_categoria, id_postuladas_p_pers, ano_oscar)
    );

-- FIN - TABLAS