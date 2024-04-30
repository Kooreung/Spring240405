# Transaction : 하나의 업무 단위

USE mydb2;
CREATE TABLE bank
(
    name  VARCHAR(5) PRIMARY KEY,
    money INT NOT NULL
);

INSERT INTO bank
VALUES ('흥민', 10000),
       ('강인', 15000);

SELECT *
FROM bank;

# 송금업무
# 강인이 흥민에게 1000원 송금
UPDATE bank
SET money = money - 1000
WHERE name = '강인';
UPDATE bank
SET money = money + 1000
WHERE name = '흥민';

# Transaction 시작 + 모두 성공 (데이터 반영)
START TRANSACTION;
COMMIT;

# Transaction 시작 + 모두 실패 (데이터 회귀)
START TRANSACTION;
ROLLBACK;