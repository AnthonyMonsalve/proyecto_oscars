-- INI SEGURIDAD
    REVOKE CREATE ON SCHEMA public FROM PUBLIC;

    -- INI VISITANTE 
        CREATE ROLE visitante LOGIN PASSWORD '1234';;
        GRANT SELECT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas TO visitante;
    -- FIN VISITANTE

    -- INI ANALISTA DE REDES
        CREATE ROLE analista WITH LOGIN PASSWORD '1234';
        GRANT SELECT, INSERT ON critica TO analista;
    -- FIN ANALISTA DE REDES
    
    -- INI MIEMBRO
        CREATE ROLE miembro WITH LOGIN PASSWORD '1234';
        GRANT SELECT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas TO miembro;
        GRANT INSERT ON TABLE postuladas_p_pers, postulado_votos, votos TO miembro;
        -- GRANT EXECUTE (LOS PROGRAMAS ALMACENADOS)
    -- FIN MIEMBRO

    -- INI DIRECTIVO
        CREATE ROLE directivo WITH LOGIN PASSWORD '1234';
        GRANT SELECT, UPDATE, INSERT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas TO directivo;
    -- FIN DIRECTIVO

    -- INI ADMINISTRADOR
        CREATE ROLE administrador WITH LOGIN PASSWORD '1234';
        GRANT SELECT ON TABLE audiovisual, persona, rol, rol_pel_pers, gala, presentador, categoria, nominadas TO administrador;
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
