window.screenDim = {};

window.screenDim.enable = function(str, callback) {
	cordova.exec(callback, function(err) {
        callback("Error");
    }, "ScreenDim", "enable", [str]);
};

window.screenDim.disable = function(str, callback) {
	cordova.exec(callback, function(err) {
        callback("Error");
    }, "ScreenDim", "disable", [str]);
};