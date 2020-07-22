SELECT cpf, enome, dnome 
FROM empregados LEFT JOIN trabalha
    ON empregados.cpf = trabalha.cpf_emp
INNER JOIN departamentos
ON departamentos.dnumero = empregados.dnumero
WHERE trabalha.cpf_emp is null
ORDER BY cpf;