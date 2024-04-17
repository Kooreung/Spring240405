USE w3schools;

# SELECT 에 Column
# FROM 에 Table
# WHERE 에 솎아 낼 Records 조건 ( Filter )
SELECT City, Country, CustomerName
    FROM Customers
    WHERE Country = 'Germany';

# WHERE / Column / comparison-operators / 'Value'
# Value 가 Number 형식이라면 ' ' 제외 가능

SELECT *
FROM Customers
WHERE CustomerID = 1;

# 사용 가능한 comparison-operators
# = / < / > / <= / >=
# 같지않다 : != / <>

SELECT *
FROM Customers
WHERE CustomerID <= 3;

SELECT *
FROM Customers
WHERE CustomerID >= 80;

SELECT *
FROM Customers
WHERE CustomerID <> 3;

# 문자열 비교 ( 대소문자 미구분 )

SELECT *
FROM Customers
WHERE CustomerName > 'S';

SELECT *
FROM Customers
WHERE Country = 'germany';

# 날짜 비교

SELECT *
FROM Employees
WHERE BirthDate = '1968-12-08';

SELECT *
FROM Employees
WHERE BirthDate <= '1968-12-08';

# todo : 미국에 있는 공급자(Suppliers) 조회
# todo : Last name이 Fuller인 직원(Employees) 조회
# todo : CategoryID가 3번인 상품(Products) 조회
# todo : 가격이 20.00 이상인 상품(Products) 조회
# todo : 주문일이 1997년 전(1997년 포함안함)인 주문(Orders) 조회

SELECT *
FROM Suppliers
WHERE Country = 'USA';

SELECT *
FROM Employees
WHERE LastName = 'Fuller';

SELECT *
FROM Products
WHERE CategoryID = 3;

SELECT *
FROM Products
WHERE Price >= 20;

SELECT *
FROM Orders
WHERE OrderDate < '1997-01-01';

SELECT * FROM Employees;