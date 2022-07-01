--Ejemplo de insert en la tabla categoria
INSERT INTO public.categoria(nombre, nivel, id_categoria2, hist_premio_nt)
	VALUES ('PRUEBA', '2', 12, array[('2022-01-01', NULL,'22',1)::hist_premio, ('2022-01-01','2022-01-01','N','1')::hist_premio]);