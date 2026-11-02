USE db_Formula1;

-- 1. Exibe o nome dos países em letras maiúsculas que começam com B e terminam com L.
SELECT UPPER(nome)
FROM paises
WHERE nome LIKE 'B%L';

-- 2. Lista pilotos naturais do Brasil, Itália ou França.
SELECT pilotos.nome
FROM pilotos
INNER JOIN paises
    ON pilotos.cod_pais = paises.codigo
WHERE UPPER(paises.nome) IN ('BRASIL', 'ITÁLIA', 'FRANÇA');

-- 3. Lista todos os pilotos.
SELECT nome
FROM pilotos;

-- 4. Exibe o nome dos Grandes Prêmios e a quantidade de voltas.
SELECT
    nome_gp AS Grande_Premio,
    voltas AS Quantidade_de_Voltas
FROM corridas;

-- 5. Lista os pilotos e seus respectivos países.
SELECT
    pilotos.nome AS Nome_Piloto,
    paises.nome AS Pais
FROM pilotos
INNER JOIN paises
    ON pilotos.cod_pais = paises.codigo;

-- 6. Adiciona a coluna de salário à tabela de pilotos.
ALTER TABLE pilotos
ADD COLUMN salario DECIMAL(10,2);

-- 7. Define salários conforme o número do piloto.
UPDATE pilotos
SET salario = CASE
    WHEN numero BETWEEN 1 AND 5 THEN 80000.00
    WHEN numero BETWEEN 6 AND 8 THEN 95000.00
    ELSE 110000.00
END
WHERE numero > 0;

-- 8. Lista pilotos com salários entre 70.000 e 100.000.
SELECT nome, salario
FROM pilotos
WHERE salario BETWEEN 70000.00 AND 100000.00;

-- 9. Calcula a média salarial por país.
SELECT
    cod_pais,
    ROUND(AVG(salario), 2) AS Media_Salarial
FROM pilotos
GROUP BY cod_pais;

-- 10. Lista os salários distintos em ordem crescente.
SELECT DISTINCT salario
FROM pilotos
ORDER BY salario ASC;
