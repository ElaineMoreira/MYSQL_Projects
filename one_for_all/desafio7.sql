CREATE VIEW perfil_artistas AS
SELECT a.artista AS 'artista', al.album AS 'album', COUNT(sa.artista_id) AS 'seguidores'
FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.albuns al ON a.artista_id = al.artista_id 
INNER JOIN SpotifyClone.seguindo_artista sa ON a.artista_id = sa.artista_id
GROUP BY a.artista, al.album
ORDER BY `seguidores` DESC, `artista`, `album`;
