select o.Id,
       o.ShipCountry,
       (case
            when o.ShipCountry in ('USA', 'Mexico', 'Canada')
                then 'NorthAmerica'
            else 'OtherPlace'
           end
           )
FROM 'Order' as o
WHERE Id >= 15445
ORDER BY Id
LIMIT 20