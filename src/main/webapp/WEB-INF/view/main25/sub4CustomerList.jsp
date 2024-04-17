<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-17
  Time: 오후 12:33
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
<h3>고객 명단</h3>
<div>
<%--  action 값이 없거나 생략되면 현재 요청 경로로 전달  --%>
    <form>
        고객조회 :
        <input value="${prevSearch}" type="text" name="search" placeholder="이름을 입력하세요.">
        <input type="submit" value="검색">
    </form>
</div>
<hr>
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
