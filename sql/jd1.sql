
select * from Employee
select * from Department

select * into dept2
from Department where 1=0

select * from dept2

update Department set D_Name='jd' where D_ID=3

alter table Employee
add Mo_no numeric(10) unique,Department_name varchar(20),Salary numeric(7) not null


insert into Employee
values('Jaydeep', 'Vahder','jd@gmail.com','2020202020','it','20000')

insert into Employee
values('Ganesh', 'Kuswaha','gk@gmail.com','2120202020','it','21000')


insert into Employee
values('shailesh', 'Rajput','sr@gmail.com','2120202030','it','21000')


insert into Employee
values('Jainish','Ranpura','jr@gmail.com','2120203030','it','21000'),('nirav', 'gurjar','nr@gmail.com','2102102100','qa','22222')
set identity_insert Employee on 
insert into Employee(E_id,First_name,Last_name,Email_id,Mo_no,Department_name,Salary)
values(2,'rujuta','Raval','rr@gmail.com','2120402030','com','21000')
set identity_insert Employee off

select * from Employee

update Employee
set Salary = '22000'
where E_id = 2

update Employee 
set Department_name = 'sales'
Where Email_id =' jr@gmail.com '

--space in the string in update is not considered. it does not affect the output


alter tab

alter table Employee
add constraint ck check(len(mo_no) = 10)

update Employee 
set DOB = '2000/03/02'
Where E_id = '1'

select * from Employee

update Employee 
set DOB = '1999/02/02'
Where E_id = '2'

update Employee 
set DOB = '1998/8/12'
Where E_id = '3'

update Employee
set DOB = '1999/8/2'
Where E_id = '4'


update Employee 
set DOB = '1989/12/02'
Where E_id = '5'


update Employee 
set DOB = '1990/12/02'
Where E_id = '6'


alter table Employee
add Gender varchar(6)  

alter table Employee
alter column Gender varchar(6) not null

update Employee
set Gender = 'male'
Where E_id = 1


--we can not add constrains to new column when table already have data available

select * from Department

create table Department
(
D_ID numeric(5) primary key identity(1,1),
D_Name varchar(20) unique not null,
D_head Varchar(20) not null
)

alter table Employee 
add E_State varchar(20) default('Gujrat')

select * from Employee

insert into Employee
values('tarun','prajapati','tp@gmail.com',2020212021,'pa',23232,'2000/8/2','male','')


create table Department1
(
D_ID numeric(5) primary key identity(1,1),
D_Name varchar(20) unique not null,
D_head Varchar(20) not null,
Dte varchar(10) default ('gujrat')
)

insert into Department1
values(2,'name','name')

insert into Department1()
values('name','name','gujrat')

insert into Department1
values('shailesh','nme','Gujrat')

insert into Department1
values('JDBC','SALES','')

insert into Department1(D_Name,D_head) values ('shai','hr')

select * from Department1


drop table Department1

update Employee
set Gender = case when E_id = 2 then 'female'
			when E_id = 3 then 'male'
			when E_id = 4 then 'male'
			when E_id = 5 then 'male'
			when E_id = 6 then 'male'
			when E_id = 1 then 'male'
			when E_id = 7 then 'male'
	end


select * from Employee


select 'hello'+'my '+'self'
select 2+'2'
select '2'+'2'


select CONCAT(0,'2','a')

select QUOTENAME('hello','{')

select abs(-163.2)

select FLOOR(-13.5)

select CEILING(13.5)

select CEILING(-135.8)

select SQUARE('w')

select ROUND(123.252,2),ROUND(125.226,1)



select getdate(),CURRENT_TIMESTAMP,SYSDATETIME(),GETUTCDATE()



select * into Department_bkp from Department
select * from Department
select * from Department_bkp

select * into Employee_bkp from Employee

select * from Employee_bkp where Email_id like 'j%'

alter table Employee_bkp 
drop column E_state


insert into Department(D_name, D_head) values ('it' ,'ganesh sir')

select count (gender) , gender from Employee group by Gender


insert into Department 
values 
	('qa', 'nirav sir'),
	('sales','jainish sir'),
	('technical','viren sir')


select * from Department

alter table Employee
drop column department_name

select * from Employee

alter table Employee 
add constraint fk_1 foreign key (D_details) references Department(D_ID) 



 

update Employee
set D_details = case when E_id = 1 then 1
					when E_id = 2 then 2
					when E_id = 3 then 2
					when E_id = 4 then 1
					when E_id = 5 then 3
					when E_id = 6 then 4
					when E_id = 7 then 1
				end


				
select * from Employee order by Email_id desc
select * from Employee order by First_name desc

alter table Employee   
drop constraint DF__Employee__E_Stat__2A4B4B5E

alter table Employee
drop column E_s0


alter table Employee
add E_s varchar(20)



select * from sys.tables

select distinct Salary from Employee
select distinct Salary, First_name  from Employee

select * from Employee

select Gender ,SUM(Salary) from Employee
group by Gender


select coalesce ('a','b','a','r','w')
select coalesce (null,'b','a','r','w')
select coalesce ('','b','a','r','w')


select coalesce ('null','b','a','r','w')


select *, coalesce(gender ,null) from Employee




select * from Employee where Salary = 21000 

select top 5 (salary)  from Employee

select count(salary) from EMployee


declare @jd varchar(20) = 'hello'

print @jd


declare @jd1 varchar(10)
select @jd1 = 'hello'
print @jd1

select * from Employee

select *, iif(gender ='male','m','f') ng from Employee



declare @var1 int = -82 
if @var1 < 0
begin
print 'neg'
end
else if @var1 >0
begin 
print 'pos'
end
else if @var1 is null
begin 
print 'value is null'
end
else
begin 
print 'zero'
end


declare @g varchar(10 )= (select max(Salary) from Employee) 
print @g


declare @e1 int = 1 , @e2 int = 20
while @e1 <= @e2
begin 

print @e1
set @e1 +=1
end

declare @f int = 5 , @c int = 1
while @c <= 10
begin
end

alter proc jd2
@gender varchar(20) = null
as
begin
	select * from employee where gender = @gender or @gender = null

end
exec jd2 'male' 

select * from Employee

insert into employee(first_name,last_name,email_id,mo_no,salary,gender,d_details) values ('riddhi','shah','rs@gmail.com',5252525252,10000,'female',2)

alter proc jd3
@tbln nvarchar(20)
as
begin
declare @tblfn1 varchar(2) =left(@tbln,1)
--print @tblfnde
declare @qusql nvarchar(max)
set @qusql = 'create table '+@tbln+'('+@tblfn1+'_id int primary key identity(1,1),'+@tblfn1+'_name varchar(200) not null)'
exec (@qusql)	
end

exec jd3 'shailesh1'

select * from shailesh1

truncate table shailesh1

insert into shailesh1 values ('shai'+CAST(? as varchar(10)))
[Execute SQL Task] Error: Executing the query "insert into shailesh1 values ('shai'+CAST(? as var..." failed 
with the following error: "Multiple-step OLE DB operation generated errors. Check each OLE DB status value, if available. No work was done.". 
Possible failure reasons: Problems with the query, "ResultSet" property not set correctly, 
parameters not set correctly, or connection not established correctly.


cast(2 as varchar(10))




exec jd3 'naem'

select * from ganesh
insert into naem values ('vishal')
INSERT INTO naem values ('Jaydeep')


exec jd3 'ganesh'

exec jd3 'jd'
select * from jd



select * from Employee 


--truncate table [dbo].[OLE DB Destination]

select * from Department

select e.First_name,e.Gender,e.Mo_no,d.D_Name from Employee e
join  Department d
on e.D_Details = d.d_id

select First_name, D_Name
from Employee e
cross join Department d

select E_id, First_name, d_name  from Employee e
join  Department d
on e.First_name = d.D_Name

select *
REFERENCES AdventureWorks2014.Production.Product (ProductID)
from Production.ProductCostHistory



alter proc jd4
@h1 int = 2
as
begin
	print @h1
end

exec jd4 4



alter proc ganesh1
@name varchar(20) = 'heloo'
as
begin
	print @name
end

exec ganesh1 'hi'





exec jd3 jd6
select * from jd7


insert into jd7 values(?)

exec jd3 jd7

if not exists(select top 1 1 from jd7 where j_name = ?)
begin
	insert into jd7 values(?)    
end




select top 1 2 from jd7 where j_name = 'D:\jaydeep\exam_db.xls'


exec jd3 parth
select * from parth





if exists(select top 1 1 from employee where first_name = 'ruj')
begin
	select 'yes'
end 
else 
begin
	select 'no'
end



