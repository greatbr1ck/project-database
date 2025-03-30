-- Пользователи
CREATE TABLE App_user (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE
);

-- Исполнители
CREATE TABLE Artist (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

-- Альбомы
CREATE TABLE Album (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    year INT NOT NULL
);

-- Чарты
CREATE TABLE Chart (
    chart_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Фильмы
CREATE TABLE Movie (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    year INT
);

-- Жанры
CREATE TABLE Genre (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- Песни
CREATE TABLE Song (
    song_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    duration TIME NOT NULL,  
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- Плейлисты
CREATE TABLE Playlist (
    playlist_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    user_id INT,
    created_at DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES App_user(user_id)
);

CREATE TYPE song_version AS ENUM ('original', 'remix', 'live', 'cover');

-- Связь Песня-Альбом
CREATE TABLE Album_Song (
    song_id INT,
    album_id INT,
   	inclusion_type song_version NOT NULL DEFAULT 'original',   
    PRIMARY KEY (song_id, album_id),
    FOREIGN KEY (song_id) REFERENCES Song(song_id),
    FOREIGN KEY (album_id) REFERENCES Album(album_id)
);

-- Связь Песня-Плейлист
CREATE TABLE Playlist_Song (
    playlist_id INT,
    song_id INT,
    song_order INT NOT NULL, --порядок песни в плейлисте
    PRIMARY KEY (playlist_id, song_id),
    FOREIGN KEY (playlist_id) REFERENCES Playlist(playlist_id),
    FOREIGN KEY (song_id) REFERENCES Song(song_id)
);

-- Связь Чарт-Песня
CREATE TABLE Chart_Song (
    chart_id INT,
    song_id INT,
    position INT NOT NULL,
    PRIMARY KEY (chart_id, song_id),
    FOREIGN KEY (chart_id) REFERENCES Chart(chart_id),
    FOREIGN KEY (song_id) REFERENCES Song(song_id)
);

-- Связь Песня-Фильм
CREATE TABLE Movie_Song (
    song_id INT,
    movie_id INT,
    PRIMARY KEY (song_id, movie_id),
    FOREIGN KEY (song_id) REFERENCES Song(song_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)
);

-- Связь Песня-Жанр
CREATE TABLE Genre_Song (
    song_id INT,
    genre_id INT,
    PRIMARY KEY (song_id, genre_id),
    FOREIGN KEY (song_id) REFERENCES Song(song_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

CREATE TYPE action_type AS ENUM ('create', 'update', 'delete', 'add_song', 'remove_song');

--Таблица истории изменений плейлистов
--SCD4. Подходит нам, так как плейлисты часто меняются
CREATE TABLE Playlist_History (
    history_id SERIAL PRIMARY KEY,
    playlist_id INT NOT NULL,
    user_id INT NOT NULL,
    action action_type NOT NULL,
    changed_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (playlist_id) REFERENCES Playlist(playlist_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES App_user(user_id)
);