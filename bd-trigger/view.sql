create view vwTotalVendas as
select sum(iv.Quantidade) as Qtde_Vendida,
	iv.Produto, p.Descricao
    from itensvendas as iv 
inner join produtos as p
	 on iv.Produto = p.Referencia
group by iv.Produto
order by p.Descricao;

select *from vwTotalVendas