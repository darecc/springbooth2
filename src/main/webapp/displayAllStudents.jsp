<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Konta</title>
</head>
<body>
<h2>Lista studentów</h2>
<c:set var="konta" value="${studenci}"/>
<c:forEach items="${konta}" var="item">
    <p>${item}</p>
</c:forEach>
<ul>
    <c:forEach items="${studenci}" var="item">
        <li>Imię: ${item.getImie()} , Rok: ${item.getRok()}, Kierunek: ${item.getKierunek()}</li>
    </c:forEach>
</ul>
</body>
</html>