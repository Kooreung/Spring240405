<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-12
  Time: 오전 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:set var="attr1" value="page value1" scope="page" />
<c:set var="attr1" value="request value1" scope="request" />
<c:import url="navbar5.jsp" />
<hr>

<div>
    <div>
        ${pageScope.attr1}
    </div>
    <div>
        ${requestScope.attr1}
    </div>
</div>

</body>
</html>
