-- Problem 49: Get the Lowest Manufacturers manufactured the lowest number of models
	SELECT M.Make , COUNT(*) AS NumberOfModels
	FROM Makes M inner join MakeModels	MM
	on M.MakeID = MM.MakeID
	GROUP BY M.Make
	HAVING COUNT(*) = (
		
										select MIN(NumberOfModels) as MinNumberOfModels
										from
										(

												SELECT      MakeID, COUNT(*) AS NumberOfModels
												FROM       
																		 MakeModels
												GROUP BY MakeID
												
										) R1

)