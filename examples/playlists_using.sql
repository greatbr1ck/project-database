--примеры использования №1..5
--Пользователь mick_jagger работает с плейлистом 'Legendary Rock Anthems' с поддержкой истории изменений.

--1. создание плейлиста
INSERT INTO Playlist (title, user_id)
select 'Legendary Rock Anthems', user_id from App_user where username = 'mick_jagger';

INSERT INTO Playlist_History (playlist_id, user_id, action, changed_at)
SELECT playlist_id, user_id, 'create', created_at FROM PlayList WHERE title = 'Legendary Rock Anthems' 
and user_id = (select user_id from App_user where username = 'mick_jagger'); 

select * from Playlist_History

--2. добавление песен в плейлист
WITH playlist_info AS (
    SELECT 
        p.playlist_id,
        p.user_id,
        (SELECT song_id FROM Song WHERE title = 'Bohemian Rhapsody' 
         AND artist_id = (SELECT artist_id FROM Artist WHERE name = 'Queen')) AS song_id,
        (SELECT COUNT(*) FROM Playlist_Song 
         WHERE playlist_id = p.playlist_id) AS current_size
    FROM Playlist p
    WHERE p.title = 'Legendary Rock Anthems' 
    and p.user_id = (select user_id from App_user where username = 'mick_jagger')
)
INSERT INTO Playlist_Song (playlist_id, song_id, song_order)
SELECT 
    playlist_id,
    song_id,
    current_size + 1
FROM playlist_info
WHERE song_id IS NOT NULL;

WITH playlist_info AS (
    SELECT 
        p.playlist_id,
        p.user_id,
        (SELECT song_id FROM Song WHERE title = 'Bohemian Rhapsody' 
         AND artist_id = (SELECT artist_id FROM Artist WHERE name = 'Queen')) AS song_id,
        (SELECT COUNT(*) FROM Playlist_Song 
         WHERE playlist_id = p.playlist_id) AS current_size
    FROM Playlist p
    WHERE p.title = 'Legendary Rock Anthems' 
    and p.user_id = (select user_id from App_user where username = 'mick_jagger')
)
INSERT INTO Playlist_History (playlist_id, user_id, action, changed_at)
SELECT 
    playlist_id,
    user_id,
    'add_song',
    CURRENT_TIMESTAMP
FROM playlist_info
WHERE song_id IS NOT NULL;

select * from Playlist_History

--3. удаление песни из плейлиста
WITH playlist_info AS (
    SELECT 
        p.playlist_id,
        p.user_id,
        (SELECT song_id FROM Song WHERE title = 'Bohemian Rhapsody' 
         AND artist_id = (SELECT artist_id FROM Artist WHERE name = 'Queen')) AS song_id,
        (SELECT COUNT(*) FROM Playlist_Song 
         WHERE playlist_id = p.playlist_id) AS current_size
    FROM Playlist p
    WHERE p.title = 'Legendary Rock Anthems' 
    and p.user_id = (select user_id from App_user where username = 'mick_jagger')
)
INSERT INTO Playlist_History (playlist_id, user_id, action, changed_at)
SELECT 
    playlist_id,
    user_id,
    'remove_song',
    CURRENT_TIMESTAMP
FROM playlist_info
WHERE song_id IS NOT NULL;

WITH playlist_info AS (
    SELECT 
        p.playlist_id,
        p.user_id,
        (SELECT song_id FROM Song WHERE title = 'Bohemian Rhapsody' 
         AND artist_id = (SELECT artist_id FROM Artist WHERE name = 'Queen')) AS song_id,
        (SELECT COUNT(*) FROM Playlist_Song 
         WHERE playlist_id = p.playlist_id) AS current_size
    FROM Playlist p
    WHERE p.title = 'Legendary Rock Anthems' 
    and p.user_id = (select user_id from App_user where username = 'mick_jagger')
)
DELETE FROM Playlist_Song
WHERE (playlist_id, song_id) IN (
    SELECT playlist_id, song_id FROM playlist_info
);

select * from Playlist_History

--4. изменение названия плейлиста
WITH old_playlist AS (
    SELECT 
        playlist_id, 
        user_id, 
        title AS old_title
    FROM Playlist 
    WHERE title = 'Legendary Rock Anthems' and
    user_id = (select user_id from App_user where username = 'mick_jagger')
)
INSERT INTO Playlist_History (playlist_id, user_id, action, changed_at)
SELECT 
    playlist_id,
    user_id,
    'update',
    CURRENT_TIMESTAMP
FROM old_playlist;

WITH old_playlist AS (
    SELECT 
        playlist_id, 
        user_id, 
        title AS old_title
    FROM Playlist 
    WHERE title = 'Legendary Rock Anthems' and
    user_id = (select user_id from App_user where username = 'mick_jagger')
)
UPDATE Playlist
SET title = 'Legendary Queen'  -- Новое название
FROM old_playlist
WHERE Playlist.playlist_id = old_playlist.playlist_id;

select * from Playlist_History

--5. удаление плейлиста
INSERT INTO Playlist_History (playlist_id, user_id, action, changed_at)
SELECT 
    p.playlist_id,
    p.user_id,
    'delete',
    CURRENT_TIMESTAMP
FROM Playlist p
WHERE p.title = 'Legendary Queen' and
user_id = (select user_id from App_user where username = 'mick_jagger');

select * from Playlist_History

WITH deleting_playlist AS (
    SELECT 
        playlist_id
    FROM Playlist 
    WHERE title = 'Legendary Queen' and
    user_id = (select user_id from App_user where username = 'mick_jagger')
)
delete from Playlist
where playlist_id = (select playlist_id from deleting_playlist)

select * from Playlist
