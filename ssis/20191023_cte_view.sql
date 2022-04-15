select e_name,e_gender,d_id as 'department' from emp
where department = 4



with cte_name
as
(
	select e_name,e_gender,d_id as 'department' from emp
)
select * from cte_name
where department = 4



select * from emp
where e_salary in (select max(e_salary) from emp)


with cte
as
(select *,DENSE_RANK() over(order by e_salary desc) [Rank] from emp)
select * from cte where [Rank] = 2


select top 1 * from
(select top 2 * from emp order by e_salary desc) as a
order by e_salary


select * from department
select * from emp


alter view vw_emp
as
select e_name,e_email,e_gender,d_name,e.d_id
from sample.dbo.emp e
join sample.dbo.department d
on e.d_id = d.d_id


select * from vw_emp
