create database  cse_3A_238

create table deposit(
actno int,
cname varchar(50),
bname varchar(50), 
amount decimal(8,2),
adate datetime
);


insert into deposit values (109,'minu','powai',7000.00,'1995-8-10')

select * from deposit

create table branch (
bname varchar(50),
city varchar(50)
);


insert into branch values ('powai','bombay')
select * from branch


create table customers (
CNAME VARCHAR (50),
CITY VARCHAR (50)
);

insert into customers values ('naren','bombay')
select * from customers



