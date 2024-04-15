<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-15
  Time: 오후 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <form action="/main20/sub10">
        <div>
            지역 <input type="text" name="city">
        </div>
        <div>
            주소 <input type="text" name="address">
        </div>
        <div>
            제목 <input type="text" name="title">
        </div>
        <div>
            콘텐츠 <input type="text" name="content">
        </div>
        <div>
            <input type="submit">
        </div>
    </form>
</div>
</body>
</html>
