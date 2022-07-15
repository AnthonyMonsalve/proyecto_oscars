
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
	v_message text;
	v_votos_empate integer;
	v_record RECORD;
	v_query text;
	v_length_temp_emp int;
	v_empate varchar(4);
	v_nom int;
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
	
	---Validacion de si esta votacion esta activa o no
	
	select empate,num_post_emp into v_empate, v_nom from public.postuladas_p_pers where ano_oscar=v_ano_oscar and id_categoria=v_id_categoria and terminada='no';
	if not found then
		RAISE EXCEPTION 'Las votaciones de este anio ya han acabado';
	else if v_empate='si' then
			v_cantidad_max_nom=v_nom;
		end if;
	end if;
	----Calculo de votos
	
	
	
	CREATE TEMP TABLE tmp_votos2 (
		ano_oscar integer,
		id_categoria integer,
		id_postulado integer,
		cant_votos integer,
		ganador varchar(2)
	);
	
	insert into tmp_votos2 select ano_oscar1, id_categoria1, id_postuladas_p_pers1, count(*)  
	from public.votos 
	inner join public.postuladas_p_pers on votos.id_postuladas_p_pers1=postuladas_p_pers.id_postuladas_p_pers
	where ano_oscar1=v_ano_oscar and id_categoria1=v_id_categoria and terminada= 'no'
	group by ano_oscar1, id_categoria1,id_postuladas_p_pers1;
	
	for v_record 
		in select * from tmp_votos2 
		loop
			update public.postuladas_p_pers set cant_votos= v_record.cant_votos where id_postuladas_p_pers= v_record.id_postulado;
		end loop;
		
		v_record=null;
	
	delete from tmp_votos2;
	
	insert into tmp_votos2 select ano_oscar1, id_categoria1, id_postuladas_p_pers1, count(*)  
	from public.votos 
	inner join public.postuladas_p_pers on votos.id_postuladas_p_pers1=postuladas_p_pers.id_postuladas_p_pers
	where ano_oscar1=v_ano_oscar and id_categoria1=v_id_categoria and terminada= 'no'
	group by ano_oscar1, id_categoria1,id_postuladas_p_pers1
	order by 4 DESC
	fetch first v_cantidad_max_nom rows with ties;
	if not found then
		RAISE EXCEPTION 'No se han introducido ni un voto dentro de esta categoria';
	end if;
	
	update tmp_votos2 set ganador= 'no';
	
	----Comprobar Empate
	
	select count(*) into v_length_temp from  tmp_votos2;
	if(v_length_temp> v_cantidad_max_nom) then 
		------------------Caso Empate--------------------
		v_message= 'Se genero un empate en las votaciones, se debera realizar el proceso de votacion nuevamente con las siguientes postulaciones: ';
		select cant_votos into v_votos_empate from tmp_votos2 order by 1 asc limit 1;
		v_query= 'select id_postulado from tmp_votos2 where cant_votos=v_votos_empate';
		for v_record IN 
		select id_postulado from tmp_votos2 where cant_votos=v_votos_empate 
		LOOP
			v_message= concat (v_message,v_record.id_postulado);
			v_message= concat (v_message,' ');
		end loop;
		
		----modificacion de la antiguas postulaciones
		
		update public.postuladas_p_pers set terminada='si' where ano_oscar=v_ano_oscar and id_categoria=v_id_categoria;
		
		----insercion de las postulaciones ganadoras
		
		INSERT INTO public.nominadas(
		ganador, id_postuladas_p_pers, ano_oscar, id_categoria)
		select  ganador, id_postulado, ano_oscar, id_categoria from tmp_votos2 where cant_votos<>v_votos_empate;
		
		----insercion de las nuevas nominaciones
		
		CREATE temp TABLE c_postuladas_p_pers(
			id_postuladas_p_pers int,
			ano_oscar INT,
			id_categoria INT,
			empate varchar(2),
			 terminada varchar(2),
			 num_post_emp integer,
			id_rol INT,
			doc_identidad INT,
			id_audiovi INT,
			id_audiovi2 INT, 
			ronda_emp int
		);

		INSERT INTO c_postuladas_p_pers(
		id_postuladas_p_pers, ano_oscar, id_categoria, empate, terminada, num_post_emp, 
		id_rol, doc_identidad, id_audiovi, id_audiovi2, ronda_emp)
		SELECT id_postuladas_p_pers, ano_oscar, id_categoria, empate, terminada, num_post_emp, 
		id_rol, doc_identidad, id_audiovi, id_audiovi2,ronda_emp+1 from public.postuladas_p_pers
		where id_postuladas_p_pers in (select id_postulado from tmp_votos2 where cant_votos=v_votos_empate);
		
		update c_postuladas_p_pers set empate='si' and cant_votos =0;
		
		select count(*) into v_length_temp_emp from c_postuladas_p_pers;
		
		update c_postuladas_p_pers set terminada='no', num_post_emp= v_cantidad_max_nom - (v_length_temp - v_length_temp_emp); 
		
		INSERT INTO public.postuladas_p_pers(
		ano_oscar, id_categoria, empate, terminada, num_post_emp, 
		id_rol, doc_identidad, id_audiovi, id_audiovi2, ronda_emp)
		SELECT  ano_oscar, id_categoria, empate, terminada, num_post_emp, 
		id_rol, doc_identidad, id_audiovi, id_audiovi2,ronda_emp from c_postuladas_p_pers;
		
		
		----Notificacion al usuario
		v_message= concat(v_message,'. Los postulados han sido nuevamente ingresados en el sistema para una votacion de desempate');
		raise notice '%', v_message;
		drop table c_postuladas_p_pers;
		drop table tmp_votos2;
		return;
	end if;
	
	----Insertando votos en la tabla nominado
	
	update public.postuladas_p_pers set terminada='si' where ano_oscar=v_ano_oscar and id_categoria=v_id_categoria;
	
	INSERT INTO public.nominadas(
	ganador, id_postuladas_p_pers, ano_oscar, id_categoria)
	select  ganador, id_postulado, ano_oscar, id_categoria from tmp_votos2;

	drop table tmp_votos2;
    commit;
end;$$

-----Prueba
call gestion_postulados(2001,19);



-----------------------------------Procedimiento calculo de votos nominados actualizacion de ganador------------------

create or replace procedure gestion_nominados(
   v_ano_oscar integer,
	v_id_categoria integer
)
language plpgsql    
as $$
Declare 
	v_id_ganador integer;
	v_numero_votos integer;
	v_empate varchar(2);
	v_record RECORD;
	v_message text;
	v_query varchar (250);
	v_length_temp integer;
	v_votos_empate integer;
	v_votos integer;
begin

	select empate into v_empate from public.nominadas where ano_oscar=v_ano_oscar and id_categoria=v_id_categoria and terminada='no';
	if not found then
		RAISE EXCEPTION 'Las votaciones de este ano para esta categoria ya han acabado';
	end if;
	
	
	----Calculo de votos
	
	CREATE TEMP TABLE tmp_votos (
		id_nominada integer,
		id_categoria integer,
		ano_oscar integer,
		id_postulado integer,
		cant_votos integer,
		ganador varchar(2)
	);
	
	insert into tmp_votos(id_nominada,id_categoria,ano_oscar,id_postulado,cant_votos)  
	select votos.id_nominada, votos.id_categoria, votos.ano_oscar, votos.id_postuladas_p_pers, count(*)  
	from public.votos 
	inner join public.nominadas on votos.id_nominada=nominadas.id_nominada
	where votos.ano_oscar=v_ano_oscar and votos.id_categoria=v_id_categoria and nominadas.terminada= 'no'
	group by votos.id_nominada, votos.id_categoria, votos.ano_oscar, votos.id_postuladas_p_pers;
	
		for v_record 
		in select * from tmp_votos 
		loop
			update public.nominadas set cant_votos= v_record.cant_votos where id_nominada= v_record.id_nominada;
		end loop;
		
		v_record=null;
	
	delete from tmp_votos;
	
	insert into tmp_votos(id_nominada,id_categoria,ano_oscar,id_postulado,cant_votos)  
	select votos.id_nominada, votos.id_categoria, votos.ano_oscar, votos.id_postuladas_p_pers, count(*)  
	from public.votos 
	inner join public.nominadas on votos.id_nominada=nominadas.id_nominada
	where votos.ano_oscar=v_ano_oscar and votos.id_categoria=v_id_categoria and nominadas.terminada= 'no'
	group by votos.id_nominada, votos.id_categoria, votos.ano_oscar, votos.id_postuladas_p_pers
	order by 5 DESC
	fetch first 1 rows with ties;
	if not found then
		RAISE EXCEPTION 'No se han introducido ni un voto dentro de esta categoria';
	end if;
	----Comprobar Empate
	
	select count(*) into v_length_temp from  tmp_votos;
	if(v_length_temp> 1) then 
		------------------Caso Empate--------------------
		
		--------------------Generar Mensaje Empate------------------------
		v_message= 'Se genero un empate en las votaciones por el ganador de premio, se debera realizar el proceso de votacion nuevamente con las siguientes nominaciones para determinar el ganador: ';
		select cant_votos into v_votos_empate from tmp_votos order by 1 asc limit 1;
		for v_record IN 
		select id_nominada from tmp_votos where cant_votos=v_votos_empate 
		LOOP
			v_message= concat (v_message,v_record.id_nominada);
			v_message= concat (v_message,' ');
		end loop;
		
		----modificacion de la antiguas postulaciones
		
		update public.nominadas set terminada='si' where ano_oscar=v_ano_oscar and id_categoria=v_id_categoria;
		
		----insercion de las nuevas nominaciones
		
		CREATE temp TABLE c_nominadas(
			id_nominada int,
			ganador varchar(2),
			id_postuladas_p_pers INT,
			ano_oscar int,
			id_categoria int,
			empate varchar(2),
			 terminada varchar(2),
			ronda_emp int,
			cant_votos int
		);

		INSERT INTO c_nominadas(
		id_nominada, ganador, id_postuladas_p_pers, ano_oscar, id_categoria, empate, terminada, ronda_emp)
		SELECT id_nominada, ganador, id_postuladas_p_pers, ano_oscar, id_categoria, empate, terminada, ronda_emp+1
		from public.nominadas
		where id_nominada in (select id_nominada from tmp_votos);
		update c_nominadas set empate='si', terminada='no',cant_votos=0;
		
		
		INSERT INTO public.nominadas(
		ganador, id_postuladas_p_pers, ano_oscar, id_categoria, empate, terminada, ronda_emp,cant_votos)
		SELECT ganador, id_postuladas_p_pers, ano_oscar, id_categoria, empate, terminada, ronda_emp, cant_votos
		from c_nominadas;
		
		---------------------------Notificar Usuario--------------------------
		v_message= concat(v_message,'. Los postulados han sido nuevamente ingresados en el sistema para una votacion de desempate');
		raise notice '%', v_message;
		drop table c_nominadas;
		drop table tmp_votos;
		return;
	end if;
	
	----Modificamos el parametro ganador
	
	update public.nominadas set ganador= 'si' where id_nominada in (select id_nominada from tmp_votos); 
	/*select cant_votos into v_votos from tmp_votos;*/
	update public.nominadas set terminada='si' /*and cant_votos= v_votos*/ where ano_oscar=v_ano_oscar and id_categoria=v_id_categoria;
	
	drop table tmp_votos;
    commit;
end;$$

-----Prueba
call gestion_nominados(2001,19);

---------------------------------------------------------------------------
-- ACTUALIZAR NT_AREA MEMBRESÍA


CREATE OR REPLACE PROCEDURE actualizar_area_nt_membresia()
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
	v_cont3 integer;
BEGIN
query_persona='select doc_identidad from public.persona';
FOR v_persona IN EXECUTE query_persona LOOP
	v_cont3=0;
	v_area_nt = '{';
	
	query_rama='select distinct rama from public.categoria where rama is not null';
	FOR v_rama IN EXECUTE query_rama LOOP
		v_cont=0;
		v_cont2=0;
			SELECT COUNT(C2.rama) INTO v_cont
			FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
			INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
			INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 
			WHERE doc_identidad = v_persona.doc_identidad AND C2.rama = v_rama.rama and nominadas.empate='no'; 

			IF v_cont > 1 THEN 
				if (v_cont3=0) then
					v_area_nt = concat (v_area_nt,v_rama.rama); 
					v_cont3=v_cont3+1;
				else
					v_area_nt = concat (v_area_nt,','); 
					v_area_nt = concat (v_area_nt,v_rama.rama); 
				end if;
			ELSE	
				SELECT COUNT(ganador) INTO v_cont2
				FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
				INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
				INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_persona.doc_identidad 
				AND ganador = 'si' AND C2.rama = v_rama.rama;

				IF v_cont2 > 0 THEN 
					if (v_cont3=0) then
						v_area_nt = concat (v_area_nt,v_rama.rama); 
						v_cont3=v_cont3+1;
					else
						v_area_nt = concat (v_area_nt,','); 
						v_area_nt = concat (v_area_nt,v_rama.rama); 
					end if;
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
