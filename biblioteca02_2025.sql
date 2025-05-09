CREATE TABLE funcionarios (
id_funcionario serial PRIMARY key,
no_funcionario varchar(60) not null, 
cpf varchar(11) unique,  --cpf único para cada funcionário
telefone varchar (15)
);

--tabela funcionario criada

CREATE TABLE produto (
id_produto serial primary key,
no_produto varchar(30) not null, 
descricao text, 
quant_prod integer not null, 
preco numeric(10,2) not null
);

CREATE TABLE cliente (
id_cliente serial primary key, 
no_cliente varchar(60) not null, 
cpf varchar(11) unique not null, 
telefone varchar(15)
);

CREATE TABLE venda (
id_venda serial primary key, 
cliente_id integer,  --referência ao cliente
funcionario_id integer,  --referência ao funcionário
data_venda timestamp not null, 
valor_total numeric(10,2) not null,

foreign key (cliente_id) references cliente(id_cliente),
foreign key (funcionario_id) references funcionarios(id_funcionario)
);

CREATE TABLE item_venda(
id_item serial primary key,
venda_id integer not null,
produto_id integer not null,
quantidade integer not null,
preco_unidade numeric(10,2) not null,

foreign key (venda_id) references venda(id_venda),
foreign key (produto_id) references produto(id_produto)
);
SELECT * FROM funcionarios;
SELECT * FROM produto;
SELECT * FROM cliente;
SELECT * FROM venda;
SELECT * FROM item_venda;


