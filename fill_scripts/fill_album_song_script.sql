-- Для альбомов Queen
INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'A Night at the Opera'
WHERE s.title IN ('Death on Two Legs', 'Lazing on a Sunday Afternoon', 'I''m in Love with My Car', 
                 'You''re My Best Friend', '''39', 'Sweet Lady', 'Seaside Rendezvous', 
                 'The Prophet''s Song', 'Love of My Life', 'Good Company', 
                 'Bohemian Rhapsody', 'God Save the Queen');

INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'A Kind of Magic'
WHERE s.title IN ('One Vision', 'A Kind of Magic', 'One Year of Love', 'Pain Is So Close to Pleasure',
                 'Friends Will Be Friends', 'Who Wants to Live Forever', 'Gimme the Prize',
                 'Don''t Lose Your Head', 'Princes of the Universe');

INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'News of the World'
WHERE s.title IN ('We Will Rock You', 'We Are the Champions', 'Sheer Heart Attack',
                 'All Dead, All Dead', 'Spread Your Wings', 'Fight from the Inside',
                 'Get Down, Make Love', 'Sleeping on the Sidewalk', 'Who Needs You',
                 'It''s Late', 'My Melancholy Blues');

INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'The Game'
WHERE s.title IN ('Play the Game', 'Dragon Attack', 'Another One Bites the Dust',
                 'Need Your Loving Tonight', 'Crazy Little Thing Called Love',
                 'Rock It (Prime Jive)', 'Don''t Try Suicide', 'Sail Away Sweet Sister',
                 'Coming Soon', 'Save Me');

INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'The Works'
WHERE s.title IN ('Radio Ga Ga', 'Tear It Up', 'It''s a Hard Life', 'Man on the Prowl',
                 'Machines (Or ''Back to Humans'')', 'I Want to Break Free',
                 'Keep Passing the Open Windows', 'Hammer to Fall', 'Is This the World We Created...?');

INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'Innuendo'
WHERE s.title IN ('Innuendo', 'I''m Going Slightly Mad', 'Headlong', 'I Can''t Live with You',
                 'Don''t Try So Hard', 'Ride the Wild Wind', 'All God''s People',
                 'These Are the Days of Our Lives', 'Delilah', 'The Hitman', 'Bijou',
                 'The Show Must Go On');

INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'Bohemian Rhapsody'
WHERE s.title IN ('Somebody to Love (Live at Wembley)', 'Fat Bottomed Girls (Live in Paris)',
                 'Keep Yourself Alive (Live at the Rainbow)', 'We Will Rock You (Movie Mix)',
                 'Another One Bites the Dust (Movie Mix)');

-- Для альбомов Pink Floyd
INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'The Wall'
WHERE s.title IN ('In the Flesh?', 'The Thin Ice', 'Another Brick in the Wall, Part 1',
                 'The Happiest Days of Our Lives', 'Another Brick in the Wall, Part 2',
                 'Mother', 'Goodbye Blue Sky', 'Empty Spaces', 'Young Lust',
                 'One of My Turns', 'Don''t Leave Me Now', 'Another Brick in the Wall, Part 3',
                 'Goodbye Cruel World', 'Hey You', 'Is There Anybody Out There?',
                 'Nobody Home', 'Vera', 'Bring the Boys Back Home', 'Comfortably Numb',
                 'The Show Must Go On', 'In the Flesh', 'Run Like Hell', 'Waiting for the Worms',
                 'Stop', 'The Trial', 'Outside the Wall');

INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'Animals'
WHERE s.title IN ('Pigs on the Wing, Part 1', 'Dogs', 'Pigs (Three Different Ones)',
                 'Sheep', 'Pigs on the Wing, Part 2');

INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'The Dark Side of the Moon'
WHERE s.title IN ('Speak to Me', 'Breathe', 'On the Run', 'Time', 'The Great Gig in the Sky',
                 'Money', 'Us and Them', 'Any Colour You Like', 'Brain Damage', 'Eclipse');

INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'The Division Bell'
WHERE s.title IN ('Cluster One', 'What Do You Want from Me', 'Poles Apart', 'Marooned',
                 'A Great Day for Freedom', 'Wearing the Inside Out', 'Take It Back',
                 'Coming Back to Life', 'Keep Talking', 'Lost for Words', 'High Hopes');

-- Для альбомов Led Zeppelin
INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'Physical Graffiti'
WHERE s.title IN ('Custard Pie', 'The Rover', 'In My Time of Dying', 'Houses of the Holy',
                 'Trampled Under Foot', 'Kashmir', 'In the Light', 'Bron-Yr-Aur',
                 'Down by the Seaside', 'Ten Years Gone', 'Night Flight', 'The Wanton Song',
                 'Boogie with Stu', 'Black Country Woman', 'Sick Again');

INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'Led Zeppelin'
WHERE s.title IN ('Good Times Bad Times', 'Babe I''m Gonna Leave You', 'You Shook Me',
                 'Dazed and Confused', 'Your Time Is Gonna Come', 'Black Mountain Side',
                 'Communication Breakdown', 'I Can''t Quit You Baby', 'How Many More Times');

INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'Houses of the Holy'
WHERE s.title IN ('The Song Remains the Same', 'The Rain Song', 'Over the Hills and Far Away',
                 'The Crunge', 'Dancing Days', 'D''yer Mak''er', 'No Quarter', 'The Ocean');

INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'Led Zeppelin III'
WHERE s.title IN ('Immigrant Song', 'Friends', 'Celebration Day', 'Since I''ve Been Loving You',
                 'Out on the Tiles', 'Gallows Pole', 'Tangerine', 'That''s the Way',
                 'Bron-Y-Aur Stomp', 'Hats Off to (Roy) Harper');

-- Для альбома Nirvana
INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'Nevermind'
WHERE s.title IN ('Smells Like Teen Spirit', 'In Bloom', 'Come as You Are', 'Breed',
                 'Lithium', 'Polly', 'Territorial Pissings', 'Drain You', 'Lounge Act',
                 'Stay Away', 'On a Plain', 'Something in the Way', 'Endless, Nameless');

-- Для альбома David Rawlings
INSERT INTO Album_Song (song_id, album_id)
SELECT s.song_id, a.album_id
FROM Song s
JOIN Album a ON a.title = 'Poor David`s Almanack'
WHERE s.title IN ('Midnight Train', 'Money Is the Meat in the Coconut', 'Cumberland Gap',
                 'Airplane', 'Yup', 'Good God a Woman', 'Guitar Man', 'Lindsey Button',
                 'Come on Over My House', 'Put ''Em Up Solid', 'Poor David''s Blues');