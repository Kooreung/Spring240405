<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-16
  Time: 오전 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="padding: 20px; background-color: pink">
    </div>
</c:if>
<h1>
    Lorem ipsum dolor.</h1>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi asperiores aut deserunt ipsum iste iusto laudantium
    minima nisi omnis possimus quae quam quibusdam ratione rem similique tempora, tempore ullam voluptatem!
</p>
</body>
</html>
