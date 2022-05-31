<!DOCTYPE html>
<html>
<head>
    <link type = "text/css" rel="stylesheet" href='../static/css/style.css'>
    <title>FASHION POLICE</title>
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
<script type="text/javascript" src="/static/js/script.js"></script>
<form action="/selection/create" method="get">
    Ваш пол:<select type="text" name="sex">
        <option value="Женский">Женский</option>
        <option value="Мужской">Мужской</option> </select> *обязательное поле <br><br>
    Ваш любимый цвет: <input type="text" name="color"/> *обязательное поле <br><br>
    Сезон: <select type="text" name="collection">
        <option value="Осень">Осень</option>
        <option value="Зима">Зима</option>
        <option value="Весна">Весна</option>
        <option value="Лето">Лето</option>
        <option value="Деми-сезон">Деми-сезон</option> </select> *обязательное поле <br><br>
    Стиль мероприятия: <select type="text" name="style">
        <option value="Повседневный">Повседневный</option>
        <option value="Спортивный">Спортивный</option>
        <option value="Официальный">Официальный</option>
        <option value="Вечерний">Вечерний</option> </select> *обязательное поле <br><br>
    Погода в градусах: <input type="text" name="weather"/><h>*это поле можно оставить пустым, тогда одежда подберётся в соответствии с указанным сезоном</h><br><br>
    ИЛИ вы можете автоматически определить погоду в вашем населенном пункте: <br>
    Город: <input type="text" id="city"/>
    <input type = "button" onclick="foo()" value = "Узнать погоду!"/>
    <p id="demo"></p>
    <br>
    <input type="submit" value="Подобрать одежду!"/>
</form>
<#if hat??>
    <img src="/images/${hat.image.id}" height = "60px"/><br><br>
</#if>
<#if gloves??>
    <img src="/images/${gloves.image.id}" height = "60px"/><br><br>
</#if>
<#if scarf??>
    <img src="/images/${scarf.image.id}" height = "60px"/><br><br>
</#if>
<#if outerwear??>
    <img src="/images/${outerwear.image.id}" height = "60px"/><br><br>
</#if>
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