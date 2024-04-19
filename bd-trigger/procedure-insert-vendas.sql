/*delimiter $$
create procedure InserirVendas(venda INT, prod varchar(3), qtde INT)
begin 
	insert into  itensvendas( Venda, Produto, Quantidade)
    values(venda,prod,qtde);
end $$
delimiter */

call InserirVendas(2,'001',5);
select *from itensvendas;