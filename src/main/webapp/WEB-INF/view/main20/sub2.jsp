<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-15
  Time: 오전 11:19
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
    <input type="text" value="jordan">
</div>
<div>
    <input type="text" value="messi" readonly>
</div>
<div>
<%--  표시되는 input 의 길이  --%>
    <input type="text" value="messi" size="5">
</div>
<div>
<%--  입력값 길이 제한  --%>
    <input type="text" maxlength="5">
</div>
<div>
    <input type="number" min="10" max="20">
</div>
<div>
    <input type="file" multiple>
</div>
<div>
    <input type="text" placeholder="입력값 힌트 추가">
</div>
</body>
</html>
