--1. Add two more columns City VARCHAR (20) and Pincode INT.
alter table deposit add city varchar(20), pincode int;
--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
alter table deposit alter column cname varchar(35);
--3. Change the data type DECIMAL to INT in amount Column.
alter table deposit alter column amount int;
--4. Rename Column ActNo to ANO.
exec sp_rename 'deposit.Actno','ano';
--5. Delete Column City from the DEPOSIT table.
alter table deposit drop column city;
--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
exec sp_rename 'deposit','deposite_detail';


--part b of alter
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
exec sp_rename 'deposite_detail.adate','aopendate';
--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
alter table deposite_detail drop column aopendate;
--3. Rename Column CNAME to CustomerName.
exec sp_rename 'deposite_detail.cname','CustomerName';

-- part A of delete truncate drop opreaation

--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
delete from deposite_detail where  amount>=4000;
--2. Delete all the accounts CHANDI BRANCH.
delete from deposite_detail where BNAME ='CHANDNI';
--3. Delete all the accounts having account number (ANO) is greater than 105.
delete from deposite_detail where ano>105;
--4. Delete all the records of Deposit_Detail table. (Use Truncate)
truncate table deposite_detail;
--5. Remove Deposit_Detail table. (Use Drop)
drop table deposite_detail;


-- part b 
Create Table empolyee_master(
	EmpNo INT,
    EmpName VARCHAR(25),
    JoiningDate DATETIME,
    Salary DECIMAL (8,2),
    City VARCHAR(20),
)

insert empolyee_master values (101,'Keyur',2002-1-5,12000,'rajkot')
insert empolyee_master values (102,'Hardik',2004-2-15,14000,'Ahmedabad')
insert empolyee_master values (103,'Kajal',2006-3-14,15000,'Baroda')
insert empolyee_master values (104,'Bhoomi',2005-6-23,12500,'Ahmedabad')
insert empolyee_master values (105,'Harmit',2004-2-15,14000,'rajkot')
insert empolyee_master values (106,'Mitesh',2001-9-25,5000,'Jamnagar')
insert empolyee_master values (107,'Meera',null,7000,'Morbi')
insert empolyee_master values (108,'Kishan',2003-2-6,10000,null)	




