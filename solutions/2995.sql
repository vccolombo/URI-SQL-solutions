SELECT temperature, t1.number_of_records FROM
(SELECT temperature, mark, COUNT(mark) AS number_of_records
FROM records
GROUP BY mark, temperature) t1
ORDER BY t1.mark 
