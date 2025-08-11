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
        <p><b>${book.title}</b> ${book.price} руб. | <a href="/book/${book.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
<hr>
<h3>Создать новый товар</h3>
<form action="/book/create" method="post">
    Название книги: <input type="text" name="title"/><br></br>
    Автор: <input type="text" name="author"/><br></br>
    Описание книги: <input type="text" name="description"/><br></br>
    Цена: <input type="text" name="price"/>  руб.<br></br>

    <input type="submit" value="Добавить товар"/>
</body>
</html>