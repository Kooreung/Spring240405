<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-08
  Time: 오후 4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--   ${attributeName.propertyName}   --%>
    <%--   ${attributeName["propertyName"]}   --%>
    <h2>${person.name}</h2>
    <h2>${person["name"]}</h2>
</body>
</html>
