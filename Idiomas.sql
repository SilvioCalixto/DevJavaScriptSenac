create database escolaIdiomas;

use escolaIdiomas;

create table aluno(
	codigo int not null primary key auto_increment,
    nome varchar(45),
    cpf varchar(45),
	email varchar(45),
    dataNascimento date
)engine  = InnoDB;

alter table aluno add column telefone varchar(15);

create table curso (
	codigo int not null primary key auto_increment,
    nome varchar(45),
    cargaHoraria int,
    valor decimal(5,2),
    codigoIdioma int
) engine = InnoDB;

alter table curso add constraint cursoIdioma
foreign key(codigoIdioma) references idioma(codigo);

create table idioma (
	codigo int not null primary key auto_increment,
    nome varchar(30),
    descricao varchar(200)
) engine = InnoDB;

create table professor (
	codigo int not null primary key auto_increment,
    nome varchar(45),
    telefone varchar(17),
    formacao varchar(45),
    codigoIdioma int
) engine = InnoDB;

alter table professor add constraint professorIdioma
foreign key(codigoIdioma) references idioma(codigo);

create table matricula (
	codigo int not null primary key auto_increment,
    codigoAluno int,
    codigoCurso int,
    dataMatricula date
) engine = InnoDB;

alter table matricula add constraint matriculaAluno
foreign key(codigoAluno) references aluno(codigo);
alter table matricula add constraint matriculaCurso
foreign key(codigoCurso) references curso(codigo);

create table avaliar (
	codigo int not null primary key auto_increment,
    nota decimal(3,2),
    observacao varchar(100),
    dataAvaliacao date,
    codigoAluno int,
    codigoProfessor int
) engine = InnoDB;

alter table avaliar add constraint avaliarAluno
foreign key(codigoAluno) references aluno(codigo);
alter table avaliar add constraint avaliarProfessor
foreign key(codigoProfessor) references professor(codigo);

create table ministrar (
	codigocurso int,
    codigoProfessor int
)engine = InnoDB;

ALTER TABLE ministrar ADD PRIMARY KEY (codigocurso, codigoProfessor);

alter table ministrar add constraint ministrarCurso
foreign key(codigoCurso) references curso(codigo);
alter table ministrar add constraint ministrarProfessor
foreign key(codigoProfessor) references professor(codigo);