--Problem 43: Get Make and Total Number Of Doors Manufactured Per Make
	SELECT M.Make , SUM(V.NumDoors) AS TotalNumberOfDoors
	FROM Makes M INNER JOIN VehicleDetails V
	ON V.MakeID = M.MakeID
	
	GROUP BY M.Make
	Order By TotalNumberOfDoors desc
	