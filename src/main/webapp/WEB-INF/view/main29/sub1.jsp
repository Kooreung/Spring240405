<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-22
  Time: 오전 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="background-color: steelblue">
        ${message}
    </div>

</c:if>
<h3>고객 조회</h3>
<form action="">
    고객번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty customer}">
    조회된 고객이 없습니다.
</c:if>
<c:if test="${not empty customer}">
    <div>
        번호
        <input type="number" value="${customer.id}" readonly>
    </div>
    <div>
        이름
        <input type="text" value="${customer.name}" readonly>
    </div>
    <div>
        계약명
        <input type="text" value="${customer.contactName}" readonly>
    </div>
    <div>
        주소
        <input type="text" value="${customer.address}" readonly>
    </div>
    <div>
        도시
        <input type="text" value="${customer.city}" readonly>
    </div>
    <div>
        우편번호
        <input type="text" value="${customer.postalCode}" readonly>
    </div>
    <div>
        국가
        <input type="text" value="${customer.country}" readonly>
    </div>
    <form action="/main29/sub1/delete" method="post">
        <div style="display: none">
            <input type="text" name="id" value="${customer.id}">
        </div>
        <div>
            <button>삭제</button>
        </div>
    </form>
</c:if>
</body>
</html>
