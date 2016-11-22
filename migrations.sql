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
	album varchar (255) not null,
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




insert into lyrics (song, artist, album, lyrics, year, genre, image, user_id) values('Roses', 'The Chainsmokers', 'Collage - EP', 'Taking it slow, but its not typical
He already knows that my love is fire
His heart was a stone, but then his hands roamed
I turned him to gold and it took him higher

Well, Ill be your daydream, Ill be your favorite things
We could be beautiful
Get drunk on the good life, Ill take you to paradise
Say youll never let me go

Deep in my bones, I can feel you
Take me back to a time only we knew
Hideaway
We could waste the night with an old film
Smoke a little weed on the couch in the back room
Hideaway
Say youll never let me go
Say youll never let me go

Ah, ah, ah
Ah, ah, ah
Ah, ah, ah
Say youll never let me go
Say youll never let me go
Say youll never let me go
Say youll never let me go

Deep in my bones, I can feel you
Take me back to a time only we knew
Hideaway
We could waste the night with an old film
Smoke a little weed on the couch in the back room
Hideaway
Say youll never let me go
Say youll never let me go

Ah, ah, ah
Ah, ah, ah
Ah, ah, ah
Say youll never let me go
Say youll never let me go
Say youll never let me go', '2016', 'Indie', 'imageeeeeeeee', '1');




insert into lyrics (song, artist, album, lyrics, year, genre, image, user_id) values('One Love', 'Bob Marley', 'Exodus', 'One love, one heart
Lets get together and feel all right
Hear the children crying (One love)
Hear the children crying (One heart)
Sayin, "Give thanks and praise to the Lord and I will feel all right
Sayin, "Lets get together and feel all right
Whoa, whoa, whoa, whoa
Let them all pass all their dirty remarks (one love)
There is one question Id really love to ask (one heart)
Is there a place for the hopeless sinner
Who has hurt all mankind just to save his own?
Believe me
One love, one heart
Lets get together and feel all right
As it was in the beginning (one love)
So shall it be in the end (one heart)
Alright, give thanks and praise to the Lord and I will feel all right
Lets get together and feel all right
One more thing
Lets get together to fight this Holy Armageddon (one love)
So when the Man comes there will be no, no doom (one song)
Have pity on those whose chances grow thinner
There aint no hiding place from the Father of Creation
Sayin, one love, one heart
Lets get together and feel all right
Im pleading to mankind (one love)
Oh, Lord (one heart) whoa
Give thanks and praise to the Lord and I will feel all right
Lets get together and feel all right
Give thanks and praise to the Lord and I will feel all right
Lets get together and feel all right', '1975', 'Reggae', 'image', '1');





insert into lyrics (song, artist, lyrics, year, genre, image, user_id) values('Closer', 'The Chainsmokers', 'Closer, Closer, Closer, Closer, Closer', '2016', 'Indie', 'imageeeeeeeee', '1');
insert into lyrics (song, artist, lyrics, year, genre, image, user_id) values('Roses', 'The Chainsmokers', 'Closer, Closer, Closer, Closer, Closer', '2016', 'Indie', '<iframe src="https://embed.spotify.com/?uri=spotify:track:5JunxkcjfCYcY7xJ29tLai" frameborder="0" allowtransparency="true"></iframe>', '1');

insert into lyrics (song, artist, lyrics, year, genre, image, user_id) values('Houdini', 'The Chainsmokers', 'Closer, Closer, Closer, Closer, Closer', '2016', 'Indie', 'https://embed.spotify.com/?uri=spotify:track:5JunxkcjfCYcY7xJ29tLai', '1');







