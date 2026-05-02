--Problem 36: Get all vehicles that have Engin_CC below average
	Select Vehicle_Display_Name
	from VehicleDetails  
	where Engine_CC  < ( SELECT AVG(Engine_CC) AS AvgEngineCC  from VehicleDetails)