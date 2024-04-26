
CREATE DATABASE mydb2;
USE mydb2;

CREATE TABLE table1 (
    col_a INT
);

CREATE TABLE table2 (
    col_b INT
);

INSERT INTO table1
(col_a)
VALUES (1),
       (2),
       (3),
       (4);

INSERT INTO table2
(col_b)
VALUES (2),
       (2),
       (3),
       (4),
       (5);

# JOIN : 두 개 이상의 테이블을 결합
# Column 수 : 두 Table 의 Column 수의 합
# Record 수 : 두 Table 의 Record 수의 곱
# Cartesian Product
# = 데카르트 곱 = 곱집합

SELECT *
FROM table1 JOIN table2
ORDER BY col_a, col_b;

# JOIN 의 종류 ( like 집합 )

# INNER JOIN : 두 Table 에 모두 있는 값만 선택
SELECT *
FROM table1 JOIN table2 ON col_a = col_b;

CREATE TABLE table3
(col_a INT);

CREATE TABLE table4
(col_b INT);

INSERT INTO table3
VALUES (5),
       (6),
       (7);

INSERT INTO table4
VALUES (5),
       (6),
       (7),
       (8);

SELECT *
FROM table3 JOIN table4 ON col_a = col_b;

SELECT *
FROM table3 JOIN table4;
