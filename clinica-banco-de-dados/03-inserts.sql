-- 03-inserts.sql

-- Adição de dados na banco de dados

use clinica;

select * from ambulatorios;
describe ambulatorios;

insert into ambulatorios(andar, capacidade) VALUES
(1, 30),
(2, 50),
(3, 40),
(4, 25),
(5, 55);

select * from medicos;

describe medicos;

insert into medicos(nome_med, idade, especialidade, CPF, cidade, nroa) VALUES
("Joao", 44, "Ortopedia", 510078101, "Florianopolis", 1),

("Maria", 42, "Traumatologia", 510078102, "Blumenau", 2),

("Pedro", 51, "Pediatria", 510078103, "Sao Jose", 2),

("Carlos", 28, "Ortopedia", 510078104, "Joinville", 4),

("Marcia", 33, "Neurologia", 510078105, "Biguacu", 3);

select * from pacientes;
describe pacientes;

insert into pacientes(nome, idade, cidade, CPF, doenca) VALUES
("Ana", 20, "Florianopolis", 510078106, "Gripe"),
("Paulo", 24, "Palhoca", 510078107, "Fratura"),
("Lucia", 30, "Biguacu", 510078108, "Tendinite"),
("Carlos", 28, "Joinville", 510078109, "Sarampo");

select * from funcionarios;
DESCRIBE funcionarios;

insert into funcionarios(nome, idade, cidade, salario, CPF) VALUES
("Rita", 32, "Sao Jose", 1200, 510078110),
("Maria", 55, "Palhoca", 1200, 510078111),
("Caio", 45, "Florianopolis", 100000, 510078112),
("Carlos", 56, "Porto Alegre", 1200, 510078113),
("Paula", 33, "Florianopolis", 1200, 510078114);

select * from consultas;

describe consultas;

insert into consultas(cod_med, cod_pac, dia, hora) VALUES
(1, 1, "2006/06/12", "14:00"),
(1, 4, "2025/06/13", "10:00"),
(2, 1, "2025/06/13", "9:00"),
(2, 2, "2025/06/13", "11:00"),
(2, 3, "2025/06/14", "14:00"),
(2, 4, "2025/06/14", "17:00"),
(3, 1, "2025/06/19", "18:00"),
(3, 3, "2025/06/12", "10:00"),
(3, 4, "2025/06/19", "13:00"),
(4, 4, "2025/06/20", "13:00"),
(4, 4, "2025/06/22", "19:30");

