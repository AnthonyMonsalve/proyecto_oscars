CREATE OR replace FUNCTION ficha_pelicula(p_id_audiovi int)
  returns table (titulo_espanol varchar(50))
as
$body$
    SELECT titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine FROM public.audiovisual WHERE id_audiovi = p_id_audiovi;
$body$
language sql

SELECT * FROM ficha_pelicula(1);
