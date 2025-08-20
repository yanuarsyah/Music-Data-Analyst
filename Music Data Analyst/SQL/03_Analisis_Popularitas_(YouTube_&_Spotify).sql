-- a. 10 lagu paling banyak di-stream Spotify
SELECT Track, Artist, Stream
FROM music_data WHERE Stream IS NOT NULL
ORDER BY Stream 
DESC LIMIT 10;

-- b. 10 lagu paling banyak views di YouTube
SELECT Title, Channel, Views
FROM music_data WHERE Views IS NOT NULL
ORDER BY Views 
DESC LIMIT 10;

-- c. 10 lagu dengan jumlah Like tertinggi di YouTube
SELECT Title, Channel, Likes
FROM music_data WHERE Likes IS NOT NULL
ORDER BY Likes DESC
LIMIT 10;

-- d. 10 lagu dengan jumlah Komentar terbanyak di YouTube
SELECT Title, Channel, Comments
FROM music_data WHERE Comments IS NOT NULL
ORDER BY Comments DESC
LIMIT 10;




