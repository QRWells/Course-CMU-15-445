select A.name, A.cnt, B.avg, B.min, B.max, A.cnq
from (select c.CategoryName as name, count(p.CategoryId) as cnt, sum(p.UnitsOnOrder) as cnq, c.Id as id
      from Category as c,
           Product as p
      where p.CategoryId = c.Id
      group by c.Id
      order by c.Id) as A,
     (select round(avg(p.UnitPrice), 2) as avg, min(p.UnitPrice) as min, max(p.UnitPrice) as max, p.CategoryId as id
      from Product as p
      group by p.CategoryId) as B
where A.cnt > 10
  and B.id = A.id
order by A.id
