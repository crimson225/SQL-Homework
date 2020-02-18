--Employee info View 

create view Emp_info as
select  e.employenum, e.firstname, e.lastname, s.salary, e.gender FROM public."Employees" as e
inner join public."Salaries" as s 
on s.empnumbr = e.employenum
select * from Emp_info;

--1986

create view hires1986 as
select firstname, lastname, hiredate
from public."Employees"
where hiredate between '1986-01-01' and '1986-12-31';

--Manager

create view Manager_info as
select m.deptnumb, m.empnumber, m.fromdate, m.todate, d.deptname, e.firstname, e.lastname from public."Employees" as e
inner join public."Dept_Mang" as m 
on m.empnumber = e.employenum
inner join public."Departments" as d
on d.deptno = m.deptnumb;

--Department list w/ Employee info

create view Emp_Dept as 
select d.empno, e.firstname, e.lastname, de.deptname from public."Departments" as de
inner join public."Dept_Emp" as d
on d.deptnum = de.deptno
inner join public."Employees" as e
on e.employenum = d.empno;

--Hercules B.

create view Herc as 
select firstname, lastname, employenum
from public."Employees"
where firstname = 'Hercules' and
lastname like 'B%';

--Sales employee info

create view sales as 
select de.deptname, e.firstname, e.lastname, d.empno from public."Dept_Emp" as d
inner join public."Employees" as e
on e.employenum = d.empno
inner join public."Departments" as de
on de.deptno = d.deptnum
where deptname = 'Sales';

--Sales and Development

create view Dev_Sales as 
select de.deptname, e.firstname, e.lastname, d.empno from public."Dept_Emp" as d
inner join public."Employees" as e
on e.employenum = d.empno
inner join public."Departments" as de
on de.deptno = d.deptnum
where deptname = 'Sales' or deptname = 'Development';

--Last name count

create view Last_counts as
select lastname, count(lastname) as "namecount"
from public."Employees" 
group by lastname
order by "namecount" desc;

