use hr;
show tables;
-- pairwise comparison
select Last_name,manager_id,department_id from employees where (manager_id,department_id) in
(select  manager_id,department_id from employees where employee_id in(174,180)) order by department_id;

-- nonpairwise 
select Last_name,manager_id,department_id 
from employees where manager_id in(select  manager_id 
									from employees 
									where employee_id in(174,180))
and 
department_id in(select 
					department_id from employees 
                    where employee_id in(174,180))
order by department_id;

-- inline view if we want to make table during getting outputs
-- voh employees chaiya jinki salary kissi bhi dept ki avg salary sa jada
select last_name,salary 
from employees where salary > any
(select avg(salary)
from employees
group by department_id)
order by salary;

-- employees ki salary apna hi department ki avg salary sa jada h

# inline view (making table at runtime)
select last_name,salary,e.department_id,deptavg.avgsal from
employees e						# runtime table making
join
(select department_id,avg(salary) as avgsal     -- temporary table
from employees 
group by department_id) as deptavg
on(e.department_id=deptavg.department_id)
and e.salary>deptavg.avgsal;


#corelated sub queries
-- in inline view innermoset query generate output for outer query but insert
-- corelated sub query inner query take help from outer query for generating output
-- hrr row ka lliya different output generate hoga
select last_name,salary,department_id 
from employees outeremp
where salary>(select avg(salary) 
				from employees 
                where department_id=outeremp.department_id);
