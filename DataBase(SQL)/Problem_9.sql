--  Problem 9: Get all vehicles that runs with GAS
	SELECT V.* , F.FuelTypeName
	FROM VehicleDetails V INNER JOIN FuelTypes F
	ON V.FuelTypeID = F.FuelTypeID
	WHERE F.FuelTypeName = N'GAS'

	
