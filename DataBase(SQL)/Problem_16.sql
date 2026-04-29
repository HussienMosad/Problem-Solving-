--Problem 16: Get all Makes that manufactures DriveTypeName = FWD
	SELECT DISTINCT M.Make , D.DriveTypeName
	FROM Makes M INNER JOIN VehicleDetails V
	ON V.MakeID = M.MakeID
	INNER JOIN DriveTypes D
	ON D.DriveTypeID = V.DriveTypeID
	WHERE D.DriveTypeName = 'FWD'
	ORDER BY M.Make

	
	