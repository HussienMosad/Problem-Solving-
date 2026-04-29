--Problem 14: Get all Makes with make starts with 'B'
	SELECT M.Make
	FROM Makes M
	WHERE M.Make LIKE 'B%'