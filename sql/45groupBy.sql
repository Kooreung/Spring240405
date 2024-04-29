# GROUP BY : 집계 함수를 그룹 별로 결과 내도록 함

SELECT CategoryID, COUNT(ProductID)
FROM Products
GROUP BY CategoryID;

SELECT CategoryID                                          번호,
       (SELECT CategoryName
        FROM Categories
        WHERE Categories.CategoryID = Products.CategoryID) 이름,
       COUNT(ProductID)                                    상품수
FROM Products
GROUP BY CategoryID;

SELECT Categories.CategoryID 번호,
       CategoryName          이름,
       COUNT(ProductID)      상품수
FROM Categories
         JOIN Products
              ON Categories.CategoryID = Products.CategoryID
GROUP BY Categories.CategoryID;

# 특정 기간의 직원 별 매출 액
SELECT Employees.EmployeeID,
       LastName,
       SUM(Quantity * Price) 매출액
FROM Orders
         JOIN OrderDetails
              ON Orders.OrderID = OrderDetails.OrderID
         JOIN Products
              ON Products.ProductID = OrderDetails.ProductID
         JOIN Employees
              ON Employees.EmployeeID = Orders.EmployeeID
WHERE OrderDate BETWEEN '1997-07-01' AND '1997-07-31'
GROUP BY Employees.EmployeeID
ORDER BY 매출액 DESC;

# 1997년 7월 기준 고객별 소비금액 금액이 높은 순 조회
SELECT Customers.CustomerID  고객번호,
       CustomerName          고객명,
       SUM(Quantity * Price) 소비액
FROM Customers
         JOIN Orders
              ON Customers.CustomerID = Orders.CustomerID
         JOIN OrderDetails
              ON Orders.OrderID = OrderDetails.OrderID
         JOIN Products
              ON OrderDetails.ProductID = Products.ProductID
WHERE OrderDate BETWEEN '1997-07-01' AND '1997-07-31'
GROUP BY Customers.CustomerID
ORDER BY 소비액 DESC
LIMIT 5;

# GROUP BY 에 두 개 사용 가능
SELECT Country, City, COUNT(CustomerID)
FROM Customers
GROUP BY Country, City;

# 고객별 , 상품별 주문량
SELECT Customers.CustomerID,
       Customers.CustomerName,
       Products.ProductID,
       Products.ProductName,
       SUM(Quantity) 상품주문수
FROM OrderDetails
         JOIN Orders
              ON OrderDetails.OrderID = Orders.OrderID
         JOIN Customers
              ON Orders.CustomerID = Customers.CustomerID
         JOIN Products
              ON Products.ProductID = OrderDetails.ProductID
GROUP BY Customers.CustomerID, Products.ProductID
ORDER BY CustomerID, 상품주문수 DESC;