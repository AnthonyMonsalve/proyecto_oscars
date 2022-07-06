-------------- CATEGORIAS --------------

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (1, 'Largometrajes', '1', 'director', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (2, 'Dirección', '1', 'director', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (3, 'Actuación', '1', 'actor', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (4, 'Escritura', '1', 'guionista', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (5, 'Fotografía', '1', 'fotografo', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (6, 'Dirección de arte', '1', 'artista', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (7, 'Sonido', '1', 'ing.sonido', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (8, 'Cortometrajes', '1', 'director', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (9, 'Música', '1', 'musico', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (10, 'Edición', '1', 'tecnico', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (11, 'Efectos visuales', '1', 'tecnico', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (12, 'Documentales', '1', 'director', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (13, 'Vestuario', '1', 'estilista', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (14, 'Películas extranjeras', '1', 'director', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (15, 'Sonido', '1', 'director', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (16, 'Maquillaje', '1', 'artista', NULL, NULL);


-------------- PREMIOS --------------

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (17, 'Mejor película', '2', NULL, 1, array[
        ('1928-01-01', '1931-01-01','Producción Sobresaliente', 5)::hist_premio,
        ('1932-01-01', '1932-12-31','Película mas Sobresaliente', 8)::hist_premio,
        ('1933-01-01', '1943-12-31','Mejor película', 5)::hist_premio,
        ('1944-01-01', NULL,'Mejor película', 10)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (18, 'Mejor director', '2', NULL, 2, array[
        ('1928-01-01', '1931-01-01','Director sobresaliente', 5)::hist_premio,
        ('1931-01-01', NULL,'Mejor director', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (19, 'Mejor actor', '2', NULL, 3, array[
        ('1928-01-01', NULL,'Mejor actor', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (20, 'Mejor actriz', '2', NULL, 3, array[
        ('1928-01-01', NULL,'Mejor actriz', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (21, 'Mejor guión adaptado', '2', NULL, 4, array[
        ('1928-01-01', NULL,'Mejor guión adaptado', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (22, 'Mejor fotografía', '2', NULL, 5, array[
        ('1928-01-01', NULL,'Mejor fotografía', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (23, 'Mejor dirección de arte ', '2', NULL, 6, array[
        ('1928-01-01', NULL,'Mejor dirección de arte ', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (24, 'Mejor sonido', '2', NULL, 7, array[
        ('1930-01-01', NULL,'Mejor sonido', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (25, 'Mejor cortometraje de ficción', '2', NULL, 8, array[
        ('1931-01-01', NULL,'Mejor cortometraje de ficción', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (26, 'Mejor banda sonora', '2', NULL, 9, array[
        ('1934-01-01', NULL,'Mejor banda sonora', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (27, 'Mejor canción original', '2', NULL, 9, array[
        ('1934-01-01', NULL,'Mejor canción original', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (28, 'Mejor montaje', '2', NULL, 10, array[
        ('1935-01-01', NULL,'Mejor montaje', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (29, 'Mejor actor de reparto', '2', NULL, 3, array[
        ('1936-01-01', NULL,'Mejor actor de reparto', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (30, 'Mejor actriz de reparto', '2', NULL, 3, array[
        ('1936-01-01', NULL,'Mejor actriz de reparto', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (31, 'Mejores efectos visuales', '2', NULL, 11, array[
        ('1939-01-01', NULL,'Mejores efectos visuales', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (32, 'Mejor guión original', '2', NULL, 4, array[
        ('1940-01-01', NULL,'Mejor guión original', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (33, 'Mejor documental corto', '2', NULL, 12, array[
        ('1941-01-01', NULL,'Mejor documental corto', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (34, 'Mejor documental largo', '2', NULL, 12, array[
        ('1943-01-01', NULL,'Mejor documental largo', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (35, 'Mejor documental largo', '2', NULL, 12, array[
        ('1943-01-01', NULL,'Mejor documental largo', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (36, 'Mejor diseño de vestuario', '2', NULL, 13, array[
        ('1948-01-01', NULL,'Mejor diseño de vestuario', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (37, 'Mejor película de habla no inglesa', '2', NULL, 14, array[
        ('1956-01-01', NULL,'Mejor película de habla no inglesa', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (38, 'Mejor edición de sonido', '2', NULL, 15, array[
        ('1963-01-01', NULL,'Mejor edición de sonido', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (39, 'Mejor maquillaje', '2', NULL, 16, array[
        ('1981-01-01', NULL,'Mejor maquillaje', 5)::hist_premio
    ]);