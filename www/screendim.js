window.screenDim = {};

window.screenDim.enable = function() {
	cordova.exec(null, null, "ScreenDim", "enable", []);
};

window.screenDim.disable = function() {
	cordova.exec(null, null, "ScreenDim", "disable", []);
};