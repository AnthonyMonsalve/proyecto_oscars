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

--Consulta de donaciones anuales

WITH list AS
	(SELECT UNNEST(donacion_nt) AS row_result
	 FROM   public.organizacion)
	Select 
	(row_result).ano,
	SUM((row_result).porcentaje),
	SUM((row_result).monto)
	FROM     list
	group by (row_result).ano
	having SUM((row_result).porcentaje)<100;


-------------------Organizacion---------------

-- Consulta de las donaciones hechas a cada organizacion
WITH list AS
 (SELECT id_organizacion AS "ID",
  		nombre AS "Nombre",
  		 mision AS "Mision",
        UNNEST(donacion_nt) AS row_result
  FROM   public.organizacion )
SELECT   
		"ID",
		"Nombre",
       (row_result).ano AS "Año"
,       (row_result).porcentaje AS "Porcentaje"
,       (row_result).monto AS "Monto"

FROM     list;
		
--insert de donaciones

UPDATE public.organizacion 
SET donacion_nt = donacion_nt || ('2002', 5, 150)::donacion 
WHERE id_organizacion = 14;


--update de donaciones

UPDATE public.organizacion 
SET donacion_nt[3] = (donacion_nt[3].ano, 10, 300)::donacion 
WHERE id_organizacion = 5;

------------------------------INSERTS---------------------------------------
-----------------------Gala-------------------

INSERT INTO public.gala(
	ano, fecha, lugar, numero_edicion, descripcion, doc_identidad)
	VALUES ('2002', '2002-06-30', 'Las Vegas, Estados Unidos', 57 , 'La espectaculo se dio a cabo la noche del dia 30 de Julio del ano 2000, asistieron grandes celebridades de todo el mundo.', 26996360);
	
-------------------Organizacion---------------

INSERT INTO public.organizacion(
	id_organizacion, nombre, mision, donacion_nt)
	VALUES ( 12,'The Film Foundation', 
			'The Film Foundation es una organización estadounidense sin ánimo de lucro dedicada a la conservación de películas y a la exhibición de cine clásico y restaurado. Fue fundada por el director Martin Scorsese y otros destacados cineastas', 
			array[('2002', 10, 157.12)::donacion]);