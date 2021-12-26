select id, cur, last, round(julianday(cur) - julianday(last), 2)
from (select o.Id as id, o.OrderDate cur, lag(o.OrderDate, 1, 0) over (order by o.OrderDate) as last
      from "Order" as o
      where CustomerId = 'BLONP'
      order by o.OrderDate
      limit 10)