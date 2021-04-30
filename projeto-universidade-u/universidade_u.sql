-- Criar a tabela ALUNO

CREATE TABLE ALUNO (
    idade int,
    sexo char(1),
    endereco text,
    telefone varchar(20),
    data_inscricao_curso date,
    valor_pago_curso float(10,2),
    nome varchar(25),
    ativo_sn int
);

-- usar o SCHEMA universidade_u

use universidade_u;

-- Insert - Inserindo registros em tabelas

insert into aluno(
	sexo, idade, data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome
)values(
	'M', 29, '2021-04-14', '01 2222-3333', 698.00, 1, 'Rua da Lagoa Bonita, 01, casa 01 - Rio de Janeiro - RJ',
    'Filipe'
);

insert into aluno(
	sexo, idade, data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome
)values(
	'F', 55, '2021-02-10', '07 2123-4579', 898.99, 1, 'Avenida Doutor Onofre, 200, apt 12 - Curitiba - PR',
    'Louise'
);

insert into aluno(
	sexo, idade, data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome
)values(
	'F', 19, '2020-07-03', '04 5221-0062', 998.99, 1, 'Rua das Oliveiras, 14, apt 34 - São Paulo - SP',
    'Katarina'
);

insert into aluno(
	sexo, idade, data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome
)values(
	'M', 23, '2019-01-22', '03 3215-7744', 700.00, 0, 'Avenida das Araras, 77, casa 04 - Campo Grande - MS',
    'Pedro'
);

insert into aluno(
	sexo, idade, data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome
)values(
	'M', 37, '2019-01-22', '10 4444-4444', 600.00, 1, 'Rua dos políticos, 171, casa 02 - Brasília - DF',
    'Emmanuel'
);

insert into aluno(
	sexo, idade, data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome
)values(
	'F', 16, '2021-04-24', '01 2214-0011', 600.00, 1, 'Avenida das Raposas, 14, apt 10 - Niterói - RJ',
    'Joanna'
);
insert into aluno(
	sexo, idade, data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome
)values(
	'F', 28, '2021-04-24', '08 5533-9917', 600.00, 1, 'Parcão Gaucho Chê, 10, apt 22 - Porto Alegre - RS',
    'Barbara'
);
insert into aluno(
	sexo, idade, data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome
)values(
	'M', 18, '2021-04-24', '01 2133-1313', 600.00, 1, 'Rua da colina, 13, casa 13 - Rio de Janeiro - RJ',
    'Nikolas'
);

-- Select - Selecionando registro em tabelas

use universidade_u;

select * from aluno;

select nome, idade, telefone from aluno;

-- Select - Filtros com operadores de comparação

use universidade_u;

select * from aluno where sexo = 'F';
select * from aluno where valor_pago_curso < 900;
select * from aluno where valor_pago_curso > 900;

select * from aluno where valor_pago_curso <= 900;
select * from aluno;
select * from aluno where valor_pago_curso >= 900;

select * from aluno where ativo_sn = '1';
select * from aluno where ativo_sn = '0';

-- Select - Filtros com operadores Lógicos

use universidade_u;

select * from aluno;
select * from aluno where sexo = 'M' AND ativo_sn = 1 AND valor_pago_curso < 1000;
select * from aluno where sexo = 'F' OR idade >= 20;

-- Select - Filtros com o operador Between

use universidade_u;

select * from aluno where idade between 20 and 60;
select * from aluno where data_inscricao_curso between '2021-01-01' and '2021-04-21';

-- Select - Filtros com o operadore In

use universidade_u;

select * from aluno where nome = 'Filipe' OR nome = 'Katarina' OR nome = 'Pedro';

select * from aluno where nome in ('Filipe', 'Katarina', 'Pedro');
select * from aluno where nome not in ('Filipe', 'Katarina', 'Pedro');

-- Select - Filtros com o operador Like

use universidade_u;

select * from aluno where nome like '%e';
select * from aluno where nome like '%li%';
select * from aluno where nome like 'k%';
select * from aluno where nome like 'f%e';
select * from aluno where nome like '_ed';
select * from aluno where nome like '_edr_';
select * from aluno where nome like '_____e';
select * from aluno where nome like '%n_';

-- Select - Ordenando o resultado

use universidade_u;

select * from aluno;

select * from aluno order by nome ASC;
select * from aluno order by nome DESC; 
select * from aluno order by valor_pago_curso DESC; 
select * from aluno order by sexo ASC, idade DESC;

-- Update - Atualizando registros de tabelas
use universidade_u;

select * from aluno;

update aluno set ativo_sn = 0 where nome = 'Katarina';
update aluno set valor_pago_curso = 600 where nome = 'Filipe';
update aluno set telefone = '07 2123-4579' where nome = 'Louise';


-- Delete - Deletando registros de tabelas

use universidade_u;

select * from aluno;

delete from aluno where ativo_sn = 0;
delete from aluno where idade in (40, 55) or sexo = 'F';
delete from aluno;

-- Descrevendo e alterando a estrutura de tabelas

use universidade_u;

select * from aluno;

desc aluno;

/* add inclusão */
alter table aluno add cpf varchar(11);

alter table aluno add email varchar(150) after idade;

/* modify modificar */
alter table aluno modify column cpf varchar(14);

/* drop remover */
alter table aluno drop column cpf;

alter table aluno add cpf varchar(14) after email;

-- 1FN - Trabalhando com chaves primárias simples

use universidade_u;

select * from aluno;

update aluno set cpf = '000.000.000-01' where nome = 'Filipe';
update aluno set cpf = '000.000.000-02' where nome = 'Louise';
update aluno set cpf = '000.000.000-03' where nome = 'Katarina';
update aluno set cpf = '000.000.000-04' where nome = 'Pedro';
update aluno set cpf = '000.000.000-05' where nome = 'Emmanuel';
update aluno set cpf = '000.000.000-06' where nome = 'Joanna';
update aluno set cpf = '000.000.000-07' where nome = 'Barbara';
update aluno set cpf = '000.000.000-08' where nome = 'Nikolas';

update aluno set email = 'filipe@foobar.com' where nome = 'Filipe';
update aluno set email = 'louise@foobar.com' where nome = 'Louise';
update aluno set email = 'katarina@foobar.com' where nome = 'Katarina';
update aluno set email = 'pedro@foobar.com' where nome = 'Pedro';
update aluno set email = 'emmanuel@foobar.com' where nome = 'Emmanuel';
update aluno set email = 'joanna@foobar.com' where nome = 'Joanna';
update aluno set email = 'barbara@foobar.com' where nome = 'Barbara';
update aluno set email = 'nikolas@foobar.com' where nome = 'Nikolas';

desc aluno;

alter table aluno modify cpf varchar(14) primary key;
alter table aluno drop cpf;

desc aluno;

alter table aluno add column cpf varchar(14);

desc aluno;

alter table aluno add id_aluno int primary key auto_increment;

desc aluno;

select * from aluno where id_aluno = 1;

--  1FN - Trabalhando com atributos Compostos

use universidade_u;

select * from aluno;

alter table aluno add logradouro varchar(100);
alter table aluno add numero varchar(10);
alter table aluno add complemento varchar(20);
alter table aluno add bairro varchar(100);
alter table aluno add cidade varchar(50);
alter table aluno add estado char(2);

update
	aluno
set
	logradouro = 'Rua da Lagoa Bonita',
	numero = '01',
	complemento = 'casa 01',
	bairro = 'Primavera',
	cidade = 'Rio de Janeiro',
	estado = 'RJ'

where
	id_aluno = 1;

    
update
	aluno
set
	logradouro = 'Avenida Doutor Onofre',
	numero = '200',
	complemento = 'apt 12',
	bairro = 'Palácio de Cristal',
	cidade = 'Curitiba',
	estado = 'PR'

where
	id_aluno = 2;
    
update
	aluno
set
	logradouro = 'Rua das Oliveiras',
	numero = '14',
	complemento = 'apt 34',
	bairro = 'Morumbi',
	cidade = 'São Paulo',
	estado = 'SP'
where
	id_aluno = 3;
    
update
	aluno
set
	logradouro = 'Avenida das Araras',
	numero = '77',
	complemento = 'casa 04',
	bairro = 'Boiadeiro',
	cidade = 'Campo Grande',
	estado = 'MS'
where
	id_aluno = 4;
    
update
	aluno
set
	logradouro = 'Rua doos políticos',
	numero = '171',
	complemento = 'casa 02',
	bairro = 'Lago Paranoa',
	cidade = 'Brasília',
	estado = 'DF'
where
	id_aluno = 5;
    
update
	aluno
set
	logradouro = 'Avenida das raposas',
	numero = '01',
	complemento = '14',
	bairro = 'Charitas',
	cidade = 'Niterói',
	estado = 'RJ'
where
	id_aluno = 6;
    
update
	aluno
set
	logradouro = 'Parcão gaucho chê',
	numero = '10',
	complemento = 'apt 22',
	bairro = 'Beira rio',
	cidade = 'Porto Alegre',
	estado = 'RS'
where
	id_aluno = 7;

update
	aluno
set
	logradouro = 'Rua da colina',
	numero = '13',
	complemento = 'casa 13',
	bairro = 'Campo Grande',
	cidade = 'Rio de Janeiro',
	estado = 'RJ'
where
	id_aluno = 8;

select * from aluno;

-- 1FN - Trabalhando com atributos Multivalorados

use universidade_u;

select * from aluno;

desc aluno;

select * from aluno;

alter table aluno modify column telefone varchar(60);

select * from aluno;

update aluno set telefone = '01 2222-3333, 01 2222-4444' where id_aluno = 1;
update aluno set telefone = '10 4444-4444, 10 4236-2799' where id_aluno = 5;

-- -----------------------------------------------------
-- Table `universidade_u`.`telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universidade_u`.`telefone` (
  `id_telefone` INT NOT NULL AUTO_INCREMENT,
  `numero` VARCHAR(20) NULL,
  `tipo` CHAR(3) NULL,
  PRIMARY KEY (`id_telefone`));

select * from telefone;

insert into telefone(numero, tipo)values('01 2222-3333', 'res');
insert into telefone(numero, tipo)values('01 2222-4444', 'com');

select * from telefone;

alter table aluno drop column telefone;

select * from aluno;

-- Cardinalidade 1:n - Modelagem Física

use universidade_u;

select * from aluno;

select id_aluno, nome from aluno;
select * from telefone;

alter table telefone add column fk_id_aluno int;

select * from telefone;

alter table telefone add constraint fk_aluno_telefone
foreign key(fk_id_aluno) references aluno(id_aluno);

select * from telefone;

desc telefone;

-- Cardinalidade 1:n - Inserindo registros relacionados

use universidade_u;

select * from aluno;

select * from telefone;

update telefone set fk_id_aluno = 1 where numero in ('01 2222-3333', '01 2222-4444');

select * from telefone;

insert into telefone(numero, tipo, fk_id_aluno) values('07 2123-4579', 'res', 2);
insert into telefone(numero, tipo, fk_id_aluno) values('07 2123-4579', 'res', 3);
insert into telefone(numero, tipo, fk_id_aluno) values('04 5221-0062', 'res', 4);
insert into telefone(numero, tipo, fk_id_aluno) values('10 4444-4444', 'res', 5);
insert into telefone(numero, tipo, fk_id_aluno) values('01 2214-0011', 'res', 6);
insert into telefone(numero, tipo, fk_id_aluno) values('08 5533-9917', 'res', 7);
insert into telefone(numero, tipo, fk_id_aluno) values('01 2133-1313', 'res', 8);

select * from telefone;

-- Cardinalidade de Relacionamentos 1:1

use universidade_u;

select * from aluno;

create table endereco (
	id_endereco int auto_increment primary key,
    logradouro varchar(100),
    numero varchar(10),
    complemento varchar(20),
    bairro varchar(100),
    cidade varchar(50),
    estado char(2),
    fk_id_aluno int
);

alter table endereco add constraint fk_aluno_enredeco
	foreign key (fk_id_aluno)
    references aluno (id_aluno);

select * from endereco;

desc endereco;

-- Cardinalidade 1:1 - Inserindo registros relacionados (com Insert/Select)

use universidade_u;

select * from aluno;

select * from endereco;

insert into endereco(logradouro, numero, complemento, bairro, cidade, estado, fk_id_aluno)
select 
	logradouro, numero, complemento, bairro, cidade, estado, id_aluno 
from
	aluno;
    
select * from endereco;

alter table aluno drop column endereco;
alter table aluno drop column logradouro;
alter table aluno drop column numero;
alter table aluno drop column complemento;
alter table aluno drop column bairro;
alter table aluno drop column cidade;
alter table aluno drop column estado;

select * from aluno;

select * from endereco where fk_id_aluno = 1;
select * from endereco where fk_id_aluno = 7;
select * from endereco where fk_id_aluno = 7 or fk_id_aluno = 5 or fk_id_aluno = 4;


-- Aumentando a complexidade do projeto

use universidade_u;

select * from aluno;

create table curso(
	id_curso int auto_increment primary key,
    descricao varchar(50)
);

select * from curso;

insert into curso(descricao)values('MySQL');
insert into curso(descricao)values('Python e Django');
insert into curso(descricao)values('Linux');
insert into curso(descricao)values('DevSecOps');
insert into curso(descricao)values('Java e SpringBoot 2');
insert into curso(descricao)values('Front End com React e Angular');
insert into curso(descricao)values('Dev Full Cycle');

select * from curso;

-- Cardinalidade n:n - Modelagem Física

use universidade_u;

create table aluno_curso(
	id_aluno_curso int auto_increment primary key,
    fk_id_aluno int,
    fk_id_curso int
);

select * from aluno_curso;

alter table aluno_curso add constraint fk_aluno_curso
foreign key(fk_id_aluno) references aluno(id_aluno);

alter table aluno_curso add constraint fk_curso_aluno
foreign key(fk_id_curso) references curso(id_curso);

desc aluno_curso;

--  Cardinalidade n:n - Inserindo registros relacionados

use universidade_u;

select * from aluno;
select * from curso;

insert into aluno_curso(fk_id_aluno, fk_id_curso)values(1, 1);
insert into aluno_curso(fk_id_aluno, fk_id_curso)values(1, 2);
insert into aluno_curso(fk_id_aluno, fk_id_curso)values(1, 5);
insert into aluno_curso(fk_id_aluno, fk_id_curso)values(2, 7);
insert into aluno_curso(fk_id_aluno, fk_id_curso)values(3, 3);
insert into aluno_curso(fk_id_aluno, fk_id_curso)values(4, 4);
insert into aluno_curso(fk_id_aluno, fk_id_curso)values(5, 2);
insert into aluno_curso(fk_id_aluno, fk_id_curso)values(5, 1);
insert into aluno_curso(fk_id_aluno, fk_id_curso)values(6, 5);
insert into aluno_curso(fk_id_aluno, fk_id_curso)values(7, 4);
insert into aluno_curso(fk_id_aluno, fk_id_curso)values(8, 6);

select * from aluno_curso;

-- Tipo de dado ENUM

use universidade_u;

select * from telefone;

alter table telefone drop column tipo;

select * from telefone;

alter table telefone add tipo enum('com', 'res' ,'cel');

select * from telefone;

update telefone set tipo ='res' where id_telefone = 5; 
update telefone set tipo ='com' where id_telefone = 6; 
update telefone set tipo ='res' where id_telefone = 7; 
update telefone set tipo ='res' where id_telefone = 8; 
update telefone set tipo ='res' where id_telefone = 9; 
update telefone set tipo ='res' where id_telefone = 10; 
update telefone set tipo ='res' where id_telefone = 11; 
update telefone set tipo ='res' where id_telefone = 12; 
update telefone set tipo ='res' where id_telefone = 13; 

select * from telefone;

insert into telefone(numero, tipo, fk_id_aluno) values('01 90000-0000', 'cel', 1);

select * from telefone;

-- NULL e NOT NULL

use universidade_u;

select * from telefone;

desc telefone;

alter table telefone modify column numero varchar(20) not null;

select * from telefone;

desc telefone;

select * from telefone where numero is null;

select * from telefone where numero is not null;

select * from telefone;

alter table telefone modify column tipo enum('res', 'com', 'cel') not null;

alter table telefone modify column fk_id_aluno int not null;

select * from telefone;

desc telefone;

select * from endereco;

desc endereco;

alter table endereco modify column logradouro varchar(100) not null;
alter table endereco modify column numero varchar(10) not null;
alter table endereco modify column bairro varchar(100) not null;
alter table endereco modify column cidade varchar(50) not null;
alter table endereco modify column estado char(2) not null;
alter table endereco modify column fk_id_aluno int not null;

desc endereco;

select * from aluno;

desc aluno;

alter table aluno modify column cpf varchar(14) not null;
alter table aluno modify column sexo char(1) not null;
alter table aluno modify column idade int not null;
alter table aluno modify column nome varchar(100) not null;
alter table aluno modify column email varchar(150) not null;
alter table aluno modify column data_inscricao_curso date not null;
alter table aluno modify column valor_pago_curso float(10,2) not null;
alter table aluno modify column ativo_sn int not null;

desc aluno;

select * from aluno;

select * from curso;

desc curso;

alter table curso modify column descricao varchar(50) not null;

desc curso;

select * from aluno_curso;

-- Unique Constraint

use universidade_u;

select * from aluno;

alter table aluno add constraint uc_aluno_cpf unique(cpf);

alter table aluno add constraint uc_aluno_email unique(email);

desc aluno;

-- Cardinalidade 1:1 - Garantindo a restrição de 1 para 1 com Unique Constraint

use universidade_u;

select * from aluno;
select * from endereco;

insert into endereco(logradouro, numero, complemento, bairro, cidade, estado, fk_id_aluno) values('Avenida das raposas', 34, null, 'Charitas', 'Niterói', 'RJ', 6);

select * from endereco;

delete from endereco where id_endereco = 16;

select * from endereco;

alter table endereco add constraint uc_endereco_fk_id_aluno unique(fk_id_aluno);

desc endereco; 
