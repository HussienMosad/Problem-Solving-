--Problem 47: Get the highest number of models manufactured
SELECT MAX(NumberOfModels) AS MaxNumberOfModels
FROM 
(
SELECT M.Make , COUNT(*) AS NumberOfModels
	FROM Makes M 
	 INNER JOIN MakeModels MM
	 ON M.MakeID = MM.MakeID
	 GROUP BY M.Make
	 )R1