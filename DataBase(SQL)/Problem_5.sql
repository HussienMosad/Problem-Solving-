-- GET ALL MAKES THAT HAVE MORE THAN 12000 Vehicle


-- WITH HAVING 
Select M.Make ,Count(*) AS 
NumberOfVehicle from  VehicleMasterDetails V
JOIN Makes M
ON V.MakeID = M.MakeID
WHERE 
V.Year BETWEEN 1950 AND 2000
GROUP BY M.Make
HAVING 
Count(*) > 12000
ORDER BY NumberOfVehicle  DESC


-- WITHOUT HAVING 
SELECT * FROM (
Select M.Make ,Count(*) AS 
NumberOfVehicle from  VehicleMasterDetails V
JOIN Makes M
ON V.MakeID = M.MakeID
WHERE 
V.Year BETWEEN 1950 AND 2000
GROUP BY M.Make
)R1
WHERE NumberOfVehicle > 12000
ORDER BY NumberOfVehicle  DESC