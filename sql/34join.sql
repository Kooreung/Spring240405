
USE mydb2;

CREATE TABLE table5
(
    col1 INT,
    col2 VARCHAR(3)
);

CREATE TABLE table6
(
    col1 INT,
    col2 VARCHAR(3),
    col3 VARCHAR(3)
);

INSERT INTO table5
VALUES (1,'abc'),
       (2,'def'),
       (3,'ghi');

INSERT INTO table6
VALUES (2,'jkl', 'mno'),
       (3,'pqk', 'stu'),
       (4,'vwx', 'yza'),
       (5,'bcd', 'efg');

# cartesian
SELECT *
FROM table5 JOIN table6;

# Inner JOIN
SELECT *
FROM table5 JOIN table6 ON table5.col1=table6.col1;

# LEFT JOIN
SELECT *
FROM table5 LEFT JOIN table6 ON table5.col1=table6.col1;

# RIGHT JOIN
SELECT *
FROM table5 RIGHT JOIN table6 ON table5.col1=table6.col1;