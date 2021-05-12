-- Reinserindo dados na Tabela alunos

use universidade_u;

select * from aluno;

insert
	into
	aluno(cpf,
	sexo,
	nome,
	email,
	ativo_sn,
	data_nascimento)
values( '000.000.000-01',
'M',
'James',
'james@foobar.com',
1,
'1989-05-01');

insert
	into
	aluno(cpf,
	sexo,
	nome,
	email,
	ativo_sn,
	data_nascimento)
values( '000.000.033-02',
'F',
'Mary',
'mary.cat@foobar.com',
1,
'2004-08-14');

insert
	into
	aluno(cpf,
	sexo,
	nome,
	email,
	ativo_sn,
	data_nascimento)
values( '000.000.011-00',
'M',
'John',
'johnjo@foobar.com',
1,
'1998-11-11');

insert
	into
	aluno(cpf,
	sexo,
	nome,
	email,
	ativo_sn,
	data_nascimento)
values( '000.000.000-45',
'F',
'Patricia',
'patpotato@foobar.com',
1,
'1985-06-28');

insert
	into
	aluno(cpf,
	sexo,
	nome,
	email,
	ativo_sn,
	data_nascimento)
values( '000.000.001-11',
'M',
'Robert',
'mr.robert@foobar.com',
1,
'1996-10-23');

insert
	into
	aluno(cpf,
	sexo,
	nome,
	email,
	ativo_sn,
	data_nascimento)
values( '000.000.066-12',
'F',
'Jennifer',
'jenni_lovelace@foobar.com',
1,
'2002-05-08');

insert
	into
	aluno(cpf,
	sexo,
	nome,
	email,
	ativo_sn,
	data_nascimento)
values( '000.000.000-88',
'M',
'Michael',
'michael@foobar.com',
1,
'1977-02-24');

insert
	into
	aluno(cpf,
	sexo,
	nome,
	email,
	ativo_sn,
	data_nascimento)
values( '000.000.000-67',
'F',
'Linda',
'lili@foobar.com',
1,
'2003-04-03');

-- Reinserindo endereços

use universidade_u;

select * from endereco;

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

select * from endereco;

-- Reinserindo cursos
use universidade_u;

select * from curso;

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

select * from curso;

-- Reinserindo telefones

use universidade_u;

select * from telefone;

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

-- Reinserindo aluno_curso

use universidade_u;

select * from aluno_curso;

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

-- Reinserindo dados em gasto

use universidade_u;

select * from gasto;

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

-- Inserindo novos alunos

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
