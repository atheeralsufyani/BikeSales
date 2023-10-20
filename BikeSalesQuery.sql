--Bike Sales Dataset--

--Month Name to Number to Ease The Order by--
UPDATE Sales Set Month = Case
		When Month = 'January' then 1
		When Month = 'February' then 2 
		When Month = 'March' then 3
		When Month = 'April' then 4
		When Month = 'May' then 5
		When Month = 'June' then 6
		When Month = 'July' then 7
		When Month = 'August' then 8
		When Month = 'September' then 9
		When Month = 'October' then 10
		When Month = 'November' then 11
		When Month = 'December' then 12
		End

--Profit per year for each country--
Select Country, Year, sum(Profit) as SumProfit
from Sales
group by Country, Year
order by Country, Year

--Counting Customers per Country--
select Country, count(Customer_Gender)
from Sales
group by Country

--Counting Customer Genders per Country--
select distinct Customer_Gender, Country, COUNT(Customer_Gender) 
as CountCustomerGender
from Sales
group by Customer_Gender, Country
order by 2

--Counting Age Groups per Country--
select distinct Age_Group, COUNT(Age_Group) as CountAgeGroup, Country
from Sales
group by Country, Age_Group
order by Country