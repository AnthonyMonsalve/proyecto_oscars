
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
