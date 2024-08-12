--1. Retrieve all data from table DEPOSIT.
select * from deposit
--2. Retrieve all data from table BORROW.
select * from BORROW
--3. Retrieve all data from table CUSTOMERS.
select * from customers
--4. Display Account No, Customer Name & Amount from DEPOSIT.
select actno ,cname,amount from deposit  
--5. Display Loan No, Amount from BORROW.
select loanno ,amount from BORROW
--6. Display loan details of all customers who belongs to ‘ANDHERI’ branch from borrow table.
select * from BORROW where BNAME ='ANDHERI'
--7. Give account no and amount of depositor, whose account no is equals to 106 from deposit table.
select actno ,amount from deposit where actno = 106
--8. Give name of borrowers having amount greater than 5000 from borrow table.
select cname from BORROW where AMOUNT > 5000
--9. Give name of customers who opened account after date '1-12-96' from deposit table.
select cname from deposit where adate> '1996-12-1'
--10. Display name of customers whose account no is less than 105 from deposit table.
select cname from deposit where actno < 105
--11. Display name of customer who belongs to either ‘NAGPUR’ or ‘DELHI’ from customer table. (OR & IN)
select cname from customers where CITY in ('nagpur','delhi')
--12. Display name of customers with branch whose amount is greater than 4000 and account no is less than
--105 from deposit table.
select cname,bname from deposit where amount > 4000  and actno < 105
--13. Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow
--table. (AND & BETWEEN)

--14. Find all depositors who do not belongs to ‘ANDHERI’ branch from deposit table.
--15. Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’
--Or ‘M.G.ROAD’ and Account No is less than 104 from deposit table.