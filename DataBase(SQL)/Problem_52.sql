-- Problem 52: Get all employees that have manager or does not have manager along with Manager's name, incase no manager name show null
SELECT E.Name , E.ManagerID , E.Salary , Mangers.Name AS MangerName
  FROM Employees E left join Employees as Mangers on E.ManagerID = Mangers.EmployeeID