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
	v_record2 RECORD;
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
		id_audiovi integer,
		id_audiovi2 integer,
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
	
	insert into tmp_votos(id_nominada,id_categoria,ano_oscar,id_postulado,cant_votos,id_audiovi,id_audiovi2)  
	select votos.id_nominada, votos.id_categoria, votos.ano_oscar, votos.id_postuladas_p_pers, count(*),postuladas_p_pers.id_audiovi, postuladas_p_pers.id_audiovi2  
	from public.votos 
	inner join public.nominadas on votos.id_nominada=nominadas.id_nominada
	inner join public.postuladas_p_pers on postuladas_p_pers.id_postuladas_p_pers=nominadas.id_postuladas_p_pers
	where votos.ano_oscar=v_ano_oscar and votos.id_categoria=v_id_categoria and nominadas.terminada= 'no'
	group by votos.id_nominada, votos.id_categoria, votos.ano_oscar, votos.id_postuladas_p_pers,postuladas_p_pers.id_audiovi, postuladas_p_pers.id_audiovi2
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
	
	for v_record2 in 
	select  id_audiovi,id_audiovi2 from tmp_votos loop
		update public.audiovisual set total_ganador=total_ganador+1 where id_audiovi=v_record2.id_audiovi or id_audiovi=v_record2.id_audiovi2;
	end loop;
	
	drop table tmp_votos;
    commit;
end;$$

-----Prueba
call gestion_nominados(2001,19);


-----------------------------------Procedimiento calculo de votos postulados e insercion en nominados------------------


create or replace procedure gestion_nominados(v_ano_oscar integer, v_id_categoria integer)
	language plpgsql    
	as $$
	Declare 
		v_max_nom integer;
		v_length_temp integer;
		v_cantidad_max_nom integer;
		v_message text;
		v_votos_empate integer;
		v_record RECORD;
		v_record2 RECORD;
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
			id_audiovi integer,
			id_audiovi2 integer,
			ganador varchar(2)
		);
		
		insert into tmp_votos2 
		select ano_oscar1, id_categoria1, id_postuladas_p_pers1, count(*)
		
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
		
		insert into tmp_votos2 select ano_oscar1, id_categoria1, id_postuladas_p_pers1, count(*), postuladas_p_pers.id_audiovi, postuladas_p_pers.id_audiovi2
		from public.votos 
		inner join public.postuladas_p_pers on votos.id_postuladas_p_pers1=postuladas_p_pers.id_postuladas_p_pers
		where ano_oscar1=v_ano_oscar and id_categoria1=v_id_categoria and terminada= 'no'
		group by ano_oscar1, id_categoria1,id_postuladas_p_pers1, postuladas_p_pers.id_audiovi, postuladas_p_pers.id_audiovi2
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
			
			for v_record2 in 
			select  id_audiovi,id_audiovi2 from tmp_votos2 where cant_votos<>v_votos_empate loop
				update public.audiovisual set total_nomi=total_nomi+1 where id_audiovi=v_record2.id_audiovi or id_audiovi=v_record2.id_audiovi2;
			end loop;
		----insercion de las nuevas postulaciones
			
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
		ganador, id_postuladas_p_pers, ano_oscar, id_categoria,empate, ronda_emp, terminada,cant_votos)
		select  ganador, id_postulado, ano_oscar, id_categoria,'no',0,'no',0 from tmp_votos2;

		for v_record2 in 
		select  id_audiovi,id_audiovi2 from tmp_votos2 loop
			update public.audiovisual set total_nomi=total_nomi+1 where id_audiovi=v_record2.id_audiovi or id_audiovi=v_record2.id_audiovi2;
		end loop;

		
		drop table tmp_votos2;
		commit;
	end; $$;


-----Prueba
-- call gestion_nominados(2001,19);


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
					
					IF not EXISTS (SELECT * FROM public.miembro WHERE doc_identidad = v_persona.doc_identidad) then
						INSERT INTO public.miembro(
						fecha_inicio, vitalicio, doc_identidad, fecha_fin, area_nt)
						VALUES ( now(), 'no', v_persona.doc_identidad, null, null);
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
						IF not EXISTS (SELECT * FROM public.miembro WHERE doc_identidad = v_persona.doc_identidad) then
							INSERT INTO public.miembro(
							fecha_inicio, vitalicio, doc_identidad, fecha_fin, area_nt)
							VALUES ( now(), 'no', v_persona.doc_identidad, null, null);
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

	update public.miembro set vitalicio= 'si' where id_miembro in(select id_miembro from public.miembro 
	where extract(days from (now()-fecha_inicio))/365.25>=15 and fecha_fin is null);

	COMMIT;	

	END; $$;

-- PRUEBA
-- CALL actualizar_area_nt_membresia();


---------------------------------------------------------------------------------------------
-- ACTUALIZAR M_P DE MEMBRESÍA

CREATE OR replace procedure actualizar_mp()
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
	end;$$;

--PRUEBA
-- call actualizar_mp();


-----------------------------------------------
-- ASIGNAR PRESENTADORES DE PREMIOS EN LA GALA
-----------------------------------------------

CREATE OR replace procedure asignar_presentadores_gala(v_ano_oscar integer)
	LANGUAGE PLPGSQL    
	AS $$
	DECLARE 
		v_id_gala integer;
	BEGIN
		
		SELECT ano INTO v_id_gala FROM gala WHERE ano = v_ano_oscar-1;

		INSERT INTO presentador (
						id_gala, doc_identidad, id_categoria
					) SELECT v_ano_oscar,
				PPP.doc_identidad, PPP.id_categoria
		FROM nominadas 
		INNER JOIN postuladas_p_pers PPP ON PPP.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
		WHERE nominadas.ano_oscar = v_id_gala AND ganador = 'si';

		COMMIT;
	end; $$;

-- PRUEBA
-- call asignar_presentadores_gala();

----------------Actualizar historico de premio

create or replace procedure Actualizar_Premio(v_id_categoria integer, v_titulo varchar(70), v_cant_nom integer)
	language plpgsql    
	as $$
	Declare 
		v_ult_reg integer;
		v_numero_votos integer;
	begin
		
		WITH list AS
		(SELECT 
				UNNEST(hist_premio_nt) AS row_result
		FROM   public.categoria
		WHERE  id_categoria= v_id_categoria)
		select   
			count(*) into v_ult_reg

		FROM     list;
		
		
		--Para modificar un registro en particular de nuestro  array, este se utilizara para colocar la fecha de fin a 
		--nuestro registro

		UPDATE public.categoria SET hist_premio_nt[v_ult_reg] = (hist_premio_nt[v_ult_reg].fecha_ini, now(), hist_premio_nt[v_ult_reg].nombre, hist_premio_nt[v_ult_reg].cantidad_nom)::hist_premio
		WHERE id_categoria = v_id_categoria;

		--insert historicos de los premios
		UPDATE public.categoria 
		SET hist_premio_nt = hist_premio_nt || (now(),NULL,v_titulo,v_cant_nom)::hist_premio
		WHERE id_categoria = v_id_categoria;
		commit;
	end; $$;
	
	-- PREUBA
	-- call Actualizar_Premio(19,'Mejor pelicula',2);







---------------------------Postular-------------------------------------------

create or replace procedure postular_pelicula(
    v_ano_oscar integer,
	v_id_miembro integer,
	v_audiovisual integer
)
language plpgsql    
as $$
Declare 
	v_id_ganador integer;
	v_numero_votos integer;
	v_cont int;
	v_fecha_fin date;
	v_vitalicio varchar(2);
begin

-------verificar permisos de miembro

	v_fecha_fin= null;
	select vitalicio, fecha_fin into v_vitalicio, v_fecha_fin  from miembro where id_miembro=v_id_miembro;
	if v_fecha_fin is not null then 
		RAISE EXCEPTION 'No posee una membresia o la que tiene ha sido caancelada, por ende, no puede participar en la votaciones';	
	end if;
	perform from public.audiovisual where id_audiovi=v_audiovisual and extract(year from fecha_estreno_cine)=v_ano_oscar-1;
	if not found then
		RAISE EXCEPTION 'La pelicula que estas intentando ingresar fue estrenada en un anio diferente al de la gala, por lo tanto, no puede postularla para este anio';
	end if;
	perform from public.gala where ano=v_ano_oscar;
	if not found then
		RAISE EXCEPTION 'No existe ninguna gala vinculada a ese anio';
	end if;
	
	v_cont=0;
	select count(*) into v_cont from public.postulado_votos 
	where id_miembro=v_id_miembro and fecha_ano=v_ano_oscar;
	if v_cont>=2 then 
		RAISE EXCEPTION 'Ya alcanzo el numero maximo de postulaciones para este anio, siga participando el anio que viene';
	end if;
	
	perform from public.postulado_votos 
	where id_audiovi=v_audiovisual and id_miembro=v_id_miembro and fecha_ano=v_ano_oscar;
	if found then
		RAISE EXCEPTION 'No puede postular dos veces a la misma pelicula';
	end if;
	
	
---------- ingresar la postulacion------

	INSERT INTO public.postulado_votos(
	id_audiovi, id_miembro, fecha_ano)
	VALUES (v_audiovisual, v_id_miembro, v_ano_oscar);

    commit;
end;$$

------ Arroglar para prueba:
-- call postular_pelicula(2001,20,13);


----------------------Gestion automatica de los postulados------------------

create or replace procedure gestion_postulados(v_ano_oscar integer)
	language plpgsql    
	as $$
	Declare 
		v_id_ganador integer;
		v_numero_votos integer;
		v_categoria integer;
		v_record_categoria RECORD;
		v_record_categoria2 RECORD;
		v_record_roles RECORD;
		v_genero varchar(2);
	begin

	--------------------Creacion de tablas temporales-------------------

		create temp table tmp_postu(
			ano_oscar int,
			id_categoria int,
			id_rol int,
			doc_identidad int,
			id_audiovi int,
			id_audiovi2 int, 
			empate varchar(2),
			num_post_emp int,
			terminada varchar(2),
			ronda_emp int,
			cant_votos int
		);
		
		create temp table tmp_roles(
			id_audiovi int,
			nombre varchar(60),
			id_rol int,
			doc_identidad int,
			id_audivisual_pel int
		);
		
		insert into tmp_roles (nombre,id_rol,id_audiovi,doc_identidad)
		select Distinct rol.nombre, rol_pel_pers.id_rol, rol_pel_pers.id_audiovi, rol_pel_pers.doc_identidad 
		from postulado_votos 
		inner join public.rol_pel_pers on rol_pel_pers.id_audiovi=postulado_votos.id_audiovi
		inner join public.rol on rol_pel_pers.id_rol=rol.id_rol where postulado_votos.fecha_ano = v_ano_oscar;
		
		insert into tmp_roles (id_audivisual_pel)
		select Distinct postulado_votos.id_audiovi 
		from postulado_votos 
		where postulado_votos.fecha_ano = v_ano_oscar;
		
		----Calculo de Postulaciones
		
		--------------------------Caso Audiovisual (Cortometraje, Largometraje, documental)-------------
		
					for v_record_roles in 
					select audiovisual.id_audiovi ,clas_audiovisual, duracion_min
					from tmp_roles 
					inner join public.audiovisual on audiovisual.id_audiovi=tmp_roles.id_audivisual_pel
					where id_audivisual_pel is not null loop
						v_categoria=0;
						if v_record_roles.clas_audiovisual='largometraje' then
							INSERT INTO tmp_postu(
							ano_oscar, id_categoria, id_rol,
							doc_identidad, id_audiovi, id_audiovi2, empate, num_post_emp, terminada, ronda_emp, cant_votos)
							VALUES ( v_ano_oscar,17, null, 
									null,null, v_record_roles.id_audiovi, 'no', 0, 'no', 0, 0);
						else
							if v_record_roles.clas_audiovisual='cortometraje' then
								INSERT INTO tmp_postu(
								ano_oscar, id_categoria, id_rol,
								doc_identidad, id_audiovi, id_audiovi2, empate, num_post_emp, terminada, ronda_emp, cant_votos)
								VALUES ( v_ano_oscar,25, null, 
										null,null,  v_record_roles.id_audiovi, 'no', 0, 'no', 0, 0);
							else
								if v_record_roles.clas_audiovisual='documental' then
									
									if v_record_roles.duracion_min<60 then
										INSERT INTO tmp_postu(
										ano_oscar, id_categoria, id_rol,
										doc_identidad, id_audiovi, id_audiovi2, empate, num_post_emp, terminada, ronda_emp, cant_votos)
										VALUES ( v_ano_oscar,33, null, 
												null,null,  v_record_roles.id_audiovi, 'no', 0, 'no', 0, 0);
										
									else 
										INSERT INTO tmp_postu(
										ano_oscar, id_categoria, id_rol,
										doc_identidad, id_audiovi, id_audiovi2, empate, num_post_emp, terminada, ronda_emp, cant_votos)
										VALUES ( v_ano_oscar,34, null, 
												null,null,  v_record_roles.id_audiovi, 'no', 0, 'no', 0, 0);
										
									end if;
								end if;
							end if;
							
						end if;
						
					end loop;
		
		for v_record_categoria in 
		select id_categoria, rama from public.categoria where id_categoria2 is null
		loop
			if v_record_categoria.id_categoria=3 then
				---------------------------Caso Actor------------------
				
				for v_record_roles in 
				select * from tmp_roles 
				where nombre='actor' or nombre='actor de reparto' 
				loop
					/*for v_record_categoria2 in 
					select id_categoria from public.categoria where id_categoria2=v_record_categoria.id_categoria
					loop*/
					
						if v_record_roles.nombre='actor' then
							select sexo into v_genero from public.persona where doc_identidad=v_record_roles.doc_identidad;
							if v_genero='M' then
								INSERT INTO tmp_postu(
								ano_oscar, id_categoria, id_rol, doc_identidad, id_audiovi, id_audiovi2, empate, num_post_emp, terminada, ronda_emp, cant_votos)
								VALUES ( v_ano_oscar, 19, v_record_roles.id_rol,
										v_record_roles.doc_identidad,v_record_roles.id_audiovi, null, 'no', 0, 'no', 0, 0);
							end if;
							if v_genero='F' then
								INSERT INTO tmp_postu(
								ano_oscar, id_categoria, id_rol, doc_identidad, id_audiovi, id_audiovi2, empate, num_post_emp, terminada, ronda_emp, cant_votos)
								VALUES ( v_ano_oscar, 20, v_record_roles.id_rol,
										v_record_roles.doc_identidad,v_record_roles.id_audiovi, null, 'no', 0, 'no', 0, 0);
							end if;
						end if;
						if v_record_roles.nombre='actor de reparto' then
							select sexo into v_genero from public.persona where doc_identidad=v_record_roles.doc_identidad;
							if v_genero='M' then
								INSERT INTO tmp_postu(
								ano_oscar, id_categoria, id_rol, doc_identidad, id_audiovi, id_audiovi2, empate, num_post_emp, terminada, ronda_emp, cant_votos)
								VALUES ( v_ano_oscar, 29, v_record_roles.id_rol,
										v_record_roles.doc_identidad,v_record_roles.id_audiovi, null, 'no', 0, 'no', 0, 0);
							end if;
							if v_genero='F' then
								INSERT INTO tmp_postu(
								ano_oscar, id_categoria, id_rol, doc_identidad, id_audiovi, id_audiovi2, empate, num_post_emp, terminada, ronda_emp, cant_votos)
								VALUES ( v_ano_oscar, 30, v_record_roles.id_rol,
										v_record_roles.doc_identidad,v_record_roles.id_audiovi, null, 'no', 0, 'no', 0, 0);
							end if;
						
						end if;
					/*end loop;*/
				end loop;
				
				
			else
				if v_record_categoria.id_categoria in (1,8,12) then
					--------------------------Para que no entre cuando hay un audiovisual-------------
					
					
				else
					----------------------------Caso Por defecto --------------------------------------
					for v_record_roles in 
					select * from tmp_roles 
					where nombre=v_record_categoria.rama 
					loop
						for v_record_categoria2 in 
						select id_categoria from public.categoria where id_categoria2=v_record_categoria.id_categoria
						loop
							INSERT INTO tmp_postu(
							ano_oscar, id_categoria, id_rol, doc_identidad, id_audiovi, id_audiovi2, empate, num_post_emp, terminada, ronda_emp, cant_votos)
							VALUES ( v_ano_oscar, v_record_categoria2.id_categoria, v_record_roles.id_rol, v_record_roles.doc_identidad,v_record_roles.id_audiovi, null, 'no', 0, 'no', 0, 0);
						end loop;
					end loop;
				end if;
			end if;
		end loop;
		
		--------------------Insetar en Postulados
		
		INSERT INTO public.postuladas_p_pers(
		ano_oscar, id_categoria, id_rol, doc_identidad, id_audiovi, id_audiovi2, empate, num_post_emp, terminada, ronda_emp, cant_votos)
		select ano_oscar,id_categoria,id_rol,doc_identidad,id_audiovi,id_audiovi2,empate,num_post_emp, terminada, ronda_emp, cant_votos
		from tmp_postu;
		
		
		DROP table tmp_postu;
		DROP table tmp_roles;
		commit;
	end; $$;

-----------Prueba
-- call gestion_postulados(2001);

---------Procedimiento para comprobar si un actor no tiene una biografia o un lugar de nacimiento
create or replace procedure validar_actor()
language plpgsql    
as $$
declare
v_record RECORD;
v_message text;
begin
	v_message='Los actores que carecen de biografia o lugar de nacimiento son los siguientes: ';
	for v_record in
		select persona.doc_identidad,a_lugar_nac, a_biografia,primer_nom,primer_ape, segundo_ape 
		from public.persona
		inner join public.rol_pel_pers on rol_pel_pers.doc_identidad= persona.doc_identidad 
		where id_rol=1 and (a_biografia is not null or a_lugar_nac is not null)
	loop
		v_message=v_message || v_record.primer_nom || ' ' || v_record.primer_ape || '(' || v_record.doc_identidad || ') ';
	end loop;
	if not found then 
		raise notice 'Todos los actores tienen sus datos correctamente colocados';
		return;
	end if;
	
	
	raise notice '%', v_message;
end;$$
 -------Prueba---------
 call validar_actor();
 
 
 declare 
v_id_categoria integer;
v_ano_oscar integer;
v_id_postulado integer;
begin
	select id_categoria, id_postuladas_p_pers, ano_oscar into v_id_categoria, v_id_postulado, v_ano_oscar from public.nominadas where id_nominada=v_id_nominado;
	if found then
		INSERT INTO public.votos(
		fecha_hora, tipo_voto, id_miembro, id_nominada, id_categoria, id_postuladas_p_pers, ano_oscar, id_categoria1, id_postuladas_p_pers1, ano_oscar1)
		VALUES (now(), 'nominado', v_id_miembro,v_id_nominado, v_id_categoria,v_id_postulado, v_ano_oscar,null, null, null);
	else
		raise exception 'El id de nominado ingresado no esta registrado en el sistema';
	end if;
end;


---------------------------Votar Nominado------------
create or replace procedure votar_nominados(
	v_id_nominado integer,
	v_id_miembro integer
)
language plpgsql    
as $$
declare 
v_id_categoria integer;
v_ano_oscar integer;
v_id_postulado integer;
begin
	select id_categoria, id_postuladas_p_pers, ano_oscar into v_id_categoria, v_id_postulado, v_ano_oscar from public.nominadas where id_nominada=v_id_nominado;
	if found then
		INSERT INTO public.votos(
		fecha_hora, tipo_voto, id_miembro, id_nominada, id_categoria, id_postuladas_p_pers, ano_oscar, id_categoria1, id_postuladas_p_pers1, ano_oscar1)
		VALUES (now(), 'nominado', v_id_miembro,v_id_nominada, v_id_categoria,v_id_postulado, v_ano_oscar,null, null, null);
	else
		raise exception 'El id de nominado ingresado no esta registrado en el sistema';
	end if;
end;$$

select * from public.nominadas;
--------------------------Votar Postulados

create or replace procedure votar_postulados(
	v_id_postulado integer,
	v_id_miembro integer
)
language plpgsql    
as $$
declare 
v_id_categoria integer;
v_ano_oscar integer;
begin
	select id_categoria, ano_oscar into v_id_categoria, v_ano_oscar from public.postuladas_p_pers where id_postuladas_p_pers=v_id_postulado;
	if found then
		INSERT INTO public.votos(
		fecha_hora, tipo_voto, id_miembro, id_nominada, id_categoria, id_postuladas_p_pers, ano_oscar, id_categoria1, id_postuladas_p_pers1, ano_oscar1)
		VALUES (now(), 'postulado', v_id_miembro, null, null, null, null, v_id_categoria,v_id_postulado , v_ano_oscar);
	else
		raise exception 'El id de postulado ingresado no esta registrado en el sistema';
	end if;
end;$$
