 select * from sales;
 select * from people;
 
 select s.saleDate, s.amount, p.salesperson, p.spid, s.SPID from sales as s join people p on p.SPID = s.SPID;
 
 select s.saleDate, s.amount, p.salesperson, pr.product, p.team from sales s 
 join people p on p.SPID = s.SPID
 join products pr on pr.pid = s.pid
 where amount < 500
 and p.team = "Delish";
 
select * from sales;
select * from people;
 
 select s.saleDate, s.amount, p.salesperson, p.spid, s.SPID from sales as s join people p on p.SPID = s.SPID;
 select s.saleDate, s.amount, p.salesperson, pr.product, p.team from sales s 
 join people p on p.SPID = s.SPID
 join products pr on pr.pid = s.pid
 where amount < 500
 and p.team ='';
 
 select s.saleDate, s.amount, p.salesperson, pr.product, p.team, g.Geo from sales s 
 join people p on p.SPID = s.SPID
 join products pr on pr.pid = s.pid
 join geo g on g.geoid = s.geoid
 where amount < 500
 and p.team =''
 and g.Geo in ('New Zealand', 'India')
 order by SaleDate;