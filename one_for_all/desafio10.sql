DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(pessoa_usuaria INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas INT;
SELECT COUNT(*) FROM SpotifyClone.historico_reproducoes
WHERE pessoa_usuaria = usuario_id INTO quantidade_musicas;
RETURN quantidade_musicas;
END $$
DELIMITER ;
