<!DOCTYPE html>
<html>
<head>
    <title>FASHION POLICE</title>
</head>
<body>
<h1>FASHION POLICE</h1><hr>
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
<b>Автор: </b>${product.user.name}<br>
</body>
</html>