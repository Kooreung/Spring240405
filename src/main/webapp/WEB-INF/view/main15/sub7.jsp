<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-12
  Time: 오전 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:set var="attr1" value="value1" scope="page" />
<c:set var="attr2" value="value2" scope="request" />
<c:set var="attr3" value="page value3" scope="page" />
<c:set var="attr3" value="request value3" scope="request" />
<c:import url="navbar4.jsp" />

<div>
    sub 7 의 attr1 : ${attr1}
</div>
<div>
    sub 7 의 attr2 : ${attr2}
</div>
<div>
    sub 7 의 attr3 : ${attr3}
    <%--  중복이 있다면 좁은 영역의 attribute 부터 찾는다  --%>
    <%--  즉 page value3 발생  --%>
</div>
<div>
    <p>sub 7 의 page 영역 attr 3 : ${pageScope.attr3} </p>
    <p>sub 7 의 page 영역 attr 3 : ${pageScope["attr3"]} </p>
</div>
<div>
    <p>sub 7 의 request 영역 attr 3 : ${requestScope.attr3} </p>
    <p>sub 7 의 request 영역 attr 3 : ${requestScope["attr3"]} </p>
</div>

</body>
</html>
