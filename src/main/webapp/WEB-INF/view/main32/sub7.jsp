<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-23
  Time: 오후 4:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객 조회 및 수정</h3>
<form action="">
    번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty customerList}">
    조회 된 고객이 없습니다.
</c:if>
<c:if test="${not empty customerList}">
    <form action="/main32/sub7/update" method="post">
        <div>
            번호
            <input type="text" value="${customerList.id}" name="id" readonly>
        </div>
        <div>
            이름
            <input type="text" value="${customerList.name}" name="name">
        </div>
        <div>
            계약명
            <input type="text" value="${customerList.contactName}" name="contactName">
        </div>
        <div>
            주소
            <input type="text" value="${customerList.address}" name="address">
        </div>
        <div>
            지역
            <input type="text" value="${customerList.city}" name="city">
        </div>
        <div>
            우편번호
            <input type="text" value="${customerList.postalCode}" name="postalCode">
        </div>
        <div>
            국가
            <input type="text" value="${customerList.country}" name="country">
        </div>
        <div>
            <input type="submit" value="수정">
        </div>
    </form>
</c:if>
</body>
</html>
