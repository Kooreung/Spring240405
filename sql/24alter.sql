
USE w3schools;

# ALTER TABLE : 테이블 구조 변경
# Column 추가
# Column 삭제 (주의)
# Column 변경
    # 이름 변경
    # 자료형 및 제약사항 변경

CREATE TABLE my_table23
(
    name VARCHAR(3),
    age  INT
);

INSERT INTO my_table23 (name, age)
VALUES ('son', 44), ('lee', 33);

# Column 추가
ALTER TABLE my_table23
ADD COLUMN address VARCHAR(10);

SELECT *
FROM my_table23;


ALTER TABLE my_table23
    ADD COLUMN birth DATE AFTER age;