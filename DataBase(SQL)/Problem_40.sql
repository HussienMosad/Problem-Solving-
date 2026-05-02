--Problem 40: Get all vehicles that has one of the Max 3 Engine CC
	
	SELECT VehicleDetails.Vehicle_Display_Name FROM VehicleDetails
	WHERE Engine_CC IN
	(
	
Select  distinct top 3 Engine_CC from VehicleDetails
	Order By Engine_CC Desc
	)