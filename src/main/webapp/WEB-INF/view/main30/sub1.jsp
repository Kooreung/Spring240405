<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-22
  Time: 오후 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객 정보 수정</h3>
<form action="">
    번호
    <input type="text" name="id">
    <button>조회</button>
</form>
<c:if test="${not empty message}">
    <div style="background-color: skyblue">${message}</div>
</c:if>
<hr>
<form action="/main30/sub1/update" method="post" onsubmit="return confirm('업데이트 하시겠습니까?')">
    <div>
        번호
        <input type="number" value="${customer.id}" name="id" readonly>
    </div>
    <div>
        이름
        <input type="text" value="${customer.name}" name="name">
    </div>
    <div>
        계약명
        <input type="text" value="${customer.contactName}" name="contactName">
    </div>
    <div>
        주소
        <input type="text" value="${customer.address}" name="address">
    </div>
    <div>
        도시
        <input type="text" value="${customer.city}" name="city">
    </div>
    <div>
        우편번호
        <input type="text" value="${customer.postalCode}" name="postalCode">
    </div>
    <div>
        국가
        <input type="text" value="${customer.country}" name="country">
    </div>
    <div>
        <input type="submit" value="수정">
    </div>
</form>
</body>
</html>
