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
<p>산술연산, 논리연산, 비교연산, 삼항연산</p>

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
<p>${num1} + ${num2} = ${num1 + num2}</p>

<hr>

<h3>비교연산 >, <, >=, <=, == != </h3>
<p>${5 > 3}</p>
<p>${5 gt 3}</p>
<p>${5 < 3}</p>
<p>${5 lt 3}</p>
<p>${5 >= 3}</p>
<p>${5 <= 3}</p>
<p>${5 == 3}</p>
<p>${5 != 3}</p>
<p>${5 eq 3}</p>

<hr>
<p>${"hello" < "spring"}</p> <%-- h vs s --%>
<p>${"hello" < "Spring"}</p> <%-- 소문자보다 작은 대문자 유니코드 --%>
<p>${"11" < "2"}</p> <%-- 2는 1보다 유니코드가 더 크다 --%>
<p>${"11" < 2}</p> <%-- 수가 아닌 것과 수랑 연산하면 수로 변경된다 --%>
<p>${11 < "2"}</p> <%-- 수가 아닌 것과 수랑 연산하면 수로 변경된다 --%>

<hr>
<h3>논리연산 &&, ||</h3>
<h4>&&</h4>
<p>${true && true}</p>
<p>${true && false}</p>
<p>${false && true}</p>
<p>${false && false}</p>
<h4>||</h4>
<p>${true || true}</p>
<p>${true || false}</p>
<p>${false || true}</p>
<p>${false || false}</p>
<h4>and</h4>
<p>${true and true}</p>
<p>${true and false}</p>
<p>${false and true}</p>
<p>${false and false}</p>
<h4>or</h4>
<p>${true or true}</p>
<p>${true or false}</p>
<p>${false or true}</p>
<p>${false or false}</p>
<hr>
<h4>!</h4>
<p>${! true}</p>
<p>${! false}</p>
<h4>not</h4>
<p>${not true}</p>
<p>${not false}</p>

<hr>
<h3>삼항연산</h3>
<p>${true ? "hello" : "world"}</p>
<p>${false ? "hello" : "world"}</p>
<p>${age1 ge 20 ? "투표가능" : "투표불가능"}</p>
<p>${age2 ge 20 ? "투표가능" : "투표불가능"}</p>

<hr>
<p>quantity(${quantity}) * price(${price}) = ${quantity * price}</p>
</body>
</html>
