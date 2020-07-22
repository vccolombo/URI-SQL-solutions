SELECT amount FROM value_table
GROUP BY amount
ORDER BY COUNT(amount) DESC
LIMIT 1;