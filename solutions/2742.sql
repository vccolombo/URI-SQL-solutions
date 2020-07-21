-- My difficulty here was that I didn't notice that I should
-- only return names with Richard

SELECT life_registry.name, ROUND((omega * 1.618), 3) AS "Fator N"
FROM life_registry INNER JOIN dimensions
ON life_registry.dimensions_id = dimensions.id
WHERE dimensions.name IN ('C875', 'C774')
	AND life_registry.name LIKE '%Richard%'
ORDER BY omega;