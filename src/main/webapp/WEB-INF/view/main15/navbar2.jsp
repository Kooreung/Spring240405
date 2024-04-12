<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-12
  Time: 오전 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    .active {
        background-color: gray;
    }
</style>

<div>
    <a href="/main15/sub3">
        <span class="${current2 eq 'sub3' ? 'active' : ''}" style="border: 1px solid black">sub3</span>
    </a>
    <a href="/main15/sub4">
        <span class="${current2 eq 'sub4' ? 'active' : ''}" style="border: 1px solid black">sub4</span>
    </a>
</div>