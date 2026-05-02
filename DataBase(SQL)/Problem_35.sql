-- Problem 35: Get all vehicles that have the Maximum Engine_CC
	Select Vehicle_Display_Name
	from VehicleDetails  
	where Engine_CC = ( SELECT MAX(Engine_CC) AS MaxEngineCC  from VehicleDetails)
