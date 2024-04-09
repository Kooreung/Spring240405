<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-09
  Time: 오후 2:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>Expression Language</p>
<p>간단한 연산 가능</p>
<p>산술, 논리, 비교 연산</p>

<h3>산술연산 +, -, *, /, %</h3>
<p>${5 + 3}</p>
<p>${7 - 3}</p>
<p>${8 * 3}</p>
<p>${6 / 2}</p>
<p>${7 / 2}</p> <%-- 3.5 --%>
<p>${7 div 2}</p> <%-- 3.5 --%>
<p>${7 % 2}</p> <%-- 1 --%>
<p>${15 mod 4}</p> <%-- 3 --%>
<p>${"3" + "4"}</p> <%-- 문자열 사용 가능 --%>
</body>
</html>
