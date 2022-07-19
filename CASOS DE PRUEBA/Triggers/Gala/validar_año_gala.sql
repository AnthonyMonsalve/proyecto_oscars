-- desabilitar TRIGGER validar_categoria_nivel_1
ALTER TABLE public.gala DISABLE TRIGGER validar_gala;

-- habilitar TRIGGER validar_categoria_nivel_1
ALTER TABLE public.gala ENABLE TRIGGER validar_gala;
    
    -- Prueba del año de la gala menor a 1900
    INSERT INTO public.gala(
        ano, fecha, lugar, numero_edicion, doc_identidad, descripcion)
        VALUES (1800, '1985-04-20', 'Eurobuilding', 50, 3548, 'Buena gala mi gente, estan invitados');

     -- Prueba del año de la gala mayor a 2200
    INSERT INTO public.gala(
        ano, fecha, lugar, numero_edicion, doc_identidad, descripcion)
        VALUES (2300, '1985-04-20', 'Eurobuilding', 50, 3548, 'Buena gala mi gente, estan invitados');

    -- Prueba de fecha de realizacion invalida
        INSERT INTO public.gala(
        ano, fecha, lugar, numero_edicion, doc_identidad, descripcion)
        VALUES (2000, '1985-04-20', 'Eurobuilding', 50, 3548, 'Buena gala mi gente, estan invitados');