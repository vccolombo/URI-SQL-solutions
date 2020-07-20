SELECT CONCAT(
    SUBSTRING(cpf, 1, 3), '.',
	SUBSTRING(cpf, 4, 3), '.',
	SUBSTRING(cpf, 7, 3), '-',
	SUBSTRING(cpf, 10)
)
FROM customers INNER JOIN natural_person
ON customers.id = natural_person.id_customers
