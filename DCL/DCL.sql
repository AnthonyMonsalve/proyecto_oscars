-- INI SEGURIDAD
    REVOKE CREATE ON SCHEMA public FROM PUBLIC;

    -- LISTO
    -- INI VISITANTE 
        CREATE ROLE visitante LOGIN PASSWORD '1234';
        GRANT SELECT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas, postuladas_p_pers TO visitante;
        GRANT EXECUTE ON FUNCTION ficha_actor(BIGINT), ficha_premios_pelicula(INT,INT), ficha_pelicula(INT), ficha_oscar_totales(INT) TO visitante;
    -- FIN VISITANTE

    -- LISTO
    -- INI ANALISTA DE REDES LISTO
        CREATE ROLE analista WITH LOGIN PASSWORD '1234';
        GRANT SELECT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas, postuladas_p_pers TO analista;
        GRANT SELECT, INSERT, UPDATE, DELETE ON critica TO analista;
        GRANT EXECUTE ON FUNCTION ficha_actor(BIGINT), ficha_premios_pelicula(INT,INT), ficha_pelicula(INT), ficha_oscar_totales(INT) TO analista;
    -- FIN ANALISTA DE REDES
    

    -- INI MIEMBRO LISTO
        CREATE ROLE miembro WITH LOGIN PASSWORD '1234';
        GRANT SELECT ON TABLE audiovisual, postulado_votos, votos, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas, postuladas_p_pers, miembro, m_p TO miembro;
        GRANT INSERT ON TABLE postulado_votos, votos TO miembro;
        GRANT EXECUTE ON FUNCTION ficha_actor(BIGINT), ficha_premios_pelicula(INT,INT), ficha_premios_nominados(INT,INT), ficha_premios_pelicula(INT,INT), ficha_premios_postulados(INT,INT), ficha_pelicula(INT), ficha_oscar_totales(INT) TO miembro;
        GRANT EXECUTE ON PROCEDURE votar_nominados(INT, INT),  postular_pelicula(INT, INT, INT),votar_postulados(INT,INT) TO miembro;
        GRANT ALL ON votos_id_voto_seq TO miembro;
        
    -- FIN MIEMBRO

    -- INI DIRECTIVO LISTO
        CREATE ROLE directivo WITH LOGIN PASSWORD '1234';
        GRANT INSERT ON TABLE critica, m_p TO directivo;
        GRANT INSERT, SELECT postulado_votos TO directivo;
        GRANT INSERT, SELECT on table votos TO directivo;
        GRANT UPDATE ON TABLE miembro TO directivo;
        GRANT INSERT, SELECT, UPDATE on table postuladas_p_pers TO directivo;
        GRANT SELECT, INSERT ON TABLE nominadas, miembro, M_P, postuladas_p_pers TO directivo;
        GRANT SELECT, UPDATE, INSERT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas, organizacion TO directivo;
        GRANT EXECUTE ON FUNCTION  ficha_miembro_area(VARCHAR) TO directivo; 
        GRANT ALL ON nominadas_id_nominada_seq TO directivo;
   		GRANT ALL ON postuladas_p_pers_id_postuladas_p_pers_seq TO directivo;
		GRANT EXECUTE ON PROCEDURE 
		gestion_ganadores(INT,INT), 
		actualizar_mp(), asignar_presentadores_gala(INT),
		actualizar_area_nt_membresia(),
		gestion_postulados(INT), gestion_nominados(INT,INT),
		votar_postulados(INT,INT) TO miembro;
    -- FIN DIRECTIVO


    -- INI DESARROLLADOR
        CREATE ROLE desarrollador WITH CREATEDB LOGIN PASSWORD '1234';
    -- FIN DESARROLLADOR

    -- INI DBA
        CREATE ROLE data_base_administrator WITH SUPERUSER LOGIN PASSWORD '1234';
    -- FIN DBA

-- FIN SEGURIDAD
