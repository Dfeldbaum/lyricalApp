create table accounts (
	id int not null auto_increment,
	email varchar (255) not null,
	username varchar (255) not null,
	password_hash varchar(75) not null,
	password_salt varchar(75) not null,
	primary key(id)
);	

create table lyrics (
	id int not null auto_increment,
	artist varchar (255) not null,
	song varchar (255) not null,
	lyrics longtext not null,
	year varchar (255) not null,
	genre varchar(255) not null,
	image longtext not null,
	user_id int not null references accounts(id),
	primary key(id)
);	


create table userlyrics (
	id int not null auto_increment,
	user_id int not null references accounts(id),
	song_id int not null references lyrics(id),
	primary key(id)
);	




insert into lyrics (song, artist, lyrics, year, genre, image, user_id) values('All We Know', 'The Chainsmokers', 'Fighting Flames Fighting Flames Fighting Flames Fighting Flames', '2016', 'Indie', 'imageeeeeeeee', '1');
insert into lyrics (song, artist, lyrics, year, genre, image, user_id) values('Closer', 'The Chainsmokers', 'Closer, Closer, Closer, Closer, Closer', '2016', 'Indie', 'imageeeeeeeee', '1');
insert into lyrics (song, artist, lyrics, year, genre, image, user_id) values('Roses', 'The Chainsmokers', 'Closer, Closer, Closer, Closer, Closer', '2016', 'Indie', '<iframe src="https://embed.spotify.com/?uri=spotify:track:5JunxkcjfCYcY7xJ29tLai" frameborder="0" allowtransparency="true"></iframe>', '1');

insert into lyrics (song, artist, lyrics, year, genre, image, user_id) values('Houdini', 'The Chainsmokers', 'Closer, Closer, Closer, Closer, Closer', '2016', 'Indie', 'https://embed.spotify.com/?uri=spotify:track:5JunxkcjfCYcY7xJ29tLai', '1');







