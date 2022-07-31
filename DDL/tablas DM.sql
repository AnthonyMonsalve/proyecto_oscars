------------Dimension de areas

CREATE TABLE IF NOT EXISTS dm.area
(
    id integer NOT NULL DEFAULT nextval('dm.area_id_seq'::regclass),
    nombre_area character varying(50) COLLATE pg_catalog."default",
    fecha_carga date,
    CONSTRAINT "AREA_pkey" PRIMARY KEY (id),
    CONSTRAINT area_nombre_area_nombre_area1_key UNIQUE (nombre_area)
        INCLUDE(nombre_area)
)

TABLESPACE pg_default;


-----------Dimension de tiempo
    
-- Table: dm.tiempo

-- DROP TABLE IF EXISTS dm.tiempo;

CREATE TABLE IF NOT EXISTS dm.tiempo
(
    id_lustro bigint NOT NULL,
    id_anio1 bigint NOT NULL,
    id_anio2 bigint NOT NULL,
    id_anio3 bigint NOT NULL,
    id_anio4 bigint NOT NULL,
    id_anio5 bigint NOT NULL,
    CONSTRAINT tiempo_pkey PRIMARY KEY (id_lustro, id_anio1, id_anio2, id_anio3, id_anio4, id_anio5)
)

TABLESPACE pg_default;

----------Tabla de Facts

-- Table: dm.fact_estadisticas

-- DROP TABLE IF EXISTS dm.fact_estadisticas;

CREATE TABLE IF NOT EXISTS dm.fact_estadisticas
(
    id_lustro bigint,
    id_anio1 bigint,
    id_anio2 bigint,
    id_anio3 bigint,
    id_anio4 bigint,
    id_anio5 bigint,
    popularidad_anual real,
    prom_popularidad_quinquenio real,
    aceptacion_anual real,
    prom_aceptacion_quinquenio real,
    "%part_post" real,
    "%part_nom" real,
    "%part_gan" real,
    "%part_general" real,
    votos_vot_gan bigint,
    crec_part_post real,
    crec_part_nom real,
    crec_part_gan real,
    crec_part_general real,
    "%donacion" real,
    monto_donado real,
    id_area bigint,
    CONSTRAINT fk_area FOREIGN KEY (id_area)
        REFERENCES dm.area (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fk_tiempo FOREIGN KEY (id_lustro, id_anio5, id_anio4, id_anio3, id_anio1, id_anio2)
        REFERENCES dm.tiempo (id_lustro, id_anio5, id_anio4, id_anio3, id_anio1, id_anio2) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;
