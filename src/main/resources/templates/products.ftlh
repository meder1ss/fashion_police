<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="style.css">
    <title>FASHION POLICE</title>
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover {
            background-color: #d789a8;
        }
        header {
            display: block;
            background-image: url(cat.jpg);
            background-color: #d789a8;
        }
        .header-bg {
            background-image: url(cat.jpg);
            height: 405px;
            text-align: center;
        }
    </style>
</head>
<body>
<header>
    <h1 style="text-align:center">FASHION POLICE </h1> <hr>
    <h4 style="text-align:center">Будь самым модным на районе!</h4>
    <a style = "text-align: right">
        <#if user.email??>
            <h5>Привет, <i>${user.name}</i>!</h5>
            <form action = "/logout" method = "post">
                <input type ="hidden" name = "_csrf" value ="${_csrf.token}">
                <input style = "background-color: #333; color: white" type="submit" value="Выйти"/>
            </form>
        <#else>
            <form action ="/login">
                <input style = "background-color: #333; color: white" type="submit" value="Войти"/>
            </form>
        </#if>
    </a>
    <br>
</header>
<h style = "text-align: center">
<ul>
    <li><a href="/main">Home</a></li>
    <li><a href="/products">Outfit</a></li>
    <li><a href="/selection">Constructor</a></li>
    <li><a href="/about">About</a></li>
</ul>
</h>
<br>
<form action="/" method="get">
    Поиск по одежде: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><img src="/images/${product.image.id}" height = "60px" width = "60px"/><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Подходящей одежды не нашлось :(</h3>
</#list>
<a href="/selection"><input type="submit" value="Подбор одежды"/></a><br>
<#if user.email??>
<hr>
<h3>Создать новую одежду</h3>
<form action="/product/create" method="post" enctype = "multipart/form-data">
    Название одежды: <input type="text" name="title"/><br><br>
    Описание одежды: <input type="text" name="description"/><br><br>
    Цена: <input type="number" name="price"/><br><br>
    Тип: <select type="text" name="type">
        <option value="Верх">Верх</option>
        <option value="Низ">Низ</option>
        <option value="Обувь">Обувь</option>
    </select><br><br>
    Пол:<select type="text" name="sex">
        <option value="Женский">Женский</option>
        <option value="Мужской">Мужской</option>
    </select><br><br>
    Фирма: <input type="text" name="company"/><br><br>
    Коллекция: <select type="text" name="collection">
        <option value="Осень">Осень</option>
        <option value="Зима">Зима</option>
        <option value="Весна">Весна</option>
        <option value="Лето">Лето</option>
        <option value="Деми-сезон">Деми-сезон</option>
    </select><br><br>
    Стиль: <select type="text" name="style">
        <option value="Повседневный">Повседневный</option>
        <option value="Спортивный">Спортивный</option>
        <option value="Официальный">Официальный</option>
        <option value="Вечерний">Вечерний</option>
    </select><br><br>
    Фотография: <input type = "file" name = "file"/><br><br>
    <input type = "hidden" name = "_csrf" value = "${_csrf.token}">
    <input type="submit" value="Добавить товар"/>
</form>
</#if>
</body>
</html>