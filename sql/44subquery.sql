# 여러 행 1열 결과
SELECT AVG(Price)
FROM Products;

SELECT *
FROM Products
WHERE Price >= 28.866364;

SELECT *
FROM Products
WHERE Price >= (SELECT AVG(Price)
                FROM Products);

# todo ; 1번 카테고리 상품의 평균가격보다 높은 2번 카테고리 상품명 조회
SELECT AVG(Price)
FROM Products;
SELECT ProductName
FROM Products
WHERE Price >= (SELECT AVG(Price)
                FROM Products)
  AND CategoryID = 2;

# 여러행 1열 결과
SELECT CustomerID
FROM Customers
WHERE Country = 'mexico';

# mexico 고객이 주문한 건들 조회
SELECT *
FROM Orders
WHERE CustomerID IN (
                     2, 3, 13, 58, 80
    );

SELECT *
FROM Orders
WHERE CustomerID IN (SELECT CustomerID
                     FROM Customers
                     WHERE Country = 'mexico');

SELECT *
FROM Orders o
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
WHERE c.Country = 'mexico';

# 1번 카테고리 상품들이 주문 된 날짜들 조회
SELECT ProductID
FROM Products p
WHERE CategoryID = 1;

SELECT *
FROM OrderDetails
WHERE ProductID IN (1, 2, 24);

SELECT Orders.OrderDate
FROM Orders
WHERE OrderID IN (10254, 10255);

SELECT OrderDate
FROM Orders
WHERE OrderID IN (SELECT *
                  FROM OrderDetails
                  WHERE ProductID IN (SELECT ProductID
                                      FROM Products p
                                      WHERE CategoryID = 1));

SELECT o.OrderDate
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON p.ProductID = od.ProductID
WHERE p.CategoryID = 1;

# 여러 행 여러 열 결과
SELECT City, Country
FROM Customers
WHERE CustomerID IN (1, 2);

SELECT CustomerName
FROM Customers
WHERE (City, Country)
          IN (('Berlin', 'Germany'),
              ('México D.F.', 'Mexico'));

SELECT CustomerName
FROM Customers
WHERE (City, Country)
          IN (SELECT City, Country
              FROM Customers
              WHERE CustomerID IN (1, 2));

SELECT CustomerID, CustomerName, City, Country
FROM Customers;

SELECT CustomerName, City
FROM (SELECT CustomerID, CustomerName, City, Country
      FROM Customers) AS miniCustomers;

# 상관 서브 쿼리
# (속도가 좀 느리다, JOIN 으로 해결 가능한 지 먼저 확인)
# 외부 쿼리의 값이 내부 쿼리에 사용될 때

# 각 고객의 주문 횟수
SELECT CustomerName,
       Country,
       (SELECT COUNT(OrderID)
        FROM Orders
        WHERE Orders.CustomerID = Customers.CustomerID)
FROM Customers;

SELECT CustomerName, Country, COUNT(OrderID)
FROM Customers c
         JOIN Orders o
              ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID;

SELECT ProductName,
       Price,
       (SELECT SUM(Price * Quantity)
        FROM OrderDetails
        WHERE OrderDetails.ProductID = Products.ProductID) AS 매출액
FROM Products;