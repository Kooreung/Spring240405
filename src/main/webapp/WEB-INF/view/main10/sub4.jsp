<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-09
  Time: 오전 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>${list1[1].korea}</p>  <%-- seoul --%>
<p>${list1[number1].korea}</p>  <%-- seoul --%>
<hr>
<p>${list1[2]["부산"]}</p>  <%-- 해운대 --%>
<p>${list1[two]["부산"]}</p>  <%-- 해운대 --%>
<hr>
<p>${list1[3]["서울"]}</p>  <%-- 강남 --%>
<p>${list1[three]["서울"]}</p>  <%-- 강남 --%>
<p>${list1["3"]["서울"]}</p>  <%-- 강남 --%>
<hr>
<p>${list1[0][data1]}</p>  <%-- london --%>
<p>${list1[0][data2]}</p>  <%-- paris --%>

</body>
</html>
