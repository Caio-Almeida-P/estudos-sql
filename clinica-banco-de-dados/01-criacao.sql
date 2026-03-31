-- 01.criacao.sql

-- Aula da disciplina Banco de Dados da Faculdade

-- Script de Criação do Banco de Dados de uma clínica

create DATABASE Clinica;

use clinica;

CREATE Table Ambulatorios (
    nroa int PRIMARY KEY AUTO_INCREMENT,
    andar int(3) not null,
    capacidade int(2) not NULL
);

create table Medicos(
    cod_med int PRIMARY KEY AUTO_INCREMENT,
    nome_med char(40) not NULL,
    idade INT(2) not null,
    especialidade CHAR(20),
    CPF int(11) UNIQUE not null,
    cidade VARCHAR(40) not null,
    nroa int not null,
    Foreign Key (nroa) REFERENCES ambulatorios(nroa)
);

CREATE Table pacientes(
    cod_pac int PRIMARY KEY AUTO_INCREMENT,
    nome char(40) NOT NULL,
    idade int(2) not null,
    cidade VARCHAR(40) NOT NULL,
    CPF int(11) UNIQUE not null,
    doenca VARCHAR(40) not null
);

CREATE Table funcionarios(
    cod_func int PRIMARY KEY AUTO_INCREMENT,
    nome char(40) NOT NULL,
    idade int(2) not null,
    cidade VARCHAR(40) NOT NULL,
    CPF int(11) UNIQUE not null,
    salario int(10),
    cargo VARCHAR(50) not null
);

CREATE Table Consultas(
    id_consulta int AUTO_INCREMENT,
    cod_med int NOT NULL,
    cod_pac int not null,
    dia DATE,
    hora time,
    PRIMARY KEY(id_consulta, cod_med, dia, hora),
    Foreign Key (cod_med) REFERENCES medicos(cod_med),
    Foreign Key (cod_pac) REFERENCES pacientes(cod_pac)
);

