#aggregate : 집계함수
# 집계 시 NULL 은 집계 제외 됨

# COUNT : 갯수
SELECT COUNT(EmployeeId)
FROM Employees;

SELECT COUNT(Notes)
FROM Employees;

SELECT COUNT(Country)
FROM Customers;

SELECT COUNT(DISTINCT Country)
FROM Customers;

SELECT Country
FROM Customers;


# MIN : 최솟값
# MAX : 최댓값

SELECT MAX(Price)
FROM Products;

SELECT MIN(Price)
FROM Products;

SELECT MIN(BirthDate)
FROM Employees;

SELECT MAX(BirthDate)
FROM Employees;

#SUM : 합계
SELECT SUM(Price)
FROM Products;

#AVG : 평균
SELECT AVG(Price)
FROM Products;