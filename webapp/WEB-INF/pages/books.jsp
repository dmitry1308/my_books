<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=windows-1251" language="java" %>
<html>
<head>
    <title>Список книг</title>

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
    <h1>Список книг</h1>

    <c:if test="${!empty listBooks}">
        <table class="tg">
            <tr>
                <th width="80">ID</th>
                <th width="120">Название</th>
                <th width="120">Автор</th>
                <th width="120">Цена</th>
                <th width="60">Редактировать</th>
                <th width="60">Удалить</th>
                <th width="150">Пункты продаж</th>
            </tr>
            <c:forEach items="${listBooks}" var="book">
                <tr>
                    <td>${book.id}</td>
                    <td><a href="/bookdata/${book.id}" target="_blank">${book.bookTitle}</a></td>
                    <td>${book.bookAuthor}</td>
                    <td>${book.price}</td>
                    <td><a href="<c:url value='/edit/${book.id}'/>">Редактировать</a></td>
                    <td><a href="<c:url value='/remove/${book.id}'/>">Удалить</a></td>
                    <td><a href="/salePoint/${book.id}" target="_blank">Посмотреть</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>


    <h1>Добавить книгу</h1>

    <c:url var="addAction" value="/books/add"/>


       <form:form action="${addAction}" commandName="book">
           <table>
               <c:if test="${!empty book.bookTitle}">
                   <tr>
                       <td>
                           <form:label path="id">
                               <spring:message text="ID"/>
                           </form:label>
                       </td>
                       <td>
                           <form:input path="id" readonly="true" size="8" disabled="true"/>
                           <form:hidden path="id"/>
                       </td>
                   </tr>
               </c:if>
               <tr>
                   <td>
                       <form:label path="bookTitle">
                           <spring:message text="Title"/>
                       </form:label>
                   </td>
                   <td>
                       <form:input path="bookTitle"/>
                   </td>
               </tr>
               <tr>
                   <td>
                       <form:label path="bookAuthor">
                           <spring:message text="Author"/>
                       </form:label>
                   </td>
                   <td>
                       <form:input path="bookAuthor"/>
                   </td>
               </tr>
               <tr>
                   <td>
                       <form:label path="price">
                           <spring:message text="Price"/>
                       </form:label>
                   </td>
                   <td>
                       <form:input path="price"/>
                   </td>
               </tr>
               <tr>
                   <td colspan="2">
                       <c:if test="${!empty book.bookTitle}">
                           <input type="submit"
                                  value="<spring:message text="Edit Book"/>"/>
                       </c:if>
                       <c:if test="${empty book.bookTitle}">
                           <input type="submit"
                                  value="<spring:message text="Add Book"/>"/>
                       </c:if>
                   </td>
               </tr>
           </table>
       </form:form>

    </br>
    <a href="/">Вернуться в меню</a>
</div>
</body>
</html>
