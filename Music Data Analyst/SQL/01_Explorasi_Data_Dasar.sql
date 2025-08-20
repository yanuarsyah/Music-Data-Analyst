-- a.Jumlah Lagu
select count (*) from music_data;

-- b.Cek jumlah lagu unik
SELECT COUNT(DISTINCT Track) AS unique_tracks
FROM music_data;

-- c.Cek jumlah artis unik
SELECT COUNT(DISTINCT Artist) AS unique_artists
FROM music_data;