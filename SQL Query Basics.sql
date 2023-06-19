select * from sales;
select Amount, Customers, GeoID, Boxes from sales;
Select Amount, Customers, Boxes, Amount/Boxes from sales;
select Amount, Customers, Boxes, Amount/Boxes 'Amount per box' from sales;
select * from sales where amount > 10000 order by amount desc;
select * from sales where geoid="g4" order by pid, amount desc;
select * from sales where amount > 10000 and saledate >= '2022-01-01';


select* from sales where boxes between 0 and 50;
select saledate, amount, boxes, weekday(saledate) as 'Day of week' from sales where weekday(saledate) = 4;


select * from people;
select * from people where team = "Delish"  or team= "Jucies";
select * from people where team in ('Delish','Jucies');
select * from people where salesperson like "B%";

select SaleDate, Amount,
	case 	when amount < 1000  then 'Amount less than 1k'
			when amount < 5000 then 'Amount less than 5k'
            when amount < 10000 then 'Amount less than 10k'
		else '10k or more'
	end as 'Amount category'
from sales;



