-- FICHA DE PELICULA
CREATE OR replace FUNCTION ficha_pelicula (IN p_id_audiovi INT) 
    RETURNS TABLE (
        titulo_espanol VARCHAR, titulo_original VARCHAR, 
        sinopsis VARCHAR, fecha_estreno_cine VARCHAR, 
        pais VARCHAR,  
        distribucion_va VARCHAR, censura VARCHAR, 
        duracion_min VARCHAR, genero_va VARCHAR,
        directores VARCHAR, dir_artistica VARCHAR,
        productores VARCHAR, guionistas VARCHAR, 
        musica VARCHAR,	fotografia VARCHAR,
        montaje VARCHAR, reparto VARCHAR,
        foto VARCHAR
    ) 
    LANGUAGE plpgsql
    AS $$
    DECLARE 
        v_registro record;
        v_nombre VARCHAR;
    BEGIN
        for v_registro IN (
            SELECT audiovisual.titulo_espanol,
            audiovisual.titulo_original,  audiovisual.sinopsis,  audiovisual.fecha_estreno_cine, 
            audiovisual.pais, audiovisual.fotos, 
            audiovisual.distribucion_va,  audiovisual.censura,  audiovisual.duracion_min,  audiovisual.genero_va
            FROM public.audiovisual 
                WHERE id_audiovi = p_id_audiovi
        ) LOOP  titulo_espanol := v_registro.titulo_espanol;
            titulo_original := v_registro.titulo_original; 
            sinopsis := v_registro.sinopsis; 
            fecha_estreno_cine := v_registro.fecha_estreno_cine;  
            distribucion_va := array_to_string(v_registro.distribucion_va, ' ; '); 
            censura := v_registro.censura; 
            duracion_min := v_registro.duracion_min; 
            genero_va := array_to_string(v_registro.genero_va, ' ; ');
            foto := v_registro.fotos;
            pais := array_to_string(v_registro.pais, ' ; ');
        END LOOP;
        
        v_registro := NULL;
        v_nombre = '';
        
        --DIRECTORES
        for v_registro IN (
            SELECT primer_nom, primer_ape
            FROM public.audiovisual 
            INNER JOIN rol_pel_pers RPP ON RPP.id_audiovi = p_id_audiovi AND RPP.id_rol = 3
            INNER JOIN persona PER ON PER.doc_identidad = RPP.doc_identidad
            WHERE audiovisual.id_audiovi = p_id_audiovi
        ) LOOP  
            v_nombre = concat(v_nombre, v_registro.primer_nom);
            v_nombre = concat(v_nombre, ' ');
            v_nombre = concat(v_nombre, v_registro.primer_ape);
            v_nombre = concat(v_nombre, '; ');
        END LOOP;
        directores := v_nombre;
        
        v_nombre = '';
        --DIRECCION ARTISTICA
        for v_registro IN (
            SELECT primer_nom, primer_ape
            FROM public.audiovisual 
            INNER JOIN rol_pel_pers RPP ON RPP.id_audiovi = p_id_audiovi AND RPP.id_rol = 10
            INNER JOIN persona PER ON PER.doc_identidad = RPP.doc_identidad
            WHERE audiovisual.id_audiovi = p_id_audiovi
        ) LOOP  
            v_nombre = concat(v_nombre, v_registro.primer_nom);
            v_nombre = concat(v_nombre, ' ');
            v_nombre = concat(v_nombre, v_registro.primer_ape);
            v_nombre = concat(v_nombre, '; ');
        END LOOP;
        dir_artistica := v_nombre;
        
        
        v_nombre := '';
        --PRODUCTORES
        for v_registro IN (
            SELECT primer_nom, primer_ape
            FROM public.audiovisual 
            INNER JOIN rol_pel_pers RPP ON RPP.id_audiovi = p_id_audiovi AND RPP.id_rol = 4
            INNER JOIN persona PER ON PER.doc_identidad = RPP.doc_identidad
            WHERE audiovisual.id_audiovi = p_id_audiovi
        ) LOOP  
            v_nombre = concat(v_nombre, v_registro.primer_nom);
            v_nombre = concat(v_nombre, ' ');
            v_nombre = concat(v_nombre, v_registro.primer_ape);
            v_nombre = concat(v_nombre, '; ');
        END LOOP;
        productores := v_nombre;

        v_nombre := '';
        --GUIONISTA
        for v_registro IN (
            SELECT primer_nom, primer_ape
            FROM public.audiovisual 
            INNER JOIN rol_pel_pers RPP ON RPP.id_audiovi = p_id_audiovi AND RPP.id_rol = 2
            INNER JOIN persona PER ON PER.doc_identidad = RPP.doc_identidad
            WHERE audiovisual.id_audiovi = p_id_audiovi
        ) LOOP  
            v_nombre = concat(v_nombre, v_registro.primer_nom);
            v_nombre = concat(v_nombre, ' ');
            v_nombre = concat(v_nombre, v_registro.primer_ape);
            v_nombre = concat(v_nombre, '; ');
        END LOOP;
        guionistas := v_nombre;
        
        v_nombre := '';
        --MUSICA
        for v_registro IN (
            SELECT primer_nom, primer_ape
            FROM public.audiovisual 
            INNER JOIN rol_pel_pers RPP ON RPP.id_audiovi = p_id_audiovi AND RPP.id_rol = 8
            INNER JOIN persona PER ON PER.doc_identidad = RPP.doc_identidad
            WHERE audiovisual.id_audiovi = p_id_audiovi
        ) LOOP  
            v_nombre = concat(v_nombre, v_registro.primer_nom);
            v_nombre = concat(v_nombre, ' ');
            v_nombre = concat(v_nombre, v_registro.primer_ape);
            v_nombre = concat(v_nombre, '; ');
        END LOOP;
        musica := v_nombre;

        v_nombre := '';
        --MONTAJE
        for v_registro IN (
            SELECT primer_nom, primer_ape
            FROM public.audiovisual 
            INNER JOIN rol_pel_pers RPP ON RPP.id_audiovi = p_id_audiovi AND RPP.id_rol = 6
            INNER JOIN persona PER ON PER.doc_identidad = RPP.doc_identidad
            WHERE audiovisual.id_audiovi = p_id_audiovi
        ) LOOP  
            v_nombre = concat(v_nombre, v_registro.primer_nom);
            v_nombre = concat(v_nombre, ' ');
            v_nombre = concat(v_nombre, v_registro.primer_ape);
            v_nombre = concat(v_nombre, '; ');
        END LOOP;
        montaje := v_nombre;

        v_nombre := '';
        --FOTOGRAFIA
        for v_registro IN (
            SELECT primer_nom, primer_ape
            FROM public.audiovisual 
            INNER JOIN rol_pel_pers RPP ON RPP.id_audiovi = p_id_audiovi AND RPP.id_rol = 5
            INNER JOIN persona PER ON PER.doc_identidad = RPP.doc_identidad
            WHERE audiovisual.id_audiovi = p_id_audiovi
        ) LOOP  
            v_nombre = concat(v_nombre, v_registro.primer_nom);
            v_nombre = concat(v_nombre, ' ');
            v_nombre = concat(v_nombre, v_registro.primer_ape);
            v_nombre = concat(v_nombre, '; ');
        END LOOP;
        fotografia := v_nombre;
        
        v_nombre := '';
        --REPARTO
        for v_registro IN (
            SELECT primer_nom, primer_ape
            FROM public.audiovisual 
            INNER JOIN rol_pel_pers RPP ON RPP.id_audiovi = p_id_audiovi 
            AND RPP.id_rol = 1 OR RPP.id_rol = 11
            INNER JOIN persona PER ON PER.doc_identidad = RPP.doc_identidad
            WHERE audiovisual.id_audiovi = p_id_audiovi
        ) LOOP  
            v_nombre = concat(v_nombre, v_registro.primer_nom);
            v_nombre = concat(v_nombre, ' ');
            v_nombre = concat(v_nombre, v_registro.primer_ape);
            v_nombre = concat(v_nombre, '; ');
        END LOOP;
        reparto := v_nombre;

        RETURN NEXT;
    END; $$;

-- SELECT  * FROM ficha_pelicula(1);
-- DROP FUNCTION ficha_pelicula(INT);

--------------------------------------------------------------------------
-- FICHA DE PREMIOS POR PELICULA
CREATE OR replace FUNCTION ficha_premios_pelicula (IN p_id_premio INT, IN p_ano_gala INT) 
    RETURNS TABLE (
        premio VARCHAR,
        presentador VARCHAR,
        pelicula VARCHAR, 
        titulo_original VARCHAR,
        resultado VARCHAR,
        presentador_gala VARCHAR
    ) 
    LANGUAGE plpgsql
    AS $$
    DECLARE 
        v_registro record;
        v_estatus_premio VARCHAR;
        v_contenido VARCHAR;
    BEGIN
        for v_registro IN (
            SELECT 
            nombre
            FROM public.categoria 
                WHERE id_categoria = p_id_premio
        ) LOOP  
            v_contenido = concat(v_contenido, 'Oscar a ');
            v_contenido = concat(v_contenido, v_registro.nombre);
        END LOOP;
        premio := v_contenido;

        
        v_registro := NULL;
        v_contenido = '';
        
        for v_registro IN (
            SELECT
            primer_nom,
            primer_ape
            FROM public.presentador 
            INNER JOIN persona PER ON PER.doc_identidad = presentador.doc_identidad
                WHERE id_gala = p_ano_gala AND id_categoria = p_id_premio
        ) LOOP  
            v_contenido = concat(v_contenido, v_registro.primer_nom);
            v_contenido = concat(v_contenido, ' ');
            v_contenido = concat(v_contenido, v_registro.primer_ape);
        END LOOP;
        presentador := v_contenido;

        RETURN NEXT;
        
        v_registro := NULL;
        v_contenido = '';
        
        for v_registro IN (
            SELECT
            postuladas_p_pers.id_postuladas_p_pers,
            NOM.ganador,
            AUD.titulo_espanol,
            AUD.titulo_original
            FROM public.postuladas_p_pers 
            INNER JOIN nominadas NOM ON 
            NOM.id_postuladas_p_pers = postuladas_p_pers.id_postuladas_p_pers
            INNER JOIN audiovisual AUD ON
            AUD.id_audiovi = postuladas_p_pers.id_audiovi OR AUD.id_audiovi = postuladas_p_pers.id_audiovi2
            WHERE postuladas_p_pers.ano_oscar = p_ano_gala AND postuladas_p_pers.id_categoria = p_id_premio 
            and postuladas_p_pers.empate='no'
        ) LOOP  
            pelicula := v_registro.titulo_espanol;
            titulo_original := v_registro.titulo_original;
            presentador := null;
            premio := null;
            IF v_registro.ganador = 'si' THEN
                resultado := 'Ganadora';
            ELSE
                resultado := 'Candidata';
            END IF;
            RETURN NEXT;
        END LOOP;
        
    END; $$; 

CREATE OR replace FUNCTION ficha_premios_nominados (p_id_premio INT, p_ano_gala INT) 
    RETURNS TABLE (
        premio VARCHAR,
        presentador VARCHAR,
        pelicula VARCHAR, 
        titulo_original VARCHAR,
        resultado VARCHAR,
        nombre_completo_id_nom VARCHAR,
        id_nominada integer
    ) 
    LANGUAGE plpgsql
    AS $$
    DECLARE 
        v_registro record;
        v_estatus_premio VARCHAR;
        v_contenido VARCHAR;
    BEGIN
        for v_registro IN (
            SELECT 
            nombre
            FROM public.categoria 
                WHERE id_categoria = p_id_premio
        ) LOOP  
            v_contenido = concat(v_contenido, 'Oscar a ');
            v_contenido = concat(v_contenido, v_registro.nombre);
        END LOOP;
        premio := v_contenido;

        
        v_registro := NULL;
        v_contenido = '';
        
        for v_registro IN (
            SELECT
            primer_nom,
            primer_ape
            FROM public.presentador 

            INNER JOIN persona PER ON PER.doc_identidad = presentador.doc_identidad
                WHERE id_gala = p_ano_gala AND id_categoria = p_id_premio
        ) LOOP  
            v_contenido = concat(v_contenido, v_registro.primer_nom);
            v_contenido = concat(v_contenido, ' ');
            v_contenido = concat(v_contenido, v_registro.primer_ape);
        END LOOP;
        presentador := v_contenido;

        RETURN NEXT;
        
        v_registro := NULL;
        v_contenido = '';
        
        for v_registro IN (
            SELECT 
            ganador,
            PER.primer_nom ||' '|| PER.primer_ape /*||' (Nominado #'|| 
            nominadas.id_nominada||')'*/  as "nombre_completo_id_nom",
            AUD.titulo_espanol,
            AUD.titulo_original,
            nominadas.id_nominada
            FROM nominadas 
            INNER JOIN postuladas_p_pers PPP ON 
            PPP.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
            INNER JOIN persona PER ON
            PER.doc_identidad = PPP.doc_identidad
            INNER JOIN audiovisual AUD ON
            AUD.id_audiovi = PPP.id_audiovi OR AUD.id_audiovi = PPP.id_audiovi2
            WHERE nominadas.ano_oscar = p_ano_gala AND nominadas.id_categoria = p_id_premio and (nominadas.empate='no' or nominadas.ganador='si')
        ) LOOP  
            pelicula := v_registro.titulo_espanol;
            titulo_original := v_registro.titulo_original;
            nombre_completo_id_nom := v_registro.nombre_completo_id_nom;
            presentador := null;
            premio := null;
            id_nominada := v_registro.id_nominada;
            IF v_registro.ganador = 'si' THEN
                resultado := 'Ganadora';
            ELSE
                resultado := 'Candidata';
            END IF;
            RETURN NEXT;
        END LOOP;
        
    END; $$;

--SELECT  * FROM ficha_premios_nominados(19,1985);
--DROP FUNCTION ficha_premios_nominados(integer, integer);

--------------------------------------------
CREATE OR replace FUNCTION ficha_premios_postulados (p_id_premio INT, p_ano_gala INT) 
    RETURNS TABLE (
        premio VARCHAR,
        pelicula VARCHAR, 
        titulo_original VARCHAR,
        nombre_completo_id_nom VARCHAR,
		presentador VARCHAR
    ) 
    LANGUAGE plpgsql
    AS $$
    DECLARE 
        v_registro record;
        v_estatus_premio VARCHAR;
        v_contenido VARCHAR;
    BEGIN
        for v_registro IN (
            SELECT 
            nombre
            FROM public.categoria 
                WHERE id_categoria = p_id_premio
        ) LOOP  
            v_contenido = concat(v_contenido, 'Oscar a ');
            v_contenido = concat(v_contenido, v_registro.nombre);
        END LOOP;
        premio := v_contenido;

        RETURN NEXT;
        
        v_registro := NULL;
        v_contenido = '';
        
        for v_registro IN (
            SELECT 
            PER.primer_nom ||' '|| PER.primer_ape ||' (Postulado #'|| 
            postuladas_p_pers.id_postuladas_p_pers||') ' as "nombre_completo_id_nom",
            AUD.titulo_espanol,
            AUD.titulo_original
            FROM postuladas_p_pers 
            INNER JOIN persona PER ON
            PER.doc_identidad = postuladas_p_pers.doc_identidad
            INNER JOIN audiovisual AUD ON
            AUD.id_audiovi = postuladas_p_pers.id_audiovi OR AUD.id_audiovi = postuladas_p_pers.id_audiovi2
            WHERE postuladas_p_pers.ano_oscar = p_ano_gala AND postuladas_p_pers.id_categoria = p_id_premio and postuladas_p_pers.empate='no'
        ) LOOP  
            pelicula := v_registro.titulo_espanol;
            titulo_original := v_registro.titulo_original;
            nombre_completo_id_nom := v_registro.nombre_completo_id_nom;
            presentador := null;
            premio := null;
            RETURN NEXT;
        END LOOP;
        
    END; $$;

--SELECT  * FROM ficha_premios_postulados(19,1985);
--DROP FUNCTION ficha_premios_postulados(integer, integer);

--  FICHA DE LOS TOTALES 
CREATE OR REPLACE FUNCTION ficha_oscar_totales(IN in_id_gala INT)
    RETURNS TABLE (
        ficha VARCHAR,
        titulo_espanol VARCHAR,
        titulo_original VARCHAR,
        nominaciones INT,
        premios INT
    )
    LANGUAGE plpgsql
    AS $$
    DECLARE 
        v_registro record;
        v_contenido VARCHAR;
    BEGIN

        FOR v_registro IN (
            SELECT gala.ano, gala.fecha, gala.numero_edicion, gala.lugar FROM public.gala
            WHERE gala.ano = in_id_gala
        
        ) LOOP
            v_contenido = concat(v_contenido,'Premios Oscars de ');
            v_contenido = concat(v_contenido, v_registro.ano);
            v_contenido = concat(v_contenido, ' (');
            v_contenido = concat(v_contenido, v_registro.numero_edicion);
            v_contenido = concat(v_contenido, 'º ceremonia, ');
            v_contenido = concat(v_contenido, EXTRACT(DAY FROM v_registro.fecha));
            v_contenido = concat(v_contenido, ' de ');
            v_contenido = concat(v_contenido, to_char(v_registro.fecha, 'MM'));
            v_contenido = concat(v_contenido, ' de ');
            v_contenido = concat(v_contenido, EXTRACT(YEAR FROM v_registro.fecha));
            v_contenido = concat(v_contenido,', ');
            v_contenido = concat(v_contenido, v_registro.lugar);
            v_contenido = concat(v_contenido, ').');
            
        END LOOP;
        ficha := v_contenido;
        RETURN NEXT;
    
        v_registro = NULL;
        ficha := NULL;
        
        FOR v_registro IN(
            SELECT DISTINCT audiovisual.titulo_espanol, audiovisual.titulo_original,
            audiovisual.total_nomi, audiovisual.total_ganador FROM nominadas JOIN postuladas_p_pers
            ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
            JOIN audiovisual 
            ON audiovisual.id_audiovi = postuladas_p_pers.id_audiovi
            WHERE nominadas.ano_oscar = in_id_gala 
        )
        LOOP
            titulo_espanol = v_registro.titulo_espanol;
            titulo_original = v_registro.titulo_original;
            nominaciones = v_registro.total_nomi;
            premios = v_registro.total_ganador;
            RETURN NEXT;
        END LOOP;
    END; $$;

-- DROP FUNCTION ficha_oscar_totales(INT);
-- SELECT * FROM ficha_oscar_totales(1985);

-- FICHA DE MIEMBRO POR AREA 
CREATE OR REPLACE FUNCTION ficha_miembro_area (IN in_area VARCHAR)
    RETURNS TABLE (
        doc_identidad BIGINT,
        primer_nom VARCHAR,
        primer_ape VARCHAR
    )
    LANGUAGE plpgsql
    AS $$
    DECLARE 
        v_registro record;
        v_contenido VARCHAR;
    BEGIN

        FOR v_registro IN(
            SELECT persona.doc_identidad, persona.primer_nom, persona.primer_ape FROM persona 
            JOIN  miembro 
            ON miembro.doc_identidad = persona.doc_identidad
            WHERE  in_area = ANY (miembro.area_nt)
        )
        LOOP
            doc_identidad := v_registro.doc_identidad;
            primer_nom := v_registro.primer_nom;
            primer_ape := v_registro.primer_ape;
            RETURN NEXT;
        END LOOP;
        
        RETURN;
    END; $$;
    
-- DROP FUNCTION ficha_miembro_area(VARCHAR);
-- SELECT * FROM ficha_miembro_area('actor');

CREATE OR REPLACE FUNCTION ficha_actor(IN in_doc_identidad BIGINT)
    RETURNS TABLE (
        nombre VARCHAR,
        fecha_nac VARCHAR,
        lugar_nac VARCHAR,
        roles VARCHAR, 
        biografia VARCHAR
    )
    LANGUAGE plpgsql
    AS $$
    DECLARE
        v_registro record;
    BEGIN
        FOR v_registro IN(
            SELECT persona.primer_nom, persona.primer_ape, 
			persona.segundo_nom, persona.segundo_ape, 
			persona.fecha_nac, persona.a_lugar_nac,
			persona.a_biografia FROM persona
            WHERE persona.doc_identidad = in_doc_identidad
        )
        LOOP
            nombre := concat(nombre,'Nombre Real:');
            nombre := concat(nombre,' ');
            nombre := concat(nombre, v_registro.primer_nom);
            nombre := concat(nombre,' ');
            IF v_registro.segundo_nom IS NOT NULL THEN
                nombre := concat(nombre, v_registro.segundo_nom);
                nombre := concat(nombre,' ');
            END IF;
            nombre := concat(nombre, v_registro.primer_ape);
            nombre := concat(nombre,' ');
            nombre := concat(nombre, v_registro.segundo_ape);
            fecha_nac := concat(fecha_nac, 'Nacimiento: ');
            fecha_nac := concat(fecha_nac, EXTRACT(DAY FROM v_registro.fecha_nac));
            fecha_nac := concat(fecha_nac, ' de ');
            fecha_nac := concat(fecha_nac, to_char(v_registro.fecha_nac, 'MM'));
            fecha_nac := concat(fecha_nac, ' de ');
            fecha_nac := concat(fecha_nac, EXTRACT(YEAR FROM v_registro.fecha_nac));
            fecha_nac := concat(fecha_nac, '  (');
            fecha_nac := concat(fecha_nac, EXTRACT(YEAR from age(current_date, v_registro.fecha_nac)));
            fecha_nac := concat(fecha_nac, ' años)');
            lugar_nac := v_registro.a_lugar_nac;
            biografia := v_registro.a_biografia;
        END LOOP;
		
		v_registro = NULL;
		
		FOR v_registro IN (
			SELECT DISTINCT rol.nombre FROM rol_pel_pers
			JOIN rol
			ON rol.id_rol = rol_pel_pers.id_rol
			WHERE rol_pel_pers.doc_identidad = in_doc_identidad 
		)
		LOOP
			roles := concat(roles,v_registro.nombre);
			roles := concat(roles,'; ');
		END LOOP;
        RETURN NEXT;
    END; $$;
	
-- DROP FUNCTION ficha_actor(BIGINT);
-- SELECT * FROM ficha_actor(9525);

CREATE OR REPLACE FUNCTION ficha_nominados_per()
    RETURNS VARCHAR
    LANGUAGE plpgsql
    AS $$
    DECLARE
        v_registro record;
     BEGIN
        FOR v_registro IN (

        )
    END; $$;

CREATE OR REPLACE FUNCTION ficha_nominados_pel(IN in_id_audiovi INT)
    RETURNS VARCHAR
    LANGUAGE plpgsql
    AS $$
    DECLARE
        v_registro record;
    BEGIN
        FOR v_registro IN (

        )
    END; $$;

CREATE OR REPLACE FUNCTION ficha_nominados(IN in_id_gala INT)
    RETURNS TABLE (
        premio VARCHAR,
        nominadas VARCHAR
    )
    LANGUAGE plpgsql
    AS $$
    DECLARE 
        v_registro record;
    BEGIN
        FOR v_registro IN (
            SELECT  FROM nominadas AS n
            JOIN postuladas_p_pers AS PPP
            ON n.id_postuladas_p_pers = ppp.id_postuladas_p_perse
            WHERE n.ano_oscar = in_id_gala
        )
    END; $$;