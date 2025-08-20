-- a. Rata-rata likes per album type
SELECT Album_type, ROUND(AVG(Likes), 0) AS avg_likes
FROM music_data
GROUP BY Album_type
ORDER BY avg_likes DESC;

-- b. Rata-rata Stream berdasarkan Lisensi
SELECT Licensed, ROUND(AVG(Stream)) AS avg_stream
FROM music_data
GROUP BY Licensed;

-- c. Total Views per Album Type
SELECT Album_type, SUM(Views) AS total_views
FROM music_data
GROUP BY Album_type
ORDER BY total_views DESC;


