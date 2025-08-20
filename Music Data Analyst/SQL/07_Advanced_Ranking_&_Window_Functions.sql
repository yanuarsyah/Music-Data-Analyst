-- a. Ranking lagu berdasarkan views per channel
SELECT 
    Channel, 
    Title, 
    Views,
    ROW_NUMBER() OVER(PARTITION BY Channel ORDER BY Views DESC) AS channel_rank
FROM music_data;

-- b. Cumulative streams per artist
SELECT Artist, SUM(Stream) AS total_streams 
FROM music_data 
WHERE Stream IS NOT NULL
GROUP BY Artist
ORDER BY total_streams DESC;

-- c. Top-N per Group – 5 lagu teratas per artis
SELECT Artist, Track, Stream
FROM (
  SELECT Artist, Track, Stream,
         ROW_NUMBER() OVER(PARTITION BY Artist ORDER BY Stream DESC) AS rn
  FROM music_data
) t
WHERE rn <= 5;








