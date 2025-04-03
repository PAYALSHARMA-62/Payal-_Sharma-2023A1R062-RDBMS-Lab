use university2;
# single row sub query
select* from instructors where salary>(select salary from instructors where name="Dr. Emily Davis");

# Multi row subquery
select name,salary from instructors where salary in(select min(salary) minsal from instructors group by deptid);
select studentid,name,dayname(dob) from students where dayname(dob) in(select dayname(dob) from students where studentid in(1,2));


#multi column subquery (pair wise)
select name,mid,deptid from instructors where(mid,deptid) in(select mid,deptid from instructors where instructorid in(4,6));

#multi column subquery (non pair wise)
select name,mid,deptid from instructors where(mid) in(select mid from instructors where instructorid in(4,6))
and deptid in(select deptid from instructors where instructorid in(4,6));

#corelated subquery
select name,salary from instructors ins where salary>(select avg(salary) avgsal from instructors where deptid=ins.deptid);