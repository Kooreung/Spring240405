
USE w3schools;

# BETWEEN ( Min ) AND ( Max )
# 최소값과 최대값의 사이라면 TRUE

SELECT *
FROM Products
WHERE Price >= 10.00
AND Price <= 20.00;

SELECT *
FROM Products
WHERE Price BETWEEN 10.00 AND 20.00;

# 두 개의 동일한 결과 코드 >= <= (탐색 값 포함)

SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

SELECT *
FROM Employees
WHERE BirthDate BETWEEN '1960-01-01' AND '1960-12-31';