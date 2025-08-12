<!DOCTYPE html>
<html>
<head>
    <title>LIBRARY</title>
</head>
<body>
<h1>LIBRARY-RUS</h1><hr>
<h4>| КНИГИ НА ЛЮБОЙ ВКУС |</h4>
<#list books as book>
    <div>
        <#-- Преобразуем цену из копеек в рубли и форматируем -->
        <#assign rubles = book.price / 100>
        <#assign kopecks = book.price % 100>
        <#assign formattedPrice = "${rubles?floor}'${kopecks?string['00']}">
        <p><b>${book.title}</b> ${formattedPrice} руб. | <a href="/book/${book.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
<hr>
<h3>Создать новый товар</h3>
<form action="/book/create" method="post">
    Название книги: <input type="text" name="title"><br><br>
    Автор: <input type="text" name="author"><br><br>
    Описание книги: <input type="text" name="description"><br><br>
    Цена: <input type="text" name="price"> коп. <br><br>

    <input type="submit" value="Добавить товар">
</form>
</body>
</html>