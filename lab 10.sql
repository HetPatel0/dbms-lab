create table student_info(
RNo int,
Name varchar(20),
Branch varchar(4),
SPI decimal(4,2) ,
Bklog int
);
insert into student_info values (101,'Raju','CE',8.80,0);
insert into student_info values (102,'Amit','CE',2.20,3);
insert into student_info values (103,'Sanjay','ME',1.50,6);
insert into student_info values (104,'Neha','EC',7.65,1);
insert into student_info values (105,'Meera','EE',5.52,2);
insert into student_info values (106,'Mahesh','EC',4.50,3);
select * from student_info;


-- PART A 

--1. Create a view Personal with all columns.
		create view personal 
		as select * 
		from student_info;
--2. Create a view Student_Details having columns Name, Branch & SPI.
		create view Student_Details
		as select Name , BRANCH, spi
		from student_info;
--3. Create a view AcademicData having columns RNo, Name, Branch.
		create view  AcademicData
		as select RNo, Name , BRANCH
		from student_info;
--4. Create a view Student_bklog having all columns but students whose bklog more than 2.
		create view  Student_bklog
		as select *
		from student_info
		where Bklog >2;
--5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four letters.
		create view Student_Pattern 
		as select RNo,Name,Branch
		from student_info
		where Name like '____';
--6. Insert a new record to AcademicData view. (107, Meet, ME)
		insert into AcademicData values (107,'Meet','ME');
--7. Update the branch of Amit from CE to ME in Student_Details view.
		update Student_Details 
		set Branch='ME'
		where Name ='Amit';
--8. Delete a student whose roll number is 104 from AcademicData view
		delete from AcademicData where RNo='104';


--PART B

--1. Create a view that displays information of all students whose SPI is above 8.5
		create view display 
		as select *
		from student_info
		where SPI>8.5;
--2. Create a view that displays 0 backlog students.
		create view backlog 
		as select *
		from student_info
		where Bklog=0;
--3. Create a view Computerview that displays CE branch data only
		create view Computerview
		as select * 
		from  student_info
		where Branch = 'ce';

--Part c 

--1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
		create view  Result_EC
		as select name, spi
		from student_info
		where SPI<5 and Branch ='ec';

--2. Update the result of student MAHESH to 4.90 in Result_EC view.
		update Result_EC
		set SPI=4.90
		where Name='Mahesh';
--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having bklogs more than 5.
		create view  Stu_Bklog
		as select RNo,Name,Bklog
		from student_info
		where Name like 'M%' and bklog >5;
--4. Drop Computerview form the database
		drop view Computerview;