use  university2;
show tables;
desc instructors;
select* from instructors;
-- !st function to combine multiple column into one
select concat(name," earns ",salary) as "earns" from instructors; -- if i want to add name earns salary in this line
select concat(name," works in ",deptid) from instructors;
select name from instructors; -- as in front of every name their is dr. written and
-- I want to remove that we can do using indexing
select substr(name,5) from instructors;
select substr(name,5,3) from instructors; -- first three initiales of each name (substring)
desc students;
select name from students;
select upper(name) from students; -- a function used for upper case conversion
select lower(name) from students; -- a function used for lower case conversion
select  concat(substr(name,1,1),lower(substr(name,2))) from students; -- nested function
-- name ka starting sa 3 leetrs cahiya
select left(name,5) from students;
-- for end characters use right
select right(name,5) from students;
-- starting aur ending main space deni ho
select '    hello     ';
select ltrim('    hello     '); -- left sa space hatani ho toh
select rtrim('    hello     '); -- space left from right
select trim('    hello     ');
select salary from instructors;
select lpad(salary,15,'*') from instructors; -- out of 15 7 stars shows
select rpad(salary,15,'*') from instructors; -- out of 15 7 stars shows
select lpad(rpad(salary,15,'*'),20,'*') from instructors; -- both side * chaiya toh
select name,dob from students;
select name,day(dob) from students;
select name,month(dob) from students;
select name,year(dob) from students;
select curdate(); -- current day date
select minute(curtime());
select curtime();
select name, dayname(dob), monthname(dob) from students;
select name, dayname(dob), monthname(dob) from students where dayname(dob)="sunday" and monthname(dob)="April";
-- to get age of student
select name,year(curdate())-year(dob) as age from students;

select * from instructors;
select name,salary,deptid,
case deptid
when 3 then salary*1.30
when 6 then salary*1.40
when 9 then salary*1.50
else salary -- agr yh nhi kiya toh null ayyga
end
as incrementedsal
from instructors;