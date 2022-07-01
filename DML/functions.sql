-- Función usada por el Trigger validar_categoria_nivel_1
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
$BODY$

-- Función usada por el Trigger validar_categoria_nivel_2
CREATE OR REPLACE FUNCTION validar_categoria_nivel_2() 
   RETURNS TRIGGER 
   LANGUAGE PLPGSQL
AS $BODY$
DECLARE
 v_nivel_padre char(1);  
BEGIN
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
		END IF;		
	END IF;
	RETURN NEW;
END;
$BODY$