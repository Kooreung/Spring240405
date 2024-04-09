<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-09
  Time: 오전 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- expression language --%>
<p>${data}</p>  <%-- 값 1 --%>
<p>${데이터}</p>  <%-- 불가능 --%>
<p>${requestScope["데이터"]}</p>
<p>${3}</p>  <%-- 3 --%>
<p>${requestScope["3"]}</p>  <%-- 삼 --%>
</body>
</html>
