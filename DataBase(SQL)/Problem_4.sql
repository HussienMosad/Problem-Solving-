Select M.Make ,Count(*) as 
NumberOfVehicle from  VehicleMasterDetails V
JOIN Makes M
ON V.MakeID = M.MakeID
WHERE V.Year BETWEEN 1950 AND 2000
GROUP BY M.Make
ORDER BY NumberOfVehicle  DESC