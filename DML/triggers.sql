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
		END_IF;
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
