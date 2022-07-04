--Consulta del historico de los premios
WITH list AS
 (SELECT 
        UNNEST(hist_premio_nt) AS row_result
  FROM   public.categoria
  WHERE  id_categoria= 3)
SELECT   
       (row_result).fecha_ini
,       (row_result).fecha_fin 
,       (row_result).nombre
,		(row_result).cantidad_nom
FROM     list;


--insert historicos de los premios
UPDATE public.categoria 
SET hist_premio_nt = hist_premio_nt || ('2018-01-01','2018-12-31','Mejor Pelicula','1')::hist_premio
WHERE id_categoria = 3;


--Para modificar un registro en particular de nuestro  array, este se utilizara para colocar la fecha de fin a 
--nuestro registro
UPDATE public.categoria SET hist_premio_nt[1] = (hist_premio_nt[1].fecha_ini, '2022-12-31', hist_premio_nt[0].nombre, hist_premio_nt[0].cantidad_nom)::hist_premio
WHERE id_categoria = 93;

--INSERTAR PELICULA EN AUDIOVISUAL
INSERT INTO public.audiovisual(
	 titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, censura, ano_realizacion, genero_va,clas_audiovisual, total_nomi, total_postu, total_ganador)
	VALUES ( 'Que paso ayer?', 'Hangover', '4 amigo, despedida de solteros, el que se iba a casar se pierde, caos', '2016-5-20', 160, 'C', 2021, '{"Comedia","Drama"}','largometraje', 0, 0, 0);

