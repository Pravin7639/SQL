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



---self join

select e.Name as [Employee Name],m.Name as [Manager Name]
from Employyee1 e inner join Employyee1 m
on e.ManagerId=m.Id

go

select e.Name as [Employee Name],m.Name as [Manager Name]
from Employyee1 e left join Employyee1 m
on e.ManagerId=m.Id

go


select e.Name as [Employee Name],m.Name as [Manager Name]
from Employyee1 e right join Employyee1 m
on e.ManagerId=m.Id

go

select e.Name as [Employee Name],m.Name as [Manager Name]
from Employyee1 e full join Employyee1 m
on e.ManagerId=m.Id

go


select e.Name as [Employee Name],m.Name as [Manager Name]
from Employyee1 e cross join Employyee1 m












