var endDate;
var intervalId;

function startClock(minutes) {
    endDate = new Date(new Date().getTime() + minutes * 60000);
    intervalId = setInterval(checkTime, 1000);
}

function checkTime() {
    var timeLeft = (endDate - new Date().getTime()) / 1000;
    if (timeLeft <= 0) {
        timeLeft = 0;
        updateClock(timeLeft);
        clearInterval(intervalId);
        notifyExpired();
    } else {
        updateClock(timeLeft);
    }
}

function updateClock(timeLeft) {
    minutes = parseInt(timeLeft / 60);
    seconds = parseInt(timeLeft % 60);
    var clock = $(".clock");
    clock.html(pad(minutes) + ":" + pad(seconds));
}

function pad(number) {
    return (number < 10 ? '0' : '') + number
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

if (typeof module !== 'undefined' && module.exports != null) {
    exports.startClock = startClock;
}
