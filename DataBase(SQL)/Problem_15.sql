--Problem 15: Get all Makes with make ends with 'W'

	SELECT M.Make
	FROM Makes M
	WHERE M.Make LIKE '%W'