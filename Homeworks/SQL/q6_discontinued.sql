select pn, cpn, ctn
from (select p.ProductName as pn, c.CompanyName as cpn, c.ContactName as ctn, min(o.OrderDate)
      from OrderDetail as od,
           Product as p,
           "Order" as o
               join Customer as c on c.Id = o.CustomerId
      where od.ProductId = p.Id
        and p.Discontinued = 1
        and od.OrderId = o.Id
      group by p.ProductName
      order by p.ProductName)