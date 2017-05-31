"use strict"

exports.getAirConsoleGlobalImpl = function(opts) {
  return function() {
    return new AirConsole(opts);
  }
}

exports.orientationLandscape = AirConsole.ORIENTATION_LANDSCAPE
exports.orientationPortrait = AirConsole.ORIENTATION_PORTRAIT
exports.screen = AirConsole.SCREEN
