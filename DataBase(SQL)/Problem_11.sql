--   Problem 11: Get Total Makes that runs with GAS
	SELECT COUNT(*) AS TotalMakesrunswithGAS
	FROM
	(
	SELECT DISTINCT M.Make , F.FuelTypeName
	FROM MAKES M INNER JOIN VehicleDetails V
	ON M.MakeID = V.MakeID
	INNER JOIN FuelTypes F
	ON V.FuelTypeID = F.FuelTypeID
	WHERE F.FuelTypeName = N'GAS'
	)R1