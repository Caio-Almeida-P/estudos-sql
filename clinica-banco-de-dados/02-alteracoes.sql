-- 02-alteracoes.sql

-- Exercícios para fixação de contéudo e aprendizado de novas técnicas

use clinica;

select * from funcionarios;

ALTER Table funcionarios /* Criando a coluna nroa na tabela funcionarios */
add nroa int AFTER cod_func;

alter TABLE funcionarios /* Removendo as tabelas nroa e cargo da tabela funcionarios */
DROP COLUMN nroa,
DROP COLUMN cargo;
