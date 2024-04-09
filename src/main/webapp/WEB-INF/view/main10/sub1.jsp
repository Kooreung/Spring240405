<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-09
  Time: 오전 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- myList = data 에 접근 --%>
<%-- key = HashMap 에 접근 --%>
<%-- [1] = HashMap 내 리스트에 접근 --%>
    <p>${myList.key1[1]}</p>
    <p>${myList.key2[0]}</p>
    <p>${myList.key2[1]}</p>
    <p>${myList["key 삼"][0]}</p>
    <p>${myList["key 삼"][1]}</p>
</body>
</html>
