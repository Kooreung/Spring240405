USE w3schools;

# LIMIT : 조회 결과 수를 제한

SELECT *
FROM Customers
LIMIT 3;

SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 5;

SELECT *
FROM Employees
ORDER BY BirthDate DESC
LIMIT 2;

SELECT *
FROM Products
WHERE CategoryID = 1
ORDER BY Price
LIMIT 3;

SELECT *
FROM Orders
ORDER BY OrderDate
LIMIT 1;

SELECT *
FROM Orders
ORDER BY OrderDate DESC
LIMIT 5;

SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 1;

SELECT *
FROM Products
WHERE CategoryID = 3
ORDER BY Price DESC
LIMIT 2;

# LIMIT OFFSET, 5
# OFFSET 으로부터 5개

SELECT *
FROM Products
WHERE CategoryID = 3
ORDER BY Price DESC
LIMIT 1, 2;

# paging

# 한 페이지에 10개 씩 조회할 때
# 1페이지
SELECT CustomerID, ContactName
FROM Customers
ORDER BY CustomerID
LIMIT 0, 10;
# 2페이지
SELECT CustomerID, ContactName
FROM Customers
ORDER BY CustomerID
LIMIT 10, 10;
# 3페이지
SELECT CustomerID, ContactName
FROM Customers
ORDER BY CustomerID
LIMIT 20, 10;

# n페이지 = LIMIT (n-1)*한 페이지 게시물 수, 한 페이지 게시물 수