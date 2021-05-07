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

