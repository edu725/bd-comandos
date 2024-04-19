/* 
Desliga o modo seguro para execução do delete e liga no fim
*/ SET SQL_SAFE_UPDATES = 0;
DELETE 	FROM `ItensVendas` WHERE `Venda` = 2 AND `Produto` = 1;
SET SQL_SAFE_UPDATES = 1;