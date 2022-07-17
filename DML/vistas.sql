CREATE OR replace FUNCTION ficha_pelicula (
	p_id_audiovi INT
) 
RETURNS TABLE (
	titulo_espanol VARCHAR, titulo_original VARCHAR, 
    sinopsis VARCHAR, fecha_estreno_cine VARCHAR, 
    pais VARCHAR(20)[3],  
    distribucion_va VARCHAR(50)[3], censura VARCHAR, 
    duracion_min VARCHAR, genero_va VARCHAR(15)[5],
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
        distribucion_va := v_registro.distribucion_va; 
        censura := v_registro.censura; 
        duracion_min := v_registro.duracion_min; 
        genero_va := v_registro.genero_va;
        foto := v_registro.fotos;
        pais := v_registro.pais;
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
END; $$ 

--SELECT  * FROM ficha_pelicula(1);

--------------------------------------------------------------------------

CREATE OR replace FUNCTION ficha_premios_pelicula (
    p_id_premio INT,
    p_ano_gala INT
) 
RETURNS TABLE (
	premio VARCHAR,
	presentador VARCHAR,
	pelicula VARCHAR, 
    titulo_original VARCHAR,
    resultado VARCHAR
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
	
END; $$ 

--SELECT  * FROM ficha_premios_pelicula(28,1986);
--DROP FUNCTION ficha_premios_pelicula(integer, integer);

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
        WHERE gala.ano = 1986
    
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
