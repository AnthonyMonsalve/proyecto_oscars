-- Validar el insert de una membresía
CREATE OR REPLACE FUNCTION validar_insert_membresia() 
   RETURNS TRIGGER 
   LANGUAGE PLPGSQL
   AS $BODY$
   DECLARE 
   v_tmp_ganador INT;
   v_tmp_nominado2veces INT;
BEGIN

	CREATE TEMP TABLE tmp_ganador_nominado2veces(
		ganador VARCHAR(2)
	);
			
	INSERT INTO tmp_ganador_nominado2veces (
		ganador
	) SELECT ganador
			  
	FROM postuladas_p_pers
	INNER JOIN nominadas ON 
	postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
	WHERE doc_identidad = NEW.doc_identidad;
	
	SELECT COUNT(*) INTO v_tmp_nominado2veces FROM tmp_ganador_nominado2veces
	WHERE ganador = 'no';
	
	SELECT COUNT(*) INTO v_tmp_ganador FROM tmp_ganador_nominado2veces
	WHERE ganador = 'si';	
	
	IF v_tmp_nominado2veces < 2 AND v_tmp_ganador = 0 THEN
		RAISE EXCEPTION 'No ha sido nominado dos veces ni ha ganado al menos una nominación';
	END IF;

	DROP TABLE tmp_ganador_nominado2veces;

	RETURN NEW;
END;
$BODY$;

-- -- Validar el insert de una membresía
CREATE TRIGGER validar_insert_membresia
BEFORE INSERT ON public.miembro FOR EACH ROW
EXECUTE PROCEDURE validar_insert_membresia();


-- Validar crear_relacion_miembro_premios al crear una membresía
CREATE OR REPLACE FUNCTION crear_relacion_miembro_premios()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
	AS $BODY$
	DECLARE
	v_area_nt TEXT;
	BEGIN
		--v_area_nt = '{';
		--v_area_nt = concat (v_area_nt,'}');
		--UPDATE public.miembro SET area_nt = v_area_nt::VARCHAR[] WHERE id_miembro = NEW.id_miembro;
		RETURN NEW;
	END;
$BODY$;

-- Validar crear_relacion_miembro_premios al crear una membresía
CREATE TRIGGER crear_relacion_miembro_premios 
AFTER INSERT ON
public.miembro FOR EACH ROW
EXECUTE PROCEDURE crear_relacion_miembro_premios();


CREATE OR REPLACE FUNCTION validar_categoria_nivel_1() 
   RETURNS TRIGGER 
   LANGUAGE PLPGSQL
AS $BODY$
BEGIN
	IF NEW.nivel = '1' THEN
		IF NEW.rama IS NULL THEN
			RAISE EXCEPTION 'Rama debe ser NOT NULL (obligatorio) cuando nivel de rama es 1';
		ELSE
			IF NEW.id_categoria2 IS NOT NULL THEN
				RAISE EXCEPTION 'id_categoria2 debe ser NULL (vacio) cuando nivel de rama es 1';
			ELSE
				IF NEW.hist_premio_nt IS NOT NULL THEN
					RAISE EXCEPTION 'hist_premio_nt debe ser NULL (vacio) cuando nivel de rama es 1';
				END IF;
			END IF;
		END IF;		
	END IF;
	RETURN NEW;
END;
$BODY$;

-- Función usada por el Trigger validar_categoria_nivel_2
CREATE OR REPLACE FUNCTION validar_categoria_nivel_2() 
   RETURNS TRIGGER 
   LANGUAGE PLPGSQL
AS $BODY$
DECLARE
 v_nivel_padre char(1);  
 v_hist_premio_nt_length int;
 cont int;
BEGIN
	cont=0;
	IF NEW.nivel = '2' THEN
		IF NEW.rama IS NOT NULL THEN
			RAISE EXCEPTION 'Rama debe ser null (vacio) cuando nivel de rama es 2';
		ELSE
			IF NEW.id_categoria2 IS NULL THEN
				RAISE EXCEPTION 'id_categoria2 debe ser NOT NULL (obligatorio) cuando nivel de rama es 2';
			ELSE
				SELECT nivel INTO v_nivel_padre 
				FROM categoria 
				WHERE id_categoria = NEW.id_categoria2;
				
				IF v_nivel_padre = '2' THEN
					RAISE EXCEPTION 'El nivel del atributo asignado id_categoria2 debe igual a 1';
				END IF;
				
			END IF;
			
			IF NEW.hist_premio_nt IS NULL THEN
				RAISE EXCEPTION 'hist_premio_nt debe ser NOT NULL (obligatorio) cuando nivel de rama es 2';
			ELSE
				v_hist_premio_nt_length := array_length(NEW.hist_premio_nt,1);
				cont=0;
				FOR i IN 1..v_hist_premio_nt_length
      			LOOP
					
					IF NEW.hist_premio_nt[i].nombre IS NULL OR length(NEW.hist_premio_nt[i].nombre) < 1 THEN
						RAISE EXCEPTION 'El hist_premio_nt.nombre deber ser NOT NULL (obligatorio) y tener más de 1 caracter';
					END IF;
					IF NEW.hist_premio_nt[i].cantidad_nom IS NULL OR NEW.hist_premio_nt[i].cantidad_nom < 1 THEN
						RAISE EXCEPTION 'El hist_premio_nt.cantidad_nom deber ser NOT NULL (obligatorio) y mayor que 0';
					END IF;
					IF NEW.hist_premio_nt[i].fecha_ini IS NULL THEN
						RAISE EXCEPTION 'hist_premio_nt.fecha_ini deber ser NOT NULL (obligatorio)';
					ELSE
						IF NEW.hist_premio_nt[i].fecha_fin IS NOT NULL AND NEW.hist_premio_nt[i].fecha_fin < NEW.hist_premio_nt[i].fecha_ini THEN
							RAISE EXCEPTION 'hist_premio_nt.fecha_fin tiene que ser mayor que fecha_ini';
						END IF;
						IF NEW.hist_premio_nt[i].fecha_fin is null THEN
							cont=cont+1;
							IF cont > 1 THEN
								RAISE EXCEPTION 'No pueden existir 2 premios del mismo tipo activos al mismo tiempo';
							END IF;
						END IF;
					END IF;	
					
      			END LOOP;
			END IF;
            			
		END IF;		
	END IF;
	RETURN NEW;
END;
$BODY$;

-- CATEGORIA: 1.1.- Validar que cuando nivel = 1:
CREATE TRIGGER validar_categoria_nivel_1
BEFORE INSERT OR UPDATE
ON public.categoria FOR EACH ROW
EXECUTE PROCEDURE validar_categoria_nivel_1();

-- CATEGORIA: 1.2.- Validar que cuando nivel = 2:
CREATE TRIGGER validar_categoria_nivel_2
BEFORE INSERT OR UPDATE
ON public.categoria FOR EACH ROW
EXECUTE PROCEDURE validar_categoria_nivel_2();

--Validar las peliculas ingresadas  en el sistema, estas condiciones solo se aplican cuando se ingresan registros en la tabla 
CREATE OR REPLACE FUNCTION validar_audiovisual() 
   RETURNS TRIGGER 
   LANGUAGE PLPGSQL
	AS $BODY$
	BEGIN
		IF NEW.total_nomi != 0 THEN
			RAISE EXCEPTION 'No se puede crear una pelicula que ya posea nominaciones';
		END IF;
		IF NEW.total_postu != 0 THEN
			RAISE EXCEPTION 'No se puede crear una pelicula que ya posea postulaciones';
		END IF;
		IF NEW.total_ganador != 0 THEN
			RAISE EXCEPTION 'No se puede crear una pelicula que ya posea galardones';
		END IF;
		RETURN NEW;
	END;
$BODY$;


--Validar las peliculas ingresadas o modificadas en el sistema, estas condiciones aplican cuando se ingresan y modifican registros en la tabla 
CREATE OR REPLACE FUNCTION validar_audiovisual_update() 
   RETURNS TRIGGER 
   LANGUAGE PLPGSQL
	AS $BODY$
	BEGIN
		
		IF NEW.duracion_min<40 then 
			RAISE EXCEPTION 'La duracion de un producto audiovisual no puede ser menor a 40 minutos';
		end if;
		IF NEW.clas_audiovisual='cortometraje' and new.duracion_min>60 then 
			RAISE EXCEPTION 'Un cortometraje debe estar entre 40 y 60 minutos de duracion';
		end if;
		IF NEW.clas_audiovisual='largometraje' and NEW.duracion_min<=60 then 
			RAISE EXCEPTION 'Un largometraje debe durar mas de 60 minutos';
		end if;
		if new.fecha_estreno_cine>current_date then
			RAISE EXCEPTION 'No se puede ingresar en el sistema una pelicula que todavia no se ha sido estrenada';
		end if;
		if new.ano_realizacion>extract(year from current_date) then
			RAISE EXCEPTION 'El ano de produccion es mayor que el ano actual';
		end if;
		RETURN NEW;
	END;
$BODY$;

CREATE TRIGGER validar_audiovisual
BEFORE INSERT
ON public.audiovisual FOR EACH ROW
EXECUTE PROCEDURE validar_audiovisual();

CREATE TRIGGER validar_audiovisual_update
BEFORE INSERT or update
ON public.audiovisual FOR EACH ROW
EXECUTE PROCEDURE validar_audiovisual_update();

--Validar inserción en la tabla Gala 
CREATE OR REPLACE FUNCTION validar_gala() 
   RETURNS TRIGGER 
   LANGUAGE PLPGSQL
	AS $BODY$
	BEGIN
		if new.ano < 1900 or new.ano> 2200 then
			RAISE EXCEPTION 'El año introducido no es valido';
		end if;
		if new.fecha< TO_DATE(new.ano::varchar(4),'YYYY') or new.fecha> TO_DATE((new.ano+1)::varchar(4),'YYYY') then
			RAISE EXCEPTION 'La fecha de realizacion no concuerda con el ano de la gala';
		end if;
		RETURN NEW;
	END;
$BODY$;

CREATE TRIGGER validar_gala
BEFORE INSERT or update
ON public.gala FOR EACH ROW
EXECUTE PROCEDURE validar_gala();

--Validaciones

-- Función usada para validar la Organizacion ingresada o modificada
CREATE OR REPLACE FUNCTION validar_org() 
   RETURNS TRIGGER 
   LANGUAGE PLPGSQL
AS $BODY$
DECLARE
 	v_donacio_nt_length int;
	v_ano int;
	v_mensaje varchar(250);
	v_suma int;
BEGIN
	v_suma=0;
	if val_cadena(4,50,new.nombre) = false then
		RAISE EXCEPTION 'El nombre introducido no es valido';
	end if;
	if val_cadena(10,10000,new.mision) = false then
		RAISE EXCEPTION 'La mision no esta cumpliendo el largo establecido o este posee caracteres no permitidos';
	end if;
		IF NEW.donacion_nt IS NULL THEN
			RAISE EXCEPTION 'No se puede registrar una organizacion sin ninguna donacion';
		ELSE
			v_donacio_nt_length := array_length(NEW.donacion_nt,1);
				WITH list AS
				 (SELECT 
						UNNEST(new.donacion_nt) AS row_result
				  FROM   public.organizacion)
				Select   
					SUM((row_result).porcentaje) into v_suma
					FROM     list
					group by (row_result).ano 
					having SUM((row_result).porcentaje)>100;
				
				if v_suma<>0 then 
					RAISE EXCEPTION 'La suma de los porcentajes de cada gala no pueden exceder el 100';
      			END IF;
				FOR i IN 1..v_donacio_nt_length
				LOOP
					select ano into v_ano from public.gala where ano= NEW.donacion_nt[i].ano;
					if not found then
						v_mensaje=concat ('No hay niguna gala vinculada al ano ',NEW.donacion_nt[i].ano,'.');
						RAISE EXCEPTION using message=v_mensaje;
					END IF;
					
					IF NEW.donacion_nt[i].porcentaje < 0 or NEW.donacion_nt[i].porcentaje > 100 THEN
						RAISE EXCEPTION 'El porcentaje debe estar entre 0 y 100';
					END IF;	
					
      			END LOOP;
			END IF;
	
	
	RETURN NEW;
END;
$BODY$;

CREATE TRIGGER validar_org
BEFORE INSERT OR UPDATE
ON public.organizacion FOR EACH ROW
EXECUTE PROCEDURE validar_org();

---------------------------Postulacion--------------------------------
CREATE OR REPLACE FUNCTION validar_postulacion() 
   RETURNS TRIGGER 
   LANGUAGE PLPGSQL
AS $BODY$
Declare
v_nombre varchar(50);
v_mensaje varchar (50);
v_ano integer;
BEGIN
	v_nombre=null;
	perform from public.postuladas_p_pers 
	where ano_oscar=new.ano_oscar and id_categoria=new.id_categoria and (id_rol=new.id_rol and doc_identidad=new.doc_identidad and id_audiovi=new.id_audiovi) or (new.id_rol is null and new.doc_identidad is null and new.id_audiovi is null) and (new.id_audiovi2 is null or id_audiovi2=new.id_audiovi2);
	if found then
		RAISE EXCEPTION 'La postulacion que esta intentando ingresar ya existe';
	END IF;
	
	select nombre into v_nombre from public.categoria where id_categoria=new.id_categoria and nivel='2';
	if not found then
		RAISE EXCEPTION 'No se puede ingresar una postulacion de una categoria';
	END IF;
	select ano into v_ano from public.gala where ano= NEW.ano_oscar;
	if not found then
		v_mensaje=concat ('No hay niguna gala vinculada al ano ',NEW.ano_oscar,'.');
		RAISE EXCEPTION using message=v_mensaje;
	END IF;
	
	RETURN NEW;
END;
$BODY$;


CREATE TRIGGER validar_postulacion
BEFORE INSERT OR UPDATE
ON public.postuladas_p_pers FOR EACH ROW
EXECUTE PROCEDURE validar_postulacion();


-- Función usada por el trigger arcoexclusivo_postu_p_pers
CREATE OR REPLACE FUNCTION arcoexclusivo_postuladas_p_pers()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
	AS $BODY$
		BEGIN
			IF NEW.id_rol IS NOT NULL AND NEW.id_audiovi IS NOT NULL AND NEW.doc_identidad IS NOT NULL THEN
				IF NEW.id_audiovi2 IS NOT NULL THEN
					RAISE EXCEPTION 'El arco exclusivo no se cumple, debe ingresar o los datos de una pelicula o de rol_pel_pers';
				END IF;
				Return new;
			END IF;
			
			IF NEW.id_audiovi2 IS NOT NULL THEN
				IF NEW.id_rol IS NOT NULL or NEW.id_audiovi IS NOT NULL or NEW.doc_identidad IS NOT NULL THEN
					RAISE EXCEPTION 'El arco exclusivo no se cumple, debe ingresar o los datos de una pelicula o de rol_pel_pers';
				END IF;
				Return new;
			END IF;
			
			
			RAISE EXCEPTION 'El arco exclusivo no se cumple, debe ingresar o los datos de una pelicula o de rol_pel_pers';
	END;
$BODY$;

-- Validar arco exclusivo de postu_p_pers
CREATE TRIGGER arcoexclusivo_postu_p_pers 
BEFORE INSERT OR UPDATE ON
public.postuladas_p_pers FOR EACH ROW
EXECUTE PROCEDURE arcoexclusivo_postuladas_p_pers();

-- Función usada para validar arco exclusivo de votos
CREATE OR REPLACE FUNCTION arcoexclusivo_votos()
	RETURNS TRIGGER
	LANGUAGE PLPGSQL
	AS $BODY$
		BEGIN
			IF NEW.id_categoria1 IS NOT NULL AND NEW.id_postuladas_p_pers1 IS NOT NULL AND NEW.ano_oscar1 IS NOT NULL and new.tipo_voto='postulado' THEN
				IF NEW.id_categoria IS NOT NULL or NEW.id_postuladas_p_pers IS NOT NULL or NEW.ano_oscar is not null or new.id_nominada is not null THEN
					RAISE EXCEPTION 'El arco exclusivo no se cumple, debe ingresar o los datos de una nominacion o de una postulacion';
				END IF;
				Return new;
			END IF;
			
			IF NEW.id_categoria IS NOT NULL and NEW.id_postuladas_p_pers IS NOT NULL and NEW.ano_oscar is not null and new.id_nominada is not null and new.tipo_voto='nominado' THEN
				IF NEW.id_categoria1 IS NOT NULL or NEW.id_postuladas_p_pers1 IS NOT NULL or NEW.ano_oscar1 IS NOT NULL THEN
					RAISE EXCEPTION 'El arco exclusivo no se cumple, debe ingresar o los datos de una nominacion o de una postulacion';
				END IF;
				Return new;
			END IF;
			RAISE EXCEPTION 'El arco exclusivo no se cumple, debe ingresar o los datos de una postulacion o de una nominacion';
	END;
$BODY$;

-- Validar arco exclusivo de votos
CREATE TRIGGER arcoexclusivo_votos
BEFORE INSERT OR UPDATE ON
public.votos FOR EACH ROW
EXECUTE PROCEDURE arcoexclusivo_votos();

--------------------------------Votos---------------------------------------

CREATE OR REPLACE FUNCTION validar_votos() 
   RETURNS TRIGGER 
   LANGUAGE PLPGSQL
AS $BODY$
Declare
v_cantidad_max_nom integer;
v_cant_nom integer;
v_vitalicio varchar(3);
v_id integer;
v_fecha_fin date;
BEGIN
	v_fecha_fin= null;
	select vitalicio, fecha_fin into v_vitalicio, v_fecha_fin  from miembro where id_miembro=new.id_miembro;
	if v_fecha_fin is not null then 
			RAISE EXCEPTION 'No posee una membresia o la que tiene ha sido caancelada, por ende, no puede participar en la votaciones';	
	end if;
	if v_vitalicio='no' then
		select p_c.id_miembro into v_id from public.p_c inner join public.miembro on p_c.id_miembro=miembro.id_miembro where p_c.id_miembro=new.id_miembro;
		if not found then
			RAISE EXCEPTION 'Usted no tiene los permisos necesarios para ingresar un voto en esta categoria, para votar en una categoria debe haber ganado en una vez en un premio relacionado o haber sido nominado dos veces a premios relacionados';
		END IF;
	end if;
	
	
	v_cantidad_max_nom=-1;
	WITH list AS
	 (SELECT 
			UNNEST(hist_premio_nt) AS row_result
	  FROM   public.categoria
	  WHERE  id_categoria= new.id_categoria or id_categoria= new.id_categoria1)
	SELECT   
		   (row_result).cantidad_nom into v_cantidad_max_nom FROM list where (row_result).fecha_fin is null;
	if v_cantidad_max_nom is null then 
		RAISE EXCEPTION 'No existe ningun historico de este premio activo, por favor revisar el premio en la tabla categoria';
	end if;
	if new.tipo_voto='nominado' then
		select count(*) into v_cant_nom from public.votos where id_miembro=new.id_miembro and ano_oscar=new.ano_oscar and id_categoria=new.id_categoria;
		if v_cant_nom>0 then 
			RAISE EXCEPTION 'Ya ingreso el maximo de votos posibles para los nominados de este premio, el cual es %', v_cant_nom;
		end if;
	else
		perform from public.votos where id_postuladas_p_pers1=new.id_postuladas_p_pers1;
		if found then 
			RAISE EXCEPTION 'No puedes votar por la misma postulaciones dos veces';
		end if;
		select count(*) into v_cant_nom from public.votos where id_miembro=new.id_miembro and ano_oscar1=new.ano_oscar1 and id_categoria1=new.id_categoria1;
		if v_cant_nom>v_cantidad_max_nom-1 then 
			RAISE EXCEPTION 'Ya ingreso el maximo de votos posibles para los postulados de este premio este premio, el cual es %', v_cant_nom;
		end if;
	end if;
	
	
	RETURN NEW;
END;
$BODY$;

CREATE TRIGGER validar_votos
BEFORE INSERT OR UPDATE
ON public.votos FOR EACH ROW
EXECUTE PROCEDURE validar_votos();

