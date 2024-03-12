use Pravin45Practice
go
select * from Product
select * from ProductSales
go

SELECT MAX(Price) AS second_highest_salary
FROM Product
WHERE Price < (SELECT MAX(Price) FROM Product )

		select max(Price) as Third_highest_salary from Product
		where Price<(select max(Price) from Product
		where Price<(select max(Price) from Product))











