-- INI SEGURIDAD
    REVOKE CREATE ON SCHEMA public FROM PUBLIC;

    -- INI VISITANTE 
        CREATE ROLE user_oscar;
        GRANT USAGE ON SCHEMA public TO user_oscar;
        GRANT SELECT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas TO user_oscar;
        CREATE USER visitante WITH PASSWORD '1234';
        GRANT user_oscar TO visitante;
    -- FIN VISITANTE

    -- INI ANALISTA DE REDES
        CREATE ROLE analista_redes;
        GRANT SELECT, INSERT ON critica TO analista_redes;
        CREATE USER analista_ LOGIN PASSWORD '1234';
        GRANT analista_redes TO analista;
    -- FIN ANALISTA DE REDES
    
    -- INI MIEMBRO
        CREATE ROLE user_miembro;
        GRANT SELECT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas TO user_miembro;
        GRANT INSERT ON TABLE postuladas_p_pers, postulado_votos, votos TO user_miembro;
        -- GRANT EXECUTE (LOS PROGRAMAS ALMACENADOS)
        CREATE USER miembro LOGIN password '1234';
        GRANT user_miembro TO miembro;
    -- FIN MIEMBRO

    -- INI DIRECTIVO
        CREATE ROLE user_directivo;
        GRANT SELECT, UPDATE, INSERT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas TO user_directivo;
        CREATE USER directivo WITH PASSWORD '1234';
        GRANT user_directivo TO directivo;
    -- FIN DIRECTIVO

    -- INI ADMINISTRADOR
        CREATE ROLE administrador;
        -- GRANT EXECUTE (LOS PROGRAMAS ALMACENADOS)
    -- FIN ADMINISTRADOR

    -- INI DESARROLLADOR
        CREATE ROLE desarrollador;
    -- FIN DESARROLLADOR

    -- INI DBA
        CREATE ROLE dba;
    -- FIN DBA
-- FIN SEGURIDAD