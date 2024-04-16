<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-16
  Time: 오전 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main21/sub1" method="get">
    <input type="submit">
</form>
<form action="/main21/sub1" method="post">
    <input type="submit">
</form>

<hr>

<form action="/main21/sub3" method="get">
    <input type="submit" value="sub3 get">
</form>
<form action="/main21/sub3" method="post">
    <input type="submit" value="sub3 post">
</form>

<hr>

<form action="/main21/sub4" method="get">
    <input type="submit" value="get sub4">
</form>
<form action="/main21/sub4" method="post">
    <input type="submit" value="post sub4">
</form>

<hr>

<form action="/main21/sub5" method="get">
    <input type="submit" value="get sub5">
</form>
<form action="/main21/sub5" method="post">
    <input type="submit" value="post sub5">
</form>

</body>
</html>
