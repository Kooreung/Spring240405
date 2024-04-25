
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

# Column 삭제
ALTER TABLE my_table23
    DROP COLUMN city;

# Column 이름 변경
ALTER TABLE my_table23
    RENAME COLUMN address TO town;

ALTER TABLE my_table23
    RENAME COLUMN birth TO birth_date;

# Column 자료형 변경
ALTER TABLE my_table23
    MODIFY COLUMN price DEC(20, 2);

ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(30);

DESC my_table23;

# Column 제약사항 변경
ALTER TABLE my_table23
    MODIFY COLUMN age int(11) PRIMARY KEY ;

# UNIQUE 제약사항 추가 및 삭제
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) UNIQUE ;

SHOW index FROM my_table23;

ALTER TABLE my_table23
    DROP INDEX name;

#NOT NULL 추가 및 삭제
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NOT NULL ;

ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NULL ;

# DEFAULT 제약사항 추가 및 삭제
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) DEFAULT 'guest';

ALTER TABLE my_table23
    ALTER COLUMN name DROP DEFAULT;

ALTER TABLE my_table23
    MODIFY COLUMN age INT(11) DEFAULT '20';

ALTER TABLE my_table23
    ALTER COLUMN age DROP DEFAULT ;

# PRIMARY KEY 제약사항 추가 및 삭제
ALTER TABLE my_table23
    ADD PRIMARY KEY (name);

ALTER TABLE my_table23
    DROP PRIMARY KEY;
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NULL;