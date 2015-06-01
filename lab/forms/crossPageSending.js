/**
 * Created by Artyom on 24.05.2015.
 */
function loadInfo() {
    var parameters = location.search.substring(1).split("&");
    document.getElementById("greeting").innerHTML += getDataFromField(parameters[1]) + " " + getDataFromField(parameters[1]) + "!!!";
    document.getElementById("firstName").innerHTML += getDataFromField(parameters[1]);
    document.getElementById("lastName").innerHTML += getDataFromField(parameters[2]);
    document.getElementById("mail").innerHTML += getDataFromField(parameters[3]);
    document.getElementById("password").innerHTML += getDataFromField(parameters[4]);
    document.getElementById("birthDate").innerHTML += getDataFromField(parameters[5]) + "." + getDataFromField(parameters[6]) + "." + getDataFromField(parameters[7]);
    document.getElementById("country").innerHTML += getDataFromField(parameters[8]);
    if (new Date().getMonth() > getDataFromField(parameters[6])) {
        document.getElementById("daysBeforeBirthday").innerHTML += +365 - +Math.abs(getDataFromField(parameters[6]) - new Date().getMonth()) * 30 + +getDataFromField(parameters[5]);
    } else {
        document.getElementById("daysBeforeBirthday").innerHTML += +Math.abs(new Date().getMonth() - getDataFromField(parameters[6])) * 30 + +getDataFromField(parameters[5]);
    }
}

function getDataFromField(dataString) {
    return dataString.split("=")[1];
}