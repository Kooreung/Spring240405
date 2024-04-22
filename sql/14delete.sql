USE w3schools;

SELECT *
FROM Employees
ORDER BY EmployeeID DESC ;

DELETE FROM Employees
WHERE EmployeeID = 1012;

SELECT * FROM Employees
WHERE EmployeeID = 1012;

SELECT * FROM Employees
WHERE FirstName = 'nancy';

# 모든 레코드 지우기 = WHERE 빼기

DELETE
FROM Employees;

SELECT *
FROM Employees;