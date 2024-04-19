<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-19
  Time: 오전 10:48
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
        .active {
            font-weight: bold;
            color : coral;
        }
        .pageBar {
            text-align: center;
        }
    </style>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>LastName</th>
        <th>FirstName</th>
        <th>BirthDate</th>
        <th>Photo</th>
        <th>Notes</th>
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
<hr>
<nav class="pageBar">
    <c:if test="${currentPage != 1}">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="1"></c:param>
        </c:url>
        <span>
            <a href="${link}">첫페이지 |</a>
        </span>
    </c:if>
    <c:if test="${not empty previousPageNumber}">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${previousPageNumber}"></c:param>
        </c:url>
        <span>
            <a href="${link}">이전 |</a>
        </span>
    </c:if>
    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="pageNumber">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${pageNumber}"></c:param>
        </c:url>
        <span>
            <a class="${currentPage eq pageNumber ? 'active' : ''}" href="${link}">${pageNumber}</a>
        </span>
    </c:forEach>
    <c:if test="${not empty nextPageNumber}">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${nextPageNumber}"></c:param>
        </c:url>
        <span>
            <a href="${link}">| 다음</a>
        </span>
    </c:if>
    <c:if test="${currentPage != lastPageNumber}">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${lastPageNumber}"></c:param>
        </c:url>
        <span>
            <a href="${link}">| 끝페이지</a>
        </span>
    </c:if>
</nav>
</body>
</html>
