<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-22
  Time: 오전 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>직원 조회</h3>
<form action="">
    직원번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${not empty message}">
    <div style="background-color: skyblue">${message}</div>
</c:if>
<form action="/main30/sub2/update" method="post" onsubmit="return confirm('업데이트 하시겠습니까?')">
    <div>
        번호
        <input type="number" value="${employeeList.id}" name="id" readonly>
    </div>
    <div>
        이름
        <input type="text" value="${employeeList.lastName}" name="lastName">
    </div>
    <div>
        성
        <input type="text" value="${employeeList.firstName}" name="firstName">
    </div>
    <div>
        생년월일
        <input type="text" value="${employeeList.birthDate}" name="birthDate">
    </div>
    <div>
        사진
        <input type="text" value="${employeeList.photo}" name="photo">
    </div>
    <div>
        소개글
    </div>
    <textarea id="" rows="5" cols="50" name="notes">
        ${employeeList.notes}
    </textarea>
    <div>
        <button>수정</button>
    </div>
</form>
</body>
</html>
