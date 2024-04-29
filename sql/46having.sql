SELECT CategoryID, COUNT(ProductID)
FROM Products
GROUP BY CategoryID;

# 상품 수가 10개 이상인 카테고리
SELECT *
FROM (SELECT CategoryID, COUNT(ProductID) 상품수
      FROM Products
      GROUP BY CategoryID) c
WHERE 상품수 >= 10;

SELECT CategoryID, COUNT(ProductID) 상품수
FROM Products
GROUP BY CategoryID
HAVING 상품수 >= 10;

# 고객이 5명 이상 있는 국가들 조회
SELECT Country, COUNT(Country) 고객수
FROM Customers
GROUP BY Country
HAVING 고객수 >= 5
ORDER BY 고객수 DESC;