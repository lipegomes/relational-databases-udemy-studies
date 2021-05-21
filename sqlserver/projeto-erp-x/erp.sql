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

/* Gera pedido parte 1 - Criando as estruturas de dados e populando tabelas */

create database erpx;
go

use erpx;
go

create table tb_cliente (
	id_cliente int primary key identity(1,1),
	razao_social varchar(200) not null,
	nome_fantasia varchar(100)
);
go

create table tb_item (
	id_item int primary key identity(1,1),
	descricao varchar(200) not null
);
go

create table tb_pedido (
	id_pedido int primary key identity(1,1),
	fk_id_cliente int not null,
	data_solicitacao datetime default getdate()	
);
go

alter table tb_pedido add constraint tb_pedido_cliente 
foreign key(fk_id_cliente) references tb_cliente(id_cliente);
go

create table tb_pedido_item (
	id_pedido_item int primary key identity(1,1),
	fk_id_pedido int not null,
	fk_id_item int not null,
	quantidade int not null
);
go

alter table tb_pedido_item add constraint tb_pedido_item_id_pedido 
foreign key(fk_id_pedido) references tb_pedido(id_pedido);
go

alter table tb_pedido_item add constraint tb_pedido_item_id_item 
foreign key(fk_id_item) references tb_item(id_item);
go

/* --------------------------------- */
insert into tb_cliente (razao_social, nome_fantasia)values('Franquia 1', 'Karla Chocolates');
insert into tb_cliente (razao_social, nome_fantasia)values('Franquia 2', 'Pietra Chocolates');
insert into tb_cliente (razao_social, nome_fantasia)values('Franquia 3', 'Krug Chocolates');
insert into tb_cliente (razao_social, nome_fantasia)values('Franquia 4', 'Petter Chocolates');
go

insert into tb_item (descricao)values('Trufa Lacreme Branco 13,5G');
insert into tb_item (descricao)values('Trufa Lanut Castanha de Caju 13,5G');
insert into tb_item (descricao)values('Trufa Lanut 30G');
insert into tb_item (descricao)values('Drageado Lanut Avelã 150G');
insert into tb_item (descricao)values('Chocolate Cremoso Receitas 100G');
insert into tb_item (descricao)values('Tablete Lacreme ao Leite 20G');
insert into tb_item (descricao)values('Pão de Mel Doce de Leite 50G');
insert into tb_item (descricao)values('Trufas Lacreme 160G');
insert into tb_item (descricao)values('Bombom tradicional 18G');
insert into tb_item (descricao)values('Caixa Presente tradicional 225G');
go

insert into tb_pedido (fk_id_cliente)values(1);
insert into tb_pedido (fk_id_cliente)values(3);
insert into tb_pedido (fk_id_cliente)values(4);
go

insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)values(1, 1, 110);
insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)values(1, 2, 150);
insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)values(1, 3, 90);
insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)values(1, 5, 50);
go

insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)values(2, 2, 50);
insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)values(2, 3, 50);
insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)values(2, 6, 50);
insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)values(2, 7, 120);
insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)values(2, 8, 110);
insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)values(2, 9, 400);
go

insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)values(3, 4, 200);
insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)values(3, 5, 180);
insert into tb_pedido_item (fk_id_pedido, fk_id_item, quantidade)values(3, 6, 150);
go

select * from tb_cliente;
select getdate() as 'data_atual';
