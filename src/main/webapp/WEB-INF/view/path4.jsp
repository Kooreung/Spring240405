<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-30
  Time: 오후 4:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%-- jsp 에서 사용 할 수 있는 spring security tag --%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>path4 jsp</h3>
<div>누구나 보는 콘텐츠</div>
<sec:authorize access="isAuthenticated()">
    <div>로그인 해야 보이는 콘텐츠</div>
</sec:authorize>
<sec:authorize access="not isAuthenticated()">
    <div>로그인 안해야 보이는 콘텐츠</div>
</sec:authorize>
<sec:authorize access="hasAuthority('admin')">
    <div>어드민만 보이는 콘텐츠</div>
</sec:authorize>
</body>
</html>
