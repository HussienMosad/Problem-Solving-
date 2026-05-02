--  Problem 26: Get all vehicles that their body is 'Sport Utility' and Year > 2020
SELECT B.BodyName , V.* 
FROM Bodies B INNER JOIN VehicleDetails V 
ON V.BodyID = B.BodyID
WHERE	 B.BodyName = 'Sport Utility'		AND		V.Year >2020