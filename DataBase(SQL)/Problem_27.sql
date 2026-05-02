--Problem 27: Get all vehicles that their Body is 'Coupe' or 'Hatchback' or 'Sedan'
	SELECT B.BodyName , V.* 
FROM Bodies B INNER JOIN VehicleDetails V 
ON V.BodyID = B.BodyID
WHERE	 B.BodyName IN ( 'Coupe' , 'Hatchback' , 'Sedan' )