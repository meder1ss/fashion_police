<!DOCTYPE html>
<html>
<head>
    <title>FASHION POLICE</title>
</head>
<body>
<h1>FASHION POLICE</h1><hr>
<h3>Привет, ${user.name}!</h3>
<b>Твоя электронная почта: </b> ${user.email}<br>
<b>Твой номер телефона: </b> ${user.phone_number} <br>
<h4>Твоя одежда: </h4>
<#list products as clothing>
    <div>
        <p><img src="/images/${clothing.image.id}" height = "60px" width = "60px"/><b>${clothing.title}</b> ${clothing.price} руб. | <a href="/product/${clothing.id}">Подробнее...</a>
        <form action = "/product/delete/${clothing.id}" method = "post">
            <input type ="hidden" name = "_csrf" value ="${_csrf.token}">
            <input type="submit" value="Удалить"/>
        </form>
        </p>
    </div>
<#else>
    <h3>Одежды нет! :(</h3>
</#list>
<#if errorMessage??>
    <h2>${errorMessage}</h2>
</#if>
<hr>
<h3>Создать новую одежду</h3>
<form action="/product/create" method="post" enctype = "multipart/form-data">
    Название одежды: <input type="text" name="title"/><br><br>
    Описание одежды: <input type="text" name="description"/><br><br>
    Цена: <input type="number" name="price"/><br><br>
    Тип: <select type="text" name="type">
        <option value="Головной убор">Головной убор</option>
        <option value="Перчатки">Перчатки</option>
        <option value="Шарф">Шарф</option>
        <option value="Верхняя одежда">Верхняя одежда</option>
        <option value="Верх">Верх</option>
        <option value="Низ">Низ</option>
        <option value="Обувь">Обувь</option>
    </select><br><br>
    Пол:<select type="text" name="sex">
        <option value="Женский">Женский</option>
        <option value="Мужской">Мужской</option>
        <option value="Унисекс">Унисекс</option>
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
<h4>Твои любимые луки: </h4>
<i>В разработке...</i>
</body>
</html>