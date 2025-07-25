CREATE TABLE funcionarios (
id_funcionario serial PRIMARY key,
no_funcionario varchar(60) not null, 
cpf varchar(11) unique not null,  --cpf único para cada funcionário
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
data_venda timestamp not null, 
valor_total numeric(10,2) not null,

foreign key (cliente_id) references cliente(id_cliente)
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

alter table funcionarios Add column senha varchar (100) not null;
alter table cliente Add column senha varchar (100) not null;

insert into funcionarios (no_funcionario, cpf, telefone, senha) values 
('João da 160', '12345678909', '8198765436', 'senhaCriptografadaPapi'),
('Ana Lima', '45678901234', '11954321098', 'cliente123');
	   
insert into cliente (no_cliente, cpf, telefone, senha)values 
('André da pop', '12345678999', '8198765123', 'senhaAquiMano'),
('Carlos Almeida', '12345678901', '11987654321', '123456');

insert into produto (no_produto, descricao, quant_prod, preco) values 
('Arroz 5kg', 'Pacote de arroz branco tipo 1', 50, 22.90);

insert into venda (cliente_id, data_venda, valor_total) values
(1, now(), 45.50);

INSERT INTO item_venda (venda_id, produto_id, quantidade, preco_unidade) values
(1, 1, 2, 22.90);

SELECT
venda.id_venda,
cliente.no_cliente,
venda.data_venda,
produto.no_produto,
SUM(item_venda.quantidade) AS quantidade_total,
item_venda.preco_unidade,
SUM(item_venda.quantidade * item_venda.preco_unidade) AS valor_total
FROM venda
JOIN cliente ON venda.cliente_id = cliente.id_cliente
JOIN item_venda ON venda.id_venda = item_venda.venda_id
JOIN produto ON item_venda.produto_id = produto.id_produto
GROUP BY 
venda.id_venda, 
cliente.no_cliente, 
venda.data_venda, 
produto.no_produto, 
item_venda.preco_unidade
ORDER BY venda.id_venda;
