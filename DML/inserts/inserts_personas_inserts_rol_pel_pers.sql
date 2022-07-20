--------------------------------------------------
-- Relacionadas al audiovisual "Duro de matar"

--Director y Guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (5655, 'John', 'Campbell', 'McTiernan', 'M', '1970-11-12', '1986-01-31', 'Junior', NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 5, 5655, NULL);
	
	INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (3, 5, 5655, NULL);

--guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (1597, 'Jeb', 'Stuart', 'Little', 'M', '1971-07-10', '1988-04-21', 'Rock', NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 5, 1597, NULL);
	
--Actores principales
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (3548, 'James', 'Saburo', 'Shigeta', 'M', '1910-03-17', '1929-04-17', NULL, 'Honolulu, Oahu, Territory of Hawaii', 'James Saburo Shigeta (japonés :繁田 三郎) (17 de junio de 1929). Actor estadounidense de ascendencia japonesa. Se destacó por sus papeles en The Crimson Kimono (1959), Walk Like a Dragon (1960), Flower Drum Song (1961), Bridge to the Sun (1961), Die Hard (1988) y Mulan (1998). En 1960, ganó el Globo de Oro a la Revelación Más Prometedora - Masculino , junto con otros tres actores.', NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 5, 3548, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (4, 1, 3548, NULL);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (9632, 'Grand', 'Bush', 'Lee', 'M', '1945-09-12', '1976-07-31', NULL, 'Los Angeles, California, U.S.', 'Grand Lee Bush (nacido el 24 de diciembre de 1955) es un actor estadounidense de teatro, televisión y grandes películas.', NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 5, 9632, NULL);
--Banda sonora
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (74511, 'Michael', 'Kamen', 'Arnold', 'M', '1949-04-08', '1967-04-14', 'Jr.', NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (8, 5, 74511, 'Love in Paradise');
--Encargado de Sonido
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2015, 'Kevin', 'Cleary', 'Faraday', 'M', '1938-04-11', '1967-12-24', NULL, NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (7, 5, 2015, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (5, 1, 2015, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (5, 5, 2015, NULL);

--------------------------------------------------
-- Relacionadas al audiovisual "Los nombramientos de Dennis Jennings"

--Director y Guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2065, 'Steven', 'Alexander', 'Wright', 'M', '1939-02-09', '1955-04-15', 'Gerald', NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 9, 2065, NULL);
	
INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (3, 9, 2065, NULL);

--guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (4004, 'Grends', 'Stuart', 'Big', 'M', '1961-05-02', '1980-04-21', 'Bird', NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 9, 4004, NULL);

	INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (3, 1, 4004, NULL);


--------------------------------------------------
-- Relacionadas al audiovisual "Work Experience"

--Director y Guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (21065, 'Steven', 'Alexander', 'Wright', 'M', '1933-03-30', '1955-04-15', 'Gerald', NULL, NULL, NULL);


	INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 10, 21065, NULL);

	INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (10, 10, 21065, NULL);
	
	INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (3, 10, 21065, NULL);

--guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2045, 'Grends', 'Stuart', 'Big', 'M', '1968-11-14', '1980-04-21', 'Bird', NULL, NULL, NULL);
	
	INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 10, 2045, NULL);



---- MAS PERSONAS 


INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (9885, 'Vanya', 'Schruur', 'Collumbell', 'M', '1958-05-23', '1979-05-23', 'Dallis', null, null);



INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (2221, 'Sella', 'Penhall', 'Garriock', 'F', '1950-05-06', '1972-10-01', 'Josy', 'Nevada', 'Benedict College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');


--PRESENTADOR DE GALA 1985
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom) 
	VALUES (202020, 'Jack', 'Lemmon', 'Garriock', 'M', '1950-05-06', '1972-10-01', 'Josees');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6583, 'Gilbertina', 'Lilie', 'Piff', 'F', '1920-12-29', '1965-03-11', null, 'Indiana', 'British Columbia Open University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (7594, 'Lusa', 'Benne', 'Chadd', 'F', '1949-07-17', '1975-03-02', null, 'Michigan', 'Hamamatsu University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4830, 'Nicolle', 'McGrayle', 'Romanin', 'F', '1953-07-10', '1978-09-10', 'Fara', 'California', 'Mayo Graduate School. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (3902, 'Trudie', 'Scotting', 'Patkin', 'F', '1927-07-30', '1982-08-02', 'Aime', 'Virginia', 'Université de Toulouse. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6496, 'Bea', 'Domingues', 'Tytherton', 'F', '1947-09-03', '1978-09-17', 'Jinny', 'Missouri', 'National Taipei University of Technology. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (11043, 'Eddy', 'Cron', 'Mc-Kerley', 'M', '1936-05-28', '1969-09-19', 'Rockie', 'Illinois', 'Ecole Supérieure d''Ingénieurs et de Techniciens pour l''Agriculture. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6939, 'Gabriela', 'Brookson', 'Cundict', 'F', '1940-05-24', '1964-09-29', 'Libbie', 'Oklahoma', 'Universidad Ciencias Comerciales. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6858, 'Barbabas', 'Bonny', 'Northeast', 'M', '1932-08-29', '1973-11-01', null, 'Kansas', 'Stenden University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6725, 'Shaw', 'Levens', 'Woodford', 'M', '1955-01-19', '1966-01-25', 'Bond', 'Nevada', 'East Kazakstan State Technical University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (3805, 'Lydon', 'Janecki', 'Goor', 'M', '1953-12-28', '1982-08-12', null, 'Texas', 'Heythrop College, University of London. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (2577, 'Raimund', 'Machent', 'Sidebotham', 'M', '1928-09-23', '1976-05-06', 'Batholomew', 'Texas', 'Australian Maritime College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4132, 'Ricard', 'Izaks', 'Grinaway', 'M', '1951-10-24', '1966-03-27', 'Jeddy', 'California', 'Kuala Lumpur Infrastructure University College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4982, 'Adriana', 'Wolstenholme', 'Orvis', 'F', '1950-06-06', '1972-04-09', null, 'Texas', 'Changchun Teachers College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (3430, 'Shea', 'Francklyn', 'Henzley', 'F', '1947-10-03', '1983-05-02', 'Annalee', 'District of Columbia', 'Douglas College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6248, 'Aidan', 'Killgus', 'Rushmare', 'F', '1931-08-28', '1974-03-27', null, 'Wisconsin', 'University of Southern Indiana. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5505, 'Suzie', 'Beardshall', 'Bergstrand', 'F', '1946-03-26', '1963-02-07', null, 'Florida', 'Universidad Odontológica Dominicana. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5184, 'Shelagh', 'Fateley', 'Dillistone', 'F', '1957-12-23', '1979-08-09', 'Tedra', 'California', 'Universidad Argentina "John F. Kennedy". Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');


---- MAS ROLES PEL PERS
INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 9, 6207);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 7, 4794);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 1, 4794);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 5, 4872);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 10, 7263);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 9, 4794);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 4, 3238);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 2, 6939);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 9, 4804);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 7, 6207);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 6, 11043);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 11, 4315);


INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 8, 6472);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 1, 6725);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 2, 6248);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 5, 6472);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 8, 5184);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 14, 8837);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 7, 5505);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 11, 4716);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 6, 9885);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 2, 5321);


INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 13, 4872);


INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 9, 11043);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 7, 5505);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 1, 4060);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 9, 3902);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 9, 4716);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 4, 2699);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 3, 5363);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 5, 6278);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 9, 6583);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 12, 7263);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 2, 7547);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 12, 6496);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 2, 2699);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 3, 5336);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 14, 5321);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 6, 6248);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 3, 4716);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 10, 3430);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 2, 3430);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 1, 5336);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 12, 6583);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 1, 5184);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 4, 8989);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 11, 5195);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 4, 6207);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 12, 9885);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 6, 5321);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 14, 8955);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 10, 7263);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 4, 4011);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 1, 5294);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 1, 3396);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 4, 6725);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 9, 3238);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 13, 7547);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 6, 6248);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 10, 5184);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 10, 4315);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 12, 6858);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 13, 5184);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 3, 11043);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 8, 8837);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 1, 11043);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 4, 4794);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 4, 6248);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 8, 6496);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 2, 7547);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 3, 4716);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 4, 8989);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 5, 5363);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 5, 3396);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 11, 4011);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 12, 7547);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 3, 5294);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 13, 4060);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 10, 4804);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 7, 3430);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 5, 4716);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 7, 4804);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 5, 2221);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 6, 4582);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 1, 6583);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 1, 3902);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 14, 7846);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 12, 4011);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 1, 6941);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 5, 5505);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 8, 6278);


-- MUSICOS


INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 1, 7373, 'La opera de los 3 mosqueteros');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 6, 8955, 'Ave maría');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 10, 7135, 'Bob marley this is love');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 2, 5336, 'Ave maría');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 13, 6472, 'Juan Gabriel Querida');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 7, 6248, 'Ave maría');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 11, 7317, 'Juan Gabriel Querida');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 2, 5782, 'Avicii');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 8, 3396, 'Nadie como tu');







------- PROBANDO   -------

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (7, 5310, 8);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (11, 1665, 12);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (1, 8888, 11);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (10, 6941, 6);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (9, 4982, 13);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (5, 1665, 14);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (9, 7025, 3);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (6, 1665, 3);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (1, 6858, 1);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (2, 6858, 5);


INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (7, 3548, 7);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (1, 7826, 7);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (4, 2065, 5);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (8, 4982, 2);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (8, 7025, 11);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (9, 6941, 13);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (3, 2225, 12);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (3, 1122, 4);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (3, 2225, 10);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (1, 5310, 9);


INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (7, 4582, 8);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (8, 12545, 13);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (10, 6309, 4);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (10, 2665, 14);


INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (7, 4444, 14);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (8, 7826, 7);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (10, 2665, 5);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (9, 6248, 3);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (4, 7211, 5);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (2, 74511, 13);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (1, 6309, 3);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (1, 10893, 13);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (2, 6248, 4);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (4, 8623, 6);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (11, 7211, 9);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (11, 7025, 3);


INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (10, 6939, 5);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (10, 6309, 9);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (11, 7826, 5);


INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (7, 4444, 5);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (2, 7826, 14);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (4, 8888, 11);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (11, 12545, 7);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (1, 1665, 11);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (5, 2065, 8);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (10, 2225, 6);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (5, 7025, 11);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (6, 4444, 11);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (2, 9522, 12);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (2, 74511, 8);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (6, 5310, 9);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (3, 2015, 8);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (5, 6309, 3);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (10, 2665, 4);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (7, 6941, 8);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (9, 4444, 2);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (9, 5184, 2);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (11, 4982, 12);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (2, 4444, 14);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (11, 6941, 3);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (6, 6248, 12);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (11, 6858, 4);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (8, 6941, 3);


INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (7, 3548, 13);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (3, 6858, 7);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (9, 7211, 4);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (9, 9522, 5);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (4, 6309, 8);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (4, 2015, 13);


INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (7, 12545, 4);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (3, 8623, 3);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (3, 8888, 11);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (5, 7826, 10);


INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (7, 7826, 6);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (3, 7826, 12);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (2, 3548, 6 );


INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (7, 8888, 5);


INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (4, 7025, 1);


INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (7, 2225, 2);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (11, 7826, 4);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (4, 7826, 5);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (1, 12545, 13);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (1, 10893, 8);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (9, 2665, 11);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (11, 2015, 13);

INSERT INTO public.rol_pel_pers(
    id_rol, doc_identidad, id_audiovi)
    VALUES (10, 7826, 6);