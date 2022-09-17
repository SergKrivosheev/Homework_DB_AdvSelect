--Количество исполнителей каждого жанра
SELECT genre_id, COUNT(artist_id)  FROM artistsgenres
GROUP BY genre_id 
ORDER BY COUNT(artist_id);

--количество треков, вошедших в альбомы 2019-2020 годов
SELECT album_id, COUNT(*) FROM tracks t
JOIN albums alb ON t.album_id = alb.id
WHERE alb.album_date between 2019 AND 2020
GROUP BY t.album_id 
ORDER BY COUNT(*);

--средняя продолжительность треков по каждому альбому
SELECT album_id, AVG(track_length) FROM tracks
GROUP BY album_id
ORDER BY AVG(track_length);

--все исполнители, которые не выпустили альбомы в 2020 году
SELECT artists_id FROM artistsalbum a2
JOIN albums a ON a2.album_id = a.id 
WHERE a.album_date != (SELECT album_date FROM albums WHERE album_date=2020);

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
SELECT compilation_name FROM compilation c 
JOIN trackscompilation t ON c.id = t.compilation_id 
JOIN tracks t2 ON t.track_id = t2.id 
JOIN albums a ON t2.album_id = a.id 
JOIN artistsalbum a2 ON a.id = a2.album_id 
JOIN artists a3 ON a2.artists_id = a3.id 
WHERE a3.artist_name = 'Кис Кис'; 

--название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT album_name FROM albums a 
JOIN artistsalbum a2 ON a.id = a2.album_id 
JOIN artists a3 ON a2.artists_id = a3.id 
JOIN artistsgenres a4 ON a3.id = a4.artist_id 
GROUP BY album_name
HAVING COUNT(a4.genre_id) > 1;

--наименование треков, которые не входят в сборники
SELECT track_name FROM tracks t 
LEFT JOIN trackscompilation t2 ON t.id = t2.track_id 
LEFT JOIN compilation c ON t2.compilation_id = c.id 
GROUP BY track_name 
HAVING COUNT(t2.compilation_id) < 1;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
SELECT artist_name FROM artists a3  
JOIN artistsalbum a ON a3.id = a.artists_id 
JOIN albums a2 ON a.album_id = a2.id 
JOIN tracks t ON a2.id = t.album_id 
WHERE t.track_length = (
SELECT MIN(track_length) from tracks);

--название альбомов, содержащих наименьшее количество треков
SELECT COUNT(*), album_name FROM albums a 
JOIN tracks t ON a.id = t.album_id  
GROUP BY a.album_name
HAVING COUNT(*) = (
SELECT COUNT(*) FROM tracks
GROUP BY album_id
ORDER BY COUNT(*) LIMIT 1);


