SELECT COUNT(*) AS Counter,
       c.`CompanyName`
FROM orders AS o
  JOIN customers AS c ON o.`CustomerID` = c.`CustomerID`
WHERE YEAR(orderdate) = 1997
GROUP BY c.`CompanyName`
HAVING COUNT(*) >= 5
ORDER BY COUNT(*),
         c.`CompanyName`
