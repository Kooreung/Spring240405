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
<c:if test="${not empty message}">
    <div style="background-color: steelblue">
        ${message}
    </div>

</c:if>
<h3>직원 조회</h3>
<form action="">
    직원번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty employeeList}">
    조회된 직원이 없습니다.
</c:if>
<c:if test="${not empty employeeList}">
    <div>
        번호
        <input type="number" value="${employeeList.id}" readonly>
    </div>
    <div>
        이름
        <input type="text" value="${employeeList.lastName}" readonly>
    </div>
    <div>
        성
        <input type="text" value="${employeeList.firstName}" readonly>
    </div>
    <div>
        생년월일
        <input type="text" value="${employeeList.birthDate}" readonly>
    </div>
    <div>
        사진
        <input type="text" value="${employeeList.photo}" readonly>
    </div>
    <div>
        소개글
        <input type="text" value="${employeeList.notes}" readonly>
    </div>
    <form action="/main29/sub2/delete" method="post">
        <div style="display: none">
            <input type="text" name="id" value="${employeeList.id}">
        </div>
        <div>
            <button>삭제</button>
        </div>
    </form>
</c:if>


</body>
</html>
