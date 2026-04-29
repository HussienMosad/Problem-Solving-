-- Problem 18: Get total vehicles per DriveTypeName Per Make and order them per make asc then per total Desc
	SELECT distinct D.DriveTypeName , M.Make , COUNT(*)  AS totalvehicles
	FROM VehicleDetails V INNER JOIN MAKES M
	ON V.MakeID = M.MakeID
	INNER JOIN DriveTypes D
	ON D.DriveTypeID = V.DriveTypeID
	GROUP BY D.DriveTypeName , M.Make
	ORDER BY M.Make ASC , totalvehicles DESC