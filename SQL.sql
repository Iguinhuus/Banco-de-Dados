INSERT INTO Clientes (ClienteID, Nome, Email, Telefone) VALUES
(1, 'Igor Mendes', 'igor@gmail.com', '1197645385'),
(2, 'Débora Gueixa', 'debora@gmail.com', '1197654321'),
(3, 'Jose Oliveira', 'jose@gmail.com', '119874689'),
(4, 'Ana Carolina', 'ana@gmail.com', '1191322610'),
(5, 'Beatriz Costa', 'beazinha@gmail.com', '1190876458');

INSERT INTO Produtos (ProdutoID, Nome, Descrição, Preço, Quantidade_em_Estoque) VALUES
(1, 'Camiseta', 'Camiseta vermelha tamanho G', 20.00, 100),
(2, 'Boné Azul', 'Bone azul tamanho U', 40.00, 50),
(3, 'Tênis', 'Tênis nike preto tamanho 40', 60.00, 30),
(4, 'Mochila', 'Mochila puma preta', 35.00, 20),
(5, 'Bermuda', 'Bermuda cinza tamanho 42', 50.00, 15);

INSERT INTO Pedidos (PedidoID, ClienteID, Data_do_Pedido, Status_do_Pedido) VALUES
(1001, 1, '2024-04-18', 'Em andamento'),
(1002, 3, '2024-04-17', 'Concluído'),
(1003, 2, '2024-04-16', 'Em andamento'),
(1004, 4, '2024-04-15', 'Concluído'),
(1005, 5, '2024-04-14', 'Concluído');

INSERT INTO Itens_Pedido (ItemID, PedidoID, ProdutoID, Quantidade, Preço_Unitário) VALUES
(2001, 1001, 1, 2, 20.00),
(2002, 1002, 3, 1, 60.00),
(2003, 1003, 2, 3, 40.00),
(2004, 1004, 4, 1, 35.00),
(2005, 1005, 5, 2, 50.00);

INSERT INTO Pagamentos (PagamentoID, PedidoID, Método_de_Pagamento, Valor, Data_do_Pagamento) VALUES
(3001, 1001, 'Cartão de Crédito', 40.00, '2024-07-20'),
(3002, 1002, 'Pix', 60.00, '2024-10-17'),
(3003, 1003, 'Débito', 120.00, '2024-04-16'),
(3004, 1004, 'Deposito', 35.00, '2024-04-15'),
(3005, 1005, 'Vale presente', 100.00, '2024-04-14');

UPDATE Produtos SET Preço = 25.00 WHERE ProdutoID = 1;
UPDATE Produtos SET Quantidade_em_Estoque = 40 WHERE ProdutoID = 2;
UPDATE Pedidos SET Status_do_Pedido = 'Cancelado' WHERE PedidoID = 1004;
UPDATE Pagamentos SET Método_de_Pagamento = 'Dinheiro' WHERE PagamentoID = 3003;
DELETE FROM Clientes WHERE ClienteID = 5;
DELETE FROM Produtos WHERE ProdutoID = 3;
DELETE FROM Pedidos WHERE PedidoID = 1003;
DELETE FROM Itens_Pedido WHERE ItemID = 2005;