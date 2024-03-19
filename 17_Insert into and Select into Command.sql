use Pravin45Practice
go
select * from Student
select * from Trainer
go
exec sp_help Trainer

go
insert into Trainer values (5,'Mona',5)
-- it only insert date only if table is there 
go

-----------select into command ---------------------------------
select * into #NewTrainer from Trainer   
--copy data from one table to another table

go
select * from #NewTrainer
select * from Trainer
go
-- we can use select into command with permanant table also
select * into Student10001 from Student
go
select * from Student10001
go
 
 --copy data whose city='Pune' in saperate Table

 select * into Student10002 from Student where City='Pune'

 select * from Student10002

 go

 --copy only schema without copying record
 select * into Student10003 from Student where 1 <> 1  
 select * from Student10003






 ---copy data from one DataBase table to another DataBase Table

 go
 create database Pravin45Practice_Archieved

 go

 select * into Pravin45Practice_Archieved.dbo.StdBackup from Student

 go 
 use Pravin45Practice_Archieved
 go
 select * from StdBackup



 -------Take TableBackup on another Server DataBase

-- select * into [Server-Ip Address] Pravin45Practice.dbo.StdBackup from Student








