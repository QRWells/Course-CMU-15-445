select group_concat(name, ', ')
from (select p.ProductName as name
      from "Order" as o
               join OrderDetail as od on od.OrderId = o.Id
               join Product as p on p.Id = od.ProductId
      where o.CustomerId = 'QUEEN'
        and o.OrderDate like '2014-12-25%'
      order by p.Id)