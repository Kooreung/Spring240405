
USE mydb2;

CREATE TABLE product(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL ,
    price INT NOT NULL DEFAULT 0,
    category_id INT REFERENCES category (id)
);

CREATE TABLE category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);

INSERT INTO category
(name) VALUES ('초콜렛'), ('탄산음료'), ('과자'), ('유제품'), ('생필품');

INSERT INTO product
(name, price, category_id)
VALUES ('가나', 500, 1),
       ('페레로로쉐', 700, 1),
       ('크런키', 400, 1),
       ('콜라', 300, 2),
       ('사이다', 300, 2),
       ('포카칩', 600, 3),
       ('새우깡', 550, 3);

SELECT *
FROM product JOIN category;

# INNER JOIN
SELECT *
FROM product JOIN category ON product.category_id = category.id;

# ALIAS 별칭
SELECT *
FROM product AS p
    JOIN category AS c
        ON p.category_id = c.id;

# SELECT 지정 (JOIN 하면 정보가 많아서)
SELECT p.name AS 상품명,
       p.price AS 카테고리명,
       c.name AS 가격
FROM product AS p
         JOIN category AS c
              ON p.category_id = c.id;