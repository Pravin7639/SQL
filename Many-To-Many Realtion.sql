use Pravin45
go
create table Teacher(
Id int primary key,
Name Varchar(50),
Specilization varchar(50)
)
go
insert into Teacher values (1,'anil','marathi'),(2,'rahul','maths'),(3,'atul','history')
go
select * from Teacher
go
create table Student101(
Id int primary key ,
Name varchar(55),
Strength int
)
go
insert into Student101 values (1,'Standard 1',45),(2,'Standard 2',54)
go
select * from Student101
go
create table TeacherStudent101Assignment(
AssignmenId int primary key,
TeacherId int foreign key references Teacher(Id),
Student101Id int foreign key references student101(Id)
)
go
insert into TeacherStudent101Assignment values(1,1,1),(2,1,1),(3,2,1)
go
select * from Teacher
select * from Student101
select * from TeacherStudent101Assignment



-- this is the example of Many-To-Many relatonship
