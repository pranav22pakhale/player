Create Procedure update_prod
(
@product_id int,
@product_name varchar(20)
)
As
Begin
    update Production.Product
	set Name = @product_name
	where StandardCost>100 and ProductID=@product_id
End
Go

exec update_prod 730,p

select * from Production.Product

create trigger update_prod  on Production.Product
after update
as 
print 'update takes place';
go


CREATE TRIGGER NoDropTable32 ON DATABASE 
    after drop_procedure , drop_table
AS 
PRINT 'drop table not posssible' 
ROLLBACK
go


drop procedure update_prod
drop table Person.Person

select * from Sales.SalesOrderHeader

select CustomerID , count(SalesOrderID) as o
from Sales.SalesOrderHeader
group by CustomerID
having count(SalesOrderID)>5
order by o desc


Create Procedure data_show
As
Begin
    select CustomerID , count(SalesOrderID) as o
	from Sales.SalesOrderHeader
	group by CustomerID
	having count(SalesOrderID)>5
	order by o desc

End
Go

exec data_show

Create Table Patient
(
	PatientID Int Identity(1,1) Primary Key,
	PatientFirstName varchar(20) Not Null,
	PatientMiddleName varchar(20),
	PatientLastName varchar(20) Not Null,
	Gender varchar(20),
	BirthDate DateTime Not Null
);

insert into Patient