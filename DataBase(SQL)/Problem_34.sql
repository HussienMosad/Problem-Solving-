--Problem 34: Get all vehicles that have the minimum Engine_CC
	Select Vehicle_Display_Name
	from VehicleDetails  
	where Engine_CC = ( SELECT MIN(Engine_CC) AS MinEngineCC  from VehicleDetails)

	