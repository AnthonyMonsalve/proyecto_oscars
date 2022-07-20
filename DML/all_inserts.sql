-------------- ROLES --------------
--('actor','guionista','director','productor','fotografo','tecnico', 'ing.sonido', 'musico', 'estilista', 'artista')

INSERT INTO public.rol(id_rol, nombre, descripcion)
	VALUES (1, 'actor', 'Un actor o actriz es una persona que interpreta a un personaje en una actuación');

INSERT INTO public.rol(id_rol, nombre, descripcion)
	VALUES (2, 'guionista', 'Un guionista es una persona encargada de escribir el guion de una producción cinematográfica');

INSERT INTO public.rol(id_rol, nombre, descripcion)
	VALUES (3, 'director', 'El director de cine o director cinematográfico (directora, en femenino) o cineasta es la persona que dirige la filmación de una película');

INSERT INTO public.rol(id_rol, nombre, descripcion)
	VALUES (4, 'productor', 'El productor de cine o productor cinematográfico es, en la industria cinematográfica, el representante legal de una obra cinematográfica');

INSERT INTO public.rol(id_rol, nombre, descripcion)
	VALUES (5, 'fotografo', 'Un fotógrafo o una fotógrafa es aquella persona cuya actividad artística u ocupación consiste en tomar fotografías mediante el uso de una cámara');

INSERT INTO public.rol(id_rol, nombre, descripcion)
	VALUES (6, 'tecnico', 'Persona con habilidades variadas en el mundo del cine');

INSERT INTO public.rol(id_rol, nombre, descripcion)
	VALUES (7, 'ing.sonido', 'Estudio del fenómeno sonoro, en todos los campos de aplicación del mismo');

INSERT INTO public.rol(id_rol, nombre, descripcion)
	VALUES (8, 'musico', 'Cualquiera que compone, dirige o interpreta música se denomina músico');

INSERT INTO public.rol(id_rol, nombre, descripcion)
	VALUES (9, 'estilista', 'Un estilista es un profesional que se dedica a asesorar sobre la vestimenta, el peinado y, en general, la imagen y estética');

INSERT INTO public.rol(id_rol, nombre, descripcion)
	VALUES (10, 'artista', 'Persona que participa profesionalmente en un espectáculo cinematográfico');

INSERT INTO public.rol(id_rol, nombre, descripcion)
	VALUES (11, 'actor de reparto', 'Un actor secundario, actor de reparto o personaje secundario es un actor que interpreta personajes en obras, películas o series de televisión, acompañando a los actores protagonistas');

-------------------- PERSONAS --------------------
-- Relacionadas al audiovisual "Regreso al futuro"

--Director y Guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (12545, 'Robert', 'Zemeckis', 'Lee', 'M', '1945-12-12', '1972-05-05', NULL, NULL, NULL, NULL); 

--Guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (7886, 'Mchael', 'Robert', 'Gale', 'M', '1930-10-07', '1965-01-24', NULL, NULL, NULL, NULL);   

--Actores principales
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (7826, 'Michael', 'Fox', 'Andrew', 'M', '1970-12-12', '1977-02-04', 'Julio', 'Canada', 'Michael Andrew Fox OC (born June 9, 1961), known professionally as Michael J. Fox, is a Canadian-American retired actor. Beginning his career in the 1970s, he first rose to prominence for portraying Alex P. Keaton on the NBC sitcom Family Ties (1982–1989). Fox is most famous for his role as protagonist Marty McFly in the Back to the Future film trilogy (1985–1990), which became a critical and commercial success. He went on to headline several films throughout the 1980s and 1990s, including Teen Wolf (1985), The Secret of My Success (1987), Casualties of War (1989), Doc Hollywood (1991), and The Frighteners (1996). Fox returned to television on the ABC sitcom Spin City, in which he portrayed the lead role of Mike Flaherty from 1996 to 2000', NULL);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (9525, 'Christopher', 'Allen', 'Lloyd', 'M', '1925-04-04', '1938-10-22', NULL, 'Stamford, Connecticut, U.S.', 'Christopher Allen Lloyd (born October 22, 1938) is an American actor. He has appeared in many theater productions, films, and on television since the 1960s. He is known for portraying Dr. Emmett "Doc" Brown in the Back to the Future trilogy (1985–1990); and Jim Ignatowski in the comedy series Taxi (1978–1983), for which he won two Emmy Awards', NULL);

--Banda sonora
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (1525, 'Alan', 'Silvestri', 'Barrios', 'M', '1934-07-05', '1950-03-26', 'Anthony', NULL, NULL, NULL);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (7025, 'John', 'Victor', 'Colla', 'M', '1936-02-01', '1952-10-20', NULL, NULL, NULL, NULL);

--Asistente
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (9522, 'Pamela', 'Eilerson', 'Merbdel', 'M', '1922-08-07', '1954-10-20', 'Luis', NULL, NULL, NULL);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (7135, 'Quincy', 'Maudling', 'Shiel', 'M', '1920-02-14', '1970-05-24', 'Field', 'New York', 'Technological Education Institute of Thessaloniki. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (7547, 'Reynard', 'Beldon', 'Bacchus', 'M', '1931-05-17', '1977-01-16', null, 'Nevada', 'Ecole Supérieure de Chimie Physique Electronique de Lyon. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

-- DIR ARTE
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4011, 'Brnaby', 'Boij', 'Pickavance', 'M', '1920-01-27', '1980-04-14', 'Constantino', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (8591, 'Erich', 'Drackford', 'Heskey', 'M', '1926-04-20', '1962-01-09', 'Harv', null, null);

--- montaje
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4872, 'Cob', 'Cunnane', 'Kimpton', 'M', '1937-11-19', '1963-04-17', 'Wernher', null, null);

--------------------------------------------------
-- Relacionadas al audiovisual "Aliens, el regreso"

--Director y Guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (1665, 'James', 'Cameron', 'Francis', 'M', '1927-06-12', '1954-08-16', NULL, NULL, NULL, NULL);

--guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (4444, 'Walter', 'Hill', 'Hill', 'M', '1922-05-05', '1942-07-10', NULL, NULL, NULL, NULL);

--Actores principales
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (1122, 'Susan', 'Weaver', 'Alexandra', 'F', '1926-05-11', '1949-10-04', NULL, 'Nueva York, U.S.', 'Hija del presidente de NBC Sylvester Weaver y la actriz Elizabeth Weaver, Sigourney comienza a recibir clases de interpretación durante sus estudios de secundaria. Tras asistir a la Yale School of Drama de Nueva York, realiza sus primeros trabajos como actriz en televisión y en teatro aunque no es hasta 1977 cuando debuta en la gran pantalla bajo las órdenes del afamado director Woody Allen en el filme ‘Annie Hall’', NULL);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2211, 'Michael', 'Biehn', 'Connell', 'M', '1920-10-09', '1956-07-31', NULL, 'Anniston, Alabama, U.S.', 'Michael Connell Biehn is an American actor, primarily known for his roles in science fiction films directed by James Cameron; as Sgt. Kyle Reese in The Terminator (1984), Cpl. Dwayne Hicks in Aliens (1986), and Lt. Coffey in The Abyss (1989). His other films include The Fan (1981)', NULL);

--Banda sonora
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (8888, 'James', 'Roy', 'Horner', 'M', '1954-10-26', '1978-08-14', NULL, NULL, NULL, NULL);

--Vestuario
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (9999, 'Emma', 'Porteous', 'Porteous', 'F', '1970-11-15', '1986-02-12', 'Emmits', NULL, NULL, NULL);

--------------------------------------------------
-- Relacionadas al audiovisual "Nacido para matar"

--Director y Guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2665, 'Robert', 'Wise', 'Earl ', 'M', '1915-11-03', '1934-05-22', NULL, NULL, NULL, NULL);

--guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (4044, 'Eve', 'Greene', 'Dopmos', 'F', '1890-01-01', '1906-04-21', NULL, NULL, NULL, NULL);

--Actores principales
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (3333, 'Lawrence', 'James', 'Tierney', 'M', '1917-09-17', '1943-11-04', NULL, 'Brooklyn, New York City, U.S.', 'Lawrence James Tierney (15 de marzo de 1919 - 26 de febrero de 2002) fue un actor de cine y televisión estadounidense mejor conocido por sus numerosas representaciones cinematográficas de mafiosos y tipos duros en una carrera que abarcó más de 50 años. Sus papeles reflejaron sus frecuentes roces con la ley. [1] En 2005, el crítico de cine David Kehr de The New York Times describió al "descomunal Tierney" como "no tanto un actor como una fuerza aterradora de la naturaleza"', NULL);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (7211, 'Claire', 'Trevor', 'Wemlinger', 'F', '1911-06-06', '1929-07-31', 'Felans', 'New York City, U.S.', 'actriz estadounidense. Apareció en 65 largometrajes entre 1933 y 1982, [2] ganando el Premio de la Academia a la Mejor Actriz de Reparto por su papel en Key Largo (1948), y recibió nominaciones por sus papeles en The High and the Mighty (1954) y Dead End . (1937). Trevor recibió la mejor facturación, por delante de John Wayne , por Stagecoach (1939)', NULL);

--Banda sonora
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2525, 'Elisha', 'Vanslyck', 'Cook', 'M', '1909-04-04', '1926-08-14', 'Jr.', NULL, NULL, NULL);

--Vestuario
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2225, 'Azzedine', 'Alaïa', 'Baserj', 'M', '1968-03-24', '1980-02-12', NULL, NULL, NULL, NULL);

--------------------------------------------------
-- Relacionadas al audiovisual "Duro de matar"

--Director y Guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (5655, 'John', 'Campbell', 'McTiernan', 'M', '1970-11-12', '1986-01-31', 'Junior', NULL, NULL, NULL);

--guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (1597, 'Jeb', 'Stuart', 'Little', 'M', '1971-07-10', '1988-04-21', 'Rock', NULL, NULL, NULL);

--Actores principales
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (3548, 'James', 'Saburo', 'Shigeta', 'M', '1910-03-17', '1929-04-17', NULL, 'Honolulu, Oahu, Territory of Hawaii', 'James Saburo Shigeta (japonés :繁田 三郎) (17 de junio de 1929). Actor estadounidense de ascendencia japonesa. Se destacó por sus papeles en The Crimson Kimono (1959), Walk Like a Dragon (1960), Flower Drum Song (1961), Bridge to the Sun (1961), Die Hard (1988) y Mulan (1998). En 1960, ganó el Globo de Oro a la Revelación Más Prometedora - Masculino , junto con otros tres actores.', NULL);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (9632, 'Grand', 'Bush', 'Lee', 'M', '1945-09-12', '1976-07-31', NULL, 'Los Angeles, California, U.S.', 'Grand Lee Bush (nacido el 24 de diciembre de 1955) es un actor estadounidense de teatro, televisión y grandes películas.', NULL);

--Banda sonora
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (74511, 'Michael', 'Kamen', 'Arnold', 'M', '1949-04-08', '1967-04-14', 'Jr.', NULL, NULL, NULL);

--Encargado de Sonido
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2015, 'Kevin', 'Cleary', 'Faraday', 'M', '1938-04-11', '1967-12-24', NULL, NULL, NULL, NULL);

--------------------------------------------------
-- Relacionadas al audiovisual "Los nombramientos de Dennis Jennings"

--Director y Guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2065, 'Steven', 'Alexander', 'Wright', 'M', '1939-02-09', '1955-04-15', 'Gerald', NULL, NULL, NULL);

--guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (4004, 'Grends', 'Stuart', 'Big', 'M', '1961-05-02', '1980-04-21', 'Bird', NULL, NULL, NULL);

--------------------------------------------------
-- Relacionadas al audiovisual "Work Experience"

--Director y Guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (21065, 'Steven', 'Alexander', 'Wright', 'M', '1933-03-30', '1955-04-15', 'Gerald', NULL, NULL, NULL);

--guionista
INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia, fecha_defuncion)
	VALUES (2045, 'Grends', 'Stuart', 'Big', 'M', '1968-11-14', '1980-04-21', 'Bird', NULL, NULL, NULL);

---- MAS PERSONAS 


INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (9885, 'Vanya', 'Schruur', 'Collumbell', 'M', '1958-05-23', '1979-05-23', 'Dallis', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (7263, 'Damien', 'De-Ville', 'Bog', 'M', '1938-08-14', '1966-03-26', null, null, null);

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
	VALUES (5321, 'Carce', 'Clausen', 'McLachlan', 'M', '1937-02-26', '1974-01-02', 'Claudio', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (7594, 'Lusa', 'Benne', 'Chadd', 'F', '1949-07-17', '1975-03-02', null, 'Michigan', 'Hamamatsu University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6309, 'Say', 'MacGaughie', 'Stillwell', 'M', '1929-05-26', '1970-04-17', 'Cletus', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (8059, 'Caren', 'Levy', 'Christofor', 'F', '1925-11-07', '1978-07-28', null, 'California', 'University of Great Falls. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');


INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4830, 'Nicolle', 'McGrayle', 'Romanin', 'F', '1953-07-10', '1978-09-10', 'Fara', 'California', 'Mayo Graduate School. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (3902, 'Trudie', 'Scotting', 'Patkin', 'F', '1927-07-30', '1982-08-02', 'Aime', 'Virginia', 'Université de Toulouse. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (10833, 'Melony', 'Ricciardelli', 'Rhydderch', 'F', '1944-07-22', '1964-09-16', 'Crystie', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (3396, 'Suzi', 'Cuell', 'Suart', 'F', '1947-06-28', '1970-10-15', 'Galina', 'Missouri', 'Universidad de Quintana Roo. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6537, 'Nata', 'McQuillen', 'Venney', 'F', '1922-07-11', '1970-05-04', 'Melony', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (11020, 'Yvon', 'Hartegan', 'Roelofs', 'M', '1933-08-20', '1964-12-31', 'Burty', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (7911, 'Harrie', 'Tudge', 'Orcas', 'F', '1920-12-30', '1966-02-17', null, null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6496, 'Bea', 'Domingues', 'Tytherton', 'F', '1947-09-03', '1978-09-17', 'Jinny', 'Missouri', 'National Taipei University of Technology. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (10786, 'Artemus', 'Pedrol', 'Monaghan', 'M', '1957-12-29', '1982-12-03', 'Ezri', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (11043, 'Eddy', 'Cron', 'Mc-Kerley', 'M', '1936-05-28', '1969-09-19', 'Rockie', 'Illinois', 'Ecole Supérieure d''Ingénieurs et de Techniciens pour l''Agriculture. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6939, 'Gabriela', 'Brookson', 'Cundict', 'F', '1940-05-24', '1964-09-29', 'Libbie', 'Oklahoma', 'Universidad Ciencias Comerciales. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (8623, 'Theresa', 'Wilsher', 'Melross', 'F', '1925-08-21', '1981-12-26', null, 'Illinois', 'Berklee College of Music. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6472, 'Ertha', 'Readshall', 'Boorne', 'F', '1934-06-11', '1961-10-03', 'Lise', 'Florida', 'Samar State University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5976, 'Dedra', 'Wall', 'Duligall', 'F', '1945-05-06', '1977-03-30', null, null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6858, 'Barbabas', 'Bonny', 'Northeast', 'M', '1932-08-29', '1973-11-01', null, 'Kansas', 'Stenden University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6725, 'Shaw', 'Levens', 'Woodford', 'M', '1955-01-19', '1966-01-25', 'Bond', 'Nevada', 'East Kazakstan State Technical University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4060, 'Zorana', 'Cawker', 'Vannuchi', 'F', '1937-08-06', '1966-06-04', 'Selestina', 'California', 'Universitas Islam Sultan Agung. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (10220, 'Keven', 'Rummer', 'Firman', 'M', '1953-12-14', '1980-06-07', 'Ely', 'Indiana', 'National University of Samoa. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (9975, 'Ernesta', 'Crichley', 'Danilenko', 'F', '1950-10-23', '1979-03-27', null, 'Indiana', 'Dar Al-Uloom Colleges. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (7373, 'Welch', 'Bortoluzzi', 'Jillings', 'M', '1932-06-12', '1971-10-24', 'Con', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6278, 'Bernadene', 'Gange', 'Tolotti', 'F', '1954-07-20', '1975-05-14', 'Layne', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6207, 'Kyle', 'Bottinelli', 'Hulles', 'M', '1932-07-24', '1981-05-12', 'Nolly', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (3805, 'Lydon', 'Janecki', 'Goor', 'M', '1953-12-28', '1982-08-12', null, 'Texas', 'Heythrop College, University of London. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (2577, 'Raimund', 'Machent', 'Sidebotham', 'M', '1928-09-23', '1976-05-06', 'Batholomew', 'Texas', 'Australian Maritime College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (8818, 'Billy', 'Kahane', 'Skough', 'F', '1945-12-02', '1983-02-21', 'Sephira', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (10893, 'Ainsley', 'Calabry', 'Siman', 'F', '1929-05-17', '1971-07-05', 'Marin', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (7735, 'Priscella', 'Ayton', 'Simonetti', 'F', '1931-05-28', '1964-04-08', null, null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4132, 'Ricard', 'Izaks', 'Grinaway', 'M', '1951-10-24', '1966-03-27', 'Jeddy', 'California', 'Kuala Lumpur Infrastructure University College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4582, 'Teddi', 'Gaitone', 'Leyland', 'F', '1923-02-27', '1983-05-18', 'Mignonne', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (10368, 'Filbert', 'Rampley', 'Verrick', 'M', '1929-03-06', '1966-11-01', null, 'South Carolina', 'Comrat State University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5782, 'Nariko', 'Kingzeth', 'Mulroy', 'F', '1956-02-01', '1971-12-06', 'Karyl', 'Connecticut', 'National Law School of India University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (2747, 'Abigale', 'Perdue', 'Warde', 'F', '1949-12-27', '1977-05-20', null, 'Ohio', 'University of Chicago. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4982, 'Adriana', 'Wolstenholme', 'Orvis', 'F', '1950-06-06', '1972-04-09', null, 'Texas', 'Changchun Teachers College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (3430, 'Shea', 'Francklyn', 'Henzley', 'F', '1947-10-03', '1983-05-02', 'Annalee', 'District of Columbia', 'Douglas College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (3238, 'Walker', 'Steanyng', 'Geeritz', 'M', '1951-03-22', '1973-05-24', 'Gabriello', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6248, 'Aidan', 'Killgus', 'Rushmare', 'F', '1931-08-28', '1974-03-27', null, 'Wisconsin', 'University of Southern Indiana. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (9733, 'Mata', 'Managh', 'Clawson', 'M', '1940-07-12', '1968-09-11', 'Sergeant', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5505, 'Suzie', 'Beardshall', 'Bergstrand', 'F', '1946-03-26', '1963-02-07', null, 'Florida', 'Universidad Odontológica Dominicana. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (9442, 'Brodie', 'Kitchinham', 'Skyrm', 'M', '1939-04-08', '1962-02-25', null, null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (8713, 'Lorant', 'Oager', 'Camili', 'M', '1957-08-04', '1975-11-19', 'Yankee', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5184, 'Shelagh', 'Fateley', 'Dillistone', 'F', '1957-12-23', '1979-08-09', 'Tedra', 'California', 'Universidad Argentina "John F. Kennedy". Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (10191, 'Tully', 'Give', 'Mac Geaney', 'M', '1952-12-21', '1964-08-06', 'Cale', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (7193, 'Ivar', 'Baumert', 'Kynge', 'M', '1945-11-21', '1972-06-30', 'Addy', 'Alaska', 'Technical University of Cracow. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6250, 'Nico', 'Mengue', 'Slessar', 'M', '1954-06-29', '1976-10-16', 'Eric', 'Missouri', 'University of Hawaii - Hilo. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (8320, 'Frazier', 'Hulatt', 'Lowless', 'M', '1921-03-16', '1975-06-12', 'Neil', 'Kansas', 'Kirchliche Hochschule Bethel. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5192, 'Zorina', 'Faithfull', 'Mansour', 'F', '1952-04-26', '1977-10-26', 'Genia', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5165, 'Carleton', 'Karpfen', 'Gentry', 'M', '1920-07-24', '1978-09-03', null, 'Iowa', 'Royal College of Music, University of London. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4037, 'Janifer', 'Kenton', 'Sheryn', 'F', '1958-09-27', '1964-03-07', 'Christiane', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4872, 'Cob', 'Cunnane', 'Kimpton', 'M', '1937-11-19', '1963-04-17', 'Wernher', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (7317, 'Bruce', 'Jenkins', 'Gatteridge', 'M', '1920-11-16', '1982-11-28', null, 'California', 'Pennsylvania State University at Harrisburg - The Capital College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (8837, 'Carmine', 'Prest', 'Tschirschky', 'F', '1923-10-05', '1970-09-15', 'Katey', 'Virginia', 'Université Mouloud Mammeri de Tizi Ouzou. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5195, 'Avery', 'Kermott', 'Margetson', 'M', '1937-10-24', '1979-10-31', 'Carr', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (8890, 'Alano', 'Edgeler', 'Presshaugh', 'M', '1928-01-03', '1976-10-08', null, 'Texas', 'Central Philippine University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (8989, 'Tedi', 'McKendry', 'Chalk', 'F', '1955-07-10', '1970-10-16', 'Adoree', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (3903, 'Korey', 'MacCartan', 'Pearne', 'M', '1952-03-29', '1974-03-30', null, 'Virginia', 'Azerbaijan National Conservatorie. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4716, 'Keriann', 'Berridge', 'Edeson', 'F', '1923-08-10', '1982-09-17', null, 'New York', 'Taipei Physical Education College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6941, 'Paul', 'Windress', 'Molineaux', 'M', '1939-08-25', '1974-09-23', 'Harmon', 'California', 'Glenville State College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (8955, 'Hazel', 'Camplin', 'Mellows', 'M', '1958-05-31', '1983-05-14', 'Laurent', 'Missouri', 'University of Brescia. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6522, 'Lesya', 'Petrichat', 'Mortel', 'F', '1928-04-22', '1962-03-26', 'Marci', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5336, 'Cornelle', 'Winny', 'Granger', 'F', '1936-08-10', '1967-08-17', 'Meriel', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5780, 'Jae', 'Ransley', 'Scolding', 'M', '1932-01-08', '1969-03-15', 'Mick', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4794, 'Inger', 'Skae', 'Meysham', 'F', '1931-05-13', '1980-06-24', null, 'California', 'Dr. YS Parmar University of Horticulture and Forestry. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4315, 'Sidnee', 'Plaide', 'Kohring', 'M', '1932-06-01', '1966-04-12', null, null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (3167, 'Birdie', 'Petrushkevich', 'Van de Velde', 'F', '1932-03-27', '1968-03-14', null, 'Texas', 'Jilin Agricultural University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4482, 'Giselle', 'Drinkall', 'Wildman', 'F', '1954-03-13', '1964-05-11', 'Letizia', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (9271, 'Ab', 'German', 'Capitano', 'M', '1954-12-11', '1977-09-20', 'Randolf', 'Pennsylvania', 'Hubert Kairuki Memorial University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5310, 'Janet', 'Hayes', 'Clarae', 'F', '1959-11-20', '1966-08-03', 'Tabatha', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (2699, 'Daisey', 'Upshall', 'Kynder', 'F', '1957-07-18', '1978-04-07', 'Perl', 'New York', 'Vilnius Academy of Arts. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6842, 'Trisha', 'Loraine', 'Oag', 'F', '1946-05-31', '1973-07-29', 'Michaella', 'Connecticut', 'Tsuda College. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (7501, 'Evelin', 'Hubbuck', 'Enos', 'M', '1955-09-28', '1978-09-02', 'Randall', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (2667, 'Ginger', 'McGonnell', 'Craigheid', 'F', '1938-04-07', '1979-08-05', 'Evangelina', 'Massachusetts', 'Hafencity Universität Hamburg. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (6676, 'Maury', 'Gallafant', 'Ianelli', 'M', '1942-09-14', '1961-03-22', null, null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (11004, 'Cordi', 'Soal', 'Mantrip', 'F', '1929-01-16', '1972-07-03', 'Tybi', 'Rhode Island', 'Kyoto Institute of Technology. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (3587, 'Bron', 'Tripet', 'Arpin', 'M', '1921-07-18', '1982-05-16', 'Powell', 'California', 'Brandenburgische Technische Universität Cottbus. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5294, 'Trstram', 'Imloch', 'Yakubov', 'M', '1928-04-09', '1965-05-13', 'Alfons', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (8125, 'Forrest', 'Pilger', 'Avramovsky', 'M', '1927-03-26', '1979-10-02', 'Porter', 'Tennessee', 'Kent State University - Trumbull. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4414, 'Kristy', 'Fish', 'De Matteis', 'F', '1929-03-29', '1973-10-29', 'Helsa', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4126, 'Manfred', 'Churchlow', 'Kydd', 'M', '1934-01-17', '1967-03-06', 'Waiter', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4461, 'Mada', 'Iddiens', 'Lowle', 'F', '1959-08-19', '1969-03-25', 'Ami', 'Pennsylvania', 'Matej Bel University in Banská Bystrica. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4725, 'Sonni', 'Havill', 'Shatford', 'F', '1937-10-30', '1976-12-27', 'Dre', 'Virginia', 'Technological University (Dawei). Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5363, 'Neilla', 'Blazejewski', 'Pipkin', 'F', '1951-02-18', '1975-04-03', 'Merrielle', 'New York', 'Niigata University of International and Information Studies. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (7846, 'Kylen', 'Chadwyck', 'Belch', 'F', '1936-04-02', '1963-05-11', 'Shela', 'Indiana', 'Qingdao University of Science and Technology. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (2638, 'Clarey', 'Dartan', 'Mardlin', 'F', '1925-02-25', '1980-05-12', 'Winne', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4011, 'Brnaby', 'Boij', 'Pickavance', 'M', '1920-01-27', '1980-04-14', 'Constantino', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (5923, 'Madlin', 'Boerder', 'Puttergill', 'F', '1922-12-21', '1982-02-26', 'Novelia', 'Alaska', 'National Academy of Fine Arts. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (4804, 'Marijo', 'Delhanty', 'Horsefield', 'F', '1944-06-16', '1962-12-17', 'Melba', 'Michigan', 'Willamette University. Su carrera actoral ha sido una de las más importantes en la historia de Hollywood y Wollywood. Una amplia gama de audiovisuales cuentan con sus excelentes actuaciones');

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (10921, 'Torrance', 'Danielsson', 'Randalston', 'M', '1945-06-01', '1977-03-20', 'Ric', null, null);

INSERT INTO public.persona(
	doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) 
	VALUES (8078, 'Lynnelle', 'Zold', 'Benettini', 'F', '1954-03-07', '1978-02-26', 'Sonja', null, null);

INSERT INTO public.persona(
    doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (3511, 'Kassey', 'Kennelly', 'Crossman', 'F', '1954-04-19', '1975-04-12', null, null, null);

INSERT INTO public.persona(
    doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5261, 'Rori', 'Jepensen', 'Sawyer', 'F', '1933-06-18', '1967-06-25', null, null, null);

INSERT INTO public.persona(
    doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4635, 'Hilton', 'Griffey', 'Pursglove', 'M', '1942-04-27', '1981-08-31', null, null, null);

INSERT INTO public.persona(
    doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (9275, 'Anatol', 'Janoschek', 'Eary', 'M', '1934-02-08', '1965-12-06', 'Timoteo', null, null);

INSERT INTO public.persona(
    doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (1890, 'Chen', 'Bazoche', 'Karolyi', 'M', '1954-08-27', '1978-08-16', null, null, null);


INSERT INTO public.persona(
    doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4240, 'Jemima', 'Shutt', 'Tong', 'F', '1937-01-29', '1976-03-02', null, null, null);

INSERT INTO public.persona(
    doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (10955, 'Erl', 'Saddleton', 'Scedall', 'M', '1927-02-24', '1972-11-06', 'Dallis', null, null);

INSERT INTO public.persona(
    doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (9822, 'Willamina', 'Norcliff', 'McKinless', 'F', '1931-11-09', '1964-01-21', 'Zaria', null, null);

INSERT INTO public.persona(
    doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (9594, 'Ermin', 'Leveritt', 'Aleksankin', 'M', '1925-01-28', '1979-03-22', 'Duncan', null, null);

INSERT INTO public.persona(
    doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5185, 'Analise', 'De Vaux', 'Crufts', 'F', '1928-05-05', '1969-02-12', 'Cathleen', null, null);

INSERT INTO public.persona(
    doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (3170, 'Sarajane', 'Durdle', 'Presland', 'F', '1923-06-03', '1967-02-01', null, null, null);

INSERT INTO public.persona(
    doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5853, 'Jethro', 'McCullouch', 'Gemmell', 'M', '1933-04-20', '1963-02-07', 'Eward', null, null);

INSERT INTO public.persona(
    doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (5642, 'Paquito', 'Bampfield', 'Bohling', 'M', '1930-01-11', '1971-04-23', null, null, null);

INSERT INTO public.persona(
    doc_identidad, primer_nom, primer_ape, segundo_ape, sexo, fecha_nac, fecha_ini_carrera, segundo_nom, a_lugar_nac, a_biografia) values (4082, 'Harold', 'Bemwell', 'Brine', 'M', '1954-12-12', '1982-06-14', null, null, null);

-------------- AUDIOVISUALES 1984 --------------

	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va, fotos,clas_audiovisual, total_nomi, total_postu, total_ganador, pais)
	VALUES (1,'Regreso al futuro', 'Back to the Future', 'Marty McFly (Michael J. Fox), un joven estudiante de Hill Valley High, es amigo de un excéntrico científico (Christopher Lloyd), que ha inventado una máquina sorprendente. Su objetivo es únicamente asistir a la primera prueba del invento, una máquina del tiempo con la sorprendente forma de un coche "DeLorean", pero son sorprendidos por unos terroristas árabes y es Marty quien se traslada la año 1955. En esa dimensión, conoce a una joven pareja, Lorraine Baines y George McFly, que, en el futuro, serán sus padres. La situación se complica cuando es su propia madre quien se enamora de él.', '1984-07-03', 116, '{"Universal Pictures"}', 'A', 1984, '{"Comedia","Ciencia Ficción"}','https://es.web.img3.acsta.net/pictures/14/03/11/10/30/351336.jpg','largometraje', 0, 0, 0, '{"Estados Unidos"}');

	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va, fotos,clas_audiovisual, total_nomi, total_postu, total_ganador, pais)
	VALUES (2,'Aliens, el regreso', 'Aliens', 'Después de flotar en el espacio durante 57 años, un equipo de rescate del espacio profundo encuentra el transbordador de la teniente Ripley (Sigourney Weaver). Al llegar a LV-426, los marines encuentran solo a un sobreviviente, una niña de nueve años llamada Newt (Carrie Henn). Pero incluso estos marines curtidos en la batalla con todo el armamento más moderno no son rival para los cientos de alienígenas que han invadido la colonia.', '1984-07-18', 137, '{"20th Century Fox"}', 'A', 1984, '{"Terror","Acción"}','https://es.web.img2.acsta.net/c_310_420/medias/nmedia/18/72/74/01/20076545.jpg','largometraje', 0, 0, 0, '{"Estados Unidos"}');

	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va, fotos,clas_audiovisual, total_nomi, total_postu, total_ganador, pais)
	VALUES (3,'Nacido para matar', 'Full Metal Jacket', 'Después de flotar en el espacio durante 57 años, un equipo de rescate del espacio profundo encuentra el transbordador de la teniente Ripley (Sigourney Weaver). Al llegar a LV-426, los marines encuentran solo a un sobreviviente, una niña de nueve años llamada Newt (Carrie Henn). Pero incluso estos marines curtidos en la batalla con todo el armamento más moderno no son rival para los cientos de alienígenas que han invadido la colonia.', '1984-06-01', 116, '{"Warner Bros"}', 'C', 1983, '{"Drama","Bélico"}','https://pics.filmaffinity.com/Nacido_para_matar-264101246-large.jpg','largometraje', 0, 0, 0, '{"Estados Unidos"}');

	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va, fotos,clas_audiovisual, total_nomi, total_postu, total_ganador, pais)
	VALUES (4,'Caracortada', 'Scarface', 'Después de obtener una tarjeta verde a cambio de asesinar a un funcionario del gobierno cubano, Tony Montana (Al Pacino) reclama el tráfico de drogas en Miami. Asesinando brutalmente a cualquiera que se interponga en su camino, Tony finalmente se convierte en el capo de la droga más grande del estado, controlando casi toda la cocaína que llega a Miami. Pero el aumento de la presión de la policía, las guerras con los cárteles de la droga colombianos y su propia paranoia alimentada por las drogas sirven para alimentar las llamas de su eventual caída.', '1984-12-09', 170, '{"Universal Pictures"}', 'C', 1983, '{"Drama","Crimen", "Bélico"}','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp6Py6zIThAfLViyfCFHT-yfMZ7gFY0imj8WBddOUQfZzAWDYh','largometraje', 0, 0, 0, '{"Estados Unidos"}');


	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va, fotos,clas_audiovisual, total_nomi, total_postu, total_ganador, pais)
	VALUES (7,'Anna & Bella', 'Anna & Bella', 'Anna & Bella es un cortometraje de animación holandés de 1984de los Países Bajos', '1984-11-10', 41 , '{"Cilia van Dijk"}', 'AA', 1984, '{"Familia"}','https://pics.filmaffinity.com/Anna_y_Bella_C-985633249-mmed.jpg','cortometraje', 0, 0, 0, '{"Estados Unidos"}');
	
	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va, fotos,clas_audiovisual, total_nomi, total_postu, total_ganador, pais)
	VALUES (8,'Rays Male Heterosexual Dance Hall', 'Rays Male Heterosexual Dance Hall', 'Es un cortometraje de comedia estadounidense de 1987dirigido por Bryan Gordon', '1984-11-15', 44 , '{"Chanticleer Films", "Discovery Program"}', 'AA', 1983, '{"Comedia"}','https://pics.filmaffinity.com/Ray_s_Male_Heterosexual_Dance_Hall_S_C-809613519-mmed.jpg','cortometraje', 0, 0, 0, '{"Estados Unidos"}');




	-------------- DOCUMENTALES  1984 --------------

	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va, fotos,clas_audiovisual, total_nomi, total_postu, total_ganador, pais)
	VALUES (11,'Los tiempos de Harvey Milk', 'The Times of Harvey Milk', 'El documental presenta la carrera política de Harvey Milk, que fue el primer concejal de distrito abiertamente gay de San Francisco (California). El documental se centra principalmente en su vida desde su llegada a San Francisco y su elección como concejal del "Distrito 5" de dicha ciudad (en el cual se encuentra "El Castro", famoso barrio gay de la ciudad), su asesinato en el propio Ayuntamiento del que era concejal, hasta el juicio de Dan White y sus repercusiones', '1984-01-01', 90, '{"New Yorker Films
", "Netflix"}', 'A', 1983, '{"Política"}','https://beersandpolitics.com/wp-content/uploads/2019/01/LostiemposdeHarveyMilk.jpg','documental', 0, 0, 0, '{"Estados Unidos"}');

	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va, fotos,clas_audiovisual, total_nomi, total_postu, total_ganador, pais)
	VALUES (12,'Arcoiris roto', 'Broken Rainbow', 'La película trata sobre la historia de los nativos americanos Navajo, centrándose en la reubicación impuesta por el gobierno de miles de Black Mesa en Arizona después de la Ley de Asentamiento de Tierras Navajo-Hopi de 1974. Según la película, los navajos fueron reubicados para ayudar a la especulación minera en un proceso que comenzó en 1964.', '1984-11-01', 70, '{"Earthworks Films"}', 'B', 1983, '{"Cultura"}','https://www.lavanguardia.com/peliculas-series/images/movie/poster/1985/5/w1280/jP4IVY3cR4g9cIC49cZlnD8FKMc.jpg','documental', 0, 0, 0, '{"Estados Unidos"}');


	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va, fotos,clas_audiovisual, total_nomi, total_postu, total_ganador, pais)
	VALUES (13,'Women – for America, for the World', 'Women – for America, for the World', 'Es un cortometraje documental estadounidense de 1986 dirigido por Vivienne Verdon-Roe sobre mujeres activistas antinucleares', '1984-10-11', 40, '{"TBS"}', 'B', 1983, '{"Cultura"}','https://sdi4.chrislands.com/sdi/978/07/85/8/9780785824909.jpg','documental', 0, 0, 0, '{"Estados Unidos"}');

	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va, fotos,clas_audiovisual, total_nomi, total_postu, total_ganador, pais)
	VALUES (14,'El festín de Babette', 'Babettes gæstebud', 'A diferencia del cuento de Blixen en el que el ágape2​ es una mera pincelada en el argumento, la película dedica un tercio de su metraje a uno de los menús cinematográficos más suculentos de la historia. Para Babette, nada es imposible, y se hará traer vinos, champanes, carnes, pescados, caviar, quesos, frutas de su añorada Francia. En las manos de Babette, esos productos se transformarán en un placer para los sentidos.', '1984-08-10', 40, '{"Nordisk Film"}', 'A', 1983, '{"Cultura"}','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbkxS2eS-BafH51uSWC6BAYSXS1W1oeTG300Aa_64IN_bnMAhi','documental', 0, 0, 0, '{"Estados Unidos"}');




	-- AUDIOVISUALES DE 1985

	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va, fotos,clas_audiovisual, total_nomi, total_postu, total_ganador, pais)
	VALUES (5,'Duro de matar', 'Die Hard', 'Die Hard sigue al oficial fuera de servicio del Departamento de Policía de Nueva York John McClane (Bruce Willis) mientras se enfrenta a un grupo de criminales altamente organizados liderados por Hans Gruber (Alan Rickman), que realizan un atraco en un rascacielos de Los Ángeles bajo el pretexto de un ataque terrorista utilizando a rehenes, incluyendo a la esposa de McClane, Holly Gennaro (Bonnie Bedelia), para mantener a raya a la policía', '1988-07-20', 131, '{"20th Century Fox"}', 'C', 1987, '{"Accion"}','https://static.wikia.nocookie.net/doblaje/images/f/f2/Durodematar.jpg/revision/latest?cb=20210525004313&path-prefix=es','largometraje', 0, 0, 0, '{"Estados Unidos"}');

	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va, fotos,clas_audiovisual, total_nomi, total_postu, total_ganador, pais)
	VALUES (6,'La sociedad de los poetas muertos', 'Dead Poets Society', 'Narra el encuentro de un profesor de literatura con un grupo de alumnos durante 1959 en la Welton Academy (Vermont), institución señera y prestigiosa.', '1989-05-20', 128 , '{"Buena Vista Pictures Distribution"}', 'A', 1987, '{"Drama"}','https://drive.google.com/drive/folders/','largometraje', 0, 0, 0, '{"Estados Unidos"}');

-------------- CORTOMETRAJES --------------
	
	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va, fotos,clas_audiovisual, total_nomi, total_postu, total_ganador, pais)
	VALUES (9,'Los nombramientos de Dennis Jennings', 'The Appointments of Dennis Jennings', 'The Appointments of Dennis Jennings es un cortometraje de comedia estadounidense de 1988, protagonizado, coescrito y coproducido por Steven Wright', '1988-09-07', 41 , '{"HBO"}', 'A', 1987, '{"Comedia"}','https://pics.filmaffinity.com/The_Appointments_of_Dennis_Jennings-313589620-msmall.jpg','cortometraje', 0, 0, 0, '{"Estados Unidos"}');

	INSERT INTO public.audiovisual(
	 id_audiovi, titulo_espanol, titulo_original, sinopsis, fecha_estreno_cine, duracion_min, distribucion_va, censura, ano_realizacion, genero_va, fotos,clas_audiovisual, total_nomi, total_postu, total_ganador, pais)
	VALUES (10,'Work Experience', 'Work Experience', 'Is a 1989 British short comedy film directed by James Hendrie and starring Lenny Henry and Kathy Burke', '1989-09-07', 51 , '{"Channel Four Films"}', 'A', 1988, '{"Comedia"}','https://pics.filmaffinity.com/work_experience_s-370263560-msmall.jpg','cortometraje', 0, 0, 0, '{"Estados Unidos"}');
	
-- ROL PEL PERS
INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (3, 1, 12545, NULL);
	
INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 1, 12545, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 2, 12545, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 1, 7886, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 1, 7826, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 1, 9525, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (7, 1, 1525, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (7, 1, 7025, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (6, 1, 9522, NULL);

INSERT INTO public.rol_pel_pers (
    id_rol, id_audiovi, doc_identidad) 
    VALUES (11, 1, 7547);

INSERT INTO public.rol_pel_pers (
    id_rol, id_audiovi, doc_identidad) 
    VALUES (11, 1, 7135);	

INSERT INTO public.rol_pel_pers (
    id_rol, id_audiovi, doc_identidad) 
    VALUES (10, 1, 4011);

INSERT INTO public.rol_pel_pers (
    id_rol, id_audiovi, doc_identidad) 
    VALUES (10, 1, 8591);

INSERT INTO public.rol_pel_pers (
    id_rol, id_audiovi, doc_identidad) 
    VALUES (6, 1, 4872);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 2, 1665, NULL);
	
INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (3, 2, 1665, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 2, 4444, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 2, 1122, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 2, 2211, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (7, 2, 8888, 'Verano Azul');

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (9, 2, 9999, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 3, 2665, NULL);
	
INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (3, 3, 2665, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 3, 4044, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 3, 3333, NULL);    

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 1, 7211, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (8, 1, 2525, 'La cancion mas linda del planeta');

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (8, 3, 2525, 'Bebesita');

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (9, 3, 2225, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 5, 5655, NULL);
	
INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (3, 5, 5655, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 5, 1597, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 5, 3548, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (4, 1, 3548, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (1, 5, 9632, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (8, 5, 74511, 'Love in Paradise');

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (7, 5, 2015, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (5, 1, 2015, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (5, 5, 2015, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 9, 2065, NULL);
	
INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (3, 9, 2065, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 9, 4004, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (3, 1, 4004, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 10, 21065, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (10, 10, 21065, NULL);
	
INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (3, 10, 21065, NULL);

INSERT INTO public.rol_pel_pers(
	id_rol, id_audiovi, doc_identidad, cancion_titulo)
	VALUES (2, 10, 2045, NULL);

---- MAS ROLES PEL PERS

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 9, 7135);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (11, 9, 3430);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 7, 2638);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (7, 5, 6309);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 9, 6207);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (4, 11, 6250);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 7, 4794);

INSERT INTO public.rol_pel_pers (id_rol, id_audiovi, doc_identidad) VALUES (6, 1, 4794);

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




-- INI MIEMBRO

-- 'Robert', 'Zemeckis'
    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1980-05-05', 'no', 12545, NULL);

-- 'Michael', 'Fox' 
    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1979-11-09', 'no', 7826, NULL);

-- 'James', 'Cameron'
    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1959-10-15', 'no', 1665, '1990-11-05');

-- 'Susan', 'Weaver' MIEMBRO VITALICIO
    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1969-12-05', 'si', 1122, '1989-09-15');

-- 'Robert', 'Wise'
    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1939-01-03', 'no', 2665, NULL);

-- 'Claire', 'Trevor'
    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1931-05-28', 'no', 7211, NULL);

-- 'Michael', 'Kamen' MIEMBRO VITALICIO
    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1967-06-06', 'si', 74511, NULL);

--  'Pamela', 'Eilerson'
    INSERT INTO public.miembro(
        fecha_inicio, vitalicio, doc_identidad, fecha_fin)
        VALUES ('1981-01-02', 'no', 9522, NULL);

-- FIN MIEMBRO

INSERT INTO miembro(
    fecha_inicio, vitalicio, doc_identidad, fecha_fin)
    VALUES ('1982-07-28', 'no', 6309, null);
INSERT INTO miembro(
    fecha_inicio, vitalicio, doc_identidad, fecha_fin)
    VALUES ('1980-02-05', 'no', 5780, null);
INSERT INTO miembro(
    fecha_inicio, vitalicio, doc_identidad, fecha_fin)
    VALUES ('1982-07-16', 'no', 6858, null);

INSERT INTO miembro(
    fecha_inicio, vitalicio, doc_identidad, fecha_fin)
    VALUES ('1980-11-11', 'no', 6941, null);

INSERT INTO miembro(
    fecha_inicio, vitalicio, doc_identidad, fecha_fin)
    VALUES ('1983-12-05', 'no', 5310, '1984-02-05');

INSERT INTO miembro(
    fecha_inicio, vitalicio, doc_identidad, fecha_fin)
    VALUES ('1983-04-21', 'no', 6248, '1985-03-27');

INSERT INTO miembro(
    fecha_inicio, vitalicio, doc_identidad, fecha_fin)
    VALUES ('1980-02-04', 'no', 6522, null);

INSERT INTO miembro(
    fecha_inicio, vitalicio, doc_identidad, fecha_fin)
    VALUES ('1982-09-06', 'no', 8623, null);
    
INSERT INTO miembro(
    fecha_inicio, vitalicio, doc_identidad, fecha_fin)
    VALUES ('1984-06-01', 'no', 2225, null);

-- INI GALA
    INSERT INTO public.gala(
        ano, fecha, lugar, numero_edicion, doc_identidad, descripcion)
        VALUES (1985, '1985-04-20', 'Dorothy Chandler Pavilion de Los Ángeles', 57, 202020, 'Los 57º Premios de la Academia se entregaron el 25 de marzo de 1985 en el Dorothy Chandler Pavilion de Los Ángeles. Jack Lemmon presidió las ceremonias');

    INSERT INTO public.gala(
        ano, fecha, lugar, numero_edicion, doc_identidad, descripcion)
        VALUES (1986, '1986-04-20', 'MGM', 51, 2015, 'Vendrán a cantar Nacho y Chino el tema Mi niña fea');

    INSERT INTO public.gala(
        ano, fecha, lugar, numero_edicion, doc_identidad, descripcion)
        VALUES (1987, '1987-04-20', 'Traki del recreo', 52, 3548, 'Viene a tocar coldplay');
-- FIN GALA

-------------- CATEGORIAS --------------

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (1, 'Largometrajes', '1', 'director', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (2, 'Dirección', '1', 'director', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (3, 'Actuación', '1', 'actor', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (4, 'Escritura', '1', 'guionista', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (5, 'Fotografía', '1', 'fotografo', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (6, 'Dirección de arte', '1', 'artista', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (7, 'Sonido', '1', 'ing.sonido', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (8, 'Cortometrajes', '1', 'director', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (9, 'Música', '1', 'musico', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (10, 'Edición', '1', 'tecnico', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (11, 'Efectos visuales', '1', 'tecnico', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (12, 'Documentales', '1', 'director', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (13, 'Vestuario', '1', 'estilista', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (14, 'Películas extranjeras', '1', 'director', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (15, 'Sonido', '1', 'director', NULL, NULL);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (16, 'Maquillaje', '1', 'artista', NULL, NULL);


-------------- PREMIOS --------------

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (17, 'Mejor película', '2', NULL, 1, array[
        ('1928-01-01', '1931-01-01','Producción Sobresaliente', 5)::hist_premio,
        ('1932-01-01', '1932-12-31','Película mas Sobresaliente', 8)::hist_premio,
        ('1933-01-01', '1943-12-31','Mejor película', 5)::hist_premio,
        ('1944-01-01', NULL,'Mejor película', 10)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (18, 'Mejor director', '2', NULL, 2, array[
        ('1928-01-01', '1931-01-01','Director sobresaliente', 5)::hist_premio,
        ('1931-01-01', NULL,'Mejor director', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (19, 'Mejor actor', '2', NULL, 3, array[
        ('1928-01-01', NULL,'Mejor actor', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (20, 'Mejor actriz', '2', NULL, 3, array[
        ('1928-01-01', NULL,'Mejor actriz', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (21, 'Mejor guión adaptado', '2', NULL, 4, array[
        ('1928-01-01', NULL,'Mejor guión adaptado', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (22, 'Mejor fotografía', '2', NULL, 5, array[
        ('1928-01-01', NULL,'Mejor fotografía', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (23, 'Mejor dirección de arte ', '2', NULL, 6, array[
        ('1928-01-01', NULL,'Mejor dirección de arte ', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (24, 'Mejor sonido', '2', NULL, 7, array[
        ('1930-01-01', NULL,'Mejor sonido', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (25, 'Mejor cortometraje de ficción', '2', NULL, 8, array[
        ('1931-01-01', NULL,'Mejor cortometraje de ficción', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (26, 'Mejor banda sonora', '2', NULL, 9, array[
        ('1934-01-01', NULL,'Mejor banda sonora', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (27, 'Mejor canción original', '2', NULL, 9, array[
        ('1934-01-01', NULL,'Mejor canción original', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (28, 'Mejor montaje', '2', NULL, 10, array[
        ('1935-01-01', NULL,'Mejor montaje', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (29, 'Mejor actor de reparto', '2', NULL, 3, array[
        ('1936-01-01', NULL,'Mejor actor de reparto', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (30, 'Mejor actriz de reparto', '2', NULL, 3, array[
        ('1936-01-01', NULL,'Mejor actriz de reparto', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (31, 'Mejores efectos visuales', '2', NULL, 11, array[
        ('1939-01-01', NULL,'Mejores efectos visuales', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (32, 'Mejor guión original', '2', NULL, 4, array[
        ('1940-01-01', NULL,'Mejor guión original', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (33, 'Mejor documental corto', '2', NULL, 12, array[
        ('1941-01-01', NULL,'Mejor documental corto', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (34, 'Mejor documental largo', '2', NULL, 12, array[
        ('1943-01-01', NULL,'Mejor documental largo', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (36, 'Mejor diseño de vestuario', '2', NULL, 13, array[
        ('1948-01-01', NULL,'Mejor diseño de vestuario', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (37, 'Mejor película de habla no inglesa', '2', NULL, 14, array[
        ('1956-01-01', NULL,'Mejor película de habla no inglesa', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (38, 'Mejor edición de sonido', '2', NULL, 15, array[
        ('1963-01-01', NULL,'Mejor edición de sonido', 5)::hist_premio
    ]);

INSERT INTO public.categoria(id_categoria, nombre, nivel, rama, id_categoria2, hist_premio_nt)
	VALUES (39, 'Mejor maquillaje', '2', NULL, 16, array[
        ('1981-01-01', NULL,'Mejor maquillaje', 5)::hist_premio
    ]);


-------------- ORGANIZACIONES --------------

INSERT INTO public.organizacion(
	id_organizacion, nombre, mision, donacion_nt)
	VALUES ( 1,'African Film Festival', 'African Film Festival, Inc. es una organización cultural sin ánimo de lucro estadounidense que presenta un festival de cine anual y programas comunitarios durante todo el año', array[('1987', 35, 1257.12)::donacion]);

INSERT INTO public.organizacion(
	id_organizacion, nombre, mision, donacion_nt)
	VALUES ( 2,'The Film Foundation', 'The Film Foundation es una organización estadounidense sin ánimo de lucro dedicada a la conservación de películas y a la exhibición de cine clásico y restaurado. Fue fundada por el director Martin Scorsese y otros destacados cineastas', array[('1985', 10, 157.12)::donacion, ('1987', 12, 1505.10)::donacion]);

INSERT INTO public.organizacion(
	id_organizacion, nombre, mision, donacion_nt)
	VALUES ( 3,'Martin Luther King Jr. Center', 'The Martin Luther King Jr. Center for Nonviolent Social Change, comúnmente conocido como The King Center, es una organización no gubernamental sin fines de lucro en Atlanta, Estados Unidos.', array[('1985', 10, 15007.27)::donacion, ('1986', 24, 10505.10)::donacion]);

INSERT INTO public.organizacion(
	id_organizacion, nombre, mision, donacion_nt)
	VALUES ( 4,'Children’s Defense Fund', 'Fundado en 1973 por Marian Wright Edelman, Childrens Defense Fund se enfoca en los derechos de los niños. Fue inspirado por el trabajo de organizaciones de derechos civiles. A través de programas y defensa, CDF trabaja para poner fin a los ciclos de pobreza, proteger a los niños del abuso y asegurarse de que todos los niños reciban una educación. Esta ONG tiene su sede en Washington, DC con oficinas en todo el país.', array[('1986', 21, 500007.27)::donacion, ('1987', 10, 150505.10)::donacion]);

--('postulacion', 'nominados', 'ganadores', 'gala')

------------- AÑO 1985 -------------
INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1985, 'nominados', 'Los nominados no fueron los mejores, los actores y productores hicieron un complot para dejar fuera mi pelicula', 'si');

INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1985, 'nominados', 'Estoy decepcionado de los nominados', 'si');

INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1985, 'gala', 'la gala fue un fiasco, no debieron invitar a Jackie chan', 'si');

INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1985, 'gala', 'El público se sintió agradecido con los premios otorgados, Dios bendiga a América', 'no');

INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1985, 'postulados', 'este año hubo una gran competitividad en todos los audiovisuales. Amo el cine', 'no');

------------- AÑO 1986 -------------

INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1986, 'nominados', 'Estoy feliz de poder disfrutar estos premios con mi familia. Los nominados han sido los mejores en décadas. Excelente', 'no');

INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1986, 'gala', 'Gracias a Dios que no invitaron a Jackie Chan, este año le doy 100 puntos a la gala', 'no');

INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1986, 'ganadores', 'Nada que reprocharle a los ganadores. Simplemente fueron los mejores', 'no');

INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1986, 'postulados', 'Dejaron por fuera la película de los 7 enanitos. Era era la mejor de este año. Muy mal', 'si');

INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1986, 'postulados', 'No postularon a la película de mi compadre. Que mal análisis', 'si');


------------- AÑO 1987 -------------

INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1987, 'nominados', 'Que viva el cine. Cada vezs más orgulloso de ser cineasta. Excelentes nominaciones', 'no');

INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1987, 'gala', 'Creo que esta será la mejor gala por siempre', 'no');

INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1987, 'ganadores', 'El premio a la mejor película no fue correcta. ¡Estafa!', 'si');

INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1987, 'postulados', 'Muy mal, esos postulados no eran correctos. Solo por hacer ganar a la película de la casa', 'no');

INSERT INTO public.critica(
	ano, tipo, textocritica, negativa)
	VALUES (1987, 'postulados', 'No veo ningun inconveniente. Vamos bien', 'no');