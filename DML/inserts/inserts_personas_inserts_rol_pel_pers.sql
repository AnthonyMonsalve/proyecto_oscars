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
	VALUES (2525, '	Elisha', 'Vanslyck', 'Cook', 'M', '1909-04-04', '1926-08-14', 'Jr.', NULL, NULL, NULL);

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
	VALUES (3, 10, 21065, NULL);

--guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2045, 'Grends', 'Stuart', 'Big', 'M', '1968-11-14', '1980-04-21', 'Bird', NULL, NULL, NULL);
	
	INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 10, 2045, NULL);
