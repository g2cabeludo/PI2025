select * from funcionarios;
alter table funcionarios drop column telefone;
alter table funcionarios add column cargo varchar;
alter table funcionarios add column data_nasc  varchar;
alter table cliente add column data_nasc varchar;

delete from funcionarios;
delete from cliente;
delete from produto;
delete from venda;
delete from item_venda;

ALTER SEQUENCE nome_da_sequence RESTART WITH 1;


SELECT * FROM cliente; 
SELECT * FROM funcionarios; 
SELECT * FROM produto;
SELECT * FROM venda; 
SELECT * FROM item_venda; 

alter table funcionarios add column cargo varchar(20);
ALTER TABLE funcionarios DROP COLUMN cargo;


DELETE FROM cliente;
DELETE FROM funcionarios;
DELETE FROM produto;
DELETE FROM venda;
DELETE FROM item_venda;
ALTER SEQUENCE funcionarios_id_funcionario_seq RESTART WITH 1;
ALTER SEQUENCE cliente_id_cliente_seq RESTART WITH 1;
ALTER SEQUENCE produto_id_produto_seq RESTART WITH 1;
ALTER SEQUENCE venda_id_venda_seq RESTART WITH 1;
ALTER SEQUENCE item_venda_id_item_seq RESTART WITH 1;

select * from cliente;

INSERT INTO cliente (no_cliente, cpf, telefone, senha, data_nasc) VALUES
('Ana Souza', '34718956082', '11992345678', 'senha123', '1990-05-12'),
('Bruno Lima', '98215473049', '21993456789', 'abc123', '1988-11-23'),
('Carla Menezes', '61320987415', '31994567890', 'carla2023', '1995-07-08'),
('Diego Silva', '72593140671', '41995678901', '123456', '1986-02-17'),
('Eduarda Costa', '14985237096', '51996789012', 'edu@2024', '1992-12-01'),
('Felipe Rocha', '86104723958', '11997890123', 'felipe#1', '1994-03-09'),
('Gustavo Nunes', '50381627942', '21998901234', 'guga321', '1991-09-15'),
('Helena Dias', '39056418230', '31999012345', 'helena2022', '1999-06-30'),
('Igor Martins', '24573098167', '41990123456', 'senhaIgor', '1993-01-25'),
('Juliana Freitas', '73941806524', '51991234567', 'julifreitas', '1987-10-10'),
('Karen Ribeiro', '48129635709', '11992345679', 'karen@123', '1990-08-18'),
('Lucas Oliveira', '31824097561', '21993456780', 'lucas2024', '1989-04-27'),
('Marina Alves', '65079321834', '31994567891', 'marina#pw', '1996-12-05'),
('Nelson Pereira', '98410735629', '41995678902', 'np123', '1985-07-19'),
('Olivia Teixeira', '27689150483', '51996789013', 'olivia!', '1998-03-14'),
('Paulo César', '75932684105', '11997890124', 'pauloC', '1984-06-06'),
('Quésia Santos', '89247031562', '21998901235', 'qs_2023', '1997-09-09'),
('Renato Braga', '60721594836', '31999012346', 'rbsenha', '1991-02-22'),
('Sandra Moura', '47130896257', '41990123457', 'sandra1980', '1980-11-30'),
('Thiago Lopes', '13582960748', '51991234568', 'thiago#', '1993-05-05');


INSERT INTO funcionarios (no_funcionario, cpf, senha, cargo, data_nasc) VALUES
('Amanda Ribeiro', '34718956082', '11991234567', 'amanda123', '1992-04-15'),
('Bruno Costa', '98215473049', '21992345678', 'bruno456', '1988-07-22'),
('Carolina Dias', '61320987415', '31993456789', 'carol789', '1995-01-30'),
('Daniel Souza', '72593140671', '41994567890', 'daniel2023', '1986-10-10'),
('Eduardo Lima', '14985237096', '51995678901', 'edu12345', '1990-06-05'),
('Fernanda Nunes', '86104723958', '11996789012', 'fernanda@', '1993-03-28'),
('Gabriel Almeida', '50381627942', '21997890123', 'gab@2024', '1989-11-12'),
('Helena Martins', '39056418230', '31998901234', 'helena1', '1994-08-16'),
('Igor Moreira', '24573098167', '41999012345', 'igor#2024', '1987-09-09'),
('Joana Teixeira', '73941806524', '51990123456', 'joana88', '1996-05-19'),
('Kleber Silva', '48129635709', '11992345679', 'kleber12', '1985-12-03'),
('Larissa Prado', '31824097561', '21993456780', 'larissa@1', '1991-04-14'),
('Marcos Aurélio', '65079321834', '31994567891', 'marcos21', '1983-02-20'),
('Natália Rocha', '98410735629', '41995678902', 'natalia12', '1998-12-09'),
('Otávio Mendes', '27689150483', '51996789013', 'otavio22', '1986-07-07'),
('Patrícia Barreto', '75932684105', '11997890124', 'pat123', '1990-09-25'),
('Renan Tavares', '89247031562', '21998901235', 'renan*10', '1992-03-03'),
('Simone Ferreira', '60721594836', '31999012346', 'simone@123', '1984-01-11'),
('Tiago Lopes', '47130896257', '41990123457', 'tiago321', '1993-06-29'),
('Vanessa Cardoso', '13582960748', '51991234568', 'vanessa99', '1995-10-05');


INSERT INTO produto (no_produto, descricao, quant_prod, preco) VALUES
('Arroz', 'Arroz tipo 1, pacote 5kg', 100, 25.90),
('Feijão Preto', 'Feijão Preto pacote 1kg', 80, 7.50),
('Açúcar', 'Açúcar cristal pacote 1kg', 120, 4.30),
('Óleo de Soja', 'Óleo de soja 900ml', 90, 6.80),
('Leite Integral', 'Leite integral longa vida 1L', 150, 3.50),
('Café Torrado', 'Café torrado e moído 500g', 75, 12.90),
('Macarrão Espaguete', 'Macarrão espaguete 500g', 110, 4.20),
('Molho de Tomate', 'Molho de tomate sachê 340g', 95, 3.90),
('Sal Refinado', 'Sal refinado pacote 1kg', 130, 2.50),
('Pão de Forma', 'Pão de forma fatiado 500g', 70, 7.20),
('Refrigerante Cola', 'Refrigerante cola 2L', 85, 8.50),
('Sabonete', 'Sabonete em barra 85g', 140, 2.10),
('Detergente Líquido', 'Detergente líquido 500ml', 90, 3.00),
('Desinfetante', 'Desinfetante floral 1L', 65, 6.40),
('Chocolate ao Leite', 'Chocolate ao leite 90g', 100, 4.80),
('Água Mineral', 'Água mineral sem gás 500ml', 200, 2.00),
('Cereal Matinal', 'Cereal matinal sabor frutas 300g', 55, 9.30),
('Biscoito Recheado', 'Biscoito recheado sabor chocolate 350g', 120, 6.00),
('Leite Condensado', 'Leite condensado lata 395g', 80, 5.90),
('Margarina', 'Margarina com sal 250g', 75, 4.00);

INSERT INTO venda (cliente_id, data_venda, valor_total, funcionario_id) VALUES
(1, '2025-05-01', 150.75, 3),
(2, '2025-05-02', 230.00, 5),
(3, '2025-05-02', 89.90, 1),
(4, '2025-05-03', 120.00, 4),
(5, '2025-05-04', 350.00, 2),
(6, '2025-05-05', 45.50, 7),
(7, '2025-05-05', 560.00, 6),
(8, '2025-05-06', 75.00, 8),
(9, '2025-05-06', 210.30, 9),
(10, '2025-05-07', 99.99, 10),
(11, '2025-05-07', 320.00, 11),
(12, '2025-05-08', 180.00, 12),
(13, '2025-05-09', 150.00, 13),
(14, '2025-05-09', 250.50, 14),
(15, '2025-05-10', 60.00, 15),
(16, '2025-05-10', 410.00, 16),
(17, '2025-05-11', 125.00, 17),
(18, '2025-05-11', 90.00, 18),
(19, '2025-05-12', 210.00, 19),
(20, '2025-05-12', 300.00, 20);


INSERT INTO item_venda (venda_id, produto_id, quantidade, preco_unidade) VALUES
(1, 1, 2, 25.90),
(1, 3, 1, 4.20),
(2, 5, 3, 6.80),
(2, 2, 1, 7.50),
(3, 4, 5, 3.90),
(4, 6, 2, 3.50),
(5, 7, 1, 12.90),
(6, 8, 4, 4.30),
(7, 9, 6, 2.50),
(8, 10, 2, 7.20),
(9, 11, 1, 8.50),
(10, 12, 3, 2.10),
(11, 13, 2, 3.00),
(12, 14, 1, 6.40),
(13, 15, 4, 4.80),
(14, 16, 5, 2.00),
(15, 17, 3, 9.30),
(16, 18, 2, 6.00),
(17, 19, 1, 5.90),
(18, 20, 4, 4.00);