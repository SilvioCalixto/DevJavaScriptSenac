create database entregas;

use entregas;

create table endereco (
	codigo int not null primary key auto_increment,
    logradouro varchar(45),
    numero int,
    bairro varchar(20),
    estado varchar(45),
    cep varchar(10)
) engine = InnoDB;

select * from endereco;
update endereco set cep = '00000000' where codigo = 3;


insert into endereco(codigo, logradouro, numero, bairro, estado, cep)
values('','Rua Louveiro','325','Jurupinga','São Paulo','095-7475'),
	  ('','Rua Gouveia','785','Alameda','São Paulo','005-7445'),
	  ('','Rua Pelada','12','Bairro','São Paulo','123-4569');
create table cliente (
	codigo int not null primary key auto_increment,
    nome varchar(45),
    cnpj varchar(20),
    telefone varchar(17),
    codigoEndereco int
) engine = InnoDB;

select cnpj from cliente where codigo < 3;
update cliente set nome = 'Roraima' where codigo = 2;

insert into cliente(codigo, nome, cnpj, telefone, codigoEndereco)
values('','Josué Pires','132346549999','11945689578','1'),
	  ('','Samara Goluveia','986521631515','11945689578','2'),
      ('','Floriano Mendonça','541546519651','11945689578','3');
      
alter table cliente add constraint clienteEndereco
foreign key(codigoEndereco) references endereco(codigo);

create table veiculo (
	codigo int not null primary key auto_increment,
    tipo varchar(20),
    modelo varchar(20),
    ano date,
    cor varchar(45),
    placa varchar(20)
) engine = InnoDB;

insert into veiculo(codigo, tipo, modelo, ano, cor, placa)
values('','Carro','Ford Fiesta','2008','Vermelho','123kopl'),
	  ('','Moto','Honda CG','2010','Preta','859pode'),
      ('','Van','Fiorino','2015','Branca','654lkjh');

create table entregador (
	codigo int not null primary key auto_increment,
    nome varchar(45),
    cpf varchar(15),
    cnh varchar(15)
)engine = InnoDB;

insert into entregador(codigo,nome,cpf,cnh)
values('','Gabriel Rodriguez', '13546799887', '132852741966'),
	  ('','Ramirez Jesus', '13546799887', '132852741966'),
      ('','Isabela Montes', '13546799887', '132852741966');

create table encomenda (
	codigo int not null primary key auto_increment,
    descricao varchar(200),
    peso decimal(3,2),
    valorDeclarado decimal(5,2),
    horarioPrevisto time,
    situacao varchar(10),
    codigoCliente int,
    codigoRoteiroEntrega int
) engine = InnoDB;

insert into encomenda(codigo, descricao, peso, valorDeclarado, horarioPrevisto, situacao, codigoCliente, codigoRoteiroEntrega)
values('', 'Caixa grande','10,2','132,25','14:30','ok','1','1'),
	  ('', 'Caixa pequena','5,2','82,25','13:35','ok','2','2'),
      ('', 'Caixa Extragrande','21,2','432,25','17:30','ok','3','3');

alter table encomenda add constraint encomendaCliente
foreign key (codigoCliente) references cliente(codigo);
alter table encomenda add constraint encomendaRoteiroEntrega
foreign key (codigoRoteiroEntrega) references roteiroEntrega(codigo);

create table roteiroEntrega (
	codigo int not null primary key auto_increment,
    regiaoEntrega varchar(45),
    diaEntrega varchar(15),
    codigoEntregador int,
    codigoVeiculo int
) engine = InnoDB;

insert into roteiroEntrega(codigo, regiaoEntrega, diaEntrega, codigoEntregador, codigoVeiculo)
values('','Itaquera','Segunda-feira','1','1'),
	  ('','Jabaquara','Terça-feira','2','2'),
      ('','Paulista','Quarta-feira','3','3');
      
alter table roteiroEntrega add constraint roteiroEntregaEntregador
foreign key (codigoEntregador) references entregador(codigo);
alter table roteiroEntrega add constraint roteiroEntregaVeiculo
foreign key (codigoVeiculo) references veiculo(codigo);

delete from cliente where codigo = 3;



