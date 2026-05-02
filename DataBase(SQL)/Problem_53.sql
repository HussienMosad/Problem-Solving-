--Problem 53: Get all employees that have manager or does not have manager along with Manager's name, incase no manager name the same employee name as manager to himself
SELECT E.Name , E.ManagerID , E.Salary ,
case 
   when Mangers.Name is null  then E.Name
   else Mangers.Name
   end AS MangerName
  FROM Employees E left join Employees as Mangers on E.ManagerID = Mangers.EmployeeID