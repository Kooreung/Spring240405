
USE w3schools;

# AS : 컴럼 또는 테이블에 별칭을 줌
SELECT Products.ProductID   AS id,
       Products.ProductName AS name,
       Products.Price       AS 가격
FROM Products;

SELECT ProductID    id,
       ProductName  name,
       Price        가격
FROM Products;