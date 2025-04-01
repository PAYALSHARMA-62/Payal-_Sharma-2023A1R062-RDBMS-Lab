use university2;
show tables;
select upper(name) from students; -- a function used for upper case conversion
select lower(name) from students; -- a function used for upper case conversion
select concat(name," earns ",salary) as "earns" from instructors; -- if i want to add name earns salary in this line
select substr(name,5,3) from instructors; -- first three initiales of each name (substring)
select rtrim('    hello     '); -- left sa space hatani ho toh
select lpad(salary,15,'*') from instructors; -- out of 15 7 stars shows
select left(name,5) from students;
select name,salary,deptid,
case deptid
when 3 then salary*1.30
when 6 then salary*1.40
when 9 then salary*1.50
else salary -- agr yh nhi kiya toh null ayyga
end
as incrementedsal
from instructors;
select name,length(name) from instructors;
select curmonth();
select name,day(dob) from students;
select name,month(dob) from students;
select name,year(dob) from students;

select max(salary) as maxsal, min(salary) as minsal, avg(salary) as avgsal from instructors;
select max(salary) as maxsal from instructors;
select count(InstructorId) as noofemp from instructors;
 select count(*) from students;
  select name,sum(salary) as sumsal from instructors group by name;
select courseid , count(*) from enrollments group by courseid having count(*)>10;
select coursename,deptid from courses order by deptid;

select coursename,deptname from courses join departments on (courses.deptid=departments.deptid);
select name,salary,grade from instructors join salgrade on(Salary between minsal and 