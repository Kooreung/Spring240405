-- SQL 주석
# SQL 주석

# 명령문 실행 ctrl + enter
SELECT *
FROM w3schools.Employees;

# 명령문 종료는 ; 꼭 사용
SELECT *
FROM w3schools.Customers;

# table : 데이터들이 저장되는 공간
#  행, 열로 이루어져 있음

# schema 만들기
CREATE DATABASE test1;

# 새 테이블 만들기
CREATE TABLE test1.test (
                            id int,
                            name varchar(20)
);

# 새 테이블 사용하기 / 데이터베이스명.테이블명
SELECT * FROM test1.test;

#현재 사용 중인 데이터베이스 선택
USE test1;

#현재 사용 중인 데이터베이스의 테이블 사용
SELECT * FROM test;

SELECT * FROM w3schools.Customers;

# 현재 test1 데이터베이스 사용 중
# 다른 데이터베이스의 테이블은 생략 못한다.
USE w3schools;
SELECT * FROM Customers;