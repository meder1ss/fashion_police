function loadWeather() {
    var xhr = new XMLHttpRequest();

    xhr.open('GET', "GET https://api.weather.yandex.ru/v2/informers?" +
        "lat=55" +
        "&lon=43" +
        "&[lang=ru_RU]",true,"2c31de67-b27e-4cb1-9fbc-a64ac8705bd7");

    xhr.send();

    xhr.onreadystatechange = function() {
        if (xhr.readyState != 4) return;
        button.parentNode.removeChild(button);
        //if (xhr.status != 200) {
            //alert( xhr.status + ': ' + xhr.statusText );
        //} else {
            try {
                var weather = JSON.parse(xhr.responseText);
            } catch (e) {
                alert( "Некорректный ответ " + e.message );
            }
            showWeather(weather);
        //}

    }

    button.innerHTML = 'Загружаю...';
    button.disabled = true;
}

function showWeather(weather) {
    weather.forEach(function(phone) {
        var li = list.appendChild(document.createElement('li'));
        li.innerHTML = weather.name;
    });
}