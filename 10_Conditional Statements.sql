use Pravin45Practice
go


declare @Name varchar(50) ='Pravin'
print @Name
set @Name='Pawan'
print @Name
go
declare @a int = 10
print @a
set @a=100
print @a

go
declare @s int = 10, @b int =10
print @s + @b

--conditional statements

-- 1...if else
if @s=@b
print 'EQUAL'
else
print 'NOT EQUAL'

go

declare @start int =1
while @start <= 5
begin
print 'Good Morning'
set @start=@start+1
end

go


declare @Start1 int =2
while @Start1<=20
begin 
print @Start1
set @Start1=@Start1+2
end


