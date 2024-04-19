DELIMITER $$
CREATE TRIGGER `Tgr_ItensVendas_Insert` AFTER INSERT
ON `ItensVendas`
FOR EACH ROW
BEGIN
	UPDATE `Produtos` SET `Estoque` = `Estoque` - NEW.`Quantidade`
	WHERE `Referencia` = NEW.`Produto`;
END$$
CREATE TRIGGER `Tgr_ItensVendas_Delete` AFTER DELETE
ON `ItensVendas`
FOR EACH ROW
BEGIN
	UPDATE `Produtos` SET `Estoque` = `Estoque` + OLD.`Quantidade`
    WHERE `Referencia`= OLD.`Produto`;
END$$
