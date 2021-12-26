select name, id, total
from (select name, id, total, ntile(4) over (order by total) as bucket
      from (select ifnull(c.CompanyName, 'MISSING_NAME')     as name,
                   o.CustomerId                              as id,
                   round(sum(od.Quantity * od.UnitPrice), 2) as total
            from "Order" as o
                     left join Customer as c on c.Id = o.CustomerId
                     join OrderDetail as od on od.OrderId = o.Id
            group by o.CustomerId
            order by total))
where bucket = 1