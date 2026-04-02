create database hoteldesfult;-- Criando o bd

use hoteldesfult; -- Sinalizando qual banco vou utilizar

create table hospede(
	codigo int not null primary key auto_increment,
    nome varchar(150) not null,
    telefone varchar(17) not null, 
    endereco varchar(200) not null
)engine = InnoDB;

create table registroGasto(
	codigo int not null auto_increment primary key,
    descricaoServico varchar(150) not null,
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
    codigoRegistroGastos int not null,
    codigoFuncionario int not null,
    codigoQuarto int not null
)engine = InnoDB;

-- Mostrar todas as tabelas que estão no BD
show tables;
-- Para ver as colunas por tabela eu preciso...
select * from funcionarios;
describe funcionarios; -- Descreve|Detalha

-- Alter table -- Modificam tabelas
alter table funcionario add column horario time not null; -- Adicionando uma coluna numa tabela
alter table funcionario modify column horario datetime; -- Altera: tipo e obrigatoriedades
alter table funcionario rename to funcionarios; -- Alterando o nome da tabela
alter table funcionarios change horario entrada dateTime not null; -- Altera o noem da coluna
alter table funcionarios drop column entrada; -- Apaga a coluna

-- Consultar os dados da tabela
select * from reserva;

-- Apagar tabelas
drop table reserva; -- Apagar a tabela
drop schema hotel; -- Apagar o banco de dados	INTEIRO

-- relacionamentos
alter table reserva add constraint reservaHospede 
foreign key(codigoHospede) references hospede(codigo);

alter table reserva add constraint reservaRegistroGastos
foreign key(codigoRegistroGastos) references registroGasto(codigo);

alter table reserva add constraint reservaFuncionario
foreign key(codigoFuncionario) references funcionario(codigo);

alter table reserva add constraint reservaQuarto
foreign key(codigoQuarto) references quarto(codigo);


-- Comandos de acesso aos DADOS (CRUD) - Create, Read, Update, Delete
-- Create -> Insert -> Inserindo dados na tabela
-- Read   -> Select -> Consultando dados na tabela
-- Update -> Update -> Atualizando dados na tabela
-- Delete -> Delete -> Excluindo dados da tabela

Select codigo, valor, qtdeDias from reserva;
select * from hospede;

describe hospede;
-- Insert
insert into hospede(codigo, nome, telefone, endereco) 
values('3','Joao','11985652656','Rua X, numero, bairro'),
	  ('','Gabriela','11985652656','Rua X, numero, bairro'),
      ('','Elisangela','11985652656','Rua X, numero, bairro'),
      ('','Abdias da Silva','11985652656','Rua X, numero, bairro');

-- Select 
select * from hospede;
select * from hospede where codigo = 8;
select nome from hospede where codigo >= 5 and codigo <= 7;
select * from hospede order by nome asc; -- Order By - Ordenar Ascendente
select * from hospede order by nome desc; -- Order By - Ordenar Descendente
select count(nome) as contarNome from hospede; -- Contar linhas
select max(codigo) as ultimoCodigo from hospede; -- Maior código
select min(codigo) as primeiroCodigo from hospede; -- Primeiro Código
select sum(codigo) as somar from hospede; -- Somando dados
select avg(codigo) as media from hospede; -- Media dados
select * from hospede where nome like 'a%'; -- Visualizar os nomes que começam com A
select * from hospede where nome like '%a'; -- Visualizar os nomes que terminam com A
select * from hospede where nome like '%Abdias%'; -- Visualizar os nomes que tem no meio a letra A

select * from hospede;
-- Atualizar os Dados - Update
update hospede set nome = 'Joaquina' where codigo = 3;
update hospede set endereco = 'Avenida Joaquim barbosa, 15, Planalto' where codigo = 3;
update hospede set nome = 'Claudia';

-- Desbloquear o SQL_SAFE_UPDATES
set SQL_SAFE_Updates = 0; -- 0 -> Desabilitando | 1 -> Habilitando 

-- Delete - Apagar
delete from hospede where codigo = 3; -- Apagando a linha do cliente 3