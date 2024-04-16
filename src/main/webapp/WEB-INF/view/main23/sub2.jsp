<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-16
  Time: 오후 3:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>손님 명단</h3>
<table>
    <c:forEach items="${customerList}" var="name" varStatus="status">
        <tr>
            <td>
                ${status.count}
            </td>
            <td>
                ${name}
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
