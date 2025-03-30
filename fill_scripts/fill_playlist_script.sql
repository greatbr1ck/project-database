INSERT INTO Playlist (title, user_id, created_at) VALUES
-- Классические рок-плейлисты
('Best of Queen', 2, '2023-02-20'),
('Pink Floyd Experience', 3, '2023-03-10'),
('Led Zeppelin Gold', 1, '2023-04-05'),
('90s Grunge Revolution', 4, '2023-04-05');

INSERT INTO Playlist (title, user_id) VALUES
-- Разножанровые подборки
('Workout Energy', 5),
('Chill Evening Vibes', 2),
('Road Trip Essentials', 3),
('Guitar Heroes Collection', 1),
('Progressive Rock Masters', 4);

INSERT INTO Playlist (title, user_id, created_at) VALUES
-- Тематические плейлисты
('Movie Soundtracks Rock', 5, '2023-11-11'),
('British Invasion', 2, '2023-12-25'),
('Underrated Gems', 3, '2024-01-03'),
('Live Performances', 3, '2025-03-25'),
('Best American', 4, '2024-03-08');


-- заполнение некоторых плейлистов пользователей

-- Best of Queen
INSERT INTO Playlist_Song (playlist_id, song_id, song_order)
SELECT 
    (SELECT playlist_id FROM Playlist WHERE title = 'Best of Queen'),
    song_id,
    ROW_NUMBER() OVER ()
FROM Song
WHERE title IN ('Bohemian Rhapsody', 'We Are the Champions',
                'Another One Bites the Dust', 'Radio Ga Ga', 'I Want to Break Free',
                'Somebody to Love', 'Killer Queen', 'Don''t Stop Me Now', 'The Show Must Go On')
AND artist_id = (SELECT artist_id FROM Artist WHERE name = 'Queen');

-- Pink Floyd Experience (лучшие из Pink Floyd)
INSERT INTO Playlist_Song (playlist_id, song_id, song_order)
SELECT 
    (SELECT playlist_id FROM Playlist WHERE title = 'Pink Floyd Experience'),
    song_id,
    ROW_NUMBER() OVER ()
FROM Song
WHERE title IN ('Comfortably Numb', 'Money', 'Wish You Were Here', 'Another Brick in the Wall, Part 2',
                'Time', 'Us and Them', 'Shine On You Crazy Diamond', 'Hey You', 'Brain Damage',
                'High Hopes')
AND artist_id = (SELECT artist_id FROM Artist WHERE name = 'Pink Floyd');

-- Led Zeppelin Gold (классика Led Zeppelin)
INSERT INTO Playlist_Song (playlist_id, song_id, song_order)
SELECT 
    (SELECT playlist_id FROM Playlist WHERE title = 'Led Zeppelin Gold'),
    song_id,
    ROW_NUMBER() OVER ()
FROM Song
WHERE title IN ('Stairway to Heaven', 'Whole Lotta Love', 'Kashmir', 'Black Dog',
                'Immigrant Song', 'Rock and Roll', 'Since I''ve Been Loving You',
                'Dazed and Confused', 'Ramble On', 'Heartbreaker')
AND artist_id = (SELECT artist_id FROM Artist WHERE name = 'Led Zeppelin');

-- Workout Energy
INSERT INTO Playlist_Song (playlist_id, song_id, song_order)
SELECT 
    (SELECT playlist_id FROM Playlist WHERE title = 'Workout Energy'),
    song_id,
    ROW_NUMBER() OVER ()
FROM Song
WHERE title IN ('We Will Rock You', 'Another One Bites the Dust', 'Back in Black',
                'Immigrant Song', 'Paranoid', 'The Power of Love', 'I Don`t Want to Miss a Thing',
                'Crazy Train');

-- Chill Evening Vibes (расслабляющие треки)
INSERT INTO Playlist_Song (playlist_id, song_id, song_order)
SELECT 
    (SELECT playlist_id FROM Playlist WHERE title = 'Chill Evening Vibes'),
    song_id,
    ROW_NUMBER() OVER ()
FROM Song
WHERE title IN ('Comfortably Numb', 'Wish You Were Here', 'Love of My Life',
                'Time', 'Us and Them', 'Moonage Daydream', 'O Children', 'Mr. Blue Sky',
                'Dreams');

