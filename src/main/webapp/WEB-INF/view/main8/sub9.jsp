<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-08
  Time: 오후 3:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- attributeName["key"] --%>
<h2>${myMap["name"]}</h2>
<h2>${myMap["age"]}</h2>
<h2>${myMap["address"]}</h2>
<hr>
<%-- attributeName.key --%>
<h1>${myMap.name}</h1>
<h1>${myMap.age}</h1>
<h1>${myMap.address}</h1>
</body>
</html>
