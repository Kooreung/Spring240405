<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-16
  Time: 오전 11:46
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
    <div style="padding: 20px; background-color: pink">

    </div>
</c:if>

<form action="/main22/sub14" method="post">
    <div>
        <input type="text" name = "id">
    </div>
    <div>
        <input type="text" name="pw">
    </div>
    <div>
        <input type="submit" value="로그인">
    </div>
</form>
</body>
</html>
