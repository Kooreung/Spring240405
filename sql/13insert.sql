
USE w3schools;

# INSER INTO 테이블명 (컬럼 명...)
# VALUES (데이터들)

SELECT *
FROM Employees
ORDER BY EmployeeID DESC ;

INSERT INTO Employees (LastName)
VALUES ('ironman');

INSERT INTO Employees (FirstName)
VALUES ('tony');

INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('captain', 'steve', '1990-01-01', 'pic1', 'america');

INSERT INTO Employees (FirstName, LastName)
VALUES ('natasha', 'widow');

# todo : 새 고객을 2개 입력하세요.
INSERT INTO Customers
(CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('hulk', 'bruce', 'ny', 'boston', '99999', 'usa');
INSERT INTO Customers
(CustomerName, ContactName, Address, PostalCode, Country)
VALUES ('thor', 'odinson', 'asgard', '22222', 'Korea');

SELECT *
FROM Customers
ORDER BY CustomerID DESC;

DESC Customers;

SELECT *
FROM Employees
ORDER BY EmployeeID DESC;

# null : 값이 없음