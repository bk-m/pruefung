SELECT e.lastname,
       (SELECT COUNT(*)
        FROM orders AS o
        WHERE YEAR(o.orderdate) = 1998
        AND   o.`EmployeeID` = e.`EmployeeID`) AS Anzahl
FROM employees AS e

