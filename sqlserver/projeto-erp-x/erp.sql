/* Entendo o processamento assíncrono e síncrono com a cláusula GO */

-- cláusula go (processamento síncrono)
-- MSSQL (processamento assíncrono)
-- Lote

--- disparando um lote de instruções sql (t-sql) que será processado de modoo assíncrono pelo sgbd --
create database bd_teste_1;
go
use bd_teste_1;
go
create table tb_teste_1(
	nome varchar(200)
); 
go
insert into tb_teste_1(nome)values('Pedro');
insert into tb_teste_1(nome)values('Fernanda');
go 4
select * from tb_teste_1;

--
