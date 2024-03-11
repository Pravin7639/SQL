use Pravin45Practice
go
create table Product
(
Id int primary key identity,
Name varchar(50),
Price int
)
go
insert into Product values ('Mobile',20000),('TV', 35000),('Laptop', 50000)
go
create table ProductSales
(
Id int primary key identity,
ProductId int foreign key references Product(Id),
Quantity  int 
)
go
insert into ProductSales values (1,1),(3,1),(1,3)
go

select * from Product
select * from ProductSales

go

select Name from Product where id in (select distinct ProductId from ProductSales)

go

select ProductId, sum(Quantity) from ProductSales 
group by ProductId

go

select Name,Price from Product

select name, price, 
(select sum(Quantity) from ProductSales where ProductId=Product.Id ) as SoldQuantity
from Product

go

Select Name, Price,
(select sum(Quantity) from ProductSales where ProductId=Product.Id)as SoldQuantity,
(select sum(Quantity) * Product.Price from ProductSales Where ProductId=Product.Id) as SalesAmount
from Product


--select name,price,
--(select sum(quantity) from ProductSales where ProductId=Product.Id ) as TotalQuantity
--from Product

--select  * ,
--(select sum(quantity) from ProductSales where ProductId=Product.Id) as ToatalQuantity,
--(select sum(quantity) * Product.Price from ProductSales where ProductId=Product.Id) as TotalPrce
--from Product


