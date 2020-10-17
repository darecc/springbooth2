<%@page language="java" contentType="text/html" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>Pokazanie danych studenta</title>
    <meta charset="utf-8"/>
</head>
<body>
<h2>Witaj ${student.getImie()} w skrypcie</h2>
<ul>
    <li>Imię: ${student.getImie()}</li>
    <li>Nazwisko: ${student.getNazwisko()}</li>
    <li>Rok: ${student.getRok()}</li>
    <li>Kierunek: ${student.getKierunek()}</li>
</ul>
</body>
</html>