CREATE TABLE funcionario (id_funcionario serial PRIMARY key,
no_funcionario varchar(60) not null, cpf varchar(11), telefone varchar (11));

CREATE TABLE produto (no_produto varchar(30) not null, 
ID_produto serial primary key, descricao text(100), quant_prod int(9));

CREATE TABLE cliente (no_cliente varchar(60) not null, cpf varchar(11));

SELECT * FROM funcionario;