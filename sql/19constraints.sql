
USE w3schools;

# constraints
# 특정 Column 에 제약 사항을 줌
# (값이 필수 , 기본값 , 중복 불가 등)

# NOT NULL : 값이 필수적으로 필요함

CREATE TABLE my_table11
(
    col1    VARCHAR(10),
    col2    VARCHAR(10) NOT NULL
);

DESC my_table11;

INSERT INTO my_table11
(col1, col2)
VALUES ('value', 'value');

INSERT INTO my_table11
(col2)
VALUES ('value');

SELECT *
FROM my_table11;

# NULL 값 조회
SELECT *
FROM my_table11
WHERE col1 IS NULL;

# NULL 값 아닌 것 조회
SELECT *
FROM my_table11
WHERE col1 IS NOT NULL;

# NULL 과 연산은 모두 FALSE, 따라서 != , <> 같은 연산 불가능

CREATE TABLE my_table12
(col1 VARCHAR(10) NOT NULL , col2 VARCHAR(10) NOT NULL);

DESC my_table12;

INSERT INTO my_table12
(col1, col2)
VALUES ('abc', 'qwe');

