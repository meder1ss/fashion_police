function foo() {
    var val = document.getElementById("city").value;
    loadWeather(val);
}

function loadWeather(val) {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', "http://api.openweathermap.org/data/2.5/weather?q="+val+"&appid=fb8ae5f8ef1ea3eee654aa2d5f522bb8&units=metric",true);
    xhr.send();

    xhr.onreadystatechange = function() {
        if (xhr.readyState != 4) return;
        if (xhr.status != 200) {
            alert( xhr.status + ': ' + xhr.statusText);
        } else {
            try {
                var weather = JSON.parse(xhr.responseText);
            } catch (e) {
                alert( "Некорректный ответ " + e.message );
            }
            document.getElementById("demo").innerHTML = "Погода в городе " + val +": " + weather["main"]["temp"];
        }

    }
}
