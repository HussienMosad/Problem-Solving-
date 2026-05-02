-- Problem 51: Get all employees that have manager along with Manager's name.
SELECT E.Name , E.ManagerID , E.Salary , Mangers.Name AS MangerName
  FROM Employees E inner join Employees as Mangers on E.ManagerID = Mangers.EmployeeID