<!DOCTYPE html>
<html>
<head>
    <title>LIBRARY-RUS</title>
</head>
<body>
<h1>LIBRARY-RUS</h1><hr>
<h4>Подробная информация о книге</h4>
<b>Название книги: </b>${book.title}<br>
<b>Автор: </b>${book.author}<br><br>
<b>Описание: </b>${book.description}<br><br>
<#assign rubles = book.price / 100>
<#assign kopecks = book.price % 100>
<b>Цена: </b>${rubles?floor}'${kopecks?string["00"]} руб.<br>

<hr>
<form action="/book/delete/${book.id}" method="post">
    <input type="submit" value="Удалить товар"/>
</body>
</html>