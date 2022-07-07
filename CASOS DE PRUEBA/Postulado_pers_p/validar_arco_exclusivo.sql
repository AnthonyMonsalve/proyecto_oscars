-- Desabilitar TRIGGER arcoexclusivo_postu_p_pers
ALTER TABLE public.postuladas_p_pers DISABLE TRIGGER arcoexclusivo_postu_p_pers;

-- Habilitar TRIGGER arcoexclusivo_postu_p_pers
ALTER TABLE public.postuladas_p_pers ENABLE TRIGGER arcoexclusivo_postu_p_pers;

-- Ambas FOREING KEY no pueden ser NULL
INSERT INTO public.postuladas_p_pers(
	 ano_oscar, id_categoria, id_rol, doc_identidad, id_audiovi, id_audiovi2)
	VALUES ( 2010, 1, NULL, NULL, NULL, NULL);

-- AMBAS FOREING KEY no pueden estar 
INSERT INTO public.postuladas_p_pers(
	ano_oscar, id_categoria, id_rol, doc_identidad, id_audiovi, id_audiovi2)
	VALUES ( 2022, 1, 2, 12545, 1, 9);

