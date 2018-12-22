<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Пункты продаж</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
            background: coral;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

    </style>

</head>
<body class="tg">
<div align="center">
    <table class="tg">
        <h1>Наличие книги</h1>
        <tr>
            <th width="250"> "${listSalePoint.bookTitle}"</th>
        </tr>
        <tr>
            <th width="250"> Цена: "${listSalePoint.price}" рублей</th>
        </tr>

        <c:if test="${!empty listSalePoint.points}">
            <c:forEach items="${listSalePoint.points}" var="pointSale">
                <tr>
                    <td>${pointSale.place}</td>
                </tr>
            </c:forEach>
        </c:if>
        <c:if test="${empty listSalePoint.points}">
            <tr>
                <td>Нет в продаже :(</td>
            </tr>
        </c:if>
    </table>
    <c:if test="${empty listSalePoint.points}">
        <img src="/image/1.jpg" width="250" height="250" style="vertical-align: center"/>
    </c:if>
    <br/>
    <a href="/books">Вернуться в список книг</a>
</div>
</body>
</html>