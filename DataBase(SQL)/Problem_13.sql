--Problem 13: Get all Makes/Count Of Vehicles that manufactures more than 20K Vehicles
	SELECT M.Make , COUNT(*) AS NumberOfVehicles
		FROM MAKES M INNER JOIN VehicleDetails V
		ON M.MakeID = V.MakeID
		GROUP BY M.Make
		HAVING  Count(*) > 20000
		ORDER BY NumberOfVehicles DESC