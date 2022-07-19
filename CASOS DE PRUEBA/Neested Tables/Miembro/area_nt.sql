-- Consultar las areas de un miembro
WITH list AS
 (SELECT UNNEST(area_nt) AS area FROM   public.miembro
  WHERE  id_miembro = 20)
  SELECT area FROM list;

-- ACTUALIZAR NT_AREA MEMBRESÍA
CREATE OR REPLACE PROCEDURE actualizar_area_nt_membresia()
	LANGUAGE PLPGSQL
	AS 
	$$
	DECLARE
		v_area_nt VARCHAR(255);
		query_rama varchar (200);
		query_persona varchar (200);
		v_rama RECORD;
		v_persona RECORD;
		v_cont integer;
		v_cont2 integer;
		v_cont3 integer;
	BEGIN
	query_persona='select doc_identidad from public.persona';
	FOR v_persona IN EXECUTE query_persona LOOP
		v_cont3=0;
		v_area_nt = '{';
		
		query_rama='select distinct rama from public.categoria where rama is not null';
		FOR v_rama IN EXECUTE query_rama LOOP
			v_cont=0;
			v_cont2=0;
				SELECT COUNT(C2.rama) INTO v_cont
				FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
				INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
				INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 
				WHERE doc_identidad = v_persona.doc_identidad AND C2.rama = v_rama.rama and nominadas.empate='no'; 

				IF v_cont > 1 THEN 
					if (v_cont3=0) then
						v_area_nt = concat (v_area_nt,v_rama.rama); 
						v_cont3=v_cont3+1;
					else
						v_area_nt = concat (v_area_nt,','); 
						v_area_nt = concat (v_area_nt,v_rama.rama); 
					end if;
					
					IF not EXISTS (SELECT * FROM public.miembro WHERE doc_identidad = v_persona.doc_identidad) then
						INSERT INTO public.miembro(
						fecha_inicio, vitalicio, doc_identidad, fecha_fin, area_nt)
						VALUES ( now(), 'no', v_persona.doc_identidad, null, null);
					end if;
				ELSE	
					SELECT COUNT(ganador) INTO v_cont2
					FROM postuladas_p_pers INNER JOIN nominadas ON postuladas_p_pers.id_postuladas_p_pers = nominadas.id_postuladas_p_pers
					INNER JOIN categoria C1 ON C1.id_categoria = nominadas.id_categoria
					INNER JOIN categoria C2 ON C2.id_categoria = C1.id_categoria2 WHERE doc_identidad = v_persona.doc_identidad 
					AND ganador = 'si' AND C2.rama = v_rama.rama;

					IF v_cont2 > 0 THEN 
						if (v_cont3=0) then
							v_area_nt = concat (v_area_nt,v_rama.rama); 
							v_cont3=v_cont3+1;
						else
							v_area_nt = concat (v_area_nt,','); 
							v_area_nt = concat (v_area_nt,v_rama.rama); 
						end if;
						IF not EXISTS (SELECT * FROM public.miembro WHERE doc_identidad = v_persona.doc_identidad) then
							INSERT INTO public.miembro(
							fecha_inicio, vitalicio, doc_identidad, fecha_fin, area_nt)
							VALUES ( now(), 'no', v_persona.doc_identidad, null, null);
						end if;
					END IF;
				END IF;
		end loop;


		v_area_nt = concat (v_area_nt, '}');
		if (v_area_nt<>'{}') then
			UPDATE public.miembro SET area_nt = v_area_nt::VARCHAR[] WHERE doc_identidad = v_persona.doc_identidad;
		else 
			UPDATE public.miembro SET area_nt = null WHERE doc_identidad = v_persona.doc_identidad;
		end if;
	end loop;

	update public.miembro set vitalicio= 'si' where id_miembro in(select id_miembro from public.miembro 
	where extract(days from (now()-fecha_inicio))/365.25>=15 and fecha_fin is null);

	COMMIT;	

	END; $$;



