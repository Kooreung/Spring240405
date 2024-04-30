<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-30
  Time: 오후 3:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/login" method="post">
    <div>
        <input type="text" name="username">
    </div>
    <div>
        <input type="text" name="password">
    </div>
    <div>
        <button>로그인</button>
    </div>
</form>
</body>
</html>
