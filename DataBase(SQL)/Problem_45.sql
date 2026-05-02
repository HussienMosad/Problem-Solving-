--  Problem 45: Get Number of Models Per Make
SELECT M.Make , COUNT(*) AS NumberOfModels
	FROM Makes M 
	 INNER JOIN MakeModels MM
	 ON M.MakeID = MM.MakeID
	 GROUP BY M.Make
	 Order By NumberOfModels Desc