
# 사용할 데이터베이스(schema) 선택
USE w3schools;

SHOW tables;

# 새 데이터베이스 만들기
CREATE DATABASE mydb1;
USE mydb1;
SHOW tables ;
CREATE TABLE my_table1
(
    name VARCHAR(5),
    age INT
);

CREATE DATABASE mydb2;
USE mydb2;
CREATE TABLE my_table2_1
(
    title VARCHAR(10),
    name  VARCHAR(10)
);

SELECT *
FROM mydb1.my_table1;

# 데이터베이스 삭제
DROP DATABASE mydb2;