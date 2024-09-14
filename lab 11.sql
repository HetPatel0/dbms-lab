CREATE TABLE Stu_Info (
    Rno INT ,
    Name VARCHAR(50),
    Branch VARCHAR(50)
);

INSERT INTO Stu_Info (Rno, Name, Branch)
VALUES 
    (101, 'Raju', 'CE'),
    (102, 'Amit', 'CE'),
    (103, 'Sanjay', 'ME'),
    (104, 'Neha', 'EC'),
    (105, 'Meera', 'EE'),
    (106, 'Mahesh', 'ME');

CREATE TABLE Result (
	RNO INT,
    SPI DECIMAL(4, 2),
	);

INSERT INTO Result (Rno, SPI)
VALUES 
    (101, 8.8),
    (102, 9.2),
    (103, 7.6),
    (104, 8.2),
    (105, 7.0),
    (107, 8.9);  

CREATE TABLE EMPLOYEE_MASTER (
    EmployeeNo VARCHAR(50) ,
    Name VARCHAR(50),
    ManagerNo VARCHAR(50)
);

INSERT INTO EMPLOYEE_MASTER(EmployeeNo, Name, ManagerNo)
VALUES 
    ('E01', 'Tarun', NULL),
    ('E02', 'Rohan', 'E02'),
    ('E03', 'Priya', 'E01'),
    ('E04', 'Milan', 'E03'),
    ('E05', 'Jay', 'E01'),
    ('E06', 'Anjana', 'E04');


--Part – A:

--1. Combine information from student and result table using cross join or Cartesian product.
		select *
		from Stu_Info,Result;
--2. Perform inner join on Student and Result tables.
		select *
		from stu_info S
	    join Result R
		on S.RNo =R.RNO;
--3. Perform the left outer join on Student and Result tables.
		select *
		from Stu_Info S
		left join Result R
		on S.RNo =R.RNO;
--4. Perform the right outer join on Student and Result tables.
		select	*
		from Stu_Info S
		right join Result R
		on S.RNo =R.RNO;
--5. Perform the full outer join on Student and Result tables.
		select * 
		from Stu_Info S
		full join Result R
		on S.Rno =R.RNo;
--6. Display Rno, Name, Branch and SPI of all students
		select *
		from Stu_Info S
		left join Result R
		on S.Rno = R.RNO;
--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
		select * 
		from Stu_Info S
		join Result R
		on S.Rno = R.RNO
		where s.branch ='ce';
--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
		select *
		from Stu_Info S
		join Result R
		On S.Rno = R.RNO
		where S.Branch!='Ec';
--9. Display average result of each branch.
		select S.BRANCH,AVG(R.spi)
		from Stu_Info S
		join Result R 
		on S.Rno = R.RNO
		group by S.Branch;

--10. Display average result of CE and ME branch.
		select S.BRANCH,AVG(R.spi)
		from Stu_Info S
		join Result R 
		on S.Rno = R.RNO
		where S.Branch in('ce','me')
		group by S.Branch;

--Part – B:


--1. Display average result of each branch and sort them in ascending order by SPI.
		select S.BRANCH,AVG(R.spi) as avg_branch
		from Stu_Info S
		join Result R 
		on S.Rno = R.RNO
		group by S.Branch
		order by AVG(R.spi);

--2. Display highest SPI from each branch and sort them in descending order.
        select S.BRANCH,AVG(R.spi) as avg_branch
		from Stu_Info S
		join Result R 
		on S.Rno = R.RNO
		group by S.Branch
		order by AVG(R.spi) desc;

--Part – C:
--1. Retrieve the names of employee along with their manager’s name from the Employee table.
select E.Name as employee ,M.Name as manager
from EMPLOYEE_MASTER E
left join EMPLOYEE_MASTER M
on E.ManagerNo = M.EmployeeNo;
