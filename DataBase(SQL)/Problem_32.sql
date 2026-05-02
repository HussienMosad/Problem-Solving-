--Problem 32: Get all Vehicle_Display_Name, year, Age for vehicles that their age between 15 and 25 years old
	SELECT * 
	FROM (
	SELECT V.Vehicle_Display_Name , V.Year , Age = YEAR(GETDATE()) - V.Year
	FROM VehicleDetails V
	
	)R1
			WHERE R1.Age BETWEEN 15 AND 25
			ORDER BY Age DESC