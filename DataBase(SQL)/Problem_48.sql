-- Problem 48: Get the highest Manufacturers manufactured the highest number of models
	
	SELECT M.Make , COUNT(*) AS NumberOfModels
	FROM Makes M inner join MakeModels	MM
	on M.MakeID = MM.MakeID
	GROUP BY M.Make
	HAVING COUNT(*) = (
		
										select Max(NumberOfModels) as MaxNumberOfModels
										from
										(

												SELECT      MakeID, COUNT(*) AS NumberOfModels
												FROM       
																		 MakeModels
												GROUP BY MakeID
												
										) R1

)