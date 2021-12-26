select cn, ROUND(100.0 * ct / total, 2) as per
from (select s.CompanyName                                                   as cn,
             SUM(case when o.ShippedDate > o.RequiredDate then 1 else 0 end) as ct,
             COUNT(*)                                                        as total
      from 'Order' as o,
           Shipper as s
      where o.ShipVia = s.Id
      group by ShipVia)
order by per desc