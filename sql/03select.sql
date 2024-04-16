USE w3schools;

SELECT CustomerName, City
FROM Customers;

SELECT Country
FROM Customers;

# DISTINCT : 중복 제거
SELECT DISTINCT Country
FROM Customers;

-- -----

SELECT City, Country
FROM Customers;

SELECT DISTINCT City, Country
FROM Customers;

-- -----
# COUNT : Records 수 구하는 내장 함수
SELECT COUNT(City)
FROM Customers;

SELECT COUNT(DISTINCT City)
FROM Customers;