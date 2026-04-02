create database clinica;

use clinica;

create table tutor(
	codigo int not null primary key auto_increment,
    nome varchar(200) not null,
    cpf varchar(15),
    telefone varchar(20)
)engine = InnoDB;

create table endereco(
	codigo int not null primary key auto_increment,
    logradouro varchar(150) not null,
    numero int,
    complemento varchar(45),
    bairro varchar(45),
    estado varchar(45),
    cep varchar(15)
)engine = InnoDB;

create table animal(
	codigo int not null primary key auto_increment,
    nome varchar(200) not null,
    dataNascimento date,
    peso decimal(5,2),
    codigoTutor int
)engine = InnoDB;

alter table tutor add column especieCodigo int;
alter table tutor drop column especieCodigo;
alter table animal add column especieCodigo int;

alter table animal add constraint animalEspecie
foreign key (especieCodigo) references especie(codigo);

alter table animal add constraint animalTutor
foreign key (codigoTutor) references tutor(codigo);

create table especie(
	codigo int not null primary key auto_increment,
    reca varchar(100),
    descricao varchar(200)
)engine = InnoDB;

create table veterinario(
	codigo int not null primary key auto_increment,
    crmv varchar(15),
    areaAtuacao varchar(45),
    turno varchar(15),
    telefone varchar(17)
)engine = InnoDB;

create table atendimento(
	codigo int not null primary key auto_increment,
    animalCodigo int,
    veterinarioCodigo int,
    dataAtendimento date,
    diagnostico varchar(200),
    tratamento varchar(200)
)engine = InnoDB;

alter table atendimento add constraint atendimentoVeterinario
foreign key (veterinarioCodigo) references veterinario(codigo);

alter table atendimento add constraint atendimentoAnimal
foreign key (animalCodigo) references animal(codigo);

create table medicamento(
	codigo int not null primary key auto_increment,
    nome varchar(200),
    dosagem varchar(100),
    principioAtivo varchar(100),
    validade date,
    codigoAtendimento int
)engine = InnoDB;

alter table medicamento add constraint medicamentoAtendimento
foreign key (CodigoAtendimento) references atendimento(codigo);

alter table tutor add column enderecoCodigo int;
alter table animal add column especieCodigo int;
show tables;
describe animal;
alter table tutor add constraint 
foreign key (enderecoCodigo) references endereco(codigo);