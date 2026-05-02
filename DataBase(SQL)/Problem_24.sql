-- Problem 24: Get all vehicles that have Engines > 3 Liters and have only 2 doors
SELECT *
FROM VehicleDetails V
	WHERE V.Engine_Liter_Display > 3.00 AND V.NumDoors = 2 ;
