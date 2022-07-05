-- desabilitar TRIGGER validar_audiovisual_update
ALTER TABLE public.audiovisual DISABLE TRIGGER validar_audiovisual_update;

-- habilitar TRIGGER validar_audiovisual_update
ALTER TABLE public.audiovisual ENABLE TRIGGER validar_audiovisual_update;

-- CASOS DE PRUEBA

-- La duracion de un producto audiovisual no puede ser menor a 40 minutos';
	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va,clas_audiovisual, total_nomi, total_postu, total_ganador)
	VALUES (1000,'Regreso al futuro', 'Back to the Future', 'Marty McFly (Michael J. Fox), sus padres. La situación se complica cuando es su propia madre quien se enamora de él.', '1985-07-03', 20, '{"Universal Pictures"}', 'A', 1984, '{"Comedia","Ciencia Ficción"}','largometraje', 0, 0, 0);


-- Un cortometraje debe estar entre 40 y 60 minutos de duracion';
	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va,clas_audiovisual, total_nomi, total_postu, total_ganador)
	VALUES (1000,'Regreso al futuro', 'Back to the Future', 'Marty futuro, serán sus padres. La situación se complica cuando es su propia madre quien se enamora de él.', '1985-07-03', 70, '{"Universal Pictures"}', 'A', 1984, '{"Comedia","Ciencia Ficción"}','cortometraje', 0, 0, 0);

	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va,clas_audiovisual, total_nomi, total_postu, total_ganador)
	VALUES (1000,'Regreso al futuro', 'Back to the Future', 'Marty futuro, serán sus padres. La situación se complica cuando es su propia madre quien se enamora de él.', '1985-07-03', 10, '{"Universal Pictures"}', 'A', 1984, '{"Comedia","Ciencia Ficción"}','cortometraje', 0, 0, 0);


-- Un largometraje debe durar mas de 60 minutos';
	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va,clas_audiovisual, total_nomi, total_postu, total_ganador)
	VALUES (1000,'Regreso al futuro', 'Back to the Future', 'Marty McFly (Michael J. Fox), un joven estudiante de Hill Valley High, es amigo de un excéntrico científico (Christopher Lloyd), que ha inventado una máquina sorprendente. Su objetivo.', '1985-07-03', 50, '{"Universal Pictures"}', 'A', 1984, '{"Comedia","Ciencia Ficción"}','largometraje', 0, 0, 0);


-- No se puede ingresar en el sistema una pelicula que todavia no se ha sido estrenada';
	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va,clas_audiovisual, total_nomi, total_postu, total_ganador)
	VALUES (1000,'Regreso al futuro', 'Back to the Future', 'Marty McFly (Michael J. Fox), un joven estudiante de Hill Valley High', '2028-07-03', 116, '{"Universal Pictures"}', 'A', 1984, '{"Comedia","Ciencia Ficción"}','largometraje', 0, 0, 0);


-- El ano de produccion es mayor que el ano actual;
	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va,clas_audiovisual, total_nomi, total_postu, total_ganador)
	VALUES (1000,'Regreso al futuro', 'Back to the Future', 'Marty McFly (Michael J. Fox)', '1985-07-03', 116, '{"Universal Pictures"}', 'A', 5000, '{"Comedia","Ciencia Ficción"}','largometraje', 0, 0, 0);