--примеры использования №6..10

--6. Поиск среднего места по чарту для Bohemian Rhapsody, Crazy Little Thing Called Love и We Will Rock You

SELECT 
    s.title,
    c.name AS chart_name,
    cs.position,
    ROUND(AVG(cs.position) OVER (PARTITION BY s.title), 1) AS avg_position
FROM 
    Song s
JOIN 
    Chart_Song cs ON s.song_id = cs.song_id
JOIN 
    Chart c ON cs.chart_id = c.chart_id
WHERE 
    s.title IN ('Bohemian Rhapsody', 'We Will Rock You', 'Crazy Little Thing Called Love')
ORDER BY 
    s.title, cs.position;


--7. Поиск всех песен жанра "прогрессивный рок"
SELECT 
    s.title,
    a.name AS artist,
    s.duration
FROM 
    Song s
JOIN 
    Artist a ON s.artist_id = a.artist_id
JOIN 
    Genre_Song gs ON s.song_id = gs.song_id
JOIN 
    Genre g ON gs.genre_id = g.genre_id
WHERE 
    g.name = 'Progressive Rock'
ORDER BY 
    a.name, s.title;


--8. Поиск всех песен из фильма "You`ve Got Mail"
SELECT 
    s.song_id,
    s.title AS song_title,
    s.duration,
    a.name AS artist_name
FROM 
    Song s
JOIN 
    Artist a ON s.artist_id = a.artist_id
JOIN 
    Movie_Song ms ON s.song_id = ms.song_id
JOIN 
    Movie m ON ms.movie_id = m.movie_id
WHERE 
    m.title = 'You`ve Got Mail'
ORDER BY 
    s.title;


--9. Поиск песни, которая встречается в наибольшем количестве фильмов
WITH song_movie_count AS (
    SELECT 
        s.song_id,
        s.title AS song_title,
        a.name AS artist_name,
        COUNT(ms.movie_id) AS movie_count
    FROM 
        Song s
    JOIN 
        Artist a ON s.artist_id = a.artist_id
    JOIN 
        Movie_Song ms ON s.song_id = ms.song_id
    GROUP BY 
        s.song_id, s.title, a.name
)
SELECT 
    song_title,
    artist_name,
    movie_count
FROM 
    song_movie_count
ORDER BY 
    movie_count DESC
LIMIT 5;  -- Топ-5 песен по количеству фильмов

--10. Поиск песен, названия которых есть у нескольких исполнителей сразу
SELECT 
    s1.title,
    s1.duration,
    s2.duration,
    a1.name AS artist1,
    a2.name AS artist2
FROM 
    Song s1
JOIN 
    Song s2 ON s1.title = s2.title 
    AND s1.song_id < s2.song_id
JOIN 
    Artist a1 ON s1.artist_id = a1.artist_id
JOIN 
    Artist a2 ON s2.artist_id = a2.artist_id
ORDER BY 
    s1.title;