SELECT companyname,
       city
FROM customers
WHERE city IN (SELECT city FROM Customers GROUP BY city HAVING COUNT(*) > 3)
ORDER BY city,
         companyname

