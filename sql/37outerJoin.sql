USE mydb2;

SELECT *
FROM product;

SELECT *
FROM category;

# 상품이 존재하지 않는 카테고리 확인
SELECT *
FROM category c LEFT JOIN product p
ON c.id = p.category_id
WHERE p.id IS NULL;

USE w3schools;

SELECT c.CustomerName
FROM Orders o RIGHT JOIN Customers c
ON o.CustomerID = c.CustomerID
WHERE o.OrderID IS NULL;

# 1996 년에 주문한 적 있는 고객들의 이름
SELECT DISTINCT c.CustomerName
FROM Orders o JOIN Customers c
ON o.CustomerID = c.CustomerID
WHERE o.OrderDate LIKE '1996-%'
ORDER BY c.CustomerName;

DELETE FROM Orders WHERE OrderDate >= '1997-01-01';

SELECT DISTINCT c.CustomerName
FROM Orders o RIGHT JOIN Customers c
ON o.CustomerID = c.CustomerID
WHERE o.OrderID IS NULL;

INSERT INTO Employees
    (LastName, FirstName)
VALUES ('흥민', '손'),
       ('강인', '이');

SELECT e.FirstName, e.LastName
FROM Orders o RIGHT JOIN Employees e
ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate IS NULL;