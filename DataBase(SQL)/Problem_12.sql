--Problem 12: Count Vehicles by make and order them by NumberOfVehicles from high to low.
		SELECT M.Make , COUNT(*) AS NumberOfVehicles
		FROM MAKES M INNER JOIN VehicleDetails V
		ON M.MakeID = V.MakeID
		GROUP BY M.Make
		ORDER BY NumberOfVehicles DESC