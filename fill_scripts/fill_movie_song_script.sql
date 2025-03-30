-- Связь Песня-Фильм

--('Megamind', 2010)
INSERT INTO Movie_Song (song_id, movie_id)
VALUES
((SELECT song_id FROM Song WHERE title = 'Back in Black'), 
(SELECT movie_id FROM Movie WHERE title = 'Megamind')),
((SELECT song_id FROM Song WHERE title = 'Crazy Train'),
(SELECT movie_id FROM Movie WHERE title = 'Megamind')),
((SELECT song_id FROM Song WHERE title = 'Mr. Blue Sky'), 
(SELECT movie_id FROM Movie WHERE title = 'Megamind'));

--('Goodfellas', 1990)
INSERT INTO Movie_Song (song_id, movie_id)
VALUES
((SELECT song_id FROM Song WHERE title = 'Good Times Bad Times'), 
(SELECT movie_id FROM Movie WHERE title = 'Goodfellas'));

--('Wayne`s World', 2009)
INSERT INTO Movie_Song (song_id, movie_id)
VALUES
((SELECT song_id FROM Song WHERE title = 'Bohemian Rhapsody'), 
(SELECT movie_id FROM Movie WHERE title = 'Wayne`s World'));

--('Highlander', 1986)
INSERT INTO Movie_Song (song_id, movie_id)
values
((SELECT song_id FROM Song WHERE title = 'Who Wants to Live Forever'), 
(SELECT movie_id FROM Movie WHERE title = 'Highlander')),
((SELECT song_id FROM Song WHERE title = 'Gimme the Prize'), 
(SELECT movie_id FROM Movie WHERE title = 'Highlander')),
((SELECT song_id FROM Song WHERE title = 'Princes of the Universe'), 
(SELECT movie_id FROM Movie WHERE title = 'Highlander')),
((SELECT song_id FROM Song WHERE title = 'A Kind of Magic'), 
(SELECT movie_id FROM Movie WHERE title = 'Highlander')),
((SELECT song_id FROM Song WHERE title = 'One Year of Love'), 
(SELECT movie_id FROM Movie WHERE title = 'Highlander'));

--('Back to the Future', 1985)
INSERT INTO Movie_Song (song_id, movie_id)
values
((SELECT song_id FROM Song WHERE title = 'The Power of Love'), 
(SELECT movie_id FROM Movie WHERE title = 'Back to the Future')),
((SELECT song_id FROM Song WHERE title = 'Back in Time'), 
(SELECT movie_id FROM Movie WHERE title = 'Back to the Future'));

--('Iron Man', 2008)
INSERT INTO Movie_Song (song_id, movie_id)
values
((SELECT song_id FROM Song WHERE title = 'Back in Black'), 
(SELECT movie_id FROM Movie WHERE title = 'Iron Man'));

--('Pulp Fiction', 1994)
INSERT INTO Movie_Song (song_id, movie_id)
values
((SELECT song_id FROM Song WHERE title = 'Come as You Are'), 
(SELECT movie_id FROM Movie WHERE title = 'Pulp Fiction'));

--('Harry Potter and the Deathly Hallows – Part 1', 2010)
INSERT INTO Movie_Song (song_id, movie_id)
values
((SELECT song_id FROM Song WHERE title = 'O Children'), 
(SELECT movie_id FROM Movie WHERE title = 'Harry Potter and the Deathly Hallows – Part 1'));

--('Guardians of the Galaxy', 2014)
INSERT INTO Movie_Song (song_id, movie_id)
values
((SELECT song_id FROM Song WHERE title = 'Hooked on a Feeling'), 
(SELECT movie_id FROM Movie WHERE title = 'Guardians of the Galaxy')),
((SELECT song_id FROM Song WHERE title = 'Moonage Daydream'), 
(SELECT movie_id FROM Movie WHERE title = 'Guardians of the Galaxy'));

--('Eternal Sunshine of the Spotless Mind', 2004)
INSERT INTO Movie_Song (song_id, movie_id)
values
((SELECT song_id FROM Song WHERE title = 'Everybody`s Got to Learn Sometime' and duration = '00:05:55'), 
(SELECT movie_id FROM Movie WHERE title = 'Eternal Sunshine of the Spotless Mind')),
((SELECT song_id FROM Song WHERE title = 'Mr. Blue Sky'), 
(SELECT movie_id FROM Movie WHERE title = 'Eternal Sunshine of the Spotless Mind'));

--('The Gentlemen', 2019)
INSERT INTO Movie_Song (song_id, movie_id)
values
((SELECT song_id FROM Song WHERE title = 'Cumberland Gap'), 
(SELECT movie_id FROM Movie WHERE title = 'The Gentlemen'));

--('You`ve Got Mail', 1998)
INSERT INTO Movie_Song (song_id, movie_id)
values
((SELECT song_id FROM Song WHERE title = 'Dreams'), 
(SELECT movie_id FROM Movie WHERE title = 'You`ve Got Mail')),
((SELECT song_id FROM Song WHERE title = 'Remember'), 
(SELECT movie_id FROM Movie WHERE title = 'You`ve Got Mail'));

--('Skyfall', 2012)
INSERT INTO Movie_Song (song_id, movie_id)
values
((SELECT song_id FROM Song WHERE title = 'Skyfall'), 
(SELECT movie_id FROM Movie WHERE title = 'Skyfall'));

--('Armageddon', 1998)
INSERT INTO Movie_Song (song_id, movie_id)
values
((SELECT song_id FROM Song WHERE title = 'I Don`t Want to Miss a Thing'), 
(SELECT movie_id FROM Movie WHERE title = 'Armageddon'));

--('Fantasic Mr. Fox', 2009)
INSERT INTO Movie_Song (song_id, movie_id)
values
((SELECT song_id FROM Song WHERE title = 'Heroes and Villains'), 
(SELECT movie_id FROM Movie WHERE title = 'Fantasic Mr. Fox'));
