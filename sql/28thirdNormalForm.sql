# third Normal Form (3NF , 제 3 정규화)
# 조건
    # 1) 2 정규화가 만족되어야 한다.
    # 2) Key 가 아닌 Column 끼리 종속되면 안된다.

USE mydb1;
DROP TABLE customer;
DROP TABLE phone_number;
DROP TABLE customer_benefit;

# 3NF 위반 테이블
    # Level 과 Benefit 에 의해

CREATE TABLE customer
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    first_name   VARCHAR(5),
    last_name    VARCHAR(5),
    level        INT,
    benefit      VARCHAR(100)
);

INSERT INTO customer
(first_name, last_name, level, benefit)
VALUES ('son', 'hm', 1, '무료배송'),
       ('lee', 'ki', 1, '무료배송'),
       ('kim', 'hs', 2, '할인'),
       ('lee', 'js', 2, '할인'),
       ('cap', 'ste', 3, '라운지');

SELECT *
FROM customer;

# -----

CREATE TABLE customer
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    first_name   VARCHAR(5),
    last_name    VARCHAR(5),
    level        INT,
    FOREIGN KEY (level) REFERENCES customer_benefit (level)
);

CREATE TABLE customer_benefit
(
    level        INT PRIMARY KEY ,
    benefit      VARCHAR(100)
);

INSERT INTO customer
(first_name, last_name, level)
VALUES ('son', 'hm', 1),
       ('lee', 'ki', 1),
       ('kim', 'hs', 2),
       ('lee', 'js', 2),
       ('cap', 'ste', 3);

INSERT INTO customer_benefit
(level, benefit)
VALUES (1, '무료배송'),
       (2, '할인'),
       (3, '라운지');

SELECT *
FROM customer_benefit;