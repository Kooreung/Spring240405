
# n to n

USE mydb1;
CREATE TABLE board (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(20),
    content VARCHAR(20)
);

CREATE TABLE member
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    email   VARCHAR(20),
    info    VARCHAR(20)
);

# n to n 관계의 Table 의 중간 Table 생성
CREATE TABLE board_like
(
    board_id    INT REFERENCES board(id),
    member_id   INT REFERENCES member(id),
    PRIMARY KEY (board_id, member_id)
);