Soln 1:
select max(Salary) as SecondHighestSalary 
from Employee e
where e.Salary NOT IN (select max(s.salary) from employee s)

Soln 2:
select max(Salary) as SecondHighestSalary from Employee 
where salary < (select max(Salary) from Employee)