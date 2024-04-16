<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-16
  Time: 오후 4:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
    <th>No</th>
    <th>Country</th>
    </thead>
    <tbody>
    <c:forEach items="${countryList}" var="countryName" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${countryName}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
