select distinct o.ShipName
from 'Order' as o
where o.ShipName like '%-%'
order by o.ShipName