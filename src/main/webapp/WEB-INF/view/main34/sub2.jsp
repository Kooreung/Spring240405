<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-29
  Time: 오후 4:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, th, td, th {
            border-collapse: collapse;
            border: 1px solid black;
        }
    </style>
</head>
<body>
<h3>고객 별 구매 금액 조회</h3>
<form action="">
    <div>
        년도
        <select name="year">
            <option value="1997" ${year == 1997 ? selected : ''}>1997</option>
        </select>
    </div>
    <div>
        월
        <select name="month">
            <option value="1" ${month == 1 ? selected : ''}>1</option>
            <option value="2" ${month == 2 ? selected : ''}>2</option>
            <option value="3" ${month == 3 ? selected : ''}>3</option>
            <option value="4" ${month == 4 ? selected : ''}>4</option>
            <option value="5" ${month == 5 ? selected : ''}>5</option>
            <option value="6" ${month == 6 ? selected : ''}>6</option>
            <option value="7" ${month == 7 ? selected : ''}>7</option>
            <option value="8" ${month == 8 ? selected : ''}>8</option>
            <option value="9" ${month == 9 ? selected : ''}>9</option>
            <option value="10" ${month == 10 ? selected : ''}>10</option>
            <option value="11" ${month == 11 ? selected : ''}>11</option>
            <option value="12" ${month == 12 ? selected : ''}>12</option>
        </select>
    </div>
    <div>
        <input type="submit" value="조회">
    </div>
</form>
<hr>
<c:if test="${empty paymentList}">
    <div>
        조회 결과가 없습니다.
    </div>
    <div>
        1997년 1월부터 12월 중에 조회 해주세요.
    </div>
</c:if>
<c:if test="${not empty paymentList}">
    <h3>${year}년 ${month}월 조회 결과</h3>
    <div>
        <table>
            <thead>
            <tr>
                <th>#</th>
                <th>이름</th>
                <th>구매 금액</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${paymentList}" var="item" varStatus="status">
                <tr>
                    <td>${status.count}</td>
                    <td>${item.customerName}</td>
                    <td>${item.payment}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</c:if>
</body>
</html>