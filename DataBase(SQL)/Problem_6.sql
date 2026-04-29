--Problem 6: Get number of vehicles made between 1950 and 2000 per make and add total vehicles column beside

	SELECT	M.Make , COUNT(*) AS NumberOfVehicles , 
	TotalVehicles = (
	SELECT COUNT(*) FROM VehicleDetails)

	FROM VehicleDetails V JOIN Makes M
	ON V.MakeID = M.MakeID
	WHERE V.Year BETWEEN 1950 AND 2000
	GROUP BY M.Make
	ORDER BY NumberOfVehicles DESC
	










