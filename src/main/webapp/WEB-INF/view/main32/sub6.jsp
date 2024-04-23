<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-23
  Time: 오후 4:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>직원 조회 및 수정</h3>
<form action="">
    번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty employee}">
    조회 된 직원이 없습니다.
</c:if>
<c:if test="${not empty employee}">
    <form action="/main32/sub6/update" method="post">
        <div>
            last name
            <input type="text" value="${employee.lastName}" name="lastName">
        </div>
        <div>
            first name
            <input type="text" value="${employee.firstName}" name="firstName">
        </div>
        <div>
            birth
            <input type="date" value="${employee.birthDate}" name="birthDate">
        </div>
        <div>
            photo
            <input type="text" value="${employee.photo}" name="photo">
        </div>
        <div>
            notes
            <textarea name="notes" id="" cols="30" rows="10">
                ${employee.notes}
            </textarea>
        </div>
        <div style="display: none">
            <input type="text" value="${employee.id}" name="id">
        </div>
        <div>
            <input type="submit" value="수정">
        </div>
    </form>
</c:if>
</body>
</html>
