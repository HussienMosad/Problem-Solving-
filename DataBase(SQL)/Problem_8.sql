-- Problem 8: Get Make, FuelTypeName and Number of Vehicles per FuelType per Make


SELECT M.Make , F.FuelTypeName , COUNT(*) AS NumberOfVehicles
FROM Makes M JOIN VehicleDetails V 
ON V.MakeID = M.MakeID
JOIN FuelTypes F
ON F.FuelTypeID = V.FuelTypeID
where V.Year between 1950 and 2000
GROUP by M.Make , F.FuelTypeName
ORDER BY M.Make ASC, F.FuelTypeName ASC , NumberOfVehicles DESC