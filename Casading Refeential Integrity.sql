use Pravin45Practice

create table Trainer
(
Id int primary key ,
Name varchar(50),
Experience int
)
go
insert into Trainer values(1,'Vikul',14),(2,'Usha',5),(3,'Atul',8)
go
select * from Trainer
go
create table Student 
(
Id int primary key,
Name varchar(50),
City varchar(50),
TrainerId int foreign key references Trainer(Id)
)
go
Insert into Student values (1,'Kiran','Pune',1),(2,'Sachin','Mumbai',2),
(3,'Aarti','Benglore',1),(4,'Pravin','Delhi',2)
go
select * from Student
go
drop table Student
go
create table Student 
(
Id int primary key,
Name varchar(50),
City varchar(50),
TrainerId int foreign key references Trainer(Id) on delete cascade
)
go
Insert into Student values (1,'Kiran','Pune',1),(2,'Sachin','Mumbai',2),
(3,'Aarti','Benglore',1),(4,'Pravin','Delhi',2)
go
select * from Student
go
delete from Trainer where Id=1  -- dependent student value get deleted also
go
drop table Student
drop table Trainer
go
create table Student 
(
Id int primary key,
Name varchar(50),
City varchar(50),
TrainerId int foreign key references Trainer(Id) on delete set null
)
go
Insert into Student values (1,'Kiran','Pune',1),(2,'Sachin','Mumbai',2),
(3,'Aarti','Benglore',1),(4,'Pravin','Delhi',2)
go
select * from Student
go
delete from Trainer where Id=2  -- dependent student value set null 





