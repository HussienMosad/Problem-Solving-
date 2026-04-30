--Problem 22: Get percentage of vehicles that has no doors specified
	select
	(
		CAST ((select count(*) as TotalWithNoSpecifiedDoors
		from VehicleDetails
		where NumDoors is Null) as FLOAT )

		/
	CAST (( SELECT COUNT(*) FROM VehicleDetails AS TotalDoors) AS FLOAT)

	) AS PercOfNoSpecifiedDoors