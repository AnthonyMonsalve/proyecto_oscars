-- desabilitar TRIGGER validar_categoria_nivel_2
ALTER TABLE public.categoria DISABLE TRIGGER validar_categoria_nivel_2;

-- habilitar TRIGGER validar_categoria_nivel_2
ALTER TABLE public.categoria ENABLE TRIGGER validar_categoria_nivel_2;

-- CASOS DE PRUEBA

-- Rama debe ser null (vacio) 
INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (101, 'Mejor película', '2', 'directores', 1, array[
        ('1933-01-01', '1943-12-31','Mejor película', 5)::hist_premio,
        ('1944-01-01', NULL,'Mejor película', 10)::hist_premio
    ]);

-- id_categoria2 debe ser NOT NULL (obligatorio) 
INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, hist_premio_nt)
	VALUES (101, 'Mejor película', '2', NULL, array[
        ('1933-01-01', '1943-12-31','Mejor película', 5)::hist_premio,
        ('1944-01-01', NULL,'Mejor película', 10)::hist_premio
    ]);

-- El nivel del atributo asignado id_categoria2 debe igual a 1
INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (101, 'Mejor película', '2', NULL, 17, array[
        ('1933-01-01', '1943-12-31','Mejor película', 5)::hist_premio,
        ('1944-01-01', NULL,'Mejor película', 10)::hist_premio
    ]);

-- hist_premio_nt debe ser NOT NULL (obligatorio) 
INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2)
	VALUES (101, 'Mejor película', '2', NULL, 1);

-- El hist_premio_nt.nombre deber ser NOT NULL (obligatorio) y tener más de 1 caracter
INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (101, 'Mejor película', '2', NULL, 1, array[
        ('1928-01-01', '1931-01-01','Producción Sobresaliente', 5)::hist_premio,
        ('1932-01-01', '1932-12-31', NULL, 8)::hist_premio,
        ('1933-01-01', '1943-12-31','Mejor película', 5)::hist_premio,
        ('1944-01-01', NULL,'Mejor película', 10)::hist_premio
    ]);

-- El hist_premio_nt.cantidad_nom deber ser NOT NULL (obligatorio) y mayor que 0
INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (101, 'Mejor película', '2', NULL, 1, array[
        ('1928-01-01', '1931-01-01','Producción Sobresaliente', 5)::hist_premio,
        ('1932-01-01', '1932-12-31','Película mas Sobresaliente', 0)::hist_premio,
        ('1944-01-01', NULL,'Mejor película', 10)::hist_premio
    ]);

-- hist_premio_nt.fecha_ini deber ser NOT NULL (obligatorio)
INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (101, 'Mejor película', '2', NULL, 1, array[
        (NULL, '1943-12-31','Mejor película', 5)::hist_premio,
        ('1944-01-01', NULL,'Mejor película', 10)::hist_premio
    ]);

-- hist_premio_nt.fecha_fin tiene que ser mayor que fecha_ini
INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (101, 'Mejor película', '2', NULL, 1, array[
        ('1928-01-01', '1901-01-01','Producción Sobresaliente', 5)::hist_premio,
        ('1944-01-01', NULL,'Mejor película', 10)::hist_premio
    ]);

-- No pueden existir 2 premios del mismo tipo activos al mismo tiempo
INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (101, 'Mejor película', '2', NULL, 1, array[
        ('1928-01-01', '1931-01-01','Producción Sobresaliente', 5)::hist_premio,
        ('1932-01-01', '1932-12-31','Película mas Sobresaliente', 8)::hist_premio,
        ('1933-01-01', NULL,'Mejor película', 5)::hist_premio,
        ('1944-01-01', NULL,'Mejor película', 10)::hist_premio
    ]);
