<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-17
  Time: 오전 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>직원 조회</h3>
<div>
    <form action="/main25/sub1">
        이름 :
        <input type="text" name="name" placeholder="이름 검색">
        <input type="submit" value="조회">
    </form>
</div>
<hr>
<c:forEach items="${employees}" var="employee">
    <div><h4>${employee.id}번 직원</h4></div>
    <div><p>이름 : ${employee.firstName} ${employee.lastName}</p></div>
    <div><p>생일 :
        <input type="date" value="${employee.birthDate}" readonly></p></div>
    <div>
        <p>
            사진 : ${employee.photo}
        </p>
    </div>
    <div>
        노트 :
        <textarea cols="30" rows="10" readonly></textarea>
    </div>
    <hr>
</c:forEach>
</body>
</html>
