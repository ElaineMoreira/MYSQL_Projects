DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN
SELECT a.artista AS 'artista', aa.album AS 'album'
FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.albuns aa ON a.artista_id = aa.artista_id
WHERE a.artista = `artista`;
END $$
DELIMITER ;
