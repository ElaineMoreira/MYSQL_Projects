-- primeira forma
SELECT supplier_id FROM northwind.purchase_orders 
WHERE supplier_id = 1 OR supplier_id = 3;
-- segunda forma
-- SELECT supplier_id FROM northwind.purchase_orders
-- WHERE supplier_id IN (1, 3);
