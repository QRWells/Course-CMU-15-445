select r.RegionDescription, em.FirstName, em.LastName, max(em.BirthDate)
from Employee as em
         join EmployeeTerritory as emt on em.Id = emt.EmployeeId
         join Territory as t on t.Id = emt.TerritoryId
         join Region as r on r.Id = t.RegionId
group by r.Id
order by r.Id