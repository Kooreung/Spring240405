<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-09
  Time: 오후 3:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>empty 연산자</h3>
<p>길이가 0인 Collection, String,
    존재하지 않는 attribute, null 일 때 true</p>
<p>${empty attr1}</p> <%-- false --%>
<p>${empty attr2}</p> <%-- true --%>
<p>${empty attr3}</p> <%-- false --%>
<p>${empty attr4}</p> <%-- true --%>
<p>${empty ""}</p> <%-- true --%>
<p>${empty attr0}</p> <%-- true --%>
<p>${empty attr5}</p> <%-- true --%>
</body>
</html>
