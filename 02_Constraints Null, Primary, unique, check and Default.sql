use Pravin45
go
create table Student(
RollNumber int primary key,
Name Varchar (50) not null,
Gender varchar(20),
Email varchar(100) unique,
Age int check(Age>1 and Age<=150),
City varchar(50),
Course varchar(25) default 'Dot Net'
)
go
select * from Student
go
insert into Student(RollNumber,Name,Gender,Email,Age,City)
values (1,'Ajay','male','a@a.com',22,'pune'),
(2,'Ganesh','male','g@g.com',23,'pune')
go
insert into Student values (3,'Vishal','male','v@v.com',22,'pune','discussion'),
(4,'bahu','male','b@b.com',23,'pune','discussion')
go
select * from Student
go
drop table Student
go
---another way to providing Primary Key on Table
go
create table Student(
RollNumber int ,
Name Varchar (50),
Gender varchar(20),
Email varchar(100) unique,
Age int check(Age>1 and Age<=150),
City varchar(50),
Course varchar(25) default 'Dot Net',
primary key(RollNumber,Name)
)
go
select * from Student
go
insert into Student(RollNumber,Name,Gender,Email,Age,City)
values (1,'Ajay','male','a@a.com',22,'pune'),
(2,'Ganesh','male','g@g.com',23,'pune')
go
insert into Student values (3,'Vishal','male','v@v.com',22,'pune','discussion')
insert into Student values (4,'bahu','male','b@b.com',23,'pune','discussion')
go
select * from Student
go

--Only one duplivate values of (RollNumber and Name) is allowed 
--unique Key --> One null value is allow
--Primary Key --> No duplicate values are allowed
--not null --> when values is mandatory we have to use 'not null' Contraints
--Default --> used to provide default value when it is not provided
--check Contraints --> to validate any input value 
--Composite Key --> combination of two or more columns




