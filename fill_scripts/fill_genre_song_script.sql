-- Queen
INSERT INTO Genre_Song (song_id, genre_id)
SELECT s.song_id, g.genre_id
FROM Song s, Genre g
WHERE s.artist_id = (SELECT artist_id FROM Artist WHERE name = 'Queen')
AND (
    -- Прогрессивный рок для сложных композиций
    (s.title IN ('Bohemian Rhapsody', 'The Prophet''s Song', 'Innuendo', 'The Show Must Go On') AND g.name = 'Progressive Rock')
    OR
    -- Глэм-рок для театральных песен
    (s.title IN ('Killer Queen', 'Good Old-Fashioned Lover Boy', 'Don''t Stop Me Now') AND g.name = 'Glam Rock')
    OR
    -- Хард-рок для тяжелых песен
    (s.title IN ('We Will Rock You', 'Tie Your Mother Down', 'Stone Cold Crazy', 'Hammer to Fall') AND g.name = 'Hard Rock')
    OR
    -- Поп-рок для коммерческих хитов
    (s.title IN ('You''re My Best Friend', 'Somebody to Love', 'Crazy Little Thing Called Love', 'Radio Ga Ga', 'I Want to Break Free') AND g.name = 'Pop Rock')
);

-- Вставляем связи для Pink Floyd
INSERT INTO Genre_Song (song_id, genre_id)
SELECT s.song_id, g.genre_id
FROM Song s, Genre g
WHERE s.artist_id = (SELECT artist_id FROM Artist WHERE name = 'Pink Floyd')
AND (
    (g.name = 'Progressive Rock')
    OR
    (s.title IN ('Speak to Me', 'Interstellar Overdrive') AND g.name = 'Psychedelic Rock')
);

-- Вставляем связи для Led Zeppelin
INSERT INTO Genre_Song (song_id, genre_id)
SELECT s.song_id, g.genre_id
FROM Song s, Genre g
WHERE s.artist_id = (SELECT artist_id FROM Artist WHERE name = 'Led Zeppelin')
AND (
    (s.title IN ('Whole Lotta Love', 'Rock and Roll') AND g.name = 'Hard Rock')
    OR
    (s.title IN ('Immigrant Song', 'Kashmir') AND g.name = 'Heavy Metal')
);

-- Вставляем связи для Nirvana
INSERT INTO Genre_Song (song_id, genre_id)
SELECT s.song_id, g.genre_id
FROM Song s, Genre g
WHERE s.artist_id = (SELECT artist_id FROM Artist WHERE name = 'Nirvana')
AND g.name = 'Grunge';

-- Вставляем связи для других исполнителей
INSERT INTO Genre_Song (song_id, genre_id)
SELECT s.song_id, g.genre_id
FROM Song s, Genre g
WHERE 
    (s.title = 'Paranoid' AND g.name = 'Heavy Metal')
    OR
    (s.title = 'Back in Black' AND g.name = 'Hard Rock')
    OR
    (s.title = 'Mr. Blue Sky' AND g.name = 'Pop Rock')
    OR
    (s.title = 'Dreams' AND g.name = 'Alternative Rock')
    OR
    (s.title = 'Skyfall' AND g.name = 'Pop')
    OR
    (s.title = 'Hooked on a Feeling' AND g.name = 'Pop');