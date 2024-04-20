-- create a table emp with info of 5 employee having their id,fname,lname,salary
use etlc;
create table emp(id int, fname varchar(40), lname varchar(40), salary int);
select * from emp;
insert into emp
values(1,'avinash','waghmare',40000),
(2,'swapnil','shinde',50000),
(3,'nikhil','hirve',45000),
(4,'vikas','yadav',35000),
(5,'sunny','yadav',55000);
-- add info of akash rana earning 50000 to table
insert into emp(id,fname,lname,salary)
values(6,'akash','rana',50000);
select * from emp;
-- add only fname and lname of joy lob to the table
insert into emp(fname,lname)
values('joy','lobo');
select * from emp;
select * from emp where salary>40000;
-- show the fnames of employee having id 3
select fname from emp where id=3;
-- show the fname of employee having salary greater than salary of id 3
select fname from emp where salary>45000;
-- what is the salary of akash
select salary,fname from emp where fname='akash';
-- create a table emp6 having info of given employees
create table emp6(id int,fname varchar(40), lname varchar(40),salary int,designation varchar(40));
select * from emp6;
insert into emp6
values(1,'harsh','singh',300000,'DA'),
(2,'ganesh','joshi',450000,'DS'),
(3,'lata','ghosh',600000,'DS'),
(4,'jaya','murthy',200000,'DA'),
(5,'darshan','katkar',500000,'DS');
select * from emp6;
/* Question on where condition*/
-- show the detail of id 4
select * from emp6 where id=4;
-- show the fnames of employee having salary greater than 300000
select fname,salary from emp6 where salary>300000;
-- show the fnames of all DS in the table
select fname from emp6 where designation='DS';
-- what is salary of jaya
select fname,salary from emp6 where fname='jaya';
-- what is the designation of lata
select designation, fname from emp6 where fname='lata';

/* using add or and not codition*/
-- what is the salary of jaya and lata
select fname,salary from emp6 where fname='lata' or fname='jaya';
-- show the details of employee having fname lata and salary 600000
select fname,salary from emp6 where fname='lata' and salary=600000;
-- show the fnames of employee having salary 400000 or 1000000
select fname,salary from emp6 where salary=500000 or salary=1000000;
-- show the details of employee except id 4
select * from emp6 where not id=4;



/* IN and NOT IN Operator*/
-- what is the salary of darshan and jaya and lata 
select salary,fname from emp6 where fname in ('darshan','jaya','lata');

-- show the salary of all employees except jaya and lata
select salary,fname from emp6 where fname not in ('jaya','lata');


/* BETWEEN and NOT BETWEEN operator*/
-- show the employees name having salary between 400000 to 600000
select fname,salary from emp6 where salary between 400000 and 600000;
-- show the employee name having salary not in range of 400000 to 600000
select fname,salary from emp6 where salary not between 400000 and 600000;

/* LIKE OPERATOR*/
-- show the employee names ending with 'sh'
select fname from emp6 where fname like '%sh';
-- show the names which have 'e' in thier fname
select fname from emp6 where fname like '%e%';
-- show the names of employee starting 'g'
select fname from emp6 where fname like 'g%';
-- show the names of employees having 'n' in their fname
select fname from emp6 where fname like '%n%';
-- show names of employees having 'o' in their lname
select lname from emp6 where lname like '%o%';
-- show the names of employees having 'h'  in ending of their lname
select lname from emp6 where lname like 'g%';
-- show the names having 'a' in second place
select fname from emp6 where fname like '_a%';
-- show the names having 's' in the second last position
select fname from emp6 where fname like '%s_';
-- show the names having 'o' in third position of their lname
select fname,lname from emp6 where lname like '_o%';
-- show the fname and salary of employee having 'a' in second position and salaray greater than 470000
select fname,salary from emp6 where fname like '_a%' and salary>470000;
-- show the names of employee having 'ar' in their name
select fname from emp6 where fname like '%ar%';