<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-11
  Time: 오후 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--  url : 주소 생성하고 저장 가능한 태그  --%>
<c:url value = "https://www.naver.com/>" var="naverURL">
    <c:param name="query" value="bts"></c:param>
</c:url>

</body>
</html>
