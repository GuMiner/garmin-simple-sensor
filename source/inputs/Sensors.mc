using Toybox.Activity;
using Toybox.Lang;
using Toybox.System;

// Reads various on-device sensors. Assumes all sensors are present.
module SimpleSensor {
	module Sensors {
		// Returns the last read heart rate, in beats per minute
		// Will return null in the simulator. 255 (invalid) may occur on the device.
		function getLastHeartRate() {
			return Activity.getActivityInfo().currentHeartRate;
		} 
	
		// Returns the last read elevation, in meters
		function getLastElevation() {
			return Toybox.SensorHistory.getElevationHistory({ "period" => 1 }).next().data;
		}
		
		// Returns the last read pressure, in Pascals
		function getLastPressure() {
			return Toybox.SensorHistory.getPressureHistory({ "period" => 1 }).next().data;
		}
		
		// Returns the last read temperature, in Celcius
		function getLastTemperature() {
			return Toybox.SensorHistory.getTemperatureHistory({ "period" => 1 }).next().data;
		}
		
		// Gets the battery percentage, from 0 to 100
		function getBatteryPercentage() {
			return Toybox.System.getSystemStats().battery;
		}
	}
}