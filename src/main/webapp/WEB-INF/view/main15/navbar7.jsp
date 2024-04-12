<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-12
  Time: 오후 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    a {
        border: 1px solid black;
    }
    .switchOn {
        font-weight: bold;
    }
</style>

<div>
    <a class="${param.active eq 'sub12' ? 'switchOn' : ''}" href="/main15/sub12">sub12</a>
    <a class="${param.active eq 'sub13' ? 'switchOn' : ''}" href="/main15/sub13">sub12</a>
</div>