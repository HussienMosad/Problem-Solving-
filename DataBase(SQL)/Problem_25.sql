-- Problem 25: Get make and vehicles that the engine contains 'OHV' and have Cylinders = 4
SELECT M.Make , V.*
	FROM VehicleDetails V INNER JOIN Makes M
	ON V.MakeID = M.MakeID
	WHERE (V.Engine LIKE '%OHV%')   AND   (V.Engine_Cylinders = 4) ;