-- desabilitar TRIGGER validar_audiovisual
ALTER TABLE public.audiovisual DISABLE TRIGGER validar_audiovisual;

-- habilitar TRIGGER validar_audiovisual
ALTER TABLE public.audiovisual ENABLE TRIGGER validar_audiovisual;

-- CASOS DE PRUEBA

-- No se puede crear una pelicula que ya posea nominaciones
	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va,clas_audiovisual, total_nomi, total_postu, total_ganador)
	VALUES (1855,'Regreso al futuro', 'Back to the Future', '1955. En esa dimensión, conoce a una joven pareja, Lorraine Baines y George McFly, que, en el futuro, serán sus padres. La situación se complica cuando es su propia madre quien se enamora de él.', '1985-07-03', 116, '{"Universal Pictures"}', 'A', 1984, '{"Comedia","Ciencia Ficción"}','largometraje', 7, 0, 0);

-- No se puede crear una pelicula que ya posea postulaciones
	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va,clas_audiovisual, total_nomi, total_postu, total_ganador)
	VALUES (1855,'Regreso al futuro', 'Back to the Future', 'Marty McFly (Michael J. Fox), un joven estudiante de Hill Valley High, es amigo de un excéntrico científicmplica cuando es su propia madre quien se enamora de él.', '1985-07-03', 116, '{"Universal Pictures"}', 'A', 1984, '{"Comedia","Ciencia Ficción"}','largometraje', 0, 8, 0);


-- No se puede crear una pelicula que ya posea galardones
	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va,clas_audiovisual, total_nomi, total_postu, total_ganador)
	VALUES (1855,'Regreso al futuro', 'Back to the Future', 'Marty McFly (Michael J. Fox), un joven estudiante de Hill Valley High, es amigo de un excéntrico científi complica cuando es su propia madre quien se enamora de él.', '1985-07-03', 116, '{"Universal Pictures"}', 'A', 1984, '{"Comedia","Ciencia Ficción"}','largometraje', 0, 0, 8);
