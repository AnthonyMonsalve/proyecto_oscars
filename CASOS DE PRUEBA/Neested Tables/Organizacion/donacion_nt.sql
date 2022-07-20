--insert de donaciones

UPDATE public.organizacion 
SET donacion_nt = donacion_nt || ('2002', 5, 150)::donacion 
WHERE id_organizacion = 14;


--update de donaciones

UPDATE public.organizacion 
SET donacion_nt[3] = (donacion_nt[3].ano, 10, 300)::donacion 
WHERE id_organizacion = 5;