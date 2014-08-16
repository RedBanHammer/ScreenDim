window.screenDim = function(state) {
	cordova.exec(null, null, "ScreenDim", state ? "enable" : "disable", []);
};