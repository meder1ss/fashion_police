<!DOCTYPE html>
<html>
<head>
    <title>FASHION POLICE</title>
</head>
<body>
<h1>FASHION POLICE</h1><hr>
<h4>Модно, стильно, молодежно!</h4>
<form action="/selection/create" method="get">
    Ваш любимый цвет: <input type="text" name="color"/><br><br>
    Сезон: <input type="text" name="collection"/><br><br>
    Стиль мероприятия: <input type="text" name="style"/><br><br>
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