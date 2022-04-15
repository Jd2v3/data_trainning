create table Employee
(
E_id int primary key identity(1,1),
First_name varchar(20) not null,
Last_name varchar(20) not null,
Email_id varchar(100) not null unique 
)

alter table Employee add 