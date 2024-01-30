use Pravin45
go
create table Trainer(
Id int primary key,
Name varchar(50),
Experience int
)
go 
insert into Trainer values (1,'Vikul Rathod', 13),(2,'Usha Rathod',2)
go

go
create table Student1(
RollNumber int primary key,
StudentName varchar(50),
City varchar(50),
TrainerId int foreign key references Trainer(Id) on delete cascade
)

go
insert into Student1 values (1,'Ajay','pune',1),(2,'Ganesh','pune',2)
insert into Student1 values (3,'Vishal','pune',1)
insert into Student1 values (4,'bahu','pune',null)
go
select * from Student1
go
delete from Trainer where Id=1
go
drop table Student1
go
drop table Trainer




-- In student1 table we can not insert values other than Trainer(Id)
-- foreign key --> using this we can give relation between two tables and used to maintain Data Integrity..
-- CASCADE --> 1. No action
         --> 2. Set null --> on foreign key value we can use this --> ie... on delete set null
         --> 3.. set default --> on delete set default
         --> 4.. cascade  --> on delete cascade 
         -->it means if we delete records from pimary key table then dependent foreign key records also get deleted     

