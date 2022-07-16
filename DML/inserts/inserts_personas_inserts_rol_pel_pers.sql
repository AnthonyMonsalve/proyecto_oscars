-------------------- PERSONAS --------------------
-- Relacionadas al audiovisual "Regreso al futuro"

--Director y Guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (12545, 'Robert', 'Zemeckis', 'Lee', 'M', '1945-12-12', '1972-05-05', NULL, NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (3, 1, 12545, NULL);
	
INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 1, 12545, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 2, 12545, NULL);

--Guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (7886, 'Mchael', 'Robert', 'Gale', 'M', '1930-10-07', '1965-01-24', NULL, NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 1, 7886, NULL);

--Actores principales
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (7826, 'Michael', 'Fox', 'Andrew', 'M', '1970-12-12', '1977-02-04', 'Julio', 'Canada', 'Michael Andrew Fox OC (born June 9, 1961), known professionally as Michael J. Fox, is a Canadian-American retired actor. Beginning his career in the 1970s, he first rose to prominence for portraying Alex P. Keaton on the NBC sitcom Family Ties (1982–1989). Fox is most famous for his role as protagonist Marty McFly in the Back to the Future film trilogy (1985–1990), which became a critical and commercial success. He went on to headline several films throughout the 1980s and 1990s, including Teen Wolf (1985), The Secret of My Success (1987), Casualties of War (1989), Doc Hollywood (1991), and The Frighteners (1996). Fox returned to television on the ABC sitcom Spin City, in which he portrayed the lead role of Mike Flaherty from 1996 to 2000', NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 1, 7826, NULL);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (9525, 'Christopher', 'Allen', 'Lloyd', 'M', '1925-04-04', '1938-10-22', NULL, 'Stamford, Connecticut, U.S.', 'Christopher Allen Lloyd (born October 22, 1938) is an American actor. He has appeared in many theater productions, films, and on television since the 1960s. He is known for portraying Dr. Emmett "Doc" Brown in the Back to the Future trilogy (1985–1990); and Jim Ignatowski in the comedy series Taxi (1978–1983), for which he won two Emmy Awards', NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 1, 9525, NULL);
	
--Banda sonora
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (1525, 'Alan', 'Silvestri', 'Barrios', 'M', '1934-07-05', '1950-03-26', 'Anthony', NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (7, 1, 1525, NULL);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (7025, 'John', 'Victor', 'Colla', 'M', '1936-02-01', '1952-10-20', NULL, NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (7, 1, 7025, NULL);

--Asistente
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (9522, 'Pamela', 'Eilerson', 'Merbdel', 'M', '1922-08-07', '1954-10-20', 'Luis', NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (6, 1, 9522, NULL);

--------------------------------------------------
-- Relacionadas al audiovisual "Aliens, el regreso"

--Director y Guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (1665, 'James', 'Cameron', 'Francis', 'M', '1927-06-12', '1954-08-16', NULL, NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 2, 1665, NULL);
	
INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (3, 2, 1665, NULL);
	
	
--guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (4444, 'Walter', 'Hill', 'Hill', 'M', '1922-05-05', '1942-07-10', NULL, NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 2, 4444, NULL);

--Actores principales
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (1122, 'Susan', 'Weaver', 'Alexandra', 'F', '1926-05-11', '1949-10-04', NULL, 'Nueva York, U.S.', 'Hija del presidente de NBC Sylvester Weaver y la actriz Elizabeth Weaver, Sigourney comienza a recibir clases de interpretación durante sus estudios de secundaria. Tras asistir a la Yale School of Drama de Nueva York, realiza sus primeros trabajos como actriz en televisión y en teatro aunque no es hasta 1977 cuando debuta en la gran pantalla bajo las órdenes del afamado director Woody Allen en el filme ‘Annie Hall’', NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 2, 1122, NULL);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2211, 'Michael', 'Biehn', 'Connell', 'M', '1920-10-09', '1956-07-31', NULL, 'Anniston, Alabama, U.S.', 'Michael Connell Biehn is an American actor, primarily known for his roles in science fiction films directed by James Cameron; as Sgt. Kyle Reese in The Terminator (1984), Cpl. Dwayne Hicks in Aliens (1986), and Lt. Coffey in The Abyss (1989). His other films include The Fan (1981)', NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 2, 2211, NULL);
--Banda sonora
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (8888, 'James', 'Roy', 'Horner', 'M', '1954-10-26', '1978-08-14', NULL, NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (7, 2, 8888, 'Verano Azul');
--Vestuario
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (9999, 'Emma', 'Porteous', 'Porteous', 'F', '1970-11-15', '1986-02-12', 'Emmits', NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (9, 2, 9999, NULL);

--------------------------------------------------
-- Relacionadas al audiovisual "Nacido para matar"

--Director y Guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2665, 'Robert', 'Wise', 'Earl ', 'M', '1915-11-03', '1934-05-22', NULL, NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 3, 2665, NULL);
	
	INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (3, 3, 2665, NULL);
	
--guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (4044, 'Eve', 'Greene', 'Dopmos', 'F', '1890-01-01', '1906-04-21', NULL, NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 3, 4044, NULL);

--Actores principales
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (3333, 'Lawrence', 'James', 'Tierney', 'M', '1917-09-17', '1943-11-04', NULL, 'Brooklyn, New York City, U.S.', 'Lawrence James Tierney (15 de marzo de 1919 - 26 de febrero de 2002) fue un actor de cine y televisión estadounidense mejor conocido por sus numerosas representaciones cinematográficas de mafiosos y tipos duros en una carrera que abarcó más de 50 años. Sus papeles reflejaron sus frecuentes roces con la ley. [1] En 2005, el crítico de cine David Kehr de The New York Times describió al "descomunal Tierney" como "no tanto un actor como una fuerza aterradora de la naturaleza"', NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 3, 3333, NULL);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (7211, 'Claire', 'Trevor', 'Wemlinger', 'F', '1911-06-06', '1929-07-31', 'Felans', 'New York City, U.S.', 'actriz estadounidense. Apareció en 65 largometrajes entre 1933 y 1982, [2] ganando el Premio de la Academia a la Mejor Actriz de Reparto por su papel en Key Largo (1948), y recibió nominaciones por sus papeles en The High and the Mighty (1954) y Dead End . (1937). Trevor recibió la mejor facturación, por delante de John Wayne , por Stagecoach (1939)', NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 3, 7211, NULL);

--Banda sonora
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2525, 'Elisha', 'Vanslyck', 'Cook', 'M', '1909-04-04', '1926-08-14', 'Jr.', NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (8, 1, 2525, 'Bebesita');

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (8, 3, 2525, 'Bebesita');
--Vestuario
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2225, 'Azzedine', 'Alaïa', 'Baserj', 'M', '1968-03-24', '1980-02-12', NULL, NULL, NULL, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (9, 3, 2225, NULL);
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


INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (9885, 'Vanya', 'Schruur', 'Collumbell', 'M', '1958-05-23', '1979-05-23', 'Dallis', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (7263, 'Damien', 'De-Ville', 'Bog', 'M', '1938-08-14', '1966-03-26', null, null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (2221, 'Sella', 'Penhall', 'Garriock', 'F', '1950-05-06', '1972-10-01', 'Josy', 'Nevada', 'Benedict College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6583, 'Gilbertina', 'Lilie', 'Piff', 'F', '1920-12-29', '1965-03-11', null, 'Indiana', 'British Columbia Open University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5321, 'Carce', 'Clausen', 'McLachlan', 'M', '1937-02-26', '1974-01-02', 'Claudio', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (7594, 'Lusa', 'Benne', 'Chadd', 'F', '1949-07-17', '1975-03-02', null, 'Michigan', 'Hamamatsu University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6309, 'Say', 'MacGaughie', 'Stillwell', 'M', '1929-05-26', '1970-04-17', 'Cletus', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (8059, 'Caren', 'Levy', 'Christofor', 'F', '1925-11-07', '1978-07-28', null, 'California', 'University of Great Falls. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (8591, 'Erich', 'Drackford', 'Heskey', 'M', '1926-04-20', '1962-01-09', 'Harv', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4830, 'Nicolle', 'McGrayle', 'Romanin', 'F', '1953-07-10', '1978-09-10', 'Fara', 'California', 'Mayo Graduate School. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (3902, 'Trudie', 'Scotting', 'Patkin', 'F', '1927-07-30', '1982-08-02', 'Aime', 'Virginia', 'Université de Toulouse. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (10833, 'Melony', 'Ricciardelli', 'Rhydderch', 'F', '1944-07-22', '1964-09-16', 'Crystie', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (3396, 'Suzi', 'Cuell', 'Suart', 'F', '1947-06-28', '1970-10-15', 'Galina', 'Missouri', 'Universidad de Quintana Roo. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6537, 'Nata', 'McQuillen', 'Venney', 'F', '1922-07-11', '1970-05-04', 'Melony', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (11020, 'Yvon', 'Hartegan', 'Roelofs', 'M', '1933-08-20', '1964-12-31', 'Burty', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (7911, 'Harrie', 'Tudge', 'Orcas', 'F', '1920-12-30', '1966-02-17', null, null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6496, 'Bea', 'Domingues', 'Tytherton', 'F', '1947-09-03', '1978-09-17', 'Jinny', 'Missouri', 'National Taipei University of Technology. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (10786, 'Artemus', 'Pedrol', 'Monaghan', 'M', '1957-12-29', '1982-12-03', 'Ezri', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (11043, 'Eddy', 'Cron', 'Mc-Kerley', 'M', '1936-05-28', '1969-09-19', 'Rockie', 'Illinois', 'Ecole Supérieure d''Ingénieurs et de Techniciens pour l''Agriculture. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6939, 'Gabriela', 'Brookson', 'Cundict', 'F', '1940-05-24', '1964-09-29', 'Libbie', 'Oklahoma', 'Universidad Ciencias Comerciales. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (8623, 'Theresa', 'Wilsher', 'Melross', 'F', '1925-08-21', '1981-12-26', null, 'Illinois', 'Berklee College of Music. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6472, 'Ertha', 'Readshall', 'Boorne', 'F', '1934-06-11', '1961-10-03', 'Lise', 'Florida', 'Samar State University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5976, 'Dedra', 'Wall', 'Duligall', 'F', '1945-05-06', '1977-03-30', null, null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6858, 'Barbabas', 'Bonny', 'Northeast', 'M', '1932-08-29', '1973-11-01', null, 'Kansas', 'Stenden University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6725, 'Shaw', 'Levens', 'Woodford', 'M', '1955-01-19', '1966-01-25', 'Bond', 'Nevada', 'East Kazakstan State Technical University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4060, 'Zorana', 'Cawker', 'Vannuchi', 'F', '1937-08-06', '1966-06-04', 'Selestina', 'California', 'Universitas Islam Sultan Agung. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (10220, 'Keven', 'Rummer', 'Firman', 'M', '1953-12-14', '1980-06-07', 'Ely', 'Indiana', 'National University of Samoa. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (9975, 'Ernesta', 'Crichley', 'Danilenko', 'F', '1950-10-23', '1979-03-27', null, 'Indiana', 'Dar Al-Uloom Colleges. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (7373, 'Welch', 'Bortoluzzi', 'Jillings', 'M', '1932-06-12', '1971-10-24', 'Con', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6278, 'Bernadene', 'Gange', 'Tolotti', 'F', '1954-07-20', '1975-05-14', 'Layne', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6207, 'Kyle', 'Bottinelli', 'Hulles', 'M', '1932-07-24', '1981-05-12', 'Nolly', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (3805, 'Lydon', 'Janecki', 'Goor', 'M', '1953-12-28', '1982-08-12', null, 'Texas', 'Heythrop College, University of London. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (2577, 'Raimund', 'Machent', 'Sidebotham', 'M', '1928-09-23', '1976-05-06', 'Batholomew', 'Texas', 'Australian Maritime College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (8818, 'Billy', 'Kahane', 'Skough', 'F', '1945-12-02', '1983-02-21', 'Sephira', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (10893, 'Ainsley', 'Calabry', 'Siman', 'F', '1929-05-17', '1971-07-05', 'Marin', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (7735, 'Priscella', 'Ayton', 'Simonetti', 'F', '1931-05-28', '1964-04-08', null, null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4132, 'Ricard', 'Izaks', 'Grinaway', 'M', '1951-10-24', '1966-03-27', 'Jeddy', 'California', 'Kuala Lumpur Infrastructure University College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4582, 'Teddi', 'Gaitone', 'Leyland', 'F', '1923-02-27', '1983-05-18', 'Mignonne', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (10368, 'Filbert', 'Rampley', 'Verrick', 'M', '1929-03-06', '1966-11-01', null, 'South Carolina', 'Comrat State University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5782, 'Nariko', 'Kingzeth', 'Mulroy', 'F', '1956-02-01', '1971-12-06', 'Karyl', 'Connecticut', 'National Law School of India University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (2747, 'Abigale', 'Perdue', 'Warde', 'F', '1949-12-27', '1977-05-20', null, 'Ohio', 'University of Chicago. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4982, 'Adriana', 'Wolstenholme', 'Orvis', 'F', '1950-06-06', '1972-04-09', null, 'Texas', 'Changchun Teachers College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (3430, 'Shea', 'Francklyn', 'Henzley', 'F', '1947-10-03', '1983-05-02', 'Annalee', 'District of Columbia', 'Douglas College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (3238, 'Walker', 'Steanyng', 'Geeritz', 'M', '1951-03-22', '1973-05-24', 'Gabriello', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6248, 'Aidan', 'Killgus', 'Rushmare', 'F', '1931-08-28', '1974-03-27', null, 'Wisconsin', 'University of Southern Indiana. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (9733, 'Mata', 'Managh', 'Clawson', 'M', '1940-07-12', '1968-09-11', 'Sergeant', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5505, 'Suzie', 'Beardshall', 'Bergstrand', 'F', '1946-03-26', '1963-02-07', null, 'Florida', 'Universidad Odontológica Dominicana. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (9442, 'Brodie', 'Kitchinham', 'Skyrm', 'M', '1939-04-08', '1962-02-25', null, null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (8713, 'Lorant', 'Oager', 'Camili', 'M', '1957-08-04', '1975-11-19', 'Yankee', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5184, 'Shelagh', 'Fateley', 'Dillistone', 'F', '1957-12-23', '1979-08-09', 'Tedra', 'California', 'Universidad Argentina "John F. Kennedy". Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (10191, 'Tully', 'Give', 'Mac Geaney', 'M', '1952-12-21', '1964-08-06', 'Cale', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (7193, 'Ivar', 'Baumert', 'Kynge', 'M', '1945-11-21', '1972-06-30', 'Addy', 'Alaska', 'Technical University of Cracow. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6250, 'Nico', 'Mengue', 'Slessar', 'M', '1954-06-29', '1976-10-16', 'Eric', 'Missouri', 'University of Hawaii - Hilo. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (8320, 'Frazier', 'Hulatt', 'Lowless', 'M', '1921-03-16', '1975-06-12', 'Neil', 'Kansas', 'Kirchliche Hochschule Bethel. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5192, 'Zorina', 'Faithfull', 'Mansour', 'F', '1952-04-26', '1977-10-26', 'Genia', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5165, 'Carleton', 'Karpfen', 'Gentry', 'M', '1920-07-24', '1978-09-03', null, 'Iowa', 'Royal College of Music, University of London. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4037, 'Janifer', 'Kenton', 'Sheryn', 'F', '1958-09-27', '1964-03-07', 'Christiane', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4872, 'Cob', 'Cunnane', 'Kimpton', 'M', '1937-11-19', '1963-04-17', 'Wernher', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (7317, 'Bruce', 'Jenkins', 'Gatteridge', 'M', '1920-11-16', '1982-11-28', null, 'California', 'Pennsylvania State University at Harrisburg - The Capital College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (8837, 'Carmine', 'Prest', 'Tschirschky', 'F', '1923-10-05', '1970-09-15', 'Katey', 'Virginia', 'Université Mouloud Mammeri de Tizi Ouzou. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5195, 'Avery', 'Kermott', 'Margetson', 'M', '1937-10-24', '1979-10-31', 'Carr', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (8890, 'Alano', 'Edgeler', 'Presshaugh', 'M', '1928-01-03', '1976-10-08', null, 'Texas', 'Central Philippine University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (8989, 'Tedi', 'McKendry', 'Chalk', 'F', '1955-07-10', '1970-10-16', 'Adoree', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (3903, 'Korey', 'MacCartan', 'Pearne', 'M', '1952-03-29', '1974-03-30', null, 'Virginia', 'Azerbaijan National Conservatorie. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4716, 'Keriann', 'Berridge', 'Edeson', 'F', '1923-08-10', '1982-09-17', null, 'New York', 'Taipei Physical Education College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6941, 'Paul', 'Windress', 'Molineaux', 'M', '1939-08-25', '1974-09-23', 'Harmon', 'California', 'Glenville State College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (8955, 'Hazel', 'Camplin', 'Mellows', 'M', '1958-05-31', '1983-05-14', 'Laurent', 'Missouri', 'University of Brescia. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6522, 'Lesya', 'Petrichat', 'Mortel', 'F', '1928-04-22', '1962-03-26', 'Marci', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5336, 'Cornelle', 'Winny', 'Granger', 'F', '1936-08-10', '1967-08-17', 'Meriel', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5780, 'Jae', 'Ransley', 'Scolding', 'M', '1932-01-08', '1969-03-15', 'Mick', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4794, 'Inger', 'Skae', 'Meysham', 'F', '1931-05-13', '1980-06-24', null, 'California', 'Dr. YS Parmar University of Horticulture and Forestry. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4315, 'Sidnee', 'Plaide', 'Kohring', 'M', '1932-06-01', '1966-04-12', null, null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (3167, 'Birdie', 'Petrushkevich', 'Van de Velde', 'F', '1932-03-27', '1968-03-14', null, 'Texas', 'Jilin Agricultural University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4482, 'Giselle', 'Drinkall', 'Wildman', 'F', '1954-03-13', '1964-05-11', 'Letizia', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (9271, 'Ab', 'German', 'Capitano', 'M', '1954-12-11', '1977-09-20', 'Randolf', 'Pennsylvania', 'Hubert Kairuki Memorial University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5310, 'Janet', 'Hayes', 'Clarae', 'F', '1959-11-20', '1966-08-03', 'Tabatha', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (2699, 'Daisey', 'Upshall', 'Kynder', 'F', '1957-07-18', '1978-04-07', 'Perl', 'New York', 'Vilnius Academy of Arts. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6842, 'Trisha', 'Loraine', 'Oag', 'F', '1946-05-31', '1973-07-29', 'Michaella', 'Connecticut', 'Tsuda College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (7501, 'Evelin', 'Hubbuck', 'Enos', 'M', '1955-09-28', '1978-09-02', 'Randall', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (2667, 'Ginger', 'McGonnell', 'Craigheid', 'F', '1938-04-07', '1979-08-05', 'Evangelina', 'Massachusetts', 'Hafencity Universität Hamburg. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (6676, 'Maury', 'Gallafant', 'Ianelli', 'M', '1942-09-14', '1961-03-22', null, null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (11004, 'Cordi', 'Soal', 'Mantrip', 'F', '1929-01-16', '1972-07-03', 'Tybi', 'Rhode Island', 'Kyoto Institute of Technology. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (3587, 'Bron', 'Tripet', 'Arpin', 'M', '1921-07-18', '1982-05-16', 'Powell', 'California', 'Brandenburgische Technische Universität Cottbus. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5294, 'Trstram', 'Imloch', 'Yakubov', 'M', '1928-04-09', '1965-05-13', 'Alfons', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (8125, 'Forrest', 'Pilger', 'Avramovsky', 'M', '1927-03-26', '1979-10-02', 'Porter', 'Tennessee', 'Kent State University - Trumbull. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4414, 'Kristy', 'Fish', 'De Matteis', 'F', '1929-03-29', '1973-10-29', 'Helsa', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4126, 'Manfred', 'Churchlow', 'Kydd', 'M', '1934-01-17', '1967-03-06', 'Waiter', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4461, 'Mada', 'Iddiens', 'Lowle', 'F', '1959-08-19', '1969-03-25', 'Ami', 'Pennsylvania', 'Matej Bel University in Banská Bystrica. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4725, 'Sonni', 'Havill', 'Shatford', 'F', '1937-10-30', '1976-12-27', 'Dre', 'Virginia', 'Technological University (Dawei). Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5363, 'Neilla', 'Blazejewski', 'Pipkin', 'F', '1951-02-18', '1975-04-03', 'Merrielle', 'New York', 'Niigata University of International and Information Studies. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (7846, 'Kylen', 'Chadwyck', 'Belch', 'F', '1936-04-02', '1963-05-11', 'Shela', 'Indiana', 'Qingdao University of Science and Technology. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (2638, 'Clarey', 'Dartan', 'Mardlin', 'F', '1925-02-25', '1980-05-12', 'Winne', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4011, 'Brnaby', 'Boij', 'Pickavance', 'M', '1920-01-27', '1980-04-14', 'Constantino', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5923, 'Madlin', 'Boerder', 'Puttergill', 'F', '1922-12-21', '1982-02-26', 'Novelia', 'Alaska', 'National Academy of Fine Arts. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4804, 'Marijo', 'Delhanty', 'Horsefield', 'F', '1944-06-16', '1962-12-17', 'Melba', 'Michigan', 'Willamette University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (10921, 'Torrance', 'Danielsson', 'Randalston', 'M', '1945-06-01', '1977-03-20', 'Ric', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (8078, 'Lynnelle', 'Zold', 'Benettini', 'F', '1954-03-07', '1978-02-26', 'Sonja', null, null);

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (7135, 'Quincy', 'Maudling', 'Shiel', 'M', '1920-02-14', '1970-05-24', 'Field', 'New York', 'Technological Education Institute of Thessaloniki. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona (doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (7547, 'Reynard', 'Beldon', 'Bacchus', 'M', '1931-05-17', '1977-01-16', null, 'Nevada', 'Ecole Supérieure de Chimie Physique Electronique de Lyon. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');



---- MAS ROLES PEL PERS

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 9, 7135);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 14, 8320);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 9, 3430);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 7, 2638);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 5, 6309);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 9, 6207);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 11, 6250);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 7, 4794);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 5, 4872);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 10, 7263);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 9, 4794);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 13, 4716);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 4, 3238);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 11, 10833);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 1, 4872);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 1, 9975);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 3, 2699);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 2, 6939);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 6, 5192);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 1, 8989);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 2, 5195);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 14, 5923);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 9, 4804);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 7, 6207);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 6, 11043);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 11, 4315);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 6, 9442);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 3, 4060);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 8, 6472);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 9, 3167);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 7, 4461);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 6, 11004);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 11, 5321);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 7, 10921);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 1, 6725);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 2, 6248);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 5, 6472);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 8, 5184);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 14, 8837);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 13, 10921);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 7, 5505);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 11, 4716);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 1, 10921);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 11, 6522);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 6, 9885);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 2, 5321);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 10, 8890);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 13, 4872);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 9, 7735);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 9, 11043);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 7, 5505);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 4, 3587);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 3, 5976);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 1, 4060);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 9, 3902);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 12, 3238);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 11, 8078);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 12, 4315);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 9, 4716);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 4, 2699);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 1, 4725);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 3, 5363);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 5, 6278);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 9, 6583);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 14, 6676);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 2, 3167);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 8, 10786);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 12, 7263);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 2, 8713);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 2, 7547);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 12, 6496);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 4, 5192);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 8, 4725);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 4, 5923);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 2, 8125);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 1, 9975);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 6, 10191);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 8, 4461);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 2, 2699);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 2, 8713);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 13, 8623);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 3, 5336);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 14, 5321);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 11, 5782);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 9, 2638);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 6, 6248);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 3, 4716);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 10, 3430);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 2, 3430);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 1, 5336);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 12, 6583);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 9, 11004);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 11, 4037);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 1, 5184);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 5, 8078);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 12, 4482);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 11, 2667);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 6, 7501);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 11, 6676);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 4, 8125);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 3, 5336);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 4, 8623);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 4, 8989);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 11, 5195);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 4, 6207);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 7, 8125);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 12, 9885);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 6, 5321);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 14, 8955);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 12, 8125);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 10, 7263);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 14, 6250);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 4, 4011);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 13, 8591);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 1, 5294);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 1, 3396);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 1, 10921);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 4, 6725);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 13, 4461);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 9, 3238);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 13, 7547);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 6, 6248);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 10, 5184);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 10, 4315);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 10, 5336);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 12, 6858);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 13, 3396);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 13, 5184);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 3, 11043);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 8, 8837);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 1, 11043);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 4, 4794);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 10, 11004);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 14, 10921);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 7, 10786);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 10, 5976);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 5, 5923);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 8, 3587);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 4, 6248);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 4, 6676);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 8, 6496);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 2, 7547);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 3, 4716);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 4, 8989);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 14, 10921);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 6, 9975);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 14, 5165);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 12, 6250);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 5, 5363);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 13, 4582);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 14, 10921);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 5, 3396);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 11, 4011);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 14, 2638);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 12, 7547);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 3, 5294);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 13, 4060);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 10, 4804);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 7, 3430);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 5, 4716);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 7, 4804);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 12, 7317);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 12, 9733);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 11, 8059);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 5, 2221);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (1, 6, 4582);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 9, 10833);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (10, 1, 6583);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (3, 1, 3902);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 6, 8125);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 14, 7846);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 12, 4011);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 1, 6941);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 8, 9733);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (9, 7, 7373);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (5, 2, 5780);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (2, 5, 5505);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 8, 6278);



-- MUSICOS
INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 5, 8818, 'La opera de los 3 mosqueteros');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 10, 10368, 'La opera de los 3 mosqueteros');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 1, 7373, 'La opera de los 3 mosqueteros');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 6, 8955, 'Ave maría');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 13, 7911, 'La canción mas linda del planeta');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 5, 10893, 'Bob marley this is love');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 2, 9271, 'Bob marley this is love');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 10, 7135, 'Bob marley this is love');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 3, 5923, 'Juan Gabriel Querida');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 2, 5336, 'Ave maría');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 13, 6472, 'Juan Gabriel Querida');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 7, 6248, 'Ave maría');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 11, 7317, 'Juan Gabriel Querida');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 2, 5782, 'Avicii');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 8, 7911, 'Ave maría');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 14, 4126, 'Selena Gómez');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 11, 8078, 'Avicii');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 13, 10893, 'Avicii');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 8, 3396, 'Nadie como tu');

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad, cancion_titulo) VALUES (8, 9, 10786, 'Selena Gómez');
