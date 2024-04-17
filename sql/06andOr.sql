USE w3schools;

SELECT *
FROM Products
WHERE ProductName LIKE 'a%'
   OR ProductName LIKE 'c%';

SELECT *
FROM Products
WHERE CategoryID = 1
   OR CategoryID = 3
   OR CategoryID = 5;

SELECT *
FROM Products
WHERE SupplierID = 2
  AND CategoryID = 2
  AND Price < 20;

# WHERE 의 조건을 ( ) 사용해서 우선순위 결정

SELECT *
FROM Products
WHERE SupplierID = 2
  AND (CategoryID = 2
  OR Price > 20);
