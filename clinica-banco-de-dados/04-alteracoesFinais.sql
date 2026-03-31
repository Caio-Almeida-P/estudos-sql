-- 04.alteracoesFinais.sql

-- Alterações realizadas com base em lista de exercícios propostas pelo professor da disciplina

use clinica;

/* 1) O paciente Paulo mudou-se para Ilhota */
select * from pacientes;

update pacientes set cidade = "Ilhota" WHERE cod_pac = 2;

/* 2) A consulta do médico 1 com o paciente 4 passou para às 12:00 horas do dia 4 de Julho de 2006 */
select * from consultas;

update consultas
set
    dia = "2006-07-04",
    hora = "12:00"
WHERE
    cod_med = 1
    AND cod_pac = 4;

/* 3) A paciente Ana fez aniversário e sua doença agora é cancer */
select * from pacientes;

update pacientes set idade = 21, doenca = "Cancer" WHERE cod_pac = 1;

/* 4) A consulta do médico Pedro (codm = 3) com o paciente Carlos (codf = 4) passou para uma hora e meia depois */
SELECT * from consultas;

update consultas
set
    hora = ADDTIME(hora, "1:30")
WHERE
    cod_med = 3
    AND cod_pac = 4;

/* 5) O funcionário Carlos (codf = 4) deixou a clínica */
SELECT * FROM funcionarios;

delete from funcionarios where cod_func = 4;

/* 6) As consultas marcadas após as 19 horas foram canceladas */
select * from consultas;

delete from consultas where hora > "19:00";

/* 7) Os pacientes com câncer ou idade inferior a 10 anos deixaram a clínica */
select * from consultas;

delete FROM consultas where cod_pac = 1;

select * from pacientes;

DELETE FROM pacientes WHERE doenca = "Cancer";

/* 8) Os médicos que residem em Biguacu e Palhoca deixaram a clínica */
select * from medicos;

DELETE from medicos where cidade = "Biguacu" OR cidade = "Palhoca";
