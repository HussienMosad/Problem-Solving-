-- Problem 19: Get total vehicles per DriveTypeName Per Make then filter only results with total > 10,000

	SELECT distinct D.DriveTypeName , M.Make , COUNT(*)  AS totalvehicles
	FROM VehicleDetails V INNER JOIN MAKES M
	ON V.MakeID = M.MakeID
	INNER JOIN DriveTypes D
	ON D.DriveTypeID = V.DriveTypeID
	GROUP BY D.DriveTypeName , M.Make
	HAVING COUNT(*) > 10000
	ORDER BY M.Make ASC , totalvehicles DESC

