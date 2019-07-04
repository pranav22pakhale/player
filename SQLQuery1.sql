;with new(ct_id,orders)
as(
	select CustomerID,count(SalesOrderID)
	from Sales.SalesOrderHeader
	group by CustomerID
), nq(ct_id,orders,rk)
as(
select ct_id,orders, dense_rank() over (order by  orders desc) as RowNumberRank 
	from new
)

select *
from nq
where rk=	

		
with new(ct_id,orders)
as(
	select CustomerID,count(SalesOrderID)
	from Sales.SalesOrderHeader
	group by CustomerID
	
)

