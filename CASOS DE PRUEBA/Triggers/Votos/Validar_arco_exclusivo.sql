-- Desabilitar TRIGGER arcoexclusivo_votos
ALTER TABLE public.votos DISABLE TRIGGER arcoexclusivo_votos;

-- Habilitar TRIGGER arcoexclusivo_votos
ALTER TABLE public.votos ENABLE TRIGGER arcoexclusivo_votos;

-- Ambas FOREING KEY no pueden ser NULL
INSERT INTO public.votos(
	fecha_hora, tipo_voto, id_miembro, id_nominada, id_categoria, id_postuladas_p_pers, ano_oscar, id_categoria1, id_postuladas_p_pers1, ano_oscar1)
	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

-- AMBAS FOREING KEY no pueden estar 
INSERT INTO public.votos(
	fecha_hora, tipo_voto, id_miembro, id_nominada, id_categoria, id_postuladas_p_pers, ano_oscar, id_categoria1, id_postuladas_p_pers1, ano_oscar1)
	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
