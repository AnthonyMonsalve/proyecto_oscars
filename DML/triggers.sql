-- CATEGORIA: 1.1.- Validar que cuando nivel = 1:
CREATE TRIGGER validar_categoria_nivel_1
BEFORE INSERT OR UPDATE
ON categoria FOR EACH ROW
EXECUTE PROCEDURE validar_categoria_nivel_1();


-- CATEGORIA: 1.2.- Validar que cuando nivel = 2:
CREATE TRIGGER validar_categoria_nivel_2
BEFORE INSERT OR UPDATE
ON categoria FOR EACH ROW
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
