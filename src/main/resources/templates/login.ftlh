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
            body {font-family:Verdana, sans-serif;}
        </style>
    </head>

    <body>
        <h2 align="center"><b><i>FASHION POLICE</i></b></h2><hr>
        <p class=mode>Модно, стильно, молодёжно!</p>
        <#if user.email??>
        <table align="center">
            <tr>
                <td colspan="2" align="center">
                    <h3>Привет, ${user.name}!</h3>
                </td>
            </tr>
        </table>
        <#else>
        <h3 align="center">Авторизация</h3>
        <br>

        <form action="/login" method="post">
            <table align="center">
                <tr>
                    <td colspan="2">
                        <div class="row mb-3">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Email: </label>
                            <div class="col-sm-10">
                                <input type="email" size=25 maxlength=25 placeholder="mail@example.com" name="username" class="form-control" id="inputEmail3">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputPassword3" class="col-sm-2 col-form-label">Пароль: </label>
                            <div class="col-sm-10">
                                <input type="password" size=25 maxlength=25 name="password" class="form-control" id="inputPassword3">
                            </div>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input align="center" type="submit" class="btn btn-danger" value="Вход"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <button type="button" class="btn btn-outline-danger btn-sm">
                            <a href="/registration">Зарегистрироваться</a>
                        </button>
                    </td>
                </tr>
            </table>
        </form>
        </#if>
        <p><a href="../"><b>&#8592; На главную</b></a></p>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>

</html>