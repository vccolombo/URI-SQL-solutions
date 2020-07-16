-- SELECT name
-- FROM table2
-- WHERE name NOT IN
--     (SELECT name 
--      FROM table1)

-- or

-- SELECT name 
-- FROM table2 
-- WHERE NOT EXISTS 
--     (SELECT * 
--      FROM table1 
--      WHERE table1.name = table2.name)

SELECT customers.id, customers.name
FROM customers
WHERE customers.id NOT IN
    (SELECT id_customers FROM locations)