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