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
        <h1 align="center"><b><i>FASHION POLICE</i></b></h1>
        <hr>
        <p class=mode>Модно, стильно, молодёжно!</p>

        <h4 align="center">Редактирование роли пользователя "${user.name}"</h4>
        <br>

        <form action = "/admin/user/edit" method = "post">
            <table class="table table-borderless" id="tableP">
                <#list roles as role>
                    <tr>
                        <th scope="col">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input class="form-check-input" type = "checkbox" name = "${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}
                                </label>
                            </div>
                        </th>
                    </tr>
                </#list>
                <tr>
                    <td>
                        <input type = "hidden" value = "${user.id}" name = "userId">
                        <input type = "hidden" value = "${_csrf.token}" name = "_csrf">

                        <button type = "submit" class="btn btn-danger">Сохранить</button>
                    </td>
                </tr>
            </table>

        </form>
    </body>
</html>