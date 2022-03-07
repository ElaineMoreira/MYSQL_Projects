CREATE VIEW cancoes_premium AS
SELECT c.cancao AS 'nome', COUNT(hr.usuario_id) 'reproducoes'
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.historico_reproducoes hr ON c.cancao_id = hr.cancao_id
INNER JOIN SpotifyClone.usuarios u ON u.usuario_id = hr.usuario_id
INNER JOIN SpotifyClone.planos p ON p.plano_id = u.plano_id
WHERE p.plano_id IN (2, 3)
GROUP BY `nome`
ORDER BY `nome` ASC;
