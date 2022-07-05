-- desabilitar TRIGGER validar_categoria_nivel_1
ALTER TABLE public.categoria DISABLE TRIGGER validar_categoria_nivel_1;

-- habilitar TRIGGER validar_categoria_nivel_1
ALTER TABLE public.categoria ENABLE TRIGGER validar_categoria_nivel_1;

-- CASOS DE PRUEBA

-- Rama debe ser NOT NULL (obligatorio)
INSERT INTO public.categoria(id_categoria, nombre, nivel, id_categoria2, hist_premio_nt)
	VALUES (100, 'Largometrajes', '1', NULL, NULL);

-- id_categoria2 debe ser NULL (vacio) 
INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (100, 'Largometrajes', '1', 'director', 15, NULL);

-- hist_premio_nt debe ser NULL (vacio) 
INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (100, 'Largometrajes', '1', 'director', NULL, array[
        ('1928-01-01', '1931-01-01','Director sobresaliente', 5)::hist_premio,
        ('1931-01-01', NULL,'Mejor director', 5)::hist_premio
    ]);