USE w3schools;

SELECT AVG(Price)
FROM Products
WHERE CategoryID = 1;

SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductID = 1;

SELECT SUM(Quantity)
FROM OrderDetails od
         JOIN Orders o
              ON od.OrderID = o.OrderID
WHERE ProductID = 2
  AND o.OrderDate BETWEEN '1997-01-01' AND '1997-12-31';

SELECT SUM(p.Price * od.Quantity)
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON p.ProductID = od.ProductID
WHERE o.CustomerID = 1
  AND o.OrderDate BETWEEN '1997-01-01' AND '1997-12-31';

# 멕시코 고객들이 1997년에 소비한 금액은?
SELECT SUM()
FROM Customers c
         JOIN Products
ON

