
# 데이터 타입 : 문자열, 수, 날짜시간

# 문자열
# VARCHAR(길이)
CREATE TABLE my_table3 (
    name    VARCHAR(3),
    title   VARCHAR(5),
    notes   VARCHAR(1000)
);
DESC my_table3;

INSERT INTO my_table3
    (name, title, notes)
VALUES ('이강인','축구선수','파리');

CREATE TABLE my_table4 (
    book_title      VARCHAR(20),
    book_content    VARCHAR(1000),
    author          VARCHAR(20)
);

INSERT INTO my_table4
    (book_title, book_content, author)
VALUES ('우기명의 세계일주',
        '우기명이 세계를 여행한다',
        '기안84');

DESC my_table4;

SELECT *
FROM my_table4;

# 수
# 정수 : INT
# 실수 : DECIMAL, DEC(총 길이, 소수점 이하 길이)

CREATE TABLE my_table5 (
    age     INT,
    height  DEC(5, 2)
);

DESC my_table5;

INSERT INTO my_table5
    (age, height)
VALUES (10, 123.25);

SELECT *
FROM my_table5;

CREATE TABLE my_table6 (
    unit    INT,
    price   DEC(6, 2)
);

INSERT INTO my_table6
    (unit, price)
VALUES (3, 12.25*3);

SELECT *
FROM my_table6;

# 날짜시간
# DATE ; 날짜 (YYYY-MM-DD)
# DATETIME ; 날짜시간 (YYYY-MM-DD HH:MM:SS)
CREATE TABLE my_table7
(col1 DATE, col2 DATETIME);

DESC my_table7;

INSERT INTO my_table7
    (col1, col2)
VALUES ('2000-01-31','1999-12-01 22:20:11');

SELECT *
FROM my_table7;

CREATE TABLE my_table8
(today DATE, now DATETIME);

DESC my_table8;

INSERT INTO my_table8
    (today, now)
VALUES (now(),now());

SELECT *
FROM my_table8;

CREATE TABLE my_table9
(   string_col     VARCHAR(30),
    int_col         INT,
    dec_col         DEC(10, 2),
    date_col        DATE,
    date_time_col   DATETIME
);

INSERT INTO my_table9
(string_col, int_col, dec_col, date_col, date_time_col)
VALUES ('곧 점심시간', 50000, 54321.98, '2024-02-01', '2020-02-20 20:20:20');

SELECT *
FROM my_table9;