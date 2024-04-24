
USE w3schools;

# CREATE TABLE ( 새 테이블 만들기)
# TABLE 생성 시 Column 을 정의 해야 한다.

# CREATE TABLE TableName (
# Column1 ColumnDataType,
# Column2 ColumnDataType,
# ...)

# TableName 과 ColumnName 의 대부분 관습 :
# (UPPER/lower)_snake_case
# UPPER_SNAKE_CASE
# lower_snake_case

CREATE TABLE my_table1 (
    address varchar(30),
    city    varchar(50),
    country varchar(20)
);

INSERT INTO my_table1
    (address, city, country)
VALUES ('신촌', '서울', '한국');

SELECT *
FROM my_table1;

DESC my_table1;

#-----

CREATE TABLE my_table2 (
    name    varchar(30),
    age     varchar(30)
);

DESC my_table2;

INSERT INTO my_table2
    (name, age)
VALUES ('김갑갑','33');

SELECT *
FROM my_table2;