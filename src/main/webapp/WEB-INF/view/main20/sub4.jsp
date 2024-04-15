<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-15
  Time: 오전 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- 어디로 무엇을 어떻게 보내는지 정립해주는 태그 --%>
<%-- action : 어디로 --%>
<%-- method : 어떻게 --%>
<%-- name : 무엇을 --%>
<form action="/main20/sub5">
    <input type="text" name="player" placeholder="이름을 입력해 주세요.">
    <input type="submit">
</form>
</body>
</html>
