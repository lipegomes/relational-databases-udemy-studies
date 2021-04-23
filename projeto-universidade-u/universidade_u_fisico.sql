/* universidade_u_logico: */

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
