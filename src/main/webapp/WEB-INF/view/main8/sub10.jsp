<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-08
  Time: 오후 3:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>${name["son"]}</h2>
    <h2>${name["lee"]}</h2>
    <h2>${name["kim"]}</h2>
    <hr>
    <h2>${name.son}</h2>
    <h2>${name.lee}</h2>
    <h2>${name.kim}</h2>
    <hr> <%-- 한글, 특수문자, 띄어쓰기 등일 때 --%>
    <h2>${others["손흥민"]}</h2>
    <h2>${others["lee gang in"]}</h2>
</body>
</html>
