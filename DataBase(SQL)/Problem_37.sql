-- Problem 37: Get total vehicles that have Engin_CC above average
Select Count(*) as NumberOfVehiclesAboveAverageEngineCC 
	from 
	(
	Select Vehicle_Display_Name
	from VehicleDetails  
	where Engine_CC  > ( SELECT AVG(Engine_CC) AS AvgEngineCC  from VehicleDetails)
	)R1