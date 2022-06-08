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
                                    <img src="/static/img/carusel/valentino_2022%20(1).png" class="d-block w-100" alt="Номер 1">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h4><b id="caruselText">Valentino 2022</b></h4>
                                        <h5><b id="caruselText">Коллекция «Pretty in Pink» на Неделе моды в Париже</b></h5>
                                    </div>
                                </div>
                                <div class="carousel-item" data-bs-interval="10000">
                                    <img src="/static/img/carusel/valentino_2022%20(2).png" class="d-block w-100" alt="Номер 2">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h4><b id="caruselText">Valentino 2022</b></h4>
                                        <h5><b id="caruselText">Коллекция «Pretty in Pink» на Неделе моды в Париже</b></h5>
                                    </div>
                                </div>
                                <div class="carousel-item" data-bs-interval="10000">
                                    <img src="/static/img/carusel/valentino_2022%20(3).png" class="d-block w-100" alt="Номер 3">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h4><b id="caruselText">Valentino 2022</b></h4>
                                        <h5><b id="caruselText">Коллекция «Pretty in Pink» на Неделе моды в Париже</b></h5>
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
                <td id=content valign=top>
                    <p class=mode>Будь самым модным на районе!</p>
                </td>

            </tr>
            <tr>
                <td colspan="2"><h3 align="center">Подбор одежды</h3></td>
            </tr>

            <tr>
                <td>
                    <table align="center" valign="top" cellpadding="6">
                        <form action="/selection/create" method="get">

                            <tr>
                                <td style="color: grey; text-align: center; font-size: 12pt" colspan="3">Обязательные поля:    &nbsp;	&nbsp;</td>
                            </tr>
                            <tr align="center">
                                <td id="td1">Ваш пол: </td>
                                <td id="td2">
                                    <select type="text" name="sex">
                                        <option selected>Выберите...</option>
                                        <option value="Женский">Женский</option>
                                        <option value="Мужской">Мужской</option>
                                    </select>
                                </td>
                            </tr>

                            <tr>
                                <td id="td1">Ваш любимый цвет: </td>
                                <td id="td2"><input type="text" name="color"/><br></td>
                            </tr>

                            <tr>
                                <td id="td1">Сезон: </td>
                                <td id="td2">
                                    <select type="text" name="collection">
                                        <option selected>Выберите...</option>
                                        <option value="Осень">Осень</option>
                                        <option value="Зима">Зима</option>
                                        <option value="Весна">Весна</option>
                                        <option value="Лето">Лето</option>
                                        <option value="Деми-сезон">Деми-сезон</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>

                            </tr>
                            <tr>
                                <td id="td1">Стиль мероприятия: </td>
                                <td id="td2">
                                    <select type="text" name="style">
                                        <option selected>Выберите...</option>
                                        <option value="Повседневный">Повседневный</option>
                                        <option value="Спортивный">Спортивный</option>
                                        <option value="Официальный">Официальный</option>
                                        <option value="Вечерний">Вечерний</option>
                                    </select><br>
                                </td>
                            </tr>

                            <tr>
                                <td colspan="3" style="color: grey; text-align: center; font-size: 12pt"><br>Необязательные поля:</td>
                            </tr>
                            <tr>
                                <td id="td1">Погода в градусах: </td>
                                <td id="td2"><input type="text" name="weather"/>
                                    <!--тогда одежда подберётся в соответствии с указанным сезоном
                                    ИЛИ вы можете автоматически определить погоду в вашем населенном пункте-->
                                </td>
                            </tr>
                            <tr>
                                <td id="td1" valign="top">Город:</td>
                                <td id="td2"><input type="text" id="city"/>
                                    <input type = "button" onclick="foo()" value = "Узнать погоду!"/> <p id = "demo">
                                </td>
                            </tr>
                            <tr align="center">
                                <td colspan="2"> <h id = "demo"></h></td>
                            </tr>

                            <tr align="center">
                                <td colspan="2"><input type="submit" class="btn btn-primary" value="Подобрать!"/><br></td>
                            </tr>
                        </form>
                    </table>
                </td>
            </tr>

            <tr>
                <td id="content" colspan="3">
                    <table align="center">

                    <#if hat?? && gloves??>
                    <div class="row row-cols-1 row-cols-md-2 g-4" align="center">
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${hat.id}"><img src="/images/${hat.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${hat.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${gloves.id}"><img src="/images/${gloves.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${gloves.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                            <br>
                    <#elseif hat??>
                    <div class="row row-cols-1 row-cols-md-1 g-4" align="center">
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${hat.id}"><img src="/images/${hat.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${hat.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                            <br>
                    <#elseif gloves??>
                    <div class="row row-cols-1 row-cols-md-1 g-4" align="center">
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${gloves.id}"><img src="/images/${gloves.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${gloves.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                    <br>
                    </#if>

                    <#if top?? && outerwear?? && scarf??>
                    <div class="row row-cols-1 row-cols-md-3 g-4" align="center">
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${scarf.id}"><img src="/images/${scarf.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${scarf.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${top.id}"><img src="/images/${top.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${top.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${outerwear.id}"><img src="/images/${outerwear.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${outerwear.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                            <br>
                    <#elseif outerwear?? && scarf??>
                    <div class="row row-cols-1 row-cols-md-2 g-4" align="center">
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${outerwear.id}"><img src="/images/${outerwear.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${outerwear.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${scarf.id}"><img src="/images/${scarf.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${scarf.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                            <br>
                    <#elseif top?? && scarf??>
                    <div class="row row-cols-1 row-cols-md-2 g-4" align="center">
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${top.id}"><img src="/images/${top.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${top.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${scarf.id}"><img src="/images/${scarf.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${scarf.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                            <br>
                    <#elseif outerwear?? && top??>
                    <div class="row row-cols-1 row-cols-md-2 g-4" align="center">
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${outerwear.id}"><img src="/images/${outerwear.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${outerwear.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${top.id}"><img src="/images/${top.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${top.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                            <br>
                    <#elseif outerwear??>
                    <div class="row row-cols-1 row-cols-md-1 g-4" align="center">
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${outerwear.id}"><img src="/images/${outerwear.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${outerwear.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                            <br>
                    <#elseif scarf??>
                    <div class="row row-cols-1 row-cols-md-1 g-4" align="center">
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${scarf.id}"><img src="/images/${scarf.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${scarf.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                            <br>
                    <#elseif top??>
                    <div class="row row-cols-1 row-cols-md-1 g-4" align="center">
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${top.id}"><img src="/images/${top.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${top.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                            <br>
                    <#else>
                    <div class="row row-cols-1 row-cols-md-1 g-4" align="center">
                        <div class="col-sm-4">
                            <div class="card h-60" style="width: 18rem; ">
                                <div class="card-header">404</div>
                                <div class="card-body">
                                    <h class="card-text">К сожалению, одежды не нашлось! :(</h>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                            <br>
                    </#if>

                    <#if pants??>
                    <div class="row row-cols-1 row-cols-md-1 g-4" align="center">
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${pants.id}"><img src="/images/${pants.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${pants.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                            <br>
                    <#else>
                    <div class="row row-cols-1 row-cols-md-1 g-4" align="center">
                        <div class="col-sm-4">
                            <div class="card h-60" style="width: 18rem; ">
                                <div class="card-header">404</div>
                                <div class="card-body">
                                    <h class="card-text">К сожалению, одежды не нашлось! :(</h>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                            <br>
                    </#if>

                    <#if shoes??>
                    <div class="row row-cols-1 row-cols-md-1 g-4" align="center">
                        <div class="col-sm-3">
                            <div class="card border-primary h-100" style="width: 18em; height: 15rem">
                                <a href="/product/${shoes.id}"><img src="/images/${shoes.image.id}" class="card-img-top"></a>
                                <div class="card-body">
                                    <h5 class="card-title"><b>${shoes.title}</b></h5>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                            <br>
                    <#else>
                    <div class="row row-cols-1 row-cols-md-1 g-4" align="center">
                        <div class="col-sm-4">
                            <div class="card h-60" style="width: 18rem; ">
                                <div class="card-header">404</div>
                                <div class="card-body">
                                    <h class="card-text">К сожалению, одежды не нашлось! :(</h>
                                </div>
                                <div class="card-footer"></div>
                            </div>
                        </div>
                    </div>
                            <br>
                    </#if>

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