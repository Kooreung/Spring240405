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

# PRIMARY KEY 는 한 테이블에 하나만 줄 수 있다.

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