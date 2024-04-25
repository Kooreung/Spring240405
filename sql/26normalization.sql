
# Normalization : 정규화

# First Normal Form (1NF , 제 1 정규화)
    # 조건
    # 1) 각 행을 유일하게 구분하는 Column 이 존재한다.
        # = Primary Key (PK) 가 있다.
    # 2) 모든 데이터는 원자적으로 저장된다.
        # = 같은 형식의 데이터를 저장하는 여러 Column 이 있지 않다.
        # = 한 Column 에 여러 값을 저장하지 않는다.
CREATE DATABASE mydb1;
USE mydb1;


-- 예)
-- 고객 정보를 저장한 테이블
-- 이메일, 이름, 전화번호, 주소, 주민등록번호
-- 후보 키 : PK 가 될 가능성이 있는 Column
-- PK 는 바뀔 가능성이 현저히 낮아야 한다.
-- 따라서 가장 좋은 PK 는 의미 없는 Column
CREATE TABLE customer
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    email        VARCHAR(50),
    name         VARCHAR(10),
    phone_number VARCHAR(20),
    address      VARCHAR(100),
    ssn          VARCHAR(13)
);

DROP TABLE customer;
INSERT INTO customer
(email, name, phone_number, address, ssn)
VALUES ('', '', '', '', '');
INSERT INTO customer
(email, name, phone_number, address, ssn)
VALUES ('', '', '', '', '');
SELECT *
FROM customer;

# 외래 키 제약사항 : FOREIGN KEY

CREATE TABLE customer
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    first_name  VARCHAR(5),
    last_name   VARCHAR(5)
);

CREATE TABLE phone_number
(
    id              INT PRIMARY KEY AUTO_INCREMENT,
    customer_id     INT,
    phone_number    VARCHAR(10),
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);

INSERT INTO customer
(first_name, last_name)
VALUES ('son', 'hm'),
       ('lee', 'ki');

INSERT INTO phone_number
(customer_id, phone_number)
VALUES (1, '1234');

INSERT INTO phone_number
(customer_id, phone_number)
VALUES (1, '4321');

INSERT INTO phone_number
(customer_id, phone_number)
VALUES (2, '4321');

# INSERT INTO phone_number
# (customer_id, phone_number)
# VALUES (3, '7890');

SELECT *
FROM customer;

SELECT *
FROM phone_number;

# Second Normal Form (2NF , 제 2 정규화)

# Third Normal Form (3NF , 제 3 정규화)
