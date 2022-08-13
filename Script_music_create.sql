create table if not exists genre (
	id SERIAL primary key,
	name_genre VARCHAR(40) unique not null
);

create table if not exists musician (
	id SERIAL primary key,
	name_musician VARCHAR(80) unique not null
);

create table if not exists musician_genre (
	id SERIAL primary key,
	musician_id INTEGER not null references musician(id),
	genre_id INTEGER not null references genre(id)
);

create table if not exists album (
	id SERIAL primary key,
	name_album VARCHAR(80) unique not null,
	year_release INTEGER not null,
	check (year_release > 1900 and year_release < extract(year from CURRENT_DATE))
);

create table if not exists musician_album (
	id SERIAL primary key,
	musician_id INTEGER not null references musician(id),
	album_id INTEGER not null references album(id)
);

create table if not exists collection (
	id SERIAL primary key,
	name_collection VARCHAR(80) unique not null,
	year_release INTEGER not null,
	check (year_release > 1900 and year_release < extract(year from CURRENT_DATE))
);

create table if not exists song (
	id SERIAL primary key,
	name_song VARCHAR(80) unique not null,
	duration INTEGER not null,
	album_id INTEGER not null references album(id)
);

create table if not exists song_collection (
	id SERIAL primary key,
	song_id INTEGER not null references song(id),
	collection_id INTEGER references collection(id)
);
