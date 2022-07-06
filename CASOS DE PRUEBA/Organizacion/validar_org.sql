-- desabilitar TRIGGER validar_org
ALTER TABLE public.organizacion DISABLE TRIGGER validar_org;

-- habilitar TRIGGER validar_org
ALTER TABLE public.organizacion ENABLE TRIGGER validar_org;

-- CASOS DE PRUEBA

-- No se puede registrar una organizacion sin ninguna donacion
INSERT INTO public.organizacion(
	id_organizacion, nombre, mision)
	VALUES ( 2,'The Film Foundation', 'The Film Foundation es una organización estadounidense sin ánimo de lucro dedicada a la conservación de películas y a la exhibición de cine clásico y restaurado. Fue fundada por el director Martin Scorsese y otros destacados cineastas');

-- La suma de los porcentajes de cada gala no pueden exceder el 100
INSERT INTO public.organizacion(
	id_organizacion, nombre, mision, donacion_nt)
	VALUES ( 2,'The Film Foundation', 'The Film Foundation es una organización estadounidense sin ánimo de lucro dedicada a la conservación de películas', array[('1985', 1000, 157.12)::donacion, ('1989', 1254, 1505.10)::donacion]);

-- No hay niguna gala vinculada al ano 'NEW.donacion_nt[i].ano'
INSERT INTO public.organizacion(
	id_organizacion, nombre, mision, donacion_nt)
	VALUES ( 2,'The Film Foundation', 'The Film Foundation es una organización estadounidense sin ánimo de lucro dedicada a la conservación de películas y a la exhibición de cine clásico y restaurado. Fue fundada por el director Martin Scorsese y otros destacados cineastas', array[('2500', 10, 157.12)::donacion]);

-- El porcentaje debe estar entre 0 y 100
INSERT INTO public.organizacion(
	id_organizacion, nombre, mision, donacion_nt)
	VALUES ( 2,'The Film Foundation', 'The Film Foundation es una organización estadounidense sin ánimo de lucro dedicada a la conservación de películas y a la exhibición', array[('1985', -10, 157.12)::donacion]);