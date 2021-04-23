/* universidade_u_logico: */

CREATE TABLE ALUNO (
    idade int,
    sexo char(1),
    endereco text,
    telefone varchar(20),
    data_inscricao_curso date,
    valor_pago_curso float(10,2),
    nome varchar(25),
    ativo_sn int,
    Campo varchar(11),
    email varchar(150),
    cpf varchar(14),
    id_aluno int auto_increment PRIMARY KEY
);