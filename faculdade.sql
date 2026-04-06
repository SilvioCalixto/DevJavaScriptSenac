create database faculdade;

use faculdade;

create table aluno(
	codigo int primary key auto_increment,
    nome varchar(150),
    numeroMatricula int,
    dataIngresso date
)engine = InnoDB;

insert into aluno(codigo, nome, numeroMatricula, dataIngresso)
values('','João Guilherme','125','2018/05/15'),
	  ('','Maria Gouveia','126','2019/09/14'),
      ('','Mariano Luiz','127','2019/07/09'),
      ('','José Henrique','128','2020/08/12');
      
select * from aluno;
select count(*) as contar from aluno;
select codigo,nome from aluno order by nome desc;

update aluno set numeroMatricula = '001' where codigo = '3';
update aluno set dataIngresso = '2026/12/15' where codigo = '4';

delete from aluno where codigo = '5';

create table curso(
	codigo int primary key auto_increment,
    nome varchar(80),
    tipo varchar(60),
    duracao int
)engine = InnoDB;

create table realizar(
	alunoCodigo int,
    cursoCodigo int,
    codigo int primary key auto_increment
)engine = InnoDB;

alter table realizar add constraint realizarAluno
foreign key(alunoCodigo) references aluno(codigo);
alter table realizar add constraint realizarCurso
foreign key(cursoCodigo) references curso(codigo);

create table disciplina(
	codigo int primary key auto_increment,
    nome varchar(150),
    titulacao varchar(100),
    departamento varchar(80),
    cargaHoraria int
)engine = InnoDB;

create table ter(
	codigo int primary key auto_increment,
    disciplinaCodigo int,
    cursoCodigo int
)engine = InnoDB;

alter table ter add constraint terDisciplina
foreign key(disciplinaCodigo) references disciplina(codigo);
alter table ter add constraint terCurso
foreign key(cursoCodigo) references curso(codigo);

create table avaliacao(
	codigo int primary key auto_increment,
    nota decimal(4,2),
    dataRealizacao date,
    obseracoes varchar(200),
    disciplinaCodigo int
)engine = InnoDB;

alter table avaliacao add constraint avaliacaoDisciplina
foreign key(disciplinaCodigo) references disciplina(codigo);

create table professor(
	codigo int primary key auto_increment,
    nome varchar(150),
    telefone varchar(17),
    dataNascimento date,
    email varchar(150)
)engine = InnoDB;

create table ministrar(
	codigo int primary key auto_increment,
    disciplinaCodigo int,
    professorCodigo int
)engine = InnoDB;

alter table ministrar add constraint ministrarDisciplina
foreign key(disciplinaCodigo) references disciplina(codigo);
alter table  ministrar add constraint ministrarProfessor
foreign key(professorCodigo) references professor(codigo);

select * from aluno;
describe ministrar;