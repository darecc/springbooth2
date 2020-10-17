<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<DOCTYPE HTML/>
<html>
<head>
<title>Dodawanie studenta</title>
<meta charset="utf-8"/>
</head>
<body>
<h2>Dodawanie nowego studenta do bazy danych:</h2>
<form action="addStudent">
        Imię:     <input type= "text" name="imie"><br/>
        Nazwisko: <input type= "text" name = "nazwisko"><br/>
        Kierunek: <input type = "text" name = "kierunek"><br/>
        Rok :     <input type = "number" name = "rok"><br/>
<input type="submit" value="Wyślij">
</form>
</body>
</html>