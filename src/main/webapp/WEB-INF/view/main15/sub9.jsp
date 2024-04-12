<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-12
  Time: 오전 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- el 의 내장 객체 maram : request parameter 를
    key , value 쌍으로 저장한 Map --%>
<div>name : ${param.name}</div>
<div>age : ${param.age}</div>
<div>city : ${param.city}</div>
<div>addrss : ${param.address}</div>
<div>model : ${param.model}</div>

<hr>
<%-- /main15/sub9?title=타이틀&content=콘텐츠&car=차 --%>
<div>${param.title}</div>
<div>${param.content}</div>
<div>${param.car}</div>

<hr>
<%-- /main15/sub9?q=bts&song=dynamite&company=하이브 --%>
<div>${param.q}</div>
<div>${param.song}</div>
<div>${param.company}</div>

</body>
</html>
