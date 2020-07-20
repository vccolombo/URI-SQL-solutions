SELECT name, customers_number FROM lawyers
WHERE customers_number = (SELECT MAX(customers_number) FROM lawyers LIMIT 1)
UNION ALL SELECT name, customers_number FROM lawyers 
WHERE customers_number = (SELECT MIN(customers_number) FROM lawyers LIMIT 1)
UNION ALL SELECT 'Average', CAST(AVG(customers_number) AS INTEGER) FROM lawyers