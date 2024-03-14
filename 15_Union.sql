
use Pravin45Practice
go
 create table MensWear 
 (
 ID int ,
 Name varchar(50)
 )
 go
 insert into MensWear values (1,'Shirt'),(2,'Casual Shoes'),(3,'T-Shirt')
 go
 create table WomensWear 
 (
 ID int,
 Name varchar(50)
 )
 go
 insert into WomensWear values (1,'Shirt'),(2,'Casual Shoes'),(3,'Top'),(4,'Kurti')
 go

 select * from MensWear
 select * from WomensWear

 go

  select * from MensWear
  union all
 select * from WomensWear
 go

  select * from MensWear
  union 
 select * from WomensWear
 go
 select * from MensWear
  intersect 
 select * from WomensWear
 go
 select * from MensWear
  except 
 select * from WomensWear

 go

 select * from MensWear
  
 select * from WomensWear


