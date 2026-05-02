--  Problem 31: Get all Vehicle_Display_Name, year and add extra column to calculate the age of the car then sort the results by age desc.
SELECT V.Vehicle_Display_Name , V.Year , Age = YEAR(GETDATE()) - V.Year
	FROM VehicleDetails V
	ORDER BY Age DESC