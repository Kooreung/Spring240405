# (INNER) JOIN
# LEFT (OUTER) JOIN
# RIGHT (OUTER) JOIN
# FULL (OUTER) JOIN -> Maria DB 에는 없다!

# UNION ( = 합집합)

USE mydb2;

CREATE TABLE table10
(
    col1 INT
);
CREATE TABLE table11
(
    col_a INT
);

INSERT INTO table10
VALUES (3),
       (4),
       (4),
       (5);

INSERT INTO table11
VALUES (3),
       (4),
       (7);

SELECT *
FROM table10

UNION

SELECT *
FROM table11;

# INNER JOIN
SELECT *
FROM table10
         JOIN table11
              ON col1 = col_a;

# LEFT JOIN
SELECT *
FROM table10
         LEFT JOIN table11
                   ON col1 = col_a

UNION

# RIGHT JOIN
SELECT *
FROM table10
         RIGHT JOIN table11
                    ON col1 = col_a;

# LEFT JOIN
SELECT *
FROM table10
         LEFT JOIN table11
                   ON col1 = col_a

UNION ALL

# RIGHT JOIN
SELECT *
FROM table10
         RIGHT JOIN table11
                    ON col1 = col_a;
