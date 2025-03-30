-- Заполнение таблицы Chart_Song для песен Queen
-- Bohemian Rhapsody
INSERT INTO Chart_Song (chart_id, song_id, position)
VALUES
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Bohemian Rhapsody'), 1),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'Bohemian Rhapsody'), 9),
((SELECT chart_id FROM Chart WHERE name = 'ARIA Charts'), 
 (SELECT song_id FROM Song WHERE title = 'Bohemian Rhapsody'), 1),
((SELECT chart_id FROM Chart WHERE name = 'Global 200 (Billboard)'), 
 (SELECT song_id FROM Song WHERE title = 'Bohemian Rhapsody'), 5),
((SELECT chart_id FROM Chart WHERE name = 'Spotify Global Top 50'), 
 (SELECT song_id FROM Song WHERE title = 'Bohemian Rhapsody'), 12);

-- We Will Rock You
INSERT INTO Chart_Song (chart_id, song_id, position)
VALUES
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'We Will Rock You'), 7),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'We Will Rock You'), 4),
((SELECT chart_id FROM Chart WHERE name = 'Canadian Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'We Will Rock You'), 3);

INSERT INTO Chart_Song (chart_id, song_id, position)
VALUES
-- We Are the Champions
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'We Are the Champions'), 2),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'We Are the Champions'), 4),
((SELECT chart_id FROM Chart WHERE name = 'ARIA Charts'), 
 (SELECT song_id FROM Song WHERE title = 'We Are the Champions'), 3);

-- Another One Bites the Dust
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Another One Bites the Dust'), 7),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'Another One Bites the Dust'), 1),
((SELECT chart_id FROM Chart WHERE name = 'Offizielle Deutsche Charts'), 
 (SELECT song_id FROM Song WHERE title = 'Another One Bites the Dust'), 6),

 -- Crazy Little Thing Called Love
 INSERT INTO Chart_Song (chart_id, song_id, position)
VALUES
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Crazy Little Thing Called Love'), 2),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'Crazy Little Thing Called Love'), 1),
((SELECT chart_id FROM Chart WHERE name = 'ARIA Charts'), 
 (SELECT song_id FROM Song WHERE title = 'Crazy Little Thing Called Love'), 4);

 -- Radio Ga Ga
INSERT INTO Chart_Song (chart_id, song_id, position)
VALUES
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Radio Ga Ga'), 2),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'Radio Ga Ga'), 16),
((SELECT chart_id FROM Chart WHERE name = 'SNEP Top Singles'), 
 (SELECT song_id FROM Song WHERE title = 'Radio Ga Ga'), 9);

 -- I Want to Break Free
INSERT INTO Chart_Song (chart_id, song_id, position)
VALUES
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'I Want to Break Free'), 3),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'I Want to Break Free'), 45),
((SELECT chart_id FROM Chart WHERE name = 'FIMI'), 
 (SELECT song_id FROM Song WHERE title = 'I Want to Break Free'), 15);

 -- The Show Must Go On
INSERT INTO Chart_Song (chart_id, song_id, position)
VALUES
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
(SELECT song_id FROM Song WHERE title = 'The Show Must Go On' and duration = '00:4:31'), 16,
((SELECT chart_id FROM Chart WHERE name = 'SNEP Top Singles'), 
 (SELECT song_id FROM Song WHERE title = 'The Show Must Go On' and duration = '00:4:31'), 2);

-- Somebody to Love (Live)
INSERT INTO Chart_Song (chart_id, song_id, position)
VALUES
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Somebody to Love (Live at Wembley)'), 15),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'Somebody to Love (Live at Wembley)'), 30);

-- Заполнение для Pink Floyd
INSERT INTO Chart_Song (chart_id, song_id, position)
VALUES
-- Another Brick in the Wall, Part 2
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Another Brick in the Wall, Part 2'), 1),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'Another Brick in the Wall, Part 2'), 1),
((SELECT chart_id FROM Chart WHERE name = 'Offizielle Deutsche Charts'), 
 (SELECT song_id FROM Song WHERE title = 'Another Brick in the Wall, Part 2'), 1);

-- Comfortably Numb
INSERT INTO Chart_Song (chart_id, song_id, position)
VALUES
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Comfortably Numb'), 15),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'Comfortably Numb'), 24);

-- Money
INSERT INTO Chart_Song (chart_id, song_id, position)
VALUES
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Money'), 10),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'Money'), 13);

-- Заполнение для Led Zeppelin
INSERT INTO Chart_Song (chart_id, song_id, position)
VALUES
-- Immigrant Song
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'Immigrant Song'), 16),
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Immigrant Song'), 11),

-- Kashmir
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Kashmir'), 25),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'Kashmir'), 35);

-- Заполнение для Nirvana
INSERT INTO Chart_Song (chart_id, song_id, position)
VALUES
-- Smells Like Teen Spirit
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Smells Like Teen Spirit'), 7),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'Smells Like Teen Spirit'), 6),
((SELECT chart_id FROM Chart WHERE name = 'ARIA Charts'), 
 (SELECT song_id FROM Song WHERE title = 'Smells Like Teen Spirit'), 5),

-- Come as You Are
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Come as You Are'), 9),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'Come as You Are'), 32);

-- Заполнение для других исполнителей
INSERT INTO Chart_Song (chart_id, song_id, position)
VALUES
-- I Don't Want to Miss a Thing (Aerosmith)
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'I Don`t Want to Miss a Thing'), 1),
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'I Don`t Want to Miss a Thing'), 4),

-- Crazy Train (Ozzy Osbourne)
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Crazy Train'), 13),

-- Back in Black (AC/DC)
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Back in Black'), 21),

-- Paranoid (Black Sabbath)
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Paranoid'), 4),

-- Dreams (The Cranberries)
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Dreams'), 27),

-- Skyfall (Adele)
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'Skyfall'), 2),
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'Skyfall'), 8),

-- The Power of Love (Huey Lewis)
((SELECT chart_id FROM Chart WHERE name = 'Billboard Hot 100'), 
 (SELECT song_id FROM Song WHERE title = 'The Power of Love'), 1),
((SELECT chart_id FROM Chart WHERE name = 'UK Singles Chart'), 
 (SELECT song_id FROM Song WHERE title = 'The Power of Love'), 9);