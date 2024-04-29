# GROUP BY : 집계 함수를 그룹 별로 결과 내도록 함

SELECT CategoryID, COUNT(ProductID)
FROM Products
GROUP BY CategoryID;

SELECT CategoryID                                          번호,
       (SELECT CategoryName
        FROM Categories
        WHERE Categories.CategoryID = Products.CategoryID) 이름,
       COUNT(ProductID)                                    상품수
FROM Products
GROUP BY CategoryID;

SELECT Categories.CategoryID 번호,
       CategoryName          이름,
       COUNT(ProductID)      상품수
FROM Categories
         JOIN Products
              ON Categories.CategoryID = Products.CategoryID
GROUP BY Categories.CategoryID;