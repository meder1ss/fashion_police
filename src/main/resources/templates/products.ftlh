<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href = "/static/css/style.css" rel = "stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>FASHION POLICE</title>
</head>

<body>
<header>
<nav class="navbar fixed-top" style="background-color: #fde3e9;">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">FASHION POLICE</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel" style="background-color: #fdeef3;">
            <div class="offcanvas-header">
                <#if user.email??>
                    <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Привет, <i>${user.name}</i>!</h5>
                <#else>
                    <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Привет, пользователь!</h5>
                </#if>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/">Главная</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/clothing">Наша одежда</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/selection">Подбор</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about">О нас</a>
                    </li>
                    <#if user.isAdmin()>
                        <li class="nav-item">
                            <a class="nav-link" href="/admin">Панель администратора</a>
                        </li>
                    </#if>
                    <#if user.email??>
                        <li class="nav-item">
                            <a class="nav-link" href = "/user/private/${user.id}">Личный кабинет</a>
                        </li>
                        <li class="nav-item" style = "position: absolute; bottom: 15px">
                            <form action = "/logout" method = "post">
                                <input type ="hidden" name = "_csrf" value ="${_csrf.token}">
                                <input style = "background-color: #333; color: white" type="submit" value="Выйти"/>
                            </form>
                        </li>
                    <#else>
                        <li class="nav-item" style = "position: absolute; bottom: 15px">
                            <form action ="/login">
                                <input style = "background-color: #333; color: white" type="submit" value="Войти"/>
                            </form>
                        </li>
                    </#if>
                </ul>
            </div>
        </div>
    </div>
</nav>
</header>
<br><br><br>
<div class="container">
    Сенебас
    <img src = "/static/img/cat.jpg">
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>