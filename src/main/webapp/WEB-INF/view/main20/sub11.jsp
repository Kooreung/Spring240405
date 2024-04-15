<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-15
  Time: 오후 2:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main20/sub12">
    <input type="text" name="type">
    <br>
    <textarea name="content" cols="30" rows="10"></textarea>
    <br>
    <select name="city" >
        <option value="london">런던</option>
        <option value="seoul">서울</option>
        <option value="chicago">시카고</option>
    </select>
    <br>
    <input type="submit">
</form>

<hr>

<form action="/main20/sub13">
    <div>
        <div>
            <input type="radio" name="city" value="incheon"> 인천
        </div>
        <div>
            <input type="radio" name="city" value="seoul"> 서울
        </div>
        <div>
            <input type="radio" name="city" value="busan"> 부산
        </div>
    </div>
    <div>
        <input type="submit" id="내보내기">
    </div>
</form>

<hr>

<form action="/main20/sub14">
    <div>
        <input type="checkbox" name="foods" id="">
    </div>
    <div>
        <input type="checkbox" name="foods" id="">
    </div>
    <div>
        <input type="checkbox" name="foods" id="">
    </div>
</form>

<hr>

<form action="/main20/sub15">
    <div>
        <select name="type" id="">
            <option value="football">축구</option>
            <option value="baseball">야구</option>
            <option value="basketball">농구</option>
        </select>
    </div>
    <div>
        <input type="radio" name="phone" id="" value="iphone">
        아이폰
    </div>
    <div>
        <input type="radio" name="phone" id="" value="galaxy">
        갤럭시
    </div>
    <div>
        <input type="radio" name="phone" id="" value="nokia">
        노키아
    </div>
    <div>
        <input type="checkbox" name="book" id="" value="java">
        자바
    </div>
    <div>
        <input type="checkbox" name="book" id="" value="spring">
        스프링
    </div>
    <div>
        <input type="checkbox" name="book" id="" value="react">
        리액트
    </div>

    <div>
        <input type="submit" value="확인">
    </div>
</form>


</body>
</html>
