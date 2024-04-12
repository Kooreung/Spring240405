<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-12
  Time: 오전 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    .menu-item {
        border: 1px solid black;
    }
    .active {
        background-color: antiquewhite;
    }
</style>

<div>
    <a class="${active eq 'sub5' ? 'active' : ''}" href="/main15/sub5">
        <span class="menu-item">sub5</span>
    </a>
    <a class="${active eq 'sub6' ? 'active' : ''}"  href="/main15/sub6">
        <span class="menu-item">sub6</span>
    </a>
</div>