<!DOCTYPE html>
<html>
<head>
    <title>FASHION POLICE</title>
</head>
<body>
<h1>FASHION POLICE</h1><hr>
<h4>Модно, стильно, молодежно!</h4>
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