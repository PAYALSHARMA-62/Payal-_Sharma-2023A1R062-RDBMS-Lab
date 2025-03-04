use university2;
show tables;
-- use of if null single row function
select ifnull(10,"na");
select* from instructors;

-- multirow function max, min, average, count, sum
select max(salary) as maxsal, min(salary) as minsal, avg(salary) as avgsal from instructors;
-- if i want upto 2 decimal places
select round(avg(salary),2) as avgsal,
  sum(salary) as sumsal,
    count(InstructorId) as noofemp
    from instructors;
 /*select round(avg(salary),2) as avgsal;
 select sum(salary) as sumsal from instructors;
 select count(InstructorId) as noofemp from instructors;*/
 select* from instructors;
 -- department wise agr max salary chaiya toh using group by here
 select deptid,max(salary), count(*) -- count sa bayga kitna employees work krta h
 from instructors
 group by deptid;
 select* from students; -- har ek dept mai kitna students h
 select count(*) from students;
  select deptid,count(*) from students group by deptid;
  
  show tables;
  select* from enrollments;
  select grade,count(*) from enrollments group by grade;
select studentid , count(*) from enrollments group by studentid;
select courseid , count(*) from enrollments group by courseid;
-- use of having
select courseid , count(*) from enrollments group by courseid having count(*)>10;





  
 /* use scott;
  show tables;
  select* from emp order by deptno;
  select max(sal) as maxsal from emp;
    select max(sal) as maxsal  from emp group by deptno;
    select job,sum(sal),count(*)  from emp group by job;
    -- har deptmart ka harr jobid ko total salary kitni pay krta hu
    select deptno,job, sum(sal), count(*) from emp group by deptno, job order by deptno;*/
    
    
    
    
    


 
 