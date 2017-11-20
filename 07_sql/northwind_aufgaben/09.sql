SELECT 'Employees' AS Tab,
       CONCAT(e.firstname," ",e.lastname) AS Name,
       city,
       homephone AS Phone
FROM employees AS e
UNION
SELECT 'Suppliers' AS Tab,
       contactname AS Name,
       city,
       phone AS Phone
FROM suppliers
UNION
SELECT 'Customers' AS Tab,
       contactname AS Name,
       city,
       phone AS Phone
FROM customers
ORDER BY city

