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
</head>
<body>
<h3>고객 명단</h3>
<div>
    <form action="/main25/sub4">
        고객조회 :
        <input type="text" name="searchName" placeholder="이름을 입력하세요.">
        <input type="submit" value="검색">
    </form>
</div>
<hr>
<div>
    <c:forEach items="${customers}" var="customer">
        <h4>${customer.id}번 고객</h4>
        <div>
            고객 이름 : ${customer.customerName}
        </div>
        <div>
            집주소 :
            <input type="text" value="${customer.address}" readonly>
        </div>
        <div>
            지역 :
            <input type="text" value="${customer.city}" readonly>
        </div>
        <div>
            국가 :
            <input type="text" value="${customer.country}" readonly>
        </div>
    </c:forEach>
</div>

</body>
</html>
