using Toybox.ActivityMonitor;
using Toybox.Lang;
using Toybox.System;

// Reads stats about goal tracing. Results returned may be null.
module SimpleSensor {
	module GoalTracker {
		// Returns the aclories burned (kCal) in the current day
		function getCalories() {
			return ActivityMonitor.getInfo().calories;
		} 
	
		// Returns the number of floors climbed (integer)
		function getFloorsClimbed() {
			return ActivityMonitor.getInfo().floorsClimbed;
		}
		
		function getFloorsClimbedGoal() {
			return ActivityMonitor.getInfo().floorsClimbedGoal;
		}
		
		// Returns the number of steps clibmed (integer)
		function getSteps() {
			return ActivityMonitor.getInfo().steps;
		}
		
		function getStepsGoal() {
			return ActivityMonitor.getInfo().stepGoal;
		}
	}
}