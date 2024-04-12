<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-12
  Time: 오후 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>name : ${requestScope.name}</div>
<div>city : ${sessionScope.city}</div>

<hr>

<div>${model} </div>
<div>${requestScope.model} </div>
<div>${sessionScope.model} </div>

</body>
</html>
