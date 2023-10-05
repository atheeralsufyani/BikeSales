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

--Profit per year for each country and State--
select Country, State, Year, Sum(Profit) as ProfitPerYear
from Sales
group by Country, State, Year
order by 1,2,3