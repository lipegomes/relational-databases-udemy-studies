-- Listando, criando e removendo bancos de dados

select datname from pg_database;

create database mercado_y;

select datname from pg_database;

drop database mercado_y;

select datname from pg_database;

-- Listando, criando, atualizado e removendo Esquemas (Schemas)

select schema_name from information_schema.schemata;
select nspname from pg_catalog.pg_namespace;

create schema produto;
alter schema produto rename to produto_abcd;
drop schema produto_abcd;

create schema produto;
create schema estoque;
create schema auditoria;
create schema venda;

-- Tables parte 1 - Listando, criando e removendo tabelas

/* listar banco de dados */
select datname from pg_database;

/* listar schema/namespaces */
select schema_name from information_schema.schemata where catalog_name = 'mercado_y';

/* listar tabelas*/
select * from information_schema.tables where table_catalog = 'mercado_y' and table_schema = 'produto';

/* criar tabela (ddl) */
create table tb_categoria(
	id_categoria int,
	categoria varchar(30)
);

/* listar tabela public*/
select table_name from information_schema.tables where table_catalog = 'mercado_y' and table_schema = 'public';

/* remover tabelas */
drop table tb_categoria;

/* criar tabela tb_categoria no schema produto */
create table produto.tb_categoria(
	id_categoria int,
	categoria varchar(30)
);

/* listar tabela produto */
select table_name from information_schema.tables where table_catalog = 'mercado_y' and table_schema = 'produto';

/* criar tabela tb_produto*/
create table produto.td_produto(
    id_produto int,
    fk_id_categoria int,
    fk_id_fabricante int,
    produto varchar(50) not null,
    unidade_medida char(3) not null,
    preco_compra numeric(10, 2) not null,
    preco_venda numeric(10,2) not null
);

create table produto.tb_fabricante(
    id_fabricante int,
    fabricante varchar(100) not null,
    telefone varchar(17),
    contato varchar(30)
);

/* listar tabelas*/
select * from information_schema.tables where table_catalog = 'mercado_y' and table_schema = 'produto';

/* listar as colunas de uma tabela */
select * from information_schema.columns where table_catalog = 'mercado_y' and  table_schema = 'produto' and table_name = 'tb_categoria';
select * from information_schema.columns where table_catalog = 'mercado_y' and  table_schema = 'produto' and table_name = 'tb_fabricante';
