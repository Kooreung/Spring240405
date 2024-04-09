<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-09
  Time: 오전 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>${data[0].city}</h3>
<ul>
    <li>${data[0].foods[0]}</li>
    <li>${data[0].foods[1]}</li>
    <li>${data[0].foods[2]}</li>
</ul>
<h3>${data[1].city}</h3>
<ul>
    <li>${data[1].foods[0]}</li>
    <li>${data[1].foods[1]}</li>
    <li>${data[1].foods[2]}</li>
</ul>

</body>
</html>
