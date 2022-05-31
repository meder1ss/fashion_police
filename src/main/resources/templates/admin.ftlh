<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href = "/static/css/style.css" rel = "stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>FASHION POLICE</title>
    <link rel="shortcut icon" href="/static/img/title.png" type="image/x-icon">

    <style>
        h1 {font-size: 18.5pt;}
        h2 {font-size: 16.85pt;}

        body {font-family:Verdana, sans-serif;}

        .mode {text-align:center; color:#C71585; font-size:14.5pt; font-weight: bold;}
    </style>
</head>


<body>
<h1 align="center"><i>FASHION POLICE</i></h1><hr>
<p class=mode>Модно, стильно, молодёжно!</p>

<h3 align="center">Панель администратора</h3>
<br>
<table class="table table-bordered table-striped table-light">
    <thead>
    <tr>
        <th scope="col">Email</th>
        <th scope="col">Номер телефона</th>
        <th scope="col">Активность</th>
        <th scope="col">Роли</th>
        <th class="table-danger" scope="col">Блокировка</th>
        <th scope="col">Редактирование</th>
        <th scope="col">Подробная информация</th>
    </tr>
    </thead>

    <tbody>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phone_number}</th>
            <th>
                <#if user.active>true <#else> false</#if>
            </th>
            <th>
                <#list user.roles as role>${role}</#list>
            </th>
            <th class="table-danger">
                <form action = "/admin/user/ban/${user.id}" method="post">
                    <input type = "hidden" name ="_csrf" value = "${_csrf.token}">
                    <#if user.active>
                        <input type = "submit" value = "Бан">
                    <#else>
                        <input type = "submit" value = "Разбан">
                    </#if>
                </form>
            </th>
            <th><a href="/admin/user/edit/${user.id}">Изменить роль</a></th>
            <th><a href = "/user/${user.id}">${user.name}</a> </th>
        </tr>
    <#else>
        <h3>Пользователей нет</h3>
    </#list>
    </tbody>
</table>

<p><a href="../"><b>&#8592; На главную</b></a></p>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>