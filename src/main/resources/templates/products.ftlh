<!DOCTYPE html>
<html>
<head>
    <title>FASHION POLICE</title>
</head>
<body>
<h1>FASHION POLICE</h1><hr>
<h4>Будь самым модным на районе!</h4>
<form action="/" method="get">
    Поиск по одежде: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><img src="/images/${product.image.id}" height = "60px"/><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Подходящей одежды не нашлось :(</h3>
</#list>
<a href="/selection"><input type="submit" value="Подбор одежды"/></a><br>
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
    Ваше имя: <input type="text" name="author"/><br><br>
    Фотография: <input type = "file" name = "file"/><br><br>
    <input type="submit" value="Добавить товар"/>
</form>
</body>
</html>