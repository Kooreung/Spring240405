CREATE TABLE employee
(
    id         INT PRIMARY KEY,
    name       VARCHAR(10) NOT NULL,
    info       VARCHAR(10) NOT NULL,
    manager_id INT
# manager 도 employee 이므로 다른 직원의 employee ID 활용
);

INSERT INTO employee
VALUES (1, '손흥민', '과장', 6),
       (2, '이강인', '대리', 1),
       (3, '이정후', '사원', 1),
       (4, '황희찬', '대리', 1),
       (5, '차범근', '사장', null),
       (6, '박지성', '차장', 5);

SELECT e2.name
FROM employee e1
         JOIN employee e2
              ON e1.manager_id = e2.id
WHERE e1.name = '손흥민';

SELECT e2.name
FROM employee e1
         JOIN employee e2
              ON e1.manager_id = e2.id
WHERE e1.name = '이정후';

# SUBQUERY
SELECT name
FROM employee
WHERE id = (SELECT manager_id
            FROM employee
            WHERE name = '이정후');


SELECT e2.name
FROM employee e1
         JOIN employee e2
              ON e1.id = e2.manager_id
WHERE e1.name = '손흥민';

SELECT name
FROM employee
WHERE manager_id = (SELECT id
                    FROM employee
                    WHERE name = '손흥민');