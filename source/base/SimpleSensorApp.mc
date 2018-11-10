using Toybox.Application;
using Toybox.WatchUi;

// Sets up the application and the view for the watchface.
class SimpleSensorApp extends Application.AppBase {
    function initialize() {
        AppBase.initialize();
    }

    function getInitialView() {
        return [ new SimpleSensorView(), new SimpleSensorDelegate() ];
    }
}