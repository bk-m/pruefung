SELECT
  *
FROM
  customers AS c
    LEFT JOIN orders AS o ON c.CustomerID = o.CustomerID
where
  o.orderid is null
