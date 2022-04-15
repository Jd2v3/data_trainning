--jaydeep vadher - 20031
--jaydeep.vadher@kcsitglobal.com
--8238914441

--Q. 1
create table Customer (
C_id numeric(3) primary key identity(1,1),
C_Firstname nvarchar(20) not null,
C_middlename nvarchar(20) not null,
C_lastname nvarchar(20) not null,
C_gender nvarchar(10) not null,
C_doj date not null,
C_salary numeric(5) not null,
department nvarchar(20) default('Banking') not null)


alter table customer
drop constraint DF__Customer__depart__38996AB5 
--Q. 2
insert into Customer(C_Firstname,C_middlename,C_lastname,C_gender,C_doj,C_salary,department) values
('amit','sumit','patel','male','2019/12/24',15000,'banking'),
('saurabh','jagdishbhai','soni','male','2015/07/14',7500,'insurence'),
('mitesh', 'niranjanbhai','joshi','male','2015/09/27',45500,'banking'),
('akanhsa', 'bhogilal','mehta','female','2017/02/11',10500,'services'),
('rehnuma', 'irahim','vora','female','2018/09/12',5000,'banking'),
('parin', 'anilbhai','patel','male','2019/12/24',6500,'banking'),
('kiran', 'vitthalbhai','prajapati','female','2019/12/24',15000,'banking'),
('kiran', 'tusharkumar','shukla','male','2013/09/09',35000,'insurence'),
('jyoti', 'sumit','patel','female','2013/04/05',34500,'services'),
('sanskriti', 'jivanlal','joshi','female','2012/12/12',28000,'banking')

--Q. 3
select C_Firstname,C_middlename,C_lastname, C_salary from customer where department = 'insurence'

--Q. 4
select c.* from customer c
join customer c1
on c.C_middlename = c1.C_middlename
where c.C_middlename=c1.C_middlename and c.c_id != c1.c_id

--Q. 5
select * from Customer where DATEPART(mm,C_doj) = 9

--Q. 6
select avg(C_salary),department from Customer group by (department)

--Q. 7

alter table customer
update Department = 'sales'where C_firstname = 'jyoti'

--Q. 8
select concat

--Q. 9
alter table customer 
add C_contact numeric(10)

--

