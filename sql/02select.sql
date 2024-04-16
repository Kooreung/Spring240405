# 데이터베이스 선택
USE w3schools;

# 데이터 조회
# SELECT * FROM 테이블 명
SELECT * FROM Customers;

SELECT * FROM Employees;

SELECT * FROM Suppliers;

# 특정 컬럼만 조회
# SELECT Column 명, Column FROM Table 명
SELECT CustomerName, City
FROM Customers;

# 모든 컬럼 조회는 SELECT * FROM Table 명
SELECT * FROM Customers;

# Table 의 Column 들 조회
DESCRIBE Customers;
DESC Customers;

DESC Employees;
SELECT * FROM Employees;
# SELECT 에 나열한 Column 명 순서대로 결과가 나온다
SELECT LastName, FirstName
FROM Employees;

# SQL 작성 관습 : 키워드는 대문자, 나머지는 소문자