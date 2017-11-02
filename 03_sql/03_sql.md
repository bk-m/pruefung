## Intro SQL
> **cheat sheets**  
> - [01](http://www.cheat-sheets.org/sites/sql.su/)
> - [02](https://zeroturnaround.com/rebellabs/sql-cheat-sheet/)
> - [03](https://www.w3schools.com/sql/sql_quickref.asp)

![SQL cheat sheet](img/sql_cs.png)

```sql
-- equi join (ignore this construct if using JOIN)
SELECT
  o.orderid,
  o.orderdate,
  c.companyname
FROM
  orders AS o, customers AS c
WHERE
  o.customerid = c.customerid;
```
