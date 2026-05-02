-- Problem 28: Get all vehicles that their body is 'Coupe' or 'Hatchback' or 'Sedan' and manufactured in year 2008 or 2020 or 2021

	SELECT B.BodyName , V.* 
	FROM Bodies B INNER JOIN VehicleDetails V 
	ON V.BodyID = B.BodyID
	WHERE	( B.BodyName IN ( 'Coupe' , 'Hatchback' , 'Sedan' ) ) AND	 (V.Year IN ( 2008 ,2020 , 2021))