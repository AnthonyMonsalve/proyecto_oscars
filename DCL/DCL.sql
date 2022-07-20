-- INI SEGURIDAD
    REVOKE CREATE ON SCHEMA public FROM PUBLIC;

    -- LISTO
    -- INI VISITANTE 
        CREATE ROLE visitante LOGIN PASSWORD '1234';
        GRANT SELECT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas, postuladas_p_pers TO visitante;
        GRANT EXECUTE ON FUNCTION ficha_actor(BIGINT), ficha_premios_pelicula(INT,INT), ficha_pelicula(INT), ficha_oscar_totales(INT) TO visitante;
    -- FIN VISITANTE

    -- LISTO
    -- INI ANALISTA DE REDES
        CREATE ROLE analista WITH LOGIN PASSWORD '1234';
        GRANT SELECT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas, postuladas_p_pers TO analista;
        GRANT SELECT, INSERT ON critica TO analista;
        GRANT EXECUTE ON FUNCTION ficha_actor(BIGINT), ficha_premios_pelicula(INT,INT), ficha_pelicula(INT), ficha_oscar_totales(INT) TO analista;
    -- FIN ANALISTA DE REDES
    

    -- INI MIEMBRO
        CREATE ROLE miembro WITH LOGIN PASSWORD '1234';
        GRANT SELECT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas, postuladas_p_pers, miembro, m_p TO miembro;
        GRANT INSERT ON TABLE postulado_votos, votos TO miembro;
        GRANT EXECUTE ON FUNCTION ficha_actor(BIGINT), ficha_premios_pelicula(INT,INT), ficha_pelicula(INT), ficha_oscar_totales(INT) TO miembro;
		GRANT EXECUTE ON PROCEDURE votar_nominados(INT, INT),  postular_pelicula(INT, INT, INT),votar_postulados(INT,INT) TO miembro;
		
    -- FIN MIEMBRO

    -- INI DIRECTIVO
        CREATE ROLE directivo WITH LOGIN PASSWORD '1234';
        GRANT INSERT critica TO directivo;
        GRANT SELECT, INSERT ON TABLE nominadas, miembro, M_P, postuladas_p_pers TO directivo;
        GRANT SELECT, UPDATE, INSERT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas, organizacion TO directivo;
        GRANT EXECUTE ON FUNCTION  ficha_miembro_area(VARCHAR), gestion_postulados(INT), 
        gestion_nominados(INT,INT), gestion_ganadores(INT,INT), actualizar_area_nt_membresia(), actualizar_mp(),
        asignar_presentadores_gala() TO directivo; 
    -- FIN DIRECTIVO



    -- INI ADMINISTRADOR
        CREATE ROLE administrador WITH LOGIN PASSWORD '1234';
        GRANT SELECT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas, postuladas_p_pers TO administrador;
        -- GRANT 
        -- GRANT EXECUTE (LOS PROGRAMAS ALMACENADOS)
    -- FIN ADMINISTRADOR

    -- INI DESARROLLADOR
        CREATE ROLE desarrollador WITH CREATEDB LOGIN PASSWORD '1234';
    -- FIN DESARROLLADOR

    -- INI DBA
        CREATE ROLE data_base_administrator WITH SUPERUSER LOGIN PASSWORD '1234';
    -- FIN DBA

-- FIN SEGURIDAD
