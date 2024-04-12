<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-12
  Time: 오후 3:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<style>
    .active {
        background-color: skyblue;
    }
</style>

<div style="display: flex; justify-content: space-around">
    <div style="display: flex; gap: 10px;">
        <div class="${param.current eq 'keyboard' ? 'active' : ''}">
            <a href="/main18/sub1">
                키보드
            </a>
        </div>
        <div class="${param.current eq 'monitor' ? 'active' : ''}">
            <a href="/main18/sub2">
                모니터
            </a>
        </div>
        <div class="${param.current eq 'graphiccard' ? 'active' : ''}">
            <a href="/main18/sub3">
                그래픽카드
            </a>
        </div>
    </div>
    <div>
        <a href="/main18/sub4">
        장바구니
        </a>
    </div>
</div>