<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-19
  Time: 오후 2:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
<div>
    <c:if test="${not empty message}">
        <div style="padding: 20px; background-color: skyblue">
                ${message}
        </div>
    </c:if>
</div>
<h3>직원 정보 입력</h3>
<form action="" method="post">
    <div>이름
        <input type="text" name="lastName">
    </div>
    <div>성
        <input type="text" name="firstName">
    </div>
    <div>생일
        <input type="date" name="birthDate">
    </div>
    <div>사진
        <input type="text" name="photo">
    </div>
    <div>소개
        <input type="text" name="notes">
    </div>
    <div>
        <input type="submit" value="등록">
    </div>
</form>
</body>
</html>
