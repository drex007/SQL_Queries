select geoID, sum(amount), avg(amount)
from sales
group by geoID;
 

select pr.category, p.team, sum(boxes), sum(amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
group by pr.Category, p.Team;

select pr.product, sum(s.amount) as 'Total amount'
from sales s
join products pr on pr.pid = s.pid
group by pr.Product
order by 'Total Amount' desc 

