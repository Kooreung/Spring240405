<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-12
  Time: 오후 3:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:import url="/WEB-INF/fragment/navbar5.jsp">
    <c:param name="current" value="graphiccard" />
</c:import>
<h3>그래픽카드</h3>
<p>그래픽카드 상품 설명</p>
<p>주저리 주저리</p>
<form action="">
    <input type="text" name="product" value="그래픽카드" readonly />
    <input type="number" value="1" min="1" max="10" name="quantity" />
    <button>장바구니 추가</button>
</form>
</body>
</html>
