SELECT productid,
       productname,
       categoryid
FROM products
WHERE categoryid = (SELECT categoryid
                    FROM categories
                    WHERE categoryname = 'Seafood')

