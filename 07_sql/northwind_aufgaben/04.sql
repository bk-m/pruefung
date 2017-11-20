SELECT c.`CompanyName`,
       SUM(od.`UnitPrice`*od.`Quantity`) AS Umsatz
FROM customers AS c
  LEFT JOIN orders AS o ON c.`CustomerID` = o.`CustomerID`
  LEFT JOIN `order details` AS od ON od.`OrderID` = o.`OrderID`
WHERE YEAR(o.orderdate) = 1996
GROUP BY c.`CompanyName`
ORDER BY umsatz DESC

