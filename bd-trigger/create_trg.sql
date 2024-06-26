/* CRIA BD TRG */
CREATE DATABASE `TRG`;
/* SELECIONA BD TRG */
USE `TRG`;
/* CRIA TABELA PRODUTOS */
CREATE TABLE `Produtos`(
	`Referencia` VARCHAR(3) PRIMARY KEY,
	`Descricao`  VARCHAR(50) UNIQUE,
    `Estoque`    INT NOT NULL DEFAULT 0
);
/* INSERE REGISTROS NA TABELA PRODUTOS */
INSERT INTO `Produtos` VALUES('001','Lápis',100);
INSERT INTO `Produtos` VALUES('002','Caderno',50);
INSERT INTO `Produtos` VALUES('003','Caneta',150);
/* CRIA TABELA ITENS DE VENDA */
CREATE TABLE `ItensVendas`(
	`Venda` INT,
    `Produto` VARCHAR(3),
    `Quantidade` INT
)