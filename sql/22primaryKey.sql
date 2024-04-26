USE w3schools;

CREATE TABLE my_table17
(col1 INT,
col2 INT PRIMARY KEY -- NOT NULL UNIQUE
);

INSERT INTO my_table17
(col1, col2)
VALUES (NULL,3);

SELECT *
FROM my_table17;

# PRIMARY KEY 제약사항은 한 테이블에 하나만 줄 수 있음
CREATE TABLE my_table18
(
    col1 INT PRIMARY KEY,
    col2 INT PRIMARY KEY
);
CREATE TABLE my_table19
(
    col1 INT NOT NULL UNIQUE,
    col2 INT NOT NULL UNIQUE
);
CREATE TABLE my_table20
(
    col1 INT PRIMARY KEY,
    col2 INT NOT NULL UNIQUE
);
DESC my_table19;
DESC my_table20;

# 여러 Column 조합으로 Primary Key 제약사항을 줄 수 있다.
CREATE TABLE my_table21
(
    col1 INT,
    col2 INT,
    col3 INT,
    PRIMARY KEY (col1, col2)
);

DROP TABLE my_table21;

DESC my_table21;

CREATE TABLE my_table22
(
    col1 INT PRIMARY KEY ,
    col2 INT NOT NULL UNIQUE ,
    col3 INT
);

DESC my_table22;
SELECT *
FROM my_table22;

INSERT INTO my_table22
(col1, col2, col3)
VALUES (2,2,NULL);