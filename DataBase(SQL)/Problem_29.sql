-- Problem 29: Return found=1 if there is any vehicle made in year 1950
SELECT FOUND = 1 
where 
exists (
SELECT TOP 1 *
		FROM VehicleDetails V
	WHERE V.Year = 1950
)