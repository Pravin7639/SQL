use Pravin45Practice
go
select * from Student
go
--------------------------COLUMN ALIS--------------
select Id as RollNumber,Name as [Student Name],City as [Student City], TrainerId from Student
where id=1
go
 ---   = operator
 select * from Student where Id=1
 go
select * from Student where Name='Aarti'
go
select * from Student where city='Mumbai'
go

---     != operator
 select * from Student where Id!=1
 go
 select * from Student where Name !='Aarti'
go
select * from Student where city!='Mumbai'
go


----- > < >= <= <> operator
select * from Student where id>1
go
select * from Student where id<1
go
select * from Student where id>=1
go
select * from Student where id<=1
go
select * from Student where id<>4
go

 

 ----- and / or operator 

 select * from Student where Name='Pravin' and city='delhi'
 go
  select * from Student where Name='Pravin' or city='benglore'
go





-- % operator

 select * from Student where Name like 'P%'  --all name starts with 'P' 
 go
 
 select * from Student where Name like '%n'  --- all names last letter is 'n'
 go
 
 select * from Student where Name like '%aa%'   --- all name that contain 'aa'
 go
 
 select * from Student where Name like '_a%'  --- all names whose second latter is 'a'
 go
 
 select * from Student where Name like '%[aeiou]%'  -- all name which any one of these letters
 go

