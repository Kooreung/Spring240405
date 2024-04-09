<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-09
  Time: 오전 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- myAttr = data 에 접근 --%>
<%-- [0] = ArrayList 에 접근 --%>
<%-- .son = Map 내 value 에 접근 --%>
    <p>${myAttr[0].son}</p>
    <p>${myAttr[0].lee}</p>
    <p>${myAttr[0].kim}</p>

    <p>${myAttr[1].korea}</p>
    <p>${myAttr[1].japan}</p>
    <p>${myAttr[1]["미국"]}</p>
</body>
</html>
