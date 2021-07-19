
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

--  Armazenando a data de nascimento
use universidade_u;

alter table aluno add data_nascimento date;

desc aluno;

select * from aluno;

update aluno set data_nascimento = '1989-05-01' where id_aluno = 1;
update aluno set data_nascimento = '2004-08-14' where id_aluno = 2;
update aluno set data_nascimento = '1998-11-11' where id_aluno = 3;
update aluno set data_nascimento = '1985-06-28' where id_aluno = 4;
update aluno set data_nascimento = '1996-10-23' where id_aluno = 5;
update aluno set data_nascimento = '2002-05-08' where id_aluno = 6;
update aluno set data_nascimento = '1977-02-24' where id_aluno = 7;
update aluno set data_nascimento = '2003-04-03' where id_aluno = 8;

alter table aluno modify column data_nascimento date not null;

desc aluno;

-- Select - Trabalhando com funções de data
use universidade_u;

/* recuperar a data atual */
select curdate();
select current_date();

/* recuperar a data e horas atuais */
select now();

/* formatando datas
 * %d - dia dos mês (de 01 até 31)
 * %D - dia dos mês com sufixo em ingles 
 * %m - mês (de 1 a 12)
 * %M - nome do mês em inglês
 * %y - ano (dois dígitos)
 * %Y - ano (quatro dígitos)
 *  */
select date_format(curdate(), '%d/%m/%Y');
select date_format(curdate(), '%d-%m-%Y');
select date_format(curdate(), '%d-%m-%y');
select date_format(curdate(), '%D-%M-%y');
select date_format(curdate(), '%D-%M-%Y');

/* extrair parte de data
 * day, month, year */
select extract(day from curdate());
select extract(month from curdate());
select extract(year from curdate());

select extract(month from '1912-05-26');
select extract(year from '1912-05-26');
select extract(day from '1912-05-26');

/* adicionando intervalos de tempo as datas
 * second, minute, hour, day, month, year */
select date_add('1956-11-05', interval 4 day);
select date_add('1956-11-05', interval 9 month);
select date_add('1956-11-05', interval 65 year);

select date_add('1956-11-05  21:45:26', interval 125 second);
select date_add('1956-11-05  21:45:26', interval 30 minute);
select date_add('1956-11-05  21:45:26', interval 48 hour);

select now() as data_hora_atuais, date_add(now(), interval 8 hour) as data_hora_ajustada;

/* calculo de dias entre data */
select '1918-06-17' as data_nascimento, curdate() as data_atual, datediff(curdate(), '1918-06-17') as diferenca_dias;

/* retorna o número de meses entre duas datas */
select period_diff('202109', '200109');

/* retorna o dia do ano de uma determinada data */
select dayofyear('2021-05-03');
select dayofyear('2021-12-31');

-- Calculando a idade com base na data atual e data de nascimento (TimeStamp)
use universidade_u;

/* timestamp (marca temporal) início à partir da meia-noite do dia 01/01/1970 */
select
	timestampdiff(YEAR, '1991-09-18', curdate());
	
select * from aluno;

select
	data_nascimento,
	curdate() as data_atual,
	idade,
	timestampdiff(YEAR, data_nascimento, curdate()) as idade_dinamica
	from
	aluno;

alter table aluno drop idade;

select * from aluno;

select
	data_nascimento,
	curdate() as data_atual,
	timestampdiff(YEAR, data_nascimento, curdate()) as idade
	from
	aluno;

-- Selecionando aniversariantes do dia
use universidade_u;

select
	id_aluno,
	nome,
	data_nascimento,
	extract(month from data_nascimento) as data_nascimento_mes,
	extract(day from data_nascimento) as data_nascimento_dia,
	curdate() as data_atual,
	extract(month from curdate()) as data_atual_mes,
	extract(day from curdate()) as data_atual_dia,
	timestampdiff(year, data_nascimento, curdate()) as idade
from
	aluno;

select
	id_aluno,
	nome,
	data_nascimento,
	extract(month from data_nascimento) as data_nascimento_mes,
	extract(day from data_nascimento) as data_nascimento_dia,
	curdate() as data_atual,
	extract(month from curdate()) as data_atual_mes,
	extract(day from curdate()) as data_atual_dia,
	timestampdiff(year, data_nascimento, curdate()) as idade
from
	aluno
where
	extract(month from data_nascimento) = extract(month from curdate());

select
	id_aluno,
	nome,
	data_nascimento,
	extract(month from data_nascimento) as data_nascimento_mes,
	extract(day from data_nascimento) as data_nascimento_dia,
	curdate() as data_atual,
	extract(month from curdate()) as data_atual_mes,
	extract(day from curdate()) as data_atual_dia,
	timestampdiff(year, data_nascimento, curdate()) as idade
from
	aluno
where
	extract(month from data_nascimento) = extract(month from curdate())
	and extract(day from data_nascimento) = extract(day from curdate());
	

select * from aluno;

update aluno set data_nascimento = '1989-05-03' where id_aluno = 1;

select
	id_aluno,
	nome,
	data_nascimento,
	extract(month from data_nascimento) as data_nascimento_mes,
	extract(day from data_nascimento) as data_nascimento_dia,
	curdate() as data_atual,
	extract(month from curdate()) as data_atual_mes,
	extract(day from curdate()) as data_atual_dia,
	timestampdiff(year, data_nascimento, curdate()) as idade
from
	aluno
where
	extract(month from data_nascimento) = extract(month from curdate())
	and extract(day from data_nascimento) = extract(day from curdate());

--  Refactoring da data de inscrição no curso e valor pago - parte 1
use universidade_u;

select data_inscricao_curso, valor_pago_curso from aluno;

alter table aluno_curso add data_inscricao_curso date;
alter table aluno_curso add valor_pago_curso float(10, 2);

select * from aluno_curso;

--  Refactoring da data de inscrição no curso e valor pago - parte 2
use universidade_u;

/* query de update com uma subquery para recuperar os dados */
select
	id_aluno,
	data_inscricao_curso,
	valor_pago_curso
from
	aluno
where
	id_aluno = 1;

update
	aluno_curso
set
	data_inscricao_curso = (
	select
		data_inscricao_curso
	from
		aluno
	where
		id_aluno = 1),
	valor_pago_curso = (
	select
		valor_pago_curso
	from
		aluno
	where
		id_aluno = 1)
where
	fk_id_aluno = 1;

update
	aluno_curso
set
	data_inscricao_curso = (
	select
		data_inscricao_curso
	from
		aluno
	where
		id_aluno = 2),
	valor_pago_curso = (
	select
		valor_pago_curso
	from
		aluno
	where
		id_aluno = 2)
where
	fk_id_aluno = 2;

update
	aluno_curso
set
	data_inscricao_curso = (
	select
		data_inscricao_curso
	from
		aluno
	where
		id_aluno = 3),
	valor_pago_curso = (
	select
		valor_pago_curso
	from
		aluno
	where
		id_aluno = 3)
where
	fk_id_aluno = 3;

update
	aluno_curso
set
	data_inscricao_curso = (
	select
		data_inscricao_curso
	from
		aluno
	where
		id_aluno = 4),
	valor_pago_curso = (
	select
		valor_pago_curso
	from
		aluno
	where
		id_aluno = 4)
where
	fk_id_aluno = 4;

update
	aluno_curso
set
	data_inscricao_curso = (
	select
		data_inscricao_curso
	from
		aluno
	where
		id_aluno = 5),
	valor_pago_curso = (
	select
		valor_pago_curso
	from
		aluno
	where
		id_aluno = 5)
where
	fk_id_aluno = 5;

update
	aluno_curso
set
	data_inscricao_curso = (
	select
		data_inscricao_curso
	from
		aluno
	where
		id_aluno = 6),
	valor_pago_curso = (
	select
		valor_pago_curso
	from
		aluno
	where
		id_aluno = 6)
where
	fk_id_aluno = 6;

update
	aluno_curso
set
	data_inscricao_curso = (
	select
		data_inscricao_curso
	from
		aluno
	where
		id_aluno = 7),
	valor_pago_curso = (
	select
		valor_pago_curso
	from
		aluno
	where
		id_aluno = 7)
where
	fk_id_aluno = 7;

update
	aluno_curso
set
	data_inscricao_curso = (
	select
		data_inscricao_curso
	from
		aluno
	where
		id_aluno = 8),
	valor_pago_curso = (
	select
		valor_pago_curso
	from
		aluno
	where
		id_aluno = 8)
where
	fk_id_aluno = 8;

select * from aluno_curso;

/* remover informações da tabela aluno */
alter table aluno drop column data_inscricao_curso;
alter table aluno drop column valor_pago_curso;

select* from aluno;

-- Default – Valores padrões
use universidade_u;

select
	*
from
	aluno;

alter table aluno modify column ativo_sn int default 1;

desc aluno;

select
	*
from
	aluno;

insert
	into
	aluno(cpf,
	sexo,
	nome,
	email,
	data_nascimento)
values('000.000.003-22',
'M',
'Ohara',
'oha@foobar.com',
'1983-11-08');

select
	*
from
	aluno;

select
	*
from
	aluno;

insert
	into
	aluno(cpf,
	sexo,
	nome,
	email,
	ativo_sn,
	data_nascimento)
values('000.000.040-04',
'F',
'Lucy',
'lilu@foobar.com',
0,
'1985-06-22');

select * from aluno;

select * from aluno_curso;

insert into aluno_curso(fk_id_aluno, fk_id_curso, data_inscricao_curso, valor_pago_curso)
values(9, 7, '2021-03-19', 820);

insert into aluno_curso(fk_id_aluno, fk_id_curso, data_inscricao_curso, valor_pago_curso)
values(10, 3, '2019-06-03', 835);

select * from aluno_curso;

alter table aluno_curso modify column data_inscricao_curso datetime default current_timestamp;

select * from aluno_curso;

select * from aluno;

insert
	into
	aluno(cpf,
	sexo,
	nome,
	email,
	data_nascimento)
values('000.000.001-83',
'M',
'José',
'zezinho@foobar.com',
'1990-07-12');

select * from aluno;

insert
	into
	aluno_curso(fk_id_aluno,
	fk_id_curso,
	valor_pago_curso)
values(11,
5,
820);

select * from aluno_curso;

-- Primary Key Simples e Primary Key Composta
use universidade_u;

alter table aluno_curso drop column id_aluno_curso;

select * from aluno_curso;

alter table aluno_curso add constraint pk_aluno_curso primary key(fk_id_aluno,
fk_id_curso, data_inscricao_curso);

desc aluno_curso;

-- Criando a tabela "projeto_funcionario" e inserindo registros iniciais
use universidade_u;

create table projeto_funcionario(
	codigo_projeto int,
	matricula_funcionario int,
	nome_projeto varchar(100) not null,
	nome_funcionario varchar(50) not null,
	funcao_funcinario varchar(50) not null,
	telefone_funcionario varchar(20) not null,
	data_criacao_projeto datetime default current_timestamp,
	horas_estimadas int not null,
	horas_realizadas int
);

select * from projeto_funcionario;

alter table projeto_funcionario add constraint pk_projeto_funcionario
primary key(codigo_projeto, matricula_funcionario);

desc projeto_funcionario;

alter table projeto_funcionario change column funcao_funcinario funcao_funcionario varchar(50) not null;

select * from projeto_funcionario;

insert
	into
	projeto_funcionario( codigo_projeto,
	matricula_funcionario,
	nome_projeto,
	nome_funcionario,
	funcao_funcionario,
	telefone_funcionario,
	horas_estimadas
	)
values( 1,
129,
'Matricula Online',
'Stefanie',
'Analista de Atendimento',
'01 90000-0555',
200);

insert
	into
	projeto_funcionario( codigo_projeto,
	matricula_funcionario,
	nome_projeto,
	nome_funcionario,
	funcao_funcionario,
	telefone_funcionario,
	horas_estimadas
	)
values( 1,
39,
'Matricula Online',
'Marcia',
'Gerente de Atendimento',
'01 90000-0111',
100
);

insert
	into
	projeto_funcionario( codigo_projeto,
	matricula_funcionario,
	nome_projeto,
	nome_funcionario,
	funcao_funcionario,
	telefone_funcionario,
	horas_estimadas
	)
values( 1,
95,
'Matricula Online',
'Pedro',
'Desenvolvedor Sênior',
'01 90000-0222',
500
);

insert
	into
	projeto_funcionario( codigo_projeto,
	matricula_funcionario,
	nome_projeto,
	nome_funcionario,
	funcao_funcionario,
	telefone_funcionario,
	horas_estimadas
	)
values( 2,
184,
'Economia de Papel',
'Lana',
'Analista de Qualidade',
'01 90000-0333',
200
);

insert
	into
	projeto_funcionario( codigo_projeto,
	matricula_funcionario,
	nome_projeto,
	nome_funcionario,
	funcao_funcionario,
	telefone_funcionario,
	horas_estimadas
	)
values( 3,
78,
'Notas Online',
'Pierre',
'Analista Administravivo Sênior',
'01 90000-0444',
150
);

select * from projeto_funcionario;

-- Analisando as anomalias de inserção, atualização e remoção de registros
use universidade_u;

select * from projeto_funcionario;

/* anomalias de inserção (redundância de dados, dados inconsistentes) */
insert into projeto_funcionario(
	codigo_projeto, matricula_funcionario, nome_projeto,
	nome_funcionario, funcao_funcionario, telefone_funcionario, horas_estimadas
)values(
	2, 312, 'Economia de Papel',
	'Jonas', 'Analista Financeiro', '01 90000-2163', 25)
;

desc projeto_funcionario;

/* anomalias de exclusão (perder registros importantes) */
delete from projeto_funcionario where codigo_projeto = 3 and matricula_funcionario = 78;

/* anomalias na atualização (informações inconsistentes) */
update projeto_funcionario set nome_projeto = 'Inscrição Online' where codigo_projeto = 1 and matricula_funcionario = 95;

--  Refactoring da tabela "projeto_funcionario" parte 1
use universidade_u;

create table projeto(
	id_codigo int auto_increment,
	data_criacao datetime default current_timestamp,
	nome varchar(100) not null,
	constraint pk_projeto primary key(id_codigo )
);

select * from projeto;
desc projeto;

create table funcionario(
	id_matricula int auto_increment,
	nome varchar(50) not null,
	funcao varchar(50) not null,
	telefone varchar(20),
	constraint pk_funcionario primary key(id_matricula)
);

select * from funcionario;
desc funcionario;

-- Refactoring da tabela "projeto_funcionario" parte 2
use universidade_u;

desc funcionario;

create table projeto_funcionario2(
	fk_id_codigo int,
	fk_id_matricula int,
	horas_estimadas int not null,
	horas_realizadas int,
	constraint pk_projeto_funcionario
	primary key(fk_id_codigo, fk_id_matricula)
);

desc projeto_funcionario2;

alter table projeto_funcionario2 add constraint
foreign key(fk_id_codigo) references projeto(id_codigo);

alter table projeto_funcionario2 add constraint
foreign key(fk_id_matricula) references funcionario(id_matricula);

select * from projeto_funcionario;

-- Refactoring da tabela "projeto_funcionario" parte 3
use universidade_u;

select * from projeto_funcionario;

select * from funcionario;

select
	matricula_funcionario,
	nome_funcionario,
	funcao_funcionario,
	telefone_funcionario
from
	projeto_funcionario;

select * from projeto_funcionario;

insert into projeto_funcionario(
	codigo_projeto, matricula_funcionario, nome_projeto,
	nome_funcionario, funcao_funcionario, telefone_funcionario, horas_estimadas
)values(
	2, 39, 'Economia de Papel', 'Marcia', 'Gerente de Atendimento', '01 90000-0111', 150
);


/* query para migração de registro de funcionários */
insert into funcionario(id_matricula, nome, funcao, telefone)
select distinct
	matricula_funcionario,
	nome_funcionario,
	funcao_funcionario,
	telefone_funcionario
from
	projeto_funcionario;

select * from funcionario;

select * from projeto;
/* query para migração de registro de projeto */
select distinct
	codigo_projeto,
	data_criacao_projeto,
	nome_projeto
from
	projeto_funcionario;

select * from projeto_funcionario where codigo_projeto =2 order by data_criacao_projeto limit 1;

update projeto_funcionario set data_criacao_projeto = '2021-05-12 14:19:12' where codigo_projeto =2;

insert into projeto(id_codigo, data_criacao, nome)
select distinct
	codigo_projeto,
	data_criacao_projeto,
	nome_projeto
from
	projeto_funcionario;

select * from projeto;
select * from funcionario;

/* registro de relacionamentos entre as tabelas */
select
	codigo_projeto, matricula_funcionario, horas_estimadas, horas_realizadas
from
	projeto_funcionario;

insert into projeto_funcionario2(
	fk_id_codigo, fk_id_matricula, horas_estimadas, horas_realizadas
)
select
	codigo_projeto, matricula_funcionario, horas_estimadas, horas_realizadas
from
	projeto_funcionario;

select * from projeto_funcionario2;

drop table projeto_funcionario;

/* renomea a tabela */
rename table projeto_funcionario2 to projeto_funcionario;

select * from projeto_funcionario;

-- Criando a tabela "disciplina" - Modelagem Conceitual, Lógica e Física
use universidade_u;

create table disciplina(
	id_disciplina int auto_increment,
	descricao varchar(50) not null,
	carga_horaria int,
	codigo_professor int,
	nome_professor varchar(50),
	email_professor varchar(100),
	fk_id_curso int,
	constraint pk_id_disciplina primary key(id_disciplina)
);

desc disciplina;

alter table disciplina add constraint fk_curso_disciplina
foreign key(fk_id_curso) references curso(id_curso);

desc disciplina;

-- Analisando as anomalias de inserção, atualização e remoção de registros
use universidade_u;

select * from curso;

select * from funcionario;

select * from disciplina;

insert into disciplina (
	descricao, carga_horaria, codigo_professor,
	nome_professor, email_professor, fk_id_curso
)values(
	'Desenvolvimento Mobile', 150, 192, 'Carla', 'carla@universidadeu.com', 1
);

insert into disciplina (
	descricao, carga_horaria, codigo_professor,
	nome_professor, email_professor, fk_id_curso
)values(
	'Lógica de programação', 40, 82, 'Josefo', 'josefo@universidadeu.com', 2
);

insert into disciplina (
	descricao, carga_horaria, codigo_professor,
	nome_professor, email_professor, fk_id_curso
)values(
	'Python e Django para Web', 150, 68, 'Pedro', 'pedro@universidadeu.com', 3
);

insert into disciplina (
	descricao, carga_horaria, codigo_professor,
	nome_professor, email_professor, fk_id_curso
)values(
	'Desenvolvimento Data Science', 200, 381, 'Anna', 'anna@universidadeu.com', 4
);

insert into disciplina (
	descricao, carga_horaria, codigo_professor,
	nome_professor, email_professor, fk_id_curso
)values(
	'Machine Learning', 200, 380, 'Yasuki', 'yasuki@universidadeu.com', 5
);

insert into disciplina (
	descricao, carga_horaria, codigo_professor,
	nome_professor, email_professor, fk_id_curso
)values(
	'Back end com Java e Kotlin', 125, 99, 'Mark', 'mark@universidadeu.com', 6
);

insert into disciplina (
	descricao, carga_horaria, codigo_professor,
	nome_professor, email_professor, fk_id_curso
)values(
	'Front End com React, Angular', 130, 301, 'Jessica', 'jessica@universidadeu.com', 7
);

insert into disciplina (
	descricao, carga_horaria, codigo_professor,
	nome_professor, email_professor, fk_id_curso
)values(
	'Linux Specialist', 200, 50, 'Brian', 'brian@universidadeu.com', 8
);

insert into disciplina (
	descricao, carga_horaria, codigo_professor,
	nome_professor, email_professor, fk_id_curso
)values(
	'DevSecOps', 120, 344, 'Gadriel', 'gadriel@universidadeu.com', 9
);

select * from disciplina;

/* anomalias de inserção (redundancia de dados, dados inconsistentes) */
insert into disciplina (
	descricao, carga_horaria, codigo_professor,
	nome_professor, email_professor, fk_id_curso
)values(
	'Anomalia', 120, 5, 'Gadriel', 'gadriel05@universidadeu.com', 9
);

/* anomalias de exclusão (perder registros importantes) */
select * from disciplina where codigo_professor = 344 and descricao = 'DevSecOps';
delete from disciplina where codigo_professor = 344 and descricao = 'DevSecOps';

select * from disciplina;

-- Refactoring da tabela "disciplina" parte 1
use universidade_u;

create table professor(
	id_professor int auto_increment,
	nome varchar(50) not null,
	email varchar(100),
	constraint pk_professor primary key(id_professor)
);

desc professor;

select * from disciplina;

select distinct
	codigo_professor,
	count(*) as repeticoes,
	nome_professor,
	email_professor
from
	disciplina
group by
	codigo_professor;

insert into professor(
	id_professor,
	nome,
	email
)
select distinct
	codigo_professor,
	nome_professor,
	email_professor
from
	disciplina;
	
select * from professor;

select * from disciplina;
alter table disciplina drop column nome_professor;
alter table disciplina drop column email_professor;

select * from disciplina;

-- Refactoring da tabela "disciplina" parte 2
use universidade_u;

select * from disciplina;

alter table disciplina rename column codigo_professor to fk_id_codigo_professor;
alter table disciplina rename column fk_id_codigo_professor to fk_id_professor;

select * from disciplina;

alter table disciplina add constraint fk_disciplina_professor
foreign key(fk_id_professor) references professor(id_professor);

desc disciplina;

-- Dicionário de dados - SGBD (Show Tables e Show Create Table)
use universidade_u;

/*
 * 1) descrever as tabelas do banco
 * 2) descrever oos atributos das tabelas
 * 3) descrever os relacionamentos entre as tabelas
 * */

show tables;

show create table aluno;

/* CREATE TABLE `aluno` (
  `id_aluno` int NOT NULL AUTO_INCREMENT,
  `cpf` varchar(14) NOT NULL,
  `sexo` char(1) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `ativo_sn` int DEFAULT '1',
  `data_nascimento` date NOT NULL,
  PRIMARY KEY (`id_aluno`),
  UNIQUE KEY `uc_aluno_cpf` (`cpf`),
  UNIQUE KEY `uc_aluno_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 */

show create table telefone;

/* CREATE TABLE `telefone` (
  `id_telefone` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(20) NOT NULL,
  `fk_id_aluno` int NOT NULL,
  `tipo` enum('res','com','cel') NOT NULL,
  PRIMARY KEY (`id_telefone`),
  KEY `fk_aluno_telefone` (`fk_id_aluno`),
  CONSTRAINT `fk_aluno_telefone` FOREIGN KEY (`fk_id_aluno`) REFERENCES `aluno` (`id_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 */

-- Relacionamentos: Nomeação e tipos Unário, Binário e Ternário
use universidade_u;

select * from funcionario;

alter table funcionario add column fk_id_matricula_supervisor int;

alter table funcionario add constraint fk_funcionario_supervisor
foreign key(fk_id_matricula_supervisor) references funcionario(id_matricula);

desc funcionario;

update funcionario set fk_id_matricula_supervisor = 39 where id_matricula = 129;

select * from funcionario;

insert into funcionario(
	nome, funcao, telefone
)values(
	'Sebastian', 'Gerente Sênior TI', '01 90000-0004'
);

update funcionario set fk_id_matricula_supervisor = 313 where id_matricula = 95;

select * from funcionario;

update funcionario set fk_id_matricula_supervisor = 39 where id_matricula in (184, 312);

select * from funcionario;

select * from funcionario where fk_id_matricula_supervisor = 39;

-- Zerando os registros de uma tabela com Truncate
use universidade_u;

select * from gasto;

truncate table gasto;

select * from gasto;

select * from telefone;

-- Ajustando o valor do auto_increment
use universidade_u;

select * from funcionario;

insert into funcionario(nome, funcao, telefone)
values('Pirlo', 'Chief Executive Officer', '01 90000-1000');

insert into funcionario(id_matricula, nome, funcao, telefone)
values(1, 'Mark', 'Board Member', '01 90000-3310');
update funcionario set id_matricula = 2 where id_matricula = 315;

select max(id_matricula) + 1 from funcionario;

alter table funcionario auto_increment = 3;

-- Modificando a ordem de uma coluna na tabela
use universidade_u;

select * from aluno;

desc aluno;

show create table aluno;

alter table aluno modify `ativo_sn` int DEFAULT '1' after data_nascimento;

select * from aluno;

desc aluno;

--Populando tabelas com massas de dados de testes
use universidade_u;

select * from professor;

desc professor;

INSERT INTO `professor` (`nome`,`email`) VALUES ("Price","ac.libero.nec@placerat.co.uk"),("Breanna","non.egestas.a@dictumeueleifend.org");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Denton","sed.facilisis@Praesenteu.com"),("Edan","gravida.sit.amet@accumsan.co.uk");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Shannon","lorem@Duissit.org"),("Jordan","diam@ametrisusDonec.org");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Tallulah","elit@Nulla.com"),("Debra","eget@MaurisnullaInteger.co.uk");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Jael","urna.Ut@purusaccumsaninterdum.com"),("Robert","lacus.Quisque.imperdiet@id.edu");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Brock","Nullam.nisl@Sedpharetrafelis.com"),("Raven","lectus.justo@egestashendreritneque.ca");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Chloe","vestibulum@in.ca"),("Hakeem","et.magnis@liberoMorbiaccumsan.net");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Brianna","elit.Aliquam.auctor@quisurnaNunc.edu"),("Martha","orci@id.com");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Mariam","pede@et.net"),("Axel","Nam@Nullam.co.uk");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Scott","fames.ac.turpis@urnaUt.com"),("Reece","ipsum.primis@diamluctuslobortis.net");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Dalton","tempor.bibendum@magna.com"),("Brody","sagittis.semper@magnamalesuadavel.co.uk");
INSERT INTO `professor` (`nome`,`email`) VALUES ("John","risus.at@bibendumullamcorper.com"),("Nasim","sagittis@malesuada.edu");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Zephania","mauris@consectetuermauris.ca"),("Basia","mauris@lectuspede.com");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Elliott","luctus@Lorem.edu"),("Iola","nec.urna@egetmetusIn.com");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Wang","placerat@Maecenasmifelis.com"),("Alden","Nunc.mauris@nonlobortis.org");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Stacey","in.magna.Phasellus@nonummyipsum.org"),("Acton","mi.lacinia@ultricies.org");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Gillian","aliquet@pedePraesenteu.org"),("Nehru","ut.eros@feugiatnon.co.uk");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Aurora","malesuada.fringilla@aarcu.ca"),("Tiger","semper.erat.in@quisdiamPellentesque.ca");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Steel","eget.laoreet@Namtempordiam.ca"),("Brendan","est.tempor.bibendum@ultricies.org");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Stacy","fringilla.purus@euismodenimEtiam.net"),("Herman","vitae.sodales.nisi@vulputateposuerevulputate.com");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Tanner","augue.porttitor.interdum@velmaurisInteger.edu"),("Kaitlin","orci.tincidunt.adipiscing@amet.ca");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Margaret","natoque@mauris.ca"),("Aladdin","ligula.Nullam@infelisNulla.net");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Naida","eget.mollis.lectus@velit.co.uk"),("Steel","dictum@mauris.org");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Jenette","pellentesque@estmaurisrhoncus.net"),("Harper","luctus.ipsum@velit.co.uk");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Ishmael","consectetuer.adipiscing.elit@vulputate.org"),("Maia","convallis.dolor.Quisque@mifelis.org");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Tana","at.fringilla.purus@ullamcorpereu.net"),("Walter","dictum.placerat.augue@elitdictum.co.uk");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Acton","adipiscing.lacus@adipiscing.edu"),("Ryder","Phasellus.fermentum.convallis@nisiCum.com");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Yardley","nec.eleifend@Praesenteudui.edu"),("Clio","egestas.lacinia@urna.edu");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Wing","Aliquam.nec@mauris.edu"),("Sheila","parturient.montes@tortor.org");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Ariel","mauris.ut.mi@aceleifendvitae.co.uk"),("Honorato","non@semmollisdui.co.uk");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Wyoming","Proin@vulputateeuodio.ca"),("Germaine","iaculis.aliquet@pedenecante.com");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Nolan","ornare@utnulla.org"),("Angelica","dis.parturient.montes@eratvelpede.edu");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Sylvia","Nam.nulla@velitAliquamnisl.ca"),("Jeremy","dui.nec@mollis.edu");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Maisie","nec.eleifend@semPellentesqueut.co.uk"),("Larissa","montes@temporestac.ca");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Dillon","lobortis.nisi@atauctor.co.uk"),("Amethyst","molestie@nonmagna.co.uk");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Sonia","vitae.risus@pretiumnequeMorbi.com"),("Burke","ante.iaculis.nec@sapienimperdietornare.edu");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Neil","cursus.diam@Integer.net"),("Brenden","lectus.sit.amet@nibh.com");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Holly","euismod@Loremipsum.net"),("Melvin","ullamcorper.eu.euismod@blanditNamnulla.co.uk");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Remedios","interdum.libero@egetlaoreetposuere.com"),("Zia","tellus.faucibus.leo@Proinnisl.net");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Geraldine","nascetur@aliquamiaculis.ca"),("Yoshio","ornare.lectus@luctuslobortisClass.ca");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Keegan","sed.dui@augue.org"),("Prescott","blandit.Nam@risus.ca");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Jacqueline","mauris.erat.eget@convallisdolor.co.uk"),("Benedict","non@eget.org");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Shannon","eleifend.non@nislelementum.com"),("Kameko","lorem.vehicula@gravidasitamet.co.uk");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Wing","enim.nisl@maurisutmi.ca"),("Kasper","vitae@Donecporttitor.ca");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Raymond","consectetuer@Sed.ca"),("Jared","semper.tellus.id@blandit.net");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Mercedes","ut@elementum.edu"),("Deacon","ullamcorper.magna@auctor.net");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Indira","In@et.net"),("Philip","sit@Quisquepurus.com");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Jonah","vulputate.mauris.sagittis@interdumSedauctor.ca"),("Ezekiel","felis@non.edu");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Brennan","Nunc@DonecegestasDuis.net"),("Tobias","ac.eleifend.vitae@massaQuisqueporttitor.edu");
INSERT INTO `professor` (`nome`,`email`) VALUES ("Kennedy","Curabitur@purus.net"),("Liberty","lacus.Nulla@et.co.uk");

select * from professor;

-- JOIN - Junção à esquerda (LEFT JOIN)

use universidade_u;

show tables;

select * from aluno;
select * from telefone;

/*
 * Left Join
 * 
 * Juntar informações em uma única consulta
 * 
 */
select
	*
from
	aluno left join telefone on (aluno.id_aluno  = telefone.fk_id_aluno);

 select
	*
from
	aluno left join telefone on (aluno.id_aluno  = telefone.fk_id_aluno)
where
	sexo = 'F';

select * from curso;
select * from disciplina;
select * from professor;

select
	*
from
	curso left join disciplina on ( curso.id_curso = disciplina.fk_id_curso)
	left join professor on (disciplina.fk_id_professor = professor.id_professor);

select
	*
from
	curso left join disciplina on ( curso.id_curso = disciplina.fk_id_curso)
	left join professor on (disciplina.fk_id_professor = professor.id_professor)
where
	id_curso = 2;


-- Seleção, projeção, junções, apelidos e ambiguidades

use universidade_u;

select /* projeção */
	id_curso,
	c.descricao as curso,
	id_disciplina,
	d.descricao as disciplina,
	id_professor,
	nome,
	now() as data_atual
from
	curso as c left join disciplina as d on ( c.id_curso = d.fk_id_curso)
	left join professor on (d.fk_id_professor = professor.id_professor)
where /* seleção de um subconjunto */
	id_curso = 4;

-- JOIN - Junção à direita (RIGHT JOIN)

select * from curso;
select * from disciplina;

select
	*
from
	curso as c left join disciplina d on (c.id_curso = d.fk_id_curso);
	
select
	*
from
	curso as c right join disciplina d on (c.id_curso = d.fk_id_curso);

 select
 	*
 from
 	telefone as t right join aluno as a on (t.fk_id_aluno = a.id_aluno);

-- JOIN - Junção interna (INNER JOIN)

select * from disciplina as d inner join professor as p on (d.fk_id_professor = p.id_professor);

select * from endereco as e inner join aluno as a on (e.fk_id_aluno = a.id_aluno);
	
select * from telefone as t inner join aluno as a on (t.fk_id_aluno = a.id_aluno);

-- UNION e UNION ALL - Unindo resultados

/*
 * union - distinct
 * union - não faz distinct
 * /

/* mesmo número de colunas */
select 100, 500
union all
select 100, 300
union all
select 500, 700;

/* mesma ordem */
select 100 as c1, 200 as c2, 'palmito' as c3
union all
select 500, 'pastel', 800;

/* union (distinct) x union all */
select 'morango' as c1
union
select 'uva'
union all
select 'morango'
union all
select 'abacaxi'
order by c1;

/* enviar um e-mail para todos os alunos e professores */
select email, 'aluno' from aluno where sexo = 'f'
union /*distinct*/
select email, 'professor' from professor where id_professor in (2,4,6,8)
order by email;

-- JOIN - Junção externa completa com UNION (FULL OUTER JOIN)
select
    *
from
    disciplina as d 
    left join professor as p on (d.fk_id_professor = p.id_professor)
union /* faz a união entre os registros das consultas (distinct) */
select
    *
from
    disciplina as d 
    right join professor as p on (d.fk_id_professor = p.id_professor);

-- Criando e chamando a nossa primeira Procedure

use universidade_u;

delimiter $$
create procedure proc_oi()
begin
	select 'O procedimento executado está armazenado no banco de dados' as msg;
end
$$

CALL proc_oi();

-- Consultando, alterando e removendo Procedures

/* listar procedures do bd */
show procedure status where Db = 'universidade_u';

/* mostrar o conteúdo da procedure */
show create procedure universidade_u.proc_oi;

/* alterar a procudure -> remover a procedure e criar novamente */

drop procedure universidade_u.proc_oi;

CREATE PROCEDURE `proc_oi`()
begin
	select 'Oi, a procedure foi modificada.' as msg;
end

call proc_oi();
