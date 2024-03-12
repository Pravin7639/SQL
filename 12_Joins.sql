use Pravin45Practice
go
select * from Trainer
select * from Student
go

insert into Trainer values (4,'Raju', 45)
insert into Student (Id, Name, City)values (9,'Rastogi','Satara')

---inner join -->common data from both tables
select Student.Name as Student_Name,City,Trainer.Name as Trainer_Name from 
Student inner join Trainer
on Student.TrainerId=Trainer.Id

select s.Name as Student_Name,City,t.Name as Trainer_Name from 
Student s inner join Trainer t
on s.TrainerId=t.Id

---Left outer join  -->Common and uncommon data from left table
select s.Name as [Student Name], t.Name as [Trainer Name]
from Student s left outer join Trainer t
on s.TrainerId=t.Id

---Right outer join  -->Common and uncommon data from Right table
select s.Name as [Student Name], t.Name as [Trainer Name]
from Student s right outer join Trainer t
on s.TrainerId=t.Id


-------  uncommon data from left table
select * 
from student s left join trainer t
on t.id is null


-------  uncommon data from right table
select * 
from Student s right join Trainer t
on s.Id is null



--- cross join --> cartesian product of two tables
select s.name as Student_Name, t.name as TrainerName
from Student s cross join Trainer t



---interview example

create table tbl1(col1 char(1)) 
go
insert into tbl1 values ('A'),('B'),('C')
go
create table tbl2(clo1 char(1))
go
insert into tbl2 values ('A'),('A'),('B'),('D'),('E')
go

select * from tbl1
select * from tbl2

--inner join
select *
from tbl1 t1 inner join tbl2 t2
on t1.col1=t2.clo1


--left outer join
select * 
from tbl1 t1 left join tbl2 t2
on t1.col1=t2.clo1

---full join 

select * 
from tbl1 t1 full join tbl2 t2
on t1.col1=t2.clo1

--cross join 
select * 
from tbl1 t1 cross join tbl2 t2


--trainer name with number of students assigned
select T.Name as Trainer, count(s.Id) as Total
from Student s join Trainer t
on s.TrainerId=t.Id
group by T.Name





---select 2nd highest price

select * from Product

go

select top 1 Price from
(select distinct top 2 Price 
from Product 
order by Price desc)
Result
order by Price asc



-- using CTE


with Result as
(
select Price,DENSE_RANK()  over (order by Price desc) as DenseRank
from Product
)
select Price
from Result
where Result.DenseRank=2


