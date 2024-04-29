SELECT CategoryID, COUNT(ProductID)
FROM Products
GROUP BY CategoryID;

# 상품 수가 10개 이상인 카테고리
SELECT *
FROM (SELECT CategoryID, COUNT(ProductID) 상품수
      FROM Products
      GROUP BY CategoryID) c
WHERE 상품수 >= 10;

SELECT CategoryID, COUNT(ProductID) 상품수
FROM Products
GROUP BY CategoryID
HAVING 상품수 >= 10;

# 고객이 5명 이상 있는 국가들 조회
SELECT Country, COUNT(CustomerID) 고객수
FROM Customers
GROUP BY Country
HAVING 고객수 >= 5
ORDER BY 고객수 DESC;

# 97년 7월 매출액 SUM(가격*개수) 이 1만 달러 이상인 직원들 조회
SELECT Employees.EmployeeID,
       LastName,
       SUM(Price * Quantity) 판매수
FROM Employees
         JOIN Orders
              ON Employees.EmployeeID = Orders.EmployeeID
         JOIN OrderDetails
              ON Orders.OrderID = OrderDetails.OrderID
         JOIN Products
              ON OrderDetails.ProductID = Products.ProductID
WHERE OrderDate BETWEEN '1997-07-01' AND '1997-07-31'
GROUP BY Employees.EmployeeID
HAVING 판매수 >= 10000
ORDER BY 판매수 DESC;