USE w3schools;

#UPDATE 테이블명
#SET 컬럼명 = 바꿀값, 컬럼명 = 바꿀값 ...
#WHERE 레코드의 조건

#주의 : UPDATE 전에 같은 WHERE 로 꼭 SELECT 시도

SELECT *
FROM Customers
WHERE CustomerID = 10;

UPDATE Customers
SET ContactName = 'GOLD MAN'
WHERE CustomerID = 10;

UPDATE Customers
SET Address = 'STARK TOWER',
    City = 'NEWYORK',
    PostalCode = '12345'
WHERE CustomerID = 10;

UPDATE Customers
SET Country = '영국'
WHERE Country = 'UK';

UPDATE Customers
SET Country = '영국';

SELECT *
FROM Products
WHERE ProductID = 1;

UPDATE Products
SET Price = Price / 2
WHERE ProductID = 1;

SELECT *
FROM Products
WHERE CategoryID = 2;

UPDATE Products
SET Price = Price * 3
WHERE CategoryID = 2;