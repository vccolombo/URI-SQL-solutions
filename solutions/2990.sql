-- SELECT cpf, enome, dnome 
-- FROM empregados LEFT JOIN trabalha
--     ON empregados.cpf = trabalha.cpf_emp
-- 	AND trabalha.cpf_emp is null
-- INNER JOIN departamentos
-- ON departamentos.dnumero = empregados.dnumero
-- ORDER BY cpf;