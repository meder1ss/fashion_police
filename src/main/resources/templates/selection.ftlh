<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href = "/static/css/style.css" rel = "stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>FASHION POLICE</title>
    <link rel="shortcut icon" href="/static/img/title.png" type="image/x-icon">
    <script type = "text/javascript" src = "/static/js/script.js"></script>
    <style>
        h1 {font-size: 18.5pt;}
        h2 {font-size: 16.85pt;}
        #footer {text-align:center; color:#777777; border-top:2px solid #888888;}

        body {background-image:url('/static/img/background.jpg'); font-family:Verdana, sans-serif;}
        aside {background: #fde3e9; width: 1280px;}

        #table {background-color:#FFFFFF; border:3px solid #888888; width:1280px;}

        #td1 {text-align: right}
        #td2 {text-align: left}

        #cont {min-height:500px;}

        #content {font-family:Verdana, sans-serif; text-align:justify; padding:15px;}

        .divdiv {text-align:left; color:#800000; font-size: 14.5pt}
        .mode {text-align:center; color:#C71585; font-size:14.5pt; font-weight: bold;}

        #imgS {margin-left:30px; margin-right:30px;}
        .imgM {float:right; margin-left:15px; border:2px solid #ddd; border-radius:15px; padding:5px; width:600px;}
        .imgL {float:left; margin-right:15px; border:1px solid #ddd; border-radius:10px; padding:5px; width:250px;}
        .imgR {float:right; margin-left:15px; border:1px solid #ddd; border-radius:10px; padding:5px; width:250px;}

        table.text {width:  100%; border-spacing: 0; /* Расстояние между ячейками */}
        table.text tr td {width: 58%; /* Ширина ячеек */}
        td.rightcol {text-align: right;}
    </style>
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



<table align=center id=table>
    <tr>
        <td>
            <aside>
                <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active" data-bs-interval="10000">
                            <img src="/static/img/modeSentence.png" class="d-block w-100" alt="Номер 1" id=imgS>
                            <div class="carousel-caption d-none d-md-block">
                                <h5>First slide label</h5>
                                <p>Some representative placeholder content for the first slide.</p>
                            </div>
                        </div>
                        <div class="carousel-item" data-bs-interval="2000">
                            <img src="/static/img/modeSentence.png" class="d-block w-100" alt="Номер 2" id=imgS>
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Second slide label</h5>
                                <p>Some representative placeholder content for the second slide.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="/static/img/modeSentence.png" class="d-block w-100" alt="Номер 3" id=imgS>
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Third slide label</h5>
                                <p>Some representative placeholder content for the third slide.</p>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </aside>

        </td>
    </tr>

    <tr>
        <td id=content valign=top>
            <p class=mode>Будь самым модным на районе!</p>
        </td>

    </tr>
    <tr>
        <td colspan="2"><h2 align="center">Подбор одежды</h2><br></td>
    </tr>

    <tr>
        <td>
            <table align="center">
                <form action="/selection/create" method="get">

                    <tr align="center">
                        <td id="td1">Ваш пол: </td>
                        <td id="td2">
                            <select type="text" name="sex">
                                <option value="Женский">Женский</option>
                                <option value="Мужской">Мужской</option>
                            </select> *обязательное поле
                        </td>
                    </tr>

                    <tr>
                        <td id="td1">Ваш любимый цвет: </td>
                        <td id="td2"><input type="text" name="color"/> *обязательное поле<br></td>
                    </tr>

                    <tr>
                        <td id="td1">Сезон: </td>
                        <td id="td2">
                            <select type="text" name="collection">
                                <option value="Осень">Осень</option>
                                <option value="Зима">Зима</option>
                                <option value="Весна">Весна</option>
                                <option value="Лето">Лето</option>
                                <option value="Деми-сезон">Деми-сезон</option>
                            </select> *обязательное поле<br>
                        </td>
                    </tr>
                    <tr>

                    </tr>
                    <tr>
                        <td id="td1">Стиль мероприятия: </td>
                        <td id="td2">
                            <select type="text" name="style">
                                <option value="Повседневный">Повседневный</option>
                                <option value="Спортивный">Спортивный</option>
                                <option value="Официальный">Официальный</option>
                                <option value="Вечерний">Вечерний</option>
                            </select> *обязательное поле<br>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            Погода в градусах: <input type="text" name="weather"/><h>*это поле можно оставить пустым, тогда одежда подберётся в соответствии с указанным сезоном</h><br><br>
                            ИЛИ вы можете автоматически определить погоду в вашем населенном пункте: <br>
                            Город: <input type="text" id="city"/>
                            <input type = "button" onclick="foo()" value = "Узнать погоду!"/>
                            <p id="demo"></p> <br>
                        </td>
                    </tr>
                    <tr align="center"><br>
                        <td colspan="2"><p><input type="submit" value="Подобрать!"/></p></td>
                    </tr>
                </form>
            </table>
        </td>
    </tr>

    <tr align="center">
        <td colspan="2">
            <#if hat??>
                <img src="/images/${hat.image.id}" height = "60px"/><br><br>
            </#if>
            <#if gloves??>
                <img src="/images/${gloves.image.id}" height = "60px"/><br><br>
            </#if>
            <#if scarf??>
                <img src="/images/${scarf.image.id}" height = "60px"/><br><br>
            </#if>
            <#if outerwear??>
                <img src="/images/${outerwear.image.id}" height = "60px"/><br><br>
            </#if>
            <#if top??>
                <img src="/images/${top.image.id}" height = "60px"/><br>
            <#else>
                <h3>Подходящей одежды не нашлось :(</h3>
            </#if>
            <#if pants??>
                <img src="/images/${pants.image.id}" height = "60px"/><br>
            <#else>
                <h3>Подходящей одежды не нашлось :(</h3>
            </#if>
            <#if shoes??>
                <img src="/images/${shoes.image.id}" height = "60px"/><br>
            <#else>
                <h3>Подходящей одежды не нашлось :(</h3>
            </#if>
        </td>
    </tr>
    <tr>
        <td id=footer>
            <table class="text">
                <tr>
                    <td align=center><p>&copyВареца М.С. Пашинский А.И. 2022</p>
                        <p align=center><a href=/poli>Политика конфиденциальности</a></p>
                    </td>
                </tr>
            </table>
        </td>
    </tr>

</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>