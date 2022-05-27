<!DOCTYPE html>
<html>
<head>
    <title>FASHION POLICE</title>
</head>
<body>
<h1>FASHION POLICE</h1><hr>
<h3>Подробная информация о пользователе ${user.name}</h3>
<b>Электронная почта: </b> ${user.email}<br>
<b>Номер телефона: </b> ${user.phone_number} <br>
<h4>Одежда пользователя ${user.name}</h4>
<#list products as clothing>
    <div>
        <p><img src="/images/${clothing.image.id}" height = "60px" width = "60px"/><b>${clothing.title}</b> ${clothing.price} руб. | <a href="/product/${clothing.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Одежды нет! :(</h3>
</#list>
<#if errorMessage??>
    <h2>${errorMessage}</h2>
</#if>
</body>
</html>