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