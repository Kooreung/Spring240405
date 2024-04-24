
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

CREATE TABLE my_table5 (
    age     INT,
    height  DEC(5, 2)
);