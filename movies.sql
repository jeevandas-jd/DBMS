create database MoviesDB;
use MoviesDB;
create table Actor(act_id int,act_name varchar(255),act_gender char);
create table Director(dir_id int,dir_name varchar(100),dir_phone int);
alter table Director

add primary key(dir_id);


create table Movies(movie_id int,title varchar(50),mov_year int,mov_lang char, dir_id int);
alter table Movies

add constraints fk_dir_id foreign key (dir_id) references Director(dir_id);

alter table Movies

add primary key (movie_id);

create table Movie_cast(movie_id int ,act_id int,rolee varchar(255));	
ALTER TABLE Movie_cast
ADD CONSTRAINT fk_act_id 
FOREIGN KEY (act_id) REFERENCES Actor(act_id);
ALTER TABLE Movie_cast
ADD CONSTRAINT fk_movie_id 
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id);
INSERT INTO Director (dir_id, dir_name, dir_phone) VALUES
(1, 'Hitch Cock', '1234567890'),
(2, 'Steven Spielberg', '0987654321'),
(3, 'Christopher Nolan', '1122334455');
INSERT INTO Movies (movie_id, title, mov_year, mov_lang, dir_id) VALUES
(1, 'Psycho', 1960, 'EN', 1),
(2, 'Vertigo', 1958, 'EN', 1),
(3, 'Jurassic Park', 1993, 'EN', 2),
(4, 'Inception', 2010, 'EN', 3),
(5, 'E.T. the Extra-Terrestrial', 1982, 'EN', 2),
(6, 'Dunkirk', 2017, 'EN', 3);
INSERT INTO Actor (act_id, act_name) VALUES
(1, 'Anthony Perkins'),
(2, 'James Stewart'),
(3, 'Sam Neill'),
(4, 'Leonardo DiCaprio'),
(5, 'Elliott Gould'),
(6, 'Harry Styles');
INSERT INTO Movie_cast (movie_id, act_id, rolee) VALUES
(1, 1, 'Norman Bates'),        -- Psycho
(2, 2, 'Scottie Ferguson'),    -- Vertigo
(3, 3, 'Dr. Alan Grant'),      -- Jurassic Park
(4, 4, 'Dom Cobb'),            -- Inception
(5, 5, 'Elliott'),             -- E.T.
(6, 6, 'Tommy'),               -- Dunkirk
(3, 1, 'Cameo'),               -- Anthony Perkins in Jurassic Park
(4, 3, 'Cameo');               -- Sam Neill in Inception
	

