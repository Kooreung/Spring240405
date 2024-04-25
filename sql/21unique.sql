
USE w3schools;

# 다른 레코드의 Column 값이 전부 중복되지 않음

CREATE TABLE my_table15
(col1 VARCHAR(3),
col2 VARCHAR(3) UNIQUE);

INSERT INTO my_table15
(col1, col2)
VALUES ('abc' , 'def');

SELECT *
FROM my_table15;

INSERT INTO my_table15
(col1, col2)
VALUES ('qwe' , 'qwe');

CREATE TABLE my_table16
(col1 VARCHAR(5),
col2 VARCHAR(5) UNIQUE,
col3 VARCHAR(5) NOT NULL UNIQUE);

SELECT *
FROM my_table16;

DESC my_table16;

INSERT INTO my_table16
(col1, col2, col3)
VALUES ( NULL, NULL, '789');

