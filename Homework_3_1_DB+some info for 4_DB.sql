--Добавляем артистов
INSERT INTO artists(artist_name) VALUES 
	('RHCP'),
	('The Prodigy'),
	('Элджей'),
	('Кис Кис'),
	('ATL'),
	('Noize MC'),
	('Три дня дождя'),
	('Moderat');

--Добавляем жанры
INSERT INTO genres(genre_name) VALUES 
	('Поп-рок'),
	('Рэп'),
	('Альтернативный рок'),
	('Электронная танцевальная'),
	('Электро-фолк');

--Добавляем альбомы
INSERT INTO albums(album_name, album_date) VALUES 
	('Return of the Dream Canteen', 2022),
	('Кривой эфир', 2019),
	('Как перестать беспокоиться и начать жить', 2022),
	('Выход в город', 2021),
	('Sayonara Boy Opal', 2020),
	('No Tourists', 2018),
	('Когда ты откроешь глаза', 2021),
	('MORE D4TA', 2022);

INSERT INTO tracks (track_name, track_legnth, album_id) VALUES
	('Tippa My Tongue', 260, 1),
	('Душегуб', 195, 2),
	('Спинниг', 203, 2),
	('когда я умру', 207, 3),
	('вебкам', 197, 3),
	('Вояджер-1', 214, 4),
	('Трансгуманизм', 173, 4),
	('Платина', 155, 5),
	('Рарный айтем', 127, 5),
	('Give Me a Signal', 241, 6),
	('No Tourists', 258, 6),
	('Вода', 193, 7),
	('В кого ты влюблена', 182, 7),
	('FAST LAND', 220, 8),
	('EASY PREY', 267, 8);
	
INSERT INTO compilation (compilation_name, compilation_date) VALUES
	('Музыка, чтобы погрустить', 2022), --1
	('Тупой рэп', 2022), --2
	('Свежая электроника', 2018), --3
	('Русская новая рок-музыка', 2022), --4
	('Качовый рэп', 2020), --5
	('Любимая', 2017), --6
	('Разное', 2016), --7
	('В машину', 2022); --8
	
INSERT INTO trackscompilation (compilation_id, track_id) VALUES
	(5, 2),
	(5, 3),
	(1, 4),
	(8, 1),
	(4, 5),
	(6, 6),
	(7, 7),
	(2, 8),
	(2, 9),
	(8, 10),
	(3, 11),
	(4, 12),
	(4, 13),
	(3, 14),
	(3, 15);

INSERT INTO artistsalbum (album_id, artists_id) VALUES
	(1, 1),
	(2, 5),
	(3, 4),
	(4, 6),
	(5, 3),
	(6, 2),
	(7, 7),
	(8, 8);

INSERT INTO artistsgenres (artist_id, genre_id) VALUES
	(1, 5),
	(2, 4),
	(3, 2),
	(4, 1),
	(5, 2),
	(6, 3),
	(7, 1),
	(8, 4);

--Добавляем The Prodigy жанр Альтернативный рок
INSERT INTO artistsgenres (artist_id, genre_id) VALUES
	(2, 3);

--Добавляем трэк исполнителя Три дня дождя, который не входит в сборники
INSERT INTO tracks (track_name, track_length, album_id) VALUES
	('Всё из-за тебя', 171, 7);



	
