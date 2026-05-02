--  Problem 41: Get all Makes that manufactures one of the Max 3 Engine CC

	SELECT DISTINCT M.Make
	FROM Makes M INNER JOIN VehicleDetails V
	ON V.MakeID = M.MakeID
	WHERE V.Engine_CC IN
	(
	
Select  distinct top 3 Engine_CC from VehicleDetails
	Order By Engine_CC Desc
	)
	ORDER BY M.Make