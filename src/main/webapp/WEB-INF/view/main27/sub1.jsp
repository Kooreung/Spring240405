<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-18
  Time: 오후 4:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        table {
            width: 100%;
        }
    </style>
</head>
<body>
<div>
    <table>
        <thead>
        <tr>
            <th>id</th>
            <th>name</th>
            <th>contact</th>
            <th>address</th>
            <th>city</th>
            <th>post</th>
            <th>country</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${customerList}" var="customer">
            <tr>
                <td style="text-align: center">${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.contactName}</td>
                <td>${customer.address}</td>
                <td>${customer.city}</td>
                <td>${customer.postalCode}</td>
                <td>${customer.country}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<hr>
<div style="text-align: center">
    <c:if test="${not empty previousPageNumber}">
        <c:url var="link" value="/main27/sub1">
            <c:param name="page" value="${previousPageNumber}" />
        </c:url>
        <span>
            <a href="${link}">◀</a>
        </span>
    </c:if>
    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="pageNumber">
        <c:url var="link" value="/main27/sub1">
            <c:param name="page" value="${pageNumber}" />
        </c:url>
        <span>
            <a href="${link}">${pageNumber}</a>
        </span>
    </c:forEach>
    <c:if test="${not empty nextPageNumber}">
        <c:url var="link" value="/main27/sub1">
            <c:param name="page" value="${nextPageNumber}" />
        </c:url>
        <span>
            <a href="${link}">▶</a>
        </span>
    </c:if>
</div>
</body>
</html>
