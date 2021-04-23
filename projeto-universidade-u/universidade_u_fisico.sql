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
