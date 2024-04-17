<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-17
  Time: 오후 4:49
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
<h3>직원 리스트</h3>
<div>
    <form>
        <input type="text" name="search" value="${prevSearch}" placeholder="이름을 검색하세요.">
        <input type="submit" value="검색">
    </form>
</div>
<hr>
<div>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>LastName</th>
            <th>FirstName</th>
            <th>BirthDate</th>
            <th>Photo</th>
            <th>Notes </th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${employeeList}" var="employee">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.lastName}</td>
            <td>${employee.firstName}</td>
            <td>${employee.birthDate}</td>
            <td>${employee.photo}</td>
            <td>${employee.notes}</td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>