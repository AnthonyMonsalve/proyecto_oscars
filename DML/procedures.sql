
-----------------------------------Procedimiento calculo de votos postulados e insercion en nominados------------------

create or replace procedure gestion_postulados(
   v_ano_oscar integer,
	v_id_categoria integer
)
language plpgsql    
as $$
Declare 
	v_max_nom integer;
	v_length_temp integer;
	v_cantidad_max_nom integer;
begin

	v_cantidad_max_nom=-1;
	WITH list AS
	 (SELECT 
			UNNEST(hist_premio_nt) AS row_result
	  FROM   public.categoria
	  WHERE  id_categoria= v_id_categoria )
	SELECT   
		   (row_result).cantidad_nom into v_cantidad_max_nom FROM list where (row_result).fecha_fin is null;
	if v_cantidad_max_nom is null then 
		RAISE EXCEPTION 'No existe ningun historico de este premio activo, por favor revisar el premio en la tabla categoria';
	end if;
	
	----Calculo de votos
	CREATE TEMP TABLE tmp_votos (
		ano_oscar integer,
		id_categoria integer,
		id_postulado integer,
		cant_votos integer,
		ganador varchar(2)
	);
	
	
	insert into tmp_votos select ano_oscar1, id_categoria1, id_postuladas_p_pers1, count(*)  from public.votos 
	where ano_oscar1=v_ano_oscar and id_categoria1=v_id_categoria 
	group by ano_oscar1, id_categoria1,id_postuladas_p_pers1
	order by 4 DESC
	limit v_max_nom;
	
	update tmp_votos set ganador= 'no';
	
	----Insertando votos en la tabla nominado
	
	INSERT INTO public.nominadas(
	ganador, id_postuladas_p_pers, ano_oscar, id_categoria)
	select  ganador, id_postulado, ano_oscar, id_categoria from tmp_votos;

    commit;
end;$$

-----Prueba

call gestion_postulados(2001,19);
