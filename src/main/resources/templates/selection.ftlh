<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="../static/css/home.css">
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
            background-color: #d789a8;
        }
        .header-bg {
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
            <h5>Привет, <a href = "/user/private/${user.id}"><i>${user.name}</i>!</a></h5>
            <form action = "/logout" method = "post">
                <input type ="hidden" name = "_csrf" value ="${_csrf.token}">
                <input style = "background-color: #333; color: white" type="submit" value="Выйти"/>
            </form>
            <#if user.isAdmin()>
                <a style = "text-align: right" href = "/admin">Панель администратора</a>
            </#if>
        <#else>
            <form action ="/login">
                <input style = "background-color: #333; color: white" type="submit" value="Войти"/>
            </form>
        </#if>
    </a>
    <br>
</header>
<ul>
    <li><a href="/">Главная</a></li>
    <li><a href="/clothing">Наша одежда</a></li>
    <li><a href="/selection">Подбор</a></li>
    <li><a href="/about">О нас</a></li>
</ul>
<br>
<form action="/selection/create" method="get">
    Ваш пол:<select type="text" name="sex">
        <option value="Женский">Женский</option>
        <option value="Мужской">Мужской</option> </select><br><br>
    Ваш любимый цвет: <input type="text" name="color"/><br><br>
    Сезон: <select type="text" name="collection">
        <option value="Осень">Осень</option>
        <option value="Зима">Зима</option>
        <option value="Весна">Весна</option>
        <option value="Лето">Лето</option>
        <option value="Деми-сезон">Деми-сезон</option> </select><br><br>
    Стиль мероприятия: <select type="text" name="style">
        <option value="Повседневный">Повседневный</option>
        <option value="Спортивный">Спортивный</option>
        <option value="Официальный">Официальный</option>
        <option value="Вечерний">Вечерний</option> </select><br><br>
    <input type="submit" value="Подобрать одежду!"/>
</form>
<#if top??>
    <img src="/images/${top.image.id}" height = "60px"/><br><br>
    <#else>
    <h3>Подходящей одежды не нашлось :(</h3>
</#if>
<#if pants??>
    <img src="/images/${pants.image.id}" height = "60px"/><br><br>
<#else>
    <h3>Подходящей одежды не нашлось :(</h3>
</#if>
<#if shoes??>
    <img src="/images/${shoes.image.id}" height = "60px"/><br><br>
<#else>
    <h3>Подходящей одежды не нашлось :(</h3>
</#if>
</body>
</html>