
-----------------------------------Procedimiento calculo de votos postulados e insercion en nominados------------------

CREATE OR replace procedure gestion_postulados(
   v_ano_oscar integer,
   v_id_categoria integer
)
LANGUAGE plpgsql    
AS $$
DECLARE 
	v_max_nom integer;
	v_length_temp integer;
	v_cantidad_max_nom integer;
BEGIN

	v_cantidad_max_nom=-1;
	WITH list AS
	 (SELECT 
			UNNEST(hist_premio_nt) AS row_result
	  FROM   public.categoria
	  WHERE  id_categoria= v_id_categoria )
	SELECT   
		   (row_result).cantidad_nom INTO v_cantidad_max_nom FROM list WHERE (row_result).fecha_fin IS NULL;
	IF v_cantidad_max_nom IS NULL THEN 
		RAISE EXCEPTION 'No existe ningun historico de este premio activo, por favor revisar el premio en la tabla categoria';
	end IF;
	
	----Calculo de votos
	CREATE TEMP TABLE tmp_votos (
		ano_oscar integer,
		id_categoria integer,
		id_postulado integer,
		cant_votos integer,
		ganador varchar(2)
	);
	
	
	INSERT INTO tmp_votos SELECT ano_oscar1, id_categoria1, id_postuladas_p_pers1, count(*)  FROM public.votos 
	WHERE ano_oscar1=v_ano_oscar AND id_categoria1=v_id_categoria 
	group by ano_oscar1, id_categoria1,id_postuladas_p_pers1
	order by 4 DESC
	limit v_max_nom;
	
	UPDATE tmp_votos SET ganador= 'no';
	
	----Insertando votos en la tabla nominado
	
	INSERT INTO public.nominadas(
	ganador, id_postuladas_p_pers, ano_oscar, id_categoria)
	SELECT  ganador, id_postulado, ano_oscar, id_categoria FROM tmp_votos;

    COMMIT;
end;$$

-----Prueba

call gestion_postulados(2001,19);

-----------------------------------Procedimiento calculo de votos nominados y actualizacion de ganador------------------
CREATE OR replace procedure gestion_nominados(
	v_ano_oscar integer,
	v_id_categoria integer
)

LANGUAGE plpgsql    
AS $$
DECLARE 
	v_id_ganador integer;
	v_numero_votos integer;
BEGIN

	----Calculo de votos
	SELECT id_nominada, count(*) INTO v_id_ganador, v_numero_votos FROM public.votos 
	WHERE ano_oscar=v_ano_oscar AND id_categoria=v_id_categoria 
	group by id_nominada
	order by 2 DESC
	limit 1;
		
	----Modificamos el parametro ganador
	UPDATE public.nominadas SET ganador= 'si' WHERE id_nominada= v_id_ganador; 

    COMMIT;
end;$$

-----Prueba
call gestion_nominados(2001,19);

---------------------------------------------------------------------------
-- ACTUALIZAR NT_AREA MEMBRESÍA
CREATE OR REPLACE PROCEDURE actualizar_area_nt_membresia(
	v_doc_identidad integer
)
LANGUAGE PLPGSQL
AS 
$$
DECLARE
	v_actor integer; v_guionista integer; v_director integer; v_productor integer;
	v_fotografo integer; v_tecnico integer;	v_ingsonido integer; 
	v_musico integer; v_estilista integer; v_artista integer;
	v_area_nt VARCHAR(255);
BEGIN
	v_area_nt = '{';

	SELECT COUNT(C2.rama) INTO v_actor
	FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
	INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
	INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad AND C2.rama = 'actor';
	
	IF v_actor > 1 THEN 
		v_area_nt = concat (v_area_nt,'actor'); 
	ELSE	
		SELECT COUNT(ganador) INTO v_actor
		FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
		INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
		INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad 
		AND ganador = 'si' AND C2.rama = 'actor';
		
		IF v_actor > 0 THEN 
			v_area_nt = concat (v_area_nt,'actor'); 
		END IF;
		
	END IF;

	SELECT COUNT(C2.rama) INTO v_guionista
	FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
	INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
	INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad AND C2.rama = 'guionista';

	IF v_guionista > 1 THEN 
		v_area_nt = concat (v_area_nt,'guionista'); 
	ELSE	
		SELECT COUNT(ganador) INTO v_guionista
		FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
		INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
		INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad 
		AND ganador = 'si' AND C2.rama = 'guionista';
		
		IF v_guionista > 0 THEN 
			v_area_nt = concat (v_area_nt,'guionista'); 
		END IF;
		
	END IF;

	SELECT COUNT(C2.rama) INTO v_director
	FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
	INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
	INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad AND C2.rama = 'director';

	IF v_director > 1 THEN 
		v_area_nt = concat (v_area_nt,'director'); 
	ELSE	
		SELECT COUNT(ganador) INTO v_director
		FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
		INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
		INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad 
		AND ganador = 'si' AND C2.rama = 'director';
		
		IF v_director > 0 THEN 
			v_area_nt = concat (v_area_nt,'director'); 
		END IF;
		
	END IF;

	SELECT COUNT(C2.rama) INTO v_productor
	FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
	INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
	INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad AND C2.rama = 'productor';

	IF v_productor > 1 THEN 
		v_area_nt = concat (v_area_nt,'productor'); 
	ELSE	
		SELECT COUNT(ganador) INTO v_productor
		FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
		INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
		INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad 
		AND ganador = 'si' AND C2.rama = 'productor';
		
		IF v_productor > 0 THEN 
			v_area_nt = concat (v_area_nt,'productor'); 
		END IF;
		
	END IF;

	SELECT COUNT(C2.rama) INTO v_fotografo
	FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
	INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
	INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad AND C2.rama = 'fotografo';

	IF v_fotografo > 1 THEN 
		v_area_nt = concat (v_area_nt,'fotografo'); 
	ELSE	
		SELECT COUNT(ganador) INTO v_fotografo
		FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
		INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
		INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad 
		AND ganador = 'si' AND C2.rama = 'fotografo';
		
		IF v_fotografo > 0 THEN 
			v_area_nt = concat (v_area_nt,'fotografo'); 
		END IF;
		
	END IF;

	SELECT COUNT(C2.rama) INTO v_tecnico
	FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
	INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
	INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad AND C2.rama = 'tecnico';

	IF v_tecnico > 1 THEN 
		v_area_nt = concat (v_area_nt,'tecnico'); 
	ELSE	
		SELECT COUNT(ganador) INTO v_tecnico
		FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
		INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
		INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad 
		AND ganador = 'si' AND C2.rama = 'tecnico';
		
		IF v_tecnico > 0 THEN 
			v_area_nt = concat (v_area_nt,'tecnico'); 
		END IF;
		
	END IF;

	SELECT COUNT(C2.rama) INTO v_ingsonido
	FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
	INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
	INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad AND C2.rama = 'ing.sonido';

	IF v_ingsonido > 1 THEN 
		v_area_nt = concat (v_area_nt,'ing.sonido'); 
	ELSE	
		SELECT COUNT(ganador) INTO v_ingsonido
		FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
		INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
		INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad 
		AND ganador = 'si' AND C2.rama = 'ing.sonido';
		
		IF v_ingsonido > 0 THEN 
			v_area_nt = concat (v_area_nt,'ing.sonido'); 
		END IF;
		
	END IF;

	SELECT COUNT(C2.rama) INTO v_musico
	FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
	INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
	INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad AND C2.rama = 'musico';

	IF v_musico > 1 THEN 
		v_area_nt = concat (v_area_nt,'musico'); 
	ELSE	
		SELECT COUNT(ganador) INTO v_musico
		FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
		INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
		INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad 
		AND ganador = 'si' AND C2.rama = 'musico';
		
		IF v_musico > 0 THEN 
			v_area_nt = concat (v_area_nt,'musico'); 
		END IF;
		
	END IF;

	SELECT COUNT(C2.rama) INTO v_estilista
	FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
	INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
	INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad AND C2.rama = 'estilista';

	IF v_estilista > 1 THEN 
		v_area_nt = concat (v_area_nt,'estilista'); 
	ELSE	
		SELECT COUNT(ganador) INTO v_estilista
		FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
		INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
		INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad 
		AND ganador = 'si' AND C2.rama = 'estilista';
		
		IF v_estilista > 0 THEN 
			v_area_nt = concat (v_area_nt,'estilista'); 
		END IF;
		
	END IF;

	SELECT COUNT(C2.rama) INTO v_artista
	FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
	INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
	INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad AND C2.rama = 'artista';

	IF v_artista > 1 THEN 
		v_area_nt = concat (v_area_nt,'artista'); 
	ELSE	
		SELECT COUNT(ganador) INTO v_artista
		FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
		INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
		INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_doc_identidad 
		AND ganador = 'si' AND C2.rama = 'artista';
		
		IF v_artista > 0 THEN 
			v_area_nt = concat (v_area_nt,'artista'); 
		END IF;
		
	END IF;

	v_area_nt = concat (v_area_nt, '}');

	UPDATE public.miembro SET area_nt = v_area_nt::VARCHAR[] WHERE doc_identidad = v_doc_identidad;

	COMMIT;	

END; $$

-- PRUEBA
CALL actualizar_area_nt_membresia(doc_identidad);


---------------------------------------------------------------------------------------------
-- ACTUALIZAR M_P DE MEMBRESÍA

CREATE OR replace procedure actualizar_mp(
	v_id_miembro integer
)

LANGUAGE PLPGSQL    
AS $$
DECLARE 
	v_doc_identidad integer;
	v_nt_area varchar[];
	v_nt_area_length int;
	v_id_categoria int;
BEGIN

	----
	SELECT area_nt INTO v_nt_area FROM public.miembro 
	WHERE id_miembro = v_id_miembro;
		
	----
	v_nt_area_length := array_length(v_nt_area, 1);

    --
	DELETE FROM public.m_p WHERE id_miembro = v_id_miembro;

	FOR i IN 1..v_nt_area_length
	LOOP
		
		SELECT id_categoria INTO v_id_categoria FROM public.categoria WHERE rama = v_nt_area[i];

		INSERT INTO m_p (
			id_miembro, id_categoria
		) SELECT v_id_miembro, id_categoria
		FROM categoria
		WHERE id_categoria2 = v_id_categoria;		
		
	END LOOP;

    COMMIT;
end;$$

--PRUEBA
call actualizar_mp(id_miembro);