<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Книги</title>

    <style type="text/css">
        .tg {
              color: green;
              background: coral;
              vertical-align: center;
          }

    </style>
</head>
<body class="tg">

<div align="center">
    <h3>Перейдите по ссылке:</h3>
    <a href="<c:url value="/books"/>" target="_blank">Список книг</a>
    <br/>
    <img src="/image/books.jpg" width="500" height="500"/>

</div>

</body>
</html>