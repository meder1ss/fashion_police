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
<h4>Подробная информация о одежде</h4>
<img src="/images/${product.image.id}" height = "60px"/><br><br>
<b>Название одежды: </b>${product.title}<br>
<b>Описание одежды: </b>${product.description}<br>
<b>Пол: </b>${product.sex}<br>
<b>Тип: </b>${product.type}<br>
<b>Цена: </b>${product.price}<br>
<b>Стиль: </b>${product.style}<br>
<b>Фирма: </b>${product.company}<br>
<b>Коллекция: </b>${product.collection}<br>
<b>Цвет: </b>${product.color}<br>
<b>Автор: </b> <a href = "/user/${product.user.id}"> ${product.user.name} </a><br>
</body>
</html>