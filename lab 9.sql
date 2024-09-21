CREATE TABLE Stu_Detail (
    Rno INT,
    Name VARCHAR(50),
    City VARCHAR(50),
    DID INT,
);

INSERT INTO Stu_Detail (Rno, Name, City, DID) VALUES
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

CREATE TABLE Academic (
    Rno INT,
    SPI DECIMAL(3, 1),
    Bklog INT
);

INSERT INTO Academic (Rno, SPI, Bklog) VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

CREATE TABLE Department (
    DID INT,
    DName VARCHAR(50)
);

INSERT INTO Department (DID, DName) VALUES
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');

--Part – A:  Sub Queries
--1. Display details of students who are from computer department.
select * from Stu_Detail 
where did  in
(select did from Department where DName = 'computer');
--2. Displays name of students whose SPI is more than 8.
select name from Stu_Detail 
where Rno in
(select Rno from Academic where spi>8)
--3. Display details of students of computer department who belongs to Rajkot city.
select * from Stu_Detail 
where did in 
(select did from Department where Dname ='computer')
and city='rajkot'
--4. Find total number of students of electrical department.
select count(*) as countofstu from Stu_Detail
where did in 
(select did from  Department where DName='Electrical')
--5. Display name of student who is having maximum SPI.
select name from Stu_Detail
where Rno in 
(select Rno from Academic
where SPI in 
(select max (spi) from Academic)
);
--6. Display details of students having more than 1 backlog.select * from Stu_Detailwhere Rno in(select Rno from Academicwhere Bklog>1)--Part – B: of sub queries 
--1. Display name of students who are either from computer department or from mechanical department.
	select * from Stu_Detail
	where DID in
	(select did from Department
	where DName in('computer','Mechanical') )
--2. Display name of students who are in same department as 102 studying in.	-- part A of set OpreatorCREATE TABLE Computer (
    RollNo INT,
    Name VARCHAR(50)
);


INSERT INTO Computer (RollNo, Name) VALUES
(101, 'Ajay'),
(109, 'Haresh'),
(115, 'Manish');

CREATE TABLE Electrical (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Electrical (RollNo, Name) VALUES
(105, 'Ajay'),
(107, 'Mahesh'),
(115, 'Manish');
	--1. Display name of students who is either in Computer or in Electrical.
	select name from Computer
	union
	select name from Electrical
	--2. Display name of students who is either in Computer or in Electrical including duplicate data.
	select name from Computer
	union all
	select name from Electrical
	--3. Display name of students who is in both Computer and Electrical.
	
	select name from Computer
	intersect
	select name from Electrical
	--4. Display name of students who are in Computer but not in Electrical.
	select name from Computer
	except
	select name from Electrical
	--5. Display name of students who are in Electrical but not in Computer.
	select name from Electrical
	except
	select name  from Computer
	--6. Display all the details of students who are either in Computer or in Electrical.
	select * from Computer
	union
	select * from Electrical
	--7. Display all the details of students who are in both Computer and Electrical.
	select * from Computer
	intersect
	select * from Electrical
