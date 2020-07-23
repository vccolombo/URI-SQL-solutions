SELECT name, 
CAST(CASE type
	WHEN 'A' THEN 20.0
	WHEN 'B' THEN 70
	WHEN 'C' THEN 530.5
END AS DECIMAL(10, 1)) AS price
FROM products
ORDER BY type, id DESC;