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

        <h3 align="center">Регистрация</h3>
        <br>

        <form action="/registration" method="post">
            <table align="center">
                <tr>
                    <td align="right">
                        <div>
                            <label class="col-form-label">Имя пользователя: </label>
                        </div>
                    </td>
                    <td align="left">
                        <div>
                            <input type="text" size=25 maxlength=25 name="name" class="form-control">
                        </div>
                    </td>
                </tr>

                <tr>
                    <td align="right">
                        <div>
                            <label for="inputEmail3" class="col-form-label">Email: </label>
                        </div>
                    </td>
                    <td align="left">
                        <div>
                            <input type="email" size=25 maxlength=25 placeholder="mail@example.com" name="email" class="form-control" id="inputEmail3">
                        </div>
                    </td>
                </tr>

                <tr>
                    <td align="right">
                        <div>
                            <label class="col-form-label">Номер телефона: </label>
                        </div>
                    </td>
                    <td align="left">
                        <div>
                            <input type="text" name="phone_number" placeholder="+7 (900) 123-45-67" pattern="\+7\s?[\(]{0,1}9[0-9]{2}[\)]{0,1}\s?\d{3}[-]{0,1}\d{2}[-]{0,1}\d{2}" class="form-control">
                        </div>
                    </td>
                </tr>

                <tr>
                    <td align="right">
                        <div>
                            <label for="inputPassword3" class="col-form-label">Пароль: </label>
                        </div>
                    </td>
                    <td align="left">
                        <div>
                            <input type="password" size=25 maxlength=25 name="password" class="form-control" id="inputPassword3">
                        </div>
                    </td>
                </tr>


                <tr>
                    <td colspan="2" align="center">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input align="center" type="submit" class="btn btn-danger" value="Регистрация"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <button type="button" class="btn btn-outline-danger btn-sm">
                            <a href="/login">Войти</a>
                        </button>
                    </td>
                </tr>

            </table>
        </form>

        <p><a href="../"><b>&#8592; На главную</b></a></p>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

        <#if errorMessage??>
            <h2>${errorMessage}</h2>
        </#if>

    </body>
</html>