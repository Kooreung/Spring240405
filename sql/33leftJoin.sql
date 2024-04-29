DROP TABLE table1;
DROP TABLE table2;
DROP TABLE table3;
DROP TABLE table4;

CREATE TABLE table1
(
    col_a INT
);

CREATE TABLE table2
(
    col_b INT
);

INSERT INTO table1
VALUES (1),
       (2),
       (3),
       (4),
       (5);

INSERT INTO table2
VALUES (3),
       (4),
       (5),
       (5);

# 입력 순서 중요
SELECT *
FROM table1
         LEFT JOIN table2 ON col_a = col_b;

SELECT *
FROM table2
         LEFT JOIN table1 ON col_b = col_a;


INSERT INTO table3
VALUES (4),
       (5),
       (6),
       (3);


INSERT INTO table4
VALUES (5),
       (6),
       (7),
       (7),
       (8);

# Cartesian
SELECT *
FROM table3
         JOIN table4;

# INNER JOIN
SELECT *
FROM table3
         JOIN table4 ON table3.col_a = table4.col_a;

# LEFT JOIN
SELECT *
FROM table4
         LEFT JOIN table3 ON table3.col_a = table4.col_a;

# RIGHT JOIN
SELECT *
FROM table4
         RIGHT JOIN table3 ON table3.col_a = table4.col_a;

