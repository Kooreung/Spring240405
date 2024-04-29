USE w3schools;

SELECT p.ProductName, c.CategoryName
FROM Products p
         JOIN Categories c
              ON p.CategoryID = c.CategoryID
WHERE p.ProductID = 1;

SELECT p.ProductName, s.SupplierName, s.Country
FROM Products p
         JOIN Suppliers s
              ON p.SupplierID = s.SupplierID
WHERE p.SupplierID = 10;

SELECT c.CustomerName
FROM Orders o
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
WHERE OrderID = 10249;

SELECT e.FirstName, e.LastName
FROM Orders o
         JOIN Employees e
              ON o.EmployeeID = e.EmployeeID
WHERE OrderID = 10249;

SELECT s.ShipperName
FROM Orders o
         JOIN Shippers s
              ON o.ShipperID = s.ShipperID
WHERE OrderID = 10249;

SELECT c.CustomerName, o.OrderDate
FROM Orders o
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
WHERE c.CustomerID = 90
ORDER BY OrderDate;

SELECT e.FirstName, e.LastName, o.OrderDate
FROM Employees e
         JOIN Orders o
              ON e.EmployeeID = o.EmployeeID
WHERE e.EmployeeID = 3
ORDER BY o.OrderDate;