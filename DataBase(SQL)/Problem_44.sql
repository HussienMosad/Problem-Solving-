--Problem 44: Get Total Number Of Doors Manufactured by 'Ford'
	SELECT M.Make , SUM(V.NumDoors) AS TotalNumberOfDoors
	FROM Makes M INNER JOIN VehicleDetails V
	ON V.MakeID = M.MakeID
	
	GROUP BY M.Make
	HAVING M.Make = 'Ford' 
	Order By TotalNumberOfDoors desc
	