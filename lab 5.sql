create table student(
StuID INT,
FirstName VARCHAR(25),
LastName VARCHAR(25),
Website VARCHAR(50),
City VARCHAR(25),
Address VARCHAR(100)
);
insert into student (StuID,FirstName,LastName,Website,City,Address) values (1011,'Keyur','Patel','techonthenet.com','Rajkot','A-303 ''Vasant Kunj'', Rajkot');
insert into student (StuID,FirstName,LastName,Website,City,Address) values (1022,'Hardik','Shah','digminecraft.com','Ahmedabad',' "Ram Krupa", Raiya Road');
insert into student (StuID,FirstName,LastName,Website,City,Address) values (1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot, near garden');
insert into student (StuID,FirstName,LastName,Website,City,Address) values (1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','"Jig''s Home", Narol');
insert into student (StuID,FirstName,LastName,Website,City,Address) values (1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55, Raj Residency');
insert into student (StuID,FirstName,LastName,Website,City,Address) values (1066,'Ashok','Jani',null,'Baroda','A502, Club House Building');
select * from student;
	
--1. Display the name of students whose name starts with ‘k’.
select firstname from student where FirstName like '%k'
--2. Display the name of students whose name consists of five characters.
select firstname from student where firstname like '_____'
--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
select firstname,lastname from student where city like  '_____a'
--4. Display all the students whose last name ends with ‘tel’.
select * from student where lastname  like '%tel'
--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.
select * from student where  firstname like 'ha % t'
--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.
select * from student where firstname like 'k_y%'
--7. Display the name of students having no website and name consists of five characters.
select firstname from student where website is null and firstname like '_____'
--8. Display all the students whose last name consist of ‘jer’.
select firstname from student where lastname like '%jer%'
--9. Display all the students whose city name starts with either ‘r’ or ‘b’.
select *  from student where lastname like '[r,b]%'
--10. Display all the name students having websites.
select * from student where website is not null
--11. Display all the students whose name starts from alphabet A to H.
select * from student where firstname  like '[a-h]%'
--12. Display all the students whose name’s second character is vowel.
select * from student where  firstname like '_[aeiou]%'
--13. Display the name of students having no website and name consists of minimum five characters.
select firstname from student where website is null and firstname like '_____%'
--14. Display all the students whose last name starts with ‘Pat’.
select * from student where lastname like 'pat%'
--15. Display all the students whose city name does not starts with ‘b’
select * from student where city not like 's%'

-- part b 
--1. Display all the students whose name starts from alphabet A or H.
select * from student where firstname like'[a-h]%'
--2. Display all the students whose name’s second character is vowel and of and start with H.
select * from student where firstname like 'h[aeiou]%'
--3. Display all the students whose last name does not ends with ‘a’.
select * from student where lastname not like '%a'
--4. Display all the students whose first name starts with consonant.
select * from student where firstname not like '[aeiou]%'
--5. Display all the students whose website contains .netselect * from student where website like '%.net%'-- part c --1. Display all the students whose address consist of -.
select * from student where address like '%-%'
--2. Display all the students whose address contains single quote or double quote.
select * from student where address like '%''%' OR  address like '%"%'
--3. Display all the students whose website contains @.
select * from student where website like '%@%'
--4. Display all the names those are either four or five characters.select * from student where firstname like '____' or firstname like '_____'