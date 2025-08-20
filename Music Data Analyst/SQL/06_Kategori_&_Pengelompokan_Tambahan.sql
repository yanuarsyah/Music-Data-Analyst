-- a. Kategorisasi tempo (lambat/sedang/cepat)
SELECT Track, Tempo,
  CASE
    WHEN Tempo < 90 THEN 'Lambat'
    WHEN Tempo BETWEEN 90 AND 120 THEN 'Sedang'
    ELSE 'Cepat'
  END AS Tempo_category
FROM music_data;

-- b. Lagu dengan speechiness tinggi (bisa jadi cerita atau rap)
SELECT Track, Speechiness, Url_youtube
FROM music_data
WHERE Speechiness > 0.6
ORDER BY Speechiness DESC;

-- c. Kategori Lagu Berdasarkan Durasi
SELECT Track, Duration_ms/60000 AS duration_min,
  CASE
    WHEN Duration_ms < 180000 THEN 'Short (< 3 min)'
    WHEN Duration_ms BETWEEN 180000 AND 300000 THEN 'Medium (3-5 min)'
    ELSE 'Long (> 5 min)'
  END AS duration_category
FROM music_data;

-- d. Deteksi Lagu Instrumental
SELECT Track, Artist, Instrumentalness, Url_youtube
FROM music_data
WHERE Instrumentalness > 0.8
ORDER BY Instrumentalness DESC;



