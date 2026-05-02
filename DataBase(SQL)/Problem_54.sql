--Problem 54: Get All Employees managed by 'Mohammed'
	SELECT E.Name , E.ManagerID , E.Salary , Mangers.Name AS MangerName
  FROM Employees E inner join Employees as Mangers on E.ManagerID = Mangers.EmployeeID
  where Mangers.Name = 'Mohammed'