create database testing;
use testing;
create table dept
(
did int primary key,
dname varchar(20),
location varchar(20)
);
desc dept;

insert into dept values
(10, 'cse', 'noida'),
(20, 'it', 'delhi'),
(30, 'iit', 'kanpur');
select* from dept;

create table emp
(
eid int primary key,
name varchar(20),
salary decimal(8,2),
did int,
foreign key(did) references dept(did)
);
select* from emp;
insert into emp values
(1, 'james', 3000, 10),
(2, 'smith', 5000, 20);
insert into emp values
(7, 'paal', 8000, 60);
select* from emp;
delete from dept where did=20;
select* from dept;
