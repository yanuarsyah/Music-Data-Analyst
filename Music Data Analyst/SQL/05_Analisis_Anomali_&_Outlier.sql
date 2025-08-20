-- a. Lagu dengan stream tinggi tapi views kecil
SELECT Track, Stream, Views
FROM music_data
WHERE Stream > 1000000 AND Views < 10000;

-- b. Lagu yang durasinya sangat panjang (>10 menit)
SELECT Track, Duration_ms/60000 AS duration_min, duration_ms 
FROM music_data
WHERE duration_ms > 600000;

-- c. Lagu berdurasi sangat pendek (< 1 menit)
SELECT Track, Artist, ROUND(duration_ms/1000, 2) AS duration_sec, duration_ms
FROM music_data
WHERE duration_ms < 60000
ORDER BY duration_sec ASC;
