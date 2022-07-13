
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
	
)
LANGUAGE PLPGSQL
AS 
$$
DECLARE
	v_area_nt VARCHAR(255);
	query_rama varchar (200);
	query_persona varchar (200);
	v_rama RECORD;
	v_persona RECORD;
	v_cont integer;
	v_cont2 integer;
BEGIN
query_persona='select doc_identidad from public.persona';
FOR v_persona IN EXECUTE query_persona LOOP

	v_area_nt = '{';
	
	query_rama='select distinct rama from public.categoria where rama is not null';
	FOR v_rama IN EXECUTE query_rama LOOP
		v_cont=0;
		v_cont2=0;
			SELECT COUNT(C2.rama) INTO v_cont
			FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
			INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
			INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_persona.doc_identidad AND C2.rama = v_rama.rama;

			IF v_cont > 1 THEN 
				v_area_nt = concat (v_area_nt,v_rama.rama); 
			ELSE	
				SELECT COUNT(ganador) INTO v_cont2
				FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
				INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
				INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_persona.doc_identidad 
				AND ganador = 'si' AND C2.rama = v_rama.rama;

				IF v_cont2 > 0 THEN 
					v_area_nt = concat (v_area_nt,v_rama.rama); 
				END IF;

			END IF;
	end loop;


	v_area_nt = concat (v_area_nt, '}');
	if (v_area_nt<>'{}') then
		UPDATE public.miembro SET area_nt = v_area_nt::VARCHAR[] WHERE doc_identidad = v_persona.doc_identidad;
	else 
		UPDATE public.miembro SET area_nt = null WHERE doc_identidad = v_persona.doc_identidad;
	end if;
	
end loop;
COMMIT;	

END; $$

-- PRUEBA
CALL actualizar_area_nt_membresia();


---------------------------------------------------------------------------------------------
-- ACTUALIZAR M_P DE MEMBRESÍA

select id_miembro from public.miembro

CREATE OR replace procedure actualizar_mp(
)

LANGUAGE PLPGSQL    
AS $$
DECLARE 
	v_doc_identidad integer;
	v_nt_area varchar[];
	v_nt_area_length int;
	v_id_categoria int;
	v_miembro RECORD;
	query_miembro varchar (100);
BEGIN
	query_miembro='select id_miembro from public.miembro';
	FOR v_miembro IN EXECUTE query_miembro LOOP
		----
		SELECT area_nt INTO v_nt_area FROM public.miembro 
		WHERE id_miembro = v_miembro.id_miembro;

		----
		v_nt_area_length := array_length(v_nt_area, 1);

		--
		if v_nt_area_length is not null then
			DELETE FROM public.m_p WHERE id_miembro = v_miembro.id_miembro;

			FOR i IN 1..v_nt_area_length
			LOOP

				SELECT id_categoria INTO v_id_categoria FROM public.categoria WHERE rama = v_nt_area[i];

				INSERT INTO m_p (
					id_miembro, id_categoria
				) SELECT v_miembro.id_miembro, id_categoria
				FROM categoria
				WHERE id_categoria2 = v_id_categoria;		

			END LOOP;
		end if;
	END LOOP;
    COMMIT;
end;$$

--PRUEBA
call actualizar_mp();


-----------------------------------------------
-- ASIGNAR PRESENTADORES DE PREMIOS EN LA GALA
-----------------------------------------------

CREATE OR replace procedure asignar_presentadores_gala(
)

LANGUAGE PLPGSQL    
AS $$
DECLARE 
	v_id_gala integer;
BEGIN
	
	SELECT ano INTO v_id_gala FROM gala WHERE ano =(SELECT max(ano)-1  FROM gala);

	INSERT INTO presentador (
					id_gala, doc_identidad, id_categoria
				) SELECT nominadas.ano_oscar,
			PPP.doc_identidad, PPP.id_categoria
	FROM nominadas 
	INNER JOIN postuladas_p_pers PPP ON PPP.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
	WHERE nominadas.ano_oscar = v_id_gala AND ganador = 'si';

    COMMIT;
end;$$

-- PRUEBA
call asignar_presentadores_gala();