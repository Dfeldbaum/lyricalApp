create table accounts (
	id int not null auto_increment,
	full_name varchar (255) not null,
	email varchar (255) not null,
	username varchar (255) not null,
	password_hash varchar(75) not null,
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
	song_id int not null references lyrics(id)
	primary key(id)
);	











