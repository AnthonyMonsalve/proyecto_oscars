-- INI MIEMBRO
    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1980-05-05', 'si', 3511, NULL);

    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1979-11-09', 'si', 5261, NULL);

    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1959-10-15', 'si', 4635, '1990-11-05');

    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1969-12-05', 'si', 1122, '1989-09-15');

    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1939-01-03', 'si', 2665, NULL);

    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1931-05-28', 'si', 7211, NULL);

    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1967-06-06', 'si', 10955, NULL);

    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1981-01-02', 'si', 9822, NULL);

-- FIN MIEMBRO

--alter table miembro disable trigger validar_insert_membresia;
--alter table miembro enable trigger validar_insert_membresia;