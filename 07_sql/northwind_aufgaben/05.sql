SELECT c.`CompanyName`,
       (SELECT SUM(od.unitprice*od.quantity)
        FROM `order details` AS od
          JOIN orders AS o ON o.orderid = od.orderid
        WHERE YEAR(o.orderdate) = 1996
        AND   c.customerid = o.customerid) AS 'Umsatz 97'
FROM customers AS c

