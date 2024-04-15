<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-15
  Time: 오후 2:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main20/sub17" method="post">
    <div>
        아이디
        <input type="text" name="id">
    </div>
    <div>
        패스워드
        <input type="password" name="password">
    </div>
    <div>
        자기소개
        <textarea name="describe" cols="30" rows="10">
        </textarea>
    </div>
    <div>
        <input type="submit" value="제출">
    </div>
</form>

<hr>

<form action="/main20/sub18" method="post">
    <div>
        이름
        <input type="text" name="name">
    </div>
    <div>
        수도
        <input type="text" name="city">
    </div>
    <div>
        주소
        <input type="text" name="address">
    </div>
    <div>
        <input type="submit" value="제출">
    </div>
</form>
</body>
</html>
