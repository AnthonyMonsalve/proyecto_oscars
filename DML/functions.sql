-- Función usada por el Trigger validar_categoria_nivel_1

CREATE or replace FUNCTION validar_categoria_nivel_1() 
   RETURNS TRIGGER 
   LANGUAGE PLPGSQL
AS $BODY$
BEGIN
	IF NEW.nivel = '1' THEN
		IF NEW.rama IS NULL THEN
			RAISE EXCEPTION 'Rama debe ser notnull (obligatorio) cuando nivel de rama es 1';
		ELSE
			IF NEW.id_categoria2 IS NOT NULL THEN
				RAISE EXCEPTION 'id_categoria2 debe ser null (vacio) cuando nivel de rama es 1';
			ELSE
				IF NEW.hist_premio_nt IS NULL THEN
					RAISE EXCEPTION 'hist_premio_nt debe ser notnull (obligatorio) cuando nivel de rama es 1';
				END IF;
			END IF;
		END IF;		
	END IF;
	RETURN NEW;
END;
$BODY$