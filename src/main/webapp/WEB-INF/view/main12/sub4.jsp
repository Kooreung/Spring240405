<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-11
  Time: 오전 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:forEach begin="1" end="3" var="num">
        <p>반복 출력 코드 ${num}</p>
    </c:forEach>
    <hr>
    <c:forEach items="${myList}" var="elem">
        <p>${elem}</p>
    </c:forEach>
    <hr>
    <c:forEach items="${foods}" var="elem">
        <p>음식 : ${elem}</p>
    </c:forEach>
    <hr>
    <c:forEach items="${foods}" var="food" begin="1" end="3">
        <p>음식 : ${food}</p>
    </c:forEach>
</body>
</html>
