--Problem 17: Get total Makes that Mantufactures DriveTypeName=FWD

SELECT COUNT(*) AS TotalMakesWithFWD
FROM (
	SELECT DISTINCT M.Make , D.DriveTypeName
	FROM Makes M INNER JOIN VehicleDetails V
	ON V.MakeID = M.MakeID
	INNER JOIN DriveTypes D
	ON D.DriveTypeID = V.DriveTypeID
	WHERE D.DriveTypeName = 'FWD'
)R1