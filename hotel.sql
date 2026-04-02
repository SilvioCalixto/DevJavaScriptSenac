create database hotel; -- criando o banco de dados

use hotel; -- sinalizando qual banco vou utilizar

create table hospede(
	codigo int not null primary key auto_increment,
    nome varchar(150) not null,
    telefone varchar(17) not null,
    endereco varchar(200) not null
)engine = InnoDB;

create table registroGasto(
	codigo int not null primary key auto_increment,
    descricaoSErvico varchar(150)not null,
    valor decimal(7,2) not null
)engine = InnoDB;

create table funcionario(
	codigo int not null auto_increment primary key,
    nome varchar(150) not null,
    cargo varchar(45) not null,
    salario decimal(10,2) not null,
    setor varchar(100) not null
)engine = InnoDB;

create table quarto(
	codigo int not null auto_increment primary key,
    descricao varchar(150) not null,
    tipo varchar(45) not null,
    valorDiaria decimal(7,2) not null
)engine = InnoDB;

create table reserva(
	codigo int not null auto_increment primary key,
    dtInicio date not null,
    dtFim date not null,
    valor decimal(7,2) not null,
    qtdeDias int not null,
    codigoHospede int not null,
    codigoFuncionario int not null,
    codigoQuarto int not null
)engine = InnoDB;

-- Mostrar todas as tables que estão no banco de dados


show tables;

-- para ver as colunas por tabela eu preciso...


select * from reserva;
describe funcionarios; -- Descreve|Detalha


-- modifica tabela

alter table reserva add column codigoRegistroGastos int not null; -- adicionando uma tabela
alter table funcionario modify column horario datetime; -- Altera o tipo e obrigatoriedades
alter table funcionario rename to funcionarios; -- Alterando o nome de uma coluna 
alter table funcionarios change horario entrada dateTime not null; -- Altera o nome da coluna
alter table funcionarios drop column entrada; 

-- Consultar dados da tabela
select * from reserva;


-- Apagar tabelas

drop table reserva;

drop schema hotel; -- Apagar banco de dados INTEIRO

-- relacionamentos

alter table reserva add constraint reservaHospede
foreign key(codigoHospede) references hospede(codigo);

alter table reserva add constraint reservaRegistroGastos
foreign key(codigoRegistroGastos) references registroGasto(codigo);

alter table reserva add constraint reservaFuncionario
foreign key(codigoFuncionario) references funcionarios(codigo);

alter table reserva add constraint reservaQuarto
foreign key(codigoQuarto) references quarto(codigo);