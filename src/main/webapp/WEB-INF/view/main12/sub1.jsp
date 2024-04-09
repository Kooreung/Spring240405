<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-09
  Time: 오후 3:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>if</h3>
<c:if test = "${age >= 20}">
    <p>투표 가능</p>
</c:if>
<c:if test = "${age < 20}">
    <p>투표 불가능</p>
</c:if>

</body>
</html>
