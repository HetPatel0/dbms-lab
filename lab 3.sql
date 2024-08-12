Create TABLE cricket ( 
name varchar(50),
city varchar(50),
age int 
);
insert into cricket (name,city,age) values ('Sachin Tendulkar','Mumbai',30);
insert into cricket (name,city,age) values ('Rahul Dravid','Bombay',35);
insert into cricket (name,city,age) values ('M. S. Dhoni','Jharkhand',31);
insert into cricket (name,city,age) values ('Suresh Raina','Gujarat',30);
select* from cricket;
-- part a of select into opreation 
--1. Create table Worldcup from cricket with all the columns and data.
select * into worldcup from cricket;

--2. Create table T20 from cricket with first two columns with no data.
select * into t20 from cricket where 1=0;
--3. Create table IPL From Cricket with No Data
select  * into ipl from cricket where 1=0;

-- part b of slection into

Create TABLE Employee( 
name varchar(50),
city varchar(50),
age int 
);
insert into Employee  (name,city,age) values ('Jay Patel','Rajkot',30);
insert into Employee  (name,city,age) values ('Rahul Dave','Baroda',35);
insert into Employee  (name,city,age) values ('Jeet Patel','Surat',31);
insert into Employee  (name,city,age) values ('Vijay Raval','Rajkot',30);



--1. Create table Employee_detail from Employee with all the columns and data.
select * into Employee_detail from Employee ;

--2. Create table Employee_data from Employee with first two columns with no data.
select name,city into Employee_data from Employee where 1=0;
--3. Create table Employee_info from Employee with no Data
