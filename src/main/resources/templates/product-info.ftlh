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
        body {background-image:url('/static/img/background.jpg'); font-family:Verdana, sans-serif;}
    </style>
</head>

<body>
<header>
    <nav class="navbar fixed-top" style="background-color: #fde3e9;">
        <div class="container-fluid">
            <img src="/static/img/title.png" width="40"><a class="navbar-brand" href="/"><i>FASHION POLICE</i></a>
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
                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active" data-bs-interval="10000">
                            <img src="/static/img/carusel/versace_2022%20(1).png" class="d-block w-100" alt="Номер 1">
                            <div class="carousel-caption d-none d-md-block">
                                <h4><b id="caruselText">Versace 2022</b></h4>
                                <h5><b id="caruselText">Показ мод «Ready to wear» осень-зима</b></h5>
                            </div>
                        </div>
                        <div class="carousel-item" data-bs-interval="10000">
                            <img src="/static/img/carusel/versace_2022%20(2).png" class="d-block w-100" alt="Номер 2">
                            <div class="carousel-caption d-none d-md-block">
                                <h4><b id="caruselText">Versace 2022</b></h4>
                                <h5><b id="caruselText">Показ мод «Ready to wear» осень-зима</b></h5>
                            </div>
                        </div>
                        <div class="carousel-item" data-bs-interval="10000">
                            <img src="/static/img/carusel/versace_2022%20(3).png" class="d-block w-100" alt="Номер 3">
                            <div class="carousel-caption d-none d-md-block">
                                <h4><b id="caruselText">Versace 2022</b></h4>
                                <h5><b id="caruselText">Показ мод «Ready to wear» осень-зима</b></h5>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </aside>
        </td>
    </tr>

    <tr>
        <td id=content>
            <p class=mode>Модно, стильно, молодёжно!</p>

            <h3 align="center">Подробная информация о выбранной одежде</h3>
            <br>

            <table align="center"valign="top">
                <tr>
                    <td id=picture align="center" valign="middle" width="640px">
                        <img id="imgInfo" src="/images/${product.image.id}"/><br><br>
                    </td>

                    <td align="center" width="640px" style="font-size: 15pt">
                        <table align="center">
                            <tr>
                                <td><b>Название: </b></td>
                                <td>${product.title}</td>
                            </tr>
                            <tr>
                                <td valign="top"><b>Описание: </b></td>
                                <td>${product.description}</td>
                            </tr>
                            <tr>
                                <td><b>Пол: </b></td>
                                <td>${product.sex}</td>
                            </tr>
                            <tr>
                                <td><b>Тип: </b></td>
                                <td>${product.type}</td>
                            </tr>
                            <tr>
                                <td><b>Цена: </b></td>
                                <td>${product.price}</td>
                            </tr>
                            <tr>
                                <td><b>Стиль: </b></td>
                                <td>${product.style}</td>
                            </tr>
                            <tr>
                                <td><b>Фирма: </b></td>
                                <td>${product.company}</td>
                            </tr>
                            <tr>
                                <td><b>Коллекция: </b></td>
                                <td>${product.collection}</td>
                            </tr>
                            <tr>
                                <td><b>Цвет: </b></td>
                                <#if product.color == "white">
                                    <td><b style = "color: ${product.color};
                                                            text-shadow:black 1px 1px 0, black -1px -1px 0,
                                                            black -1px 1px 0, black 1px -1px 0">
                                            ${product.color}</b>
                                    </td>
                                <#else>
                                    <td><b style = "color: ${product.color}">${product.color}</b></td>
                                </#if>
                            </tr>
                            <tr>
                                <td><b>Автор: </b></td>
                                <td><a href = "/user/${product.user.id}"> ${product.user.name} </a></td>

                            </tr>

                        </table>

                    </td>
                </tr>
            </table>
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