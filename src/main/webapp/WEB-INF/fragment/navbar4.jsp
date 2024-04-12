<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-12
  Time: 오후 3:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    header {
        width: 100%;
        height: 100px;
        border: 1px dotted red;
    }
    header > div > div {
        border: 1px dotted red;
        width: 25%;
        height: 100%
    }
    .user {
        width: 100%;
        height: 30px;
        border: 1px dotted red;
    }

</style>

<header>
    <div style="display: flex; justify-content: space-around;">
        <div>
            <a class="${param.currunt eq 'sub' ? 'active' : ''}" href="/main17/sub6">sub6</a>
        </div>
        <div>
            <a class="${param.currunt eq 'sub' ? 'active' : ''}" href="/main17/sub7">sub7</a>
        </div>
        <div>
            <a class="${param.currunt eq 'sub' ? 'active' : ''}" href="/main17/sub8">sub8</a>
        </div>
    </div>
</header>
<div class="user">
    <c:if test="${not empty sessionScope.userName}" var="loggedIn">
        ${sessionScope.userName}

    </c:if>
    <c:if test="${not loggedIn}">
        Guest
    </c:if>
    님
    <c:if test="${loggedIn}">
        <a href="/main17/sub10">logout</a>
    </c:if>
</div>
