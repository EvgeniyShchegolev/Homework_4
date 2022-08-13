-- 1)
select name_genre, count(distinct musician_id) from musician_genre m_g
join genre g on m_g.genre_id = g.id 
group by name_genre;

-- 2)
select count(name_song) from song s 
join album a on s.album_id = a.id 
where year_release = 2019 or year_release = 2020;

-- 3)
select name_album, avg(duration) from song s 
join album a on s.album_id = a.id 
group by name_album;

-- 4)
select name_musician from musician 
where name_musician != (
	select name_musician from musician m 
	join musician_album ma on m.id = ma.musician_id 
	join album a on ma.album_id = a.id
	where year_release = 2020
	);

-- 5)
select name_collection from collection c
join song_collection sc on c.id = sc.collection_id 
join song s on sc.song_id = s.id 
join album a on s.album_id = a.id 
join musician_album ma on a.id = ma.album_id 
join musician m on ma.musician_id = m.id 
where name_musician ilike 'ария'
group by name_collection; 

-- 6)
select name_album from album a 
join musician_album ma on a.id = ma.album_id 
join musician m on ma.musician_id = m.id 
join musician_genre mg on m.id = mg.musician_id 
group by name_album 
having count(genre_id) > 1;

-- 7)
select name_song from song s 
left join song_collection sc on s.id = sc.song_id 
left join collection c on sc.collection_id = c.id
where collection_id is null;

-- 8)
select name_musician from musician m 
join musician_album ma on m.id = ma.musician_id 
join album a on ma.album_id = a.id 
join song s on a.id = s.album_id 
where duration = (select min(duration) from song)
group by name_musician;

-- 9)
select name_album from song s
join album a on s.album_id = a.id 
group by name_album
having count(name_song) = (
	select min(count_s) from song s
	join (
		select album_id, count(name_song) as count_s from song 
		group by album_id
		) ca on ca.album_id = s.album_id 
	);
