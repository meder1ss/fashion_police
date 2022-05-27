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
<h3>Что-то о нас</h3>
</body>
</html>