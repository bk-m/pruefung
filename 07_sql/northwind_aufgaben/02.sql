SELECT emp.employeeid,
       emp.lastname,
       boss.`EmployeeID` as BossID,
       boss.lastname as Boss
FROM employees AS emp
  LEFT JOIN employees AS boss ON emp.`ReportsTo` = boss.`EmployeeID`

