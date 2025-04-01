use scott;
show tables;
desc emp;
desc dept;
-- using two tables here
select emp.ename,emp.sal,emp.deptno,dept.deptno,dept.dname,dept.loc from emp join dept on(emp.deptno=dept.deptno);
select emp.ename,emp.sal,dept.dname,dept.loc from emp join dept on(emp.deptno=dept.deptno); -- equi join
select emp.ename,emp.sal,dept.dname,dept.loc from emp natural join dept ; -- types of equi join natural join(no need of using aliasic)
select* from emp;
select* from salgrade;
select * from emp join salgrade;
-- non equii join (ie between)
select* from emp join salgrade on sal between losal and hisal; -- cartesion 
select empno,ename,sal,grade from emp join salgrade on sal between losal and hisal;
-- join can be in one table called self join
# select emp.ename,emp.mgr from emp e join emp m on(e.empno=m.mgr);
select emp.ename,dept.dname from emp join dept on(emp.deptno=dept.deptno);
select emp.ename,dept.dname from emp right outer join dept on(emp.deptno=dept.deptno); -- unmatched record bhi dikhga like operation
select emp.ename,dept.dname from emp left outer join dept on(emp.deptno=dept.deptno); -- unmatched record bhi dikhga like operation
select emp.ename,dept.dname from emp right outer join dept on(emp.deptno=dept.deptno) union select emp.ename,dept.dname from emp left outer join dept on(emp.deptno=dept.deptno); -- unmatched record bhi dikhga like operation
; -- full outer join
insert into emp values(999,'Kuldeep','CLERK','1980-12-09',67890,NULL,NULL);
