insert into 
	musician (name_musician) 
values
	('Sum 41'),
	('The Offspring'),
	('МакSим'),
	('Bon Jovi'),
	('Lindsey Stirling'),
	('Simple Plan'),
	('Ария'),
	('Юта');


insert into 
	genre (name_genre)
values
	('Punk Rock'),
	('Pop'),
	('Rock'),
	('Alternative Rock'),
	('Metal Rock'),
	('Dubstep');

insert into 
	musician_genre (musician_id, genre_id)  
values
	(1, 1),
	(1, 3),
	(2, 1),
	(2, 3),
	(3, 2),
	(4, 3),
	(5, 6),
	(6, 4),
	(6, 3),
	(7, 5),
	(7, 3),
	(8, 2);


insert into 
	album (name_album, year_release)
values
	('Chuck', 2004),
	('Americana', 1998),
	('Мой Рай', 2007),
	('Cross Road', 1994),
	('Brave Enouth', 2018),
	('Simple Plan', 2008),
	('Ночь Короче Дня', 1997),
	('Кстати', 2014),
	('Artemis', 2020);


insert into 
	musician_album (musician_id, album_id) 
values
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(5, 9);


insert into 
	collection (name_collection ,year_release)
values
	('The Best Sum 41', 2008),
	('Greatest Hits The Offspring', 2005),
	('Лучшее МакSим', 2010),
	('Greatest Hits Bon Jovi', 2010),
	('The Best Lindsey Stirling', 2018),
	('The Best Simple Plan', 2001),
	('Легенда Русского Рока', 1997),
	('Лучшие Песни Юта', 2017);


insert into 
	song (name_song, duration, album_id)
values 
	('Pieces', 181, 1),
	('Open Your Eyes', 164, 1),
	('The Kids Aren''t Alright', 179, 2),
	('Want You Bad', 202, 2),
	('Не Отдам', 187, 3),
	('Лучшая Ночь', 230, 3),
	('It''s My Life', 223, 4),
	('Livin'' On A Prayer', 250, 4),
	('The Arena', 232, 5),
	('Take My Hand', 231, 6),
	('Holding On', 303, 6),
	('Ангельская Пыль', 360, 7),
	('Возьми Моё Сердце', 246, 7),
	('Хмель И Солод', 229, 8),
	('Любимый Мой', 154, 8),
	('Artemis', 233, 9);


insert into 
	song_collection (song_id, collection_id)  
values
	(1, 1),
	(2, 1),
	(3, 2),
	(4, 2),
	(5, 3),
	(6, 3),
	(7, 4),
	(8, 4),
	(9, 5),
	(10, 6),
	(11, 6),
	(12, 7),
	(13, 7),
	(14, 8),
	(15, 8),
	(16, null)
