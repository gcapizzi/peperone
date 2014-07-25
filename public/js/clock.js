var endDate;
var intervalId;

function startClock() {
    endDate = new Date(new Date().getTime() + 25 * 60000);
    intervalId = setInterval(checkTime, 1000);
}

function checkTime() {
    var timeLeft = (endDate - new Date().getTime()) / 1000;
    if (timeLeft <= 0) {
        clearInterval(intervalId);
        notifyExpired();
    } else {
        updateClock(timeLeft);
    }
}

function updateClock(timeLeft, clock) {
    minutes = parseInt(timeLeft / 60);
    seconds = parseInt(timeLeft % 60);
    var clock = $(".clock");
    clock.html(minutes + ":" + seconds);
}

function notifyExpired() {
    if (!("Notification" in window)) {
        alert("Peperone's up");
    } else {
        var notification = new Notification("Peperone", {body: "Time's up"});
    }
}

function requestPermission() {
    Notification.requestPermission(function(status) {
        Notification.permission = status;
    });
}
