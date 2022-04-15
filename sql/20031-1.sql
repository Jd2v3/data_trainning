--jaydeep vadher
--jaydeep.vadher@kcsitglobal.com
--8238914441

-- Q. 1
create table students (
S_ID numeric(5) primary key identity(1,1) ,
S_name varchar(20) NOT NULL,
S_subject varchar(20) not null default('science'),
S_mark numeric(3) not null



)

--Q. 2
select * from Students

insert into students(S_name,S_mark) values('jaydeep',99),('ganesh',56),('shailesh',66)

insert into students(S_name,S_mark,S_subject) values('riddhi','85','maths'),('jaydeep',35,'maths'),('ganesh',69,'maths'),('shailesh',85,'maths'),('jaydeep',58,'english'),('ganesh',65,'english'),('riddhi',47,'english')

--Q. 3
select * from Students where(S_mark>=50 and S_mark<=90 and S_subject= 'science')

--Q. 4
select *, case when S_mark>=90 then 'a'
				when S_mark<90 and S_mark>=50 then 'b'
				when S_mark<50 and S_mark>=35 then 'c'
				when S_mark<35 and S_mark>=0 then 'f'
				when S_mark<0 and S_mark>100 then 'invalid entry'
			end
from students



--Q. 5








