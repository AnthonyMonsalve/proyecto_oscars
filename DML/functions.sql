--Valida que la cadena sea de un tamano y que no contenga caracteres especiales
CREATE FUNCTION val_cadena(min int, max int, valor varchar(255)) RETURNS boolean AS $$
BEGIN
	if character_length(valor)< min or character_length(valor)>max then
        return false;
    END IF;
	if valor like '%?%' or
	valor like '%?%' or valor like '%+%' or
	valor like '%*%' or
	valor like '%[%' or valor like '%]%' or
	valor like '%<%' or valor like '%>%' or
	valor like '%$%' or valor like '%/%' 
	then 
		return false;
    END IF;
	return true;
END;
$$ LANGUAGE plpgsql;
