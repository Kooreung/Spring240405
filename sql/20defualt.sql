
USE w3schools;

#DEFAULT : 값을 주지 않을 때 기본 값을 설정

CREATE TABLE my_table13
(
    col1 VARCHAR(10),
    col2 VARCHAR(10) DEFAULT '비어있음'
);

INSERT INTO my_table13
(col1, col2)
VALUES ('qwe', 'zxc');

INSERT INTO my_table13
(col1)
VALUES ('qwe');

SELECT *
FROM my_table13;


CREATE TABLE my_table14
(
    col1 VARCHAR(10),
    cal2 int(5) NOT NULL,
    cal3 VARCHAR(10) DEFAULT '비어있음',
    cal4 VARCHAR(20) NOT NULL DEFAULT '비워지면 안됨'
);

INSERT INTO my_table14
(col1, cal2, cal3, cal4)
VALUES ('a')

SELECT *
FROM my_table14;