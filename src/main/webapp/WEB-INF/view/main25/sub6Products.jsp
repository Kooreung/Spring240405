<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-17
  Time: 오후 3:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
<div>
    <h4>상품 검색</h4>
    <form action="">
        <input type="text" name="search" value="${prevSearch}" placeholder="상품명을 작성하세요.">
        <input type="submit" value="검색">
    </form>
</div>
<hr>

<c:if test="${empty products}" var="emptyProducts">
    <p>조회된 상품이 없습니다.</p>
</c:if>
<c:if test="${not emptyProducts}">
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>ProductName</th>
            <th>SupplierID</th>
            <th>CategoryID</th>
            <th>Unit</th>
            <th>Price</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${products}" var="product">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.supplierId}</td>
                <td>${product.categoryId}</td>
                <td>${product.unit}</td>
                <td>${product.price}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</c:if>
</body>
</html>
