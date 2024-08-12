create table sales_data(
region varchar(25),
product1 varchar(25),
sales_amount int,
year1 int
);
insert into sales_data(region ,product1 ,sales_amount,year1 ) values ('North America','Watch',1500,2023);
insert into sales_data(region ,product1 ,sales_amount,year1 ) values ('Europe','Mobile',1200,2023);
insert into sales_data(region ,product1 ,sales_amount,year1 ) values ('Asia','Watch',1800,2023);
insert into sales_data(region ,product1 ,sales_amount,year1 ) values ('North America','TV',900,2024);
insert into sales_data(region ,product1 ,sales_amount,year1 ) values ('Europe','Watch',2000,2024);
insert into sales_data(region ,product1 ,sales_amount,year1 ) values ('Asia','Mobile',1000,2024);
insert into sales_data(region ,product1 ,sales_amount,year1 ) values ('North America','Mobile',1600,2023);
insert into sales_data(region ,product1 ,sales_amount,year1 ) values ('Europe','TV',1500,2023);
insert into sales_data(region ,product1 ,sales_amount,year1 ) values ('Asia','TV',1100,2024);
insert into sales_data(region ,product1 ,sales_amount,year1 ) values ('North America','Watch',1700,2024);

select* from sales_data;
--1. Display Total Sales Amount by Region.
select region,
	sum(sales_amount) as sumsale 
from sales_data
group by region;
--2. Display Average Sales Amount by Product
select product1,
	avg(sales_amount) as avgsale 
from sales_data
group by product1;
--3. Display Maximum Sales Amount by Year
select year1,
	max(sales_amount) as maxsale 
from sales_data
group by year1;
--4. Display Minimum Sales Amount by Region and Year
select region,
	min(sales_amount) as minsale
from sales_data
group by region;
--5. Count of Products Sold by Region
select region,
	count(product1) as countsale
from sales_data
group by region;

--6. Display Sales Amount by Year and Product
select year1,product1,
	sum(sales_amount) as totalsale
from sales_data
group by year1,product1;

--7. Display Regions with Total Sales Greater Than 5000
select region,
	sum(sales_amount)as totalsale
from sales_data
group by region 
having sum(sales_amount) >5000;
--8. Display Products with Average Sales Less Than 10000
select product1,
	avg(sales_amount)as avgsale
from sales_data
group by product1
having avg(sales_amount) <10000;
--9. Display Years with Maximum Sales Exceeding 500
select year1,
	max(sales_amount)as maxsale
from sales_data
group by year1
having max(sales_amount) >500;
--10. Display Regions with at Least 3 Distinct Products Sold.
select region,
	count(distinct product1)as countsale
from sales_data
group by region
having count(distinct product1) >2;
--11. Display Years with Minimum Sales Less Than 1000
select year1,
	min(sales_amount)as minsale
from sales_data
group by year1
having min(sales_amount) < 1000;

--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
select region ,
	sum(sales_amount) as totalsale
from sales_data 
where year1 = 2023
group by region
order by sum(sales_amount);

--part B
--1. Display Count of Orders by Year and Region, Sorted by Year and Region
select year1,region,
	count(product1) as countsale
from sales_data
group by year1,region
order by count(product1);
--2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
select region ,
	max(sales_amount) as maxsale
from sales_data
group by region
having max(sales_amount) >1000
order by region

--3. Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
select year1 ,
	sum(sales_amount) as totalsale
from sales_data
group by year1
having sum(sales_amount) <1000
order by year1 desc;
--4. Display Top 3 Regions by Total Sales Amount in Year 2024
