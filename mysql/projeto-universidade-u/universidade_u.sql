
-- Criar a tabela ALUNO
 create table ALUNO ( idade int,
sexo char(1),
endereco text,
telefone varchar(20),
data_inscricao_curso date,
valor_pago_curso float(10,
2),
nome varchar(25),
ativo_sn int );
-- usar o SCHEMA universidade_u
 use universidade_u;
-- Insert - Inserindo registros em tabelas
 insert
	into
	aluno( sexo,
	idade,
	data_inscricao_curso,
	telefone,
	valor_pago_curso,
	ativo_sn,
	endereco,
	nome )
values( 'M',
29,
'2021-04-14',
'01 2222-3333',
698.00,
1,
'Rua da Lagoa Bonita, 01, casa 01 - Rio de Janeiro - RJ',
'Filipe' );

insert
	into
	aluno( sexo,
	idade,
	data_inscricao_curso,
	telefone,
	valor_pago_curso,
	ativo_sn,
	endereco,
	nome )
values( 'F',
55,
'2021-02-10',
'07 2123-4579',
898.99,
1,
'Avenida Doutor Onofre, 200, apt 12 - Curitiba - PR',
'Louise' );

insert
	into
	aluno( sexo,
	idade,
	data_inscricao_curso,
	telefone,
	valor_pago_curso,
	ativo_sn,
	endereco,
	nome )
values( 'F',
19,
'2020-07-03',
'04 5221-0062',
998.99,
1,
'Rua das Oliveiras, 14, apt 34 - São Paulo - SP',
'Katarina' );

insert
	into
	aluno( sexo,
	idade,
	data_inscricao_curso,
	telefone,
	valor_pago_curso,
	ativo_sn,
	endereco,
	nome )
values( 'M',
23,
'2019-01-22',
'03 3215-7744',
700.00,
0,
'Avenida das Araras, 77, casa 04 - Campo Grande - MS',
'Pedro' );

insert
	into
	aluno( sexo,
	idade,
	data_inscricao_curso,
	telefone,
	valor_pago_curso,
	ativo_sn,
	endereco,
	nome )
values( 'M',
37,
'2019-01-22',
'10 4444-4444',
600.00,
1,
'Rua dos políticos, 171, casa 02 - Brasília - DF',
'Emmanuel' );

insert
	into
	aluno( sexo,
	idade,
	data_inscricao_curso,
	telefone,
	valor_pago_curso,
	ativo_sn,
	endereco,
	nome )
values( 'F',
16,
'2021-04-24',
'01 2214-0011',
600.00,
1,
'Avenida das Raposas, 14, apt 10 - Niterói - RJ',
'Joanna' );

insert
	into
	aluno( sexo,
	idade,
	data_inscricao_curso,
	telefone,
	valor_pago_curso,
	ativo_sn,
	endereco,
	nome )
values( 'F',
28,
'2021-04-24',
'08 5533-9917',
600.00,
1,
'Parcão Gaucho Chê, 10, apt 22 - Porto Alegre - RS',
'Barbara' );

insert
	into
	aluno( sexo,
	idade,
	data_inscricao_curso,
	telefone,
	valor_pago_curso,
	ativo_sn,
	endereco,
	nome )
values( 'M',
18,
'2021-04-24',
'01 2133-1313',
600.00,
1,
'Rua da colina, 13, casa 13 - Rio de Janeiro - RJ',
'Nikolas' );
-- Select - Selecionando registro em tabelas
 use universidade_u;

select
	*
from
	aluno;

select
	nome,
	idade,
	telefone
from
	aluno;
-- Select - Filtros com operadores de comparação
 use universidade_u;

select
	*
from
	aluno
where
	sexo = 'F';

select
	*
from
	aluno
where
	valor_pago_curso < 900;

select
	*
from
	aluno
where
	valor_pago_curso > 900;

select
	*
from
	aluno
where
	valor_pago_curso <= 900;

select
	*
from
	aluno;

select
	*
from
	aluno
where
	valor_pago_curso >= 900;

select
	*
from
	aluno
where
	ativo_sn = '1';

select
	*
from
	aluno
where
	ativo_sn = '0';
-- Select - Filtros com operadores Lógicos
 use universidade_u;

select
	*
from
	aluno;

select
	*
from
	aluno
where
	sexo = 'M'
	and ativo_sn = 1
	and valor_pago_curso < 1000;

select
	*
from
	aluno
where
	sexo = 'F'
	or idade >= 20;
-- Select - Filtros com o operador Between
 use universidade_u;

select
	*
from
	aluno
where
	idade between 20 and 60;

select
	*
from
	aluno
where
	data_inscricao_curso between '2021-01-01' and '2021-04-21';
-- Select - Filtros com o operadore In
 use universidade_u;

select
	*
from
	aluno
where
	nome = 'Filipe'
	or nome = 'Katarina'
	or nome = 'Pedro';

select
	*
from
	aluno
where
	nome in ('Filipe', 'Katarina', 'Pedro');

select
	*
from
	aluno
where
	nome not in ('Filipe', 'Katarina', 'Pedro');
-- Select - Filtros com o operador Like
 use universidade_u;

select
	*
from
	aluno
where
	nome like '%e';

select
	*
from
	aluno
where
	nome like '%li%';

select
	*
from
	aluno
where
	nome like 'k%';

select
	*
from
	aluno
where
	nome like 'f%e';

select
	*
from
	aluno
where
	nome like '_ed';

select
	*
from
	aluno
where
	nome like '_edr_';

select
	*
from
	aluno
where
	nome like '_____e';

select
	*
from
	aluno
where
	nome like '%n_';
-- Select - Ordenando o resultado
 use universidade_u;

select
	*
from
	aluno;

select
	*
from
	aluno
order by
	nome asc;

select
	*
from
	aluno
order by
	nome desc;

select
	*
from
	aluno
order by
	valor_pago_curso desc;

select
	*
from
	aluno
order by
	sexo asc,
	idade desc;
-- Update - Atualizando registros de tabelas
 use universidade_u;

select
	*
from
	aluno;

update
	aluno
set
	ativo_sn = 0
where
	nome = 'Katarina';

update
	aluno
set
	valor_pago_curso = 600
where
	nome = 'Filipe';

update
	aluno
set
	telefone = '07 2123-4579'
where
	nome = 'Louise';
-- Delete - Deletando registros de tabelas
 use universidade_u;

select
	*
from
	aluno;

delete
from
	aluno
where
	ativo_sn = 0;

delete
from
	aluno
where
	idade in (40, 55)
	or sexo = 'F';

delete
from
	aluno;
-- Descrevendo e alterando a estrutura de tabelas
 use universidade_u;

select
	*
from
	aluno;

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

select
	*
from
	aluno;

update
	aluno
set
	cpf = '000.000.000-01'
where
	nome = 'Filipe';

update
	aluno
set
	cpf = '000.000.000-02'
where
	nome = 'Louise';

update
	aluno
set
	cpf = '000.000.000-03'
where
	nome = 'Katarina';

update
	aluno
set
	cpf = '000.000.000-04'
where
	nome = 'Pedro';

update
	aluno
set
	cpf = '000.000.000-05'
where
	nome = 'Emmanuel';

update
	aluno
set
	cpf = '000.000.000-06'
where
	nome = 'Joanna';

update
	aluno
set
	cpf = '000.000.000-07'
where
	nome = 'Barbara';

update
	aluno
set
	cpf = '000.000.000-08'
where
	nome = 'Nikolas';

update
	aluno
set
	email = 'filipe@foobar.com'
where
	nome = 'Filipe';

update
	aluno
set
	email = 'louise@foobar.com'
where
	nome = 'Louise';

update
	aluno
set
	email = 'katarina@foobar.com'
where
	nome = 'Katarina';

update
	aluno
set
	email = 'pedro@foobar.com'
where
	nome = 'Pedro';

update
	aluno
set
	email = 'emmanuel@foobar.com'
where
	nome = 'Emmanuel';

update
	aluno
set
	email = 'joanna@foobar.com'
where
	nome = 'Joanna';

update
	aluno
set
	email = 'barbara@foobar.com'
where
	nome = 'Barbara';

update
	aluno
set
	email = 'nikolas@foobar.com'
where
	nome = 'Nikolas';

desc aluno;

alter table aluno modify cpf varchar(14) primary key;

alter table aluno drop cpf;

desc aluno;

alter table aluno add column cpf varchar(14);

desc aluno;

alter table aluno add id_aluno int primary key auto_increment;

desc aluno;

select
	*
from
	aluno
where
	id_aluno = 1;
--  1FN - Trabalhando com atributos Compostos
 use universidade_u;

select
	*
from
	aluno;

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

select
	*
from
	aluno;
-- 1FN - Trabalhando com atributos Multivalorados
 use universidade_u;

select
	*
from
	aluno;

desc aluno;

select
	*
from
	aluno;

alter table aluno modify column telefone varchar(60);

select
	*
from
	aluno;

update
	aluno
set
	telefone = '01 2222-3333, 01 2222-4444'
where
	id_aluno = 1;

update
	aluno
set
	telefone = '10 4444-4444, 10 4236-2799'
where
	id_aluno = 5;
-- -----------------------------------------------------
-- Table `universidade_u`.`telefone`
-- -----------------------------------------------------
 create table if not exists `universidade_u`.`telefone` ( `id_telefone` INT not null auto_increment,
`numero` VARCHAR(20) null,
`tipo` CHAR(3) null,
primary key (`id_telefone`));

select
	*
from
	telefone;

insert
	into
	telefone(numero,
	tipo)
values('01 2222-3333',
'res');

insert
	into
	telefone(numero,
	tipo)
values('01 2222-4444',
'com');

select
	*
from
	telefone;

alter table aluno drop column telefone;

select
	*
from
	aluno;
-- Cardinalidade 1:n - Modelagem Física
 use universidade_u;

select
	*
from
	aluno;

select
	id_aluno,
	nome
from
	aluno;

select
	*
from
	telefone;

alter table telefone add column fk_id_aluno int;

select
	*
from
	telefone;

alter table telefone add constraint fk_aluno_telefone foreign key(fk_id_aluno) references aluno(id_aluno);

select
	*
from
	telefone;

desc telefone;
-- Cardinalidade 1:n - Inserindo registros relacionados
 use universidade_u;

select
	*
from
	aluno;

select
	*
from
	telefone;

update
	telefone
set
	fk_id_aluno = 1
where
	numero in ('01 2222-3333', '01 2222-4444');

select
	*
from
	telefone;

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('07 2123-4579',
'res',
2);

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('07 2123-4579',
'res',
3);

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('04 5221-0062',
'res',
4);

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('10 4444-4444',
'res',
5);

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('01 2214-0011',
'res',
6);

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('08 5533-9917',
'res',
7);

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('01 2133-1313',
'res',
8);

select
	*
from
	telefone;
-- Cardinalidade de Relacionamentos 1:1
 use universidade_u;

select
	*
from
	aluno;

create table endereco ( id_endereco int auto_increment primary key,
logradouro varchar(100),
numero varchar(10),
complemento varchar(20),
bairro varchar(100),
cidade varchar(50),
estado char(2),
fk_id_aluno int );

alter table endereco add constraint fk_aluno_enredeco foreign key (fk_id_aluno) references aluno (id_aluno);

select
	*
from
	endereco;

desc endereco;
-- Cardinalidade 1:1 - Inserindo registros relacionados (com Insert/Select)
 use universidade_u;

select
	*
from
	aluno;

select
	*
from
	endereco;

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
select
	logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	id_aluno
from
	aluno;

select
	*
from
	endereco;

alter table aluno drop column endereco;

alter table aluno drop column logradouro;

alter table aluno drop column numero;

alter table aluno drop column complemento;

alter table aluno drop column bairro;

alter table aluno drop column cidade;

alter table aluno drop column estado;

select
	*
from
	aluno;

select
	*
from
	endereco
where
	fk_id_aluno = 1;

select
	*
from
	endereco
where
	fk_id_aluno = 7;

select
	*
from
	endereco
where
	fk_id_aluno = 7
	or fk_id_aluno = 5
	or fk_id_aluno = 4;
-- Aumentando a complexidade do projeto
 use universidade_u;

select
	*
from
	aluno;

create table curso( id_curso int auto_increment primary key,
descricao varchar(50) );

select
	*
from
	curso;

insert
	into
	curso(descricao)
values('MySQL');

insert
	into
	curso(descricao)
values('Python e Django');

insert
	into
	curso(descricao)
values('Linux');

insert
	into
	curso(descricao)
values('DevSecOps');

insert
	into
	curso(descricao)
values('Java e SpringBoot 2');

insert
	into
	curso(descricao)
values('Front End com React e Angular');

insert
	into
	curso(descricao)
values('Dev Full Cycle');

select
	*
from
	curso;
-- Cardinalidade n:n - Modelagem Física
 use universidade_u;

create table aluno_curso( id_aluno_curso int auto_increment primary key,
fk_id_aluno int,
fk_id_curso int );

select
	*
from
	aluno_curso;

alter table aluno_curso add constraint fk_aluno_curso foreign key(fk_id_aluno) references aluno(id_aluno);

alter table aluno_curso add constraint fk_curso_aluno foreign key(fk_id_curso) references curso(id_curso);

desc aluno_curso;
--  Cardinalidade n:n - Inserindo registros relacionados
 use universidade_u;

select
	*
from
	aluno;

select
	*
from
	curso;

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(1,
1);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(1,
2);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(1,
5);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(2,
7);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(3,
3);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(4,
4);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(5,
2);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(5,
1);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(6,
5);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(7,
4);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(8,
6);

select
	*
from
	aluno_curso;
-- Tipo de dado ENUM
 use universidade_u;

select
	*
from
	telefone;

alter table telefone drop column tipo;

select
	*
from
	telefone;

alter table telefone add tipo enum('com',
'res' ,
'cel');

select
	*
from
	telefone;

update
	telefone
set
	tipo = 'res'
where
	id_telefone = 5;

update
	telefone
set
	tipo = 'com'
where
	id_telefone = 6;

update
	telefone
set
	tipo = 'res'
where
	id_telefone = 7;

update
	telefone
set
	tipo = 'res'
where
	id_telefone = 8;

update
	telefone
set
	tipo = 'res'
where
	id_telefone = 9;

update
	telefone
set
	tipo = 'res'
where
	id_telefone = 10;

update
	telefone
set
	tipo = 'res'
where
	id_telefone = 11;

update
	telefone
set
	tipo = 'res'
where
	id_telefone = 12;

update
	telefone
set
	tipo = 'res'
where
	id_telefone = 13;

select
	*
from
	telefone;

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('01 90000-0000',
'cel',
1);

select
	*
from
	telefone;
-- NULL e NOT NULL
 use universidade_u;

select
	*
from
	telefone;

desc telefone;

alter table telefone modify column numero varchar(20) not null;

select
	*
from
	telefone;

desc telefone;

select
	*
from
	telefone
where
	numero is null;

select
	*
from
	telefone
where
	numero is not null;

select
	*
from
	telefone;

alter table telefone modify column tipo enum('res',
'com',
'cel') not null;

alter table telefone modify column fk_id_aluno int not null;

select
	*
from
	telefone;

desc telefone;

select
	*
from
	endereco;

desc endereco;

alter table endereco modify column logradouro varchar(100) not null;

alter table endereco modify column numero varchar(10) not null;

alter table endereco modify column bairro varchar(100) not null;

alter table endereco modify column cidade varchar(50) not null;

alter table endereco modify column estado char(2) not null;

alter table endereco modify column fk_id_aluno int not null;

desc endereco;

select
	*
from
	aluno;

desc aluno;

alter table aluno modify column cpf varchar(14) not null;

alter table aluno modify column sexo char(1) not null;

alter table aluno modify column idade int not null;

alter table aluno modify column nome varchar(100) not null;

alter table aluno modify column email varchar(150) not null;

alter table aluno modify column data_inscricao_curso date not null;

alter table aluno modify column valor_pago_curso float(10,
2) not null;

alter table aluno modify column ativo_sn int not null;

desc aluno;

select
	*
from
	aluno;

select
	*
from
	curso;

desc curso;

alter table curso modify column descricao varchar(50) not null;

desc curso;

select
	*
from
	aluno_curso;
-- Unique Constraint
 use universidade_u;

select
	*
from
	aluno;

alter table aluno add constraint uc_aluno_cpf unique(cpf);

alter table aluno add constraint uc_aluno_email unique(email);

desc aluno;
-- Cardinalidade 1:1 - Garantindo a restrição de 1 para 1 com Unique Constraint
 use universidade_u;

select
	*
from
	aluno;

select
	*
from
	endereco;

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Avenida das raposas',
34,
null,
'Charitas',
'Niterói',
'RJ',
6);

select
	*
from
	endereco;

delete
from
	endereco
where
	id_endereco = 16;

select
	*
from
	endereco;

alter table endereco add constraint uc_endereco_fk_id_aluno unique(fk_id_aluno);

desc endereco;
--  Select - Trabalhando com funções de agregação: Count, Max, Min, Avg e Sum
 use universidade_u;

select
	*
from
	aluno;

select
	*
from
	endereco;

/*count*/
select
	*
from
	aluno;

select
	count(*)
from
	aluno;

select
	count(distinct nome)
from
	aluno;

/*max*/
select
	max(valor_pago_curso)
from
	aluno;

select
	max(valor_pago_curso)
from
	aluno
where
	idade > 30;

/*min*/
select
	min(valor_pago_curso)
from
	aluno;

select
	min(valor_pago_curso)
from
	aluno
where
	idade < 30;

select
	min(valor_pago_curso)
from
	aluno
where
	ativo_sn != 0;

/*avg*/
select
	avg(valor_pago_curso)
from
	aluno;

/*sum*/
select
	sum(valor_pago_curso)
from
	aluno;

select
	max(valor_pago_curso),
	min(valor_pago_curso),
	sum(valor_pago_curso)
from
	aluno;

select
	count(*)
from
	aluno
where
	sexo = 'F';

select
	count(*)
from
	aluno
where
	sexo = 'M';
-- Select - Trabalhando com alias (apelidando colunas)
 use universidade_u;

select
	*
from
	aluno;

select
	max(valor_pago_curso) as valor_max,
	min(valor_pago_curso) valor_min,
	sum(valor_pago_curso) as total_soma
from
	aluno;

select
	min(valor_pago_curso) as valor_pago
from
	aluno
where
	ativo_sn != 0;
-- Select - Trabalhando com as funções Ceil, Floor, Truncate e Round
 use universidade_u;

select
	*
from
	aluno;

/* ceil - arredonda o valor para cima */
select
	ceil (25.3) as valor;

/* floor - arredonda o valor para baixo */
select
	floor(99.99) as valor;

/* truncate - trunca a fração */
select
	truncate(11.5789, 1) as valor;

/* round - arredondamento: < 5 para baixo, > 5 para cima */
select
	round(67.899, 2) as valor1;

select
	round(9.12, 1) as valor2;

select
	*
from
	aluno;

select
	nome,
	ceil(valor_pago_curso) as valor
from
	aluno
where
	id_aluno in (1, 4, 7, 8);

select
	round(avg(valor_pago_curso), 2) as media_valores_pago
from
	aluno
where
	id_aluno in(2, 3, 5, 6);
-- Select - Agrupando registros (Group by)
 use universidade_u;

select
	*
from
	aluno;

select
	nome
from
	aluno
group by
	nome;

select
	nome,
	count(*) as repeticao_nome_agrupamento
from
	aluno
group by
	nome;

select
	*
from
	aluno;

select
	ativo_sn,
	count(*) repeticao_ativo_sn_grupamento
from
	aluno
group by
	ativo_sn;

select
	ativo_sn,
	nome,
	count(*) as agrupamento
from
	aluno
group by
	ativo_sn,
	nome;

select
	ativo_sn,
	round(avg(valor_pago_curso), 2) as media_agrupamento
from
	aluno
group by
	ativo_sn;

select
	sexo,
	avg(idade) as media_idade
from
	aluno
group by
	sexo;

select
	sexo,
	min(idade) as menor_idade,
	max(idade) as maior_idade
from
	aluno
group by
	sexo;

select
	idade
from
	aluno
where
	sexo = 'f';

select
	idade
from
	aluno
where
	sexo = 'm';

select
	estado,
	count(*) total_por_estado
from
	endereco
group by
	estado;
-- Projeto Universidade U - Atendendo aos demais requisitos do cliente
 use universidade_u;

/* estados com mais alunos - alunos por estado */
select
	estado,
	count(*) as total
from
	endereco
group by
	estado
order by
	total desc;

/* cursos mais vendidos - alunos por curso */
select
	fk_id_curso,
	count(*) as total
from
	aluno_curso
group by
	fk_id_curso;

select
	distinct(fk_id_curso)
from
	aluno_curso;
-- Recriando banco dados
 CREATE SCHEMA IF NOT EXISTS `universidade_u` DEFAULT CHARACTER SET
utf8 ;

USE `universidade_u` ;

CREATE TABLE IF NOT EXISTS `universidade_u`.`aluno` ( `id_aluno` INT NOT NULL AUTO_INCREMENT,
`cpf` VARCHAR(14) NOT NULL,
`sexo` CHAR(1) NOT NULL,
`idade` INT NOT NULL,
`nome` VARCHAR(100) NOT NULL,
`email` VARCHAR(150) NOT NULL,
`data_inscricao_curso` DATE NOT NULL,
`valor_pago_curso` FLOAT(10,
2) NOT NULL,
`ativo_sn` INT NOT NULL,
PRIMARY KEY (`id_aluno`),
UNIQUE INDEX `uc_aluno_cpf` (`cpf` ASC) VISIBLE,
UNIQUE INDEX `uc_aluno_email` (`email` ASC) VISIBLE);

CREATE TABLE IF NOT EXISTS `universidade_u`.`curso` ( `id_curso` INT NOT NULL AUTO_INCREMENT,
`descricao` VARCHAR(50) NOT NULL,
PRIMARY KEY (`id_curso`));

CREATE TABLE IF NOT EXISTS `universidade_u`.`aluno_curso` ( `id_aluno_curso` INT NOT NULL AUTO_INCREMENT,
`fk_id_aluno` INT NULL DEFAULT NULL,
`fk_id_curso` INT NULL DEFAULT NULL,
PRIMARY KEY (`id_aluno_curso`),
INDEX `fk_aluno_curso` (`fk_id_aluno` ASC) VISIBLE,
INDEX `fk_curso_aluno` (`fk_id_curso` ASC) VISIBLE,
CONSTRAINT `fk_aluno_curso` FOREIGN KEY (`fk_id_aluno`) REFERENCES `universidade_u`.`aluno` (`id_aluno`),
CONSTRAINT `fk_curso_aluno` FOREIGN KEY (`fk_id_curso`) REFERENCES `universidade_u`.`curso` (`id_curso`));

CREATE TABLE IF NOT EXISTS `universidade_u`.`endereco` ( `id_endereco` INT NOT NULL AUTO_INCREMENT,
`logradouro` VARCHAR(100) NOT NULL,
`numero` VARCHAR(10) NOT NULL,
`complemento` VARCHAR(20) NULL DEFAULT NULL,
`bairro` VARCHAR(100) NOT NULL,
`cidade` VARCHAR(50) NOT NULL,
`estado` CHAR(2) NOT NULL,
`fk_id_aluno` INT NOT NULL,
PRIMARY KEY (`id_endereco`),
UNIQUE INDEX `uc_endereco_fk_id_aluno` (`fk_id_aluno` ASC) VISIBLE,
CONSTRAINT `fk_aluno_enredeco` FOREIGN KEY (`fk_id_aluno`) REFERENCES `universidade_u`.`aluno` (`id_aluno`));

CREATE TABLE IF NOT EXISTS `universidade_u`.`telefone` ( `id_telefone` INT NOT NULL AUTO_INCREMENT,
`numero` VARCHAR(20) NOT NULL,
`fk_id_aluno` INT NOT NULL,
`tipo` ENUM('res',
'com',
'cel') NOT NULL,
PRIMARY KEY (`id_telefone`),
INDEX `fk_aluno_telefone` (`fk_id_aluno` ASC) VISIBLE,
CONSTRAINT `fk_aluno_telefone` FOREIGN KEY (`fk_id_aluno`) REFERENCES `universidade_u`.`aluno` (`id_aluno`));

select
	*
from
	aluno;

select
	*
from
	endereco;

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Rua da Lagoa Bonita',
1,
'casa 01',
'Primavera',
'Rio de Janeiro',
'RJ',
1);

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Avenida Doutor Onofre',
200,
'apt 12',
'Palácio de Cristal',
'Curitiba',
'PR',
2);

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Rua das Oliveiras',
14,
'apt 34',
'Morumbi',
'São Paulo',
'SP',
3);

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Avenida das Araras',
77,
'casa azul',
'Boiadeiro',
'Campo Grande',
'MS',
4);

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Rua dos políticos',
171,
'casa 02',
'Lago Paranoa',
'Brasilia',
'DF',
5);

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Avenida das raposas',
34,
null,
'Charitas',
'Niterói',
'RJ',
6);

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Parcão gaucho chê',
10,
'apt 22',
'Beira Rio',
'Porto Alegre',
'RS',
7);

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Rua da Colina',
13,
'casa 13',
'Campo Grande',
'Rio de Janeiro',
'RJ',
8);

desc aluno;

use universidade_u;

select
	*
from
	aluno;

insert
	into
	aluno(cpf,
	sexo,
	idade,
	nome,
	email,
	data_inscricao_curso,
	valor_pago_curso,
	ativo_sn)
values( '000.000.000-01',
'M',
32,
'James',
'james@foobar.com',
'2021-04-14',
250,
1);

insert
	into
	aluno(cpf,
	sexo,
	idade,
	nome,
	email,
	data_inscricao_curso,
	valor_pago_curso,
	ativo_sn)
values( '000.000.033-02',
'F',
17,
'Mary',
'mary.cat@foobar.com',
'2020-02-03',
820,
1);

insert
	into
	aluno(cpf,
	sexo,
	idade,
	nome,
	email,
	data_inscricao_curso,
	valor_pago_curso,
	ativo_sn)
values( '000.000.011-00',
'M',
23,
'John',
'johnjo@foobar.com',
'2019-05-12',
835,
0);

insert
	into
	aluno(cpf,
	sexo,
	idade,
	nome,
	email,
	data_inscricao_curso,
	valor_pago_curso,
	ativo_sn)
values( '000.000.000-45',
'F',
36,
'Patricia',
'patpotato@foobar.com',
'2020-08-04',
600,
1);

insert
	into
	aluno(cpf,
	sexo,
	idade,
	nome,
	email,
	data_inscricao_curso,
	valor_pago_curso,
	ativo_sn)
values( '000.000.001-11',
'M',
25,
'Robert',
'mr.robert@foobar.com',
'2021-01-26',
700,
1);

insert
	into
	aluno(cpf,
	sexo,
	idade,
	nome,
	email,
	data_inscricao_curso,
	valor_pago_curso,
	ativo_sn)
values( '000.000.066-12',
'F',
19,
'Jennifer',
'jenni_lovelace@foobar.com',
'2021-03-01',
820,
1);

insert
	into
	aluno(cpf,
	sexo,
	idade,
	nome,
	email,
	data_inscricao_curso,
	valor_pago_curso,
	ativo_sn)
values( '000.000.000-88',
'M',
44,
'Michael',
'michael@foobar.com',
'2019-6-23',
650,
0);

insert
	into
	aluno(cpf,
	sexo,
	idade,
	nome,
	email,
	data_inscricao_curso,
	valor_pago_curso,
	ativo_sn)
values( '000.000.000-67',
'F',
18,
'Linda',
'lili@foobar.com',
'2021-01-11',
250,
1);

select
	*
from
	aluno;

select
	*
from
	endereco;

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Rua da Lagoa Bonita',
1,
'casa 01',
'Primavera',
'Rio de Janeiro',
'RJ',
1);

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Avenida Doutor Onofre',
200,
'apt 12',
'Palácio de Cristal',
'Curitiba',
'PR',
2);

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Rua das Oliveiras',
14,
'apt 34',
'Morumbi',
'São Paulo',
'SP',
3);

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Avenida das Araras',
77,
'casa azul',
'Boiadeiro',
'Campo Grande',
'MS',
4);

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Rua dos políticos',
171,
'casa 02',
'Lago Paranoa',
'Brasilia',
'DF',
5);

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Avenida das raposas',
34,
null,
'Charitas',
'Niterói',
'RJ',
6);

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Parcão gaucho chê',
10,
'apt 22',
'Beira Rio',
'Porto Alegre',
'RS',
7);

insert
	into
	endereco(logradouro,
	numero,
	complemento,
	bairro,
	cidade,
	estado,
	fk_id_aluno)
values('Rua da Colina',
13,
'casa 13',
'Campo Grande',
'Rio de Janeiro',
'RJ',
8);

select
	*
from
	aluno_curso;

select
	*
from
	telefone;

select
	*
from
	curso;

insert
	into
	curso(descricao)
values('Desenvolvimento Mobile');

insert
	into
	curso(descricao)
values('Lógica de programação');

insert
	into
	curso(descricao)
values('Python e Django para Web');

insert
	into
	curso(descricao)
values('Data Science');

insert
	into
	curso(descricao)
values('Machine Learning');

insert
	into
	curso(descricao)
values('Back end com Java e Kotlin');

insert
	into
	curso(descricao)
values('Front End com React, Angular');

insert
	into
	curso(descricao)
values('Linux Specialist');

insert
	into
	curso(descricao)
values('DevSecOps');

select
	*
from
	curso;

select
	*
from
	aluno_curso;

select
	*
from
	telefone;

select
	*
from
	curso;

insert
	into
	curso(descricao)
values('Desenvolvimento Mobile');

insert
	into
	curso(descricao)
values('Lógica de programação');

insert
	into
	curso(descricao)
values('Python e Django para Web');

insert
	into
	curso(descricao)
values('Data Science');

insert
	into
	curso(descricao)
values('Machine Learning');

insert
	into
	curso(descricao)
values('Back end com Java e Kotlin');

insert
	into
	curso(descricao)
values('Front End com React, Angular');

insert
	into
	curso(descricao)
values('Linux Specialist');

insert
	into
	curso(descricao)
values('DevSecOps');

select
	*
from
	curso;

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('01 90001-0000',
'cel',
1);

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('01 0002-0123',
'com',
1);

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('02 90002-0220',
'cel',
2);

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('03 90011-0100',
'cel',
3);

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('04 90010-0004',
'cel',
4);

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('05 90000-0505',
'cel',
5);

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('06 90000-6660',
'cel',
6);

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('07 90000-0571',
'cel',
7);

insert
	into
	telefone(numero,
	tipo,
	fk_id_aluno)
values('08 90090-0987',
'cel',
8);

select
	*
from
	telefone;

select
	*
from
	aluno_curso;

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(1,
1);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(1,
2);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(1,
5);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(2,
7);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(3,
3);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(4,
4);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(5,
2);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(5,
1);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(6,
5);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(7,
4);

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso)
values(8,
6);
-- Criando a tabela de controle de gastos mensais
use universidade_u;

create table gasto(
	id_gasto int primary key auto_increment,
	ano int not null,
	tipo enum('previsto', 'realizado') not null,
	jan float(10,2),
	fev float(10,2),
	mar float(10,2),
	abr float(10,2),
	mai float(10,2),
	jun float(10,2),
	jul float(10,2),
	ago float(10,2),
	`set` float(10,2),
	`out` float(10,2),
	nov float(10,2),
	dez float(10,2)
);

select * from gasto;
--Select - Projetando os resultados de operações aritméticas
use universidade_u;

/* soma */
select
	(27 + 72) as total_soma;

/* subtracao */
select
	(12 - 44) as total_sub;

/* multiplicacao */
select
	(7 * 7) as total_mult;

/* divisao */
select
	(256 / 23.5) as total_div;

select
	*
from
	gasto;

insert
	into
	gasto(ano,
	tipo,
	jan,
	fev,
	mar,
	abr,
	mai,
	jun,
	jul,
	ago,
	`set`,
	`out`,
	nov,
	dez)
values('2020',
'previsto',
18000,
17000,
19000,
20000,
17000,
18000,
18500,
18500,
18000,
17500,
18000,
17000);

insert
	into
	gasto(ano,
	tipo,
	jan)
values('2020',
'realizado',
18353.20);

update
	gasto
set
	fev = 17555.55
where
	id_gasto = 2;

update
	gasto
set
	mar = 19435.73
where
	id_gasto = 2;

update
	gasto
set
	abr = 22753.12
where
	id_gasto = 2;

update
	gasto
set
	mai = 16198.12
where
	id_gasto = 2;

update
	gasto
set
	jun = 17451.88
where
	id_gasto = 2;

update
	gasto
set
	jul = 18975.40
where
	id_gasto = 2;

update
	gasto
set
	ago = 19163.84
where
	id_gasto = 2;

update
	gasto
set
	`set` = 18132.56
where
	id_gasto = 2;

update
	gasto
set
	`out` = 17667.91
where
	id_gasto = 2;

update
	gasto
set
	nov = 17936.33
where
	id_gasto = 2;

update
	gasto
set
	dez = 17125.88
where
	id_gasto = 2;

select * from gasto;

select
	truncate((jan + fev + mar + abr + mai + jun + jul + ago + `set` + `out` + nov + dez), 2) as total_realizado_anual
from
	gasto
where
	id_gasto = 2;

select
	truncate((jan + fev + mar + abr + mai + jun + jul + ago + `set` + `out` + nov + dez) / 12 , 2) as total_media_anual
from
	gasto
where
	id_gasto = 2;
--  (Subquerys) Criando os indicadores de controle de gastos mensais
use universidade_u;

select
	*
from
	gasto;

select
	id_gasto
from
	gasto
where
	ano = 2020
	and tipo = 'realizado';

select
	id_gasto
from
	gasto
where
	ano = 2020
	and tipo = 'previsto';

select
	*
from
	gasto;

select
	id_gasto
from
	gasto
where
	ano = 2020
	and tipo = 'realizado';

select
	id_gasto
from
	gasto
where
	ano = 2020
	and tipo = 'previsto';

select
	jan
from
	gasto
where
	id_gasto = 1;

select
	jan
from
	gasto
where
	id_gasto = 2;

select
	`set`
from
	gasto
where
	id_gasto = (
	select
		id_gasto
	from
		gasto
	where
		ano = 2020
		and tipo = 'previsto');

select
	`set`
from
	gasto
where
	id_gasto = (
	select
		id_gasto
	from
		gasto
	where
		ano = 2020
		and tipo = 'realizado');

select
	(
	select
		`set`
	from
		gasto
	where
		id_gasto = (
		select
			id_gasto
		from
			gasto
		where
			ano = 2020
			and tipo = 'previsto')) as previsto_set,
	(
	select
		`set`
	from
		gasto
	where
		id_gasto = (
		select
			id_gasto
		from
			gasto
		where
			ano = 2020
			and tipo = 'realizado')) as realizado_set;
		
select
	(
	select
		dez
	from
		gasto
	where
		id_gasto = (
		select
			id_gasto
		from
			gasto
		where
			ano = 2020
			and tipo = 'previsto')) as previsto_set,
	(
	select
		dez
	from
		gasto
	where
		id_gasto = (
		select
			id_gasto
		from
			gasto
		where
			ano = 2020
			and tipo = 'realizado')) as realizado_set;
