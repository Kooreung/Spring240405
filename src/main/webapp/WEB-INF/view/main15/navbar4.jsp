<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-12
  Time: 오전 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<div>
    <div>
        navbar 4 의 attr1 : ${attr1}
    </div>
    <div>
        navbar 4 의 attr2 : ${attr2}
    </div>
    <div>
        navbar 4 의 attr3 : ${attr3}
        <%--  중복이 있다면 좁은 영역의 attribute 부터 찾는다  --%>
        <%--  즉 request value3 발생  --%>
    </div>
</div>