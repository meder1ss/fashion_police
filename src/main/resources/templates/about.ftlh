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

            .imgM {float:right; margin-left:15px;margin-right:15px; border:2px solid #ddd; border-radius:15px; padding:5px; width:500px;}
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
                                    <img src="/static/img/carusel/saint-laurent_2022%20(1).png" class="d-block w-100" alt="Номер 1">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h4><b id="caruselText">Saint Laurent 2022</b></h4>
                                        <h5><b id="caruselText">Показ весенней коллекции «Ready to wear»</b></h5>
                                    </div>
                                </div>
                                <div class="carousel-item" data-bs-interval="10000">
                                    <img src="/static/img/carusel/saint-laurent_2022%20(2).png" class="d-block w-100" alt="Номер 2">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h4><b id="caruselText">Saint Laurent 2022</b></h4>
                                        <h5><b id="caruselText">Показ весенней коллекции «Ready to wear»</b></h5>
                                    </div>
                                </div>
                                <div class="carousel-item" data-bs-interval="10000">
                                    <img src="/static/img/carusel/saint-laurent_2022%20(3).png" class="d-block w-100" alt="Номер 3">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h4><b id="caruselText">Saint Laurent 2022</b></h4>
                                        <h5><b id="caruselText">Показ весенней коллекции «Ready to wear»</b></h5>
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
                <td id=cont>
                    <table>
                        <tr>
                            <td id=content valign=top>
                                <p class=mode>Будь самым модным на районе!</p>

                                <h3 align=center>О нашей сфере деятельности, нашем сайте и наших разработках</h3><br>

                                <img src='/static/img/styleMain.jpg' class=imgM>
                                <div style="font-size: 16pt" class="divdiv"> Контактные данные</div>
                                <p>
                                <ul>
                                    <li><p>Фактический адрес: ул. Академика Королёва, 12, Москва, Россия</p></li>
                                    <li><p>Телефонный номер:<a href="tel:+79998887766">+7(999)888-77-66</a></p></li>
                                    <li><p>EMAIL-адрес: <a href="mailto:fashion@police.ftlh?subject="Вопрос по сайту>fashion@police.ftlh</a></p></li>
                                    <li><p>График работы: Пн - Вс / 6:30 - 22:00</p></li>
                                </ul></p>

                                <br>
                                <div class=divdiv>Мы - <i>Fashion Police</i></div>

                                <p>Работа нашего сайта построена на определенных алгоритмах, осуществляющих подбор подходящей одежды. Вы можете подобрать одежду на основании текущей погоды, на основании своего любимого цвета или осуществить подбор для любого сезона.
                                <br>Каждая вещь на нашем сайте имеет собственный стиль, сезон и цвет, который распознается
                                по фотографии. Наши алгоритмы анализируют всё изображение, игнорируя фоновое пространство, и находят
                                преобладающий цвет. Нажимая кнопку "Подбор" запускается один из основных механизмов - подбор цвета. Его работа основана на различных признанных дизайнерами палитрах сочетаний, а так же на всем известном "цветовом круге".
                                Именно поэтому, сочетания одежды получаются действительно стильными и подходят именно для вас! Кроме того, наш сайт умеет считывать
                                текущие показания погодные условия в вашем населенном пункте, и может подсказать Вам, стоит ли сегодня брать с собой куртку, можно ли ограничиться футболкой или
                                подсказать, подходит ли сегодняшний день для платья!
                                <p>Ежедневно каждый человек совершает множество выборов и принимает различные решения, одно из которых - придумать, что же сегодня надеть. Как бы это не было странно, но данная тема касается не только женщин, но и мужчин, ведь все люди обеспокоены тем, как они будут выглядеть. Если вам знакомо состояние, когда вся ваша одежда уже вытряхнута из шкафов, все возможные сочетания перепробованы, а что надеть - все ещё неразрешимый вопрос, тогда наш сайт
                                именно для вас! Мы можем помочь вам упростить Вашу жизнь! Больше не придется думать,
                                что же сегодня надеть, и вы сможете потратить это время на отдых, не отказывая себе в возможности хорошо выглядеть!
                                    <br>Скорее переходите на <a href=/selection>страничку подбора одежды</a> и убедитесь сами!</p>
                                </p>

                                <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Af4a71fa600349466df5425c90edaff2ab8c52deb778af272dacbb795922e0be2&amp;width=1250&amp;height=350&amp;lang=ru_RU&amp;scroll=true"></script>

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