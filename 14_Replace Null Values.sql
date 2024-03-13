use  Pravin45Practice
go




use  Pravin45Practice
go
Create table Employyee1
(
Id int ,
Name varchar(50),
ManagerId int 
)

go
 insert into Employyee1 values
 (1,'Pravin',2),(2,'Aarti',null),(3,'Sachin',1),(4,'Kiran',2),(5,'Tejas',3),
 (6,'Prachi',2)
go
select * from Employyee1
go


select e.Name as [Employee Name],IsNull(m.Name,'Owner') as [Manager Name]
from Employyee1 e left join Employyee1 m
on e.ManagerId=m.Id

go


select IsNull(e.Name,'Employee') as [Employee Name],IsNull(m.Name,'Owner') as [Manager Name]
from Employyee1 e Right join Employyee1 m
on e.ManagerId=m.Id

go

select IsNull(e.Name,'Employee') as [Employee Name],IsNull(m.Name,'Owner') as [Manager Name]
from Employyee1 e full join Employyee1 m
on e.ManagerId=m.Id

go


select e.Name as [Employee Name],Coalesce(m.Name,'No Manager') as [Manager Name]
from Employyee1 e left join Employyee1 m
on e.ManagerId=m.Id


go



create table Person
(
Id int identity,
Name varchar(50),
Gender varchar(10),
City varchar(50),
PrimaryEmail varchar(50),
AlternateEmail varchar(50)
)
go
insert into Person values ('ajay', 'male', 'pune', 'a@a.com', null),
('shital', 'female', 'pune', null, 's1@s1.com'),
('ganesh', 'male', 'mumbai', 'g@g.com', null),
('kiran', 'male', 'mumbai', null, null)

insert into Person values ('vijay', 'male', 'pune', 'v@v.com', 'v1@v1.com')
go
select * from Person

go

select Name, PrimaryEmail, AlternateEmail,
COALESCE(PrimaryEmail, AlternateEmail, 'NO EMAIL') as Email
from Person
go

-- case statement

select e.Name as EmployeeName, 
(case when m.Name is null then 'OWNER' else m.Name end) as ManagerName
from Employyee1 e left join Employyee1 m
on e.ManagerId = m.Id

go

declare @DayNumber int = 4

select case 
when @DayNumber = 1 then 'SUNDAY'
when @DayNumber = 2 then 'MONDAY'
when @DayNumber = 3 then 'TUESDAY'
when @DayNumber = 4 then 'WEDNESDAY'
when @DayNumber = 5 then 'THURSDAY'
when @DayNumber = 6 then 'FRIDAY'
when @DayNumber = 7 then 'SATURDAY'
else 'INVALID DAY NUMBER'
end














