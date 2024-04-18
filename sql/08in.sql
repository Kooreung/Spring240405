
USE w3schools;

# IN 하나라도 같다면...
SELECT *
FROM Customers
WHERE Country = 'Germany'
   OR Country = 'UK';

SELECT *
FROM Customers
WHERE Country IN ('germany', 'uk', 'france');

SELECT *
FROM Products
WHERE CategoryID IN (2, 3, 6);

SELECT *
FROM Suppliers
WHERE Country IN ('brazil', 'japan', 'italy');