-- Problem 30: Get all Vehicle_Display_Name, NumDoors and add extra column to describe number of doors by words, and if door is null display 'Not Set'
SELECT V.Vehicle_Display_Name , V.NumDoors , 
CASE
	WHEN V.NumDoors = 1 THEN 'One DOORS'
	WHEN V.NumDoors = 2 THEN 'TWO DOORS'
	WHEN V.NumDoors = 3 THEN 'THREE DOORS'
	WHEN V.NumDoors = 4 THEN 'FOUR DOORS'
	WHEN V.NumDoors = 5 THEN 'FIVE DOORS'
	WHEN V.NumDoors = 6 THEN 'SIX DOORS'
	WHEN V.NumDoors = 8 THEN 'EIGHT DOORS'
	WHEN V.NumDoors = 0 THEN 'Zero DOORS'
	ELSE 'Not Set'
	END AS DOORDESCIRPTION
	FROM VehicleDetails V