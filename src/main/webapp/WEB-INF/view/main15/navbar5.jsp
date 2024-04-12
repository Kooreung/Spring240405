<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-12
  Time: 오전 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="attr1" value="page value2" scope="page" />

<div>
    <div>
        ${attr1}
    </div>
    <div>
        ${requestScope.attr1}
    </div>
</div>