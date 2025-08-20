-- Rata-rata nilai karakteristik teknis dan musikal dari lagu seperti danceability, energy, valence, tempo, dll.


SELECT
  ROUND(AVG(Danceability)::NUMERIC, 3) AS avg_danceability,
  ROUND(AVG(Energy)::NUMERIC, 3) AS avg_energy,
  ROUND(AVG(Acousticness)::NUMERIC, 3) AS avg_acousticness,
  ROUND(AVG(Instrumentalness)::NUMERIC, 3) AS avg_instrumentalness,
  ROUND(AVG(Valence)::NUMERIC, 3) AS avg_valence,
  ROUND(AVG(Speechiness)::NUMERIC, 3) AS avg_speechiness
FROM music_data;





