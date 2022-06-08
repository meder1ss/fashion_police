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
                                    <img src="/static/img/carusel/balenciaga_2022%20(1).png" class="d-block w-100" alt="Номер 1">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h4><b id="caruselText">Balenciaga 2022</b></h4>
                                        <h5><b id="caruselText">Показ зимней коллекции от Демны Гвасалия</b></h5>
                                    </div>
                                </div>
                                <div class="carousel-item" data-bs-interval="10000">
                                    <img src="/static/img/carusel/balenciaga_2022%20(2).png" class="d-block w-100" alt="Номер 2">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h4><b id="caruselText">Balenciaga 2022</b></h4>
                                        <h5><b id="caruselText">Показ зимней коллекции от Демны Гвасалия</b></h5>
                                    </div>
                                </div>
                                <div class="carousel-item" data-bs-interval="10000">
                                    <img src="/static/img/carusel/balenciaga_2022%20(3).png" class="d-block w-100" alt="Номер 3">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h4><b id="caruselText">Balenciaga 2022</b></h4>
                                        <h5><b id="caruselText">Показ зимней коллекции от Демны Гвасалия</b></h5>
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
                    <table align="center">
                        <tr>
                            <td align="center" valign=top colspan="3">
                                <p class=mode>Модно, стильно, молодёжно!</p>

                                <h3 align=center>Личный кабинет пользователя</h3><br>

                                <h4>Привет, <i>${user.name}</i>!</h4>

                                <table class="table table-borderless" align="center">
                                    <tr>
                                        <td align="left"><b>Адрес электронной почты:</b>  ${user.email}</td>
                                        <td align="right" width="640px"><b>Номер телефона:</b> ${user.phone_number}</td>
                                    </tr>

                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <hr>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <h4 align="center">Твоя одежда: </h4>
                                <br>

                                <table align="center">
                                    <div class="row row-cols-1 row-cols-md-3 g-4" align="center">
                                        <#list products as clothing>

                                        <#if clothing?counter % 3 == 0>
                                        <div class="col-sm-4">
                                            <div class="card h-100" style="width: 18em; height: 15rem">
                                                <img src="/images/${clothing.image.id}" class="card-img-top">
                                                <div class="card-body">
                                                    <h5 class="card-title"><b>${clothing.title}</b></h5>
                                                    <h class="card-text">${clothing.description}</h>
                                                    <br>
                                                    <h class="card-text">Цена: ${clothing.price} руб.</h>
                                                    <br>
                                                    <a href="/product/${clothing.id}" class="card-link">Подробнее</a>
                                                </div>
                                                <div class="card-footer">
                                                    <form action = "/product/delete/${clothing.id}" method = "post">
                                                        <input type ="hidden" name = "_csrf" value ="${_csrf.token}">
                                                        <input type="submit" value="Удалить"/>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <br>

                                    <div class="row row-cols-1 row-cols-md-3 g-4" align="center">
                                        <#else>
                                            <div class="col-sm-4">
                                                <div class="card h-100" style="width: 18rem; ">
                                                    <img src="/images/${clothing.image.id}" class="card-img-top">
                                                    <div class="card-body">
                                                        <h5 class="card-title"><b>${clothing.title}</b></h5>
                                                        <h class="card-text">${clothing.description}</h>
                                                        <br>
                                                        <h class="card-text">Цена: ${clothing.price} руб.</h>
                                                        <br>
                                                        <a href="/product/${clothing.id}" class="card-link">Подробнее</a>
                                                    </div>
                                                    <div class="card-footer">
                                                        <form action = "/product/delete/${clothing.id}" method = "post">
                                                            <input type ="hidden" name = "_csrf" value ="${_csrf.token}">
                                                            <input type="submit" value="Удалить"/>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </#if>
                                        <br>

                                        <#else>
                                            <tr>
                                                <td colspan="3" align="center">
                                                    К сожалению, одежды пока нет :(<br>
                                                    Но ты можешь добавить одежду заполнив форму ниже!
                                                </td>
                                            </tr>

                                        </#list>

                                        <#if errorMessage??>
                                            ${errorMessage}
                                        </#if>
                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <hr>
                            </td>
                        </tr>

                        <tr>
                            <td align="center">
                                <h4 align="center">Создание новой одежды</h4>
                                <br>

                                <form action="/product/create" method="post" enctype = "multipart/form-data">
                                    <table align="center">
                                        <tr>
                                            <td align="right">
                                                <div>
                                                    <label class="col-form-label">Название одежды: </label>
                                                </div>
                                            </td>
                                            <td align="left">
                                                <input type="text" name="title" class="form-control"/>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="right">
                                                <div>
                                                    <label class="col-form-label">Описание: </label>
                                                </div>
                                            </td>
                                            <td align="left">
                                                <input type="text" name="description" class="form-control"/>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="right">
                                                <div>
                                                    <label class="col-form-label">Цена: </label>
                                                </div>
                                            </td>
                                            <td align="left">
                                                <input type="number" name="price" class="form-control"/>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="right">
                                                <div>
                                                    <label class="col-form-label">Тип: </label>
                                                </div>
                                            </td>
                                            <td align="left">
                                                <select type="text" name="type" class="form-select">
                                                    <option selected>Выберите...</option>
                                                    <option value="Головной убор">Головной убор</option>
                                                    <option value="Перчатки">Перчатки</option>
                                                    <option value="Шарф">Шарф</option>
                                                    <option value="Верхняя одежда">Верхняя одежда</option>
                                                    <option value="Верх">Верх</option>
                                                    <option value="Низ">Низ</option>
                                                    <option value="Обувь">Обувь</option>
                                                </select>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="right">
                                                <div>
                                                    <label class="col-form-label">Пол: </label>
                                                </div>
                                            </td>
                                            <td align="left">
                                                <select type="text" name="sex" class="form-select">
                                                    <option selected>Выберите...</option>
                                                    <option value="Женский">Женский</option>
                                                    <option value="Мужской">Мужской</option>
                                                    <option value="Унисекс">Унисекс</option>
                                                </select>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="right">
                                                <div>
                                                    <label class="col-form-label">Фирма: </label>
                                                </div>
                                            </td>
                                            <td align="left">
                                                <input type="text" name="company" class="form-control"/>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="right">
                                                <div>
                                                    <label class="col-form-label">Коллекция: </label>
                                                </div>
                                            </td>
                                            <td align="left">
                                                <select type="text" name="collection" class="form-select">
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
                                            <td align="right">
                                                <div>
                                                    <label class="col-form-label">Стиль: </label>
                                                </div>
                                            </td>
                                            <td align="left">
                                                <select type="text" name="style" class="form-select">
                                                    <option selected>Выберите...</option>
                                                    <option value="Повседневный">Повседневный</option>
                                                    <option value="Спортивный">Спортивный</option>
                                                    <option value="Официальный">Официальный</option>
                                                    <option value="Вечерний">Вечерний</option>
                                                </select>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="right">
                                                <div>
                                                    <label class="col-form-label">Фотография: </label>
                                                </div>
                                            </td>
                                            <td>
                                                <input type = "file" name = "file" class="form-control"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2">
                                                <br>
                                                <input type = "hidden" name = "_csrf" value = "${_csrf.token}">
                                                <input type="submit" class="btn btn-primary" value="Добавить"/>
                                            </td>
                                        </tr>
                                    </table>
                                </form>

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