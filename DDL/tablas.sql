-- INI - TIPOS DE DATOS

    -- LISTO
    CREATE TYPE donacion AS(
        ano SMALLINT,
        porcentaje SMALLINT,
        monto numeric(12,2)
    );

    -- LISTO
    CREATE TYPE hist_premio AS(
        fecha_ini DATE,
        fecha_fin DATE,
        nombre VARCHAR(50),
        cantidad_nom SMALLINT
    );

-- FIN - TIPOS DE DATOS

-- INI - TABLAS

    -- LISTO
    CREATE TABLE public.rol (
        id_rol SERIAL PRIMARY KEY,
        nombre VARCHAR(25) NOT NULL,
        descripcion VARCHAR(250) NOT NULL
    );

    -- LISTO
    CREATE TABLE public.persona (
        doc_identidad BIGINT PRIMARY KEY NOT NULL,
        primer_nom VARCHAR(50) NOT NULL, 
        primer_ape VARCHAR(50) NOT NULL,
        segundo_ape VARCHAR(50) NOT NULL,
        sexo CHAR(1) NOT NULL CHECK(sexo IN ('M','F')),
        fecha_nac DATE NOT NULL, 
        fecha_ini_carrera DATE, 
        segundo_nom VARCHAR(50),
        a_lugar_nac VARCHAR(50),
        a_biografia TEXT,
        fecha_defuncion DATE,
        CONSTRAINT fecha_nac_valida CHECK(fecha_ini_carrera>fecha_nac)
    );

    -- LISTO
    CREATE TABLE public.audiovisual (
        id_audiovi SERIAL PRIMARY KEY NOT NULL,
        titulo_espanol VARCHAR(50) NOT NULL,
        titulo_original VARCHAR(50) NOT NULL,
        sinopsis TEXT NOT NULL,
        fecha_estreno_cine DATE NOT NULL,
        duracion_min SMALLINT NOT NULL,
        pais VARCHAR(20)[3] NOT NULL,
        distribucion_va VARCHAR(50)[3] NOT NULL,
        censura VARCHAR(2) NOT NULL CHECk(censura IN ('AA','A','B','C','D')),
        clas_audiovisual VARCHAR(15) NOT NULL CHECK(clas_audiovisual IN ('largometraje','cortometraje','documental')),
        ano_realizacion SMALLINT NOT NULL,
        genero_va VARCHAR(15)[5] NOT NULL,
        fotos VARCHAR(255) NOT NULL,
        total_nomi int NOT NULL,
        total_postu int NOT NULL,
        total_ganador int NOT NULL
    );

    -- LISTO
    CREATE TABLE public.rol_pel_pers (
        id_rol INT  NOT NULL REFERENCES rol(id_rol),
        id_audiovi INT NOT NULL REFERENCES audiovisual(id_audiovi),
        doc_identidad BIGINT NOT NULL REFERENCES persona(doc_identidad),
        cancion_titulo VARCHAR(50),
        CONSTRAINT PK_rol_pel_pers PRIMARY KEY (id_rol, id_audiovi, doc_identidad)
    );

    -- LISTO
    CREATE TABLE public.miembro (
        id_miembro SERIAL PRIMARY KEY NOT NULL,
        fecha_inicio DATE NOT NULL,
        vitalicio CHAR(2) NOT NULL CHECK(vitalicio IN ('si','no')),
        doc_identidad BIGINT NOT NULL UNIQUE REFERENCES persona(doc_identidad),
        fecha_fin DATE CHECK(fecha_inicio < fecha_fin),
        area_nt VARCHAR(25)[]
    );

    -- LISTO
    CREATE TABLE public.postulado_votos (
        id_audiovi INT NOT NULL,
        id_miembro INT NOT NULL,
        fecha_ano INT NOT NULL,
        CONSTRAINT PK_postulado_votos PRIMARY KEY (id_audiovi, id_miembro)
    );

    -- LISTO
    CREATE TABLE public.gala (
        ano SMALLINT PRIMARY KEY NOT NULL,
        fecha DATE NOT NULL,
        lugar VARCHAR(50) NOT NULL,
        numero_edicion SMALLINT NOT NULL,
        doc_identidad BIGINT NOT NULL REFERENCES persona(doc_identidad),
        descripcion VARCHAR(250)
    );

    -- LISTO
    CREATE TABLE public.categoria (
        id_categoria SERIAL PRIMARY KEY,
        nombre VARCHAR(50) NOT NULL,
        nivel CHAR(1) NOT NULL CHECK(nivel IN ('1','2')),
        rama VARCHAR(20) CHECK(rama IN ('actor','guionista','director','productor','fotografo','tecnico', 
        'ing.sonido', 'musico', 'estilista', 'artista')),
        id_categoria2 INT REFERENCES categoria(id_categoria),
        hist_premio_nt hist_premio[]
    );

    -- LISTO
    CREATE TABLE public.presentador (
        id_gala INT NOT NULL REFERENCES gala(ano),
        doc_identidad BIGINT NOT NULL REFERENCES persona(doc_identidad),
        id_categoria INT NOT NULL REFERENCES categoria(id_categoria),
        CONSTRAINT PK_prensentador PRIMARY KEY (id_gala, doc_identidad, id_categoria)
    );

    --LISTO
    CREATE TABLE public.M_P (
        id_miembro INT NOT NULL REFERENCES miembro(id_miembro),
        id_categoria INT NOT NULL REFERENCES categoria(id_categoria),
        CONSTRAINT PK_M_P PRIMARY KEY (id_miembro, id_categoria)
    );

    -- LISTO
     
     CREATE TABLE public.postuladas_p_pers(
        id_postuladas_p_pers SERIAL NOT NULL,
        ano_oscar INT NOT NULL,
        id_categoria INT NOT NULL REFERENCES categoria(id_categoria),
		empate varchar(2) not null check (empate in('si','no')),
        terminada varchar(2) not null check(terminada in ('si','no')),
        ronda_emp int not null,
        cant_votos int not null,
        num_post_emp integer,
        id_rol INT,
        doc_identidad INT,
        id_audiovi INT,
		
        id_audiovi2 INT REFERENCES audiovisual(id_audiovi),
		 
        CONSTRAINT llave_rol_pel_pers FOREIGN KEY (id_rol, id_audiovi, doc_identidad) REFERENCES rol_pel_pers(id_rol, id_audiovi, doc_identidad),
        CONSTRAINT primary_key_portuladas_p_pers PRIMARY KEY (id_postuladas_p_pers, ano_oscar, id_categoria),
		constraint unicidad_clave_foranea unique (ano_oscar,id_categoria,id_rol, id_audiovi, doc_identidad,id_audiovi2)
    );

    -- LISTO
   CREATE TABLE public.nominadas(
        id_nominada SERIAL NOT NULL,
        ganador character(2) COLLATE pg_catalog."default" NOT NULL,
        id_postuladas_p_pers integer NOT NULL,
        ano_oscar smallint NOT NULL,
        id_categoria integer NOT NULL,
        empate character varying(2) COLLATE pg_catalog."default",
        ronda_emp integer,
        terminada character varying(2) COLLATE pg_catalog."default",
        cant_votos integer,
        CONSTRAINT pk_nominadas PRIMARY KEY (id_nominada, id_postuladas_p_pers, ano_oscar, id_categoria),
        CONSTRAINT fk_postuladas_p_pers FOREIGN KEY (ano_oscar, id_postuladas_p_pers, id_categoria)
            REFERENCES public.postuladas_p_pers (ano_oscar, id_postuladas_p_pers, id_categoria) MATCH SIMPLE
            ON UPDATE NO ACTION
            ON DELETE NO ACTION,
        CONSTRAINT nominadas_ganador_check CHECK (ganador = ANY (ARRAY['si'::bpchar, 'no'::bpchar]))
    );


    -- LISTO
    CREATE TABLE public.organizacion (
        id_organizacion SERIAL PRIMARY KEY,
        nombre VARCHAR(50) NOT NULL,
        mision TEXT NOT NULL, 
        donacion_nt donacion[]
    );

    -- LISTO
    CREATE TABLE public.critica (
        id_critica SERIAL PRIMARY KEY,
        ano SMALLINT NOT NULL,
        tipo VARCHAR(50) CHECK(tipo in ('postulados', 'nominados', 'ganadores', 'gala')),
        textocritica VARCHAR(255) NOT NULL,
        negativa CHAR(2) NOT NULL CHECK(negativa in('si','no'))
    );

    -- LISTO 
    CREATE TABLE public.votos (
        id_voto SERIAL PRIMARY KEY NOT NULL,
        fecha_hora TIMESTAMP NOT NULL,
        tipo_voto VARCHAR(15) NOT NULL CHECK(tipo_voto IN ('postulado','nominado')),
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
