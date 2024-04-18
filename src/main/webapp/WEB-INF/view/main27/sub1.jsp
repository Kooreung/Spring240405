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
                <td>${customer.id}</td>
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
</body>
</html>
