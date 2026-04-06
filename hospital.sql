create database hospital;

use hospital;

create table paciente(
	codigo int primary key auto_increment,
    nome varchar(200),
    dataNascimento date,
    telefone varchar(20),
    cpf varchar(14)
)engine = InnoDB;

create table medico(
	codigo int primary key auto_increment,
    nome varchar(200),
    especialidade varchar(200),
    crm varchar(20)
)engine = innoDB;

create table atende(
	codigo int primary key auto_increment,
    medicoCodigo int,
    pacienteCodigo int
)engine = InnoDB;

create table internacao(
	codigo int primary key auto_increment,
    dataEntrada date,
    diagnostico varchar(200),
    dataAlta date
)engine = InnoDB;

create table leito(
	codigo int primary key auto_increment
)engine = InnoDB;

create table tem(
	codigo int primary key auto_increment,
    leitoCodigo int
)engine = InnoDb;

create table enfermeiro(
	codigo int primary key auto_increment,
    nome varchar(100),
    cpf varchar(14),
    dataNascimento date
)engine = InnoDB;

create table atendimento(
	codigo int primary key auto_increment,
    internacaoCodigo int,
    enfermeiroCodigo int
)engine = InnoDB;

create table exame(
	codigo int primary key auto_increment,
    dataRealizacao date,
    resultado varchar(200)
)engine = InnoDB;