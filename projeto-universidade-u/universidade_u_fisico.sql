/* universidade_u_logico: */

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

use universidade_u;

insert into aluno(
	sexo, idade, data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome
)values(
	'M', 29, '2021-04-14', '01 2222-3333', 998.99, 1, 'Rua da Lagoa Bonita, 01, casa 01 - Rio de Janeiro - RJ',
    'Filipe'
);

insert into aluno(
	sexo, idade, data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome
)values(
	'F', 55, '2021-02-10', '01 2123-4579', 898.99, 1, 'Avenida Doutor Onofre, 200, apt 12 - Curitiba - PR',
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

use universidade_u;

select * from aluno;

use universidade_u;

select nome, idade, telefone from aluno;