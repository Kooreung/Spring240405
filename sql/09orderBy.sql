USE w3schools;

# 조회 순서 결정
# order by ( Column )
SELECT *
FROM Products
ORDER BY ProductID;

# ASC : 오름차순
SELECT *
FROM Products
ORDER BY Price ASC;

# DESC : 내림차순
SELECT *
FROM Products
ORDER BY Price DESC;

# 여러 Column
SELECT *
FROM Products
ORDER BY CategoryID , Price , ProductName;

SELECT *
FROM Products
ORDER BY CategoryID ASC , Price DESC;

# Column 명 대신 Column Index 로 지정 가능
SELECT *
FROM Products
ORDER BY 4, 6;

# SELECT 에 작성한 Column 명 순서를 따라야 함
SELECT ProductName, CategoryID, Price, Unit
FROM Products
ORDER BY 2, 3;

# todo : 나이가 많은 직원부터 나이가 적은 직원순으로 직원 조회
# todo : 국가명, 도시명 순으로 고객 조회
# todo : 도시명 순으로 공급자 조회
# todo : First Name의 역순으로 직원 조회

SELECT *
FROM Employees
ORDER BY BirthDate ;

SELECT *
FROM Customers
ORDER BY Country, City;

SELECT *
FROM Suppliers
ORDER BY City;

SELECT *
FROM Employees
ORDER BY FirstName DESC ;