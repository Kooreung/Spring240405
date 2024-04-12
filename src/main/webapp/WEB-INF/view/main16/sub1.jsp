<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-12
  Time: 오후 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- 파일 경로가 / 로 시작하지 않으면 상대경로이다.(현재경로 기준) --%>
<c:import url="navbar1.jsp" />

<%-- 파일 경로가 / 로 시작하면 절대경로이다. (webapp 폴더 기준) --%>
<c:import url="/WEB-INF/view/main16/navbar1.jsp" />

<%-- 상대경로 --%>
<c:import url="../../fragment/footer1.jsp" />
<%-- 절대경로 --%>
<c:import url="/WEB-INF/fragment/footer1.jsp" />
</body>
</html>
