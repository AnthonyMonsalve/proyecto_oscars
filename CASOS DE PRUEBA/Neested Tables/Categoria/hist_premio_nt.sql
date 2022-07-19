WITH list AS
 (SELECT 
        UNNEST(hist_premio_nt) AS row_result
  FROM   public.categoria
  WHERE  id_categoria= 17)
SELECT   
       (row_result).fecha_ini
,       (row_result).fecha_fin 
,       (row_result).nombre
,		(row_result).cantidad_nom
FROM     list;
