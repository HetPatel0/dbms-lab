create table emp(
Eid int,
EName varchar(25), 
Department varchar(15),
Salary decimal(8,2),
JoiningDate datetime,
City varchar(25)
);

insert into emp (Eid,EName, Department,Salary ,JoiningDate,City) values (101,'Rahul','Admin',56000,'1-jan-90','Rajkot');
insert into emp (Eid,EName, Department,Salary ,JoiningDate,City) values (102,'Hardik','IT',18000,'25-Sep-90','Ahmedabad');
insert into emp (Eid,EName, Department,Salary ,JoiningDate,City) values (103,'Bhavin','HR',25000,'14-May-91','Baroda');
insert into emp (Eid,EName, Department,Salary ,JoiningDate,City) values (104,'Bhoomi','Admin',39000,'8-Feb-91','Rajkot');
insert into emp (Eid,EName, Department,Salary ,JoiningDate,City) values (105,'Rohit','IT',17000,'23-Jul-90','Jamnagar');
insert into emp (Eid,EName, Department,Salary ,JoiningDate,City) values (106,'Priya','IT',9000,'18-Oct-90','Ahmedabad');
insert into emp (Eid,EName, Department,Salary ,JoiningDate,City) values (107,'Bhoomi','HR',34000,'25-Dec-91','Rajkot');

--1.Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
select max(salary) as maxSalary,min(salary) as minSalary from emp;
--2.Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.
select sum(salary) as total, avg(salary) as avg from emp;
--3.Find total number of employees of EMPLOYEE table.
select count (ename) from emp;
--4.Find highest salary from Rajkot city.
select max(salary) as max from emp where city ='rajkot';
--5.Give maximum salary from IT department.
select max(salary) as max from emp where Department='it';
--6.Count employee whose joining date is after 8-feb-91.
select count(ename) as name from emp where JoiningDate='9-feb-91';
--7.Display average salary of Admin department.
select avg(salary) as avg from emp where Department='admin';
--8.Display total salary of HR department.
select sum (salary) as total from Emp where Department='hr';
--9.Count total number of cities of employee without duplication.
select count (distinct city) as total from emp;
--10.Count unique departments.
select count(distinct Department)as total from emp;
--11.Give minimum salary of employee who belongs to Ahmedabad.
select min(salary) as min from emp group by city;
--12.Find city wise highest salary.
select max(salary) as max from emp group by city;
--13.Find department wise lowest salary.
select department , min(salary) from emp group by Department;
--14.Display city with the total number of employees belonging to each city.
select city,count(ename) as Noemp from emp group by city;
--15.Give total salary of each department of EMP table.
select department,avg(salary) as avgSal from emp group by Department;
--16.Give average salary of each department of EMP table without displaying the respective department name.


-- Part B 
--1.Count the number of employees living in Rajkot.
select count (eid) as emp_rajkot from emp where city= 'rajkot';
--2.Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
select max(salary)-min(salary) as difference from emp;
--3.Display the total number of employees hired before 1st January, 1991.
select count (eid) as total_NoEmp from emp where JoiningDate >'1-jan-91';


--Part c
--1.Count the number of employees living in Rajkot or Baroda.
select count(eid) as total_emp from emp where city in ('rajkot','Baroda');
--2.Display the total number of employees hired before 1st January, 1991 in IT department.
select count (eid) as total_emp from emp where JoiningDate<'1-jan-91' and Department='it';
--3.Find the Joining Date wise Total Salaries.
select sum(salary) as Total_salary from emp group by JoiningDate;
--4.Find the Maximum salary department & city wise in which city name starts with ‘R’.
select department,city,max(salary) from emp group by Department,city having city like 'r%';
