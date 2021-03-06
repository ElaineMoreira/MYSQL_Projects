SELECT 
p.ProductName AS 'Produto', 
MIN(od.Quantity) AS 'Mínima', 
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity),2) AS 'Média'
FROM
w3schools.products p,
w3schools.order_details od
WHERE
od.ProductID = p.ProductID
GROUP BY od.ProductID
HAVING AVG(od.Quantity) > 20.00
ORDER BY `média`, `Produto`;
