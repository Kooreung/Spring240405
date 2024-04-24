<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-24
  Time: 오후 3:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, tr, th, td {
            border-collapse: collapse;
            border: 1px solid black;
        }
    </style>
</head>
<body>
<h3>새 데이터 입력</h3>
<form action="" method="post">
    <div>
        제목
        <input type="text" name="title" value="자바에 미쳐라">
    </div>
    <div>
        이름
        <input type="text" name="name" value="김긱기">
    </div>
    <div>
        나이
        <input type="number" name="age" value="31">
    </div>
    <div>
        가격
        <input type="number" name="price" value="15000.75" step="0.01">
    </div>
    <div>
        출판일
        <input type="date" name="published" value="2024-01-01">
    </div>
    <div>
        수정일
        <input type="datetime-local" name="inserted" value="2024-02-03T10:10:00">
    </div>
    <div>
        <input type="submit" value="저장">
    </div>

</form>
<hr>
<h3>my_table10 자료들</h3>
<table>
    <thead>
    <tr>
        <th>제목</th>
        <th>이름</th>
        <th>나이</th>
        <th>가격</th>
        <th>출판일</th>
        <th>수정일</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${datas}" var="data">
        <tr>
            <td>${data.title}</td>
            <td>${data.name}</td>
            <td>${data.age}</td>
            <td>${data.price}</td>
            <td>${data.published}</td>
            <td>${data.inserted}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

