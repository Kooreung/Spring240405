<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-09
  Time: 오전 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${myList[0].name}</h1>
<ul>
    <li>${myList[0].cities[0]}</li>
    <li>${myList[0].cities[1]}</li>
    <li>${myList[0].cities[2]}</li>
</ul>
<h1>${myList[1].name}</h1>
<ul>
    <li>${myList[1].cities[0]}</li>
    <li>${myList[1].cities[1]}</li>
    <li>${myList[1].cities[2]}</li>
</ul>
</body>
</html>
