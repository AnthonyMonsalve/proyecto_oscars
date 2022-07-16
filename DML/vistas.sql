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
	montaje VARCHAR, reparto VARCHAR
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
        audiovisual.pais,  
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