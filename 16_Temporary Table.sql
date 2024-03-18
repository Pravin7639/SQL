use Pravin45Practice
go

----- LOCAL TEMPORARY TABLE

create table #V
(
Id int,
Name varchar(20)
)
go
insert into #V values (1,'Pravin'),(2,'Aarti'),(3,'Sachin'),(4,'Kiran')
go
select * from #V

go

--session 2
--another session can create table with same name
create table #V
(
Id int,
Name varchar(20)
)
go
select * from #V






---Global Temporary Table

create table ##V
(
Id int,
Name varchar(20)
)
go
insert into ##V values (1,'Pravin'),(2,'Aarti'),(3,'Sachin'),(4,'Kiran')
go
select * from ##V

go











